unint64_t sub_270FF3D10()
{
  result = qword_280871088;
  if (!qword_280871088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871088);
  }

  return result;
}

unint64_t sub_270FF3D68()
{
  result = qword_280871090;
  if (!qword_280871090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871090);
  }

  return result;
}

unint64_t sub_270FF3DC0()
{
  result = qword_280871098;
  if (!qword_280871098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871098);
  }

  return result;
}

uint64_t sub_270FF3E14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_270FF8D28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_270FF8D28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E646C697562 && a2 == 0xEB00000000726562 || (sub_270FF8D28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (sub_270FF8D28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (sub_270FF8D28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_270FF8D28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_270FF8D28();

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

void ExampleService.init()(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v3 = sub_270FF8A58();
  v4 = [v2 initWithMachServiceName:v3 options:0];

  v5 = type metadata accessor for XPCService();
  swift_allocObject();
  v6 = sub_270FEC110(v4, 0);

  a1[3] = v5;
  a1[4] = &off_2880F74F0;
  a1[5] = &off_2880F74A8;
  *a1 = v6;
}

Swift::Void __swiftcall ExampleService.invalidate()()
{
  v1 = v0[3];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_2(v0, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t sub_270FF41D8()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_270FDE774;

  return v8(101, v2, v3);
}

uint64_t sub_270FF4324()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v4 = *(v3 + 32);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_270FEDDB0;
  v7 = MEMORY[0x277D83B88];

  return (v9)(v0 + 16, 102, v7, &protocol witness table for Int, v2, v3);
}

uint64_t sub_270FF4488()
{
  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v4 = *(v3 + 40);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_270FF45CC;
  v7 = MEMORY[0x277D83B88];

  return (v9)(v0 + 16, 103, v7, &protocol witness table for Int, v2, v3);
}

uint64_t sub_270FF45CC()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_270FEE1BC;
  }

  else
  {
    v3 = sub_270FF46E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t ExampleService.valueToVoid(value:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_270FF4720, 0, 0);
}

uint64_t sub_270FF4720()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = v1[3];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = 0;
  v5 = *(v4 + 48);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_270FF4874;
  v8 = MEMORY[0x277D83B88];

  return (v10)(104, v0 + 16, v8, &protocol witness table for Int, v3, v4);
}

uint64_t sub_270FF4874()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_270FF49A8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t ExampleService.valueToValue(value:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_270FF49E0, 0, 0);
}

void sub_270FF49E0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v1[3]);
  *(v0 + 16) = v2;
  *(v0 + 24) = 0;
  v4 = *(v3 + 56);
  v8 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_270FF4B4C;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_270FF4B4C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_270FE218C;
  }

  else
  {
    v3 = sub_270FF4C60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t ExampleService.valueToOptional(value:)(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_270FF4C9C, 0, 0);
}

