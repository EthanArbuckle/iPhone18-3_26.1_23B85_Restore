void *SmartPromptPreviewView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v30[0] = *v1;
  v30[1] = v3;
  v30[2] = *(v1 + 32);
  v31 = *(v1 + 48);
  v4 = *(v1 + 24);
  *v26 = *(v1 + 8);
  *&v26[16] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F070);
  sub_274BF4784();
  v5 = [*&v30[0] items];
  sub_274B08760();
  v6 = sub_274BF5144();

  if (v29 > 0x3Fu)
  {
    *v26 = v27;
    v26[8] = v28;
    v8 = OUTLINED_FUNCTION_0_35();
    sub_274B4D900(v8, v9, v10);
    sub_274BC91A8(v6);
    v7 = v11;
    v12 = OUTLINED_FUNCTION_0_35();
    sub_274B4C9F8(v12, v13, v14);
  }

  else
  {
    v7 = v27;
  }

  v15 = OUTLINED_FUNCTION_0_35();
  sub_274B4C9F8(v15, v16, v17);
  v18 = sub_274BF38F4();
  v24 = 0;
  sub_274BDD5EC(v30, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v26, __src, sizeof(v26));
  sub_274BDD7F4(__dst, &v21);
  sub_274BDD864(v26);

  memcpy(&v23[7], __dst, 0xE8uLL);
  v19 = v24;
  *a1 = v18;
  *(a1 + 8) = 0;
  *(a1 + 16) = v19;
  return memcpy((a1 + 17), v23, 0xEFuLL);
}

void *sub_274BDD5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v17 = *(a1 + 8);
  v18 = v4;
  v13 = *(a1 + 8);
  v14 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F070);
  sub_274BF47A4();
  v12 = __src[0];
  v5 = *(&__src[1] + 1);
  v11 = *&__src[1];
  v6 = __src[2];
  v7 = *a1;
  type metadata accessor for PreviewableContentCollection();
  swift_allocObject();
  sub_274B809B0(v7);
  v8 = v7;
  sub_274BF4774();
  KeyPath = swift_getKeyPath();
  __src[0] = v17;
  __src[1] = v18;
  sub_274BF4784();
  sub_274B4C9F8(v13, *(&v13 + 1), v14);
  sub_274BF4A94();
  sub_274BF34A4();
  memcpy(&v15[7], __src, 0x70uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA70);
  sub_274BF47A4();
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = 0;
  *(a2 + 32) = v12;
  *(a2 + 48) = v11;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 72) = v13;
  *(a2 + 88) = CGSizeMake;
  *(a2 + 96) = 0;
  *(a2 + 104) = KeyPath;
  *(a2 + 112) = 1;
  return memcpy((a2 + 113), v15, 0x77uLL);
}

uint64_t sub_274BDD7F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274BDD864(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274BDD8F8()
{
  result = qword_28098F080;
  if (!qword_28098F080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F080);
  }

  return result;
}

uint64_t sub_274BDD95C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_274BDD9B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_274BDDB18@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_274BDDB40(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_274BDDB6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

uint64_t sub_274BDDB8C(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

WorkflowUICore::Platform::Set sub_274BDDBD4@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = Platform.Set.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_274BDDC14@<X0>(uint64_t *a1@<X8>)
{
  result = Platform.Set.rawValue.getter();
  *a1 = result;
  return result;
}

WorkflowUICore::Platform_optional __swiftcall Platform.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_274BDDC74@<X0>(uint64_t *a1@<X8>)
{
  result = Platform.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t View.on<A>(_:_:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_10_11(a1, a2, a3, a4, a5, a6, a7);
  OUTLINED_FUNCTION_0_5();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_2();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_5();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_21();
  OUTLINED_FUNCTION_0_5();
  v20 = MEMORY[0x28223BE20](v19);
  if (*a1)
  {
    v37(v39, v20);
    v25 = OUTLINED_FUNCTION_4_26();
    sub_274ADB48C(v25, v26);
    v27 = *(v16 + 8);
    v28 = OUTLINED_FUNCTION_4_26();
    v27(v28);
    v29 = OUTLINED_FUNCTION_9_15();
    sub_274ADB48C(v29, v30);
    OUTLINED_FUNCTION_4_26();
    sub_274ADB9A0();
    v31 = OUTLINED_FUNCTION_4_26();
    v27(v31);
    v32 = OUTLINED_FUNCTION_9_15();
    v27(v32);
  }

  else
  {
    OUTLINED_FUNCTION_7_23();
    v21 = OUTLINED_FUNCTION_19_7();
    sub_274ADB48C(v21, v22);
    OUTLINED_FUNCTION_5_24();
    v23 = *(v9 + 8);
    v23(v13, v7);
    v24 = OUTLINED_FUNCTION_19_7();
    (v23)(v24);
  }

  OUTLINED_FUNCTION_3_0();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_10(WitnessTable);
  v34 = OUTLINED_FUNCTION_8_19();
  return v35(v34);
}

uint64_t View.when<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_10_11(a1, a2, a3, a4, a5, a6, a7);
  v39 = v8;
  OUTLINED_FUNCTION_0_5();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_2();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_5();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_21();
  OUTLINED_FUNCTION_0_5();
  v21 = MEMORY[0x28223BE20](v20);
  if (v39)
  {
    v38(v40, v21);
    v22 = OUTLINED_FUNCTION_4_26();
    sub_274ADB48C(v22, v23);
    v24 = *(v17 + 8);
    v25 = OUTLINED_FUNCTION_4_26();
    v24(v25);
    v26 = OUTLINED_FUNCTION_9_15();
    sub_274ADB48C(v26, v27);
    OUTLINED_FUNCTION_4_26();
    sub_274ADB9A0();
    v28 = OUTLINED_FUNCTION_4_26();
    v24(v28);
    v29 = OUTLINED_FUNCTION_9_15();
    v24(v29);
  }

  else
  {
    OUTLINED_FUNCTION_7_23();
    v30 = OUTLINED_FUNCTION_19_7();
    sub_274ADB48C(v30, v31);
    OUTLINED_FUNCTION_5_24();
    v32 = *(v10 + 8);
    v32(v14, v7);
    v33 = OUTLINED_FUNCTION_19_7();
    (v32)(v33);
  }

  OUTLINED_FUNCTION_3_0();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_10(WitnessTable);
  v35 = OUTLINED_FUNCTION_8_19();
  return v36(v35);
}

unint64_t sub_274BDE1E8()
{
  result = qword_28098F090;
  if (!qword_28098F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F090);
  }

  return result;
}

unint64_t sub_274BDE240()
{
  result = qword_28098F098;
  if (!qword_28098F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F098);
  }

  return result;
}

unint64_t sub_274BDE298()
{
  result = qword_28098F0A0;
  if (!qword_28098F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F0A0);
  }

  return result;
}

unint64_t sub_274BDE2F0()
{
  result = qword_28098F0A8;
  if (!qword_28098F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F0A8);
  }

  return result;
}

