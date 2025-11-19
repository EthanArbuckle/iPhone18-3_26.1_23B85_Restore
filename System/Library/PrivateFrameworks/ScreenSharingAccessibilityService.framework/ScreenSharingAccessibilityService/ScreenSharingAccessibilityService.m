uint64_t dispatch thunk of ScreenSharingAnnotationCoordinatorProtocol.startAnnotationUIService()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649BAF74;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ScreenSharingAnnotationCoordinatorProtocol.stopAnnotationUIService()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649BAB88;

  return v9(a1, a2);
}

uint64_t sub_2649BAB88()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of ScreenSharingAnnotationCoordinatorProtocol.processTapGestureMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2649BAB88;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ScreenSharingAnnotationCoordinatorProtocol.processDragGestureMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2649BAF74;

  return v11(a1, a2, a3);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2649BAEDC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2649BAEFC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGPoint()
{
  if (!qword_27FF878C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FF878C0);
    }
  }
}

uint64_t sub_2649BAFC8()
{
  v1 = *v0;
  sub_2649C2664();
  MEMORY[0x266746CB0](v1);
  return sub_2649C2684();
}

uint64_t sub_2649BB03C()
{
  v1 = *v0;
  sub_2649C2664();
  MEMORY[0x266746CB0](v1);
  return sub_2649C2684();
}