void sub_270FF4C9C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v1[3]);
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  v4 = *(v3 + 64);
  v8 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_270FF4E08;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_270FF4E08()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_270FF4F1C;
  }

  else
  {
    v3 = sub_270FF5760;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t ExampleService.optionalToVoid(optional:)(uint64_t a1, char a2)
{
  *(v3 + 25) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  return MEMORY[0x2822009F8](sub_270FF4F58, 0, 0);
}

uint64_t sub_270FF4F58()
{
  v1 = *(v0 + 25);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = v2[3];
  v5 = v2[5];
  __swift_project_boxed_opaque_existential_2(v2, v4);
  *(v0 + 16) = v3;
  *(v0 + 24) = v1 & 1;
  v6 = *(v5 + 48);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_270FF50BC;
  v9 = MEMORY[0x277D83B88];

  return (v11)(107, v0 + 16, v9, &protocol witness table for Int, v4, v5);
}

uint64_t sub_270FF50BC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_270FF5768, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t ExampleService.optionalToValue(optional:)(uint64_t a1, char a2)
{
  *(v3 + 25) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  return MEMORY[0x2822009F8](sub_270FF5214, 0, 0);
}

void sub_270FF5214()
{
  v1 = *(v0 + 25);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = v2[5];
  __swift_project_boxed_opaque_existential_2(v2, v2[3]);
  *(v0 + 16) = v3;
  *(v0 + 24) = v1 & 1;
  v5 = *(v4 + 56);
  v8 = v5 + *v5;
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_270FF538C;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_270FF538C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_270FE246C;
  }

  else
  {
    v3 = sub_270FF576C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t ExampleService.optionalToOptional(optional:)(uint64_t a1, char a2)
{
  *(v3 + 25) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  return MEMORY[0x2822009F8](sub_270FF54C4, 0, 0);
}

void sub_270FF54C4()
{
  v1 = *(v0 + 25);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = v2[5];
  __swift_project_boxed_opaque_existential_2(v2, v2[3]);
  *(v0 + 32) = v3;
  *(v0 + 40) = v1 & 1;
  v5 = *(v4 + 64);
  v8 = v5 + *v5;
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_270FF563C;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_270FF563C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_270FF5764;
  }

  else
  {
    v3 = sub_270FF5760;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t TVContentRequestStatus.deviceIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TVContentRequestStatus.contentIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TVContentRequestStatus.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t TVContentRequestStatus.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_270FF8C08();
  MEMORY[0x2743BA130](0xD000000000000016, 0x8000000270FFB370);
  MEMORY[0x2743BA130](0xD000000000000013, 0x8000000270FFBB60);
  MEMORY[0x2743BA130](v1, v2);
  MEMORY[0x2743BA130](0xD000000000000015, 0x8000000270FFB9C0);
  MEMORY[0x2743BA130](v3, v4);
  MEMORY[0x2743BA130](0x737574617473202CLL, 0xEA0000000000203ALL);
  sub_270FF8C48();
  MEMORY[0x2743BA130](41, 0xE100000000000000);
  return 0;
}

BOOL static TVContentRequestStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_270FF8D28()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_270FF8D28()))
  {
    return qword_270FFB5C0[v4] == qword_270FFB5C0[v7];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_270FF5A6C()
{
  v1 = 0x737574617473;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_270FF5AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270FF62EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270FF5AFC(uint64_t a1)
{
  v2 = sub_270FF5E24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270FF5B38(uint64_t a1)
{
  v2 = sub_270FF5E24();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_270FF5B78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_270FF8D28()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_270FF8D28()))
  {
    return qword_270FFB5C0[v4] == qword_270FFB5C0[v7];
  }

  else
  {
    return 0;
  }
}

uint64_t TVContentRequestStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808710A0, &qword_270FFB3A8);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[1] = v1[3];
  v15[2] = v10;
  v16 = *(v1 + 32);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_270FF5E24();
  sub_270FF8DE8();
  v20 = 0;
  v12 = v15[3];
  sub_270FF8CF8();
  if (!v12)
  {
    v14 = v16;
    v19 = 1;
    sub_270FF8CF8();
    v18 = v14;
    v17 = 2;
    sub_270FF1170();
    sub_270FF8D08();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_270FF5E24()
{
  result = qword_2808710A8;
  if (!qword_2808710A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808710A8);
  }

  return result;
}

uint64_t TVContentRequestStatus.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808710B0, &qword_270FFB3B0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_270FF5E24();
  sub_270FF8DD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v11 = sub_270FF8CA8();
  v13 = v12;
  v21 = v11;
  v24 = 1;
  v19 = sub_270FF8CA8();
  v20 = v14;
  v22 = 2;
  sub_270FF1218();
  sub_270FF8CB8();
  (*(v6 + 8))(v9, v5);
  v15 = v23;
  v16 = v20;
  *a2 = v21;
  *(a2 + 8) = v13;
  *(a2 + 16) = v19;
  *(a2 + 24) = v16;
  *(a2 + 32) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t sub_270FF6138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_270FF6180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_270FF61E8()
{
  result = qword_2808710B8;
  if (!qword_2808710B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808710B8);
  }

  return result;
}

unint64_t sub_270FF6240()
{
  result = qword_2808710C0;
  if (!qword_2808710C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808710C0);
  }

  return result;
}

unint64_t sub_270FF6298()
{
  result = qword_2808710C8;
  if (!qword_2808710C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808710C8);
  }

  return result;
}

uint64_t sub_270FF62EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000270FFB9E0 == a2 || (sub_270FF8D28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000270FFBA00 == a2 || (sub_270FF8D28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_270FF8D28();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t TransportSerializable<>.transportData()()
{
  v0 = sub_270FF89D8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_270FF89C8();
  v3 = sub_270FF89B8();

  return v3;
}

uint64_t sub_270FF64CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270FF6C84(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_270FF64F8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    *a3 = 2;
  }

  else
  {
    v5 = result;
    v7 = sub_270FF89A8();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_270FE5D28(v5, a2);
    sub_270FF8998();
    sub_270FF11C4();
    sub_270FF8988();

    sub_270FEB424(v5, a2);
    result = sub_270FEB424(v5, a2);
    if (!v3)
    {
      *a3 = v10;
    }
  }

  return result;
}

uint64_t sub_270FF65D8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    *a3 = 9;
  }

  else
  {
    v5 = result;
    v7 = sub_270FF89A8();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_270FE5D28(v5, a2);
    sub_270FF8998();
    sub_270FF1218();
    sub_270FF8988();

    sub_270FEB424(v5, a2);
    result = sub_270FEB424(v5, a2);
    if (!v3)
    {
      *a3 = v10;
    }
  }

  return result;
}

