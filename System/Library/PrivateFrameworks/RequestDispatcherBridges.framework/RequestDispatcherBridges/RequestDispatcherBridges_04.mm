uint64_t sub_223686F68()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_223727AC8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_223686FF4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2236242EC;

  return sub_223686F44(a1, v2, a2);
}

uint64_t LocalIFSessionClient.subscribe()()
{
  v2 = sub_22372AE98();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *v0;
  v1[6] = v5;
  v1[7] = v6;

  return MEMORY[0x2822009F8](sub_223687160, 0, 0);
}

uint64_t sub_223687160()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_223624E58();
  (*(v2 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v4 = sub_22372B2F8();
  v0[8] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = sub_223687724(&unk_281328D40, sub_223624E58);
  v6 = *(MEMORY[0x277D85A08] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  v8 = sub_223727CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v7 = v0;
  v7[1] = sub_223687308;
  v9 = v0[7];

  return MEMORY[0x282200828](v0 + 2, v4, v5, 0, 0, &unk_22372ECE0, v9, v8);
}

uint64_t sub_223687308()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v6 = *v1;

  if (v0)
  {
    v4 = sub_22368749C;
  }

  else
  {
    v4 = sub_223687430;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_223687430()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22368749C()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_223687500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_223687524, 0, 0);
}

uint64_t sub_223687524()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = sub_223727B08();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2236875B4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2236242EC;

  return sub_223687500(a1, v2, a2);
}

unint64_t sub_223687660(uint64_t a1)
{
  result = sub_223687688();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_223687688()
{
  result = qword_2813296F8[0];
  if (!qword_2813296F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813296F8);
  }

  return result;
}

uint64_t sub_223687724(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22368776C(uint64_t a1)
{
  v2[3] = a1;
  v3 = sub_22372AE98();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[6] = v6;
  v2[7] = v7;

  return MEMORY[0x2822009F8](sub_223687830, 0, 0);
}

uint64_t sub_223687830()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_223624E58();
  (*(v2 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v4 = sub_22372B2F8();
  v0[8] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = sub_223687724(&unk_281328D40, sub_223624E58);
  v6 = *(MEMORY[0x277D85A08] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  v8 = sub_223727408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v7 = v0;
  v7[1] = sub_2236879DC;
  v9 = v0[7];
  v10 = v0[3];

  return MEMORY[0x282200828](v10, v4, v5, 0, 0, &unk_22372EDF0, v9, v8);
}

uint64_t sub_2236879DC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_223688198, 0, 0);
  }

  else
  {
    v6 = *(v2 + 48);

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_223687B38(uint64_t a1)
{
  v2[4] = a1;
  v3 = sub_22372AE98();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[7] = v6;
  v2[8] = v7;

  return MEMORY[0x2822009F8](sub_223687BFC, 0, 0);
}

uint64_t sub_223687BFC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_223624E58();
  (*(v2 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v4 = sub_22372B2F8();
  v0[9] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = sub_223687724(&unk_281328D40, sub_223624E58);
  v6 = *(MEMORY[0x277D85A08] + 4);
  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = sub_223727CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v7 = v0;
  v7[1] = sub_223687DA4;
  v9 = v0[8];

  return MEMORY[0x282200828](v0 + 2, v4, v5, 0, 0, &unk_22372EDE8, v9, v8);
}

uint64_t sub_223687DA4()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v6 = *v1;

  if (v0)
  {
    v4 = sub_223687F3C;
  }

  else
  {
    v4 = sub_223687ECC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_223687ECC()
{
  v1 = *(v0 + 56);
  **(v0 + 32) = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_223687F3C()
{
  v1 = v0[7];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t dispatch thunk of LocalIFSessionClientProtocol.init(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2236242EC;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2236880E4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_223624EA4;

  return sub_223686F44(a1, v2, a2);
}

uint64_t sub_223688224(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t sub_223688288(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_223688340(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  v10 = *a6;
  *a5 = v9;
  *a6 = v8;
}

unint64_t RemoteIFDispatchError.description.getter()
{
  v1 = v0;
  v2 = sub_223727408();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for RemoteIFDispatchError();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2236911BC(v1, v16, type metadata accessor for RemoteIFDispatchError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        (*(v3 + 32))(v11, v16, v2);
        v29 = 0;
        v30 = 0xE000000000000000;
        sub_22372B458();
        v21 = "Failed to end IF session: ";
        v22 = 0xD00000000000003CLL;
LABEL_17:
        MEMORY[0x223DE7AD0](v22, v21 | 0x8000000000000000);
        goto LABEL_18;
      }

      (*(v3 + 32))(v11, v16, v2);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_22372B458();

      v19 = 0x80000002237352E0;
      v20 = 0xD000000000000026;
    }

    else if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v11, v16, v2);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_22372B458();

      v19 = 0x8000000223735310;
      v20 = 0xD00000000000001DLL;
    }

    else
    {
      (*(v3 + 32))(v11, v16, v2);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_22372B458();

      v19 = 0x8000000223735330;
      v20 = 0xD000000000000021;
    }

LABEL_15:
    v29 = v20;
    v30 = v19;
LABEL_18:
    sub_223691224(&qword_28132B600, MEMORY[0x277CC95F0]);
    v23 = sub_22372B6B8();
    MEMORY[0x223DE7AD0](v23);

    v18 = v29;
    (*(v3 + 8))(v11, v2);
    return v18;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        return 0xD000000000000017;
      }

      else
      {
        return 0xD000000000000018;
      }
    }

    (*(v3 + 32))(v11, v16, v2);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_22372B458();
    v21 = "ErrorCallerSessionIDKey";
    v22 = 0xD000000000000039;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 4)
  {
    (*(v3 + 32))(v11, v16, v2);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_22372B458();

    v19 = 0x8000000223735260;
    v20 = 0xD00000000000001ALL;
    goto LABEL_15;
  }

  v25 = v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EEF8, &unk_22372EE28) + 48)];
  (*(v3 + 32))(v8, v16, v2);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_22372B458();
  MEMORY[0x223DE7AD0](0xD000000000000036, 0x8000000223735200);
  sub_223691224(&qword_28132B600, MEMORY[0x277CC95F0]);
  v26 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v26);

  MEMORY[0x223DE7AD0](0xD000000000000019, 0x8000000223735240);
  if (v25)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (v25)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x223DE7AD0](v27, v28);

  MEMORY[0x223DE7AD0](46, 0xE100000000000000);
  v18 = v29;
  (*(v3 + 8))(v8, v2);
  return v18;
}

uint64_t type metadata accessor for RemoteIFDispatchError()
{
  result = qword_2813295F8;
  if (!qword_2813295F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223688998@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RemoteIFDispatchError();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2236911BC(v2, v8, type metadata accessor for RemoteIFDispatchError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = sub_223727408();
  v11 = *(v10 - 8);
  if (EnumCaseMultiPayload > 6)
  {
    v12 = 1;
  }

  else
  {
    (*(*(v10 - 8) + 32))(a1, v8, v10);
    v12 = 0;
  }

  return (*(v11 + 56))(a1, v12, 1, v10);
}

uint64_t RemoteIFDispatchError.errorCode.getter()
{
  v1 = type metadata accessor for RemoteIFDispatchError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2236911BC(v0, v5, type metadata accessor for RemoteIFDispatchError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v10 = sub_223727408();
        (*(*(v10 - 8) + 8))(v5, v10);
        return 3;
      }

      else
      {
        v14 = sub_223727408();
        (*(*(v14 - 8) + 8))(v5, v14);
        return 5;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v13 = sub_223727408();
      (*(*(v13 - 8) + 8))(v5, v13);
      return 2;
    }

    else
    {
      v9 = sub_223727408();
      (*(*(v9 - 8) + 8))(v5, v9);
      return 1;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v11 = sub_223727408();
      (*(*(v11 - 8) + 8))(v5, v11);
      return 6;
    }

    else
    {
      v15 = sub_223727408();
      (*(*(v15 - 8) + 8))(v5, v15);
      return 7;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    v12 = sub_223727408();
    (*(*(v12 - 8) + 8))(v5, v12);
    return 8;
  }

  else
  {
    v7 = EnumCaseMultiPayload;
    result = 0;
    if (v7 != 7)
    {
      return 4;
    }
  }

  return result;
}

unint64_t RemoteIFDispatchError.errorUserInfo.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v17 - v3;
  v5 = sub_223727408();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22368F690(MEMORY[0x277D84F90]);
  sub_223688998(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_223626478(v4, &unk_27D08E530, &unk_22372CB10);
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    swift_beginAccess();
    v12 = qword_27D08EEE0;
    v13 = off_27D08EEE8;
    v20 = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(v6 + 16))(boxed_opaque_existential_1, v10, v5);
    sub_223661514(v19, v18);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v11;
    sub_22368DAA4(v18, v12, v13, isUniquelyReferenced_nonNull_native);

    (*(v6 + 8))(v10, v5);
    return v17;
  }

  return v11;
}

unint64_t sub_223688FA0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x4E6E6F6973736573;
    v5 = 0xD00000000000001BLL;
    if (a1 != 2)
    {
      v5 = 0xD000000000000022;
    }

    if (!a1)
    {
      v4 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    if (a1 != 7)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000012;
    }

    v2 = 0x4D64696C61766E69;
    if (a1 != 4)
    {
      v2 = 0xD00000000000001CLL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_223689114(uint64_t a1)
{
  v2 = sub_22368F910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223689150(uint64_t a1)
{
  v2 = sub_22368F910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223689194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223690E68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2236891C8(uint64_t a1)
{
  v2 = sub_22368F7C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223689204(uint64_t a1)
{
  v2 = sub_22368F7C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223689240(uint64_t a1)
{
  v2 = sub_22368F814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22368927C(uint64_t a1)
{
  v2 = sub_22368F814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236892B8(uint64_t a1)
{
  v2 = sub_22368FA0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236892F4(uint64_t a1)
{
  v2 = sub_22368FA0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223689330(uint64_t a1)
{
  v2 = sub_22368F8BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22368936C(uint64_t a1)
{
  v2 = sub_22368F8BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236893A8(uint64_t a1)
{
  v2 = sub_22368F9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236893E4(uint64_t a1)
{
  v2 = sub_22368F9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22368942C(uint64_t a1)
{
  v2 = sub_22368FAB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223689468(uint64_t a1)
{
  v2 = sub_22368FAB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236894A4(uint64_t a1)
{
  v2 = sub_22368F964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236894E0(uint64_t a1)
{
  v2 = sub_22368F964();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22368951C()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x655372656C6C6163;
  }

  *v0;
  return result;
}

uint64_t sub_223689568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x655372656C6C6163 && a2 == 0xEF44496E6F697373;
  if (v6 || (sub_22372B6E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002237354D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22372B6E8();

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

uint64_t sub_223689654(uint64_t a1)
{
  v2 = sub_22368F868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223689690(uint64_t a1)
{
  v2 = sub_22368F868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236896CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x655372656C6C6163 && a2 == 0xEF44496E6F697373)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22372B6E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22368975C(uint64_t a1)
{
  v2 = sub_22368FA60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223689798(uint64_t a1)
{
  v2 = sub_22368FA60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteIFDispatchError.encode(to:)(void *a1)
{
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF08, &qword_22372EE38);
  v113 = *(v127 - 8);
  v2 = *(v113 + 64);
  MEMORY[0x28223BE20](v127, v3);
  v125 = &v108 - v4;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF10, &qword_22372EE40);
  v114 = *(v128 - 8);
  v5 = *(v114 + 64);
  MEMORY[0x28223BE20](v128, v6);
  v126 = &v108 - v7;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF18, &qword_22372EE48);
  v112 = *(v124 - 8);
  v8 = *(v112 + 64);
  MEMORY[0x28223BE20](v124, v9);
  v123 = &v108 - v10;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF20, &qword_22372EE50);
  v110 = *(v138 - 8);
  v11 = *(v110 + 64);
  MEMORY[0x28223BE20](v138, v12);
  v137 = &v108 - v13;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF28, &qword_22372EE58);
  v121 = *(v122 - 8);
  v14 = *(v121 + 64);
  MEMORY[0x28223BE20](v122, v15);
  v120 = &v108 - v16;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF30, &qword_22372EE60);
  v109 = *(v136 - 8);
  v17 = *(v109 + 64);
  MEMORY[0x28223BE20](v136, v18);
  v135 = &v108 - v19;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF38, &qword_22372EE68);
  v111 = *(v134 - 8);
  v20 = *(v111 + 64);
  MEMORY[0x28223BE20](v134, v21);
  v133 = &v108 - v22;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF40, &qword_22372EE70);
  v108 = *(v132 - 8);
  v23 = *(v108 + 64);
  MEMORY[0x28223BE20](v132, v24);
  v131 = &v108 - v25;
  v26 = sub_223727408();
  v27 = *(v26 - 8);
  v139 = v26;
  v140 = v27;
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v119 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v129 = &v108 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v118 = &v108 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v130 = &v108 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v44 = &v108 - v43;
  v46 = MEMORY[0x28223BE20](v42, v45);
  v48 = &v108 - v47;
  MEMORY[0x28223BE20](v46, v49);
  v51 = &v108 - v50;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF48, &qword_22372EE78);
  v116 = *(v117 - 8);
  v52 = *(v116 + 64);
  MEMORY[0x28223BE20](v117, v53);
  v115 = &v108 - v54;
  v55 = type metadata accessor for RemoteIFDispatchError();
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55, v57);
  v59 = &v108 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EF50, &qword_22372EE80);
  v141 = *(v144 - 8);
  v60 = *(v141 + 64);
  MEMORY[0x28223BE20](v144, v61);
  v63 = &v108 - v62;
  v64 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22368F7C0();
  v145 = v63;
  sub_22372B7E8();
  sub_2236911BC(v142, v59, type metadata accessor for RemoteIFDispatchError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v69 = v51;
    v70 = v48;
    v71 = v44;
    v72 = v131;
    v74 = v132;
    v73 = v133;
    v76 = v134;
    v75 = v135;
    v77 = v136;
    v78 = v137;
    v79 = v138;
    if (EnumCaseMultiPayload > 1)
    {
      v85 = v144;
      v86 = v139;
      v87 = v140;
      if (EnumCaseMultiPayload == 2)
      {
        v88 = v71;
        (*(v140 + 32))(v71, v59, v139);
        v149 = 3;
        sub_22368F9B8();
        sub_22372B678();
        sub_223691224(&unk_28132B610, MEMORY[0x277CC95F0]);
        sub_22372B6A8();
        (*(v109 + 8))(v75, v77);
        (*(v87 + 8))(v88, v86);
        return (*(v141 + 8))(v145, v144);
      }

      v98 = v130;
      (*(v140 + 32))(v130, v59, v139);
      v151 = 5;
      sub_22368F910();
      sub_22372B678();
      sub_223691224(&unk_28132B610, MEMORY[0x277CC95F0]);
      sub_22372B6A8();
      (*(v110 + 8))(v78, v79);
      (*(v87 + 8))(v98, v86);
    }

    else
    {
      v80 = v144;
      v82 = v139;
      v81 = v140;
      if (!EnumCaseMultiPayload)
      {
        v83 = v69;
        (*(v140 + 32))(v69, v59, v139);
        v147 = 1;
        sub_22368FA60();
        sub_22372B678();
        sub_223691224(&unk_28132B610, MEMORY[0x277CC95F0]);
        sub_22372B6A8();
        (*(v108 + 8))(v72, v74);
        (*(v81 + 8))(v83, v82);
        return (*(v141 + 8))(v145, v80);
      }

      v97 = v70;
      (*(v140 + 32))(v70, v59, v139);
      v148 = 2;
      sub_22368FA0C();
      v85 = v80;
      sub_22372B678();
      sub_223691224(&unk_28132B610, MEMORY[0x277CC95F0]);
      sub_22372B6A8();
      (*(v111 + 8))(v73, v76);
      (*(v81 + 8))(v97, v82);
    }

    return (*(v141 + 8))(v145, v85);
  }

  else
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v146 = 0;
          sub_22368FAB4();
          v66 = v115;
          v67 = v144;
          v68 = v145;
          sub_22372B678();
          (*(v116 + 8))(v66, v117);
        }

        else
        {
          v150 = 4;
          sub_22368F964();
          v99 = v120;
          v67 = v144;
          v68 = v145;
          sub_22372B678();
          (*(v121 + 8))(v99, v122);
        }

        return (*(v141 + 8))(v68, v67);
      }

      v90 = v139;
      v89 = v140;
      v91 = v119;
      (*(v140 + 32))(v119, v59, v139);
      v156 = 8;
      sub_22368F814();
      v92 = v125;
      v93 = v144;
      v94 = v145;
      sub_22372B678();
      sub_223691224(&unk_28132B610, MEMORY[0x277CC95F0]);
      v95 = v127;
      sub_22372B6A8();
      v96 = &v145;
LABEL_14:
      (*(*(v96 - 32) + 8))(v92, v95);
      (*(v89 + 8))(v91, v90);
      return (*(v141 + 8))(v94, v93);
    }

    if (EnumCaseMultiPayload == 4)
    {
      v90 = v139;
      v89 = v140;
      v91 = v118;
      (*(v140 + 32))(v118, v59, v139);
      v152 = 6;
      sub_22368F8BC();
      v92 = v123;
      v93 = v144;
      v94 = v145;
      sub_22372B678();
      sub_223691224(&unk_28132B610, MEMORY[0x277CC95F0]);
      v95 = v124;
      sub_22372B6A8();
      v96 = &v144;
      goto LABEL_14;
    }

    LODWORD(v142) = v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EEF8, &unk_22372EE28) + 48)];
    v101 = v139;
    v100 = v140;
    v102 = v129;
    (*(v140 + 32))(v129, v59, v139);
    v155 = 7;
    sub_22368F868();
    v103 = v126;
    v104 = v144;
    v105 = v145;
    sub_22372B678();
    v154 = 0;
    sub_223691224(&unk_28132B610, MEMORY[0x277CC95F0]);
    v106 = v128;
    v107 = v143;
    sub_22372B6A8();
    if (v107)
    {
      (*(v114 + 8))(v103, v106);
      (*(v100 + 8))(v102, v101);
    }

    else
    {
      v153 = 1;
      sub_22372B698();
      (*(v114 + 8))(v103, v106);
      (*(v100 + 8))(v129, v101);
    }

    return (*(v141 + 8))(v105, v104);
  }
}

uint64_t RemoteIFDispatchError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFB0, &qword_22372EE88);
  v4 = *(v3 - 8);
  v146 = v3;
  v147 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v154 = &v124 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFB8, &qword_22372EE90);
  v148 = *(v8 - 8);
  v149 = v8;
  v9 = *(v148 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v155 = &v124 - v11;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFC0, &qword_22372EE98);
  v144 = *(v145 - 8);
  v12 = *(v144 + 64);
  MEMORY[0x28223BE20](v145, v13);
  v162 = &v124 - v14;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFC8, &qword_22372EEA0);
  v142 = *(v143 - 8);
  v15 = *(v142 + 64);
  MEMORY[0x28223BE20](v143, v16);
  v161 = &v124 - v17;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFD0, &qword_22372EEA8);
  v138 = *(v139 - 8);
  v18 = *(v138 + 64);
  MEMORY[0x28223BE20](v139, v19);
  v160 = &v124 - v20;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFD8, &qword_22372EEB0);
  v140 = *(v141 - 8);
  v21 = *(v140 + 64);
  MEMORY[0x28223BE20](v141, v22);
  v159 = &v124 - v23;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFE0, &qword_22372EEB8);
  v137 = *(v136 - 8);
  v24 = *(v137 + 64);
  MEMORY[0x28223BE20](v136, v25);
  v153 = &v124 - v26;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFE8, &qword_22372EEC0);
  v134 = *(v135 - 8);
  v27 = *(v134 + 64);
  MEMORY[0x28223BE20](v135, v28);
  v152 = &v124 - v29;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFF0, &qword_22372EEC8);
  v131 = *(v132 - 8);
  v30 = *(v131 + 64);
  MEMORY[0x28223BE20](v132, v31);
  v151 = &v124 - v32;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EFF8, &unk_22372EED0);
  v163 = *(v158 - 8);
  v33 = *(v163 + 64);
  MEMORY[0x28223BE20](v158, v34);
  v36 = &v124 - v35;
  v157 = type metadata accessor for RemoteIFDispatchError();
  v37 = *(*(v157 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v157, v38);
  v133 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v150 = &v124 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v130 = &v124 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v50 = &v124 - v49;
  v52 = MEMORY[0x28223BE20](v48, v51);
  v54 = &v124 - v53;
  v56 = MEMORY[0x28223BE20](v52, v55);
  v58 = &v124 - v57;
  v60 = MEMORY[0x28223BE20](v56, v59);
  v62 = &v124 - v61;
  MEMORY[0x28223BE20](v60, v63);
  v65 = &v124 - v64;
  v66 = a1[3];
  v67 = a1[4];
  v165 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v66);
  sub_22368F7C0();
  v68 = v164;
  sub_22372B7D8();
  if (v68)
  {
    goto LABEL_12;
  }

  v125 = v62;
  v126 = v58;
  v127 = v54;
  v128 = v50;
  v69 = v159;
  v70 = v160;
  v72 = v161;
  v71 = v162;
  v164 = 0;
  v129 = v65;
  v73 = v158;
  v74 = v36;
  v75 = sub_22372B668();
  v76 = v75;
  if (*(v75 + 16) != 1 || (v77 = *(v75 + 32), v77 == 9))
  {
    v82 = sub_22372B4B8();
    swift_allocError();
    v84 = v83;
    v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F000, &qword_2237307D0) + 48);
    *v84 = v157;
    sub_22372B618();
    sub_22372B4A8();
    (*(*(v82 - 8) + 104))(v84, *MEMORY[0x277D84160], v82);
    swift_willThrow();
    (*(v163 + 8))(v74, v73);