unint64_t sub_274BDE348()
{
  result = qword_28098F0B0;
  if (!qword_28098F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F0B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Platform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Platform(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Platform.Set(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Platform.Set(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_6_21()
{

  return sub_274BF3A74();
}

void *EmptyContentCollectionPreviewView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_274BF4A94();
  sub_274BF34A4();
  memcpy(&v3[7], __src, 0x70uLL);
  *a1 = 0;
  *(a1 + 8) = 1;
  return memcpy((a1 + 9), v3, 0x77uLL);
}

_BYTE *storeEnumTagSinglePayload for EmptyContentCollectionPreviewView(_BYTE *result, int a2, int a3)
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

unint64_t sub_274BDE72C()
{
  result = qword_28098F0B8;
  if (!qword_28098F0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28098F0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F0B8);
  }

  return result;
}

uint64_t TextAlignment.init(nsTextAlignment:)(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t TextAlignment.init(wfTextAlignment:)(void *a1)
{
  sub_274BF4F44();
  if (v2 == OUTLINED_FUNCTION_1_31() && v1 == v4)
  {

    return 0;
  }

  v6 = OUTLINED_FUNCTION_0_36();

  if (v6)
  {

    return 0;
  }

  sub_274BF4F44();
  if (v6 == OUTLINED_FUNCTION_1_31() && v1 == v8)
  {

    return 1;
  }

  v10 = OUTLINED_FUNCTION_0_36();

  if (v10)
  {

    return 1;
  }

  sub_274BF4F44();
  if (v10 == OUTLINED_FUNCTION_1_31() && v1 == v11)
  {

    return 2;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_0_36();

    if (v13)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_274BDE964()
{
  sub_274BDF18C();

  return sub_274BF37A4();
}

uint64_t sub_274BDE9EC()
{
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_1_32();
  sub_274BDEA94();
  OUTLINED_FUNCTION_1_32();
  type metadata accessor for QuickLookHostingView();
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_32();
  sub_274ADB48C(v0, v1);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_32();
  sub_274ADB48C(v2, v3);
  return swift_unknownObjectRelease();
}

id sub_274BDEAA0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CDAA58]) init];
  type metadata accessor for QuickLookHostingView();
  swift_getWitnessTable();
  sub_274BF3DE4();
  sub_274BF3DD4();
  [v0 setDataSource_];

  sub_274BF3DD4();
  [v0 setDelegate_];

  return v0;
}

id sub_274BDEB88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for QuickLookHostingView();
  swift_getWitnessTable();
  sub_274BF3DE4();
  sub_274BF3DD4();
  swift_unknownObjectRetain();
  sub_274BDED18(a3, a4);

  return [a1 refreshCurrentPreviewItem];
}

id sub_274BDEC40(uint64_t a1, uint64_t a2)
{
  type metadata accessor for QuickLookHostingView.Coordinator();
  swift_unknownObjectRetain();
  return sub_274BDEC98(a1, a2);
}

uint64_t sub_274BDECDC()
{
  v1 = *(v0 + qword_28098F130);
  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_274BDED18(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_28098F130);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

id sub_274BDED34(uint64_t a1, uint64_t a2)
{
  v3 = &v2[qword_28098F130];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for QuickLookHostingView.Coordinator();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_274BDEDDC()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_274BDECDC();
  v3 = (*(*((v2 & v1) + 0x58) + 24))(*((v2 & v1) + 0x50));
  swift_unknownObjectRelease();
  return v3;
}

id sub_274BDEE68(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_274BDEDDC();

  return v6;
}

id sub_274BDEEF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickLookHostingView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274BDEF90()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_274BDF004@<X0>(void *a1@<X8>)
{
  result = sub_274BDEC40(*v1, v1[1]);
  *a1 = result;
  return result;
}

uint64_t sub_274BDF038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_274BDF0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_274BDF130()
{
  swift_getWitnessTable();
  sub_274BF3D84();
  __break(1u);
}

unint64_t sub_274BDF18C()
{
  result = qword_28098F2F8[0];
  if (!qword_28098F2F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28098F2F8);
  }

  return result;
}

uint64_t sub_274BDF1F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274BDF238(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_274BDF278(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_274BDF2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_274B846A4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_274BDF378(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_274B63DF4();
  v6 = v18;
  v8 = *(sub_274BF1CB4() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v15 = *(v8 + 72);
  while (1)
  {
    a1(v17, v9);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v10 = v17[0];
    v11 = v17[1];
    v18 = v6;
    v12 = *(v6 + 16);
    if (v12 >= *(v6 + 24) >> 1)
    {
      sub_274B63DF4();
      v6 = v18;
    }

    *(v6 + 16) = v12 + 1;
    v13 = v6 + 16 * v12;
    *(v13 + 32) = v10;
    *(v13 + 40) = v11;
    v9 += v15;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_274BDF4DC(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_274B63F44(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v6 = v18;
    while (v9 < v5)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_15;
      }

      v16 = a3 + v9;
      a1(&v17, &v16);
      if (v4)
      {
        goto LABEL_20;
      }

      v11 = v17;
      v18 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_274B63F44((v12 > 1), v13 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_16;
      }

      ++v9;
      if ((a3 + v9 - 1) >= a4)
      {
        goto LABEL_17;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

BOOL sub_274BDF648()
{
  sub_274BF3214();
  OUTLINED_FUNCTION_0_38();
  sub_274BE00D8(v0);
  sub_274BF5344();
  sub_274BF5374();
  return v3 == v2;
}

uint64_t sub_274BDF6C0()
{
  sub_274BF3214();
  sub_274BE00D8(&qword_2815A30E0);
  sub_274BF5344();
  sub_274BF5374();
  result = v2;
  if (v1 < v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274BDF74C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, unint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_274BF1D34();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = *(v10 + 16);
  v10 += 16;
  result = v15(a4, a1, v8);
  v17 = 0;
  v23 = a3;
  v18 = *(a3 + 16);
  v19 = (v10 - 8);
  v20 = (v10 + 16);
  while (v18 != v17)
  {
    v21 = *(sub_274BF1CB4() - 8);
    a2(a4, v23 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17);
    if (v4)
    {
      return (*v19)(a4, v8);
    }

    ++v17;
    (*v19)(a4, v8);
    result = (*v20)(a4, v14, v8);
  }

  return result;
}

void *sub_274BDF91C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  for (i = a3; a4 != i; ++i)
  {
    if (a4 < a3)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return result;
    }

    if (i >= a4)
    {
      goto LABEL_9;
    }

    v10 = i;
    result = v7(&v9, &v11, &v10);
    if (v4)
    {
      return result;
    }

    v11 = v9;
  }

  return result;
}

uint64_t sub_274BDF9C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v5 <= 0 && v5 > a2)
    {
      return 0;
    }
  }

  else if ((v5 & 0x8000000000000000) == 0 && v5 < a2)
  {
    return 0;
  }

  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_19;
  }

  if (result < a4 || result > a5)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t EqualSizedLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF37E4();
  *a1 = result;
  return result;
}

uint64_t EqualSizedLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v47 = a3;
  v7 = sub_274BF3184();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = sub_274BF3214();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B678);
  MEMORY[0x28223BE20](v21);
  v23 = &v43[-v22];
  result = sub_274BDF648();
  v25 = 0.0;
  if ((result & 1) == 0)
  {
    v26 = sub_274BDF6C0();
    v28 = OUTLINED_FUNCTION_4_27(v26, v27);
    v45 = v9;
    MEMORY[0x28223BE20](v28);
    *&v43[-16] = a5;
    v29 = 0.0;
    v44 = a4;
    sub_274BDF91C(sub_274BE00BC, &v43[-32], v30, v31);
    v32 = *(v16 + 16);
    v46 = a5;
    v32(v20, a5, v14);
    sub_274BE00D8(&qword_2815A30E8);
    sub_274BF50E4();
    v33 = *(v21 + 36);
    OUTLINED_FUNCTION_0_38();
    sub_274BE00D8(v34);
    v35 = (v45 + 16);
    v36 = (v45 + 8);
    v37 = v44 & 1;
    while (1)
    {
      sub_274BF5374();
      if (*&v23[v33] == v49[0])
      {
        break;
      }

      v38 = sub_274BF5414();
      (*v35)(v13);
      v38(v49, 0);
      sub_274BF5384();
      LOBYTE(v49[0]) = 1;
      v48 = v37;
      sub_274BF3154();
      v40 = v39;
      v42 = v41;
      (*v36)(v13, v7);
      if (v29 <= v40)
      {
        v29 = v40;
      }

      if (v25 <= v42)
      {
        v25 = v42;
      }
    }

    sub_274BE011C(v23);
    sub_274BF5344();
    sub_274BF5374();
    return sub_274BF5364();
  }

  return result;
}

uint64_t sub_274BDFDF0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = __OFSUB__(v5, result);
  v7 = v5 - result;
  if (v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_274BDF9C0(a2, v7 & ~(v7 >> 63), a3, a2, a3);
  if (v8)
  {
    v9 = a3;
  }

  else
  {
    v9 = result;
  }

  if (v9 >= a2)
  {
    return a2;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_274BDFE64@<X0>(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v31 = a4;
  v7 = sub_274BF3014();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_274BF3184();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = *a1;
  v21 = *a2;
  v28 = a3;
  sub_274BF3224();
  sub_274BF3174();
  v22 = *(v14 + 8);
  v22(v19, v13);
  result = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    sub_274BF3224();
    sub_274BF3174();
    v22(v16, v13);
    sub_274BF2FE4();
    v25 = v24;
    v26 = v30;
    v27 = *(v29 + 8);
    v27(v9, v30);
    result = (v27)(v12, v26);
    *v31 = v20 + v25;
  }

  return result;
}

uint64_t sub_274BE00D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_274BF3214();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274BE011C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EqualSizedLayout.placeSubviews(in:proposal:subviews:cache:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v74 = a4;
  v73 = a3;
  v83 = sub_274BF3184();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v82 = v11 - v10;
  v84 = sub_274BF3304();
  OUTLINED_FUNCTION_1();
  v79 = v12;
  MEMORY[0x28223BE20](v13);
  v78 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - v16;
  v77 = *v4;
  result = sub_274BDF648();
  if ((result & 1) == 0)
  {
    v19 = sub_274BDF6C0();
    v21 = OUTLINED_FUNCTION_4_27(v19, v20);
    MEMORY[0x28223BE20](v21);
    v72 = v22;
    *(&v70 - 2) = v22;
    v25 = sub_274BDF4DC(sub_274BE0AF4, (&v70 - 4), v23, v24);
    v26 = v25;
    v27 = *(v25 + 16);
    if (v27)
    {
      v28 = (v25 + 32);
      v29 = 0.0;
      do
      {
        v30 = *v28++;
        v29 = v29 + v30;
        --v27;
      }

      while (v27);
    }

    else
    {
      v29 = 0.0;
    }

    v88.origin.x = a1;
    v88.origin.y = a2;
    v31 = v73;
    v88.size.width = v73;
    v32 = v74;
    v88.size.height = v74;
    v33 = CGRectGetWidth(v88) - v29;
    sub_274BF3214();
    OUTLINED_FUNCTION_0_38();
    sub_274BE00D8(v34);
    v35 = v72;
    sub_274BF5344();
    sub_274BF5374();
    v36 = v33 / sub_274BF5364();
    v81 = v36;
    v89.origin.x = a1;
    v89.origin.y = a2;
    v89.size.width = v31;
    v89.size.height = v32;
    Height = CGRectGetHeight(v89);
    v37 = sub_274BF5354();
    v38 = MEMORY[0x277D84F90];
    v70 = v8;
    v71 = v26;
    if (v37)
    {
      v39 = v37;
      v87 = MEMORY[0x277D84F90];
      sub_274B63F64(0, v37 & ~(v37 >> 63), 0);
      v40 = v87;
      result = sub_274BF5344();
      if (v39 < 0)
      {
        goto LABEL_42;
      }

      v76 = (v8 + 16);
      v41 = (v8 + 8);
      v75 = v79 + 32;
      do
      {
        v42 = v35;
        v43 = sub_274BF5414();
        v44 = v82;
        v45 = v83;
        (*v76)(v82);
        v43(v86, 0);
        LOBYTE(v86[0]) = 0;
        v85 = 0;
        sub_274BF3144();
        (*v41)(v44, v45);
        v87 = v40;
        v47 = *(v40 + 16);
        v46 = *(v40 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_274B63F64(v46 > 1, v47 + 1, 1);
          v40 = v87;
        }

        *(v40 + 16) = v47 + 1;
        (*(v79 + 32))(v40 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v47, v17, v84);
        sub_274BF5384();
        --v39;
        v35 = v42;
      }

      while (v39);
      v26 = v71;
      v38 = MEMORY[0x277D84F90];
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }

    v48 = *(v40 + 16);
    if (v48)
    {
      v86[0] = v38;
      sub_274B63F44(0, v48, 0);
      v49 = v86[0];
      v50 = v79 + 16;
      v79 = *(v79 + 16);
      v51 = v40 + ((*(v50 + 64) + 32) & ~*(v50 + 64));
      v52 = *(v50 + 56);
      v53 = (v50 - 8);
      do
      {
        v54 = v78;
        v55 = v84;
        (v79)(v78, v51, v84);
        v56 = MEMORY[0x277C62BB0](v77);
        (*v53)(v54, v55);
        v86[0] = v49;
        v58 = *(v49 + 16);
        v57 = *(v49 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_274B63F44((v57 > 1), v58 + 1, 1);
          v49 = v86[0];
        }

        *(v49 + 16) = v58 + 1;
        *(v49 + 8 * v58 + 32) = v56;
        v51 += v52;
        --v48;
      }

      while (v48);

      v26 = v71;
    }

    else
    {

      v49 = MEMORY[0x277D84F90];
    }

    v59 = *(v49 + 16);
    v60 = INFINITY;
    v61 = 32;
    for (i = v70; v59; --v59)
    {
      if (*(v49 + v61) < v60)
      {
        v60 = *(v49 + v61);
      }

      v61 += 8;
    }

    v90.origin.x = OUTLINED_FUNCTION_3_31();
    MinX = CGRectGetMinX(v90);
    result = sub_274BDF6C0();
    if (result != v64)
    {
      v65 = result;
      v66 = v64;
      if (v64 < result)
      {
        goto LABEL_43;
      }

      if (result >= v64)
      {
LABEL_44:
        __break(1u);
      }

      else if ((result & 0x8000000000000000) == 0)
      {
        v67 = *(v49 + 16);
        if (result < v67 && v64 - 1 < v67)
        {
          v69 = v82;
          while (1)
          {
            if (v65 >= 1)
            {
              if (v65 > *(v26 + 16))
              {
                __break(1u);
LABEL_42:
                __break(1u);
LABEL_43:
                __break(1u);
                goto LABEL_44;
              }

              MinX = MinX + *(v26 + 24 + 8 * v65);
            }

            v91.origin.x = OUTLINED_FUNCTION_3_31();
            CGRectGetMidY(v91);
            sub_274BF3224();
            sub_274BF4B84();
            LOBYTE(v86[0]) = 0;
            LOBYTE(v87) = 0;
            sub_274BF3164();
            result = (*(i + 8))(v69, v83);
            MinX = v36 + MinX;
            if (v66 == ++v65)
            {
              goto LABEL_39;
            }
          }
        }

        goto LABEL_46;
      }

      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

LABEL_39:
  }

  return result;
}

uint64_t sub_274BE08B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = a3;
  v5 = sub_274BF3014();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = sub_274BF3184();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v25 - v16;
  v18 = *a1;
  v25[1] = a2;
  sub_274BF3224();
  sub_274BF3174();
  v19 = *(v12 + 8);
  v19(v17, v11);
  result = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    sub_274BF3224();
    sub_274BF3174();
    v19(v14, v11);
    sub_274BF2FE4();
    v22 = v21;
    v23 = v27;
    v24 = *(v26 + 8);
    v24(v7, v27);
    result = (v24)(v10, v23);
    *v28 = v22;
  }

  return result;
}

uint64_t EqualSizedLayout.spacing(subviews:cache:)()
{
  v21 = sub_274BF3014();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  v20 = sub_274BF3184();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  sub_274BF3004();
  result = sub_274BDF6C0();
  if (result != v13)
  {
    v14 = result;
    v15 = v13;
    if (v13 >= result)
    {
      if (result >= v13)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      v19 = (v7 + 8);
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F390);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_274BFA880;
        v17 = sub_274BF3E54();
        *(inited + 32) = v17;
        v18 = sub_274BF3E64();
        *(inited + 33) = v18;
        sub_274BF3E84();
        sub_274BF3E84();
        if (sub_274BF3E84() != v17)
        {
          sub_274BF3E84();
        }

        sub_274BF3E84();
        if (sub_274BF3E84() != v18)
        {
          sub_274BF3E84();
        }

        if (!v14)
        {
          sub_274BF3E74();
          sub_274BF3E84();
        }

        sub_274BF3214();
        OUTLINED_FUNCTION_0_38();
        sub_274BE00D8(&qword_2815A30E0);
        sub_274BF5344();
        sub_274BF5374();
        result = sub_274BF5364();
        if (__OFSUB__(result, 1))
        {
          break;
        }

        if (v14 == result - 1)
        {
          sub_274BF3E94();
          sub_274BF3E84();
        }

        sub_274BF3224();
        sub_274BF3174();
        (*v19)(v11, v20);
        sub_274BF2FF4();
        result = (*(v1 + 8))(v5, v21);
        if (v15 == ++v14)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

void (*sub_274BE0E74(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_274BF2DD4();
  return sub_274B30924;
}

unint64_t sub_274BE0EF0()
{
  result = qword_28098F398;
  if (!qword_28098F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F398);
  }

  return result;
}

uint64_t sub_274BE0F68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_274BE0FA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274BE1024@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v9[0] = v1[2];
  *(v9 + 9) = *(v1 + 41);
  *a1 = sub_274BF3804();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F3A0);
  sub_274BE1100(v8, a1 + *(v4 + 44));
  sub_274BF3EA4();
  sub_274BF2E54();
  OUTLINED_FUNCTION_7_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F3A8);
  OUTLINED_FUNCTION_2_34(v5);
  sub_274BF3E74();
  sub_274BF2E54();
  OUTLINED_FUNCTION_7_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F3B0);
  return OUTLINED_FUNCTION_2_34(v6);
}