uint64_t sub_2649BB080()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x746E696F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2649BB0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2649BC4F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2649BB110(uint64_t a1)
{
  v2 = sub_2649BB44C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649BB14C(uint64_t a1)
{
  v2 = sub_2649BB44C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DragGestureMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF87930, &qword_2649C2E20);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649BB44C();
  sub_2649C26A4();
  LOBYTE(v15) = 0;
  sub_2649C2394();
  sub_2649BB8F8(&qword_27FF87940, MEMORY[0x277CC95F0]);
  sub_2649C25E4();
  if (!v2)
  {
    v11 = type metadata accessor for DragGestureMessage();
    v12 = *(v3 + *(v11 + 20));
    LOBYTE(v15) = 1;
    sub_2649C25F4();
    v15 = *(v3 + *(v11 + 24));
    v14[15] = 2;
    type metadata accessor for CGPoint();
    sub_2649BB8F8(&qword_27FF87948, type metadata accessor for CGPoint);
    sub_2649C25E4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2649BB44C()
{
  result = qword_27FF87938;
  if (!qword_27FF87938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF87938);
  }

  return result;
}

uint64_t type metadata accessor for DragGestureMessage()
{
  result = qword_27FF87978;
  if (!qword_27FF87978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DragGestureMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_2649C2394();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20]();
  v25 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF87950, &qword_2649C2E28);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v20 - v9;
  v11 = type metadata accessor for DragGestureMessage();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20]();
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649BB44C();
  sub_2649C2694();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v22;
  LOBYTE(v26) = 0;
  sub_2649BB8F8(&qword_27FF87958, MEMORY[0x277CC95F0]);
  v18 = v24;
  sub_2649C25C4();
  (*(v17 + 32))(v16, v25, v4);
  LOBYTE(v26) = 1;
  *(v16 + *(v11 + 20)) = sub_2649C25D4();
  type metadata accessor for CGPoint();
  v27 = 2;
  sub_2649BB8F8(&qword_27FF87960, type metadata accessor for CGPoint);
  sub_2649C25C4();
  (*(v23 + 8))(v10, v18);
  *(v16 + *(v11 + 24)) = v26;
  sub_2649BB940(v16, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2649BB9A4(v16);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2649BB8F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2649BB940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragGestureMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649BB9A4(uint64_t a1)
{
  v2 = type metadata accessor for DragGestureMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DragGestureMessage.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF87968, &qword_2649C2E30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v31 - v5;
  v7 = sub_2649C2394();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2649C2434();
  v33 = v12;
  sub_2649C2584();
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v13 = sub_2649BBE70(v34);
  if ((v14 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_2649BBF5C(*(a1 + 56) + 32 * v13, v35);
  sub_2649BBEB4(v34);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    goto LABEL_17;
  }

  v36 = v32;
  v32 = sub_2649C2444();
  v33 = v15;
  sub_2649C2584();
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v16 = sub_2649BBE70(v34);
  if ((v17 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_2649BBF5C(*(a1 + 56) + 32 * v16, v35);
  sub_2649BBEB4(v34);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v18 = v32;
  v32 = sub_2649C2454();
  v33 = v19;
  sub_2649C2584();
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v20 = sub_2649BBE70(v34);
  if ((v21 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_2649BBF5C(*(a1 + 56) + 32 * v20, v35);
  sub_2649BBEB4(v34);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:

    goto LABEL_18;
  }

  v22 = v32;
  v32 = sub_2649C2464();
  v33 = v23;
  sub_2649C2584();
  if (!*(a1 + 16) || (v24 = sub_2649BBE70(v34), (v25 & 1) == 0))
  {
LABEL_19:

LABEL_16:

    sub_2649BBEB4(v34);
LABEL_17:
    sub_2649BBF08();
    swift_allocError();
    *v28 = 7;
    return swift_willThrow();
  }

  sub_2649BBF5C(*(a1 + 56) + 32 * v24, v35);
  sub_2649BBEB4(v34);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v26 = v32;
  sub_2649C2374();

  v27 = *(v8 + 48);
  if (v27(v6, 1, v7) == 1)
  {
    sub_2649C2384();
    if (v27(v6, 1, v7) != 1)
    {
      sub_2649BBFB8(v6);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
  }

  (*(v8 + 32))(a2, v11, v7);
  result = type metadata accessor for DragGestureMessage();
  v30 = (a2 + *(result + 24));
  *v30 = v18;
  v30[1] = v22;
  *(a2 + *(result + 20)) = v26;
  return result;
}

unint64_t sub_2649BBE70(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2649C2564();

  return sub_2649BC428(a1, v5);
}

unint64_t sub_2649BBF08()
{
  result = qword_27FF87970;
  if (!qword_27FF87970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF87970);
  }

  return result;
}

uint64_t sub_2649BBF5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2649BBFB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF87968, &qword_2649C2E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2649BC034(uint64_t a1, uint64_t a2)
{
  v4 = sub_2649C2394();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2649BC0B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2649C2394();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2649BC124()
{
  sub_2649C2394();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGPoint();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for DragGestureMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DragGestureMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2649BC324()
{
  result = qword_27FF87988;
  if (!qword_27FF87988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF87988);
  }

  return result;
}

unint64_t sub_2649BC37C()
{
  result = qword_27FF87990;
  if (!qword_27FF87990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF87990);
  }

  return result;
}

unint64_t sub_2649BC3D4()
{
  result = qword_27FF87998;
  if (!qword_27FF87998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF87998);
  }

  return result;
}

unint64_t sub_2649BC428(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2649BC604(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x266746BB0](v9, a1);
      sub_2649BBEB4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_2649BC4F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2649C2604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002649C3E70 == a2 || (sub_2649C2604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E696F70 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2649C2604();

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

uint64_t AnnotationUIServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_2649C2664();
  MEMORY[0x266746CB0](v1);
  return sub_2649C2684();
}

unint64_t AnnotationUIServiceError.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0xD00000000000003DLL;
  if (v1 != 6)
  {
    v2 = 0xD000000000000012;
  }

  v3 = 0xD00000000000003ALL;
  if (v1 == 4)
  {
    v3 = 0xD000000000000033;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000029;
  if (v1 != 2)
  {
    v4 = 0xD000000000000033;
  }

  v5 = 0xD00000000000002ALL;
  if (!*v0)
  {
    v5 = 0xD00000000000001ALL;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2649BC7DC()
{
  result = qword_27FF879A0;
  if (!qword_27FF879A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF879A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnotationUIServiceError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnnotationUIServiceError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of ScreenSharingAnnotationDisplayManagerProtocol.attachViewController(forService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2649BCABC;

  return v11(a1, a2, a3);
}

uint64_t sub_2649BCABC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of ScreenSharingAnnotationDisplayManagerProtocol.detachViewController(forService:viewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2649BAB88;

  return v13(a1, a2, a3, a4);
}

uint64_t SecureHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_2649BDDBC(a1);
  (*(*(*(v2 + class metadata base offset for SecureHostingController) - 8) + 8))(a1);
  return v5;
}

uint64_t SecureHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_2649BDDBC(a1);
  (*(*(*(v3 + class metadata base offset for SecureHostingController) - 8) + 8))(a1);
  return v4;
}

void *SecureHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for SecureHostingController);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a2);
  (*(v5 + 16))(&v12 - v7);
  v8 = sub_2649C24D4();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id SecureHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SecureHostingController.init(coder:)(void *a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = *(v3 + class metadata base offset for SecureHostingController);
  v5 = *(v3 + class metadata base offset for SecureHostingController + 8);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SecureHostingController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id SecureHostingController.__deallocating_deinit()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + class metadata base offset for SecureHostingController);
  v3 = *(v1 + class metadata base offset for SecureHostingController + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SecureHostingController();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t ScreenSharingAnnotationViewController.__allocating_init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF879A8, &qword_2649C3150);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8, v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v23 - v8;
  v10 = objc_allocWithZone(v0);
  v11 = qword_27FF879B0;
  v12 = sub_2649C2404();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *&v10[v11] = sub_2649C23F4();
  v15 = qword_27FF879B8;
  v16 = sub_2649C2494();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_2649C2484();
  v19 = sub_2649C2474();

  *&v10[v15] = v19;
  v20 = sub_2649C23B4();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_2649BDEBC(v9, v6);
  v21 = sub_2649C24E4();
  sub_2649BDF2C(v9);
  return v21;
}

uint64_t ScreenSharingAnnotationViewController.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF879A8, &qword_2649C3150);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8, v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v22 - v8;
  v10 = qword_27FF879B0;
  v11 = sub_2649C2404();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + v10) = sub_2649C23F4();
  v14 = qword_27FF879B8;
  v15 = sub_2649C2494();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_2649C2484();
  v18 = sub_2649C2474();

  *(v0 + v14) = v18;
  v19 = sub_2649C23B4();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  sub_2649BDEBC(v9, v6);
  v20 = sub_2649C24E4();
  sub_2649BDF2C(v9);
  return v20;
}

void sub_2649BD420(uint64_t a1)
{
  v2 = qword_27FF879B0;
  v3 = sub_2649C2404();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(a1 + v2) = sub_2649C23F4();
  v6 = qword_27FF879B8;
  v7 = sub_2649C2494();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_2649C2484();
  v10 = sub_2649C2474();

  *(a1 + v6) = v10;
  sub_2649C25B4();
  __break(1u);
}

id sub_2649BD4EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF879A8, &qword_2649C3150);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v14 - v4;
  v6 = type metadata accessor for ScreenSharingAnnotationViewController();
  v14.receiver = v0;
  v14.super_class = v6;
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v8 = result;
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor_];

    result = [v0 view];
    if (result)
    {
      v10 = result;
      v11 = [result layer];

      [v11 setDisableUpdateMask_];
      v12 = *&v0[qword_27FF879B0];

      sub_2649C23A4();
      v13 = sub_2649C23B4();
      (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
      return sub_2649C24F4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2649BD6A0(void *a1)
{
  v1 = a1;
  sub_2649BD4EC();
}

void sub_2649BD748()
{
  v1 = *(v0 + qword_27FF879B0);

  v2 = *(v0 + qword_27FF879B8);
}

id ScreenSharingAnnotationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingAnnotationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2649BD7C0(uint64_t a1)
{
  v2 = *(a1 + qword_27FF879B0);

  v3 = *(a1 + qword_27FF879B8);
}

uint64_t ScreenSharingAnnotationViewController.processTapGestureMessage(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_2649C2414();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *(v2 + qword_27FF879B8);
  (*(v5 + 104))(v9, *MEMORY[0x277D4B850], v4);
  sub_2649C2424();
  (*(v5 + 8))(v9, v4);
  [objc_opt_self() setRemoteInputMachTime_];
  v14 = *(v2 + qword_27FF879B0);
  return sub_2649C23D4();
}

uint64_t ScreenSharingAnnotationViewController.processDragGestureMessage(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2649C2414();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + qword_27FF879B8);
  (*(v5 + 104))(v9, *MEMORY[0x277D4B850], v4);
  v11 = type metadata accessor for DragGestureMessage();
  v12 = *(a1 + *(v11 + 20));
  sub_2649C2424();
  (*(v5 + 8))(v9, v4);
  [objc_opt_self() setRemoteInputMachTime_];
  v13 = *(v2 + qword_27FF879B0);
  v14 = (a1 + *(v11 + 24));
  v15 = *v14;
  v16 = v14[1];
  return sub_2649C23E4();
}

uint64_t sub_2649BDB10(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_2649C2414();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *(v2 + qword_27FF879B8);
  (*(v5 + 104))(v9, *MEMORY[0x277D4B850], v4);
  sub_2649C2424();
  (*(v5 + 8))(v9, v4);
  [objc_opt_self() setRemoteInputMachTime_];
  v14 = *(v2 + qword_27FF879B0);
  return sub_2649C23D4();
}

uint64_t sub_2649BDC5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2649C2414();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + qword_27FF879B8);
  (*(v5 + 104))(v9, *MEMORY[0x277D4B850], v4);
  v11 = type metadata accessor for DragGestureMessage();
  v12 = *(a1 + *(v11 + 20));
  sub_2649C2424();
  (*(v5 + 8))(v9, v4);
  [objc_opt_self() setRemoteInputMachTime_];
  v13 = *(v2 + qword_27FF879B0);
  v14 = (a1 + *(v11 + 24));
  v15 = *v14;
  v16 = v14[1];
  return sub_2649C23E4();
}