LABEL_11:
    swift_unknownObjectRelease();
LABEL_12:
    v86 = v165;
    return __swift_destroy_boxed_opaque_existential_1Tm(v86);
  }

  if (*(v75 + 32) > 3u)
  {
    v78 = v156;
    if (*(v75 + 32) > 5u)
    {
      if (v77 != 6)
      {
        if (v77 == 7)
        {
          v175 = 7;
          sub_22368F868();
          v79 = v155;
          v80 = v164;
          sub_22372B608();
          if (!v80)
          {
            sub_223727408();
            v174 = 0;
            sub_223691224(&qword_27D08ED50, MEMORY[0x277CC95F0]);
            v81 = v149;
            sub_22372B648();
            v173 = 1;
            v119 = v79;
            LODWORD(v164) = sub_22372B638();
            v120 = v148;
            v121 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EEF8, &unk_22372EE28) + 48);
            (*(v120 + 8))(v119, v81);
            (*(v163 + 8))(v74, v73);
            swift_unknownObjectRelease();
            v122 = v150;
            v150[v121] = v164 & 1;
            swift_storeEnumTagMultiPayload();
            v123 = v122;
LABEL_42:
            v97 = v129;
            sub_2236378A8(v123, v129, type metadata accessor for RemoteIFDispatchError);
            goto LABEL_43;
          }

          goto LABEL_33;
        }

        v176 = 8;
        sub_22368F814();
        v104 = v154;
        v105 = v164;
        sub_22372B608();
        if (!v105)
        {
          v164 = v76;
          sub_223727408();
          sub_223691224(&qword_27D08ED50, MEMORY[0x277CC95F0]);
          v113 = v133;
          v114 = v146;
          sub_22372B648();
          (*(v147 + 8))(v104, v114);
          (*(v163 + 8))(v74, v73);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v123 = v113;
          goto LABEL_42;
        }

LABEL_17:
        (*(v163 + 8))(v74, v73);
        swift_unknownObjectRelease();
        v86 = v165;
        return __swift_destroy_boxed_opaque_existential_1Tm(v86);
      }

      v172 = 6;
      sub_22368F8BC();
      v98 = v71;
      v99 = v164;
      sub_22372B608();
      if (!v99)
      {
        sub_223727408();
        sub_223691224(&qword_27D08ED50, MEMORY[0x277CC95F0]);
        v100 = v130;
        v101 = v145;
        sub_22372B648();
        v117 = v100;
        (*(v144 + 8))(v98, v101);
        (*(v163 + 8))(v74, v73);
        swift_unknownObjectRelease();
LABEL_41:
        swift_storeEnumTagMultiPayload();
        v123 = v117;
        goto LABEL_42;
      }

      goto LABEL_33;
    }

    if (v77 != 4)
    {
      v171 = 5;
      sub_22368F910();
      v106 = v164;
      sub_22372B608();
      if (!v106)
      {
        sub_223727408();
        sub_223691224(&qword_27D08ED50, MEMORY[0x277CC95F0]);
        v115 = v128;
        v116 = v143;
        sub_22372B648();
        v117 = v115;
        (*(v142 + 8))(v72, v116);
        (*(v163 + 8))(v74, v73);
        swift_unknownObjectRelease();
        goto LABEL_41;
      }

LABEL_33:
      (*(v163 + 8))(v74, v73);
      goto LABEL_11;
    }

    v170 = 4;
    sub_22368F964();
    v96 = v164;
    sub_22372B608();
    if (v96)
    {
      goto LABEL_33;
    }

    (*(v138 + 8))(v70, v139);
    (*(v163 + 8))(v74, v73);
    swift_unknownObjectRelease();
    v97 = v129;
LABEL_35:
    swift_storeEnumTagMultiPayload();
LABEL_43:
    v109 = v165;
    goto LABEL_44;
  }

  if (*(v75 + 32) > 1u)
  {
    v91 = v164;
    if (v77 == 2)
    {
      v168 = 2;
      sub_22368FA0C();
      v92 = v153;
      v93 = v74;
      sub_22372B608();
      if (v91)
      {
LABEL_27:
        (*(v163 + 8))(v93, v73);
        goto LABEL_11;
      }

      sub_223727408();
      sub_223691224(&qword_27D08ED50, MEMORY[0x277CC95F0]);
      v94 = v126;
      v95 = v136;
      sub_22372B648();
      (*(v137 + 8))(v92, v95);
      (*(v163 + 8))(v93, v73);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v118 = v94;
    }

    else
    {
      v169 = 3;
      sub_22368F9B8();
      sub_22372B608();
      if (v91)
      {
        goto LABEL_17;
      }

      sub_223727408();
      sub_223691224(&qword_27D08ED50, MEMORY[0x277CC95F0]);
      v110 = v127;
      v111 = v141;
      sub_22372B648();
      v112 = v163;
      (*(v140 + 8))(v69, v111);
      (*(v112 + 8))(v74, v73);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v118 = v110;
    }

    v97 = v129;
    sub_2236378A8(v118, v129, type metadata accessor for RemoteIFDispatchError);
    v109 = v165;
    v78 = v156;
  }

  else
  {
    v88 = v164;
    if (!*(v75 + 32))
    {
      v166 = 0;
      sub_22368FAB4();
      v89 = v151;
      v90 = v88;
      sub_22372B608();
      v78 = v156;
      if (v90)
      {
        goto LABEL_17;
      }

      (*(v131 + 8))(v89, v132);
      (*(v163 + 8))(v74, v73);
      swift_unknownObjectRelease();
      v97 = v129;
      goto LABEL_35;
    }

    v167 = 1;
    sub_22368FA60();
    v102 = v152;
    v93 = v74;
    v103 = v88;
    sub_22372B608();
    v78 = v156;
    if (v103)
    {
      goto LABEL_27;
    }

    sub_223727408();
    v164 = v76;
    sub_223691224(&qword_27D08ED50, MEMORY[0x277CC95F0]);
    v107 = v125;
    v108 = v135;
    sub_22372B648();
    (*(v134 + 8))(v102, v108);
    (*(v163 + 8))(v93, v73);
    swift_unknownObjectRelease();
    v109 = v165;
    swift_storeEnumTagMultiPayload();
    v97 = v129;
    sub_2236378A8(v107, v129, type metadata accessor for RemoteIFDispatchError);
  }

LABEL_44:
  sub_2236378A8(v97, v78, type metadata accessor for RemoteIFDispatchError);
  return __swift_destroy_boxed_opaque_existential_1Tm(v109);
}

uint64_t sub_22368BD04()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22368BD38()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22368BD6C(uint64_t a1)
{
  v2 = sub_223691224(&qword_27D08F180, type metadata accessor for RemoteIFDispatchError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22368BDD8(uint64_t a1)
{
  v2 = sub_223691224(&qword_27D08F180, type metadata accessor for RemoteIFDispatchError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22368BE7C()
{
  swift_beginAccess();
  v0 = qword_27D08EED0;

  return v0;
}

uint64_t sub_22368BED8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA40, &qword_22372D700);
  result = sub_22372B588();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_22372B798();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22368C15C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1D0, &qword_22372D7F8);
  v36 = a2;
  result = sub_22372B588();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_223661514(v25, v37);
      }

      else
      {
        sub_2236227C8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22372B7A8();
      sub_22372B078();
      result = sub_22372B7C8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_223661514(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22368C414(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22372A548();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F170, &qword_22372D7D8);
  v44 = a2;
  result = sub_22372B588();
  v15 = result;
  if (*(v12 + 16))
  {
    v48 = v11;
    v40 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v12;
    v43 = v7;
    v45 = (v7 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      v30 = *(v15 + 40);
      sub_223691224(&unk_27D08F1B0, MEMORY[0x277D5D298]);
      result = sub_22372AF98();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v45)(*(v15 + 48) + v47 * v23, v48, v6);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v12 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v12 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_22368C7F0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_22372B588();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_22372B7A8();
      sub_22372B078();
      result = sub_22372B7C8();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_22368CA90(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v55 = a3(0);
  v11 = *(v55 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v55, v13);
  v54 = &v47 - v14;
  v15 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v16 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v52 = a2;
  result = sub_22372B588();
  v18 = result;
  if (*(v15 + 16))
  {
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v48 = v8;
    v49 = (v11 + 16);
    v50 = v15;
    v51 = v11;
    v53 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = (*(v15 + 48) + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      v36 = *(v51 + 72);
      v37 = v32 + v36 * v31;
      if (v52)
      {
        (*v53)(v54, v37, v55);
      }

      else
      {
        (*v49)(v54, v37, v55);
      }

      v38 = *(v18 + 40);
      sub_22372B7A8();
      sub_22372B078();
      result = sub_22372B7C8();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v18 + 48) + 16 * v26);
      *v27 = v35;
      v27[1] = v34;
      result = (*v53)(*(v18 + 56) + v36 * v26, v54, v55);
      ++*(v18 + 16);
      v15 = v50;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v8 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v8 = v48;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v8 = v18;
  return result;
}

uint64_t sub_22368CE14(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_22372B588();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_22372B7A8();
      sub_22372B078();
      result = sub_22372B7C8();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_22368D0B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F120, &unk_22372FB50);
  v40 = a2;
  result = sub_22372B588();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_22372B7A8();
      sub_22372B078();
      result = sub_22372B7C8();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22368D3B0(uint64_t a1, int a2)
{
  v3 = v2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44, v8);
  v43 = &v39 - v9;
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EB00, &qword_22372D7D0);
  v42 = a2;
  result = sub_22372B588();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v20 = (v6 + 32);
    v21 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(*(v10 + 48) + 8 * v26);
      v28 = *(v6 + 72);
      v29 = *(v10 + 56) + v28 * v26;
      if (v42)
      {
        (*v20)(v43, v29, v44);
      }

      else
      {
        (*v40)(v43, v29, v44);
      }

      v30 = *(v13 + 40);
      result = sub_22372B798();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v13 + 48) + 8 * v22) = v27;
      result = (*v20)(*(v13 + 56) + v28 * v22, v43, v44);
      ++*(v13 + 16);
      v6 = v41;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

unint64_t sub_22368D740(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2236AF76C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_22368BED8(v14, a3 & 1);
      v18 = *v4;
      result = sub_2236AF76C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_22372B708();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_22365ED00();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_22368D904(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2236261A0(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_22368C7F0(v22, a4 & 1, a6, a7);
      v26 = *v11;
      v17 = sub_2236261A0(a2, a3);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_22372B708();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      a5();
      v17 = v25;
    }
  }

  v28 = *v11;
  if (v23)
  {
    v29 = v28[7];
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v28[6] + 16 * v17);
  *v32 = a2;
  v32[1] = a3;
  *(v28[7] + 8 * v17) = a1;
  v33 = v28[2];
  v21 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v34;
}

_OWORD *sub_22368DAA4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2236261A0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22365EEAC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22368C15C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2236261A0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22372B708();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_223661514(a1, v23);
  }

  else
  {
    sub_22368E830(v11, a2, a3, a1, v22);
  }
}

void sub_22368DBF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22372A548();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_2236AF7B0(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_22365F050();
      goto LABEL_7;
    }

    sub_22368C414(v19, a3 & 1);
    v25 = *v4;
    v26 = sub_2236AF7B0(a2);
    if ((v20 & 1) == (v27 & 1))
    {
      v16 = v26;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      sub_22368E89C(v16, v13, a1, v22);
      return;
    }

LABEL_15:
    sub_22372B708();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

uint64_t sub_22368DDE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2236261A0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_22365F5D8();
      goto LABEL_7;
    }

    sub_22368CA90(v15, a4 & 1, MEMORY[0x277D5CBA8], &unk_27D08EA80, qword_22372D730);
    v26 = *v5;
    v27 = sub_2236261A0(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22372B708();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_2237287C8();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_22368E954(v12, a2, a3, a1, v18, MEMORY[0x277D5CBA8]);
}

uint64_t sub_22368DFA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2236261A0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_22365F600();
      goto LABEL_7;
    }

    sub_22368CA90(v15, a4 & 1, MEMORY[0x277D5CDA0], &unk_27D08F130, &unk_22372D750);
    v26 = *v5;
    v27 = sub_2236261A0(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22372B708();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_223729D78();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_22368E954(v12, a2, a3, a1, v18, MEMORY[0x277D5CDA0]);
}

uint64_t sub_22368E180(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2236261A0(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_22368CE14(v22, a4 & 1, a6, a7);
      v26 = *v11;
      v17 = sub_2236261A0(a2, a3);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_22372B708();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      a5();
      v17 = v25;
    }
  }

  v28 = *v11;
  if (v23)
  {
    v29 = v28[7];
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v28[6] + 16 * v17);
  *v32 = a2;
  v32[1] = a3;
  *(v28[7] + 8 * v17) = a1;
  v33 = v28[2];
  v21 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v34;
}

uint64_t sub_22368E320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2236261A0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_22368D0B4(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_2236261A0(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_22372B708();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_22365FA24();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_22368E4A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2236261A0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for RootRequestController.TRPCache(0);
      return sub_223691154(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for RootRequestController.TRPCache);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22365FD20();
    goto LABEL_7;
  }

  sub_223641A5C(v15, a4 & 1, type metadata accessor for RootRequestController.TRPCache, &unk_27D08EA70, &unk_22372D720, type metadata accessor for RootRequestController.TRPCache);
  v22 = *v5;
  v23 = sub_2236261A0(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_22372B708();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_223641D9C(v12, a2, a3, a1, v18, type metadata accessor for RootRequestController.TRPCache, type metadata accessor for RootRequestController.TRPCache);
}

uint64_t sub_22368E674(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2236AF76C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22365FF78();
      goto LABEL_7;
    }

    sub_22368D3B0(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_2236AF76C(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22372B708();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_22368EA34(v10, a2, a1, v16);
}

unint64_t sub_22368E7E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_22368E830(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_223661514(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_22368E89C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22372A548();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_22368E954(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_22368EA34(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t _s24RequestDispatcherBridges21RemoteIFDispatchErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v108 = a1;
  v3 = sub_223727408();
  v4 = *(v3 - 8);
  v106 = v3;
  v107 = v4;
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v98 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v99 = &v97 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v97 = &v97 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v105 = &v97 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v104 = &v97 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v103 = &v97 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v97 - v25;
  v27 = type metadata accessor for RemoteIFDispatchError();
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v102 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v101 = &v97 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v100 = &v97 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = &v97 - v40;
  v43 = MEMORY[0x28223BE20](v39, v42);
  v45 = &v97 - v44;
  v47 = MEMORY[0x28223BE20](v43, v46);
  v49 = &v97 - v48;
  MEMORY[0x28223BE20](v47, v50);
  v52 = &v97 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1C8, &unk_22372FBC0);
  v54 = *(*(v53 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v53 - 8, v55);
  v58 = &v97 - v57;
  v59 = &v97 + *(v56 + 56) - v57;
  sub_2236911BC(v108, &v97 - v57, type metadata accessor for RemoteIFDispatchError);
  v60 = a2;
  v61 = v59;
  sub_2236911BC(v60, v59, type metadata accessor for RemoteIFDispatchError);
  v108 = v58;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v63 = v103;
    v64 = v104;
    v65 = v105;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v49 = v41;
        sub_2236911BC(v108, v41, type metadata accessor for RemoteIFDispatchError);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v81 = v107;
          v82 = v65;
          v83 = v61;
          v75 = v106;
          (*(v107 + 32))(v65, v83, v106);
          v70 = sub_2237273D8();
          v76 = *(v81 + 8);
          v76(v82, v75);
          goto LABEL_24;
        }

        goto LABEL_32;
      }

      sub_2236911BC(v108, v45, type metadata accessor for RemoteIFDispatchError);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v49 = v45;
        goto LABEL_32;
      }

      v66 = v107;
      v67 = v64;
      v68 = v64;
      v69 = v106;
      (*(v107 + 32))(v68, v61, v106);
      v70 = sub_2237273D8();
      v71 = *(v66 + 8);
      v71(v67, v69);
      v71(v45, v69);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_2236911BC(v108, v52, type metadata accessor for RemoteIFDispatchError);
        if (!swift_getEnumCaseMultiPayload())
        {
          v93 = v107;
          v94 = v61;
          v95 = v106;
          (*(v107 + 32))(v26, v94, v106);
          v70 = sub_2237273D8();
          v96 = *(v93 + 8);
          v96(v26, v95);
          v96(v52, v95);
          goto LABEL_25;
        }

        v49 = v52;
        goto LABEL_32;
      }

      sub_2236911BC(v108, v49, type metadata accessor for RemoteIFDispatchError);
      v77 = v61;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_32;
      }

      v79 = v106;
      v78 = v107;
      (*(v107 + 32))(v63, v77, v106);
      v70 = sub_2237273D8();
      v80 = *(v78 + 8);
      v80(v63, v79);
      v80(v49, v79);
    }