uint64_t sub_274BE1100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F3B8);
  MEMORY[0x28223BE20](v141);
  v126 = v118 - v3;
  v145 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F3C0));
  MEMORY[0x28223BE20](*&v145);
  v5 = v118 - v4;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F3C8);
  MEMORY[0x28223BE20](v138);
  v139 = v118 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F3D0);
  MEMORY[0x28223BE20](v7);
  v140 = v118 - v8;
  v9 = sub_274BF3774();
  v122 = *(v9 - 8);
  v123 = v9;
  MEMORY[0x28223BE20](v9);
  v121 = v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_274BF3484();
  MEMORY[0x28223BE20](v125);
  v136 = (v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D638);
  MEMORY[0x28223BE20](v127);
  v133 = v118 - v12;
  v13 = sub_274BF46E4();
  v124 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F3D8);
  MEMORY[0x28223BE20](v16);
  v135 = v118 - v17;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F3E0);
  MEMORY[0x28223BE20](v128);
  v130 = v118 - v18;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F3E8);
  MEMORY[0x28223BE20](v129);
  v132 = v118 - v19;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F3F0);
  MEMORY[0x28223BE20](v137);
  v131 = v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v134 = v118 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F3F8);
  MEMORY[0x28223BE20](v23 - 8);
  v142 = v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v118 - v26;
  v144 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  if (v172 >= 2)
  {
    v118[1] = v7;
    v119 = v27;
    v120 = v5;
    if (v172 == 2)
    {
      v29 = v126;
      sub_274BE21BC(v144);
      sub_274BF4A94();
      sub_274BF30D4();
      v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F448) + 36)];
      v31 = v177;
      *v30 = v176;
      *(v30 + 1) = v31;
      *(v30 + 2) = v178;
      v32 = sub_274BF3E94();
      sub_274BF2E54();
      v33 = &v29[*(v141 + 36)];
      *v33 = v32;
      *(v33 + 1) = v34;
      *(v33 + 2) = v35;
      *(v33 + 3) = v36;
      *(v33 + 4) = v37;
      v33[40] = 0;
      sub_274B01968(v29, v139, &qword_28098F3B8);
      swift_storeEnumTagMultiPayload();
      sub_274BE3008();
      sub_274BE3290();
      v38 = v140;
      sub_274BF3A64();
      sub_274B01968(v38, v120, &qword_28098F3D0);
      swift_storeEnumTagMultiPayload();
      sub_274BE2F7C();
      v28 = v119;
      sub_274BF3A64();
      sub_274AFA708(v38, &qword_28098F3D0);
      sub_274AFA708(v29, &qword_28098F3B8);
    }

    else
    {
      v126 = v172;
      sub_274BF5604();
      v39 = v124;
      (*(v124 + 104))(v15, *MEMORY[0x277CE0FE0], v13);
      v118[0] = sub_274BF4734();

      (*(v39 + 8))(v15, v13);
      v40 = v144;
      v41 = *(v144 + 48) * 34.0;
      v42 = v135;
      v43 = (v135 + *(v16 + 36));
      v44 = v125;
      v45 = *(v125 + 20);
      v46 = *MEMORY[0x277CE0118];
      v47 = sub_274BF38C4();
      v48 = *(*(v47 - 8) + 104);
      v48(v43 + v45, v46, v47);
      *v43 = v41;
      v43[1] = v41;
      *(v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B540) + 36)) = 256;
      *v42 = v118[0];
      *(v42 + 8) = 0;
      *(v42 + 16) = 1;
      v49 = v136;
      v48(v136 + *(v44 + 20), v46, v47);
      *v49 = v41;
      v49[1] = v41;
      sub_274BF4644();
      v50 = sub_274BF4634();

      v180 = *(v40 + 8);
      v179 = *v40;
      if (v180 != 1)
      {

        sub_274BF54A4();
        v51 = sub_274BF3DF4();
        sub_274BF2BC4();

        v52 = v121;
        sub_274BF3764();
        swift_getAtKeyPath();
        sub_274AFA708(&v179, &qword_28098F4B0);
        v53 = v123;
        v54 = *(v122 + 8);
        v54(v52, v123);

        sub_274BF54A4();
        v55 = sub_274BF3DF4();
        sub_274BF2BC4();

        sub_274BF3764();
        swift_getAtKeyPath();
        sub_274AFA708(&v179, &qword_28098F4B0);
        v54(v52, v53);
      }

      v56 = v120;
      sub_274BF2FB4();
      v57 = v136;
      v58 = v133;
      sub_274BE3570(v136, v133);
      v59 = *&v173 * 0.5;
      v60 = v58 + *(v127 + 68);
      sub_274BE3570(v57, v60);
      *(v60 + *(sub_274BF3474() + 20)) = v59;
      v61 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D648) + 36);
      v62 = v174;
      *v61 = v173;
      *(v61 + 16) = v62;
      *(v61 + 32) = v175;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D650);
      *(v60 + *(v63 + 52)) = v50;
      *(v60 + *(v63 + 56)) = 256;
      v64 = sub_274BF4A94();
      v66 = v65;
      sub_274B93F64(v57);
      v67 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D658) + 36));
      *v67 = v64;
      v67[1] = v66;
      v68 = sub_274BF4A94();
      v70 = v69;
      v71 = v130;
      v72 = &v130[*(v128 + 36)];
      sub_274B16ED0(v58, v72, &qword_28098D638);
      v73 = (v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F430) + 36));
      *v73 = v68;
      v73[1] = v70;
      sub_274BE35D4(v135, v71);
      sub_274BF4A94();
      sub_274BF30D4();
      v74 = v132;
      sub_274B16ED0(v71, v132, &qword_28098F3E0);
      v75 = (v74 + *(v129 + 36));
      v76 = v177;
      *v75 = v176;
      v75[1] = v76;
      v75[2] = v178;
      LOBYTE(v68) = sub_274BF3E94();
      sub_274BF2E54();
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v84 = v83;
      v85 = v131;
      sub_274B16ED0(v74, v131, &qword_28098F3E8);
      v86 = v85 + *(v137 + 36);
      *v86 = v68;
      *(v86 + 8) = v78;
      *(v86 + 16) = v80;
      *(v86 + 24) = v82;
      *(v86 + 32) = v84;
      *(v86 + 40) = 0;
      v87 = v134;
      sub_274B16ED0(v85, v134, &qword_28098F3F0);
      sub_274B01968(v87, v139, &qword_28098F3F0);
      swift_storeEnumTagMultiPayload();
      sub_274BE3008();
      sub_274BE3290();
      v88 = v140;
      sub_274BF3A64();
      sub_274B01968(v88, v56, &qword_28098F3D0);
      swift_storeEnumTagMultiPayload();
      sub_274BE2F7C();
      v28 = v119;
      sub_274BF3A64();
      sub_274AFA308(v126);
      sub_274AFA708(v88, &qword_28098F3D0);
      sub_274AFA708(v87, &qword_28098F3F0);
    }
  }

  else
  {
    sub_274AFA308(v172);
    swift_storeEnumTagMultiPayload();
    sub_274BE2F7C();
    sub_274BF3A64();
    v28 = v27;
  }

  v89 = v144;
  sub_274BE243C();
  v145 = sub_274BE24DC();
  v90 = sub_274BF3904();
  v141 = v90;
  LOBYTE(v155[0]) = 0;
  sub_274BE2598(v89, v163);
  memcpy(v151, v163, 0x79uLL);
  memcpy(v152, v163, 0x79uLL);
  sub_274B01968(v151, v153, &qword_28098F490);
  sub_274AFA708(v152, &qword_28098F490);
  memcpy(&v150[7], v151, 0x79uLL);
  v91 = v155[0];
  LODWORD(v140) = LOBYTE(v155[0]);
  v92 = sub_274BF3E74();
  v93 = v92;
  LODWORD(v139) = v92;
  sub_274BF2E54();
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;
  sub_274BE2B10(&v146);
  LOBYTE(v89) = sub_274BF3E74();
  sub_274BF2E54();
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v109 = v108;
  LOBYTE(v163[0]) = 0;
  v110 = v142;
  sub_274B01968(v28, v142, &qword_28098F3F8);
  v111 = v143;
  sub_274B01968(v110, v143, &qword_28098F3F8);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F498);
  v113 = v28;
  v114 = v112[12];
  v153[0] = v90;
  v153[1] = 0x4000000000000000;
  LOBYTE(v153[2]) = v91;
  memcpy(&v153[2] + 1, v150, 0x80uLL);
  LOBYTE(v153[19]) = v93;
  v153[20] = v95;
  v153[21] = v97;
  v153[22] = v99;
  v153[23] = v101;
  LOBYTE(v153[24]) = 0;
  v153[25] = 0;
  *&v153[26] = v145;
  memcpy((v111 + v114), v153, 0xD8uLL);
  v115 = v111 + v112[16];
  *v115 = 0;
  *(v115 + 8) = 1;
  v116 = v112[20];
  v154[0] = v146;
  v154[1] = v147;
  v154[2] = v148;
  *&v154[3] = v149;
  BYTE8(v154[3]) = v89;
  *&v154[4] = v103;
  *(&v154[4] + 1) = v105;
  *&v154[5] = v107;
  *(&v154[5] + 1) = v109;
  LOBYTE(v154[6]) = 0;
  memcpy((v111 + v116), v154, 0x61uLL);
  sub_274B01968(v153, v163, &qword_28098F4A0);
  sub_274B01968(v154, v163, &qword_28098F4A8);
  sub_274AFA708(v113, &qword_28098F3F8);
  v155[0] = v146;
  v155[1] = v147;
  v155[2] = v148;
  v156 = v149;
  v157 = v89;
  v158 = v103;
  v159 = v105;
  v160 = v107;
  v161 = v109;
  v162 = 0;
  sub_274AFA708(v155, &qword_28098F4A8);
  v163[0] = v141;
  v163[1] = 0x4000000000000000;
  LOBYTE(v163[2]) = v140;
  memcpy(&v163[2] + 1, v150, 0x80uLL);
  v164 = v139;
  v165 = v95;
  v166 = v97;
  v167 = v99;
  v168 = v101;
  v169 = 0;
  v170 = 0;
  v171 = v145;
  sub_274AFA708(v163, &qword_28098F4A0);
  return sub_274AFA708(v110, &qword_28098F3F8);
}