uint64_t sub_2649BDDBC(uint64_t a1)
{
  v2 = (*(*(*((*MEMORY[0x277D85000] & *v1) + class metadata base offset for SecureHostingController) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a1);
  (*(v4 + 16))(&v6 - v3);
  return sub_2649C24E4();
}

uint64_t sub_2649BDEBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF879A8, &qword_2649C3150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649BDF2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF879A8, &qword_2649C3150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ScreenSharingAnnotationViewController()
{
  result = qword_27FF87A40;
  if (!qword_27FF87A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2649BE110()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
LABEL_5:
    v5 = v1;
    return v2;
  }

  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v4 = *(v0 + 16);
    *(v0 + 16) = result;
    v2 = result;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t ScreenSharingAnnotationDisplayManager.__allocating_init()()
{
  v0 = swift_allocObject();
  ScreenSharingAnnotationDisplayManager.init()();
  return v0;
}

uint64_t ScreenSharingAnnotationDisplayManager.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF879A8, &qword_2649C3150);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24 - v9;
  *(v0 + 16) = 0;
  v11 = objc_allocWithZone(type metadata accessor for ScreenSharingAnnotationViewController());
  v12 = qword_27FF879B0;
  v13 = sub_2649C2404();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v11[v12] = sub_2649C23F4();
  v16 = qword_27FF879B8;
  v17 = sub_2649C2494();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_2649C2484();
  v20 = sub_2649C2474();

  *&v11[v16] = v20;
  v21 = sub_2649C23B4();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  sub_2649BDEBC(v10, v7);
  v22 = sub_2649C24E4();
  sub_2649BDF2C(v10);
  *(v1 + 24) = v22;
  *(v1 + 32) = &protocol witness table for ScreenSharingAnnotationViewController;
  return v1;
}

uint64_t ScreenSharingAnnotationDisplayManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t ScreenSharingAnnotationDisplayManager.attachViewController(forService:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649BE470;

  return (sub_2649BEB14)(a1);
}

uint64_t sub_2649BE470(void *a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v7 = *v3;

  v8 = *(v7 + 8);
  if (v2)
  {

    return v8();
  }

  else
  {
    v11 = *(v7 + 8);
    v10 = a1;

    return v11(v10, a2);
  }
}

uint64_t sub_2649BE5B4(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t ScreenSharingAnnotationDisplayManager.detachViewController(forService:viewController:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  sub_2649C2534();
  v3[21] = sub_2649C2524();
  v5 = sub_2649C2514();
  v3[22] = v5;
  v3[23] = v4;

  return MEMORY[0x2822009F8](sub_2649BE6AC, v5, v4);
}

uint64_t sub_2649BE6AC()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = sub_2649BE110();
  v0[24] = v3;
  if (v2)
  {
    v4 = v3;
    v6 = v0[18];
    v5 = v0[19];
    v0[2] = v0;
    v0[7] = v0 + 25;
    v0[3] = sub_2649BE7F8;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF87A50, &qword_2649C31E0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2649BE5B4;
    v0[13] = &block_descriptor;
    v0[14] = v7;
    [v4 removeContentViewController:v5 withUserInteractionEnabled:0 forService:v6 context:0 completion:v0 + 10];
    v3 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

uint64_t sub_2649BE7F8()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2649BE900, v2, v1);
}

uint64_t sub_2649BE900()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);

  v3 = *(v0 + 200);

  if (v3 != 1)
  {
    sub_2649BBF08();
    swift_allocError();
    *v5 = 4;
    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2649BE9BC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649BEF6C;

  return (sub_2649BEB14)(a1);
}