LABEL_25:
    sub_22369126C(v108);
    return v70 & 1;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      if (swift_getEnumCaseMultiPayload() == 8)
      {
LABEL_27:
        sub_22369126C(v108);
        v70 = 1;
        return v70 & 1;
      }

LABEL_33:
      sub_223626478(v108, &qword_27D08F1C8, &unk_22372FBC0);
LABEL_34:
      v70 = 0;
      return v70 & 1;
    }

    v49 = v102;
    sub_2236911BC(v108, v102, type metadata accessor for RemoteIFDispatchError);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v72 = v107;
      v73 = *(v107 + 32);
      v74 = v98;
      goto LABEL_19;
    }

    goto LABEL_32;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v49 = v100;
    sub_2236911BC(v108, v100, type metadata accessor for RemoteIFDispatchError);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v72 = v107;
      v73 = *(v107 + 32);
      v74 = v97;
LABEL_19:
      v75 = v106;
      v73(v74, v59, v106);
      v70 = sub_2237273D8();
      v76 = *(v72 + 8);
      v76(v74, v75);
LABEL_24:
      v76(v49, v75);
      goto LABEL_25;
    }

LABEL_32:
    (*(v107 + 8))(v49, v106);
    goto LABEL_33;
  }

  v49 = v101;
  sub_2236911BC(v108, v101, type metadata accessor for RemoteIFDispatchError);
  v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EEF8, &unk_22372EE28) + 48);
  v85 = v49[v84];
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_32;
  }

  v86 = v61[v84];
  v88 = v106;
  v87 = v107;
  v89 = v99;
  (*(v107 + 32))(v99, v61, v106);
  v90 = sub_2237273D8();
  v91 = *(v87 + 8);
  v91(v89, v88);
  v91(v49, v88);
  if ((v90 & 1) == 0)
  {
    sub_22369126C(v108);
    goto LABEL_34;
  }

  sub_22369126C(v108);
  v70 = v85 ^ v86 ^ 1;
  return v70 & 1;
}

unint64_t sub_22368F33C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F100, &qword_22372FB30);
    v3 = sub_22372B598();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2236261A0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_22368F438(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA40, &qword_22372D700);
  v3 = sub_22372B598();
  v13 = *(a1 + 32);
  result = sub_2236AF76C(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_2236AF76C(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22368F55C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1E0, &qword_22372FBD8);
    v3 = sub_22372B598();
    v4 = a1 + 32;

    while (1)
    {
      sub_223634890(v4, &v13, &qword_27D08ECF0, &unk_22372FBE0);
      v5 = v13;
      v6 = v14;
      result = sub_2236261A0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2236241E8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_22368F690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1D0, &qword_22372D7F8);
    v3 = sub_22372B598();
    v4 = a1 + 32;

    while (1)
    {
      sub_223634890(v4, &v13, &qword_27D08F1D8, &qword_22372FBD0);
      v5 = v13;
      v6 = v14;
      result = sub_2236261A0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_223661514(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_22368F7C0()
{
  result = qword_27D08EF58;
  if (!qword_27D08EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EF58);
  }

  return result;
}

unint64_t sub_22368F814()
{
  result = qword_27D08EF60;
  if (!qword_27D08EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EF60);
  }

  return result;
}

unint64_t sub_22368F868()
{
  result = qword_27D08EF70;
  if (!qword_27D08EF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EF70);
  }

  return result;
}

unint64_t sub_22368F8BC()
{
  result = qword_27D08EF78;
  if (!qword_27D08EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EF78);
  }

  return result;
}

unint64_t sub_22368F910()
{
  result = qword_27D08EF80;
  if (!qword_27D08EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EF80);
  }

  return result;
}

unint64_t sub_22368F964()
{
  result = qword_27D08EF88;
  if (!qword_27D08EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EF88);
  }

  return result;
}

unint64_t sub_22368F9B8()
{
  result = qword_27D08EF90;
  if (!qword_27D08EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EF90);
  }

  return result;
}

unint64_t sub_22368FA0C()
{
  result = qword_27D08EF98;
  if (!qword_27D08EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EF98);
  }

  return result;
}

unint64_t sub_22368FA60()
{
  result = qword_27D08EFA0;
  if (!qword_27D08EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EFA0);
  }

  return result;
}

unint64_t sub_22368FAB4()
{
  result = qword_27D08EFA8;
  if (!qword_27D08EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08EFA8);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

void sub_22368FBAC()
{
  sub_22368FC2C();
  if (v0 <= 0x3F)
  {
    sub_22368FC74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22368FC2C()
{
  if (!qword_28132B638)
  {
    v0 = sub_223727408();
    if (!v1)
    {
      atomic_store(v0, &qword_28132B638);
    }
  }
}

void sub_22368FC74()
{
  if (!qword_28132B640)
  {
    sub_223727408();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28132B640);
    }
  }
}

uint64_t getEnumTagSinglePayload for RemoteIFDispatchError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteIFDispatchError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22368FEC4()
{
  result = qword_27D08F020;
  if (!qword_27D08F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F020);
  }

  return result;
}

unint64_t sub_22368FF1C()
{
  result = qword_27D08F028;
  if (!qword_27D08F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F028);
  }

  return result;
}

unint64_t sub_22368FF74()
{
  result = qword_27D08F030;
  if (!qword_27D08F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F030);
  }

  return result;
}

unint64_t sub_22368FFCC()
{
  result = qword_27D08F038;
  if (!qword_27D08F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F038);
  }

  return result;
}

unint64_t sub_223690024()
{
  result = qword_27D08F040;
  if (!qword_27D08F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F040);
  }

  return result;
}

unint64_t sub_22369007C()
{
  result = qword_27D08F048;
  if (!qword_27D08F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F048);
  }

  return result;
}

unint64_t sub_2236900D4()
{
  result = qword_27D08F050;
  if (!qword_27D08F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F050);
  }

  return result;
}

unint64_t sub_22369012C()
{
  result = qword_27D08F058;
  if (!qword_27D08F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F058);
  }

  return result;
}

unint64_t sub_223690184()
{
  result = qword_27D08F060;
  if (!qword_27D08F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F060);
  }

  return result;
}

unint64_t sub_2236901DC()
{
  result = qword_27D08F068;
  if (!qword_27D08F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F068);
  }

  return result;
}

unint64_t sub_223690234()
{
  result = qword_27D08F070;
  if (!qword_27D08F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F070);
  }

  return result;
}

unint64_t sub_22369028C()
{
  result = qword_27D08F078;
  if (!qword_27D08F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F078);
  }

  return result;
}

unint64_t sub_2236902E4()
{
  result = qword_27D08F080;
  if (!qword_27D08F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F080);
  }

  return result;
}

unint64_t sub_22369033C()
{
  result = qword_27D08F088;
  if (!qword_27D08F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F088);
  }

  return result;
}

unint64_t sub_223690394()
{
  result = qword_27D08F090;
  if (!qword_27D08F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F090);
  }

  return result;
}

unint64_t sub_2236903EC()
{
  result = qword_27D08F098;
  if (!qword_27D08F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F098);
  }

  return result;
}

unint64_t sub_223690444()
{
  result = qword_27D08F0A0;
  if (!qword_27D08F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F0A0);
  }

  return result;
}

unint64_t sub_22369049C()
{
  result = qword_27D08F0A8;
  if (!qword_27D08F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F0A8);
  }

  return result;
}

unint64_t sub_2236904F4()
{
  result = qword_27D08F0B0;
  if (!qword_27D08F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F0B0);
  }

  return result;
}

unint64_t sub_22369054C()
{
  result = qword_27D08F0B8;
  if (!qword_27D08F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F0B8);
  }

  return result;
}

unint64_t sub_2236905A4()
{
  result = qword_27D08F0C0;
  if (!qword_27D08F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F0C0);
  }

  return result;
}

unint64_t sub_2236905FC()
{
  result = qword_27D08F0C8;
  if (!qword_27D08F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F0C8);
  }

  return result;
}

unint64_t sub_223690654()
{
  result = qword_27D08F0D0;
  if (!qword_27D08F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F0D0);
  }

  return result;
}

unint64_t sub_2236906AC()
{
  result = qword_27D08F0D8;
  if (!qword_27D08F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F0D8);
  }

  return result;
}

unint64_t sub_223690704()
{
  result = qword_27D08F0E0;
  if (!qword_27D08F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F0E0);
  }

  return result;
}

unint64_t sub_22369075C()
{
  result = qword_27D08F0E8;
  if (!qword_27D08F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F0E8);
  }

  return result;
}

unint64_t sub_2236907B4()
{
  result = qword_27D08F0F0;
  if (!qword_27D08F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F0F0);
  }

  return result;
}

unint64_t sub_22369080C()
{
  result = qword_27D08F0F8;
  if (!qword_27D08F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F0F8);
  }

  return result;
}

unint64_t sub_223690860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F168, &unk_22372FB80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F170, &qword_22372D7D8);
    v9 = sub_22372B598();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_223634890(v11, v7, &qword_27D08F168, &unk_22372FB80);
      result = sub_2236AF7B0(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_22372A548();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_223690A48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F160, &qword_223730070);
    v3 = sub_22372B598();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2236261A0(v5, v6);
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