__n128 sub_270FF66B8@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    *(a3 + 96) = 0;
    result.n128_u64[0] = 0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v8 = sub_270FF89A8();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_270FE5D28(a1, a2);
    sub_270FF8998();
    sub_270FEEC60();
    sub_270FF8988();

    sub_270FEB424(a1, a2);
    sub_270FEB424(a1, a2);
    if (!v3)
    {
      *(a3 + 64) = v15;
      *(a3 + 80) = v16;
      *(a3 + 96) = v17;
      *a3 = v11;
      *(a3 + 16) = v12;
      result = v14;
      *(a3 + 32) = v13;
      *(a3 + 48) = v14;
    }
  }

  return result;
}

double sub_270FF67CC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v8 = sub_270FF89A8();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_270FE5D28(a1, a2);
    sub_270FF8998();
    sub_270FF7A5C();
    sub_270FF8988();

    sub_270FEB424(a1, a2);
    sub_270FEB424(a1, a2);
    if (!v3)
    {
      result = *&v11;
      *a3 = v11;
      *(a3 + 16) = v12;
      *(a3 + 24) = v13;
      *(a3 + 32) = v14;
    }
  }

  return result;
}

uint64_t sub_270FF68C4(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 60;
  if (a2 >> 60 == 15)
  {
    return v3 > 0xE;
  }

  v6 = sub_270FF89A8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_270FE5D28(a1, a2);
  sub_270FF8998();
  sub_270FF7DA4();
  sub_270FF8988();

  sub_270FEB424(a1, a2);
  result = sub_270FEB424(a1, a2);
  if (!v2)
  {
    return v3 > 0xE;
  }

  return result;
}

double sub_270FF698C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  if (a2 >> 60 == 15)
  {
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    v10 = sub_270FF89A8();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_270FE5D28(a1, a2);
    sub_270FF8998();
    a3();
    sub_270FF8988();

    sub_270FEB424(a1, a2);
    sub_270FEB424(a1, a2);
    if (!v4)
    {
      result = *&v13;
      *a4 = v13;
      *(a4 + 16) = v14;
      *(a4 + 24) = v15;
    }
  }

  return result;
}

uint64_t sub_270FF6A88@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    *a3 = 0;
    *(a3 + 8) = 1;
  }

  else
  {
    v5 = result;
    v7 = sub_270FF89A8();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_270FE5D28(v5, a2);
    sub_270FF8998();
    sub_270FF3860();
    sub_270FF8988();

    sub_270FEB424(v5, a2);
    result = sub_270FEB424(v5, a2);
    if (!v3)
    {
      *a3 = v10;
      *(a3 + 8) = 0;
    }
  }

  return result;
}

__n128 sub_270FF6B70@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    *(a3 + 96) = 0;
    result.n128_u64[0] = 0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v8 = sub_270FF89A8();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_270FE5D28(a1, a2);
    sub_270FF8998();
    sub_270FF7B04();
    sub_270FF8988();

    sub_270FEB424(a1, a2);
    sub_270FEB424(a1, a2);
    if (!v3)
    {
      *(a3 + 64) = v15;
      *(a3 + 80) = v16;
      *(a3 + 96) = v17;
      *a3 = v11;
      *(a3 + 16) = v12;
      result = v14;
      *(a3 + 32) = v13;
      *(a3 + 48) = v14;
    }
  }

  return result;
}

uint64_t sub_270FF6C84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 5;
  }

  v6 = sub_270FF89A8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_270FE5D28(a1, a2);
  sub_270FF8998();
  sub_270FF7CFC();
  sub_270FF8988();

  sub_270FEB424(a1, a2);
  result = sub_270FEB424(a1, a2);
  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t sub_270FF6D5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v6 = sub_270FF89A8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_270FE5D28(a1, a2);
  sub_270FF8998();
  sub_270FF8988();

  sub_270FEB424(a1, a2);
  result = sub_270FEB424(a1, a2);
  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t sub_270FF6E34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v6 = sub_270FF89A8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_270FE5D28(a1, a2);
  sub_270FF8998();
  sub_270FF8988();

  sub_270FEB424(a1, a2);
  result = sub_270FEB424(a1, a2);
  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t TransportSerializable<>.init(transportData:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20]();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8 >> 60 == 15)
  {
    return (*(v5 + 56))(a2, 1, 1, a1);
  }

  v12 = v7;
  v13 = v8;
  v14 = sub_270FF89A8();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_270FE5D28(v12, v13);
  sub_270FF8998();
  sub_270FF8988();

  sub_270FEB424(v12, v13);
  result = sub_270FEB424(v12, v13);
  if (!v2)
  {
    (*(v5 + 32))(a2, v10, a1);
    return (*(v5 + 56))(a2, 0, 1, a1);
  }

  return result;
}