uint64_t sub_2649BEA6C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649BAB88;

  return ScreenSharingAnnotationDisplayManager.detachViewController(forService:viewController:)(a1, a2);
}

uint64_t sub_2649BEB14(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_2649C2534();
  v2[20] = sub_2649C2524();
  v4 = sub_2649C2514();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_2649BEBAC, v4, v3);
}

uint64_t sub_2649BEBAC()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = sub_2649BE110();
  v0[23] = v3;
  v4 = *(v2 + 24);
  v0[24] = v4;
  v0[25] = *(v2 + 32);
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_2649BED0C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF87A50, &qword_2649C31E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2649BE5B4;
  v0[13] = &block_descriptor_12;
  v0[14] = v5;
  [v3 addContentViewController:v4 withUserInteractionEnabled:0 forService:v1 context:0 userInterfaceStyle:2 forWindowScene:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2649BED0C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2649BEE14, v2, v1);
}

uint64_t sub_2649BEE14()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);

  v3 = *(v0 + 208);

  if (v3 == 1)
  {
    v4 = *(v0 + 8);
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);

    return v4(v5, v6);
  }

  else
  {
    sub_2649BBF08();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t ScreenSharingAnnotationCoordinator.__allocating_init(withService:displayManager:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  ScreenSharingAnnotationCoordinator.init(withService:displayManager:)(a1, a2);
  return v4;
}

uint64_t ScreenSharingAnnotationCoordinator.init(withService:displayManager:)(uint64_t a1, __int128 *a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + 65) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_2649BF064(a2, v5);
  swift_beginAccess();
  sub_2649BF07C(v5, v2 + 24);
  swift_endAccess();
  return v2;
}