unint64_t sub_223690B44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F108, &qword_22372FB38);
    v3 = sub_22372B598();
    v4 = a1 + 32;

    while (1)
    {
      sub_223634890(v4, v13, &unk_27D08F110, &unk_22372FB40);
      result = sub_2236AF848(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_223661514(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_223690C80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F188, &qword_22372FB98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v22 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EB00, &qword_22372D7D0);
    v9 = sub_22372B598();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    while (1)
    {
      sub_223634890(v11, v7, &qword_27D08F188, &qword_22372FB98);
      v13 = *v7;
      result = sub_2236AF76C(*v7);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v13;
      v17 = v9[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, v7 + v10, v18);
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
      v11 += v12;
      if (!--v8)
      {
        return v9;
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

uint64_t sub_223690E68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000002237353E0 == a2;
  if (v3 || (sub_22372B6E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E6E6F6973736573 && a2 == 0xEF646E756F46746FLL || (sub_22372B6E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000223735400 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000223735420 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D64696C61766E69 && a2 == 0xEE00656761737365 || (sub_22372B6E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000223735450 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000223735470 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000223735490 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002237354B0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_22372B6E8();

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

uint64_t sub_223691154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2236911BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_223691224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22369126C(uint64_t a1)
{
  v2 = type metadata accessor for RemoteIFDispatchError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2236912E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_223624EA4;

  return v11(a1, a2, a3);
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

uint64_t sub_223691424(uint64_t a1, int a2)
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

uint64_t sub_22369146C(uint64_t result, int a2, int a3)
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

id sub_2236914C4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, void *a6, uint64_t a7, char a8, char a9, unint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  v88 = a2;
  v89 = a4;
  v21 = sub_223727408();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1;
  result = [a1 userEphemeralId];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v28 = result;
  sub_2237273E8();

  v29 = [objc_allocWithZone(MEMORY[0x277D596D8]) init];
  if (v29)
  {
    v30 = v29;
    v83 = a3;
    v86 = v26;
    v87 = v22;
    v85 = a15;
    [v29 setIsMultiUser_];
    [v30 setNlRerunLatencyInMs_];
    sub_223692698(a6, a7, a11);
    sub_223630584(0, &qword_27D08F1E8, 0x277D59708);
    v31 = sub_22372B118();

    [v30 setUserScores_];

    [v30 setIsOutsider_];
    [v30 setIsSelectedUserPartOfMultipleHomes_];
    if (a10 >= 5)
    {
      v32 = 0;
    }

    else
    {
      v32 = dword_22372FC9C[a10];
    }

    [v30 setORCHUserIdentityClassification_];
    v39 = sub_22372A518();
    v41 = v87;
    if (*(a11 + 16))
    {
      v42 = sub_2236261A0(v39, v40);
      v44 = v43;

      v45 = v86;
      if ((v44 & 1) == 0)
      {
        v49 = 0;
        v50 = v89;
LABEL_17:
        v51 = a14;
        [v30 setSelectedSharedUserId_];

        v52 = sub_22372A518();
        v54 = v85;
        if (*(v85 + 16))
        {
          v89 = a14;
          v55 = v50;
          v56 = v45;
          v57 = v21;
          v58 = sub_2236261A0(v52, v53);
          v59 = v54;
          v61 = v60;

          if ((v61 & 1) == 0)
          {
            v65 = 0;
            v54 = v59;
            v21 = v57;
            v45 = v56;
            v50 = v55;
            v51 = v89;
            goto LABEL_23;
          }

          v62 = (*(v59 + 56) + 16 * v58);
          v64 = *v62;
          v63 = v62[1];

          v65 = sub_22372AFD8();
          v54 = v59;
          v21 = v57;
          v45 = v56;
          v50 = v55;
          v51 = v89;
        }

        else
        {
          v65 = 0;
        }

LABEL_23:
        [v30 setSelectedloggableUserIdHash_];

        v66 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v67 = sub_2237273C8();
        v68 = [v66 initWithNSUUID_];

        [v30 setSelectedUserEphemeralId_];
        if (v51)
        {
          v69 = v51;
          v70 = sub_223728C28();
          if ((v71 & 1) == 0)
          {
            if (v70 > 4)
            {
              v72 = 0;
            }

            else
            {
              v72 = dword_22372FC9C[v70];
            }

            [v30 setVoiceIdClassification_];
          }

          sub_223693084(v69, v54);
          v73 = sub_22372B118();

          [v30 setVoiceIdScores_];
        }

        v74 = [objc_allocWithZone(MEMORY[0x277D596C0]) init];
        if (v74)
        {
          v75 = v74;
          [v74 setEnded_];
          v76 = v83;
          v77 = sub_2236924EC(v83, v50, v75);

          result = (*(v41 + 8))(v45, v21);
          if (v77)
          {
            return sub_223691C08(v76, v50, v84);
          }
        }

        else
        {
          if (qword_27D08E2C8 != -1)
          {
            swift_once();
          }

          v78 = sub_22372AC98();
          __swift_project_value_buffer(v78, qword_27D097070);

          v79 = sub_22372AC88();
          v80 = sub_22372B278();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v90 = v82;
            *v81 = 136315138;
            *(v81 + 4) = sub_223623274(v83, v50, &v90);
            _os_log_impl(&dword_223620000, v79, v80, "Instrumentation: Failed to create MUX bridge context message for request ended for : %s", v81, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v82);
            MEMORY[0x223DE8A80](v82, -1, -1);
            MEMORY[0x223DE8A80](v81, -1, -1);
          }

          return (*(v41 + 8))(v45, v21);
        }

        return result;
      }

      v46 = (*(a11 + 56) + 16 * v42);
      v48 = *v46;
      v47 = v46[1];

      v49 = sub_22372AFD8();
    }

    else
    {
      v49 = 0;
      v45 = v86;
    }

    v50 = v89;

    goto LABEL_17;
  }

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v33 = sub_22372AC98();
  __swift_project_value_buffer(v33, qword_27D097070);
  v34 = v89;

  v35 = sub_22372AC88();
  v36 = sub_22372B278();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v90 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_223623274(a3, v34, &v90);
    _os_log_impl(&dword_223620000, v35, v36, "Instrumentation: Failed to create MUXRequestEnded message for : %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x223DE8A80](v38, -1, -1);
    MEMORY[0x223DE8A80](v37, -1, -1);
  }

  return (*(v22 + 8))(v26, v21);
}

id sub_223691C08(uint64_t a1, void (*a2)(void, void), void *a3)
{
  v4 = v3;
  v93 = a1;
  v7 = sub_223727398();
  v91 = *(v7 - 8);
  v92 = v7;
  v8 = *(v91 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v85 - v14;
  v94 = sub_223727408();
  v16 = *(v94 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v94, v18);
  v90 = v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = v85 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = v85 - v26;
  v28 = [objc_allocWithZone(MEMORY[0x277D596C8]) init];
  if (!v28)
  {
    if (qword_27D08E2C8 == -1)
    {
LABEL_17:
      v64 = sub_22372AC98();
      __swift_project_value_buffer(v64, qword_27D097070);

      v65 = sub_22372AC88();
      v66 = sub_22372B278();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = a2;
        v70 = v68;
        v95 = v68;
        *v67 = 136315138;
        *(v67 + 4) = sub_223623274(v93, v69, &v95);
        _os_log_impl(&dword_223620000, v65, v66, "Instrumentation: Failed to create MUXEphemeralToAggregationIdentifierMap message for : %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x223DE8A80](v70, -1, -1);
        MEMORY[0x223DE8A80](v67, -1, -1);
      }

      return 0;
    }

LABEL_38:
    swift_once();
    goto LABEL_17;
  }

  v29 = v28;
  v89 = [objc_allocWithZone(MEMORY[0x277D596D0]) init];
  if (!v89)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v71 = sub_22372AC98();
    __swift_project_value_buffer(v71, qword_27D097070);

    v72 = sub_22372AC88();
    v73 = sub_22372B278();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76 = a2;
      v77 = v75;
      v95 = v75;
      *v74 = 136315138;
      *(v74 + 4) = sub_223623274(v93, v76, &v95);
      _os_log_impl(&dword_223620000, v72, v73, "Instrumentation: Failed to create MUXEphemeralToAggregationIdentifierMapContext message for : %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x223DE8A80](v77, -1, -1);
      MEMORY[0x223DE8A80](v74, -1, -1);
    }

    return 0;
  }

  v88 = v12;
  v85[1] = v4;
  v86 = a2;
  result = [a3 userEphemeralId];
  if (!result)
  {
    __break(1u);
    goto LABEL_40;
  }

  v31 = result;
  sub_2237273E8();

  v32 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v33 = sub_2237273C8();
  v34 = [v32 initWithNSUUID_];

  v37 = *(v16 + 8);
  v35 = v16 + 8;
  v36 = v37;
  v38 = v94;
  v37(v27, v94);
  [v29 setUserEphemeralId_];

  result = [a3 userAggregationId];
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v39 = result;
  sub_2237273E8();

  v40 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v41 = sub_2237273C8();
  v42 = [v40 initWithNSUUID_];

  v87 = v35;
  v36(v24, v38);
  [v29 setUserAggregationId_];

  result = [a3 userAggregationIdEffectiveFrom];
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v43 = result;
  sub_223727378();

  sub_223727368();
  v45 = v44;
  a2 = *(v91 + 8);
  v46 = v15;
  v47 = v92;
  a2(v46, v92);
  v48 = v45 * 1000.0;
  v49 = v88;
  if (COERCE__INT64(fabs(v45 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v48 <= -1.0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v48 >= 1.84467441e19)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v29 setUserAggregationIdRotationTimestampMs_];
  result = [a3 userAggregationIdExpiration];
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v50 = result;
  sub_223727378();

  sub_223727368();
  v52 = v51;
  a2(v49, v47);
  v53 = v52 * 1000.0;
  a2 = v94;
  if (COERCE__INT64(fabs(v52 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v53 <= -1.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v53 >= 1.84467441e19)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v29 setUserAggregationIdExpirationTimestampMs_];
  result = [a3 deviceAggregationId];
  if (result)
  {
    v54 = result;
    v55 = v90;
    sub_2237273E8();

    v56 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v57 = sub_2237273C8();
    v58 = [v56 initWithNSUUID_];

    v36(v55, a2);
    [v29 setDeviceAggregationId_];

    v59 = v89;
    [v89 setSelectedUser_];
    v60 = [objc_allocWithZone(MEMORY[0x277D596C0]) init];
    v61 = v86;
    if (v60)
    {
      v62 = v60;
      [v60 setEphemeralToAggregationIdentifierMap_];
      v63 = sub_2236924EC(v93, v61, v62);

      return v63;
    }

    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v78 = sub_22372AC98();
    __swift_project_value_buffer(v78, qword_27D097070);

    v79 = sub_22372AC88();
    v80 = sub_22372B278();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = v61;
      v84 = v82;
      v95 = v82;
      *v81 = 136315138;
      *(v81 + 4) = sub_223623274(v93, v83, &v95);
      _os_log_impl(&dword_223620000, v79, v80, "Instrumentation: Failed to create MUX bridge context message for ephemeral to aggregation identifier map for : %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x223DE8A80](v84, -1, -1);
      MEMORY[0x223DE8A80](v81, -1, -1);
    }

    return 0;
  }

LABEL_43:
  __break(1u);
  return result;
}

BOOL sub_2236924EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 24);
  v9 = sub_22372A878();
  v10 = v9;
  if (v9)
  {
    [v9 setMuxBridgeContext_];
    [*(v4 + 16) emitMessage_];
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v11 = sub_22372AC98();
    __swift_project_value_buffer(v11, qword_27D097070);

    v12 = sub_22372AC88();
    v13 = sub_22372B278();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_223623274(a1, a2, &v17);
      _os_log_impl(&dword_223620000, v12, v13, "Instrumentation: Failed to create wrapper event message for MUXBridgeContext message for : %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x223DE8A80](v15, -1, -1);
      MEMORY[0x223DE8A80](v14, -1, -1);
    }
  }

  return v10 != 0;
}

id sub_223692698(void *a1, uint64_t a2, uint64_t a3)
{
  v101 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v90 - v8;
  v10 = sub_22372A548();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = MEMORY[0x277D84F90];
  v16 = 0x27D08E000uLL;
  if (!a1)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v56 = sub_22372AC98();
    __swift_project_value_buffer(v56, qword_27D097070);
    v55 = sub_22372AC88();
    v57 = sub_22372B278();
    if (os_log_type_enabled(v55, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_223620000, v55, v57, "Unable to log voice id score card as it was not supplied.", v58, 2u);
      MEMORY[0x223DE8A80](v58, -1, -1);
    }

    v22 = MEMORY[0x277D84F90];
LABEL_30:

    sub_22369352C(a2, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_22369359C(v9);
      if (*(v16 + 712) == -1)
      {
LABEL_32:
        v59 = sub_22372AC98();
        __swift_project_value_buffer(v59, qword_27D097070);
        v60 = sub_22372AC88();
        v61 = sub_22372B278();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_223620000, v60, v61, "Unable to log unknown user score as unknown user id was not supplied.", v62, 2u);
          MEMORY[0x223DE8A80](v62, -1, -1);
        }

        return v22;
      }

LABEL_58:
      swift_once();
      goto LABEL_32;
    }

    (*(v11 + 32))(v15, v9, v10);
    v63 = [objc_allocWithZone(MEMORY[0x277D59708]) init];
    if (!v63)
    {
      if (*(v16 + 712) != -1)
      {
        swift_once();
      }

      v75 = sub_22372AC98();
      __swift_project_value_buffer(v75, qword_27D097070);
      v76 = sub_22372AC88();
      v77 = sub_22372B278();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_223620000, v76, v77, "Unable to create ORCHSchemaORCHMultiUserScore object for unknown user, hence instrumentation will have gaps.", v78, 2u);
        MEMORY[0x223DE8A80](v78, -1, -1);
      }

      (*(v11 + 8))(v15, v10);
      return v22;
    }

    v64 = v63;
    v65 = sub_22372A518();
    v67 = v101;
    if (*(v101 + 16))
    {
      v68 = sub_2236261A0(v65, v66);
      v70 = v69;

      if ((v70 & 1) == 0)
      {
        v74 = 0;
        goto LABEL_47;
      }

      v71 = (*(v67 + 56) + 16 * v68);
      v73 = *v71;
      v72 = v71[1];

      v74 = sub_22372AFD8();
    }

    else
    {
      v74 = 0;
    }

LABEL_47:
    [v64 setLoggableSharedUserId_];

    [v64 setScore_];
    v79 = v64;
    MEMORY[0x223DE7B50]();
    if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v89 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22372B148();
    }

    sub_22372B158();

    (*(v11 + 8))(v15, v10);
    return v104;
  }

  v91 = a2;
  v92 = v9;
  v93 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v11;
  v95 = v10;
  v96 = a1;
  result = [v96 spIdKnownUserScores];
  if (result)
  {
    v18 = result;
    sub_223630584(0, &qword_27D08EAE0, 0x277CCABB0);
    v19 = sub_22372AF58();

    v21 = 0;
    v22 = v19 + 64;
    v23 = 1 << *(v19 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v19 + 64);
    v26 = (v23 + 63) >> 6;
    v97 = MEMORY[0x277D84F90];
    *&v20 = 136315138;
    v98 = v20;
    v27 = v101;
    v99 = v19;
    v100 = v26;
LABEL_6:
    v28 = v21;
    while (v25)
    {
      v21 = v28;
LABEL_14:
      v29 = __clz(__rbit64(v25)) | (v21 << 6);
      v30 = (*(v19 + 48) + 16 * v29);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(*(v19 + 56) + 8 * v29);
      v34 = objc_allocWithZone(MEMORY[0x277D59708]);

      v35 = v33;
      v36 = [v34 init];
      if (!v36)
      {
        v80 = v35;
        if (qword_27D08E2C8 != -1)
        {
          swift_once();
        }

        v81 = sub_22372AC98();
        __swift_project_value_buffer(v81, qword_27D097070);

        v82 = sub_22372AC88();
        v83 = sub_22372B278();

        v84 = os_log_type_enabled(v82, v83);
        v85 = v96;
        v22 = v97;
        if (v84)
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v103 = v87;
          *v86 = v98;
          v88 = sub_223623274(v32, v31, &v103);

          *(v86 + 4) = v88;
          _os_log_impl(&dword_223620000, v82, v83, "Unable to create ORCHSchemaORCHMultiUserScore object for user id : %s, hence instrumentation will have gaps. Abandoning all logging.", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v87);
          MEMORY[0x223DE8A80](v87, -1, -1);
          MEMORY[0x223DE8A80](v86, -1, -1);
        }

        else
        {
        }

        return v22;
      }

      v37 = v36;
      v25 &= v25 - 1;
      v102 = v35;
      [v36 setScore_];
      if (*(v27 + 16))
      {
        v38 = sub_2236261A0(v32, v31);
        if (v39)
        {
          v48 = v38;

          v49 = (*(v27 + 56) + 16 * v48);
          v50 = *v49;
          v51 = v49[1];

          v52 = sub_22372AFD8();

          [v37 setLoggableSharedUserId_];

          v53 = v37;
          MEMORY[0x223DE7B50]();
          if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v54 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22372B148();
          }

          sub_22372B158();

          v97 = v104;
          v26 = v100;
          goto LABEL_6;
        }
      }

      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v40 = sub_22372AC98();
      __swift_project_value_buffer(v40, qword_27D097070);

      v41 = sub_22372AC88();
      v42 = sub_22372B278();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v103 = v44;
        *v43 = v98;
        v45 = sub_223623274(v32, v31, &v103);

        *(v43 + 4) = v45;
        _os_log_impl(&dword_223620000, v41, v42, "Unable to find the loggable shared user id for user: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        v46 = v44;
        v19 = v99;
        MEMORY[0x223DE8A80](v46, -1, -1);
        v47 = v43;
        v27 = v101;
        MEMORY[0x223DE8A80](v47, -1, -1);
      }

      else
      {
      }

      v28 = v21;
      v26 = v100;
    }

    while (1)
    {
      v21 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v21 >= v26)
      {

        v11 = v94;
        v10 = v95;
        v9 = v92;
        v15 = v93;
        v55 = v96;
        v22 = v97;
        a2 = v91;
        v16 = 0x27D08E000;
        goto LABEL_30;
      }

      v25 = *(v22 + 8 * v21);
      ++v28;
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  __break(1u);
  return result;
}