uint64_t sub_274BE21BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F4B8);
  MEMORY[0x28223BE20](v2);
  v4 = (v17 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F478);
  MEMORY[0x28223BE20](v5);
  v7 = (v17 - v6);
  if (*(a1 + 56))
  {
    v8 = *(a1 + 48) * 34.0;
    v9 = *(sub_274BF3484() + 20);
    v10 = *MEMORY[0x277CE0118];
    v11 = sub_274BF38C4();
    (*(*(v11 - 8) + 104))(v7 + v9, v10, v11);
    *v7 = v8;
    v7[1] = v8;
    v12 = sub_274BF4654();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F488);
    *(v7 + *(v13 + 52)) = v12;
    *(v7 + *(v13 + 56)) = 256;
    sub_274BF4A94();
    sub_274BF30D4();
    v14 = (v7 + *(v5 + 36));
    v15 = v17[1];
    *v14 = v17[0];
    v14[1] = v15;
    v14[2] = v17[2];
    sub_274B01968(v7, v4, &qword_28098F478);
    swift_storeEnumTagMultiPayload();
    sub_274BE34B8();
    sub_274BF3A64();
    return sub_274AFA708(v7, &qword_28098F478);
  }

  else
  {
    *v4 = sub_274BF45E4();
    swift_storeEnumTagMultiPayload();
    sub_274BE34B8();
    return sub_274BF3A64();
  }
}

double sub_274BE243C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  if (v2 < 2)
  {
    v0 = 1.0;
LABEL_4:
    sub_274AFA308(v2);
    return v0;
  }

  v0 = 0.0;
  if (v2 != 2)
  {
    goto LABEL_4;
  }

  return v0;
}

double sub_274BE24DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  if (v3 >= 3)
  {
    v0 = sub_274BF5004();
    sub_274AFA278(v2, v3);
    result = -1.0;
    if (v0 > 0)
    {
      return result;
    }
  }

  else
  {
    sub_274AFA278(v2, v3);
  }

  return 0.0;
}

uint64_t sub_274BE2598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_274BE296C(a1);
  v4 = sub_274BE2A4C(v3 & 1, a1);
  v44 = sub_274B0CFC4();
  v45 = v5;
  sub_274ADDF6C();
  v38 = sub_274BF4104();
  v40 = v7;
  v41 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v34 = v4;
  v36 = sub_274BF4004();
  v35 = swift_getKeyPath();
  v10 = v9 & 1;
  LOBYTE(v44) = v9 & 1;
  __dst[0] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  if (v45 < 3 || sub_274BF5004() <= 0)
  {
    sub_274AFA278(v44, v45);
    v23 = 0;
    v25 = 0;
    v31 = 0;
    v29 = 0;
    v30 = 0;
    v32 = 0;
  }

  else
  {
    v11 = sub_274BF4104();
    v13 = v12;
    v15 = v14;
    sub_274BF4654();
    v16 = sub_274BF4094();
    v18 = v17;
    v20 = v19;

    sub_274AFA1D0(v11, v13, v15 & 1);

    sub_274BF3FD4();
    v21 = v16;
    v22 = v18;
    v23 = sub_274BF40D4();
    v25 = v24;
    v27 = v26;
    v29 = v28;

    sub_274AFA1D0(v21, v22, v20 & 1);

    v30 = swift_getKeyPath();
    v31 = v27 & 1;
    sub_274AF396C(v23, v25, v27 & 1);

    v32 = 1;
  }

  __src[0] = v38;
  __src[1] = v41;
  LOBYTE(__src[2]) = v10;
  *(&__src[2] + 1) = v56[0];
  HIDWORD(__src[2]) = *(v56 + 3);
  __src[3] = v40;
  __src[4] = KeyPath;
  __src[5] = 2;
  LOBYTE(__src[6]) = 0;
  *(&__src[6] + 1) = *v55;
  HIDWORD(__src[6]) = *&v55[3];
  __src[7] = v35;
  __src[8] = v36;
  memcpy(__dst, __src, sizeof(__dst));
  sub_274B01968(__src, &v44, &qword_28098F4D0);
  sub_274B06560(v23, v25, v31, v29);

  sub_274B065B0(v23, v25, v31, v29);
  memcpy(a2, __dst, 0x48uLL);
  *(a2 + 72) = v23;
  *(a2 + 80) = v25;
  *(a2 + 88) = v31;
  *(a2 + 96) = v29;
  *(a2 + 104) = v30;
  *(a2 + 112) = v32;
  *(a2 + 120) = 0;
  sub_274B065B0(v23, v25, v31, v29);
  v44 = v38;
  v45 = v41;
  v46 = v10;
  *v47 = v56[0];
  *&v47[3] = *(v56 + 3);
  v48 = v40;
  v49 = KeyPath;
  v50 = 2;
  v51 = 0;
  *v52 = *v55;
  *&v52[3] = *&v55[3];
  v53 = v35;
  v54 = v36;
  return sub_274AFA708(&v44, &qword_28098F4D0);
}

uint64_t sub_274BE296C(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274BF2D64();

    if (v8 >= 3)
    {
      v2 = sub_274BF5004();
      sub_274AFA278(v7, v8);
      if (v2 > 0)
      {
        v1 = 0;
        return v1 & 1;
      }
    }

    else
    {
      sub_274AFA278(v7, v8);
    }

    v3 = sub_274B0CFC4();
    sub_274BD9C44(v3, v4);
    v1 = v5 ^ 1;
    return v1 & 1;
  }

  v1 = 0;
  return v1 & 1;
}

id sub_274BE2A4C(char a1, uint64_t a2)
{
  if (a1)
  {
    result = [objc_opt_self() _preferredFontForTextStyle_design_weight_];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D76A28];
  if ((*(a2 + 33) & 1) == 0)
  {
    v3 = MEMORY[0x277D76918];
  }

  v4 = *v3;
  v5 = [objc_opt_self() preferredFontForTextStyle_];

  return v5;
}

double sub_274BE2B10@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  if (v23 >= 2)
  {
    if (v23 == 2)
    {
      sub_274BF38A4();
      v2 = sub_274BF40E4();
      v4 = v3;
      v6 = v5 & 1;
      sub_274AF396C(v2, v3, v5 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C9E0);
      sub_274B7AC30();
      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F4C0);
      sub_274BE3644();
      sub_274BF3A64();
      sub_274AFA1D0(v2, v4, v6);
    }

    else
    {
      sub_274ADDF6C();

      v7 = sub_274BF4104();
      v9 = v8;
      v11 = v10;
      sub_274BF3EE4();
      sub_274BF3F14();
      sub_274BF3F84();

      v12 = sub_274BF40D4();
      v17 = v13;
      v18 = v12;
      v15 = v14;

      sub_274AFA1D0(v7, v9, v11 & 1);

      swift_getKeyPath();
      sub_274AF396C(v18, v17, v15 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C9E0);
      sub_274B7AC30();
      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F4C0);
      sub_274BE3644();
      sub_274BF3A64();
      sub_274AFA278(v22, v23);
      sub_274AFA1D0(v18, v17, v15 & 1);
    }

    v24 = v19;
    v25 = v20;
    *v26 = *v21;
    *&v26[15] = *&v21[15];
  }

  else
  {
    sub_274AFA278(v22, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F4C0);
    sub_274BE3644();
    sub_274BF3A64();
  }

  *a1 = v24;
  *(a1 + 16) = v25;
  result = *v26;
  *(a1 + 32) = *v26;
  *(a1 + 47) = *&v26[15];
  return result;
}