uint64_t sub_270FF70F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  v4 = *(a2 - 8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return TransportSerializable<>.transportData()();
}

uint64_t sub_270FF7188@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 16);
  v7 = *(a2 - 8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return TransportSerializable<>.init(transportData:)(a1, a3);
}

uint64_t sub_270FF72A4()
{
  v0 = sub_270FF89D8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_270FF89C8();
  sub_270FF7DF8();
  v3 = sub_270FF89B8();

  return v3;
}

uint64_t sub_270FF7324@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270FF68C4(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_270FF7380(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *v3;
  v15 = *(v3 + 2);
  v16 = *(v3 + 3);
  v5 = sub_270FF89D8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_270FF89C8();
  a3(v8, v9, v10, v11);
  v12 = sub_270FF89B8();

  return v12;
}

uint64_t sub_270FF7458()
{
  v6 = *v0;
  v1 = sub_270FF89D8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_270FF89C8();
  v4 = sub_270FF89B8();

  return v4;
}

uint64_t sub_270FF74EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_270FF6E34(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

uint64_t sub_270FF7520()
{
  v10 = v0[4];
  v11 = v0[5];
  v12 = *(v0 + 48);
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  v1 = sub_270FF89D8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_270FF89C8();
  sub_270FEECB4();
  v4 = sub_270FF89B8();

  return v4;
}

uint64_t sub_270FF75E4()
{
  v6 = *v0;
  v1 = sub_270FF89D8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_270FF89C8();
  sub_270FF111C();
  v4 = sub_270FF89B8();

  return v4;
}

uint64_t sub_270FF76BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v10 = *v3;
  v5 = sub_270FF89D8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_270FF89C8();
  a3();
  v8 = sub_270FF89B8();

  return v8;
}

uint64_t sub_270FF7770()
{
  v10 = v0[4];
  v11 = v0[5];
  v12 = *(v0 + 12);
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  v1 = sub_270FF89D8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_270FF89C8();
  sub_270FF7B58();
  v4 = sub_270FF89B8();

  return v4;
}

uint64_t sub_270FF7834()
{
  v6 = *v0;
  v1 = sub_270FF89D8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_270FF89C8();
  sub_270FF380C();
  v4 = sub_270FF89B8();

  return v4;
}

uint64_t sub_270FF78E0()
{
  v6 = *v0;
  v7 = *(v0 + 2);
  v8 = *(v0 + 3);
  v9 = *(v0 + 32);
  v1 = sub_270FF89D8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_270FF89C8();
  sub_270FF7AB0();
  v4 = sub_270FF89B8();

  return v4;
}

uint64_t sub_270FF799C()
{
  v6 = *v0;
  v7 = v0[1];
  v1 = sub_270FF89D8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_270FF89C8();
  v4 = sub_270FF89B8();

  return v4;
}

uint64_t sub_270FF7A30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_270FF6D5C(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

unint64_t sub_270FF7A5C()
{
  result = qword_2808710D0;
  if (!qword_2808710D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808710D0);
  }

  return result;
}

unint64_t sub_270FF7AB0()
{
  result = qword_2808710D8;
  if (!qword_2808710D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808710D8);
  }

  return result;
}

unint64_t sub_270FF7B04()
{
  result = qword_2808710E0;
  if (!qword_2808710E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808710E0);
  }

  return result;
}

unint64_t sub_270FF7B58()
{
  result = qword_2808710E8;
  if (!qword_2808710E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808710E8);
  }

  return result;
}

unint64_t sub_270FF7BAC()
{
  result = qword_2808710F0;
  if (!qword_2808710F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808710F0);
  }

  return result;
}

unint64_t sub_270FF7C00()
{
  result = qword_2808710F8;
  if (!qword_2808710F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808710F8);
  }

  return result;
}

unint64_t sub_270FF7C54()
{
  result = qword_280871100;
  if (!qword_280871100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871100);
  }

  return result;
}