void sub_223693084(uint64_t a1, uint64_t a2)
{
  v49 = MEMORY[0x277D84F90];
  v2 = sub_223728BF8();
  v3 = v2;
  v4 = 0;
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = 0x277D59000uLL;
  v45 = v2;
  while (1)
  {
    v11 = v4;
    if (!v8)
    {
      break;
    }

LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);
    v18 = objc_allocWithZone(*(v10 + 1800));

    v19 = [v18 init];
    if (v19)
    {
      v46 = v19;
      if (*(a2 + 16) && (v20 = sub_2236261A0(v15, v16), (v21 & 1) != 0))
      {
        v38 = v20;

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (HIDWORD(v17))
        {
          goto LABEL_31;
        }

        v39 = (*(a2 + 56) + 16 * v38);
        v40 = *v39;
        v41 = v39[1];

        [v46 setScore_];
        v42 = sub_22372AFD8();

        [v46 setLoggableUserIdHash_];

        v43 = v46;
        MEMORY[0x223DE7B50]();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v44 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22372B148();
          v10 = 0x277D59000;
        }

        sub_22372B158();
      }

      else
      {
        if (qword_27D08E2C8 != -1)
        {
          swift_once();
        }

        v22 = sub_22372AC98();
        __swift_project_value_buffer(v22, qword_27D097070);

        v23 = sub_22372AC88();
        v24 = sub_22372B268();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v48 = v26;
          *v25 = 136315138;
          v27 = sub_223623274(v15, v16, &v48);

          *(v25 + 4) = v27;
          _os_log_impl(&dword_223620000, v23, v24, "Cannot find userIdHash for user id : %s,  instrumentation will have gaps.", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          v28 = v26;
          v10 = 0x277D59000;
          MEMORY[0x223DE8A80](v28, -1, -1);
          v29 = v25;
          v3 = v45;
          MEMORY[0x223DE8A80](v29, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v30 = sub_22372AC98();
      __swift_project_value_buffer(v30, qword_27D097070);

      v31 = sub_22372AC88();
      v32 = sub_22372B268();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v48 = v34;
        *v33 = 136315138;
        v35 = sub_223623274(v15, v16, &v48);

        *(v33 + 4) = v35;
        _os_log_impl(&dword_223620000, v31, v32, "Unable to create ORCHSchemaORCHMultiUserScore object for user id : %s, instrumentation will have gaps.", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        v36 = v34;
        v3 = v45;
        MEMORY[0x223DE8A80](v36, -1, -1);
        v37 = v33;
        v10 = 0x277D59000;
        MEMORY[0x223DE8A80](v37, -1, -1);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v4);
    ++v11;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_22369352C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22369359C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223693604@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1F0, &qword_22372FCB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v14 - v5;
  sub_22372ACB8();
  v7 = sub_22372AE58();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_223626478(v6, &qword_27D08F1F0, &qword_22372FCB0);
    sub_22372ACC8();
    v9 = sub_2237279C8();
    v11 = v10;

    if (v9 == 0x505F6E6F6D6D6F63 && v11 == 0xED00006E6F737265 || (sub_22372B6E8() & 1) != 0)
    {

      sub_22372ACC8();
      sub_223693930(a1);
    }

    if (v9 == 0x445F6E6F6D6D6F63 && v11 == 0xEB00000000657461 || (sub_22372B6E8() & 1) != 0)
    {

      sub_22372ACC8();
      sub_223694214(a1);
    }

    if (v9 == 0x445F6E6F6D6D6F63 && v11 == 0xEF656D6954657461 || (sub_22372B6E8() & 1) != 0)
    {

      sub_22372ACC8();
      sub_2236948F8(a1);
    }

    if (v9 == 0xD000000000000012 && 0x80000002237354F0 == v11)
    {

LABEL_21:
      sub_22372ACC8();
      sub_223695204(a1);
    }

    v13 = sub_22372B6E8();

    if (v13)
    {
      goto LABEL_21;
    }

    return (*(v8 + 56))(a1, 1, 1, v7);
  }

  else
  {
    (*(v8 + 32))(a1, v6, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_223693930@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1F8, &qword_22372FCB8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v67 - v5;
  v7 = sub_2237277B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F200, &qword_22372FCC0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v67 - v20;
  sub_223727888();
  sub_2237278F8();
  v22 = v76;
  v74 = v76;
  v75 = v7;
  v73 = a1;
  if (v76)
  {

    v23 = sub_223727878();
    v72 = v24;

    v25 = sub_223727868();

    if (v25)
    {
      sub_223727788();

      v26 = sub_2237279C8();
      v28 = v27;

      v68 = v6;
      v69 = v21;
      v70 = v23;
      v67 = v18;
      if (v26 == 0xD000000000000013 && 0x8000000223735530 == v28 || (sub_22372B6E8() & 1) != 0)
      {

        v29 = sub_223727868();

        if (v29)
        {
          sub_223727988();
          v31 = v30;

          v32 = objc_allocWithZone(MEMORY[0x277CD3E98]);
          if (v31)
          {
            v33 = v32;
            v34 = sub_22372AFD8();

            v32 = v33;
LABEL_12:
            v35 = [v32 initWithValue:v34 type:{1, v67, v68}];
LABEL_13:
            v36 = v35;

            goto LABEL_24;
          }
        }

        else
        {
          v32 = objc_allocWithZone(MEMORY[0x277CD3E98]);
        }

        v34 = 0;
        goto LABEL_12;
      }

      v22 = v74;
      if (v26 == 0xD000000000000012 && 0x8000000223735550 == v28)
      {

        goto LABEL_18;
      }

      v37 = sub_22372B6E8();

      if (v37)
      {
LABEL_18:

        v38 = sub_223727868();

        if (v38)
        {
          sub_223727988();
          v40 = v39;

          v41 = objc_allocWithZone(MEMORY[0x277CD3E98]);
          if (v40)
          {
            v42 = v41;
            v34 = sub_22372AFD8();

            v41 = v42;
LABEL_49:
            v35 = [v41 initWithValue:v34 type:{2, v67, v68}];
            goto LABEL_13;
          }
        }

        else
        {
          v41 = objc_allocWithZone(MEMORY[0x277CD3E98]);
        }

        v34 = 0;
        goto LABEL_49;
      }
    }

    v7 = v75;
  }

  else
  {
    v23 = 0;
    v72 = 0;
  }

  v36 = [objc_allocWithZone(MEMORY[0x277CD3E98]) initWithValue:0 type:0];
  v70 = v23;
  if (!v22)
  {
    (*(v8 + 56))(v21, 1, 1, v7);
    v71 = v36;
    goto LABEL_36;
  }

  v67 = v18;
  v68 = v6;
  v69 = v21;
LABEL_24:

  v71 = v36;
  v43 = sub_223727778();

  v45 = *(v43 + 16);
  v7 = v75;
  if (!v45)
  {
LABEL_31:

    v21 = v69;
    (*(v8 + 56))(v69, 1, 1, v7);
LABEL_35:
    v22 = v74;
    v18 = v67;
    v6 = v68;
LABEL_36:

    sub_22369539C(v22, v6);
    v49 = sub_2237272D8();
    v50 = *(v49 - 8);
    (*(v50 + 56))(v6, 0, 1, v49);
    sub_223695950(v21, v18);
    if ((*(v8 + 48))(v18, 1, v7) == 1)
    {
      sub_223626478(v18, &qword_27D08F200, &qword_22372FCC0);
      v51 = 0;
    }

    else
    {
      sub_2237277A8();
      v52 = v18;
      v51 = v53;
      (*(v8 + 8))(v52, v7);
    }

    v54 = v72;
    if ((*(v50 + 48))(v6, 1, v49) == 1)
    {
      v55 = 0;
      v56 = v71;
      if (v54)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v55 = sub_2237272C8();
      (*(v50 + 8))(v6, v49);
      v56 = v71;
      if (v54)
      {
LABEL_41:
        v57 = sub_22372AFD8();

        if (v51)
        {
LABEL_42:
          v58 = sub_22372AFD8();

LABEL_46:
          [objc_allocWithZone(MEMORY[0x277CD3E90]) initWithPersonHandle:v56 nameComponents:v55 displayName:v57 image:0 contactIdentifier:v58 customIdentifier:0];

          v59 = sub_22372AE48();
          v60 = swift_allocBox();
          v62 = v61;
          sub_22372AE38();

          sub_223626478(v21, &qword_27D08F200, &qword_22372FCC0);
          (*(*(v59 - 8) + 104))(v62, *MEMORY[0x277D729B0], v59);
          v63 = v73;
          *v73 = v60;
          v64 = *MEMORY[0x277D72A58];
          v65 = sub_22372AE58();
          v66 = *(v65 - 8);
          (*(v66 + 104))(v63, v64, v65);
          return (*(v66 + 56))(v63, 0, 1, v65);
        }

LABEL_45:
        v58 = 0;
        goto LABEL_46;
      }
    }

    v57 = 0;
    if (v51)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v46 = 0;
  while (v46 < *(v43 + 16))
  {
    (*(v8 + 16))(v12, v43 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v46, v7);
    if (sub_223727798() == 0xD00000000000001BLL && 0x8000000223735510 == v47)
    {

LABEL_34:

      v7 = v75;
      v21 = v69;
      (*(v8 + 32))(v69, v12, v75);
      (*(v8 + 56))(v21, 0, 1, v7);
      goto LABEL_35;
    }

    v48 = sub_22372B6E8();

    if (v48)
    {
      goto LABEL_34;
    }

    ++v46;
    v7 = v75;
    result = (*(v8 + 8))(v12, v75);
    if (v45 == v46)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223694214@<X0>(uint64_t *a1@<X8>)
{
  v56 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F208, &qword_22372FCC8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v50 - v4;
  v55 = sub_223727398();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v55, v8);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_223727478();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F210, &qword_22372FCD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F218, &qword_22372FCD8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = &v50 - v24;
  v26 = sub_223727298();
  v51 = *(v26 - 8);
  v52 = v26;
  v27 = *(v51 + 64);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2237277F8();
  sub_2237278F8();
  v31 = v57;
  v32 = *(v11 + 56);
  v54 = v10;
  v32(v25, 1, 1, v10);
  v33 = sub_2237274A8();
  (*(*(v33 - 8) + 56))(v20, 1, 1, v33);
  sub_223727278();
  if (v31)
  {

    v34 = sub_2237277E8();

    if (v34)
    {
      sub_223727898();
    }

    sub_223727238();

    v35 = sub_2237277D8();

    if (v35)
    {
      sub_223727898();
    }

    sub_223727248();

    v36 = sub_2237277D8();

    if (v36)
    {
      sub_223727898();
    }
  }

  else
  {
    sub_223727238();
    sub_223727248();
  }

  sub_223727218();
  sub_223727468();
  sub_223727458();
  v37 = *(v6 + 48);
  v38 = v55;
  if (v37(v5, 1, v55) == 1)
  {
    v39 = v53;
    sub_223727388();

    (*(v11 + 8))(v15, v54);
    (*(v51 + 8))(v30, v52);
    v40 = v6;
    if (v37(v5, 1, v38) != 1)
    {
      sub_223626478(v5, &qword_27D08F208, &qword_22372FCC8);
    }
  }

  else
  {

    (*(v11 + 8))(v15, v54);
    (*(v51 + 8))(v30, v52);
    v39 = v53;
    (*(v6 + 32))(v53, v5, v38);
    v40 = v6;
  }

  v41 = sub_22372AE48();
  v42 = swift_allocBox();
  v44 = v43;
  (*(v40 + 32))(v43, v39, v38);
  (*(*(v41 - 8) + 104))(v44, *MEMORY[0x277D72990], v41);
  v45 = v56;
  *v56 = v42;
  v46 = *MEMORY[0x277D72A58];
  v47 = sub_22372AE58();
  v48 = *(v47 - 8);
  (*(v48 + 104))(v45, v46, v47);
  return (*(v48 + 56))(v45, 0, 1, v47);
}

uint64_t sub_2236948F8@<X0>(uint64_t *a1@<X8>)
{
  v77 = a1;
  v1 = sub_2237274A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v72 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v76 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F210, &qword_22372FCD0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F218, &qword_22372FCD8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v71 - v21;
  v23 = sub_223727298();
  v74 = *(v23 - 8);
  v75 = v23;
  v24 = *(v74 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2237278D8();
  sub_2237278F8();
  v28 = v78;
  v29 = sub_223727478();
  (*(*(v29 - 8) + 56))(v22, 1, 1, v29);
  v73 = *(v2 + 56);
  v73(v17, 1, 1, v1);
  sub_223727278();
  if (!v28)
  {
    sub_223727238();
    sub_223727248();
    sub_223727218();
    sub_223727228();
    sub_223727258();
    sub_223727268();
LABEL_25:

    goto LABEL_26;
  }

  v30 = sub_2237278B8();

  if (v30)
  {
    v31 = sub_2237277E8();

    if (v31)
    {
      sub_223727898();
    }
  }

  sub_223727238();

  v32 = sub_2237278B8();

  if (v32)
  {
    v33 = sub_2237277D8();

    if (v33)
    {
      sub_223727898();
    }
  }

  sub_223727248();

  v34 = sub_2237278B8();

  if (v34)
  {
    v35 = sub_2237277D8();

    if (v35)
    {
      sub_223727898();
    }
  }

  sub_223727218();

  v36 = sub_2237278C8();

  if (v36)
  {
    v37 = sub_223727808();

    if (v37)
    {
      sub_223727898();
    }
  }

  sub_223727228();

  v38 = sub_2237278C8();

  if (v38)
  {
    v39 = sub_223727818();

    if (v39)
    {
      sub_223727898();
    }
  }

  sub_223727258();

  v40 = sub_2237278C8();

  if (v40)
  {
    v41 = sub_223727828();

    if (v41)
    {
      sub_223727898();
    }
  }

  sub_223727268();

  v42 = sub_2237278C8();

  if (!v42)
  {
    goto LABEL_25;
  }

  v43 = sub_223727838();

  if (!v43)
  {
    goto LABEL_25;
  }

  sub_2237278E8();
  v45 = v44;

  if (!v45)
  {
    goto LABEL_25;
  }

LABEL_26:
  v46 = objc_allocWithZone(MEMORY[0x277CBEBB0]);
  v47 = sub_22372AFD8();

  v48 = [v46 initWithName_];

  if (v48)
  {
    v49 = v72;
    sub_223727488();

    v50 = *(v2 + 32);
    v50(v14, v49, v1);
    v51 = v14;
    v52 = v1;
    v72 = v28;
    v53 = v27;
    v54 = v1;
    v55 = v17;
    v56 = v2;
    v57 = v14;
    v58 = v73;
    v73(v51, 0, 1, v52);
    v59 = v76;
    v60 = v57;
    v2 = v56;
    v17 = v55;
    v1 = v54;
    v27 = v53;
    v50(v76, v60, v1);
    v61 = v58;
  }

  else
  {
    v61 = v73;
    v73(v14, 1, 1, v1);
    v59 = v76;
    sub_223727498();
    if ((*(v2 + 48))(v14, 1, v1) != 1)
    {
      sub_223626478(v14, &qword_27D08F210, &qword_22372FCD0);
    }
  }

  (*(v2 + 16))(v17, v59, v1);
  v61(v17, 0, 1, v1);
  sub_223727288();

  (*(v2 + 8))(v59, v1);
  v62 = sub_22372AE48();
  v63 = swift_allocBox();
  v65 = v64;
  (*(v74 + 32))(v64, v27, v75);
  (*(*(v62 - 8) + 104))(v65, *MEMORY[0x277D72958], v62);
  v66 = v77;
  *v77 = v63;
  v67 = *MEMORY[0x277D72A58];
  v68 = sub_22372AE58();
  v69 = *(v68 - 8);
  (*(v69 + 104))(v66, v67, v68);
  return (*(v69 + 56))(v66, 0, 1, v68);
}

uint64_t sub_223695204@<X0>(uint64_t *a1@<X8>)
{
  sub_223727978();
  sub_2237278F8();
  if (v13 && (, v2 = sub_223727968(), , v2) && (v3 = sub_223727998(), v5 = v4, , v5))
  {
  }

  else
  {

    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = sub_22372AE48();
  v7 = swift_allocBox();
  *v8 = v3;
  v8[1] = v5;
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D729B8], v6);
  *a1 = v7;
  v9 = *MEMORY[0x277D72A58];
  v10 = sub_22372AE58();
  v11 = *(v10 - 8);
  (*(v11 + 104))(a1, v9, v10);
  return (*(v11 + 56))(a1, 0, 1, v10);
}

uint64_t sub_22369539C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1F8, &qword_22372FCB8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v56 = &v45 - v6;
  v7 = sub_2237272D8();
  v58 = *(v7 - 8);
  v8 = *(v58 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v57 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v10;
  if (a1)
  {

    v12 = sub_223727858();

    if (v12)
    {
      v13 = sub_223727948();
      v52 = v14;
      v53 = v13;
    }

    else
    {
      v52 = 0;
      v53 = 0;
    }

    v15 = sub_223727858();

    if (v15)
    {
      sub_223727918();
    }

    v16 = sub_223727858();

    if (v16)
    {
      v17 = sub_223727938();
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_223727858();

    if (v18)
    {
      v19 = sub_223727928();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v50 = v19;
    v51 = v21;

    v22 = sub_223727858();

    if (v22)
    {
      sub_223727958();
    }

    v23 = sub_223727858();

    v47 = v17;
    if (v23)
    {
      v24 = sub_223727908();
      v48 = v25;
      v49 = v24;
    }

    else
    {
      v48 = 0;
      v49 = 0;
    }

    v7 = v55;
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v47 = 0;
  }

  v26 = *(v58 + 56);
  v27 = v56;
  v52 = v58 + 56;
  v53 = v26;
  v26(v56, 1, 1, v7);
  sub_2237272B8();
  if (a1)
  {

    v28 = sub_223727848();

    if (v28)
    {
      sub_223727948();
    }

    v27 = v56;

    v29 = sub_223727848();

    if (v29)
    {
      sub_223727918();
      v51 = v30;
    }

    else
    {
      v51 = 0;
    }

    v31 = sub_223727848();

    if (v31)
    {
      v32 = sub_223727938();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v35 = sub_223727848();

    if (v35)
    {
      v36 = sub_223727928();
      v49 = v37;
      v50 = v36;
    }

    else
    {
      v49 = 0;
      v50 = 0;
    }

    v48 = v34;

    v38 = sub_223727848();

    if (v38)
    {
      sub_223727958();
    }

    v39 = sub_223727848();

    v45 = v32;
    if (v39)
    {
      v40 = sub_223727908();
      v46 = v41;
      v47 = v40;
    }

    else
    {
      v46 = 0;
      v47 = 0;
    }

    v7 = v55;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v49 = 0;
    v50 = 0;
    v45 = 0;
    v48 = 0;
    v51 = 0;
  }

  v43 = v57;
  v42 = v58;
  (*(v58 + 16))(v27, v57, v7);
  v53(v27, 0, 1, v7);
  sub_2237272B8();

  return (*(v42 + 8))(v43, v7);
}

uint64_t sub_223695950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F200, &qword_22372FCC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MUXBridge.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v7 = v6;
  v31[0] = a1;
  v31[1] = a2;
  v11 = sub_22372AC98();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 + 48);
  v18 = *(v7 + 52);
  v19 = swift_allocObject();
  v20 = v19 + qword_27D08F220;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v21 = qword_27D0970C0;
  v22 = sub_223727408();
  (*(*(v22 - 8) + 56))(v19 + v21, 1, 1, v22);
  v23 = (v19 + qword_27D0970C8);
  *v23 = 0;
  v23[1] = 0;
  v24 = qword_27D08F228;
  if (qword_27D08E2F0 != -1)
  {
    swift_once();
  }

  *(v19 + v24) = qword_27D0970F8;
  *(v19 + qword_27D0970D0) = 0;
  *(v19 + qword_27D0970D8) = 0;
  *(v19 + qword_27D0970E0) = 0;
  sub_223623934(a3, v33);
  sub_223623934(a6, v32);
  v25 = a3;
  v26 = qword_27D08E2C8;

  swift_unknownObjectRetain();
  v27 = a5;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v11, qword_27D097070);
  (*(v12 + 16))(v16, v28, v11);
  v29 = sub_22372A6E8();

  *(v29 + qword_27D0970E0) = AFDeviceSupportsMedoc();
  sub_223695F1C();
  sub_223696814();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v29;
}

uint64_t MUXBridge.init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v27[0] = a1;
  v27[1] = a2;
  v10 = sub_22372AC98();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v6 + qword_27D08F220;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  v17 = qword_27D0970C0;
  v18 = sub_223727408();
  (*(*(v18 - 8) + 56))(v6 + v17, 1, 1, v18);
  v19 = (v6 + qword_27D0970C8);
  *v19 = 0;
  v19[1] = 0;
  v20 = qword_27D08F228;
  if (qword_27D08E2F0 != -1)
  {
    swift_once();
  }

  *(v6 + v20) = qword_27D0970F8;
  *(v6 + qword_27D0970D0) = 0;
  *(v6 + qword_27D0970D8) = 0;
  *(v6 + qword_27D0970E0) = 0;
  sub_223623934(a3, v29);
  sub_223623934(a6, v28);
  v21 = a3;
  v22 = qword_27D08E2C8;

  swift_unknownObjectRetain();
  v23 = a5;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v10, qword_27D097070);
  (*(v11 + 16))(v15, v24, v10);
  v25 = sub_22372A6E8();

  *(v25 + qword_27D0970E0) = AFDeviceSupportsMedoc();
  sub_223695F1C();
  sub_223696814();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v25;
}

uint64_t sub_223695F1C()
{
  v1 = sub_22372A848();
  v2 = *(v1 - 8);
  v3 = v2[8];
  result = MEMORY[0x28223BE20](v1, v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + qword_27D0970E0) & 1) == 0)
  {
    v8 = v2[13];
    v8(v7, *MEMORY[0x277D60070], v1);
    sub_223728BE8();
    type metadata accessor for MUXRequestProcessor();
    sub_22372A6D8();
    v9 = v2[1];
    v9(v7, v1);
    v8(v7, *MEMORY[0x277D60080], v1);
    sub_223728EC8();
    sub_22372A6D8();
    v9(v7, v1);
    v8(v7, *MEMORY[0x277D60090], v1);
    sub_223727E88();
    sub_22372A6D8();
    v9(v7, v1);
    v10 = *MEMORY[0x277D60098];
    v8(v7, v10, v1);
    sub_223728E48();
    sub_22372A6D8();
    v9(v7, v1);
    v8(v7, v10, v1);
    sub_223728658();
    sub_22372A6D8();
    v9(v7, v1);
    v8(v7, v10, v1);
    sub_223728668();
    sub_22372A6D8();
    v9(v7, v1);
    v8(v7, v10, v1);
    sub_223729098();
    sub_22372A6D8();
    v9(v7, v1);
    v8(v7, v10, v1);
    sub_2237282A8();
    sub_22372A6D8();
    v9(v7, v1);
    v8(v7, v10, v1);
    sub_223728C48();
    sub_22372A6D8();
    return (v9)(v7, v1);
  }

  return result;
}

uint64_t sub_223696360(void *a1, uint64_t a2)
{
  v4 = sub_223729F08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x277D5CF40], v4);
  v10 = qword_27D097100;
  swift_beginAccess();
  (*(v5 + 40))(a2 + v10, v9, v4);
  swift_endAccess();
  return sub_2236AD404(a1);
}

void sub_223696508(void *a1)
{
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_27D097070);
  v3 = a1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_223620000, v4, v5, "MUXBridge received message: %@", v6, 0xCu);
    sub_223626478(v7, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  sub_2236A7190();
}

uint64_t sub_223696814()
{
  v0 = sub_22372A848();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223727F18();
  sub_22372A938();
  sub_223728478();
  sub_22372A938();
  sub_223728038();
  sub_22372A938();
  sub_223729328();
  sub_22372A938();
  sub_22369BF4C();
  sub_22372A968();
  v6 = *MEMORY[0x277D60070];
  v7 = v1[13];
  v7(v5, v6, v0);
  sub_223728528();
  type metadata accessor for MUXRequestProcessor();
  sub_22372A6D8();
  v8 = v1[1];
  v8(v5, v0);
  v7(v5, v6, v0);
  sub_223729338();
  sub_22372A6D8();
  v8(v5, v0);
  v7(v5, v6, v0);
  sub_223728928();
  sub_22372A6D8();
  v8(v5, v0);
  v9 = *MEMORY[0x277D60098];
  v7(v5, v9, v0);
  sub_223729698();
  sub_22372A6D8();
  v8(v5, v0);
  v7(v5, v9, v0);
  sub_2237294D8();
  sub_22372A6D8();
  v8(v5, v0);
  v7(v5, v9, v0);
  sub_223728DA8();
  sub_22372A6D8();
  v8(v5, v0);
  v7(v5, v9, v0);
  sub_223729978();
  sub_22372A6D8();
  v8(v5, v0);
  v7(v5, v9, v0);
  sub_2237298D8();
  sub_22372A6D8();
  return (v8)(v5, v0);
}

uint64_t sub_223696E28(void *a1, uint64_t a2, unsigned int *a3)
{
  v6 = sub_223729F08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 104))(v11, *a3, v6);
  v12 = qword_27D097100;
  swift_beginAccess();
  (*(v7 + 40))(a2 + v12, v11, v6);
  swift_endAccess();
  v13 = type metadata accessor for MUXNonSpeechUserSelector();
  v14 = swift_allocObject();
  v19 = v13;
  v20 = &off_2836C59A8;
  *&v18 = v14;
  v15 = qword_27D097108;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((a2 + v15));
  sub_2236241E8(&v18, a2 + v15);
  swift_endAccess();
  return sub_2236AD404(a1);
}