uint64_t sub_2649BF064(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2649BF07C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF87A60, &qword_2649C3270);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649BF0EC()
{
  v1[10] = v0;
  sub_2649C2534();
  v1[11] = sub_2649C2524();
  v3 = sub_2649C2514();
  v1[12] = v3;
  v1[13] = v2;

  return MEMORY[0x2822009F8](sub_2649BF184, v3, v2);
}

uint64_t sub_2649BF184()
{
  v1 = v0[10];
  swift_beginAccess();
  if (*(v1 + 48))
  {
    v2 = v0[10];
    sub_2649C12EC(v1 + 24, (v0 + 2));
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[14] = Strong;
    v6 = *(v4 + 8);
    v14 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_2649BF348;

    return v14(Strong, v3, v4);
  }

  else
  {
    v10 = v0[11];

    v11 = v0[10];
    v12 = *(v11 + 64);
    *(v11 + 64) = 0;
    *(v11 + 72) = 0;

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2649BF348(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v9 = v6[12];
    v10 = v6[13];
    v11 = sub_2649BF504;
  }

  else
  {
    v12 = v6[14];
    swift_unknownObjectRelease();
    v6[17] = a2;
    v6[18] = a1;
    v9 = v6[12];
    v10 = v6[13];
    v11 = sub_2649BF484;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_2649BF484()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[11];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[10];
  v5 = *(v4 + 64);
  *(v4 + 64) = v2;
  *(v4 + 72) = v1;

  v6 = v0[1];

  return v6();
}

uint64_t sub_2649BF504()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_2649BBF08();
  swift_allocError();
  *v4 = 3;
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2649BF5C0()
{
  v1[10] = v0;
  sub_2649C2534();
  v1[11] = sub_2649C2524();
  v3 = sub_2649C2514();
  v1[12] = v3;
  v1[13] = v2;

  return MEMORY[0x2822009F8](sub_2649BF658, v3, v2);
}

uint64_t sub_2649BF658()
{
  v1 = v0[10];
  swift_beginAccess();
  if (*(v1 + 48))
  {
    v2 = v0[10];
    sub_2649C12EC(v1 + 24, (v0 + 2));
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[14] = Strong;
    v6 = *(v2 + 64);
    v0[15] = v6;
    v7 = *(v4 + 16);
    v8 = v6;
    v14 = (v7 + *v7);
    v9 = v7[1];
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_2649BF82C;

    return v14(Strong, v6, v3, v4);
  }

  else
  {
    v12 = v0[11];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2649BF82C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v10 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_2649BF9B8;
  }

  else
  {
    v7 = v2[14];
    v8 = v2[15];
    swift_unknownObjectRelease();

    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_2649BF94C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2649BF94C()
{
  v1 = v0[11];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2649BF9B8()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[11];

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_2649BBF08();
  swift_allocError();
  *v5 = 4;
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t ScreenSharingAnnotationCoordinator.deinit()
{
  sub_2649BFAA8(v0 + 16);
  sub_2649BFAD0(v0 + 24);

  return v0;
}

uint64_t sub_2649BFAD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF87A60, &qword_2649C3270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ScreenSharingAnnotationCoordinator.__deallocating_deinit()
{
  sub_2649BFAA8(v0 + 16);
  sub_2649BFAD0(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 81, 7);
}

uint64_t ScreenSharingAnnotationCoordinator.startAnnotationUIService()()
{
  v1[6] = v0;
  v2 = sub_2649C24C4();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_2649C2534();
  v1[13] = sub_2649C2524();
  v6 = sub_2649C2514();
  v1[14] = v6;
  v1[15] = v5;

  return MEMORY[0x2822009F8](sub_2649BFC98, v6, v5);
}

uint64_t sub_2649BFC98()
{
  v1 = v0[12];
  v2 = v0[6];
  sub_2649C24A4();

  v3 = sub_2649C24B4();
  v4 = sub_2649C2544();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = *(v6 + 80);

    _os_log_impl(&dword_2649B9000, v3, v4, "Coordinator asked to start Screen Sharing Annotation UI Service. isRunning=%{BOOL,public}d", v7, 8u);
    MEMORY[0x266747070](v7, -1, -1);
  }

  else
  {
    v8 = v0[6];
  }

  v9 = v0[12];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[6];
  v13 = *(v11 + 8);
  v0[16] = v13;
  v0[17] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v9, v10);
  if (*(v12 + 80))
  {
    v14 = v0[13];
    v15 = v0[10];

    sub_2649C24A4();
    v16 = sub_2649C24B4();
    v17 = sub_2649C2544();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2649B9000, v16, v17, "Annotation UI Service already running.", v18, 2u);
      MEMORY[0x266747070](v18, -1, -1);
    }

    v19 = v0[10];
    v20 = v0[7];

    v13(v19, v20);
    sub_2649BBF08();
    swift_allocError();
    *v21 = 5;
    swift_willThrow();
    v23 = v0[11];
    v22 = v0[12];
    v25 = v0[9];
    v24 = v0[10];

    v26 = v0[1];

    return v26();
  }

  else
  {
    *(v12 + 80) = 1;
    v28 = swift_task_alloc();
    v0[18] = v28;
    *v28 = v0;
    v28[1] = sub_2649BFF44;
    v29 = v0[6];

    return sub_2649BF0EC();
  }
}

uint64_t sub_2649BFF44()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_2649C01B0;
  }

  else
  {
    v7 = sub_2649C0080;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2649C0080()
{
  v1 = v0[13];
  v2 = v0[11];

  sub_2649C24A4();
  v3 = sub_2649C24B4();
  v4 = sub_2649C2544();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2649B9000, v3, v4, "Coordinator did show Annotation UI on screen", v5, 2u);
    MEMORY[0x266747070](v5, -1, -1);
  }

  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[11];
  v8 = v0[12];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[7];

  v7(v9, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_2649C01B0()
{
  v33 = v0;
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[9];

  sub_2649C24A4();
  v4 = v1;
  v5 = sub_2649C24B4();
  v6 = sub_2649C2554();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[19];
    v8 = v0[16];
    v31 = v0[17];
    v9 = v0[9];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v14 = v0[2];
    v13 = v0[3];
    v15 = v0[4];
    v16 = sub_2649C2614();
    v18 = sub_2649C11D0(v16, v17, &v32);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_2649B9000, v5, v6, "Coordinator could not start Screen Sharing Annotation UI Service: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x266747070](v12, -1, -1);
    MEMORY[0x266747070](v11, -1, -1);

    v8(v9, v10);
  }

  else
  {
    v20 = v0[16];
    v19 = v0[17];
    v21 = v0[9];
    v22 = v0[7];

    v20(v21, v22);
  }

  v23 = v0[19];
  *(v0[6] + 80) = 0;
  sub_2649BBF08();
  swift_allocError();
  *v24 = 1;
  swift_willThrow();

  v26 = v0[11];
  v25 = v0[12];
  v28 = v0[9];
  v27 = v0[10];

  v29 = v0[1];

  return v29();
}