unint64_t sub_274BE2F7C()
{
  result = qword_28098F400;
  if (!qword_28098F400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F3D0);
    sub_274BE3008();
    sub_274BE3290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F400);
  }

  return result;
}

unint64_t sub_274BE3008()
{
  result = qword_28098F408;
  if (!qword_28098F408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F3F0);
    sub_274BE3094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F408);
  }

  return result;
}

unint64_t sub_274BE3094()
{
  result = qword_28098F410;
  if (!qword_28098F410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F3E8);
    sub_274BE3120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F410);
  }

  return result;
}

unint64_t sub_274BE3120()
{
  result = qword_28098F418;
  if (!qword_28098F418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F3E0);
    sub_274BE31D8();
    sub_274AFA930(&qword_28098F428, &qword_28098F430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F418);
  }

  return result;
}

unint64_t sub_274BE31D8()
{
  result = qword_28098F420;
  if (!qword_28098F420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F3D8);
    sub_274AFA5CC();
    sub_274AFA930(&qword_2815A3100, &qword_28098B540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F420);
  }

  return result;
}

unint64_t sub_274BE3290()
{
  result = qword_28098F438;
  if (!qword_28098F438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F3B8);
    sub_274BE331C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F438);
  }

  return result;
}

unint64_t sub_274BE331C()
{
  result = qword_28098F440;
  if (!qword_28098F440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F448);
    sub_274BE33A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F440);
  }

  return result;
}

unint64_t sub_274BE33A8()
{
  result = qword_28098F450;
  if (!qword_28098F450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F458);
    sub_274BE342C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F450);
  }

  return result;
}

unint64_t sub_274BE342C()
{
  result = qword_28098F460;
  if (!qword_28098F460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F468);
    sub_274BE34B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F460);
  }

  return result;
}

unint64_t sub_274BE34B8()
{
  result = qword_28098F470;
  if (!qword_28098F470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F478);
    sub_274AFA930(&qword_28098F480, &qword_28098F488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F470);
  }

  return result;
}

uint64_t sub_274BE3570(uint64_t a1, uint64_t a2)
{
  v4 = sub_274BF3484();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274BE35D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F3D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_274BE3644()
{
  result = qword_28098F4C8;
  if (!qword_28098F4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F4C0);
    sub_274B7AC30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F4C8);
  }

  return result;
}

uint64_t sub_274BE36D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF36E4();
  *a1 = result;
  return result;
}

unint64_t sub_274BE3728()
{
  result = qword_28098F4D8;
  if (!qword_28098F4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F3B0);
    sub_274BE37B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F4D8);
  }

  return result;
}

unint64_t sub_274BE37B4()
{
  result = qword_28098F4E0;
  if (!qword_28098F4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F3A8);
    sub_274AFA930(&qword_28098F4E8, &qword_28098F4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F4E0);
  }

  return result;
}

uint64_t CheckmarkRowToggleStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = sub_274BF3C54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F4F8);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  (*(v4 + 16))(v7, a1, v2, v12);
  sub_274BF4874();
  OUTLINED_FUNCTION_1_33();
  sub_274AFA930(v15, &qword_28098F4F8);
  sub_274BE3A20();
  sub_274BF4234();
  return (*(v10 + 8))(v14, v8);
}

unint64_t sub_274BE3A20()
{
  result = qword_28098F508;
  if (!qword_28098F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F508);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CheckmarkRowToggleStyle(_BYTE *result, int a2, int a3)
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

uint64_t sub_274BE3B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_274BF3B24();
  OUTLINED_FUNCTION_1();
  v26 = v3;
  v27 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274BF3C54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F510);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v25 - v18;
  (*(v9 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v17);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  (*(v9 + 32))(v21 + v20, &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F518);
  sub_274AFA930(&qword_28098F520, &qword_28098F518);
  sub_274BF47C4();
  sub_274BF3B14();
  OUTLINED_FUNCTION_17();
  sub_274AFA930(v22, &qword_28098F510);
  sub_274BE4320();
  v23 = v26;
  sub_274BF41D4();
  (*(v27 + 8))(v6, v23);
  return (*(v15 + 8))(v19, v13);
}

uint64_t sub_274BE3E88()
{
  v0 = sub_274BF3C14();
  *v1 = !*v1;
  return v0(&v3, 0);
}

uint64_t sub_274BE3EE4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_274BF3804();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F538);
  return sub_274BE3F3C((a1 + *(v2 + 44)));
}

uint64_t sub_274BE3F3C@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F540);
  MEMORY[0x28223BE20](v1);
  v3 = (&v29 - v2);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F548);
  MEMORY[0x28223BE20](v30);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F550);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = sub_274BF3C34();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  sub_274BF3C44();
  v19 = sub_274BF3C24();
  v20 = 1;
  if (v19)
  {
    v21 = sub_274BF46D4();
    sub_274BF32E4();
    *v3 = v21;
    sub_274BE43E8();
    sub_274BF4324();
    sub_274B12D7C(v3, &qword_28098F540);
    sub_274BE44A0(v5, v11);
    v20 = 0;
  }

  __swift_storeEnumTagSinglePayload(v11, v20, 1, v30);
  v22 = *(v13 + 16);
  v22(v15, v18, v12);
  v32 = 1;
  sub_274BE4378(v11, v8);
  v23 = v31;
  v22(v31, v15, v12);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F558);
  v25 = &v23[*(v24 + 48)];
  v26 = v32;
  *v25 = 0;
  v25[8] = v26;
  sub_274BE4378(v8, &v23[*(v24 + 64)]);
  sub_274B12D7C(v11, &qword_28098F550);
  v27 = *(v13 + 8);
  v27(v18, v12);
  sub_274B12D7C(v8, &qword_28098F550);
  return (v27)(v15, v12);
}

uint64_t sub_274BE42B8()
{
  sub_274BF3C54();

  return sub_274BE3E88();
}

unint64_t sub_274BE4320()
{
  result = qword_28098F530;
  if (!qword_28098F530)
  {
    sub_274BF3B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F530);
  }

  return result;
}

uint64_t sub_274BE4378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_274BE43E8()
{
  result = qword_28098F560;
  if (!qword_28098F560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F540);
    sub_274AFA930(&qword_28098F568, &qword_28098F570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F560);
  }

  return result;
}

uint64_t sub_274BE44A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F548);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274BE4510()
{
  sub_274B29550();
  sub_274BF37A4();
  return v1;
}

uint64_t (*sub_274BE454C())(uint64_t, uint64_t, uint64_t)
{
  sub_274BE4C88();
  sub_274BF37A4();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_274BE4D64;
}

uint64_t View.autocompleteWindow<A>(dataSource:onSelect:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v20 = a1;
  v21 = a2;
  v22 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F578);
  v11 = sub_274BF33D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  swift_getKeyPath();
  v25 = (*(a6 + 88))(a4, a6);
  sub_274BF4204();

  swift_getKeyPath();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v16 = v21;
  v15[6] = v20;
  v15[7] = v16;
  v25 = sub_274BE4C74;
  v26 = v15;
  v17 = sub_274B83324(&qword_28098F580, &qword_28098F578);
  v23 = a5;
  v24 = v17;

  swift_getWitnessTable();
  sub_274BF4204();

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_274BE4864@<X0>(void *a1@<X8>)
{
  result = sub_274BE454C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_274BE4D68;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_274BE48D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_274BE4C84;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_274ADDED0(v1);
  return sub_274BE4960(v4, v3);
}

uint64_t sub_274BE4960(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_274BE4C88();
  return sub_274BF37B4();
}

uint64_t sub_274BE49E8(uint64_t a1, uint64_t *a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v22 = a4;
  v23 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v20 - v6;
  v8 = sub_274BF5724();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  v15 = *a2;
  v16 = a2[1];
  v20 = v15;
  swift_getAssociatedConformanceWitness();
  AnyAutocompleteResult.wrappedResult<A>()(AssociatedTypeWitness, v14);
  (*(v9 + 16))(v11, v14, v8);
  if (__swift_getEnumTagSinglePayload(v11, 1, AssociatedTypeWitness) == 1)
  {
    v17 = *(v9 + 8);
    v17(v14, v8);
    return (v17)(v11, v8);
  }

  else
  {
    v19 = v21;
    (*(v21 + 32))(v7, v11, AssociatedTypeWitness);
    v23(v7, v20, v16);
    (*(v19 + 8))(v7, AssociatedTypeWitness);
    return (*(v9 + 8))(v14, v8);
  }
}

unint64_t sub_274BE4C88()
{
  result = qword_28098F598;
  if (!qword_28098F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F598);
  }

  return result;
}

uint64_t sub_274BE4D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a2;
  v6[1] = a3;
  return v4(a1, v6);
}

uint64_t WFPhoneNumberContentItem.preview(configuration:)()
{
  sub_274BE4DB4();
  v1 = v0;
  return sub_274BF48B4();
}

unint64_t sub_274BE4DB4()
{
  result = qword_28098F5A0;
  if (!qword_28098F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F5A0);
  }

  return result;
}

id sub_274BE4E60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_274BF3804();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C048);
  return sub_274BE4EB8(a1, a2 + *(v4 + 44));
}