unint64_t sub_270FF7CA8()
{
  result = qword_280871108;
  if (!qword_280871108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871108);
  }

  return result;
}

unint64_t sub_270FF7CFC()
{
  result = qword_280871110;
  if (!qword_280871110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871110);
  }

  return result;
}

unint64_t sub_270FF7D50()
{
  result = qword_280871118;
  if (!qword_280871118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871118);
  }

  return result;
}

unint64_t sub_270FF7DA4()
{
  result = qword_280871120;
  if (!qword_280871120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871120);
  }

  return result;
}

unint64_t sub_270FF7DF8()
{
  result = qword_280871128;
  if (!qword_280871128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871128);
  }

  return result;
}

void DeviceService.init()(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v3 = sub_270FF8A58();
  v4 = [v2 initWithMachServiceName:v3 options:0];

  v5 = type metadata accessor for XPCService();
  swift_allocObject();
  v6 = sub_270FEC110(v4, 0);

  a1[3] = v5;
  a1[4] = &off_2880F74F0;
  a1[5] = &off_2880F74A8;
  *a1 = v6;
}

Swift::Void __swiftcall DeviceService.invalidate()()
{
  v1 = v0[3];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_2(v0, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t sub_270FF7FC4()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v4 = *(v3 + 32);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280871130, &qword_270FFB650);
  v8 = sub_270FF8878();
  *v6 = v0;
  v6[1] = sub_270FEDDB0;

  return v10(v0 + 16, 501, v7, v8, v2, v3);
}

uint64_t sub_270FF8144()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_270FDEEB0;

  return v8(702, v2, v3);
}

uint64_t DeviceService.updateDevice(_:)(uint64_t a1)
{
  *(v2 + 544) = v1;
  *(v2 + 536) = a1;
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a1 + 96);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v5;
  return MEMORY[0x2822009F8](sub_270FF82B4, 0, 0);
}

uint64_t sub_270FF82B4()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = v1[3];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v3);
  v6 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v0 + 120) = *v2;
  *(v0 + 136) = v6;
  *(v0 + 152) = v5;
  v8 = *(v2 + 64);
  v7 = *(v2 + 80);
  v9 = *(v2 + 96);
  *(v0 + 168) = *(v2 + 48);
  *(v0 + 216) = v9;
  *(v0 + 200) = v7;
  *(v0 + 184) = v8;
  v10 = *(v4 + 48);
  sub_270FF38B4(v0 + 16, v0 + 224);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 552) = v12;
  *v12 = v0;
  v12[1] = sub_270FF8440;

  return (v14)(502, v0 + 120, &type metadata for Device, &protocol witness table for Device, v3, v4);
}

uint64_t sub_270FF8440()
{
  v2 = *(*v1 + 552);
  v3 = *v1;
  *(v3 + 560) = v0;

  if (v0)
  {
    v4 = *(v3 + 120);
    v5 = *(v3 + 152);
    *(v3 + 344) = *(v3 + 136);
    *(v3 + 360) = v5;
    *(v3 + 328) = v4;
    v6 = *(v3 + 168);
    v7 = *(v3 + 184);
    v8 = *(v3 + 200);
    *(v3 + 424) = *(v3 + 216);
    *(v3 + 392) = v7;
    *(v3 + 408) = v8;
    *(v3 + 376) = v6;
    sub_270FF8910(v3 + 328);

    return MEMORY[0x2822009F8](sub_270FEE544, 0, 0);
  }

  else
  {
    v9 = *(v3 + 136);
    v10 = *(v3 + 152);
    *(v3 + 432) = *(v3 + 120);
    *(v3 + 448) = v9;
    v11 = *(v3 + 168);
    v12 = *(v3 + 184);
    v13 = *(v3 + 200);
    *(v3 + 528) = *(v3 + 216);
    *(v3 + 496) = v12;
    *(v3 + 512) = v13;
    *(v3 + 464) = v10;
    *(v3 + 480) = v11;
    sub_270FF8910(v3 + 432);
    v14 = *(v3 + 8);

    return v14();
  }
}

uint64_t sub_270FF8600()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_270FDEEB0;

  return v8(503, v2, v3);
}

uint64_t sub_270FF874C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_270FDE774;

  return v8(504, v2, v3);
}

unint64_t sub_270FF8878()
{
  result = qword_280871138;
  if (!qword_280871138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280871130, &qword_270FFB650);
    sub_270FF7B04();
    sub_270FF7B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871138);
  }

  return result;
}

uint64_t sub_270FF8910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280871140, &qword_270FFB668);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}