uint64_t sub_223697170(void *a1)
{
  v2 = v1;
  v4 = sub_22372A548();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223727408();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v38 - v17;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v19 = sub_22372AC98();
  __swift_project_value_buffer(v19, qword_27D097070);
  v20 = a1;
  v21 = sub_22372AC88();
  v22 = sub_22372B268();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v38 = v4;
    v24 = v23;
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v20;
    *v25 = v20;
    v26 = v20;
    _os_log_impl(&dword_223620000, v21, v22, "MUXBridge received message: %@", v24, 0xCu);
    sub_223626478(v25, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v25, -1, -1);
    v27 = v24;
    v4 = v38;
    MEMORY[0x223DE8A80](v27, -1, -1);
  }

  sub_223729D58();
  (*(v9 + 56))(v18, 0, 1, v8);
  v28 = qword_27D0970C0;
  swift_beginAccess();
  sub_2236719F4(v18, v2 + v28, &unk_27D08E530, &unk_22372CB10);
  swift_endAccess();
  sub_22372A978();
  __swift_project_boxed_opaque_existential_1(v42, v42[3]);
  sub_223729D58();
  sub_22372A4E8();
  (*(v9 + 8))(v13, v8);
  v29 = qword_27D08F220;
  swift_beginAccess();
  sub_2236719F4(v41, v2 + v29, &qword_27D08F650, qword_2237317C0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  sub_223729D58();
  v30 = v39;
  sub_223728468();
  v31 = type metadata accessor for MUXSessionContext(0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  v35 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
  *(v34 + v35) = sub_22362654C(MEMORY[0x277D84F90]);
  (*(v9 + 32))(v34 + OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_sessionId, v13, v8);
  (*(v40 + 32))(v34 + OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_sessionUserId, v30, v4);
  v36 = *(v2 + qword_27D0970D8);
  *(v2 + qword_27D0970D8) = v34;
}

void sub_2236975E0(void *a1)
{
  v2 = v1;
  v4 = sub_223727408();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v71 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F238, qword_22372FCF8);
  v9 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75, v10);
  v12 = &v66[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v69 = &v66[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16, v18);
  v76 = &v66[-v20];
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v66[-v23];
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v66[-v26];
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v28 = sub_22372AC98();
  v29 = __swift_project_value_buffer(v28, qword_27D097070);
  v30 = a1;
  v72 = v29;
  v31 = sub_22372AC88();
  v32 = sub_22372B268();

  v33 = os_log_type_enabled(v31, v32);
  v74 = v5;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v30;
    *v35 = v30;
    v36 = v30;
    _os_log_impl(&dword_223620000, v31, v32, "MUXBridge received message: %@", v34, 0xCu);
    sub_223626478(v35, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v35, -1, -1);
    v37 = v34;
    v5 = v74;
    MEMORY[0x223DE8A80](v37, -1, -1);
  }

  v38 = qword_27D0970C0;
  swift_beginAccess();
  v70 = v2;
  v68 = v38;
  sub_223634890(v2 + v38, v27, &unk_27D08E530, &unk_22372CB10);
  v73 = v30;
  sub_223729D58();
  v39 = *(v5 + 56);
  v39(v24, 0, 1, v4);
  v40 = v4;
  v41 = *(v75 + 48);
  sub_223634890(v27, v12, &unk_27D08E530, &unk_22372CB10);
  sub_223634890(v24, &v12[v41], &unk_27D08E530, &unk_22372CB10);
  v42 = *(v5 + 48);
  if (v42(v12, 1, v40) == 1)
  {
    v75 = v39;
    sub_223626478(v24, &unk_27D08E530, &unk_22372CB10);
    sub_223626478(v27, &unk_27D08E530, &unk_22372CB10);
    v43 = v42(&v12[v41], 1, v40);
    v44 = v40;
    if (v43 == 1)
    {
      sub_223626478(v12, &unk_27D08E530, &unk_22372CB10);
LABEL_15:
      v59 = v69;
      (v75)(v69, 1, 1, v44);
      v60 = v70;
      v61 = v68;
      swift_beginAccess();
      sub_2236719F4(v59, v60 + v61, &unk_27D08E530, &unk_22372CB10);
      swift_endAccess();
      v78 = 0;
      memset(v77, 0, sizeof(v77));
      v62 = qword_27D08F220;
      swift_beginAccess();
      sub_2236719F4(v77, v60 + v62, &qword_27D08F650, qword_2237317C0);
      swift_endAccess();
      v63 = *(v60 + qword_27D0970D8);
      *(v60 + qword_27D0970D8) = 0;

      v64 = (v60 + qword_27D0970C8);
      v65 = *(v60 + qword_27D0970C8 + 8);
      *v64 = 0;
      v64[1] = 0;

      return;
    }

    goto LABEL_10;
  }

  sub_223634890(v12, v76, &unk_27D08E530, &unk_22372CB10);
  if (v42(&v12[v41], 1, v40) == 1)
  {
    sub_223626478(v24, &unk_27D08E530, &unk_22372CB10);
    sub_223626478(v27, &unk_27D08E530, &unk_22372CB10);
    (*(v5 + 8))(v76, v40);
    v44 = v40;
LABEL_10:
    sub_223626478(v12, &unk_27D08F238, qword_22372FCF8);
    v45 = v73;
    goto LABEL_11;
  }

  v75 = v39;
  v56 = v71;
  (*(v5 + 32))(v71, &v12[v41], v40);
  sub_22369BFA4(&qword_28132B608, MEMORY[0x277CC95F0]);
  v57 = v76;
  v67 = sub_22372AFC8();
  v58 = *(v5 + 8);
  v58(v56, v40);
  sub_223626478(v24, &unk_27D08E530, &unk_22372CB10);
  sub_223626478(v27, &unk_27D08E530, &unk_22372CB10);
  v58(v57, v40);
  sub_223626478(v12, &unk_27D08E530, &unk_22372CB10);
  v44 = v40;
  v45 = v73;
  if (v67)
  {
    goto LABEL_15;
  }

LABEL_11:
  v46 = v45;
  v47 = sub_22372AC88();
  v48 = sub_22372B278();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v77[0] = v50;
    *v49 = 136315138;
    v51 = v71;
    sub_223729D58();
    sub_22369BFA4(&qword_28132B600, MEMORY[0x277CC95F0]);
    v52 = sub_22372B6B8();
    v54 = v53;
    (*(v74 + 8))(v51, v44);
    v55 = sub_223623274(v52, v54, v77);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_223620000, v47, v48, "SessionId: %s is not the current session, ignoring", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x223DE8A80](v50, -1, -1);
    MEMORY[0x223DE8A80](v49, -1, -1);
  }
}

void sub_223697DEC(void *a1)
{
  v2 = v1;
  v121 = sub_223727408();
  v4 = *(v121 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v121, v6);
  v112 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F238, qword_22372FCF8);
  v8 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116, v9);
  v11 = &v107 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v12 = *(*(v110 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v110, v13);
  v109 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v111 = &v107 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v107 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v107 - v24;
  v115 = sub_22372A548();
  v114 = *(v115 - 8);
  v26 = *(v114 + 64);
  MEMORY[0x28223BE20](v115, v27);
  v113 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E40 != -1)
  {
    swift_once();
  }

  v120 = v25;
  v118 = sub_22372AC98();
  __swift_project_value_buffer(v118, qword_28132B650);
  v29 = a1;
  v30 = sub_22372AC88();
  v31 = sub_22372B268();

  v32 = os_log_type_enabled(v30, v31);
  v119 = v4;
  v122 = v2;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    aBlock[0] = v117;
    *v33 = 136315650;
    v34 = sub_223729308();
    v36 = sub_223623274(v34, v35, aBlock);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    v37 = v113;
    sub_223729318();
    sub_22369BFA4(&qword_28132B4E8, MEMORY[0x277D5D298]);
    v38 = v115;
    v39 = sub_22372B6B8();
    v41 = v40;
    (*(v114 + 8))(v37, v38);
    v42 = sub_223623274(v39, v41, aBlock);

    *(v33 + 14) = v42;
    *(v33 + 22) = 2080;
    v4 = v119;
    v43 = sub_2237292F8();
    v45 = sub_223623274(v43, v44, aBlock);

    *(v33 + 24) = v45;
    _os_log_impl(&dword_223620000, v30, v31, "Received InitiateMUXStateRollbackMessage, rollbackRequestId: %s, userId: %s, originalRequestId: %s", v33, 0x20u);
    v46 = v117;
    swift_arrayDestroy();
    v2 = v122;
    MEMORY[0x223DE8A80](v46, -1, -1);
    MEMORY[0x223DE8A80](v33, -1, -1);
  }

  v47 = qword_27D0970C0;
  swift_beginAccess();
  v108 = v47;
  v48 = v120;
  sub_223634890(v2 + v47, v120, &unk_27D08E530, &unk_22372CB10);
  v117 = v29;
  sub_223729D58();
  v49 = v121;
  (*(v4 + 56))(v22, 0, 1, v121);
  v50 = *(v116 + 48);
  sub_223634890(v48, v11, &unk_27D08E530, &unk_22372CB10);
  sub_223634890(v22, &v11[v50], &unk_27D08E530, &unk_22372CB10);
  v51 = *(v4 + 48);
  if (v51(v11, 1, v49) == 1)
  {
    sub_223626478(v22, &unk_27D08E530, &unk_22372CB10);
    sub_223626478(v48, &unk_27D08E530, &unk_22372CB10);
    v52 = v51(&v11[v50], 1, v49);
    v53 = v122;
    if (v52 == 1)
    {
      sub_223626478(v11, &unk_27D08E530, &unk_22372CB10);
      v54 = v117;
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v55 = v111;
  sub_223634890(v11, v111, &unk_27D08E530, &unk_22372CB10);
  if (v51(&v11[v50], 1, v49) == 1)
  {
    sub_223626478(v22, &unk_27D08E530, &unk_22372CB10);
    sub_223626478(v120, &unk_27D08E530, &unk_22372CB10);
    (*(v4 + 8))(v55, v49);
    v53 = v122;
LABEL_10:
    sub_223626478(v11, &unk_27D08F238, qword_22372FCF8);
    v54 = v117;
LABEL_11:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v118, qword_27D097070);
    v56 = v54;

    v57 = sub_22372AC88();
    v58 = sub_22372B278();

    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_16;
    }

    v59 = swift_slowAlloc();
    v60 = v53;
    v61 = swift_slowAlloc();
    aBlock[0] = v61;
    *v59 = 136315394;
    v62 = v112;
    sub_223729D58();
    sub_22369BFA4(&qword_28132B600, MEMORY[0x277CC95F0]);
    v63 = v121;
    v64 = sub_22372B6B8();
    v66 = v65;
    (*(v119 + 8))(v62, v63);
    v67 = sub_223623274(v64, v66, aBlock);

    *(v59 + 4) = v67;
    *(v59 + 12) = 2080;
    sub_223634890(v60 + v108, v109, &unk_27D08E530, &unk_22372CB10);
    v68 = sub_22372B038();
    v70 = sub_223623274(v68, v69, aBlock);

    *(v59 + 14) = v70;
    _os_log_impl(&dword_223620000, v57, v58, "Received InitiateMUXStateRollbackMessage with sessionId: %s where as currentSessionId: %s. Ignoring the message.", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v61, -1, -1);
    v71 = v59;
    goto LABEL_15;
  }

  v72 = v112;
  (*(v4 + 32))(v112, &v11[v50], v49);
  sub_22369BFA4(&qword_28132B608, MEMORY[0x277CC95F0]);
  v73 = v4;
  v74 = v49;
  v75 = sub_22372AFC8();
  v76 = *(v73 + 8);
  v76(v72, v74);
  sub_223626478(v22, &unk_27D08E530, &unk_22372CB10);
  sub_223626478(v120, &unk_27D08E530, &unk_22372CB10);
  v76(v55, v74);
  sub_223626478(v11, &unk_27D08E530, &unk_22372CB10);
  v53 = v122;
  v54 = v117;
  if ((v75 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_18:
  v77 = sub_223729308();
  v79 = v78;
  v80 = v113;
  sub_223729318();
  v81 = sub_223699018(v77, v79, v80);

  (*(v114 + 8))(v80, v115);
  if (!v81)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v118, qword_27D097070);
    v57 = sub_22372AC88();
    v99 = sub_22372B278();
    if (!os_log_type_enabled(v57, v99))
    {
      goto LABEL_16;
    }

    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_223620000, v57, v99, "Could not make RunNLXRequest. Cannot trigger StartLocalRequest", v100, 2u);
    v71 = v100;
LABEL_15:
    MEMORY[0x223DE8A80](v71, -1, -1);
LABEL_16:

    return;
  }

  v82 = [objc_allocWithZone(MEMORY[0x277D47940]) init];
  v83 = v112;
  sub_2237273F8();
  sub_2237273B8();
  (*(v119 + 8))(v83, v121);
  v84 = sub_22372AFD8();

  [v82 setAceId_];

  [v82 setRefId_];
  v85 = v81;
  v86 = [v82 aceId];

  [v85 setRefId_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB48, qword_2237329D0);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_22372FCE0;
  *(v87 + 32) = v85;
  v88 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F280, &qword_22372FD98);
  v89 = sub_22372B118();

  [v82 setClientBoundCommands_];

  v90 = qword_27D08F220;
  swift_beginAccess();
  sub_223634890(v53 + v90, &v127, &qword_27D08F650, qword_2237317C0);
  if (v128)
  {
    sub_2236241E8(&v127, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v124);
    sub_223729308();
    sub_22372A4A8();

    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v118, qword_27D097070);
    v91 = v54;
    v92 = sub_22372AC88();
    v93 = sub_22372B268();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v127 = v95;
      *v94 = 136315138;
      v96 = sub_223729308();
      v98 = sub_223623274(v96, v97, &v127);

      *(v94 + 4) = v98;
      _os_log_impl(&dword_223620000, v92, v93, "SessionState rolled back to requestId: %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x223DE8A80](v95, -1, -1);
      MEMORY[0x223DE8A80](v94, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  }

  else
  {
    sub_223626478(&v127, &qword_27D08F650, qword_2237317C0);
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v118, qword_27D097070);
    v101 = sub_22372AC88();
    v102 = sub_22372B278();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_223620000, v101, v102, "No SessionState found. Could not rollback.", v103, 2u);
      MEMORY[0x223DE8A80](v103, -1, -1);
    }
  }

  v104 = [objc_allocWithZone(MEMORY[0x277CEF378]) init];
  [v104 setStartLocalRequest_];
  [v104 setActivationEvent_];
  [v104 setOptions_];
  v105 = sub_22372A948();
  if ([v105 respondsToSelector_])
  {
    v125 = sub_223698DD0;
    v126 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2236C3F44;
    v124 = &block_descriptor_1;
    v106 = _Block_copy(aBlock);

    [v105 submitExternalActivationRequest:v104 completion:v106];
    _Block_release(v106);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_223698DD0(char a1, void *a2)
{
  if (a1)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v2 = sub_22372AC98();
    __swift_project_value_buffer(v2, qword_27D097070);
    oslog = sub_22372AC88();
    v3 = sub_22372B268();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_223620000, oslog, v3, "Successfully submitted external activation request", v4, 2u);
      MEMORY[0x223DE8A80](v4, -1, -1);
    }
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v6 = sub_22372AC98();
    __swift_project_value_buffer(v6, qword_27D097070);
    v7 = a2;
    oslog = sub_22372AC88();
    v8 = sub_22372B278();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F990, &unk_22372FDA0);
      v11 = sub_22372B398();
      v13 = sub_223623274(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_223620000, oslog, v8, "Error while submitting external activation request: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x223DE8A80](v10, -1, -1);
      MEMORY[0x223DE8A80](v9, -1, -1);

      return;
    }
  }
}

id sub_223699018(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_22372A548();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_223727408();
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v19 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v3 + qword_27D0970D8);
  if (!v20)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v48 = sub_22372AC98();
    __swift_project_value_buffer(v48, qword_27D097070);
    v49 = sub_22372AC88();
    v50 = sub_22372B278();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_223620000, v49, v50, "Could not find MUXSessionContext. Cannot make RunNLXRequest command", v51, 2u);
      MEMORY[0x223DE8A80](v51, -1, -1);
    }

    return 0;
  }

  v81 = v17;
  v82 = v16;
  v21 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = *(v22 + 16);

  if (!v23)
  {
    goto LABEL_18;
  }

  v24 = sub_2236261A0(a1, a2);
  if ((v25 & 1) == 0)
  {

LABEL_18:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v52 = sub_22372AC98();
    __swift_project_value_buffer(v52, qword_27D097070);

    v53 = sub_22372AC88();
    v54 = sub_22372B278();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v84 = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_223623274(a1, a2, &v84);
      _os_log_impl(&dword_223620000, v53, v54, "Could not find MUXRequestContext for requestId: %s. Cannot make RunNLXRequest command", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x223DE8A80](v56, -1, -1);
      MEMORY[0x223DE8A80](v55, -1, -1);
    }

    goto LABEL_22;
  }

  v80 = a3;
  v26 = *(*(v22 + 56) + 8 * v24);

  v27 = v26[5];
  if (!v27)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v57 = sub_22372AC98();
    __swift_project_value_buffer(v57, qword_27D097070);
    v53 = sub_22372AC88();
    v58 = sub_22372B278();
    if (os_log_type_enabled(v53, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_223620000, v53, v58, "Could not find selected topLevelCandidateId. Cannot make RunNLXRequest command", v59, 2u);
      MEMORY[0x223DE8A80](v59, -1, -1);
    }

    goto LABEL_22;
  }

  v79 = v26[4];
  swift_beginAccess();
  v78[1] = v26;
  v28 = v26[7];
  v29 = *(v28 + 16);

  if (!v29)
  {
    goto LABEL_30;
  }

  v30 = sub_2236261A0(v79, v27);
  if ((v31 & 1) == 0)
  {

    goto LABEL_30;
  }

  v32 = *(*(v28 + 56) + 8 * v30);

  v78[0] = v78;
  MEMORY[0x28223BE20](v33, v34);
  v78[-2] = v80;
  v35 = sub_223685A30(sub_2236853B0, &v78[-4], v32);

  if (!v35)
  {
LABEL_30:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v60 = sub_22372AC98();
    __swift_project_value_buffer(v60, qword_27D097070);
    (*(v8 + 16))(v12, v80, v7);

    v61 = sub_22372AC88();
    v62 = sub_22372B278();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v83 = v64;
      *v63 = 136315394;
      v65 = sub_223623274(v79, v27, &v83);

      *(v63 + 4) = v65;
      *(v63 + 12) = 2080;
      sub_22369BFA4(&qword_28132B4E8, MEMORY[0x277D5D298]);
      v66 = sub_22372B6B8();
      v68 = v67;
      (*(v8 + 8))(v12, v7);
      v69 = sub_223623274(v66, v68, &v83);

      *(v63 + 14) = v69;
      _os_log_impl(&dword_223620000, v61, v62, "Could not find MUXCandidateContext for selectedTopLevelCandidateId: %s and userId: %s. Cannot make RunNLXRequest command", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v64, -1, -1);
      MEMORY[0x223DE8A80](v63, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    return 0;
  }

  type metadata accessor for MUXSpeechResultCandidateContext(0);
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v70 = sub_22372AC98();
    __swift_project_value_buffer(v70, qword_27D097070);

    v71 = sub_22372AC88();
    v72 = sub_22372B278();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v83 = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_223623274(a1, a2, &v83);
      _os_log_impl(&dword_223620000, v71, v72, "RunNLXRequest operates on Speech Based RCs. Request Id: %s will fail.", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      MEMORY[0x223DE8A80](v74, -1, -1);
      MEMORY[0x223DE8A80](v73, -1, -1);
    }

    return 0;
  }

  v37 = *(v36 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_speechPackage);

  v38 = [v37 recognition];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 aceRecognition];
    if (v40)
    {
      v41 = v40;
      v42 = [objc_allocWithZone(MEMORY[0x277D47698]) init];
      sub_2237273F8();
      sub_2237273B8();
      (*(v81 + 8))(v19, v82);
      v43 = sub_22372AFD8();

      [v42 setAceId_];

      sub_22372A518();
      v44 = sub_22372AFD8();

      [v42 setUserId_];

      [v42 setAsrOutput_];
      [v39 processedAudioDuration];
      v46 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      [v42 setProcessedAudioDuration_];

      return v42;
    }
  }

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v75 = sub_22372AC98();
  __swift_project_value_buffer(v75, qword_27D097070);
  v53 = sub_22372AC88();
  v76 = sub_22372B278();
  if (os_log_type_enabled(v53, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_223620000, v53, v76, "Could not find any ASR output on the selected RC context. Cannot make RunNLXRequest command", v77, 2u);
    MEMORY[0x223DE8A80](v77, -1, -1);
  }