id sub_274BE4EB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C050);
  MEMORY[0x28223BE20](v65);
  v4 = &v56 - v3;
  v5 = sub_274BF3C04();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274BF1D34();
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C058);
  MEMORY[0x28223BE20](v64);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v56 - v12;
  v14 = sub_274BF1F54();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v67 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C060);
  MEMORY[0x28223BE20](v17 - 8);
  v63 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v62 = &v56 - v21;
  strcpy(v68, "telprompt://");
  BYTE5(v68[1]) = 0;
  HIWORD(v68[1]) = -5120;
  v22 = a1;
  result = [a1 phoneNumber];
  if (result)
  {
    v24 = result;
    v25 = [result string];

    v26 = sub_274BF4F44();
    v28 = v27;

    MEMORY[0x277C648E0](v26, v28);

    sub_274BF1F34();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {

      v38 = *(v15 + 32);
      v39 = v67;
      v57 = v14;
      v38(v67, v13, v14);
      sub_274BE5578(v22, v39);
      v40 = sub_274BF40F4();
      v42 = v41;
      v68[0] = v40;
      v68[1] = v41;
      v44 = v43 & 1;
      v69 = v43 & 1;
      v70 = v45;
      v46 = v59;
      sub_274BF3BF4();
      v47 = v61;
      sub_274BF4274();
      (*(v60 + 8))(v46, v47);
      sub_274AFA1D0(v40, v42, v44);

      KeyPath = swift_getKeyPath();
      v49 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD40) + 36)];
      *v49 = KeyPath;
      v49[8] = 0;
      v50 = sub_274BF45B4();
      v51 = swift_getKeyPath();
      v52 = &v10[*(v64 + 36)];
      *v52 = v51;
      v52[1] = v50;
      sub_274B066B4(v10, v4, &qword_28098C058);
      swift_storeEnumTagMultiPayload();
      sub_274B498A8();
      v37 = v62;
      sub_274BF3A64();
      sub_274B0671C(v10, &qword_28098C058);
      (*(v15 + 8))(v67, v57);
      goto LABEL_6;
    }

    sub_274B43660(v13);
    result = [v22 phoneNumber];
    if (result)
    {
      v29 = result;

      v30 = [v29 string];

      v31 = sub_274BF4F44();
      v33 = v32;

      v68[0] = v31;
      v68[1] = v33;
      sub_274ADDF6C();
      *v4 = sub_274BF4104();
      *(v4 + 1) = v34;
      v4[16] = v35 & 1;
      *(v4 + 3) = v36;
      swift_storeEnumTagMultiPayload();
      sub_274B498A8();
      v37 = v62;
      sub_274BF3A64();
LABEL_6:
      v53 = v63;
      sub_274B066B4(v37, v63, &qword_28098C060);
      v54 = v66;
      sub_274B066B4(v53, v66, &qword_28098C060);
      v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C070) + 48);
      *v55 = 0;
      *(v55 + 8) = 1;
      sub_274B0671C(v37, &qword_28098C060);
      return sub_274B0671C(v53, &qword_28098C060);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_274BE5578(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  v10 = sub_274BF1DA4();
  result = [a1 phoneNumber];
  if (result)
  {
    sub_274BE57CC(result);
    if (v12)
    {
LABEL_5:
      sub_274BF1D94();
      sub_274BF1D44();
      v15 = sub_274BF1F54();
      (*(*(v15 - 8) + 16))(v9, a2, v15);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
      sub_274B4359C(v9, v6);
      sub_274B4360C();
      sub_274BF1D54();
      sub_274B43660(v9);
      v16[1] = sub_274BF45B4();
      sub_274B436C8();
      return sub_274BF1D54();
    }

    result = [a1 phoneNumber];
    if (result)
    {
      v13 = result;
      v14 = [result string];

      sub_274BF4F44();
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_274BE57CC(void *a1)
{
  v2 = [a1 formattedPhoneNumber];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_274BF4F44();

  return v3;
}

uint64_t GlyphIconColorScheme.hash(into:)()
{
  if (*(v0 + 16) == 1)
  {
    sub_274BF5634();
  }

  return sub_274BF5634();
}

uint64_t static GlyphIconColorScheme.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if ((v2 & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      sub_274BE5A44();
      v13 = OUTLINED_FUNCTION_1_34();
      sub_274BE59B0(v13, v14, 0);
      v15 = OUTLINED_FUNCTION_19();
      sub_274BE59B0(v15, v16, 0);
      v8 = sub_274BF5624();
      v2 = 0;
      v3 = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
LABEL_6:
    v9 = OUTLINED_FUNCTION_1_34();
    sub_274BE59B0(v9, v10, v3);
    v11 = OUTLINED_FUNCTION_19();
    sub_274BE59B0(v11, v12, v2);
    v8 = 0;
    goto LABEL_10;
  }

  sub_274BE5A44();
  v2 = 1;
  v4 = OUTLINED_FUNCTION_1_34();
  sub_274BE59B0(v4, v5, 1);
  v6 = OUTLINED_FUNCTION_19();
  sub_274BE59B0(v6, v7, 1);
  if (sub_274BF5624())
  {
    v8 = sub_274BF5624();
  }

  else
  {
    v8 = 0;
  }

  v3 = 1;
LABEL_10:
  v17 = OUTLINED_FUNCTION_19();
  sub_274BE59EC(v17, v18, v2);
  v19 = OUTLINED_FUNCTION_1_34();
  sub_274BE59EC(v19, v20, v3);
  return v8 & 1;
}

id sub_274BE59B0(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    a1 = a2;
    v3 = vars8;
  }

  return a1;
}

void sub_274BE59EC(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

unint64_t sub_274BE5A44()
{
  result = qword_28098B310;
  if (!qword_28098B310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28098B310);
  }

  return result;
}

uint64_t GlyphIconColorScheme.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_274BF5CD4();
  if (v1 == 1)
  {
    sub_274BF5634();
  }

  sub_274BF5634();
  return sub_274BF5D44();
}

uint64_t sub_274BE5B00()
{
  sub_274BF5CD4();
  GlyphIconColorScheme.hash(into:)();
  return sub_274BF5D44();
}

unint64_t sub_274BE5B54()
{
  result = qword_28098F5A8;
  if (!qword_28098F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F5A8);
  }

  return result;
}

uint64_t sub_274BE5BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F5B0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F640);
  OUTLINED_FUNCTION_1();
  v24 = v11;
  v25 = v12;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  type metadata accessor for DebugSyncEventStore();
  OUTLINED_FUNCTION_6_22();
  sub_274BE8C24(v16, v17);
  v23 = a1;
  sub_274BF2F94();
  v18 = sub_274BE7F2C();

  sub_274BE5E74(v18, a3 & 1, v10);

  sub_274BF38A4();
  v19 = sub_274BE8048();
  sub_274BF42B4();

  sub_274AEF28C(v10);
  v27 = v23;
  v28 = a2;
  v29 = a3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F648);
  v30 = v7;
  v31 = v19;
  OUTLINED_FUNCTION_1_35();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_2();
  sub_274AFA930(v20, &qword_28098F648);
  v21 = v24;
  sub_274BF4474();
  return (*(v25 + 8))(v15, v21);
}

uint64_t sub_274BE5E74@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>)
{
  LODWORD(v33) = a2;
  v37 = a3;
  v4 = sub_274BF32B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F5D8);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v34 = v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F5E8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F5F0);
  MEMORY[0x28223BE20](v38);
  v14 = v31 - v13;
  if (sub_274B22B94(a1))
  {
    type metadata accessor for DebugSyncEventStore();
    sub_274BE8C24(&qword_28098F5B8, type metadata accessor for DebugSyncEventStore);
    sub_274BF2F94();
    v15 = sub_274BE7F2C();

    KeyPath = swift_getKeyPath();
    v33 = v4;
    v31[1] = v31;
    v39 = v15;
    MEMORY[0x28223BE20](KeyPath);
    v31[-4] = &v39;
    v31[-3] = v17;
    v29 = sub_274BE6400;
    v30 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F5F8);
    v32 = v9;
    sub_274BE8AB0();
    v18 = v34;
    sub_274BF4034();

    v19 = v36;
    sub_274BF32A4();
    v20 = sub_274AFA930(&qword_28098F5E0, &qword_28098F5D8);
    v21 = MEMORY[0x277CDD980];
    v22 = v33;
    sub_274BF44E4();
    (*(v5 + 8))(v19, v22);
    (*(v35 + 8))(v18, v7);
    v23 = v32;
    (*(v10 + 16))(v14, v12, v32);
    swift_storeEnumTagMultiPayload();
    v39 = v7;
    v40 = v22;
    v41 = v20;
    v42 = v21;
    swift_getOpaqueTypeConformance2();
    sub_274BF3A64();
    return (*(v10 + 8))(v12, v23);
  }

  else
  {
    sub_274BF38A4();
    *v14 = sub_274BF40E4();
    *(v14 + 1) = v25;
    v14[16] = v26 & 1;
    *(v14 + 3) = v27;
    swift_storeEnumTagMultiPayload();
    v28 = sub_274AFA930(&qword_28098F5E0, &qword_28098F5D8);
    v39 = v7;
    v40 = v4;
    v41 = v28;
    v42 = MEMORY[0x277CDD980];
    swift_getOpaqueTypeConformance2();
    return sub_274BF3A64();
  }
}

void *sub_274BE6400@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 eventType] == 12)
  {
    sub_274BE8BF4(__src);
  }

  else
  {
    v4 = sub_274BF3904();
    v6[144] = 0;
    sub_274BE7428(v3, __src);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v8, __src, sizeof(v8));
    sub_274AFA6A8(__dst, v9, &qword_28098F638);
    sub_274AFA708(v8, &qword_28098F638);
    memcpy(&v6[7], __dst, 0x88uLL);
    v9[0] = v4;
    v9[1] = 0;
    LOBYTE(v9[2]) = 0;
    memcpy(&v9[2] + 1, v6, 0x8FuLL);
    CGSizeMake(v9);
    memcpy(__src, v9, sizeof(__src));
  }

  return memcpy(a2, __src, 0xA0uLL);
}

uint64_t sub_274BE6528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v40 = a3;
  v38 = a1;
  v39 = a2;
  v49 = a4;
  v46 = sub_274BF1E84();
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_274BF1F54();
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBE8);
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v44 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v36 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989EA8);
  v37 = *(v41 - 8);
  v13 = v37;
  MEMORY[0x28223BE20](v41);
  v50 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  sub_274BF38A4();
  v18 = swift_allocObject();
  v19 = v39;
  *(v18 + 16) = v38;
  *(v18 + 24) = v19;
  *(v18 + 32) = v40 & 1;
  sub_274BA517C();
  v36 = v17;
  sub_274BF47E4();
  v20 = [objc_opt_self() wf_shortcutsDirectoryURL];
  sub_274BF1F04();

  v52 = 0x2E676F6C636E7973;
  v53 = 0xEA00000000006264;
  v21 = v43;
  v22 = v46;
  (*(v43 + 104))(v5, *MEMORY[0x277CC91D8], v46);
  sub_274ADDF6C();
  sub_274BF1F44();
  (*(v21 + 8))(v5, v22);
  (*(v45 + 8))(v7, v42);
  v23 = v51;
  sub_274BF4B44();
  v24 = *(v13 + 16);
  v25 = v50;
  v26 = v41;
  v24(v50, v17, v41);
  v28 = v47;
  v27 = v48;
  v29 = *(v47 + 16);
  v30 = v44;
  v29(v44, v23, v48);
  v31 = v49;
  v24(v49, v25, v26);
  v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F658) + 48)];
  v29(v32, v30, v27);
  v33 = *(v28 + 8);
  v33(v51, v27);
  v34 = *(v37 + 8);
  v34(v36, v26);
  v33(v30, v27);
  return (v34)(v50, v26);
}