uint64_t ScreenSharingAnnotationCoordinator.stopAnnotationUIService()()
{
  v1[6] = v0;
  v2 = sub_2649C24C4();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_2649C2534();
  v1[13] = sub_2649C2524();
  v6 = sub_2649C2514();
  v1[14] = v6;
  v1[15] = v5;

  return MEMORY[0x2822009F8](sub_2649C04F0, v6, v5);
}

uint64_t sub_2649C04F0()
{
  v1 = v0[12];
  v2 = v0[6];
  sub_2649C24A4();

  v3 = sub_2649C24B4();
  v4 = sub_2649C2544();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = *(v6 + 80);

    _os_log_impl(&dword_2649B9000, v3, v4, "Coordinator asked to stop Screen Sharing Annotation UI Service. isRunning=%{BOOL,public}d", v7, 8u);
    MEMORY[0x266747070](v7, -1, -1);
  }

  else
  {
    v8 = v0[6];
  }

  v9 = v0[12];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[6];
  v13 = *(v11 + 8);
  v0[16] = v13;
  v0[17] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v9, v10);
  if (*(v12 + 80) == 1)
  {
    v14 = v0[6];
    *(v12 + 80) = 0;
    v15 = *(v14 + 64);
    if (v15)
    {
      v16 = *(v0[6] + 72);
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 8);
      v19 = v15;
      v18(ObjectType, v16);
    }

    v20 = swift_task_alloc();
    v0[18] = v20;
    *v20 = v0;
    v20[1] = sub_2649C07E4;
    v21 = v0[6];

    return sub_2649BF5C0();
  }

  else
  {
    v23 = v0[13];
    v24 = v0[10];

    sub_2649C24A4();
    v25 = sub_2649C24B4();
    v26 = sub_2649C2544();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2649B9000, v25, v26, "Annotation UI Service already not running.", v27, 2u);
      MEMORY[0x266747070](v27, -1, -1);
    }

    v28 = v0[10];
    v29 = v0[7];

    v13(v28, v29);
    sub_2649BBF08();
    swift_allocError();
    *v30 = 6;
    swift_willThrow();
    v32 = v0[11];
    v31 = v0[12];
    v34 = v0[9];
    v33 = v0[10];

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_2649C07E4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_2649C0A84;
  }

  else
  {
    v7 = sub_2649C0920;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2649C0920()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 48);

  sub_2649C24A4();

  v4 = sub_2649C24B4();
  v5 = sub_2649C2544();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = *(v7 + 80);

    _os_log_impl(&dword_2649B9000, v4, v5, "Coordinator did hide Screen Sharing UI on main screen (isRunning=%{BOOL,public}d)", v8, 8u);
    MEMORY[0x266747070](v8, -1, -1);
  }

  else
  {
    v9 = *(v0 + 48);
  }

  v10 = *(v0 + 136);
  v11 = *(v0 + 96);
  v13 = *(v0 + 72);
  v12 = *(v0 + 80);
  v14 = *(v0 + 48);
  (*(v0 + 128))(*(v0 + 88), *(v0 + 56));
  v15 = *(v14 + 64);
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2649C0A84()
{
  v33 = v0;
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[9];

  sub_2649C24A4();
  v4 = v1;
  v5 = sub_2649C24B4();
  v6 = sub_2649C2554();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[19];
    v8 = v0[16];
    v31 = v0[17];
    v9 = v0[9];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v14 = v0[2];
    v13 = v0[3];
    v15 = v0[4];
    v16 = sub_2649C2614();
    v18 = sub_2649C11D0(v16, v17, &v32);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_2649B9000, v5, v6, "Coordinator could not stop Screen Sharing: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x266747070](v12, -1, -1);
    MEMORY[0x266747070](v11, -1, -1);

    v8(v9, v10);
  }

  else
  {
    v20 = v0[16];
    v19 = v0[17];
    v21 = v0[9];
    v22 = v0[7];

    v20(v21, v22);
  }

  v23 = v0[19];
  *(v0[6] + 80) = 1;
  sub_2649BBF08();
  swift_allocError();
  *v24 = 2;
  swift_willThrow();

  v26 = v0[11];
  v25 = v0[12];
  v28 = v0[9];
  v27 = v0[10];

  v29 = v0[1];

  return v29();
}