LABEL_22:

  return 0;
}

uint64_t sub_223699B2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v155 = a8;
  v157 = a7;
  v172 = a5;
  v158 = a4;
  v156 = a3;
  v171 = a2;
  v165 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v159 = v152 - v13;
  v14 = sub_223727408();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v168 = v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v160 = v152 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v163 = v152 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F238, qword_22372FCF8);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = v152 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v31 - 8, v33);
  v162 = v152 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v164 = v152 - v38;
  MEMORY[0x28223BE20](v37, v39);
  v41 = v152 - v40;
  v42 = qword_27D0970C0;
  swift_beginAccess();
  v43 = *(v15 + 16);
  v167 = v15 + 16;
  v166 = v43;
  v43(v41, v172, v14);
  (*(v15 + 56))(v41, 0, 1, v14);
  v44 = *(v26 + 56);
  v169 = v9;
  v161 = v42;
  sub_223634890(v9 + v42, v30, &unk_27D08E530, &unk_22372CB10);
  sub_223634890(v41, &v30[v44], &unk_27D08E530, &unk_22372CB10);
  v170 = v15;
  v45 = *(v15 + 48);
  if (v45(v30, 1, v14) == 1)
  {
    sub_223626478(v41, &unk_27D08E530, &unk_22372CB10);
    v46 = v45(&v30[v44], 1, v14);
    v47 = v171;
    if (v46 == 1)
    {
      sub_223626478(v30, &unk_27D08E530, &unk_22372CB10);
      v48 = v169;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v49 = v164;
  sub_223634890(v30, v164, &unk_27D08E530, &unk_22372CB10);
  if (v45(&v30[v44], 1, v14) == 1)
  {
    sub_223626478(v41, &unk_27D08E530, &unk_22372CB10);
    (*(v170 + 8))(v49, v14);
LABEL_6:
    sub_223626478(v30, &unk_27D08F238, qword_22372FCF8);
    v48 = v169;
    v9 = v168;
LABEL_7:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v50 = sub_22372AC98();
    __swift_project_value_buffer(v50, qword_27D097070);
    v166(v9, v172, v14);

    v51 = sub_22372AC88();
    v52 = sub_22372B278();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = v48;
      v54 = v14;
      v55 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v177 = v172;
      *v55 = 136315650;
      v56 = v53 + v161;
      v57 = v162;
      sub_223634890(v56, v162, &unk_27D08E530, &unk_22372CB10);
      if (v45(v57, 1, v14))
      {
        sub_223626478(v57, &unk_27D08E530, &unk_22372CB10);
        v58 = 0xE300000000000000;
        v59 = 7104878;
        v60 = v170;
      }

      else
      {
        v109 = v163;
        v166(v163, v57, v14);
        sub_223626478(v57, &unk_27D08E530, &unk_22372CB10);
        v110 = sub_2237273B8();
        v58 = v111;
        v60 = v170;
        (*(v170 + 8))(v109, v54);
        v59 = v110;
      }

      v112 = sub_223623274(v59, v58, &v177);

      *(v55 + 4) = v112;
      v9 = 2080;
      *(v55 + 12) = 2080;
      sub_22369BFA4(&qword_28132B600, MEMORY[0x277CC95F0]);
      v113 = v168;
      v114 = sub_22372B6B8();
      v116 = v115;
      (*(v60 + 8))(v113, v54);
      v117 = sub_223623274(v114, v116, &v177);

      *(v55 + 14) = v117;
      *(v55 + 22) = 2080;
      *(v55 + 24) = sub_223623274(v165, v171, &v177);
      _os_log_impl(&dword_223620000, v51, v52, "Request does not belong to current session id: %s, request session id: %s for request id: %s", v55, 0x20u);
      v118 = v172;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v118, -1, -1);
      MEMORY[0x223DE8A80](v55, -1, -1);
    }

    else
    {

      (*(v170 + 8))(v9, v14);
    }

    v105 = sub_22372AA68();
    sub_22369BFA4(&qword_27D08F248, MEMORY[0x277D600E8]);
    swift_allocError();
    v107 = v119;
    v108 = MEMORY[0x277D600D8];
    goto LABEL_28;
  }

  v61 = v170;
  v62 = v163;
  (*(v170 + 32))(v163, &v30[v44], v14);
  sub_22369BFA4(&qword_28132B608, MEMORY[0x277CC95F0]);
  LODWORD(v154) = sub_22372AFC8();
  v63 = *(v61 + 8);
  v63(v62, v14);
  sub_223626478(v41, &unk_27D08E530, &unk_22372CB10);
  v63(v49, v14);
  sub_223626478(v30, &unk_27D08E530, &unk_22372CB10);
  v47 = v171;
  v48 = v169;
  v9 = v168;
  if ((v154 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_14:
  v64 = *(v48 + qword_27D0970D0);
  if (!v64)
  {
LABEL_20:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v101 = sub_22372AC98();
    __swift_project_value_buffer(v101, qword_27D097070);

    v102 = sub_22372AC88();
    v103 = sub_22372B278();

    if (os_log_type_enabled(v102, v103))
    {
      v9 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v177 = v104;
      *v9 = 136315138;
      *(v9 + 4) = sub_223623274(v165, v47, &v177);
      _os_log_impl(&dword_223620000, v102, v103, "MultiUserContextMessage has not arrived before the start of request : %s, unpredictable behavior can be expected", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      MEMORY[0x223DE8A80](v104, -1, -1);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }

    v105 = sub_22372AA68();
    sub_22369BFA4(&qword_27D08F248, MEMORY[0x277D600E8]);
    swift_allocError();
    v107 = v106;
    v108 = MEMORY[0x277D600C8];
LABEL_28:
    (*(*(v105 - 8) + 104))(v107, *v108, v105);
    swift_willThrow();
    return v9;
  }

  v65 = *(v48 + qword_27D0970D8);
  if (v65)
  {
    v66 = qword_27D08F220;
    swift_beginAccess();
    sub_223634890(v48 + v66, &v175, &qword_27D08F650, qword_2237317C0);
    if (v176)
    {
      sub_2236241E8(&v175, &v177);
      v153 = v14;
      v166(v160, v172, v14);
      v67 = *(v48 + qword_27D0970C8 + 8);
      v164 = *(v48 + qword_27D0970C8);
      v154 = (v48 + qword_27D0970C8);
      v162 = v67;

      v68 = v64;

      v152[3] = sub_22372A988();
      v152[2] = v69;
      sub_22372A958();
      v152[1] = sub_22372A948();
      sub_223623934(&v177, v174);
      v168 = *(v48 + qword_27D08F228);
      LODWORD(v172) = *(v48 + qword_27D0970E0);
      v70 = type metadata accessor for MUXRequestProcessor();
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      v9 = swift_allocObject();
      v73 = qword_27D097100;
      v74 = *MEMORY[0x277D5CF40];
      v75 = sub_223729F08();
      (*(*(v75 - 8) + 104))(v9 + v73, v74, v75);
      v76 = qword_27D097118;
      v77 = sub_223729EE8();
      (*(*(v77 - 8) + 56))(v9 + v76, 1, 1, v77);
      v78 = qword_27D097138;
      v79 = sub_22372A548();
      (*(*(v79 - 8) + 56))(v9 + v78, 1, 1, v79);
      *(v9 + qword_27D097140) = v68;
      v80 = qword_27D097128;
      *(v9 + qword_27D097128) = v65;
      type metadata accessor for MUXRequestContext();
      swift_allocObject();
      v81 = v165;
      v47 = sub_22362A78C(v165, v47);
      v152[0] = qword_27D097110;
      *(v9 + qword_27D097110) = v47;
      v82 = v65;
      v83 = *(v9 + v80);
      v84 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
      swift_beginAccess();
      v85 = v68;
      v161 = v82;
      swift_retain_n();
      v86 = v85;

      v87 = *(v83 + v84);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v178 = *(v83 + v84);
      *(v83 + v84) = 0x8000000000000000;
      sub_22368D88C(v47, v81, v171, isUniquelyReferenced_nonNull_native);
      *(v83 + v84) = v178;
      swift_endAccess();

      sub_223623934(v174, v9 + qword_27D097120);
      v89 = (v9 + qword_27D097130);
      v90 = v162;
      *v89 = v164;
      v89[1] = v90;
      sub_223727F08();
      v91 = v159;
      sub_22372A9D8();

      swift_beginAccess();
      sub_22369BBB4(v91, v9 + v78);
      swift_endAccess();
      v92 = type metadata accessor for MUXUserSelector();
      v93 = swift_allocObject();
      type metadata accessor for MUXNLParseUtils();
      v94 = swift_allocObject();
      v95 = (v9 + qword_27D097108);
      v95[3] = v92;
      v95[4] = &off_2836C5AC8;
      *v95 = v93;
      *(v9 + qword_27D097148) = v168;
      *(v93 + 16) = v94;
      *(v9 + qword_27D097150) = v172;

      v172 = v86;
      v96 = sub_223727F08();
      v97 = v96;
      v98 = *(v96 + 16);
      if (v98)
      {
        v99 = sub_22369BA88(*(v96 + 16), 0);
        v100 = sub_22369BC24(v173, v99 + 4, v98, v97);
        sub_223685A24();
        if (v100 != v98)
        {
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
      }

      v134 = v153;
      v135 = sub_223727EF8();
      v136 = sub_22372AA58();

      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v137 = sub_22372AC98();
      __swift_project_value_buffer(v137, qword_27D097070);
      v138 = v136;
      v139 = sub_22372AC88();
      v140 = sub_22372B268();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        *v141 = 138412802;
        *(v141 + 4) = v138;
        *v142 = v136;
        *(v141 + 12) = 1024;
        *(v141 + 14) = v135 & 1;
        *(v141 + 18) = 1024;
        v143 = v138;
        *(v141 + 20) = AFIsATV();
        _os_log_impl(&dword_223620000, v139, v140, "MUXRequestProcessor init: Generated default voice id score card : %@ when RMV=%{BOOL}d, isATV=%{BOOL}d.", v141, 0x18u);
        sub_223626478(v142, &unk_27D08F250, &unk_22372D1D0);
        v134 = v153;
        MEMORY[0x223DE8A80](v142, -1, -1);
        v144 = v141;
        v91 = v159;
        MEMORY[0x223DE8A80](v144, -1, -1);
      }

      v145 = *(v9 + v152[0]);

      sub_2236B3B58(v136);

      v146 = v160;
      v166(v163, v160, v134);
      sub_223623934(&v175, v173);
      v147 = v171;

      v148 = v165;
      v9 = sub_22372A718();
      v149 = v172;

      sub_223626478(v91, &unk_27D08E990, &qword_22372FCF0);
      __swift_destroy_boxed_opaque_existential_1Tm(v174);
      __swift_destroy_boxed_opaque_existential_1Tm(&v175);
      (*(v170 + 8))(v146, v153);
      v150 = v154;
      v151 = v154[1];
      *v154 = v148;
      v150[1] = v147;

      sub_22369B2C8(v148, v147);

      __swift_destroy_boxed_opaque_existential_1Tm(&v177);
    }

    else
    {
      v128 = v64;

      sub_223626478(&v175, &qword_27D08F650, qword_2237317C0);
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v129 = sub_22372AC98();
      __swift_project_value_buffer(v129, qword_27D097070);
      v130 = sub_22372AC88();
      v9 = sub_22372B278();
      if (os_log_type_enabled(v130, v9))
      {
        v131 = swift_slowAlloc();
        *v131 = 0;
        _os_log_impl(&dword_223620000, v130, v9, "Unable to find SessionState to pass to MUXProcessor.", v131, 2u);
        MEMORY[0x223DE8A80](v131, -1, -1);
      }

      v132 = sub_22372AA68();
      sub_22369BFA4(&qword_27D08F248, MEMORY[0x277D600E8]);
      swift_allocError();
      (*(*(v132 - 8) + 104))(v133, *MEMORY[0x277D600D0], v132);
      swift_willThrow();
    }
  }

  else
  {
    v121 = qword_27D08E2C8;
    v122 = v64;
    if (v121 != -1)
    {
      swift_once();
    }

    v123 = sub_22372AC98();
    __swift_project_value_buffer(v123, qword_27D097070);
    v124 = sub_22372AC88();
    v9 = sub_22372B278();
    if (os_log_type_enabled(v124, v9))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_223620000, v124, v9, "SessionContext not available while creating RequestProcessor. Did we not receive SessionStartedMessage yet?", v125, 2u);
      MEMORY[0x223DE8A80](v125, -1, -1);
    }

    v126 = sub_22372AA68();
    sub_22369BFA4(&qword_27D08F248, MEMORY[0x277D600E8]);
    swift_allocError();
    (*(*(v126 - 8) + 104))(v127, *MEMORY[0x277D600E0], v126);
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_22369B138(void *a1)
{
  v2 = v1;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_27D097070);
  v5 = a1;
  v6 = sub_22372AC88();
  v7 = sub_22372B268();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_223620000, v6, v7, "MUXBridge received message: %@", v8, 0xCu);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v11 = *(v2 + qword_27D0970D0);
  *(v2 + qword_27D0970D0) = v5;
  v5;

  result = AFIsInternalInstall();
  if (result)
  {

    return sub_22372AA38();
  }

  return result;
}