uint64_t sub_274BE6A90()
{
  type metadata accessor for DebugSyncEventStore();
  sub_274BE8C24(&qword_28098F5B8, type metadata accessor for DebugSyncEventStore);
  [*(sub_274BF2F94() + 16) clearLogs];
}

uint64_t sub_274BE6B40@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  result = sub_274BF40E4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_274BE6BBC()
{
  type metadata accessor for DebugSyncEventStore();
  swift_allocObject();
  return sub_274BE7C6C();
}

uint64_t sub_274BE6BF4(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F5B0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  type metadata accessor for DebugSyncEventStore();
  OUTLINED_FUNCTION_6_22();
  sub_274BE8C24(v7, v8);
  sub_274BF2F94();
  v9 = sub_274BE7F2C();

  sub_274BE6D74(v9, a3 & 1, v6);

  sub_274BF38A4();
  sub_274BE8048();
  sub_274BF42B4();

  return sub_274AEF28C(v6);
}

uint64_t sub_274BE6D74@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>)
{
  LODWORD(v33) = a2;
  v37 = a3;
  v4 = sub_274BF32B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F5D8);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v34 = v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F5E8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F5F0);
  MEMORY[0x28223BE20](v38);
  v14 = v31 - v13;
  if (sub_274B22B94(a1))
  {
    type metadata accessor for DebugSyncEventStore();
    sub_274BE8C24(&qword_28098F5B8, type metadata accessor for DebugSyncEventStore);
    sub_274BF2F94();
    v15 = sub_274BE7F2C();

    KeyPath = swift_getKeyPath();
    v33 = v4;
    v31[1] = v31;
    v39 = v15;
    MEMORY[0x28223BE20](KeyPath);
    v31[-4] = &v39;
    v31[-3] = v17;
    v29 = sub_274BE7300;
    v30 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F5F8);
    v32 = v9;
    sub_274BE8AB0();
    v18 = v34;
    sub_274BF4034();

    v19 = v36;
    sub_274BF32A4();
    v20 = sub_274AFA930(&qword_28098F5E0, &qword_28098F5D8);
    v21 = MEMORY[0x277CDD980];
    v22 = v33;
    sub_274BF44E4();
    (*(v5 + 8))(v19, v22);
    (*(v35 + 8))(v18, v7);
    v23 = v32;
    (*(v10 + 16))(v14, v12, v32);
    swift_storeEnumTagMultiPayload();
    v39 = v7;
    v40 = v22;
    v41 = v20;
    v42 = v21;
    swift_getOpaqueTypeConformance2();
    sub_274BF3A64();
    return (*(v10 + 8))(v12, v23);
  }

  else
  {
    sub_274BF38A4();
    *v14 = sub_274BF40E4();
    *(v14 + 1) = v25;
    v14[16] = v26 & 1;
    *(v14 + 3) = v27;
    swift_storeEnumTagMultiPayload();
    v28 = sub_274AFA930(&qword_28098F5E0, &qword_28098F5D8);
    v39 = v7;
    v40 = v4;
    v41 = v28;
    v42 = MEMORY[0x277CDD980];
    swift_getOpaqueTypeConformance2();
    return sub_274BF3A64();
  }
}

void *sub_274BE7300@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 eventType] == 12)
  {
    v4 = sub_274BF3904();
    v6[144] = 0;
    sub_274BE7428(v3, __src);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v8, __src, sizeof(v8));
    sub_274AFA6A8(__dst, v9, &qword_28098F638);
    sub_274AFA708(v8, &qword_28098F638);
    memcpy(&v6[7], __dst, 0x88uLL);
    v9[0] = v4;
    v9[1] = 0;
    LOBYTE(v9[2]) = 0;
    memcpy(&v9[2] + 1, v6, 0x8FuLL);
    CGSizeMake(v9);
    memcpy(__src, v9, sizeof(__src));
  }

  else
  {
    sub_274BE8BF4(__src);
  }

  return memcpy(a2, __src, 0xA0uLL);
}

uint64_t sub_274BE7428@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - v4;
  v38 = sub_274BF3804();
  v42 = 1;
  v35 = a1;
  sub_274BE77CC(a1, v40);
  memcpy(__dst, v40, sizeof(__dst));
  memcpy(v44, v40, 0x50uLL);
  sub_274AFA6A8(__dst, v39, &qword_28098BAD0);
  sub_274AFA708(v44, &qword_28098BAD0);
  memcpy(&v41[7], __dst, 0x50uLL);
  v36 = v42;
  v6 = [a1 content];
  sub_274BF4DF4();

  v7 = sub_274BF4E04();
  v9 = v8;

  v40[0] = v7;
  v40[1] = v9;
  sub_274ADDF6C();
  v10 = sub_274BF4104();
  v12 = v11;
  v14 = v13;
  v15 = sub_274BF3EF4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v15);
  sub_274BF3F44();
  sub_274AFA708(v5, &qword_280989DC0);
  v16 = sub_274BF40D4();
  v18 = v17;
  v20 = v19;

  sub_274AFA1D0(v10, v12, v14 & 1);

  if ([v35 eventType] == 11)
  {
    v21 = sub_274BF45A4();
  }

  else
  {
    v21 = sub_274BF4644();
  }

  v40[0] = v21;
  v22 = sub_274BF40A4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_274AFA1D0(v16, v18, v20 & 1);

  v29 = v38;
  v39[0] = v38;
  v39[1] = 0;
  v30 = v36;
  LOBYTE(v39[2]) = v36;
  memcpy(&v39[2] + 1, v41, 0x57uLL);
  v31 = v26 & 1;
  v42 = v26 & 1;
  v32 = v37;
  memcpy(v37, v39, 0x68uLL);
  v32[13] = v22;
  v32[14] = v24;
  *(v32 + 120) = v31;
  v32[16] = v28;
  sub_274AFA6A8(v39, v40, &qword_28098BB18);
  sub_274AF396C(v22, v24, v31);

  sub_274AFA1D0(v22, v24, v31);

  v40[0] = v29;
  v40[1] = 0;
  LOBYTE(v40[2]) = v30;
  memcpy(&v40[2] + 1, v41, 0x57uLL);
  return sub_274AFA708(v40, &qword_28098BB18);
}

uint64_t sub_274BE77CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  sub_274BF1FC4();
  OUTLINED_FUNCTION_1();
  v71 = v5;
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  sub_274BF1FF4();
  OUTLINED_FUNCTION_1();
  v69 = v10;
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  sub_274BF2114();
  OUTLINED_FUNCTION_1();
  v67 = v15;
  v68 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0);
  OUTLINED_FUNCTION_6_0();
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v59 - v21;
  [a1 eventType];
  v23 = NSStringFromSyncEventType();
  v24 = sub_274BF4F44();
  v26 = v25;

  v76 = v24;
  v77 = v26;
  v62 = sub_274ADDF6C();
  v27 = sub_274BF4104();
  v29 = v28;
  LOBYTE(v26) = v30;
  v61 = sub_274BF3EF4();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v61);
  sub_274BF3F44();
  sub_274AFA708(v22, &qword_280989DC0);
  v31 = sub_274BF40D4();
  v64 = v32;
  v65 = v31;
  v63 = v33;
  v66 = v34;

  sub_274AFA1D0(v27, v29, v26 & 1);

  v35 = [v60 date];
  sub_274BF20C4();

  sub_274BF1FB4();
  sub_274BF1FA4();
  v36 = sub_274BF20D4();
  v38 = v37;
  (*(v71 + 8))(v8, v72);
  (*(v69 + 8))(v13, v70);
  (*(v67 + 8))(v18, v68);
  v76 = v36;
  v77 = v38;
  v39 = sub_274BF4104();
  v41 = v40;
  v43 = v42;
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v61);
  sub_274BF3F44();
  sub_274AFA708(v22, &qword_280989DC0);
  v44 = sub_274BF40D4();
  v46 = v45;
  LOBYTE(v22) = v47;
  v49 = v48;

  sub_274AFA1D0(v39, v41, v43 & 1);

  v50 = v63 & 1;
  LOBYTE(v76) = v63 & 1;
  v75 = v63 & 1;
  v74 = 1;
  v73 = v22 & 1;
  v52 = v64;
  v51 = v65;
  *a2 = v65;
  *(a2 + 8) = v52;
  *(a2 + 16) = v50;
  *(a2 + 24) = v66;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v44;
  *(a2 + 56) = v46;
  *(a2 + 64) = v22 & 1;
  *(a2 + 72) = v49;
  v53 = v51;
  sub_274AF396C(v51, v52, v50);

  v54 = OUTLINED_FUNCTION_11_15();
  sub_274AF396C(v54, v55, v22 & 1);

  v56 = OUTLINED_FUNCTION_11_15();
  sub_274AFA1D0(v56, v57, v22 & 1);

  sub_274AFA1D0(v53, v52, v76);
}

uint64_t sub_274BE7C6C()
{
  v1 = v0;
  *(v0 + 16) = [objc_opt_self() createPersistedSyncEventLogger];
  *(v0 + 24) = 0;
  v2 = (v0 + 24);
  v3 = *MEMORY[0x277D7CBE0];
  sub_274AD8430(0, &qword_280989F80);
  v4 = sub_274BF5504();
  v7[4] = sub_274BE8C6C;
  v7[5] = v1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_274BE7E40;
  v7[3] = &block_descriptor_20;
  v5 = _Block_copy(v7);

  swift_beginAccess();
  notify_register_dispatch(v3, v2, v4, v5);
  swift_endAccess();
  _Block_release(v5);

  return v1;
}

uint64_t sub_274BE7DB8()
{
  type metadata accessor for DebugSyncEventStore();
  sub_274BE8C24(&qword_28098F5B8, type metadata accessor for DebugSyncEventStore);
  sub_274BF2CE4();
  sub_274BF2D04();
}

uint64_t sub_274BE7E40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_274BE7E94()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 24));

  return v0;
}

uint64_t sub_274BE7ED8()
{
  v0 = sub_274BE7E94();

  return MEMORY[0x2821FE8D8](v0, 28, 7);
}

uint64_t sub_274BE7F2C()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = [v1 events];
  sub_274AD8430(0, &qword_28098F680);
  v3 = sub_274BF5144();

  return v3;
}

uint64_t sub_274BE8008@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DebugSyncEventStore();
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

unint64_t sub_274BE8048()
{
  result = qword_28098F5C0;
  if (!qword_28098F5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F5B0);
    sub_274BE80CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F5C0);
  }

  return result;
}

unint64_t sub_274BE80CC()
{
  result = qword_28098F5C8;
  if (!qword_28098F5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F5D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F5D8);
    sub_274BF32B4();
    sub_274AFA930(&qword_28098F5E0, &qword_28098F5D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F5C8);
  }

  return result;
}