uint64_t ScreenSharingAnnotationCoordinator.processTapGestureMessage(_:)(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  *(v2 + 40) = *(a1 + 16);
  sub_2649C2534();
  *(v2 + 48) = sub_2649C2524();
  v4 = sub_2649C2514();

  return MEMORY[0x2822009F8](sub_2649C0D58, v4, v3);
}

uint64_t sub_2649C0D58()
{
  v14 = v0;
  v1 = v0[6];
  v2 = v0[2];

  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = v0[5];
    v6 = v0[3];
    v5 = v0[4];
    v7 = *(v0[2] + 72);
    ObjectType = swift_getObjectType();
    v13[0] = v6;
    v13[1] = v5;
    v13[2] = v4;
    v9 = *(v7 + 16);
    v10 = v3;
    v9(v13, ObjectType, v7);
  }

  v11 = v0[1];

  return v11();
}

uint64_t ScreenSharingAnnotationCoordinator.processDragGestureMessage(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_2649C2534();
  v2[4] = sub_2649C2524();
  v4 = sub_2649C2514();

  return MEMORY[0x2822009F8](sub_2649C0EC4, v4, v3);
}

uint64_t sub_2649C0EC4()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = v0[2];
    v5 = *(v0[3] + 72);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    v8 = v3;
    v7(v4, ObjectType, v5);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2649C0F7C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649BAF74;

  return ScreenSharingAnnotationCoordinator.startAnnotationUIService()();
}