void sub_22369B2C8(uint64_t a1, unint64_t a2)
{
  v5 = qword_27D08F220;
  swift_beginAccess();
  sub_223634890(v2 + v5, &v16, &qword_27D08F650, qword_2237317C0);
  if (v17)
  {
    sub_2236241E8(&v16, v18);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_22372A498();
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v6 = sub_22372AC98();
    __swift_project_value_buffer(v6, qword_27D097070);

    v7 = sub_22372AC88();
    v8 = sub_22372B268();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v16 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_223623274(a1, a2, &v16);
      _os_log_impl(&dword_223620000, v7, v8, "Took a snapshot of SessionState for requestId: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x223DE8A80](v10, -1, -1);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  else
  {
    sub_223626478(&v16, &qword_27D08F650, qword_2237317C0);
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v11 = sub_22372AC98();
    __swift_project_value_buffer(v11, qword_27D097070);

    v12 = sub_22372AC88();
    v13 = sub_22372B278();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_223623274(a1, a2, v18);
      _os_log_impl(&dword_223620000, v12, v13, "No SessionState instance found. Cannot take snapshot for requestId: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x223DE8A80](v15, -1, -1);
      MEMORY[0x223DE8A80](v14, -1, -1);
    }
  }
}

uint64_t sub_22369B5B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v8 = sub_22372AC98();
  __swift_project_value_buffer(v8, qword_27D097070);
  v9 = a1;
  v10 = sub_22372AC88();
  v11 = sub_22372B268();

  if (os_log_type_enabled(v10, v11))
  {
    v23 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    v14 = [v9 refId];
    if (v14)
    {
      v15 = v14;
      v16 = sub_22372AFE8();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = sub_223623274(v16, v18, &v24);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_223620000, v10, v11, "Received SARDRunNLXRequest for requestId:%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);

    a3 = v23;
  }

  else
  {
  }

  v20 = sub_22369BF4C();
  v21 = type metadata accessor for MUXRequestProcessor();

  return MEMORY[0x2821C53B0](v9, a2, a3, a4, sub_22369B7D0, 0, v20, v21);
}

uint64_t sub_22369B840()
{
  sub_223626478(v0 + qword_27D08F220, &qword_27D08F650, qword_2237317C0);
  sub_223626478(v0 + qword_27D0970C0, &unk_27D08E530, &unk_22372CB10);
  v1 = *(v0 + qword_27D0970C8 + 8);

  v2 = *(v0 + qword_27D08F228);

  v3 = *(v0 + qword_27D0970D8);
}

uint64_t MUXBridge.deinit()
{
  v0 = sub_22372A6F8();
  sub_223626478(v0 + qword_27D08F220, &qword_27D08F650, qword_2237317C0);
  sub_223626478(v0 + qword_27D0970C0, &unk_27D08E530, &unk_22372CB10);
  v1 = *(v0 + qword_27D0970C8 + 8);

  v2 = *(v0 + qword_27D08F228);

  v3 = *(v0 + qword_27D0970D8);

  return v0;
}

uint64_t MUXBridge.__deallocating_deinit()
{
  v0 = sub_22372A6F8();
  v1 = qword_27D08F220;

  sub_223626478(v2 + v1, &qword_27D08F650, qword_2237317C0);
  sub_223626478(v0 + qword_27D0970C0, &unk_27D08E530, &unk_22372CB10);
  v3 = *(v0 + qword_27D0970C8 + 8);

  v4 = *(v0 + qword_27D08F228);

  v5 = *(v0 + qword_27D0970D8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_22369BA88(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB48, qword_2237329D0);
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

void *sub_22369BB10(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_22369BB84@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22369BBB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *sub_22369BC24(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MUXBridge()
{
  result = qword_27D08F260;
  if (!qword_27D08F260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22369BDC4()
{
  sub_22369BEEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_22369BEEC()
{
  if (!qword_28132B5F0)
  {
    sub_223727408();
    v0 = sub_22372B3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_28132B5F0);
    }
  }
}

unint64_t sub_22369BF4C()
{
  result = qword_27D08F270;
  if (!qword_27D08F270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D08F270);
  }

  return result;
}

uint64_t sub_22369BFA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for RemoteEventSubscription()
{
  result = qword_27D08F290;
  if (!qword_27D08F290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22369C14C()
{
  sub_22369C208(319, &qword_27D08F2A0, MEMORY[0x277D858D8]);
  if (v0 <= 0x3F)
  {
    sub_22369C208(319, &qword_27D08F2A8, MEMORY[0x277D858B0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22369C208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_223727E38();
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08EAD0, &qword_22372CA80);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_22369C290()
{
  result = qword_27D08F2B0;
  if (!qword_27D08F2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08F2B8, &qword_22372FE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F2B0);
  }

  return result;
}

uint64_t sub_22369C2F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F288, qword_22372FDB0);
  sub_22372B238();

  return sub_22369C3C4(v0);
}

unint64_t sub_22369C344(uint64_t a1)
{
  result = sub_22369C36C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22369C36C()
{
  result = qword_27D08F2C0;
  if (!qword_27D08F2C0)
  {
    type metadata accessor for RemoteEventSubscription();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F2C0);
  }

  return result;
}

uint64_t sub_22369C3C4(uint64_t a1)
{
  v2 = type metadata accessor for RemoteEventSubscription();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22369C420()
{
  type metadata accessor for MUXBridgeInstrumentationUtil();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() sharedStream];
  v1 = sub_22372A8A8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = sub_22372A898();
  *(v0 + 24) = result;
  qword_27D0970F8 = v0;
  return result;
}

void sub_22369C49C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D596E0]) init];
  if (v1)
  {
    v19 = v1;
    [v1 setExists:1];
    v2 = [objc_allocWithZone(MEMORY[0x277D596C0]) init];
    if (v2)
    {
      v3 = v2;
      [v2 setStartedOrChanged:v19];
      v4 = v0;
      v5 = *(v0 + 24);
      v6 = sub_22372A878();
      if (v6)
      {
        v7 = v6;
        [v6 setMuxBridgeContext:v3];
        [*(v4 + 16) emitMessage_];

        v8 = v7;
        goto LABEL_20;
      }

      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v15 = sub_22372AC98();
      __swift_project_value_buffer(v15, qword_27D097070);
      v16 = sub_22372AC88();
      v17 = sub_22372B278();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_223620000, v16, v17, "Instrumentation: Failed to create wrapper event message for start request.", v18, 2u);
        MEMORY[0x223DE8A80](v18, -1, -1);
      }
    }

    else
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v12 = sub_22372AC98();
      __swift_project_value_buffer(v12, qword_27D097070);
      v3 = sub_22372AC88();
      v13 = sub_22372B278();
      if (os_log_type_enabled(v3, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_223620000, v3, v13, "Instrumentation: Failed to create MUX bridge context message for start request.", v14, 2u);
        MEMORY[0x223DE8A80](v14, -1, -1);
      }
    }
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v9 = sub_22372AC98();
    __swift_project_value_buffer(v9, qword_27D097070);
    v19 = sub_22372AC88();
    v10 = sub_22372B278();
    if (os_log_type_enabled(v19, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_223620000, v19, v10, "Instrumentation: Failed to create MUXRequestStarted message.", v11, 2u);
      MEMORY[0x223DE8A80](v11, -1, -1);
    }
  }

  v8 = v19;
LABEL_20:
}

void sub_22369C7C8(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v96 = sub_223727398();
  v91 = *(v96 - 8);
  v9 = *(v91 + 64);
  v11 = MEMORY[0x28223BE20](v96, v10);
  v89 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v90 = &v86 - v14;
  v15 = sub_223727408();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v88 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v92 = &v86 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v86 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v86 - v29;
  v93 = a1;
  v31 = [a1 userEphemeralId];
  if (!v31)
  {
    __break(1u);
    goto LABEL_35;
  }

  v32 = v31;
  sub_2237273E8();

  v33 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v34 = sub_2237273C8();
  v35 = [v33 initWithNSUUID_];

  v36 = *(v16 + 8);
  v95 = v15;
  v36(v30, v15);
  [a2 setSelectedUserEphemeralId_];

  v94 = a4;
  if (sub_22369D030(a4, a5, a2))
  {
    v37 = [objc_allocWithZone(MEMORY[0x277D596C8]) init];
    if (!v37)
    {
      if (qword_27D08E2C8 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }

    v38 = v37;
    v39 = [objc_allocWithZone(MEMORY[0x277D596D0]) init];
    if (v39)
    {
      v86 = v39;
      v87 = a5;
      v40 = v93;
      v41 = [v93 userEphemeralId];
      if (v41)
      {
        v42 = v41;
        sub_2237273E8();

        a5 = 0x277D5A000uLL;
        v43 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v44 = sub_2237273C8();
        v45 = [v43 initWithNSUUID_];

        v46 = v95;
        v36(v27, v95);
        [v38 setUserEphemeralId_];

        v47 = [v40 userAggregationId];
        if (v47)
        {
          v48 = v47;
          v49 = v40;
          v50 = v92;
          sub_2237273E8();

          v51 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v52 = sub_2237273C8();
          v53 = [v51 initWithNSUUID_];

          v36(v50, v46);
          [v38 setUserAggregationId_];

          v54 = [v49 userAggregationIdEffectiveFrom];
          if (v54)
          {
            v55 = v54;
            v56 = v90;
            sub_223727378();

            sub_223727368();
            v58 = v57;
            v59 = v91 + 8;
            v60 = *(v91 + 8);
            v60(v56, v96);
            v61 = v58 * 1000.0;
            v62 = v87;
            if (COERCE__INT64(fabs(v58 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v61 > -1.0)
            {
              if (v61 < 1.84467441e19)
              {
                a5 = v59;
                [v38 setUserAggregationIdRotationTimestampMs_];
                v63 = [v49 userAggregationIdExpiration];
                if (v63)
                {
                  v64 = v63;
                  v65 = v89;
                  sub_223727378();

                  sub_223727368();
                  v67 = v66;
                  v60(v65, v96);
                  v68 = v67 * 1000.0;
                  if (COERCE__INT64(fabs(v67 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                  {
                    v69 = v94;
                    if (v68 > -1.0)
                    {
                      if (v68 < 1.84467441e19)
                      {
                        [v38 setUserAggregationIdExpirationTimestampMs_];
                        v70 = [v49 deviceAggregationId];
                        if (v70)
                        {
                          v71 = v70;
                          v72 = v88;
                          sub_2237273E8();

                          v73 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                          v74 = sub_2237273C8();
                          v75 = [v73 initWithNSUUID_];

                          v36(v72, v95);
                          [v38 setDeviceAggregationId_];

                          v76 = v86;
                          [v86 setSelectedUser:v38];
                          sub_22369D044(v69, v62, v76);

LABEL_20:
                          return;
                        }

                        goto LABEL_39;
                      }

                      goto LABEL_32;
                    }

LABEL_31:
                    __break(1u);
LABEL_32:
                    __break(1u);
LABEL_33:
                    swift_once();
LABEL_18:
                    v77 = sub_22372AC98();
                    __swift_project_value_buffer(v77, qword_27D097070);

                    v76 = sub_22372AC88();
                    v78 = sub_22372B278();

                    if (os_log_type_enabled(v76, v78))
                    {
                      v79 = swift_slowAlloc();
                      v80 = swift_slowAlloc();
                      v97 = v80;
                      *v79 = 136315138;
                      *(v79 + 4) = sub_223623274(v94, a5, &v97);
                      _os_log_impl(&dword_223620000, v76, v78, "Instrumentation: Failed to create MUXEphemeralToAggregationIdentifierMap message for : %s", v79, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1Tm(v80);
                      MEMORY[0x223DE8A80](v80, -1, -1);
                      MEMORY[0x223DE8A80](v79, -1, -1);
                    }

                    goto LABEL_20;
                  }

LABEL_30:
                  __break(1u);
                  goto LABEL_31;
                }

LABEL_38:
                __break(1u);
LABEL_39:
                __break(1u);
                return;
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            __break(1u);
            goto LABEL_29;
          }

LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v81 = sub_22372AC98();
    __swift_project_value_buffer(v81, qword_27D097070);

    v82 = sub_22372AC88();
    v83 = sub_22372B278();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v97 = v85;
      *v84 = 136315138;
      *(v84 + 4) = sub_223623274(v94, a5, &v97);
      _os_log_impl(&dword_223620000, v82, v83, "Instrumentation: Failed to create MUXEphemeralToAggregationIdentifierMapContext message for : %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      MEMORY[0x223DE8A80](v85, -1, -1);
      MEMORY[0x223DE8A80](v84, -1, -1);
    }
  }
}

BOOL sub_22369D058(uint64_t a1, unint64_t a2, uint64_t a3, SEL *a4, const char *a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x277D596C0]) init];
  if (v10)
  {
    v11 = v10;
    [v10 *a4];
    v12 = sub_2236924EC(a1, a2, v11);

    return v12;
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v14 = sub_22372AC98();
    __swift_project_value_buffer(v14, qword_27D097070);

    v15 = sub_22372AC88();
    v16 = sub_22372B278();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_223623274(a1, a2, &v19);
      _os_log_impl(&dword_223620000, v15, v16, a5, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x223DE8A80](v18, -1, -1);
      MEMORY[0x223DE8A80](v17, -1, -1);
    }

    return 0;
  }
}

void sub_22369D240(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, Class *a5, uint64_t a6, SEL *a7, const char *a8)
{
  v11 = v8;
  v14 = [objc_allocWithZone(*a5) init];
  if (!v14)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_27D097070);

    v28 = sub_22372AC88();
    v19 = sub_22372B278();

    if (os_log_type_enabled(v28, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_223623274(a1, a2, &v29);
      _os_log_impl(&dword_223620000, v28, v19, a8, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x223DE8A80](v21, -1, -1);
      MEMORY[0x223DE8A80](v20, -1, -1);
LABEL_12:

      return;
    }

LABEL_14:
    v17 = v28;
    goto LABEL_15;
  }

  v28 = v14;
  [v14 setExists:1];
  v15 = *(v8 + 24);
  v16 = sub_22372A878();
  if (!v16)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v22 = sub_22372AC98();
    __swift_project_value_buffer(v22, qword_27D097070);

    v23 = sub_22372AC88();
    v24 = sub_22372B278();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_223623274(a1, a2, &v29);
      _os_log_impl(&dword_223620000, v23, v24, "Instrumentation: Failed to create wrapper event message for end request for : %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x223DE8A80](v26, -1, -1);
      MEMORY[0x223DE8A80](v25, -1, -1);

      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v27 = v16;
  [v16 *a7];
  [*(v11 + 16) emitMessage_];

  v17 = v27;
LABEL_15:
}

uint64_t sub_22369D578()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_22369D5DC(void *a1, uint64_t a2, uint64_t a3)
{
  v100 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v90 - v8;
  v10 = sub_22372A548();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = MEMORY[0x277D84F90];
  v16 = 0x27D08E000uLL;
  if (!a1)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v56 = sub_22372AC98();
    __swift_project_value_buffer(v56, qword_27D097070);
    v55 = sub_22372AC88();
    v57 = sub_22372B278();
    if (os_log_type_enabled(v55, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_223620000, v55, v57, "Unable to log voice id score card as it was not supplied.", v58, 2u);
      MEMORY[0x223DE8A80](v58, -1, -1);
    }

    v22 = MEMORY[0x277D84F90];
LABEL_30:

    sub_22369352C(a2, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_22369359C(v9);
      if (*(v16 + 712) == -1)
      {
LABEL_32:
        v59 = sub_22372AC98();
        __swift_project_value_buffer(v59, qword_27D097070);
        v60 = sub_22372AC88();
        v61 = sub_22372B278();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_223620000, v60, v61, "Unable to log unknown user score as unknown user id was not supplied.", v62, 2u);
          MEMORY[0x223DE8A80](v62, -1, -1);
        }

        return v22;
      }

LABEL_58:
      swift_once();
      goto LABEL_32;
    }

    (*(v11 + 32))(v15, v9, v10);
    v63 = [objc_allocWithZone(MEMORY[0x277D59708]) init];
    if (!v63)
    {
      if (*(v16 + 712) != -1)
      {
        swift_once();
      }

      v75 = sub_22372AC98();
      __swift_project_value_buffer(v75, qword_27D097070);
      v76 = sub_22372AC88();
      v77 = sub_22372B278();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_223620000, v76, v77, "Unable to create ORCHSchemaORCHMultiUserScore object for unknown user, hence instrumentation will have gaps.", v78, 2u);
        MEMORY[0x223DE8A80](v78, -1, -1);
      }

      (*(v11 + 8))(v15, v10);
      return v22;
    }

    v64 = v63;
    v65 = sub_22372A518();
    v67 = v100;
    if (*(v100 + 16))
    {
      v68 = sub_2236261A0(v65, v66);
      v70 = v69;

      if ((v70 & 1) == 0)
      {
        v74 = 0;
        goto LABEL_47;
      }

      v71 = (*(v67 + 56) + 16 * v68);
      v73 = *v71;
      v72 = v71[1];

      v74 = sub_22372AFD8();
    }

    else
    {
      v74 = 0;
    }

LABEL_47:
    [v64 setLoggableSharedUserId_];

    [v64 setScore_];
    v79 = v64;
    MEMORY[0x223DE7B50]();
    if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v89 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22372B148();
    }

    sub_22372B158();

    (*(v11 + 8))(v15, v10);
    return v103;
  }

  v90 = a2;
  v91 = v9;
  v92 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v11;
  v94 = v10;
  v95 = a1;
  result = [v95 spIdKnownUserScores];
  if (result)
  {
    v18 = result;
    sub_223685980();
    v19 = sub_22372AF58();

    v21 = 0;
    v22 = v19 + 64;
    v23 = 1 << *(v19 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v19 + 64);
    v26 = (v23 + 63) >> 6;
    v96 = MEMORY[0x277D84F90];
    *&v20 = 136315138;
    v98 = v20;
    v27 = v100;
    v99 = v26;
    v97 = v19;
LABEL_6:
    v28 = v21;
    while (v25)
    {
      v21 = v28;
LABEL_14:
      v29 = __clz(__rbit64(v25)) | (v21 << 6);
      v30 = (*(v19 + 48) + 16 * v29);
      v31 = *v30;
      v32 = v30[1];
      v33 = *(*(v19 + 56) + 8 * v29);
      v34 = objc_allocWithZone(MEMORY[0x277D59708]);

      v35 = v33;
      v36 = [v34 init];
      if (!v36)
      {
        v80 = v35;
        if (qword_27D08E2C8 != -1)
        {
          swift_once();
        }

        v81 = sub_22372AC98();
        __swift_project_value_buffer(v81, qword_27D097070);

        v82 = sub_22372AC88();
        v83 = sub_22372B278();

        v84 = os_log_type_enabled(v82, v83);
        v85 = v95;
        v22 = v96;
        if (v84)
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v102 = v87;
          *v86 = v98;
          v88 = sub_223623274(v31, v32, &v102);

          *(v86 + 4) = v88;
          _os_log_impl(&dword_223620000, v82, v83, "Unable to create ORCHSchemaORCHMultiUserScore object for user id : %s, hence instrumentation will have gaps. Abandoning all logging.", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v87);
          MEMORY[0x223DE8A80](v87, -1, -1);
          MEMORY[0x223DE8A80](v86, -1, -1);
        }

        else
        {
        }

        return v22;
      }

      v37 = v36;
      v25 &= v25 - 1;
      v101 = v35;
      [v36 setScore_];
      if (*(v27 + 16))
      {
        v38 = sub_2236261A0(v31, v32);
        if (v39)
        {
          v48 = v38;

          v49 = (*(v27 + 56) + 16 * v48);
          v50 = *v49;
          v51 = v49[1];

          v52 = sub_22372AFD8();

          [v37 setLoggableSharedUserId_];

          v53 = v37;
          MEMORY[0x223DE7B50]();
          if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v54 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22372B148();
          }

          sub_22372B158();

          v96 = v103;
          v26 = v99;
          goto LABEL_6;
        }
      }

      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v40 = sub_22372AC98();
      __swift_project_value_buffer(v40, qword_27D097070);

      v41 = sub_22372AC88();
      v42 = sub_22372B278();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v102 = v44;
        *v43 = v98;
        v45 = sub_223623274(v31, v32, &v102);

        *(v43 + 4) = v45;
        _os_log_impl(&dword_223620000, v41, v42, "Unable to find the loggable shared user id for user: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        v46 = v44;
        v19 = v97;
        MEMORY[0x223DE8A80](v46, -1, -1);
        v47 = v43;
        v27 = v100;
        MEMORY[0x223DE8A80](v47, -1, -1);
      }

      else
      {
      }

      v28 = v21;
      v26 = v99;
    }

    while (1)
    {
      v21 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v21 >= v26)
      {

        v11 = v93;
        v10 = v94;
        v9 = v91;
        v15 = v92;
        v55 = v95;
        v22 = v96;
        a2 = v90;
        v16 = 0x27D08E000;
        goto LABEL_30;
      }

      v25 = *(v22 + 8 * v21);
      ++v28;
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  __break(1u);
  return result;
}