uint64_t sub_274BE81E8()
{
  OUTLINED_FUNCTION_3_32();
  OUTLINED_FUNCTION_35();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_10_12(v0);

  v1 = OUTLINED_FUNCTION_11_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D7C8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_11(v2);
  v3 = OUTLINED_FUNCTION_8_20(&qword_28098D7C0);
  OUTLINED_FUNCTION_2_35(v3, v4, v5, v6, v7, v8, v9, MEMORY[0x277D837E0], v3, v11);
  return sub_274BF4944();
}

uint64_t sub_274BE82DC()
{
  OUTLINED_FUNCTION_3_32();
  OUTLINED_FUNCTION_35();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_10_12(v0);

  v1 = OUTLINED_FUNCTION_11_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_11(v2);
  v3 = sub_274AFA930(&qword_28098F698, &qword_28098BCC0);
  OUTLINED_FUNCTION_2_35(v3, v4, v5, v6, v7, MEMORY[0x277CE0BD8], v8, v3, MEMORY[0x277CE0BC8], v10);
  return sub_274BF4944();
}

uint64_t sub_274BE83CC()
{
  OUTLINED_FUNCTION_3_32();
  OUTLINED_FUNCTION_35();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_10_12(v0);

  v1 = OUTLINED_FUNCTION_11_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_11(v2);
  sub_274BE8C24(&qword_28098F678, type metadata accessor for LogStreamManager.LogEvent);
  v3 = sub_274BAD3F0();
  OUTLINED_FUNCTION_2_35(v3, v4, v5, v6, v7, &type metadata for LogRow, v8, v9, v3, v11);
  return sub_274BF4944();
}

uint64_t sub_274BE84C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_35();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
  OUTLINED_FUNCTION_3_1();
  sub_274AFA930(v7, &qword_280989650);
  return sub_274BF4944();
}

uint64_t sub_274BE85C0()
{
  OUTLINED_FUNCTION_3_32();
  OUTLINED_FUNCTION_35();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_10_12(v0);

  v1 = OUTLINED_FUNCTION_11_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E5A8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_11(v2);
  v3 = OUTLINED_FUNCTION_8_20(&qword_28098E5A0);
  OUTLINED_FUNCTION_2_35(v3, v4, v5, v6, v7, v8, v9, MEMORY[0x277D837E0], v3, v11);
  return sub_274BF4944();
}

uint64_t sub_274BE86B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F610);
  sub_274AFA930(&qword_28098F630, &qword_28098F628);
  sub_274BE8B34();
  return sub_274BF4944();
}

uint64_t sub_274BE87E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  return a4(v5);
}

uint64_t sub_274BE8820(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t sub_274BE8860(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  v5[0] = a1;
  v5[1] = a2;
  a3(&v4, v5);
  return v4;
}

void *sub_274BE8900@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t *)@<X1>, void *a3@<X8>)
{
  v7 = a1;
  a2(__src, &v7);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v9, __src, sizeof(v9));
  sub_274AFA6A8(__dst, v5, &qword_28098F610);
  sub_274AFA708(v9, &qword_28098F610);
  return memcpy(a3, __dst, 0xA0uLL);
}

uint64_t sub_274BE89D0@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  result = sub_274BE8820(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274BE89FC@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *)@<X1>, uint64_t a3@<X8>)
{
  result = sub_274BE8860(*a1, a1[1], a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

unint64_t sub_274BE8AB0()
{
  result = qword_28098F600;
  if (!qword_28098F600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F5F8);
    sub_274BE8B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F600);
  }

  return result;
}

unint64_t sub_274BE8B34()
{
  result = qword_28098F608;
  if (!qword_28098F608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F610);
    sub_274AFA930(&qword_28098F618, &qword_28098F620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098F608);
  }

  return result;
}

uint64_t sub_274BE8C24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_28099B9C0 == -1)
  {
    if (qword_28099B9C8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_28099B9C8)
    {
      return _availability_version_check();
    }
  }

  if (qword_28099B9B8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_28099B9AC > a3)
      {
        return 1;
      }

      if (dword_28099B9AC >= a3)
      {
        return dword_28099B9B0 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_28099B9C8;
  if (qword_28099B9C8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_28099B9C8 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x277C65B90](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_28099B9AC, &dword_28099B9B0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_274BE9800(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

uint64_t WFReturnKeyTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D7A678]])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A690]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A698]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A6A0]])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A6A8]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A6B0]])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A6B8]])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A6C0]])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A6C8]])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A680]])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A688]])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A670]])
  {
    v2 = 11;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id WFReturnKeyTypeFromType(uint64_t a1)
{
  if ((a1 - 1) > 0xA)
  {
    v1 = MEMORY[0x277D7A678];
  }

  else
  {
    v1 = qword_279EF50B8[a1 - 1];
  }

  return *v1;
}

uint64_t WFAutocapitalizationTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D7A5C0]])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A5D0]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A5C8]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A5B8]])
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

id WFAutocapitalizationTypeFromType(unint64_t a1)
{
  if (a1 > 3)
  {
    v1 = MEMORY[0x277D7A5C8];
  }

  else
  {
    v1 = qword_279EF5110[a1];
  }

  return *v1;
}

uint64_t WFClearButtonModeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D7A5F8]])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A608]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A600]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A5F0]])
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

id WFClearButtonModeFromMode(unint64_t a1)
{
  if (a1 > 3)
  {
    v1 = MEMORY[0x277D7A608];
  }

  else
  {
    v1 = qword_279EF5130[a1];
  }

  return *v1;
}

uint64_t WFKeyboardTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D7A610]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A648]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A660]])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A640]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A650]])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A638]])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A630]])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A620]])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A658]])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A668]])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A618]])
  {
    v2 = 11;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t WFAutocorrectionTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D7A5D8]])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A5E0]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A5E8]])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id WFTextContentTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D7A750]])
  {
    v2 = MEMORY[0x277D76FF0];
LABEL_55:
    v3 = *v2;
    goto LABEL_56;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A758]])
  {
    v2 = MEMORY[0x277D76FF8];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A730]])
  {
    v2 = MEMORY[0x277D76FD0];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A748]])
  {
    v2 = MEMORY[0x277D76FE8];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A720]])
  {
    v2 = MEMORY[0x277D76FC0];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A760]])
  {
    v2 = MEMORY[0x277D77000];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A770]])
  {
    v2 = MEMORY[0x277D77010];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A738]])
  {
    v2 = MEMORY[0x277D76FD8];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A780]])
  {
    v2 = MEMORY[0x277D77028];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A740]])
  {
    v2 = MEMORY[0x277D76FE0];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A728]])
  {
    v2 = MEMORY[0x277D76FC8];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A798]])
  {
    v2 = MEMORY[0x277D77040];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A7A0]])
  {
    v2 = MEMORY[0x277D77048];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A6F0]])
  {
    v2 = MEMORY[0x277D76F48];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A700]])
  {
    v2 = MEMORY[0x277D76F58];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A6F8]])
  {
    v2 = MEMORY[0x277D76F50];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A7A8]])
  {
    v2 = MEMORY[0x277D77050];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A708]])
  {
    v2 = MEMORY[0x277D76F60];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A790]])
  {
    v2 = MEMORY[0x277D77038];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A7B0]])
  {
    v2 = MEMORY[0x277D77080];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A718]])
  {
    v2 = MEMORY[0x277D76FB8];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A7B8]])
  {
    v2 = MEMORY[0x277D77088];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A710]])
  {
    v2 = MEMORY[0x277D76F98];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A7C0]])
  {
    v2 = MEMORY[0x277D77090];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A788]])
  {
    v2 = MEMORY[0x277D77030];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A768]])
  {
    v2 = MEMORY[0x277D77008];
    goto LABEL_55;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D7A778]])
  {
    v2 = MEMORY[0x277D77020];
    goto LABEL_55;
  }

  v3 = 0;
LABEL_56:

  return v3;
}

uint64_t WFTextAlignmentFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D7A6E8]])
  {
    v2 = [MEMORY[0x277CFC248] sharedContext];
    if ([v2 shouldReverseLayoutDirection])
    {
      v3 = 0;
    }

    else
    {
      v3 = 2;
    }
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A6D0]])
  {
    v3 = 1;
  }

  else
  {
    v3 = 4;
  }

  return v3;
}

id WFTextAlignmentFromAlignment(unint64_t a1)
{
  if (a1 > 4)
  {
    v1 = MEMORY[0x277D7A6E0];
  }

  else
  {
    v1 = qword_279EF5150[a1];
  }

  return *v1;
}

id WFLocalizedString(void *a1)
{
  v1 = a1;
  v2 = WFCurrentBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id WFCurrentBundle()
{
  if (WFCurrentBundle_onceToken != -1)
  {
    dispatch_once(&WFCurrentBundle_onceToken, &__block_literal_global_396);
  }

  v1 = WFCurrentBundle_bundle;

  return v1;
}

void __WFCurrentBundle_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v4, 0, sizeof(v4));
  if (dladdr(WFCurrentBundle, &v4) && v4.dli_fname)
  {
    v0 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v4.dli_fname isDirectory:0 relativeToURL:0];
    v1 = _CFBundleCopyBundleURLForExecutableURL();
    v2 = [MEMORY[0x277CCA8D8] bundleWithURL:v1];
    v3 = WFCurrentBundle_bundle;
    WFCurrentBundle_bundle = v2;
  }

  else
  {
    v0 = getWFGeneralLogObject();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&dword_274AD4000, v0, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }
}

id WFViewControllerFromUserInterface(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 conformsToProtocol:&unk_2883FEB40])
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 viewController];

  return v5;
}

void WFPostAccessibilityAnnouncement(void *a1)
{
  argument = a1;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    UIAccessibilityPostNotification(*MEMORY[0x277D76438], argument);
  }
}

void sub_274BF0F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_274BF13C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WFDatePickerModeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D7A3B0]])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D7A3A0]])
  {
    v2 = 1;
  }

  else
  {
    [v1 isEqualToString:*MEMORY[0x277D7A3A8]];
    v2 = 2;
  }

  return v2;
}

id WFDatePickerModeFromMode(unint64_t a1)
{
  if (a1 > 2)
  {
    v1 = MEMORY[0x277D7A3A8];
  }

  else
  {
    v1 = qword_279EF52F8[a1];
  }

  return *v1;
}

id LNActionConfigurationContextWidgetFamilyFromCHSWidgetFamily(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) <= 0xB && ((0xE0Fu >> v2))
  {
    v3 = **(&unk_279EF5310 + v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INCodableAttributeArraySizeClassFromCHSWidgetFamily(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) <= 0xB && ((0xE0Fu >> v2))
  {
    v3 = **(&unk_279EF5370 + v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}