uint64_t sub_2649C100C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649BAB88;

  return ScreenSharingAnnotationCoordinator.stopAnnotationUIService()();
}

uint64_t sub_2649C109C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649BAB88;

  return ScreenSharingAnnotationCoordinator.processTapGestureMessage(_:)(a1);
}

uint64_t sub_2649C1134(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  sub_2649C2534();
  v2[4] = sub_2649C2524();
  v5 = sub_2649C2514();

  return MEMORY[0x2822009F8](sub_2649C0EC4, v5, v4);
}

uint64_t sub_2649C11D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2649C1350(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2649BBF5C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_2649C12EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2649C1350(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2649C145C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2649C25A4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2649C145C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2649C14A8(a1, a2);
  sub_2649C15D8(&unk_2876529D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2649C14A8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2649C16C4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2649C25A4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2649C2504();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2649C16C4(v10, 0);
        result = sub_2649C2594();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2649C15D8(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2649C1738(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2649C16C4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF87A68, &unk_2649C3340);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2649C1738(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF87A68, &unk_2649C3340);
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

unint64_t sub_2649C1848()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x746E696F70;
  }

  *v0;
  return result;
}

uint64_t sub_2649C1884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E696F70 && a2 == 0xE500000000000000;
  if (v6 || (sub_2649C2604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002649C3E70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2649C2604();

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

uint64_t sub_2649C1970(uint64_t a1)
{
  v2 = sub_2649C1BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649C19AC(uint64_t a1)
{
  v2 = sub_2649C1BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TapGestureMessage.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF87A70, &qword_2649C3350);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v15 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649C1BB4();
  sub_2649C26A4();
  v15[0] = v10;
  v15[1] = v11;
  v16 = 0;
  type metadata accessor for CGPoint();
  sub_2649C1DF4(&qword_27FF87948);
  sub_2649C25E4();
  if (!v2)
  {
    LOBYTE(v15[0]) = 1;
    sub_2649C25F4();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_2649C1BB4()
{
  result = qword_27FF87A78;
  if (!qword_27FF87A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF87A78);
  }

  return result;
}

uint64_t TapGestureMessage.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF87A80, &qword_2649C3358);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649C1BB4();
  sub_2649C2694();
  if (!v2)
  {
    type metadata accessor for CGPoint();
    v17 = 0;
    sub_2649C1DF4(&qword_27FF87960);
    sub_2649C25C4();
    v12 = v16[0];
    v13 = v16[1];
    LOBYTE(v16[0]) = 1;
    v14 = sub_2649C25D4();
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v13;
    a2[2] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2649C1DF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TapGestureMessage.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = sub_2649C2444();
  sub_2649C2584();
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v4 = sub_2649BBE70(v17);
  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2649BBF5C(*(a1 + 56) + 32 * v4, v18);
  sub_2649BBEB4(v17);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = v14;
  v15 = sub_2649C2454();
  sub_2649C2584();
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v7 = sub_2649BBE70(v17);
  if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2649BBF5C(*(a1 + 56) + 32 * v7, v18);
  sub_2649BBEB4(v17);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    goto LABEL_12;
  }

  v9 = v15;
  v16 = sub_2649C2464();
  sub_2649C2584();
  if (!*(a1 + 16) || (v10 = sub_2649BBE70(v17), (v11 & 1) == 0))
  {
LABEL_11:

    sub_2649BBEB4(v17);
    goto LABEL_12;
  }

  sub_2649BBF5C(*(a1 + 56) + 32 * v10, v18);
  sub_2649BBEB4(v17);

  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v6;
    a2[1] = v9;
    a2[2] = v16;
    return result;
  }

LABEL_12:
  sub_2649BBF08();
  swift_allocError();
  *v13 = 7;
  return swift_willThrow();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TapGestureMessage(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TapGestureMessage(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TapGestureMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapGestureMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2649C2240()
{
  result = qword_27FF87A88;
  if (!qword_27FF87A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF87A88);
  }

  return result;
}

unint64_t sub_2649C2298()
{
  result = qword_27FF87A90;
  if (!qword_27FF87A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF87A90);
  }

  return result;
}

unint64_t sub_2649C22F0()
{
  result = qword_27FF87A98;
  if (!qword_27FF87A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF87A98);
  }

  return result;
}