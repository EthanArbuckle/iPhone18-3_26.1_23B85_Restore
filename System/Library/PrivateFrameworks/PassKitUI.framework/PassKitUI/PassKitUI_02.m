uint64_t sub_1BD06CB3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for ContactEditingSection();
  v27 = *(*(v6 - 1) + 80);

  v26 = *(v3 + 8);
  v26(v0 + v4, v1);
  v7 = v0 + ((v4 + v5 + v27) & ~v27);

  v8 = v7 + v6[13];

  sub_1BE0534B4();
  v9 = *(sub_1BE051964() + 32);
  v10 = *(v3 + 48);
  if (!v10(v8 + v9, 1, v1))
  {
    v26(v8 + v9, v1);
  }

  if (*(v7 + v6[15]))
  {
  }

  v11 = v6[21];
  v12 = *(v2 - 8);
  if (!(*(v12 + 48))(v7 + v11, 1, v2))
  {
    (*(v12 + 8))(v7 + v11, v2);
  }

  v13 = v7 + v6[22];
  if (*(v13 + 24))
  {
    sub_1BD0DDF10(*v13, *(v13 + 8), *(v13 + 16));
  }

  v14 = v7 + v6[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
    {

      v16 = *(v15 + 32);
      v17 = sub_1BE051AD4();
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  else
  {
  }

  v18 = v7 + v6[24];
  if (!v10(v18, 1, v1))
  {
    v26(v18, v1);
  }

  sub_1BE0516D4();

  v19 = v7 + v6[25];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 48);
  if (!v22(v19, 1, AssociatedTypeWitness))
  {
    (*(v21 + 8))(v19, AssociatedTypeWitness);
  }

  sub_1BE0534B4();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v23 = sub_1BE04E294();

  v24 = *(v23 + 40);
  if (!v22(v19 + v24, 1, AssociatedTypeWitness))
  {
    (*(v21 + 8))(v19 + v24, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD06D094()
{
  swift_getTupleTypeMetadata2();
  sub_1BE052804();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ContactFormItemRow();
  type metadata accessor for ListRowGestureActionsModifier();
  sub_1BE04EBD4();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1BE0519E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D4A0);
  sub_1BE04EBD4();
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD469C0);
  sub_1BE04F9B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E98);
  sub_1BE051A64();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD45200);
  swift_getWitnessTable();
  sub_1BD12E194();
  swift_getWitnessTable();
  sub_1BD35CEE0();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD469C8);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  return swift_getWitnessTable();
}

uint64_t sub_1BD06D374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE048724();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD06D430(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE048724();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD06D52C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06D574()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD06D5AC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD06D5E4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06D624@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1BD06D6DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_bundleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_1BE048C84();
}

uint64_t sub_1BD06D744(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD06D800(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD06D8C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD06D984(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD06DA34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD06DAF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD06DBF4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46C80);
  sub_1BE04ECF4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46C78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46CB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46C70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46C98);
  sub_1BD0DE4F4(&qword_1EBD46CA0, &qword_1EBD46C70);
  sub_1BD0DE4F4(&qword_1EBD46CA8, &qword_1EBD46C98);
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  sub_1BD0DE4F4(&qword_1EBD46CB8, &qword_1EBD46CB0);
  swift_getOpaqueTypeConformance2();
  sub_1BD471A78(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD06DE1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46D30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46CB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46D28);
  sub_1BE04ECF4();
  sub_1BD0DE4F4(&qword_1EBD46D58, &qword_1EBD46D28);
  sub_1BD471A78(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  sub_1BD0DE4F4(&qword_1EBD46CB8, &qword_1EBD46CB0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD06DFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46DE8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD06E114(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46DE8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD06E264()
{
  v1 = type metadata accessor for SavingsView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE050144();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1BD0D45CC();
  sub_1BD0D45CC();
  v5 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1BE04EB24();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  if (*(v2 + v1[17]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD06E778()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD06E7B0()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD06E808()
{
  v1 = *(type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v5 = sub_1BE04B7C4();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v2, 1, v5))
    {
      (*(v6 + 8))(v0 + v2, v5);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  if (*(v0 + v3))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD06E980()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD06E9D0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD06EA14()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD06EA6C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD06EAA4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06EAE4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD06EB1C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06EBFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD06EC28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47370);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD06ECE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47370);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD06ED94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47398);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD06EE6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BD06EEE0@<X0>(void *a1@<X8>)
{
  result = sub_1BD492F00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD06EF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE04CF34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD06EFB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE04CF34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD06F058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD06F120(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD06F1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WrappedPass(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BD06F2B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WrappedPass(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1BD06F36C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for WrappedPass(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[10];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[14]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1BD06F52C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for WrappedPass(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[14]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[10];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BD06F6E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD06F7A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD06F854()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD06F88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47620);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BD06F958(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47620);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD06FA28()
{
  v1 = (type metadata accessor for FinanceKitPredictedTransactionDetailView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[7];
  v4 = sub_1BE049BF4();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47620);

  return swift_deallocObject();
}

uint64_t sub_1BD06FB48()
{
  v1 = (type metadata accessor for FinanceKitPredictedTransactionDetailView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[7];
  v4 = sub_1BE049BF4();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47620);

  return swift_deallocObject();
}

uint64_t sub_1BD06FCCC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD06FD04()
{
  v1 = sub_1BE04E0B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD06FDCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47740);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD06FEB4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD06FEF4()
{
  v1 = sub_1BE04E084();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD06FFD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentTransferMonitor_receiveState;
  swift_beginAccess();
  return sub_1BD26681C(v3 + v4, a2);
}

uint64_t sub_1BD070038()
{
  v1 = *(type metadata accessor for NearbyPeerPaymentReceiverState(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43AE0);
      v5 = *(v4 - 8);
      if (!(*(v5 + 48))(v0 + v2, 1, v4))
      {
        (*(v5 + 8))(v0 + v2, v4);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + v2);
  }

LABEL_13:

  return swift_deallocObject();
}

uint64_t sub_1BD0701F0()
{
  v1 = *(type metadata accessor for NearbyPeerPaymentReceiverState(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43AE0);
      v5 = *(v4 - 8);
      if (!(*(v5 + 48))(v0 + v2, 1, v4))
      {
        (*(v5 + 8))(v0 + v2, v4);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + v2);
  }

LABEL_13:

  return swift_deallocObject();
}

uint64_t sub_1BD07039C()
{
  v1 = sub_1BE04E0B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD070464()
{

  return swift_deallocObject();
}

uint64_t sub_1BD07049C()
{
  v1 = sub_1BE04E0E4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD070560()
{
  v1 = sub_1BE04E084();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1BE04E0B4();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1BD0706B0()
{
  v1 = sub_1BE04C4C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD07077C()
{
  v1 = sub_1BE04C4C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD070848()
{

  return swift_deallocObject();
}

uint64_t sub_1BD070880()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47740);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BD070958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD478E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0709C8()
{

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD070A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD070AA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47908);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD070B2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD070BE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD070C98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Passes(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[12]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);
    if (*(*(v15 - 8) + 84) == a2)
    {
      v7 = v15;
      v8 = *(v15 - 8);
      v9 = a3[30];
      goto LABEL_7;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v7 = v16;
      v8 = *(v16 - 8);
      v9 = a3[32];
      goto LABEL_7;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[40];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1BD070F1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Passes(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[12]) = (a2 - 1);
    return result;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[30];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[32];
    goto LABEL_7;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[40];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1BD0711A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD071268(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD071330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0713A0()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v263 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v2 = v0 + ((v263 + 32) & ~v263);
  v3 = (v2 + v1[6]);
  v4 = type metadata accessor for AvailablePass(0);
  v5 = *(*(v4 - 1) + 48);
  v264 = v5;
  v265 = v4;
  if (!v5(v3, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v7 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v8 = sub_1BE04CF34();
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v9 = v3 + v4[6];
    v10 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 20);
      v12 = sub_1BE04DA84();
      (*(*(v12 - 8) + 8))(&v9[v11], v12);
    }

    v13 = (v3 + v4[7]);
    v14 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 28);
      v16 = sub_1BE04AF64();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v13 + v15, 1, v16))
      {
        (*(v17 + 8))(v13 + v15, v16);
      }
    }

    v18 = v3 + v4[10];
    v19 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      if (*(v18 + 2) != 1)
      {
      }

      if (*(v18 + 9) != 1)
      {
      }

      v20 = *(v19 + 28);
      v21 = sub_1BE04AF64();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      if (!v23(&v18[v20], 1, v21))
      {
        (*(v22 + 8))(&v18[v20], v21);
      }

      v24 = *(v19 + 32);
      v25 = v23(&v18[v24], 1, v21);
      v5 = v264;
      v4 = v265;
      if (!v25)
      {
        (*(v22 + 8))(&v18[v24], v21);
      }
    }

    v26 = (v3 + v4[12]);
    if (*v26)
    {
    }

    v27 = (v3 + v4[13]);
    if (*v27)
    {
    }
  }

  v28 = type metadata accessor for Passes(0);

  v29 = v2 + v1[7];
  if (*(v29 + 48))
  {
    sub_1BD0D455C(*v29, *(v29 + 8), *(v29 + 16));
  }

  v30 = (v2 + v1[8]);
  v31 = type metadata accessor for PeerPaymentModel();
  v32 = *(*(v31 - 1) + 48);
  if (!v32(v30, 1, v31))
  {

    v33 = (v30 + v31[5]);
    type metadata accessor for WrappedPass(0);
    v34 = swift_getEnumCaseMultiPayload();
    v256 = v28;
    if (v34 == 2)
    {

      v35 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v36 = sub_1BE04CF34();
      (*(*(v36 - 8) + 8))(v33 + v35, v36);
    }

    else if (v34 <= 1)
    {
    }

    v251 = v32;
    v37 = v33 + v4[6];
    v38 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {

      v39 = *(v38 + 20);
      v40 = sub_1BE04DA84();
      (*(*(v40 - 8) + 8))(&v37[v39], v40);
    }

    v41 = (v33 + v4[7]);
    v42 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
    {

      v43 = *(v42 + 28);
      v44 = sub_1BE04AF64();
      v45 = *(v44 - 8);
      if (!(*(v45 + 48))(v41 + v43, 1, v44))
      {
        (*(v45 + 8))(v41 + v43, v44);
      }
    }

    v46 = v33 + v4[10];
    v47 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
    {
      if (*(v46 + 2) != 1)
      {
      }

      v247 = v31;
      if (*(v46 + 9) != 1)
      {
      }

      v48 = *(v47 + 28);
      v49 = sub_1BE04AF64();
      v254 = *(v49 - 8);
      v50 = *(v254 + 48);
      if (!v50(&v46[v48], 1, v49))
      {
        (*(v254 + 8))(&v46[v48], v49);
      }

      v51 = *(v47 + 32);
      v31 = v247;
      if (!v50(&v46[v51], 1, v49))
      {
        (*(v254 + 8))(&v46[v51], v49);
      }
    }

    v4 = v265;
    v52 = (v33 + v265[12]);
    v28 = v256;
    v32 = v251;
    if (*v52)
    {
    }

    v53 = (v33 + v265[13]);
    v5 = v264;
    if (*v53)
    {
    }

    v54 = (v30 + v31[6]);
    if (*v54 != 1)
    {

      if (v54[3])
      {
      }
    }
  }

  v55 = v2 + v1[9];
  v56 = _s14PaymentSummaryVMa();
  if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
  {

    v253 = _s11TotalAmountVMa(0);
    v57 = v55 + *(v253 + 40);
    _s22SummaryItemPricingTypeOMa(0);
    v58 = swift_getEnumCaseMultiPayload();
    v250 = v56;
    v255 = v55;
    if (v58 == 2)
    {
    }

    else if (v58 == 1)
    {
      v66 = sub_1BE04AF64();
      (*(*(v66 - 8) + 8))(v57, v66);
    }

    else
    {
      v59 = v253;
      if (v58)
      {
LABEL_67:
        v67 = v5;
        v68 = v255;

        v69 = (v255 + v59[15]);
        v70 = v32(v69, 1, v31);
        v71 = v265;
        if (!v70)
        {

          v262 = v69;
          v72 = (v69 + v31[5]);
          type metadata accessor for WrappedPass(0);
          v73 = v72;
          v74 = swift_getEnumCaseMultiPayload();
          v257 = v28;
          if (v74 == 2)
          {

            v77 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v78 = sub_1BE04CF34();
            (*(*(v78 - 8) + 8))(v73 + v77, v78);
            v75 = v265;
            v76 = v73;
          }

          else
          {
            v75 = v265;
            if (v74 == 1)
            {
              v76 = v72;
            }

            else
            {
              v76 = v72;
              if (!v74)
              {
              }
            }
          }

          v249 = v31;
          v79 = v76 + v75[6];
          v80 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
          {

            v81 = *(v80 + 20);
            v82 = sub_1BE04DA84();
            (*(*(v82 - 8) + 8))(&v79[v81], v82);
          }

          v83 = (v76 + v75[7]);
          v84 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
          {

            v85 = *(v84 + 28);
            v86 = sub_1BE04AF64();
            v87 = *(v86 - 8);
            if (!(*(v87 + 48))(v83 + v85, 1, v86))
            {
              (*(v87 + 8))(v83 + v85, v86);
            }
          }

          v88 = v76 + v75[10];
          v89 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v89 - 8) + 48))(v88, 1, v89))
          {
            if (*(v88 + 2) != 1)
            {
            }

            if (*(v88 + 9) != 1)
            {
            }

            v90 = *(v89 + 28);
            v91 = sub_1BE04AF64();
            v92 = *(v91 - 8);
            v93 = *(v92 + 48);
            if (!v93(&v88[v90], 1, v91))
            {
              (*(v92 + 8))(&v88[v90], v91);
            }

            v94 = *(v89 + 32);
            if (!v93(&v88[v94], 1, v91))
            {
              (*(v92 + 8))(&v88[v94], v91);
            }
          }

          v95 = (v76 + v265[12]);
          v28 = v257;
          if (*v95)
          {
          }

          v96 = (v76 + v265[13]);
          if (*v96)
          {
          }

          v97 = (v262 + v249[6]);
          if (*v97 != 1)
          {

            if (v97[3])
            {
            }
          }

          v71 = v265;
          v67 = v264;

          v59 = v253;
          v68 = v255;
        }

        v98 = (v68 + v59[16]);
        v5 = v67;
        v4 = v71;
        if (!(*(*(v28 - 8) + 48))(v98, 1, v28))
        {
          if (!v67(v98, 1, v71))
          {
            type metadata accessor for WrappedPass(0);
            v99 = swift_getEnumCaseMultiPayload();
            v258 = v28;
            if (v99 == 2)
            {

              v100 = *(type metadata accessor for PlaceholderPass(0) + 28);
              v101 = sub_1BE04CF34();
              (*(*(v101 - 8) + 8))(v98 + v100, v101);
            }

            else if (v99 <= 1)
            {
            }

            v102 = v98 + v71[6];
            v103 = type metadata accessor for IdentityCredential(0);
            if (!(*(*(v103 - 8) + 48))(v102, 1, v103))
            {

              v104 = *(v103 + 20);
              v105 = sub_1BE04DA84();
              (*(*(v105 - 8) + 8))(&v102[v104], v105);
            }

            v106 = (v98 + v71[7]);
            v107 = type metadata accessor for BalanceInfo(0);
            if (!(*(*(v107 - 8) + 48))(v106, 1, v107))
            {

              v108 = *(v107 + 28);
              v109 = sub_1BE04AF64();
              v110 = *(v109 - 8);
              if (!(*(v110 + 48))(v106 + v108, 1, v109))
              {
                (*(v110 + 8))(v106 + v108, v109);
              }
            }

            v111 = v98 + v4[10];
            v112 = type metadata accessor for PassEligibleRewardsInfo();
            if (!(*(*(v112 - 8) + 48))(v111, 1, v112))
            {
              if (*(v111 + 2) != 1)
              {
              }

              if (*(v111 + 9) != 1)
              {
              }

              v113 = *(v112 + 28);
              v114 = sub_1BE04AF64();
              v115 = *(v114 - 8);
              v116 = *(v115 + 48);
              if (!v116(&v111[v113], 1, v114))
              {
                (*(v115 + 8))(&v111[v113], v114);
              }

              v117 = *(v112 + 32);
              if (!v116(&v111[v117], 1, v114))
              {
                (*(v115 + 8))(&v111[v117], v114);
              }
            }

            v4 = v265;
            v118 = (v98 + v265[12]);
            v28 = v258;
            if (*v118)
            {
            }

            v119 = (v98 + v265[13]);
            v5 = v264;
            if (*v119)
            {
            }
          }

          v68 = v255;
        }

        if (*(v68 + v250[7] + 8))
        {
        }

        v120 = v68 + v250[9];
        if (*(v120 + 8))
        {
        }

        v121 = v68 + v250[10];
        if (*(v121 + 8))
        {
        }

        v122 = v68 + v250[11];
        v123 = type metadata accessor for DeferredPaymentRequest();
        if (!(*(*(v123 - 1) + 48))(v122, 1, v123))
        {

          v124 = v123[7];
          v125 = sub_1BE04AF64();
          v126 = *(v125 - 8);
          if (!(*(v126 + 48))(v122 + v124, 1, v125))
          {
            (*(v126 + 8))(v122 + v124, v125);
          }

          v127 = v123[8];
          v128 = sub_1BE04B3B4();
          v129 = *(v128 - 8);
          if (!(*(v129 + 48))(v122 + v127, 1, v128))
          {
            (*(v129 + 8))(v122 + v127, v128);
          }

          v5 = v264;
        }

        goto LABEL_136;
      }

      v252 = v32;
      v248 = v31;
      v60 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
      v61 = *(v60 + 24);
      v62 = sub_1BE04AF64();
      v63 = *(v62 - 8);
      v64 = *(v63 + 48);
      if (!v64(v57 + v61, 1, v62))
      {
        (*(v63 + 8))(v57 + v61, v62);
      }

      v65 = *(v60 + 28);
      if (!v64(v57 + v65, 1, v62))
      {
        (*(v63 + 8))(v57 + v65, v62);
      }

      v5 = v264;
      v31 = v248;
      v32 = v252;
    }

    v59 = v253;
    goto LABEL_67;
  }

LABEL_136:

  if (*(v2 + v1[24]))
  {
  }

  v130 = v2 + v1[27];
  if (*(v130 + 8))
  {
  }

  v131 = (v2 + v1[30]);
  if (!v5(v131, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v132 = swift_getEnumCaseMultiPayload();
    if (v132 == 2)
    {

      v133 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v134 = sub_1BE04CF34();
      (*(*(v134 - 8) + 8))(v131 + v133, v134);
    }

    else if (v132 <= 1)
    {
    }

    v135 = v131 + v4[6];
    v136 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v136 - 8) + 48))(v135, 1, v136))
    {

      v137 = *(v136 + 20);
      v138 = sub_1BE04DA84();
      (*(*(v138 - 8) + 8))(&v135[v137], v138);
    }

    v139 = (v131 + v4[7]);
    v140 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v140 - 8) + 48))(v139, 1, v140))
    {

      v141 = *(v140 + 28);
      v142 = sub_1BE04AF64();
      v143 = *(v142 - 8);
      if (!(*(v143 + 48))(v139 + v141, 1, v142))
      {
        (*(v143 + 8))(v139 + v141, v142);
      }
    }

    v144 = v131 + v4[10];
    v145 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v145 - 8) + 48))(v144, 1, v145))
    {
      if (*(v144 + 2) != 1)
      {
      }

      if (*(v144 + 9) != 1)
      {
      }

      v146 = *(v145 + 28);
      v147 = sub_1BE04AF64();
      v148 = *(v147 - 8);
      v149 = *(v148 + 48);
      if (!v149(&v144[v146], 1, v147))
      {
        (*(v148 + 8))(&v144[v146], v147);
      }

      v150 = *(v145 + 32);
      v5 = v264;
      v4 = v265;
      if (!v149(&v144[v150], 1, v147))
      {
        (*(v148 + 8))(&v144[v150], v147);
      }
    }

    v151 = (v131 + v4[12]);
    if (*v151)
    {
    }

    v152 = (v131 + v4[13]);
    if (*v152)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);

  v153 = (v2 + v1[32]);
  v154 = _s11DetailSheetOMa();
  if (!(*(*(v154 - 8) + 48))(v153, 1, v154))
  {
    v155 = swift_getEnumCaseMultiPayload();
    if (v155 <= 1)
    {
      if (!v155)
      {
        if (!v5(v153, 1, v4))
        {
          type metadata accessor for WrappedPass(0);
          v159 = swift_getEnumCaseMultiPayload();
          if (v159 == 2)
          {

            v200 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v201 = sub_1BE04CF34();
            (*(*(v201 - 8) + 8))(v153 + v200, v201);
          }

          else if (v159 <= 1)
          {
          }

          v202 = v153 + v4[6];
          v203 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v203 - 8) + 48))(v202, 1, v203))
          {

            v204 = *(v203 + 20);
            v205 = sub_1BE04DA84();
            (*(*(v205 - 8) + 8))(&v202[v204], v205);
          }

          v206 = (v153 + v4[7]);
          v207 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v207 - 8) + 48))(v206, 1, v207))
          {

            v208 = *(v207 + 28);
            v209 = sub_1BE04AF64();
            v210 = *(v209 - 8);
            if (!(*(v210 + 48))(v206 + v208, 1, v209))
            {
              (*(v210 + 8))(v206 + v208, v209);
            }
          }

          v211 = v153 + v4[10];
          v212 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v212 - 8) + 48))(v211, 1, v212))
          {
            if (*(v211 + 2) != 1)
            {
            }

            if (*(v211 + 9) != 1)
            {
            }

            v213 = *(v212 + 28);
            v214 = sub_1BE04AF64();
            v215 = *(v214 - 8);
            v216 = *(v215 + 48);
            if (!v216(&v211[v213], 1, v214))
            {
              (*(v215 + 8))(&v211[v213], v214);
            }

            v261 = v215;
            v217 = *(v212 + 32);
            v5 = v264;
            v4 = v265;
            if (!v216(&v211[v217], 1, v214))
            {
              (*(v261 + 8))(&v211[v217], v214);
            }
          }

          v218 = (v153 + v4[12]);
          if (*v218)
          {
          }

          v219 = (v153 + v4[13]);
          if (*v219)
          {
          }
        }

        v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

        v221 = v153 + *(v220 + 64);

        v157 = *(v221 + 4);
        goto LABEL_243;
      }

      if (v155 != 1)
      {
        goto LABEL_244;
      }

LABEL_174:
      v157 = *v153;
LABEL_243:

      goto LABEL_244;
    }

    if (v155 != 2)
    {
      if (v155 != 3)
      {
        if (v155 != 4)
        {
          goto LABEL_244;
        }

        type metadata accessor for WrappedPass(0);
        v156 = swift_getEnumCaseMultiPayload();
        if (v156 == 2)
        {

          v180 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v181 = sub_1BE04CF34();
          (*(*(v181 - 8) + 8))(v153 + v180, v181);
        }

        else if (v156 <= 1)
        {
        }

        v182 = v153 + v4[6];
        v183 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v183 - 8) + 48))(v182, 1, v183))
        {

          v184 = *(v183 + 20);
          v185 = sub_1BE04DA84();
          (*(*(v185 - 8) + 8))(&v182[v184], v185);
        }

        v186 = (v153 + v4[7]);
        v187 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v187 - 8) + 48))(v186, 1, v187))
        {

          v188 = *(v187 + 28);
          v189 = sub_1BE04AF64();
          v190 = *(v189 - 8);
          if (!(*(v190 + 48))(v186 + v188, 1, v189))
          {
            (*(v190 + 8))(v186 + v188, v189);
          }
        }

        v191 = v153 + v4[10];
        v192 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v192 - 8) + 48))(v191, 1, v192))
        {
          if (*(v191 + 2) != 1)
          {
          }

          if (*(v191 + 9) != 1)
          {
          }

          v193 = *(v192 + 28);
          v194 = sub_1BE04AF64();
          v195 = *(v194 - 8);
          v196 = *(v195 + 48);
          if (!v196(&v191[v193], 1, v194))
          {
            (*(v195 + 8))(&v191[v193], v194);
          }

          v260 = v195;
          v197 = *(v192 + 32);
          v5 = v264;
          v4 = v265;
          if (!v196(&v191[v197], 1, v194))
          {
            (*(v260 + 8))(&v191[v197], v194);
          }
        }

        v198 = (v153 + v4[12]);
        if (*v198)
        {
        }

        v199 = (v153 + v4[13]);
        if (*v199)
        {
        }

        v157 = *(v153 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60) + 48));
        goto LABEL_243;
      }

      goto LABEL_174;
    }

    type metadata accessor for WrappedPass(0);
    v158 = swift_getEnumCaseMultiPayload();
    if (v158 == 2)
    {

      v160 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v161 = sub_1BE04CF34();
      (*(*(v161 - 8) + 8))(v153 + v160, v161);
    }

    else if (v158 <= 1)
    {
    }

    v162 = v153 + v4[6];
    v163 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v163 - 8) + 48))(v162, 1, v163))
    {

      v164 = *(v163 + 20);
      v165 = sub_1BE04DA84();
      (*(*(v165 - 8) + 8))(&v162[v164], v165);
    }

    v166 = (v153 + v4[7]);
    v167 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v167 - 8) + 48))(v166, 1, v167))
    {

      v168 = *(v167 + 28);
      v169 = sub_1BE04AF64();
      v170 = *(v169 - 8);
      if (!(*(v170 + 48))(v166 + v168, 1, v169))
      {
        (*(v170 + 8))(v166 + v168, v169);
      }
    }

    v171 = v153 + v4[10];
    v172 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v172 - 8) + 48))(v171, 1, v172))
    {
      if (*(v171 + 2) != 1)
      {
      }

      if (*(v171 + 9) != 1)
      {
      }

      v173 = *(v172 + 28);
      v174 = sub_1BE04AF64();
      v175 = *(v174 - 8);
      v176 = *(v175 + 48);
      if (!v176(&v171[v173], 1, v174))
      {
        (*(v175 + 8))(&v171[v173], v174);
      }

      v259 = v175;
      v177 = *(v172 + 32);
      v5 = v264;
      v4 = v265;
      if (!v176(&v171[v177], 1, v174))
      {
        (*(v259 + 8))(&v171[v177], v174);
      }
    }

    v178 = (v153 + v4[12]);
    if (*v178)
    {
    }

    v179 = (v153 + v4[13]);
    if (*v179)
    {
    }
  }

LABEL_244:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);

  if (*(v2 + v1[34] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + v1[34]);
  }

  v222 = (v2 + v1[35]);
  if (!v5(v222, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v223 = swift_getEnumCaseMultiPayload();
    if (v223 == 2)
    {

      v224 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v225 = sub_1BE04CF34();
      (*(*(v225 - 8) + 8))(v222 + v224, v225);
    }

    else if (v223 <= 1)
    {
    }

    v226 = v222 + v4[6];
    v227 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v227 - 8) + 48))(v226, 1, v227))
    {

      v228 = *(v227 + 20);
      v229 = sub_1BE04DA84();
      (*(*(v229 - 8) + 8))(&v226[v228], v229);
    }

    v230 = (v222 + v4[7]);
    v231 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v231 - 8) + 48))(v230, 1, v231))
    {

      v232 = *(v231 + 28);
      v233 = sub_1BE04AF64();
      v234 = *(v233 - 8);
      if (!(*(v234 + 48))(v230 + v232, 1, v233))
      {
        (*(v234 + 8))(v230 + v232, v233);
      }
    }

    v235 = v222 + v4[10];
    v236 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v236 - 8) + 48))(v235, 1, v236))
    {
      if (*(v235 + 2) != 1)
      {
      }

      if (*(v235 + 9) != 1)
      {
      }

      v237 = *(v236 + 28);
      v238 = sub_1BE04AF64();
      v239 = *(v238 - 8);
      v240 = *(v239 + 48);
      if (!v240(&v235[v237], 1, v238))
      {
        (*(v239 + 8))(&v235[v237], v238);
      }

      v241 = *(v236 + 32);
      v4 = v265;
      if (!v240(&v235[v241], 1, v238))
      {
        (*(v239 + 8))(&v235[v241], v238);
      }
    }

    v242 = (v222 + v4[12]);
    if (*v242)
    {
    }

    v243 = (v222 + v4[13]);
    if (*v243)
    {
    }
  }

  v244 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v245 = sub_1BE04C884();
    (*(*(v245 - 8) + 8))(v2 + v244, v245);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0743A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD074410()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v264 = *(*(v1 - 1) + 64);
  v265 = *(*(v1 - 1) + 80);
  v266 = v0;
  v263 = (v265 + 16) & ~v265;
  v2 = v0 + v263;
  v3 = (v0 + v263 + v1[6]);
  v4 = type metadata accessor for AvailablePass(0);
  v5 = *(*(v4 - 1) + 48);
  v267 = v5;
  v268 = v4;
  if (!v5(v3, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v7 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v8 = sub_1BE04CF34();
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v9 = v3 + v4[6];
    v10 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 20);
      v12 = sub_1BE04DA84();
      (*(*(v12 - 8) + 8))(&v9[v11], v12);
    }

    v13 = (v3 + v4[7]);
    v14 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 28);
      v16 = sub_1BE04AF64();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v13 + v15, 1, v16))
      {
        (*(v17 + 8))(v13 + v15, v16);
      }
    }

    v18 = v3 + v4[10];
    v19 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      if (*(v18 + 2) != 1)
      {
      }

      if (*(v18 + 9) != 1)
      {
      }

      v20 = *(v19 + 28);
      v21 = sub_1BE04AF64();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      if (!v23(&v18[v20], 1, v21))
      {
        (*(v22 + 8))(&v18[v20], v21);
      }

      v24 = *(v19 + 32);
      v25 = v23(&v18[v24], 1, v21);
      v5 = v267;
      v4 = v268;
      if (!v25)
      {
        (*(v22 + 8))(&v18[v24], v21);
      }
    }

    v26 = (v3 + v4[12]);
    if (*v26)
    {
    }

    v27 = (v3 + v4[13]);
    if (*v27)
    {
    }
  }

  v28 = type metadata accessor for Passes(0);

  v29 = v2 + v1[7];
  if (*(v29 + 48))
  {
    sub_1BD0D455C(*v29, *(v29 + 8), *(v29 + 16));
  }

  v30 = (v2 + v1[8]);
  v31 = type metadata accessor for PeerPaymentModel();
  v32 = *(*(v31 - 1) + 48);
  if (!v32(v30, 1, v31))
  {

    v33 = (v30 + v31[5]);
    type metadata accessor for WrappedPass(0);
    v34 = swift_getEnumCaseMultiPayload();
    v256 = v28;
    if (v34 == 2)
    {

      v35 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v36 = sub_1BE04CF34();
      (*(*(v36 - 8) + 8))(v33 + v35, v36);
    }

    else if (v34 <= 1)
    {
    }

    v251 = v32;
    v37 = v33 + v4[6];
    v38 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {

      v39 = *(v38 + 20);
      v40 = sub_1BE04DA84();
      (*(*(v40 - 8) + 8))(&v37[v39], v40);
    }

    v41 = (v33 + v4[7]);
    v42 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
    {

      v43 = *(v42 + 28);
      v44 = sub_1BE04AF64();
      v45 = *(v44 - 8);
      if (!(*(v45 + 48))(v41 + v43, 1, v44))
      {
        (*(v45 + 8))(v41 + v43, v44);
      }
    }

    v46 = v33 + v4[10];
    v47 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
    {
      if (*(v46 + 2) != 1)
      {
      }

      v247 = v31;
      if (*(v46 + 9) != 1)
      {
      }

      v48 = *(v47 + 28);
      v49 = sub_1BE04AF64();
      v254 = *(v49 - 8);
      v50 = *(v254 + 48);
      if (!v50(&v46[v48], 1, v49))
      {
        (*(v254 + 8))(&v46[v48], v49);
      }

      v51 = *(v47 + 32);
      v31 = v247;
      if (!v50(&v46[v51], 1, v49))
      {
        (*(v254 + 8))(&v46[v51], v49);
      }
    }

    v4 = v268;
    v52 = (v33 + v268[12]);
    v28 = v256;
    v32 = v251;
    if (*v52)
    {
    }

    v53 = (v33 + v268[13]);
    v5 = v267;
    if (*v53)
    {
    }

    v54 = (v30 + v31[6]);
    if (*v54 != 1)
    {

      if (v54[3])
      {
      }
    }
  }

  v55 = v2 + v1[9];
  v56 = _s14PaymentSummaryVMa();
  if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
  {

    v253 = _s11TotalAmountVMa(0);
    v57 = v55 + *(v253 + 40);
    _s22SummaryItemPricingTypeOMa(0);
    v58 = swift_getEnumCaseMultiPayload();
    v250 = v56;
    v255 = v55;
    if (v58 == 2)
    {
    }

    else if (v58 == 1)
    {
      v66 = sub_1BE04AF64();
      (*(*(v66 - 8) + 8))(v57, v66);
    }

    else
    {
      v59 = v253;
      if (v58)
      {
LABEL_67:
        v67 = v5;
        v68 = v255;

        v69 = (v255 + v59[15]);
        v70 = v32(v69, 1, v31);
        v71 = v268;
        if (!v70)
        {

          v262 = v69;
          v72 = (v69 + v31[5]);
          type metadata accessor for WrappedPass(0);
          v73 = v72;
          v74 = swift_getEnumCaseMultiPayload();
          v257 = v28;
          if (v74 == 2)
          {

            v77 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v78 = sub_1BE04CF34();
            (*(*(v78 - 8) + 8))(v73 + v77, v78);
            v75 = v268;
            v76 = v73;
          }

          else
          {
            v75 = v268;
            if (v74 == 1)
            {
              v76 = v72;
            }

            else
            {
              v76 = v72;
              if (!v74)
              {
              }
            }
          }

          v249 = v31;
          v79 = v76 + v75[6];
          v80 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
          {

            v81 = *(v80 + 20);
            v82 = sub_1BE04DA84();
            (*(*(v82 - 8) + 8))(&v79[v81], v82);
          }

          v83 = (v76 + v75[7]);
          v84 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
          {

            v85 = *(v84 + 28);
            v86 = sub_1BE04AF64();
            v87 = *(v86 - 8);
            if (!(*(v87 + 48))(v83 + v85, 1, v86))
            {
              (*(v87 + 8))(v83 + v85, v86);
            }
          }

          v88 = v76 + v75[10];
          v89 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v89 - 8) + 48))(v88, 1, v89))
          {
            if (*(v88 + 2) != 1)
            {
            }

            if (*(v88 + 9) != 1)
            {
            }

            v90 = *(v89 + 28);
            v91 = sub_1BE04AF64();
            v92 = *(v91 - 8);
            v93 = *(v92 + 48);
            if (!v93(&v88[v90], 1, v91))
            {
              (*(v92 + 8))(&v88[v90], v91);
            }

            v94 = *(v89 + 32);
            if (!v93(&v88[v94], 1, v91))
            {
              (*(v92 + 8))(&v88[v94], v91);
            }
          }

          v95 = (v76 + v268[12]);
          v28 = v257;
          if (*v95)
          {
          }

          v96 = (v76 + v268[13]);
          if (*v96)
          {
          }

          v97 = (v262 + v249[6]);
          if (*v97 != 1)
          {

            if (v97[3])
            {
            }
          }

          v71 = v268;
          v67 = v267;

          v59 = v253;
          v68 = v255;
        }

        v98 = (v68 + v59[16]);
        v5 = v67;
        v4 = v71;
        if (!(*(*(v28 - 8) + 48))(v98, 1, v28))
        {
          if (!v67(v98, 1, v71))
          {
            type metadata accessor for WrappedPass(0);
            v99 = swift_getEnumCaseMultiPayload();
            v258 = v28;
            if (v99 == 2)
            {

              v100 = *(type metadata accessor for PlaceholderPass(0) + 28);
              v101 = sub_1BE04CF34();
              (*(*(v101 - 8) + 8))(v98 + v100, v101);
            }

            else if (v99 <= 1)
            {
            }

            v102 = v98 + v71[6];
            v103 = type metadata accessor for IdentityCredential(0);
            if (!(*(*(v103 - 8) + 48))(v102, 1, v103))
            {

              v104 = *(v103 + 20);
              v105 = sub_1BE04DA84();
              (*(*(v105 - 8) + 8))(&v102[v104], v105);
            }

            v106 = (v98 + v71[7]);
            v107 = type metadata accessor for BalanceInfo(0);
            if (!(*(*(v107 - 8) + 48))(v106, 1, v107))
            {

              v108 = *(v107 + 28);
              v109 = sub_1BE04AF64();
              v110 = *(v109 - 8);
              if (!(*(v110 + 48))(v106 + v108, 1, v109))
              {
                (*(v110 + 8))(v106 + v108, v109);
              }
            }

            v111 = v98 + v4[10];
            v112 = type metadata accessor for PassEligibleRewardsInfo();
            if (!(*(*(v112 - 8) + 48))(v111, 1, v112))
            {
              if (*(v111 + 2) != 1)
              {
              }

              if (*(v111 + 9) != 1)
              {
              }

              v113 = *(v112 + 28);
              v114 = sub_1BE04AF64();
              v115 = *(v114 - 8);
              v116 = *(v115 + 48);
              if (!v116(&v111[v113], 1, v114))
              {
                (*(v115 + 8))(&v111[v113], v114);
              }

              v117 = *(v112 + 32);
              if (!v116(&v111[v117], 1, v114))
              {
                (*(v115 + 8))(&v111[v117], v114);
              }
            }

            v4 = v268;
            v118 = (v98 + v268[12]);
            v28 = v258;
            if (*v118)
            {
            }

            v119 = (v98 + v268[13]);
            v5 = v267;
            if (*v119)
            {
            }
          }

          v68 = v255;
        }

        if (*(v68 + v250[7] + 8))
        {
        }

        v120 = v68 + v250[9];
        if (*(v120 + 8))
        {
        }

        v121 = v68 + v250[10];
        if (*(v121 + 8))
        {
        }

        v122 = v68 + v250[11];
        v123 = type metadata accessor for DeferredPaymentRequest();
        if (!(*(*(v123 - 1) + 48))(v122, 1, v123))
        {

          v124 = v123[7];
          v125 = sub_1BE04AF64();
          v126 = *(v125 - 8);
          if (!(*(v126 + 48))(v122 + v124, 1, v125))
          {
            (*(v126 + 8))(v122 + v124, v125);
          }

          v127 = v123[8];
          v128 = sub_1BE04B3B4();
          v129 = *(v128 - 8);
          if (!(*(v129 + 48))(v122 + v127, 1, v128))
          {
            (*(v129 + 8))(v122 + v127, v128);
          }

          v5 = v267;
        }

        goto LABEL_136;
      }

      v252 = v32;
      v248 = v31;
      v60 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
      v61 = *(v60 + 24);
      v62 = sub_1BE04AF64();
      v63 = *(v62 - 8);
      v64 = *(v63 + 48);
      if (!v64(v57 + v61, 1, v62))
      {
        (*(v63 + 8))(v57 + v61, v62);
      }

      v65 = *(v60 + 28);
      if (!v64(v57 + v65, 1, v62))
      {
        (*(v63 + 8))(v57 + v65, v62);
      }

      v5 = v267;
      v31 = v248;
      v32 = v252;
    }

    v59 = v253;
    goto LABEL_67;
  }

LABEL_136:

  if (*(v2 + v1[24]))
  {
  }

  v130 = v2 + v1[27];
  if (*(v130 + 8))
  {
  }

  v131 = (v2 + v1[30]);
  if (!v5(v131, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v132 = swift_getEnumCaseMultiPayload();
    if (v132 == 2)
    {

      v133 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v134 = sub_1BE04CF34();
      (*(*(v134 - 8) + 8))(v131 + v133, v134);
    }

    else if (v132 <= 1)
    {
    }

    v135 = v131 + v4[6];
    v136 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v136 - 8) + 48))(v135, 1, v136))
    {

      v137 = *(v136 + 20);
      v138 = sub_1BE04DA84();
      (*(*(v138 - 8) + 8))(&v135[v137], v138);
    }

    v139 = (v131 + v4[7]);
    v140 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v140 - 8) + 48))(v139, 1, v140))
    {

      v141 = *(v140 + 28);
      v142 = sub_1BE04AF64();
      v143 = *(v142 - 8);
      if (!(*(v143 + 48))(v139 + v141, 1, v142))
      {
        (*(v143 + 8))(v139 + v141, v142);
      }
    }

    v144 = v131 + v4[10];
    v145 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v145 - 8) + 48))(v144, 1, v145))
    {
      if (*(v144 + 2) != 1)
      {
      }

      if (*(v144 + 9) != 1)
      {
      }

      v146 = *(v145 + 28);
      v147 = sub_1BE04AF64();
      v148 = *(v147 - 8);
      v149 = *(v148 + 48);
      if (!v149(&v144[v146], 1, v147))
      {
        (*(v148 + 8))(&v144[v146], v147);
      }

      v150 = *(v145 + 32);
      v5 = v267;
      v4 = v268;
      if (!v149(&v144[v150], 1, v147))
      {
        (*(v148 + 8))(&v144[v150], v147);
      }
    }

    v151 = (v131 + v4[12]);
    if (*v151)
    {
    }

    v152 = (v131 + v4[13]);
    if (*v152)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);

  v153 = (v2 + v1[32]);
  v154 = _s11DetailSheetOMa();
  if (!(*(*(v154 - 8) + 48))(v153, 1, v154))
  {
    v155 = swift_getEnumCaseMultiPayload();
    if (v155 <= 1)
    {
      if (!v155)
      {
        if (!v5(v153, 1, v4))
        {
          type metadata accessor for WrappedPass(0);
          v159 = swift_getEnumCaseMultiPayload();
          if (v159 == 2)
          {

            v200 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v201 = sub_1BE04CF34();
            (*(*(v201 - 8) + 8))(v153 + v200, v201);
          }

          else if (v159 <= 1)
          {
          }

          v202 = v153 + v4[6];
          v203 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v203 - 8) + 48))(v202, 1, v203))
          {

            v204 = *(v203 + 20);
            v205 = sub_1BE04DA84();
            (*(*(v205 - 8) + 8))(&v202[v204], v205);
          }

          v206 = (v153 + v4[7]);
          v207 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v207 - 8) + 48))(v206, 1, v207))
          {

            v208 = *(v207 + 28);
            v209 = sub_1BE04AF64();
            v210 = *(v209 - 8);
            if (!(*(v210 + 48))(v206 + v208, 1, v209))
            {
              (*(v210 + 8))(v206 + v208, v209);
            }
          }

          v211 = v153 + v4[10];
          v212 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v212 - 8) + 48))(v211, 1, v212))
          {
            if (*(v211 + 2) != 1)
            {
            }

            if (*(v211 + 9) != 1)
            {
            }

            v213 = *(v212 + 28);
            v214 = sub_1BE04AF64();
            v215 = *(v214 - 8);
            v216 = *(v215 + 48);
            if (!v216(&v211[v213], 1, v214))
            {
              (*(v215 + 8))(&v211[v213], v214);
            }

            v261 = v215;
            v217 = *(v212 + 32);
            v5 = v267;
            v4 = v268;
            if (!v216(&v211[v217], 1, v214))
            {
              (*(v261 + 8))(&v211[v217], v214);
            }
          }

          v218 = (v153 + v4[12]);
          if (*v218)
          {
          }

          v219 = (v153 + v4[13]);
          if (*v219)
          {
          }
        }

        v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

        v221 = v153 + *(v220 + 64);

        v157 = *(v221 + 4);
        goto LABEL_243;
      }

      if (v155 != 1)
      {
        goto LABEL_244;
      }

LABEL_174:
      v157 = *v153;
LABEL_243:

      goto LABEL_244;
    }

    if (v155 != 2)
    {
      if (v155 != 3)
      {
        if (v155 != 4)
        {
          goto LABEL_244;
        }

        type metadata accessor for WrappedPass(0);
        v156 = swift_getEnumCaseMultiPayload();
        if (v156 == 2)
        {

          v180 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v181 = sub_1BE04CF34();
          (*(*(v181 - 8) + 8))(v153 + v180, v181);
        }

        else if (v156 <= 1)
        {
        }

        v182 = v153 + v4[6];
        v183 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v183 - 8) + 48))(v182, 1, v183))
        {

          v184 = *(v183 + 20);
          v185 = sub_1BE04DA84();
          (*(*(v185 - 8) + 8))(&v182[v184], v185);
        }

        v186 = (v153 + v4[7]);
        v187 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v187 - 8) + 48))(v186, 1, v187))
        {

          v188 = *(v187 + 28);
          v189 = sub_1BE04AF64();
          v190 = *(v189 - 8);
          if (!(*(v190 + 48))(v186 + v188, 1, v189))
          {
            (*(v190 + 8))(v186 + v188, v189);
          }
        }

        v191 = v153 + v4[10];
        v192 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v192 - 8) + 48))(v191, 1, v192))
        {
          if (*(v191 + 2) != 1)
          {
          }

          if (*(v191 + 9) != 1)
          {
          }

          v193 = *(v192 + 28);
          v194 = sub_1BE04AF64();
          v195 = *(v194 - 8);
          v196 = *(v195 + 48);
          if (!v196(&v191[v193], 1, v194))
          {
            (*(v195 + 8))(&v191[v193], v194);
          }

          v260 = v195;
          v197 = *(v192 + 32);
          v5 = v267;
          v4 = v268;
          if (!v196(&v191[v197], 1, v194))
          {
            (*(v260 + 8))(&v191[v197], v194);
          }
        }

        v198 = (v153 + v4[12]);
        if (*v198)
        {
        }

        v199 = (v153 + v4[13]);
        if (*v199)
        {
        }

        v157 = *(v153 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60) + 48));
        goto LABEL_243;
      }

      goto LABEL_174;
    }

    type metadata accessor for WrappedPass(0);
    v158 = swift_getEnumCaseMultiPayload();
    if (v158 == 2)
    {

      v160 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v161 = sub_1BE04CF34();
      (*(*(v161 - 8) + 8))(v153 + v160, v161);
    }

    else if (v158 <= 1)
    {
    }

    v162 = v153 + v4[6];
    v163 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v163 - 8) + 48))(v162, 1, v163))
    {

      v164 = *(v163 + 20);
      v165 = sub_1BE04DA84();
      (*(*(v165 - 8) + 8))(&v162[v164], v165);
    }

    v166 = (v153 + v4[7]);
    v167 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v167 - 8) + 48))(v166, 1, v167))
    {

      v168 = *(v167 + 28);
      v169 = sub_1BE04AF64();
      v170 = *(v169 - 8);
      if (!(*(v170 + 48))(v166 + v168, 1, v169))
      {
        (*(v170 + 8))(v166 + v168, v169);
      }
    }

    v171 = v153 + v4[10];
    v172 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v172 - 8) + 48))(v171, 1, v172))
    {
      if (*(v171 + 2) != 1)
      {
      }

      if (*(v171 + 9) != 1)
      {
      }

      v173 = *(v172 + 28);
      v174 = sub_1BE04AF64();
      v175 = *(v174 - 8);
      v176 = *(v175 + 48);
      if (!v176(&v171[v173], 1, v174))
      {
        (*(v175 + 8))(&v171[v173], v174);
      }

      v259 = v175;
      v177 = *(v172 + 32);
      v5 = v267;
      v4 = v268;
      if (!v176(&v171[v177], 1, v174))
      {
        (*(v259 + 8))(&v171[v177], v174);
      }
    }

    v178 = (v153 + v4[12]);
    if (*v178)
    {
    }

    v179 = (v153 + v4[13]);
    if (*v179)
    {
    }
  }

LABEL_244:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);

  if (*(v2 + v1[34] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + v1[34]);
  }

  v222 = (v2 + v1[35]);
  if (!v5(v222, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v223 = swift_getEnumCaseMultiPayload();
    if (v223 == 2)
    {

      v224 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v225 = sub_1BE04CF34();
      (*(*(v225 - 8) + 8))(v222 + v224, v225);
    }

    else if (v223 <= 1)
    {
    }

    v226 = v222 + v4[6];
    v227 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v227 - 8) + 48))(v226, 1, v227))
    {

      v228 = *(v227 + 20);
      v229 = sub_1BE04DA84();
      (*(*(v229 - 8) + 8))(&v226[v228], v229);
    }

    v230 = (v222 + v4[7]);
    v231 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v231 - 8) + 48))(v230, 1, v231))
    {

      v232 = *(v231 + 28);
      v233 = sub_1BE04AF64();
      v234 = *(v233 - 8);
      if (!(*(v234 + 48))(v230 + v232, 1, v233))
      {
        (*(v234 + 8))(v230 + v232, v233);
      }
    }

    v235 = v222 + v4[10];
    v236 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v236 - 8) + 48))(v235, 1, v236))
    {
      if (*(v235 + 2) != 1)
      {
      }

      if (*(v235 + 9) != 1)
      {
      }

      v237 = *(v236 + 28);
      v238 = sub_1BE04AF64();
      v239 = *(v238 - 8);
      v240 = *(v239 + 48);
      if (!v240(&v235[v237], 1, v238))
      {
        (*(v239 + 8))(&v235[v237], v238);
      }

      v241 = *(v236 + 32);
      v4 = v268;
      if (!v240(&v235[v241], 1, v238))
      {
        (*(v239 + 8))(&v235[v241], v238);
      }
    }

    v242 = (v222 + v4[12]);
    if (*v242)
    {
    }

    v243 = (v222 + v4[13]);
    if (*v243)
    {
    }
  }

  v244 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v245 = sub_1BE04C884();
    (*(*(v245 - 8) + 8))(v2 + v244, v245);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD077420()
{

  return swift_deallocObject();
}

uint64_t sub_1BD077468()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v265 = *(*(v1 - 1) + 64);
  v266 = *(*(v1 - 1) + 80);
  v267 = v0;
  v264 = (v266 + 16) & ~v266;
  v2 = v0 + v264;
  v3 = (v0 + v264 + v1[6]);
  v4 = type metadata accessor for AvailablePass(0);
  v5 = *(*(v4 - 1) + 48);
  v268 = v5;
  v269 = v4;
  if (!v5(v3, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v7 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v8 = sub_1BE04CF34();
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v9 = v3 + v4[6];
    v10 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 20);
      v12 = sub_1BE04DA84();
      (*(*(v12 - 8) + 8))(&v9[v11], v12);
    }

    v13 = (v3 + v4[7]);
    v14 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 28);
      v16 = sub_1BE04AF64();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v13 + v15, 1, v16))
      {
        (*(v17 + 8))(v13 + v15, v16);
      }
    }

    v18 = v3 + v4[10];
    v19 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      if (*(v18 + 2) != 1)
      {
      }

      if (*(v18 + 9) != 1)
      {
      }

      v20 = *(v19 + 28);
      v21 = sub_1BE04AF64();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      if (!v23(&v18[v20], 1, v21))
      {
        (*(v22 + 8))(&v18[v20], v21);
      }

      v24 = *(v19 + 32);
      v25 = v23(&v18[v24], 1, v21);
      v5 = v268;
      v4 = v269;
      if (!v25)
      {
        (*(v22 + 8))(&v18[v24], v21);
      }
    }

    v26 = (v3 + v4[12]);
    if (*v26)
    {
    }

    v27 = (v3 + v4[13]);
    if (*v27)
    {
    }
  }

  v28 = type metadata accessor for Passes(0);

  v29 = v2 + v1[7];
  if (*(v29 + 48))
  {
    sub_1BD0D455C(*v29, *(v29 + 8), *(v29 + 16));
  }

  v30 = (v2 + v1[8]);
  v31 = type metadata accessor for PeerPaymentModel();
  v32 = *(*(v31 - 1) + 48);
  if (!v32(v30, 1, v31))
  {

    v33 = (v30 + v31[5]);
    type metadata accessor for WrappedPass(0);
    v34 = swift_getEnumCaseMultiPayload();
    v257 = v28;
    if (v34 == 2)
    {

      v35 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v36 = sub_1BE04CF34();
      (*(*(v36 - 8) + 8))(v33 + v35, v36);
    }

    else if (v34 <= 1)
    {
    }

    v252 = v32;
    v37 = v33 + v4[6];
    v38 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {

      v39 = *(v38 + 20);
      v40 = sub_1BE04DA84();
      (*(*(v40 - 8) + 8))(&v37[v39], v40);
    }

    v41 = (v33 + v4[7]);
    v42 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
    {

      v43 = *(v42 + 28);
      v44 = sub_1BE04AF64();
      v45 = *(v44 - 8);
      if (!(*(v45 + 48))(v41 + v43, 1, v44))
      {
        (*(v45 + 8))(v41 + v43, v44);
      }
    }

    v46 = v33 + v4[10];
    v47 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
    {
      if (*(v46 + 2) != 1)
      {
      }

      v248 = v31;
      if (*(v46 + 9) != 1)
      {
      }

      v48 = *(v47 + 28);
      v49 = sub_1BE04AF64();
      v255 = *(v49 - 8);
      v50 = *(v255 + 48);
      if (!v50(&v46[v48], 1, v49))
      {
        (*(v255 + 8))(&v46[v48], v49);
      }

      v51 = *(v47 + 32);
      v31 = v248;
      if (!v50(&v46[v51], 1, v49))
      {
        (*(v255 + 8))(&v46[v51], v49);
      }
    }

    v4 = v269;
    v52 = (v33 + v269[12]);
    v28 = v257;
    v32 = v252;
    if (*v52)
    {
    }

    v53 = (v33 + v269[13]);
    v5 = v268;
    if (*v53)
    {
    }

    v54 = (v30 + v31[6]);
    if (*v54 != 1)
    {

      if (v54[3])
      {
      }
    }
  }

  v55 = v2 + v1[9];
  v56 = _s14PaymentSummaryVMa();
  if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
  {

    v254 = _s11TotalAmountVMa(0);
    v57 = v55 + *(v254 + 40);
    _s22SummaryItemPricingTypeOMa(0);
    v58 = swift_getEnumCaseMultiPayload();
    v251 = v56;
    v256 = v55;
    if (v58 == 2)
    {
    }

    else if (v58 == 1)
    {
      v66 = sub_1BE04AF64();
      (*(*(v66 - 8) + 8))(v57, v66);
    }

    else
    {
      v59 = v254;
      if (v58)
      {
LABEL_67:
        v67 = v5;
        v68 = v256;

        v69 = (v256 + v59[15]);
        v70 = v32(v69, 1, v31);
        v71 = v269;
        if (!v70)
        {

          v263 = v69;
          v72 = (v69 + v31[5]);
          type metadata accessor for WrappedPass(0);
          v73 = v72;
          v74 = swift_getEnumCaseMultiPayload();
          v258 = v28;
          if (v74 == 2)
          {

            v77 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v78 = sub_1BE04CF34();
            (*(*(v78 - 8) + 8))(v73 + v77, v78);
            v75 = v269;
            v76 = v73;
          }

          else
          {
            v75 = v269;
            if (v74 == 1)
            {
              v76 = v72;
            }

            else
            {
              v76 = v72;
              if (!v74)
              {
              }
            }
          }

          v250 = v31;
          v79 = v76 + v75[6];
          v80 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
          {

            v81 = *(v80 + 20);
            v82 = sub_1BE04DA84();
            (*(*(v82 - 8) + 8))(&v79[v81], v82);
          }

          v83 = (v76 + v75[7]);
          v84 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
          {

            v85 = *(v84 + 28);
            v86 = sub_1BE04AF64();
            v87 = *(v86 - 8);
            if (!(*(v87 + 48))(v83 + v85, 1, v86))
            {
              (*(v87 + 8))(v83 + v85, v86);
            }
          }

          v88 = v76 + v75[10];
          v89 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v89 - 8) + 48))(v88, 1, v89))
          {
            if (*(v88 + 2) != 1)
            {
            }

            if (*(v88 + 9) != 1)
            {
            }

            v90 = *(v89 + 28);
            v91 = sub_1BE04AF64();
            v92 = *(v91 - 8);
            v93 = *(v92 + 48);
            if (!v93(&v88[v90], 1, v91))
            {
              (*(v92 + 8))(&v88[v90], v91);
            }

            v94 = *(v89 + 32);
            if (!v93(&v88[v94], 1, v91))
            {
              (*(v92 + 8))(&v88[v94], v91);
            }
          }

          v95 = (v76 + v269[12]);
          v28 = v258;
          if (*v95)
          {
          }

          v96 = (v76 + v269[13]);
          if (*v96)
          {
          }

          v97 = (v263 + v250[6]);
          if (*v97 != 1)
          {

            if (v97[3])
            {
            }
          }

          v71 = v269;
          v67 = v268;

          v59 = v254;
          v68 = v256;
        }

        v98 = (v68 + v59[16]);
        v5 = v67;
        v4 = v71;
        if (!(*(*(v28 - 8) + 48))(v98, 1, v28))
        {
          if (!v67(v98, 1, v71))
          {
            type metadata accessor for WrappedPass(0);
            v99 = swift_getEnumCaseMultiPayload();
            v259 = v28;
            if (v99 == 2)
            {

              v100 = *(type metadata accessor for PlaceholderPass(0) + 28);
              v101 = sub_1BE04CF34();
              (*(*(v101 - 8) + 8))(v98 + v100, v101);
            }

            else if (v99 <= 1)
            {
            }

            v102 = v98 + v71[6];
            v103 = type metadata accessor for IdentityCredential(0);
            if (!(*(*(v103 - 8) + 48))(v102, 1, v103))
            {

              v104 = *(v103 + 20);
              v105 = sub_1BE04DA84();
              (*(*(v105 - 8) + 8))(&v102[v104], v105);
            }

            v106 = (v98 + v71[7]);
            v107 = type metadata accessor for BalanceInfo(0);
            if (!(*(*(v107 - 8) + 48))(v106, 1, v107))
            {

              v108 = *(v107 + 28);
              v109 = sub_1BE04AF64();
              v110 = *(v109 - 8);
              if (!(*(v110 + 48))(v106 + v108, 1, v109))
              {
                (*(v110 + 8))(v106 + v108, v109);
              }
            }

            v111 = v98 + v4[10];
            v112 = type metadata accessor for PassEligibleRewardsInfo();
            if (!(*(*(v112 - 8) + 48))(v111, 1, v112))
            {
              if (*(v111 + 2) != 1)
              {
              }

              if (*(v111 + 9) != 1)
              {
              }

              v113 = *(v112 + 28);
              v114 = sub_1BE04AF64();
              v115 = *(v114 - 8);
              v116 = *(v115 + 48);
              if (!v116(&v111[v113], 1, v114))
              {
                (*(v115 + 8))(&v111[v113], v114);
              }

              v117 = *(v112 + 32);
              if (!v116(&v111[v117], 1, v114))
              {
                (*(v115 + 8))(&v111[v117], v114);
              }
            }

            v4 = v269;
            v118 = (v98 + v269[12]);
            v28 = v259;
            if (*v118)
            {
            }

            v119 = (v98 + v269[13]);
            v5 = v268;
            if (*v119)
            {
            }
          }

          v68 = v256;
        }

        if (*(v68 + v251[7] + 8))
        {
        }

        v120 = v68 + v251[9];
        if (*(v120 + 8))
        {
        }

        v121 = v68 + v251[10];
        if (*(v121 + 8))
        {
        }

        v122 = v68 + v251[11];
        v123 = type metadata accessor for DeferredPaymentRequest();
        if (!(*(*(v123 - 1) + 48))(v122, 1, v123))
        {

          v124 = v123[7];
          v125 = sub_1BE04AF64();
          v126 = *(v125 - 8);
          if (!(*(v126 + 48))(v122 + v124, 1, v125))
          {
            (*(v126 + 8))(v122 + v124, v125);
          }

          v127 = v123[8];
          v128 = sub_1BE04B3B4();
          v129 = *(v128 - 8);
          if (!(*(v129 + 48))(v122 + v127, 1, v128))
          {
            (*(v129 + 8))(v122 + v127, v128);
          }

          v5 = v268;
        }

        goto LABEL_136;
      }

      v253 = v32;
      v249 = v31;
      v60 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
      v61 = *(v60 + 24);
      v62 = sub_1BE04AF64();
      v63 = *(v62 - 8);
      v64 = *(v63 + 48);
      if (!v64(v57 + v61, 1, v62))
      {
        (*(v63 + 8))(v57 + v61, v62);
      }

      v65 = *(v60 + 28);
      if (!v64(v57 + v65, 1, v62))
      {
        (*(v63 + 8))(v57 + v65, v62);
      }

      v5 = v268;
      v31 = v249;
      v32 = v253;
    }

    v59 = v254;
    goto LABEL_67;
  }

LABEL_136:

  if (*(v2 + v1[24]))
  {
  }

  v130 = v2 + v1[27];
  if (*(v130 + 8))
  {
  }

  v131 = (v2 + v1[30]);
  if (!v5(v131, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v132 = swift_getEnumCaseMultiPayload();
    if (v132 == 2)
    {

      v133 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v134 = sub_1BE04CF34();
      (*(*(v134 - 8) + 8))(v131 + v133, v134);
    }

    else if (v132 <= 1)
    {
    }

    v135 = v131 + v4[6];
    v136 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v136 - 8) + 48))(v135, 1, v136))
    {

      v137 = *(v136 + 20);
      v138 = sub_1BE04DA84();
      (*(*(v138 - 8) + 8))(&v135[v137], v138);
    }

    v139 = (v131 + v4[7]);
    v140 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v140 - 8) + 48))(v139, 1, v140))
    {

      v141 = *(v140 + 28);
      v142 = sub_1BE04AF64();
      v143 = *(v142 - 8);
      if (!(*(v143 + 48))(v139 + v141, 1, v142))
      {
        (*(v143 + 8))(v139 + v141, v142);
      }
    }

    v144 = v131 + v4[10];
    v145 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v145 - 8) + 48))(v144, 1, v145))
    {
      if (*(v144 + 2) != 1)
      {
      }

      if (*(v144 + 9) != 1)
      {
      }

      v146 = *(v145 + 28);
      v147 = sub_1BE04AF64();
      v148 = *(v147 - 8);
      v149 = *(v148 + 48);
      if (!v149(&v144[v146], 1, v147))
      {
        (*(v148 + 8))(&v144[v146], v147);
      }

      v150 = *(v145 + 32);
      v5 = v268;
      v4 = v269;
      if (!v149(&v144[v150], 1, v147))
      {
        (*(v148 + 8))(&v144[v150], v147);
      }
    }

    v151 = (v131 + v4[12]);
    if (*v151)
    {
    }

    v152 = (v131 + v4[13]);
    if (*v152)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);

  v153 = (v2 + v1[32]);
  v154 = _s11DetailSheetOMa();
  if (!(*(*(v154 - 8) + 48))(v153, 1, v154))
  {
    v155 = swift_getEnumCaseMultiPayload();
    if (v155 <= 1)
    {
      if (!v155)
      {
        if (!v5(v153, 1, v4))
        {
          type metadata accessor for WrappedPass(0);
          v159 = swift_getEnumCaseMultiPayload();
          if (v159 == 2)
          {

            v200 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v201 = sub_1BE04CF34();
            (*(*(v201 - 8) + 8))(v153 + v200, v201);
          }

          else if (v159 <= 1)
          {
          }

          v202 = v153 + v4[6];
          v203 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v203 - 8) + 48))(v202, 1, v203))
          {

            v204 = *(v203 + 20);
            v205 = sub_1BE04DA84();
            (*(*(v205 - 8) + 8))(&v202[v204], v205);
          }

          v206 = (v153 + v4[7]);
          v207 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v207 - 8) + 48))(v206, 1, v207))
          {

            v208 = *(v207 + 28);
            v209 = sub_1BE04AF64();
            v210 = *(v209 - 8);
            if (!(*(v210 + 48))(v206 + v208, 1, v209))
            {
              (*(v210 + 8))(v206 + v208, v209);
            }
          }

          v211 = v153 + v4[10];
          v212 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v212 - 8) + 48))(v211, 1, v212))
          {
            if (*(v211 + 2) != 1)
            {
            }

            if (*(v211 + 9) != 1)
            {
            }

            v213 = *(v212 + 28);
            v214 = sub_1BE04AF64();
            v215 = *(v214 - 8);
            v216 = *(v215 + 48);
            if (!v216(&v211[v213], 1, v214))
            {
              (*(v215 + 8))(&v211[v213], v214);
            }

            v262 = v215;
            v217 = *(v212 + 32);
            v5 = v268;
            v4 = v269;
            if (!v216(&v211[v217], 1, v214))
            {
              (*(v262 + 8))(&v211[v217], v214);
            }
          }

          v218 = (v153 + v4[12]);
          if (*v218)
          {
          }

          v219 = (v153 + v4[13]);
          if (*v219)
          {
          }
        }

        v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

        v221 = v153 + *(v220 + 64);

        v157 = *(v221 + 4);
        goto LABEL_243;
      }

      if (v155 != 1)
      {
        goto LABEL_244;
      }

LABEL_174:
      v157 = *v153;
LABEL_243:

      goto LABEL_244;
    }

    if (v155 != 2)
    {
      if (v155 != 3)
      {
        if (v155 != 4)
        {
          goto LABEL_244;
        }

        type metadata accessor for WrappedPass(0);
        v156 = swift_getEnumCaseMultiPayload();
        if (v156 == 2)
        {

          v180 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v181 = sub_1BE04CF34();
          (*(*(v181 - 8) + 8))(v153 + v180, v181);
        }

        else if (v156 <= 1)
        {
        }

        v182 = v153 + v4[6];
        v183 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v183 - 8) + 48))(v182, 1, v183))
        {

          v184 = *(v183 + 20);
          v185 = sub_1BE04DA84();
          (*(*(v185 - 8) + 8))(&v182[v184], v185);
        }

        v186 = (v153 + v4[7]);
        v187 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v187 - 8) + 48))(v186, 1, v187))
        {

          v188 = *(v187 + 28);
          v189 = sub_1BE04AF64();
          v190 = *(v189 - 8);
          if (!(*(v190 + 48))(v186 + v188, 1, v189))
          {
            (*(v190 + 8))(v186 + v188, v189);
          }
        }

        v191 = v153 + v4[10];
        v192 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v192 - 8) + 48))(v191, 1, v192))
        {
          if (*(v191 + 2) != 1)
          {
          }

          if (*(v191 + 9) != 1)
          {
          }

          v193 = *(v192 + 28);
          v194 = sub_1BE04AF64();
          v195 = *(v194 - 8);
          v196 = *(v195 + 48);
          if (!v196(&v191[v193], 1, v194))
          {
            (*(v195 + 8))(&v191[v193], v194);
          }

          v261 = v195;
          v197 = *(v192 + 32);
          v5 = v268;
          v4 = v269;
          if (!v196(&v191[v197], 1, v194))
          {
            (*(v261 + 8))(&v191[v197], v194);
          }
        }

        v198 = (v153 + v4[12]);
        if (*v198)
        {
        }

        v199 = (v153 + v4[13]);
        if (*v199)
        {
        }

        v157 = *(v153 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60) + 48));
        goto LABEL_243;
      }

      goto LABEL_174;
    }

    type metadata accessor for WrappedPass(0);
    v158 = swift_getEnumCaseMultiPayload();
    if (v158 == 2)
    {

      v160 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v161 = sub_1BE04CF34();
      (*(*(v161 - 8) + 8))(v153 + v160, v161);
    }

    else if (v158 <= 1)
    {
    }

    v162 = v153 + v4[6];
    v163 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v163 - 8) + 48))(v162, 1, v163))
    {

      v164 = *(v163 + 20);
      v165 = sub_1BE04DA84();
      (*(*(v165 - 8) + 8))(&v162[v164], v165);
    }

    v166 = (v153 + v4[7]);
    v167 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v167 - 8) + 48))(v166, 1, v167))
    {

      v168 = *(v167 + 28);
      v169 = sub_1BE04AF64();
      v170 = *(v169 - 8);
      if (!(*(v170 + 48))(v166 + v168, 1, v169))
      {
        (*(v170 + 8))(v166 + v168, v169);
      }
    }

    v171 = v153 + v4[10];
    v172 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v172 - 8) + 48))(v171, 1, v172))
    {
      if (*(v171 + 2) != 1)
      {
      }

      if (*(v171 + 9) != 1)
      {
      }

      v173 = *(v172 + 28);
      v174 = sub_1BE04AF64();
      v175 = *(v174 - 8);
      v176 = *(v175 + 48);
      if (!v176(&v171[v173], 1, v174))
      {
        (*(v175 + 8))(&v171[v173], v174);
      }

      v260 = v175;
      v177 = *(v172 + 32);
      v5 = v268;
      v4 = v269;
      if (!v176(&v171[v177], 1, v174))
      {
        (*(v260 + 8))(&v171[v177], v174);
      }
    }

    v178 = (v153 + v4[12]);
    if (*v178)
    {
    }

    v179 = (v153 + v4[13]);
    if (*v179)
    {
    }
  }

LABEL_244:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);

  if (*(v2 + v1[34] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + v1[34]);
  }

  v222 = (v2 + v1[35]);
  if (!v5(v222, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v223 = swift_getEnumCaseMultiPayload();
    if (v223 == 2)
    {

      v224 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v225 = sub_1BE04CF34();
      (*(*(v225 - 8) + 8))(v222 + v224, v225);
    }

    else if (v223 <= 1)
    {
    }

    v226 = v222 + v4[6];
    v227 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v227 - 8) + 48))(v226, 1, v227))
    {

      v228 = *(v227 + 20);
      v229 = sub_1BE04DA84();
      (*(*(v229 - 8) + 8))(&v226[v228], v229);
    }

    v230 = (v222 + v4[7]);
    v231 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v231 - 8) + 48))(v230, 1, v231))
    {

      v232 = *(v231 + 28);
      v233 = sub_1BE04AF64();
      v234 = *(v233 - 8);
      if (!(*(v234 + 48))(v230 + v232, 1, v233))
      {
        (*(v234 + 8))(v230 + v232, v233);
      }
    }

    v235 = v222 + v4[10];
    v236 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v236 - 8) + 48))(v235, 1, v236))
    {
      if (*(v235 + 2) != 1)
      {
      }

      if (*(v235 + 9) != 1)
      {
      }

      v237 = *(v236 + 28);
      v238 = sub_1BE04AF64();
      v239 = *(v238 - 8);
      v240 = *(v239 + 48);
      if (!v240(&v235[v237], 1, v238))
      {
        (*(v239 + 8))(&v235[v237], v238);
      }

      v241 = *(v236 + 32);
      v4 = v269;
      if (!v240(&v235[v241], 1, v238))
      {
        (*(v239 + 8))(&v235[v241], v238);
      }
    }

    v242 = (v222 + v4[12]);
    if (*v242)
    {
    }

    v243 = (v222 + v4[13]);
    if (*v243)
    {
    }
  }

  v244 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v245 = sub_1BE04C884();
    (*(*(v245 - 8) + 8))(v2 + v244, v245);
  }

  else
  {
  }

  v246 = v267 + ((v265 + v264 + 7) & 0xFFFFFFFFFFFFFFF8);

  return swift_deallocObject();
}

uint64_t sub_1BD07A494()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v271 = *(*(v1 - 1) + 80);
  v268 = *(*(v1 - 1) + 64);
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8) - 8) + 80);
  v269 = (v271 + 16) & ~v271;
  v272 = v0;
  v3 = v0 + v269;
  v4 = (v0 + v269 + v1[6]);
  v5 = type metadata accessor for AvailablePass(0);
  v275 = *(*(v5 - 1) + 48);
  v273 = v2;
  v274 = v5;
  if (!v275(v4, 1, v5))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v7 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v8 = sub_1BE04CF34();
      (*(*(v8 - 8) + 8))(v4 + v7, v8);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v9 = v4 + v5[6];
    v10 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 20);
      v12 = sub_1BE04DA84();
      (*(*(v12 - 8) + 8))(&v9[v11], v12);
    }

    v13 = (v4 + v5[7]);
    v14 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 28);
      v16 = sub_1BE04AF64();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v13 + v15, 1, v16))
      {
        (*(v17 + 8))(v13 + v15, v16);
      }
    }

    v18 = v4 + v5[10];
    v19 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      if (*(v18 + 2) != 1)
      {
      }

      if (*(v18 + 9) != 1)
      {
      }

      v20 = *(v19 + 28);
      v21 = sub_1BE04AF64();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      if (!v23(&v18[v20], 1, v21))
      {
        (*(v22 + 8))(&v18[v20], v21);
      }

      v24 = *(v19 + 32);
      v25 = v23(&v18[v24], 1, v21);
      v2 = v273;
      v5 = v274;
      if (!v25)
      {
        (*(v22 + 8))(&v18[v24], v21);
      }
    }

    v26 = (v4 + v5[12]);
    if (*v26)
    {
    }

    v27 = (v4 + v5[13]);
    if (*v27)
    {
    }
  }

  v28 = type metadata accessor for Passes(0);

  v29 = v3 + v1[7];
  if (*(v29 + 48))
  {
    sub_1BD0D455C(*v29, *(v29 + 8), *(v29 + 16));
  }

  v30 = (v3 + v1[8]);
  v31 = type metadata accessor for PeerPaymentModel();
  v32 = *(*(v31 - 1) + 48);
  if (!v32(v30, 1, v31))
  {

    v33 = (v30 + v31[5]);
    type metadata accessor for WrappedPass(0);
    v34 = swift_getEnumCaseMultiPayload();
    v265 = v28;
    v261 = v32;
    if (v34 == 2)
    {

      v35 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v36 = sub_1BE04CF34();
      (*(*(v36 - 8) + 8))(v33 + v35, v36);
    }

    else if (v34 <= 1)
    {
    }

    v37 = v33 + v5[6];
    v38 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {

      v39 = *(v38 + 20);
      v40 = sub_1BE04DA84();
      (*(*(v40 - 8) + 8))(&v37[v39], v40);
    }

    v41 = (v33 + v5[7]);
    v42 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
    {

      v43 = *(v42 + 28);
      v44 = sub_1BE04AF64();
      v45 = *(v44 - 8);
      if (!(*(v45 + 48))(v41 + v43, 1, v44))
      {
        (*(v45 + 8))(v41 + v43, v44);
      }
    }

    v46 = v33 + v5[10];
    v47 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
    {
      if (*(v46 + 2) != 1)
      {
      }

      v256 = v31;
      if (*(v46 + 9) != 1)
      {
      }

      v48 = *(v47 + 28);
      v49 = sub_1BE04AF64();
      v263 = *(v49 - 8);
      v50 = *(v263 + 48);
      if (!v50(&v46[v48], 1, v49))
      {
        (*(v263 + 8))(&v46[v48], v49);
      }

      v51 = *(v47 + 32);
      v31 = v256;
      if (!v50(&v46[v51], 1, v49))
      {
        (*(v263 + 8))(&v46[v51], v49);
      }
    }

    v5 = v274;
    v52 = (v33 + v274[12]);
    v28 = v265;
    if (*v52)
    {
    }

    v53 = (v33 + v274[13]);
    v2 = v273;
    if (*v53)
    {
    }

    v54 = (v30 + v31[6]);
    if (*v54 != 1)
    {

      if (v54[3])
      {
      }
    }

    v32 = v261;
  }

  v55 = v3 + v1[9];
  v56 = _s14PaymentSummaryVMa();
  if (!(*(*(v56 - 1) + 48))(v55, 1, v56))
  {

    v259 = _s11TotalAmountVMa(0);
    v57 = v55 + v259[10];
    _s22SummaryItemPricingTypeOMa(0);
    v58 = swift_getEnumCaseMultiPayload();
    v264 = v55;
    switch(v58)
    {
      case 2:

        break;
      case 1:
        v65 = sub_1BE04AF64();
        (*(*(v65 - 8) + 8))(v57, v65);
        break;
      case 0:
        v262 = v32;
        v253 = v56;
        v257 = v31;
        v59 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v60 = *(v59 + 24);
        v61 = sub_1BE04AF64();
        v62 = *(v61 - 8);
        v63 = *(v62 + 48);
        if (!v63(v57 + v60, 1, v61))
        {
          (*(v62 + 8))(v57 + v60, v61);
        }

        v64 = *(v59 + 28);
        if (!v63(v57 + v64, 1, v61))
        {
          (*(v62 + 8))(v57 + v64, v61);
        }

        v2 = v273;
        v56 = v253;
        v31 = v257;
        v32 = v262;
        break;
    }

    v260 = v3;
    v66 = v2;
    v67 = v259;
    v68 = v264;

    v69 = (v264 + v259[15]);
    v70 = v32(v69, 1, v31);
    v71 = v274;
    if (!v70)
    {

      v72 = (v69 + v31[5]);
      type metadata accessor for WrappedPass(0);
      v73 = swift_getEnumCaseMultiPayload();
      v266 = v28;
      v254 = v56;
      if (v73 == 2)
      {

        v75 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v76 = sub_1BE04CF34();
        (*(*(v76 - 8) + 8))(v72 + v75, v76);
        v74 = v274;
      }

      else
      {
        v74 = v274;
        if (v73 <= 1)
        {
        }
      }

      v258 = v31;
      v77 = v72 + v74[6];
      v78 = type metadata accessor for IdentityCredential(0);
      if (!(*(*(v78 - 8) + 48))(v77, 1, v78))
      {

        v79 = *(v78 + 20);
        v80 = sub_1BE04DA84();
        (*(*(v80 - 8) + 8))(&v77[v79], v80);
      }

      v81 = (v72 + v74[7]);
      v82 = type metadata accessor for BalanceInfo(0);
      if (!(*(*(v82 - 8) + 48))(v81, 1, v82))
      {

        v83 = *(v82 + 28);
        v84 = sub_1BE04AF64();
        v85 = *(v84 - 8);
        if (!(*(v85 + 48))(v81 + v83, 1, v84))
        {
          (*(v85 + 8))(v81 + v83, v84);
        }
      }

      v86 = v72 + v74[10];
      v87 = type metadata accessor for PassEligibleRewardsInfo();
      if (!(*(*(v87 - 8) + 48))(v86, 1, v87))
      {
        if (*(v86 + 2) != 1)
        {
        }

        if (*(v86 + 9) != 1)
        {
        }

        v88 = *(v87 + 28);
        v89 = sub_1BE04AF64();
        v90 = *(v89 - 8);
        v91 = *(v90 + 48);
        if (!v91(&v86[v88], 1, v89))
        {
          (*(v90 + 8))(&v86[v88], v89);
        }

        v92 = *(v87 + 32);
        if (!v91(&v86[v92], 1, v89))
        {
          (*(v90 + 8))(&v86[v92], v89);
        }
      }

      v93 = (v72 + v274[12]);
      v28 = v266;
      if (*v93)
      {
      }

      v94 = (v72 + v274[13]);
      v66 = v273;
      v56 = v254;
      if (*v94)
      {
      }

      v95 = (v69 + v258[6]);
      if (*v95 != 1)
      {

        if (v95[3])
        {
        }
      }

      v71 = v274;

      v67 = v259;
      v68 = v264;
    }

    v96 = (v68 + v67[16]);
    v2 = v66;
    v5 = v71;
    v3 = v260;
    if (!(*(*(v28 - 8) + 48))(v96, 1, v28))
    {
      if (!v275(v96, 1, v71))
      {
        type metadata accessor for WrappedPass(0);
        v97 = swift_getEnumCaseMultiPayload();
        v267 = v28;
        if (v97 == 2)
        {

          v98 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v99 = sub_1BE04CF34();
          (*(*(v99 - 8) + 8))(v96 + v98, v99);
        }

        else if (v97 <= 1)
        {
        }

        v100 = v96 + v5[6];
        v101 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v101 - 8) + 48))(v100, 1, v101))
        {

          v102 = *(v101 + 20);
          v103 = sub_1BE04DA84();
          (*(*(v103 - 8) + 8))(&v100[v102], v103);
        }

        v255 = v56;
        v104 = (v96 + v5[7]);
        v105 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v105 - 8) + 48))(v104, 1, v105))
        {

          v106 = *(v105 + 28);
          v107 = sub_1BE04AF64();
          v108 = *(v107 - 8);
          if (!(*(v108 + 48))(v104 + v106, 1, v107))
          {
            (*(v108 + 8))(v104 + v106, v107);
          }
        }

        v109 = v96 + v5[10];
        v110 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v110 - 8) + 48))(v109, 1, v110))
        {
          if (*(v109 + 2) != 1)
          {
          }

          if (*(v109 + 9) != 1)
          {
          }

          v111 = *(v110 + 28);
          v112 = sub_1BE04AF64();
          v113 = *(v112 - 8);
          v114 = *(v113 + 48);
          if (!v114(&v109[v111], 1, v112))
          {
            (*(v113 + 8))(&v109[v111], v112);
          }

          v115 = *(v110 + 32);
          if (!v114(&v109[v115], 1, v112))
          {
            (*(v113 + 8))(&v109[v115], v112);
          }
        }

        v5 = v274;
        v116 = (v96 + v274[12]);
        v28 = v267;
        if (*v116)
        {
        }

        v117 = (v96 + v274[13]);
        v2 = v273;
        v56 = v255;
        if (*v117)
        {
        }
      }

      v68 = v264;
    }

    if (*(v68 + v56[7] + 8))
    {
    }

    v118 = v68 + v56[9];
    if (*(v118 + 8))
    {
    }

    v119 = v68 + v56[10];
    if (*(v119 + 8))
    {
    }

    v120 = v68 + v56[11];
    v121 = type metadata accessor for DeferredPaymentRequest();
    if (!(*(*(v121 - 1) + 48))(v120, 1, v121))
    {

      v122 = v121[7];
      v123 = sub_1BE04AF64();
      v124 = *(v123 - 8);
      if (!(*(v124 + 48))(v120 + v122, 1, v123))
      {
        (*(v124 + 8))(v120 + v122, v123);
      }

      v125 = v121[8];
      v126 = sub_1BE04B3B4();
      v127 = *(v126 - 8);
      if (!(*(v127 + 48))(v120 + v125, 1, v126))
      {
        (*(v127 + 8))(v120 + v125, v126);
      }

      v2 = v273;
    }
  }

  if (*(v3 + v1[24]))
  {
  }

  v128 = v3 + v1[27];
  if (*(v128 + 8))
  {
  }

  v129 = (v3 + v1[30]);
  if (!v275(v129, 1, v5))
  {
    type metadata accessor for WrappedPass(0);
    v130 = swift_getEnumCaseMultiPayload();
    if (v130 == 2)
    {

      v131 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v132 = sub_1BE04CF34();
      (*(*(v132 - 8) + 8))(v129 + v131, v132);
    }

    else if (v130 <= 1)
    {
    }

    v133 = v129 + v5[6];
    v134 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v134 - 8) + 48))(v133, 1, v134))
    {

      v135 = *(v134 + 20);
      v136 = sub_1BE04DA84();
      (*(*(v136 - 8) + 8))(&v133[v135], v136);
    }

    v137 = (v129 + v5[7]);
    v138 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v138 - 8) + 48))(v137, 1, v138))
    {

      v139 = *(v138 + 28);
      v140 = sub_1BE04AF64();
      v141 = *(v140 - 8);
      if (!(*(v141 + 48))(v137 + v139, 1, v140))
      {
        (*(v141 + 8))(v137 + v139, v140);
      }
    }

    v142 = v129 + v5[10];
    v143 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v143 - 8) + 48))(v142, 1, v143))
    {
      if (*(v142 + 2) != 1)
      {
      }

      if (*(v142 + 9) != 1)
      {
      }

      v144 = *(v143 + 28);
      v145 = sub_1BE04AF64();
      v146 = *(v145 - 8);
      v147 = *(v146 + 48);
      if (!v147(&v142[v144], 1, v145))
      {
        (*(v146 + 8))(&v142[v144], v145);
      }

      v148 = *(v143 + 32);
      v2 = v273;
      v5 = v274;
      if (!v147(&v142[v148], 1, v145))
      {
        (*(v146 + 8))(&v142[v148], v145);
      }
    }

    v149 = (v129 + v5[12]);
    if (*v149)
    {
    }

    v150 = (v129 + v5[13]);
    if (*v150)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);

  v151 = (v3 + v1[32]);
  v152 = _s11DetailSheetOMa();
  if (!(*(*(v152 - 8) + 48))(v151, 1, v152))
  {
    v153 = swift_getEnumCaseMultiPayload();
    if (v153 <= 1)
    {
      if (!v153)
      {
        if (!v275(v151, 1, v5))
        {
          type metadata accessor for WrappedPass(0);
          v157 = swift_getEnumCaseMultiPayload();
          if (v157 == 2)
          {

            v198 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v199 = sub_1BE04CF34();
            (*(*(v199 - 8) + 8))(v151 + v198, v199);
          }

          else if (v157 <= 1)
          {
          }

          v200 = v151 + v5[6];
          v201 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v201 - 8) + 48))(v200, 1, v201))
          {

            v202 = *(v201 + 20);
            v203 = sub_1BE04DA84();
            (*(*(v203 - 8) + 8))(&v200[v202], v203);
          }

          v204 = (v151 + v5[7]);
          v205 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v205 - 8) + 48))(v204, 1, v205))
          {

            v206 = *(v205 + 28);
            v207 = sub_1BE04AF64();
            v208 = *(v207 - 8);
            if (!(*(v208 + 48))(v204 + v206, 1, v207))
            {
              (*(v208 + 8))(v204 + v206, v207);
            }
          }

          v209 = v151 + v5[10];
          v210 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v210 - 8) + 48))(v209, 1, v210))
          {
            if (*(v209 + 2) != 1)
            {
            }

            if (*(v209 + 9) != 1)
            {
            }

            v211 = *(v210 + 28);
            v212 = sub_1BE04AF64();
            v213 = *(v212 - 8);
            v214 = *(v213 + 48);
            if (!v214(&v209[v211], 1, v212))
            {
              (*(v213 + 8))(&v209[v211], v212);
            }

            v215 = *(v210 + 32);
            v5 = v274;
            if (!v214(&v209[v215], 1, v212))
            {
              (*(v213 + 8))(&v209[v215], v212);
            }
          }

          v216 = (v151 + v5[12]);
          if (*v216)
          {
          }

          v217 = (v151 + v5[13]);
          v2 = v273;
          if (*v217)
          {
          }
        }

        v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

        v219 = v151 + *(v218 + 64);

        v155 = *(v219 + 4);
        goto LABEL_240;
      }

      if (v153 != 1)
      {
        goto LABEL_241;
      }

LABEL_171:
      v155 = *v151;
LABEL_240:

      goto LABEL_241;
    }

    if (v153 != 2)
    {
      if (v153 != 3)
      {
        if (v153 != 4)
        {
          goto LABEL_241;
        }

        type metadata accessor for WrappedPass(0);
        v154 = swift_getEnumCaseMultiPayload();
        if (v154 == 2)
        {

          v178 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v179 = sub_1BE04CF34();
          (*(*(v179 - 8) + 8))(v151 + v178, v179);
        }

        else if (v154 <= 1)
        {
        }

        v180 = v151 + v5[6];
        v181 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v181 - 8) + 48))(v180, 1, v181))
        {

          v182 = *(v181 + 20);
          v183 = sub_1BE04DA84();
          (*(*(v183 - 8) + 8))(&v180[v182], v183);
        }

        v184 = (v151 + v5[7]);
        v185 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v185 - 8) + 48))(v184, 1, v185))
        {

          v186 = *(v185 + 28);
          v187 = sub_1BE04AF64();
          v188 = *(v187 - 8);
          if (!(*(v188 + 48))(v184 + v186, 1, v187))
          {
            (*(v188 + 8))(v184 + v186, v187);
          }
        }

        v189 = v151 + v5[10];
        v190 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v190 - 8) + 48))(v189, 1, v190))
        {
          if (*(v189 + 2) != 1)
          {
          }

          if (*(v189 + 9) != 1)
          {
          }

          v191 = *(v190 + 28);
          v192 = sub_1BE04AF64();
          v193 = *(v192 - 8);
          v194 = *(v193 + 48);
          if (!v194(&v189[v191], 1, v192))
          {
            (*(v193 + 8))(&v189[v191], v192);
          }

          v195 = *(v190 + 32);
          v5 = v274;
          if (!v194(&v189[v195], 1, v192))
          {
            (*(v193 + 8))(&v189[v195], v192);
          }
        }

        v196 = (v151 + v5[12]);
        if (*v196)
        {
        }

        v197 = (v151 + v5[13]);
        v2 = v273;
        if (*v197)
        {
        }

        v155 = *(v151 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60) + 48));
        goto LABEL_240;
      }

      goto LABEL_171;
    }

    type metadata accessor for WrappedPass(0);
    v156 = swift_getEnumCaseMultiPayload();
    if (v156 == 2)
    {

      v158 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v159 = sub_1BE04CF34();
      (*(*(v159 - 8) + 8))(v151 + v158, v159);
    }

    else if (v156 <= 1)
    {
    }

    v160 = v151 + v5[6];
    v161 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v161 - 8) + 48))(v160, 1, v161))
    {

      v162 = *(v161 + 20);
      v163 = sub_1BE04DA84();
      (*(*(v163 - 8) + 8))(&v160[v162], v163);
    }

    v164 = (v151 + v5[7]);
    v165 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v165 - 8) + 48))(v164, 1, v165))
    {

      v166 = *(v165 + 28);
      v167 = sub_1BE04AF64();
      v168 = *(v167 - 8);
      if (!(*(v168 + 48))(v164 + v166, 1, v167))
      {
        (*(v168 + 8))(v164 + v166, v167);
      }
    }

    v169 = v151 + v5[10];
    v170 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v170 - 8) + 48))(v169, 1, v170))
    {
      if (*(v169 + 2) != 1)
      {
      }

      if (*(v169 + 9) != 1)
      {
      }

      v171 = *(v170 + 28);
      v172 = sub_1BE04AF64();
      v173 = *(v172 - 8);
      v174 = *(v173 + 48);
      if (!v174(&v169[v171], 1, v172))
      {
        (*(v173 + 8))(&v169[v171], v172);
      }

      v175 = *(v170 + 32);
      v5 = v274;
      if (!v174(&v169[v175], 1, v172))
      {
        (*(v173 + 8))(&v169[v175], v172);
      }
    }

    v176 = (v151 + v5[12]);
    if (*v176)
    {
    }

    v177 = (v151 + v5[13]);
    v2 = v273;
    if (*v177)
    {
    }
  }

LABEL_241:
  v220 = v269 + v268;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);

  if (*(v3 + v1[34] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + v1[34]);
  }

  v221 = v220 + v2;

  v222 = (v3 + v1[35]);
  if (!v275(v222, 1, v5))
  {
    type metadata accessor for WrappedPass(0);
    v223 = swift_getEnumCaseMultiPayload();
    v270 = v220 + v2;
    if (v223 == 2)
    {

      v224 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v225 = sub_1BE04CF34();
      (*(*(v225 - 8) + 8))(v222 + v224, v225);
    }

    else if (v223 <= 1)
    {
    }

    v226 = v222 + v5[6];
    v227 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v227 - 8) + 48))(v226, 1, v227))
    {

      v228 = *(v227 + 20);
      v229 = sub_1BE04DA84();
      (*(*(v229 - 8) + 8))(&v226[v228], v229);
    }

    v230 = (v222 + v5[7]);
    v231 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v231 - 8) + 48))(v230, 1, v231))
    {

      v232 = *(v231 + 28);
      v233 = sub_1BE04AF64();
      v234 = *(v233 - 8);
      if (!(*(v234 + 48))(v230 + v232, 1, v233))
      {
        (*(v234 + 8))(v230 + v232, v233);
      }
    }

    v235 = v222 + v5[10];
    v236 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v236 - 8) + 48))(v235, 1, v236))
    {
      if (*(v235 + 2) != 1)
      {
      }

      if (*(v235 + 9) != 1)
      {
      }

      v237 = *(v236 + 28);
      v238 = sub_1BE04AF64();
      v239 = *(v238 - 8);
      v240 = *(v239 + 48);
      if (!v240(&v235[v237], 1, v238))
      {
        (*(v239 + 8))(&v235[v237], v238);
      }

      v241 = *(v236 + 32);
      v2 = v273;
      if (!v240(&v235[v241], 1, v238))
      {
        (*(v239 + 8))(&v235[v241], v238);
      }
    }

    v242 = (v222 + v274[12]);
    if (*v242)
    {
    }

    v243 = (v222 + v274[13]);
    if (*v243)
    {
    }

    v221 = v270;
  }

  v244 = v221 & ~v2;

  v245 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v246 = sub_1BE04C884();
    (*(*(v246 - 8) + 8))(v3 + v245, v246);
  }

  else
  {
  }

  v247 = (v272 + v244);
  v248 = type metadata accessor for UnavailablePass(0);
  if (!(*(*(v248 - 8) + 48))(v272 + v244, 1, v248))
  {
    type metadata accessor for WrappedPass(0);
    v249 = swift_getEnumCaseMultiPayload();
    if (v249 == 2)
    {

      v250 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v251 = sub_1BE04CF34();
      (*(*(v251 - 8) + 8))(v247 + v250, v251);
    }

    else if (v249 <= 1)
    {
    }

    sub_1BD4CE490(*(v247 + *(v248 + 28)), *(v247 + *(v248 + 28) + 8), *(v247 + *(v248 + 28) + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1BD07D5C4()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v263 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v263 + 24) & ~v263);
  v3 = (v2 + v1[6]);
  v4 = type metadata accessor for AvailablePass(0);
  v5 = *(*(v4 - 1) + 48);
  v264 = v5;
  v265 = v4;
  if (!v5(v3, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v7 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v8 = sub_1BE04CF34();
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v9 = v3 + v4[6];
    v10 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 20);
      v12 = sub_1BE04DA84();
      (*(*(v12 - 8) + 8))(&v9[v11], v12);
    }

    v13 = (v3 + v4[7]);
    v14 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 28);
      v16 = sub_1BE04AF64();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v13 + v15, 1, v16))
      {
        (*(v17 + 8))(v13 + v15, v16);
      }
    }

    v18 = v3 + v4[10];
    v19 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      if (*(v18 + 2) != 1)
      {
      }

      if (*(v18 + 9) != 1)
      {
      }

      v20 = *(v19 + 28);
      v21 = sub_1BE04AF64();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      if (!v23(&v18[v20], 1, v21))
      {
        (*(v22 + 8))(&v18[v20], v21);
      }

      v24 = *(v19 + 32);
      v25 = v23(&v18[v24], 1, v21);
      v5 = v264;
      v4 = v265;
      if (!v25)
      {
        (*(v22 + 8))(&v18[v24], v21);
      }
    }

    v26 = (v3 + v4[12]);
    if (*v26)
    {
    }

    v27 = (v3 + v4[13]);
    if (*v27)
    {
    }
  }

  v28 = type metadata accessor for Passes(0);

  v29 = v2 + v1[7];
  if (*(v29 + 48))
  {
    sub_1BD0D455C(*v29, *(v29 + 8), *(v29 + 16));
  }

  v30 = (v2 + v1[8]);
  v31 = type metadata accessor for PeerPaymentModel();
  v32 = *(*(v31 - 1) + 48);
  if (!v32(v30, 1, v31))
  {

    v33 = (v30 + v31[5]);
    type metadata accessor for WrappedPass(0);
    v34 = swift_getEnumCaseMultiPayload();
    v256 = v28;
    if (v34 == 2)
    {

      v35 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v36 = sub_1BE04CF34();
      (*(*(v36 - 8) + 8))(v33 + v35, v36);
    }

    else if (v34 <= 1)
    {
    }

    v251 = v32;
    v37 = v33 + v4[6];
    v38 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {

      v39 = *(v38 + 20);
      v40 = sub_1BE04DA84();
      (*(*(v40 - 8) + 8))(&v37[v39], v40);
    }

    v41 = (v33 + v4[7]);
    v42 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
    {

      v43 = *(v42 + 28);
      v44 = sub_1BE04AF64();
      v45 = *(v44 - 8);
      if (!(*(v45 + 48))(v41 + v43, 1, v44))
      {
        (*(v45 + 8))(v41 + v43, v44);
      }
    }

    v46 = v33 + v4[10];
    v47 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
    {
      if (*(v46 + 2) != 1)
      {
      }

      v247 = v31;
      if (*(v46 + 9) != 1)
      {
      }

      v48 = *(v47 + 28);
      v49 = sub_1BE04AF64();
      v254 = *(v49 - 8);
      v50 = *(v254 + 48);
      if (!v50(&v46[v48], 1, v49))
      {
        (*(v254 + 8))(&v46[v48], v49);
      }

      v51 = *(v47 + 32);
      v31 = v247;
      if (!v50(&v46[v51], 1, v49))
      {
        (*(v254 + 8))(&v46[v51], v49);
      }
    }

    v4 = v265;
    v52 = (v33 + v265[12]);
    v28 = v256;
    v32 = v251;
    if (*v52)
    {
    }

    v53 = (v33 + v265[13]);
    v5 = v264;
    if (*v53)
    {
    }

    v54 = (v30 + v31[6]);
    if (*v54 != 1)
    {

      if (v54[3])
      {
      }
    }
  }

  v55 = v2 + v1[9];
  v56 = _s14PaymentSummaryVMa();
  if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
  {

    v253 = _s11TotalAmountVMa(0);
    v57 = v55 + *(v253 + 40);
    _s22SummaryItemPricingTypeOMa(0);
    v58 = swift_getEnumCaseMultiPayload();
    v250 = v56;
    v255 = v55;
    if (v58 == 2)
    {
    }

    else if (v58 == 1)
    {
      v66 = sub_1BE04AF64();
      (*(*(v66 - 8) + 8))(v57, v66);
    }

    else
    {
      v59 = v253;
      if (v58)
      {
LABEL_67:
        v67 = v5;
        v68 = v255;

        v69 = (v255 + v59[15]);
        v70 = v32(v69, 1, v31);
        v71 = v265;
        if (!v70)
        {

          v262 = v69;
          v72 = (v69 + v31[5]);
          type metadata accessor for WrappedPass(0);
          v73 = v72;
          v74 = swift_getEnumCaseMultiPayload();
          v257 = v28;
          if (v74 == 2)
          {

            v77 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v78 = sub_1BE04CF34();
            (*(*(v78 - 8) + 8))(v73 + v77, v78);
            v75 = v265;
            v76 = v73;
          }

          else
          {
            v75 = v265;
            if (v74 == 1)
            {
              v76 = v72;
            }

            else
            {
              v76 = v72;
              if (!v74)
              {
              }
            }
          }

          v249 = v31;
          v79 = v76 + v75[6];
          v80 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
          {

            v81 = *(v80 + 20);
            v82 = sub_1BE04DA84();
            (*(*(v82 - 8) + 8))(&v79[v81], v82);
          }

          v83 = (v76 + v75[7]);
          v84 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
          {

            v85 = *(v84 + 28);
            v86 = sub_1BE04AF64();
            v87 = *(v86 - 8);
            if (!(*(v87 + 48))(v83 + v85, 1, v86))
            {
              (*(v87 + 8))(v83 + v85, v86);
            }
          }

          v88 = v76 + v75[10];
          v89 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v89 - 8) + 48))(v88, 1, v89))
          {
            if (*(v88 + 2) != 1)
            {
            }

            if (*(v88 + 9) != 1)
            {
            }

            v90 = *(v89 + 28);
            v91 = sub_1BE04AF64();
            v92 = *(v91 - 8);
            v93 = *(v92 + 48);
            if (!v93(&v88[v90], 1, v91))
            {
              (*(v92 + 8))(&v88[v90], v91);
            }

            v94 = *(v89 + 32);
            if (!v93(&v88[v94], 1, v91))
            {
              (*(v92 + 8))(&v88[v94], v91);
            }
          }

          v95 = (v76 + v265[12]);
          v28 = v257;
          if (*v95)
          {
          }

          v96 = (v76 + v265[13]);
          if (*v96)
          {
          }

          v97 = (v262 + v249[6]);
          if (*v97 != 1)
          {

            if (v97[3])
            {
            }
          }

          v71 = v265;
          v67 = v264;

          v59 = v253;
          v68 = v255;
        }

        v98 = (v68 + v59[16]);
        v5 = v67;
        v4 = v71;
        if (!(*(*(v28 - 8) + 48))(v98, 1, v28))
        {
          if (!v67(v98, 1, v71))
          {
            type metadata accessor for WrappedPass(0);
            v99 = swift_getEnumCaseMultiPayload();
            v258 = v28;
            if (v99 == 2)
            {

              v100 = *(type metadata accessor for PlaceholderPass(0) + 28);
              v101 = sub_1BE04CF34();
              (*(*(v101 - 8) + 8))(v98 + v100, v101);
            }

            else if (v99 <= 1)
            {
            }

            v102 = v98 + v71[6];
            v103 = type metadata accessor for IdentityCredential(0);
            if (!(*(*(v103 - 8) + 48))(v102, 1, v103))
            {

              v104 = *(v103 + 20);
              v105 = sub_1BE04DA84();
              (*(*(v105 - 8) + 8))(&v102[v104], v105);
            }

            v106 = (v98 + v71[7]);
            v107 = type metadata accessor for BalanceInfo(0);
            if (!(*(*(v107 - 8) + 48))(v106, 1, v107))
            {

              v108 = *(v107 + 28);
              v109 = sub_1BE04AF64();
              v110 = *(v109 - 8);
              if (!(*(v110 + 48))(v106 + v108, 1, v109))
              {
                (*(v110 + 8))(v106 + v108, v109);
              }
            }

            v111 = v98 + v4[10];
            v112 = type metadata accessor for PassEligibleRewardsInfo();
            if (!(*(*(v112 - 8) + 48))(v111, 1, v112))
            {
              if (*(v111 + 2) != 1)
              {
              }

              if (*(v111 + 9) != 1)
              {
              }

              v113 = *(v112 + 28);
              v114 = sub_1BE04AF64();
              v115 = *(v114 - 8);
              v116 = *(v115 + 48);
              if (!v116(&v111[v113], 1, v114))
              {
                (*(v115 + 8))(&v111[v113], v114);
              }

              v117 = *(v112 + 32);
              if (!v116(&v111[v117], 1, v114))
              {
                (*(v115 + 8))(&v111[v117], v114);
              }
            }

            v4 = v265;
            v118 = (v98 + v265[12]);
            v28 = v258;
            if (*v118)
            {
            }

            v119 = (v98 + v265[13]);
            v5 = v264;
            if (*v119)
            {
            }
          }

          v68 = v255;
        }

        if (*(v68 + v250[7] + 8))
        {
        }

        v120 = v68 + v250[9];
        if (*(v120 + 8))
        {
        }

        v121 = v68 + v250[10];
        if (*(v121 + 8))
        {
        }

        v122 = v68 + v250[11];
        v123 = type metadata accessor for DeferredPaymentRequest();
        if (!(*(*(v123 - 1) + 48))(v122, 1, v123))
        {

          v124 = v123[7];
          v125 = sub_1BE04AF64();
          v126 = *(v125 - 8);
          if (!(*(v126 + 48))(v122 + v124, 1, v125))
          {
            (*(v126 + 8))(v122 + v124, v125);
          }

          v127 = v123[8];
          v128 = sub_1BE04B3B4();
          v129 = *(v128 - 8);
          if (!(*(v129 + 48))(v122 + v127, 1, v128))
          {
            (*(v129 + 8))(v122 + v127, v128);
          }

          v5 = v264;
        }

        goto LABEL_136;
      }

      v252 = v32;
      v248 = v31;
      v60 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
      v61 = *(v60 + 24);
      v62 = sub_1BE04AF64();
      v63 = *(v62 - 8);
      v64 = *(v63 + 48);
      if (!v64(v57 + v61, 1, v62))
      {
        (*(v63 + 8))(v57 + v61, v62);
      }

      v65 = *(v60 + 28);
      if (!v64(v57 + v65, 1, v62))
      {
        (*(v63 + 8))(v57 + v65, v62);
      }

      v5 = v264;
      v31 = v248;
      v32 = v252;
    }

    v59 = v253;
    goto LABEL_67;
  }

LABEL_136:

  if (*(v2 + v1[24]))
  {
  }

  v130 = v2 + v1[27];
  if (*(v130 + 8))
  {
  }

  v131 = (v2 + v1[30]);
  if (!v5(v131, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v132 = swift_getEnumCaseMultiPayload();
    if (v132 == 2)
    {

      v133 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v134 = sub_1BE04CF34();
      (*(*(v134 - 8) + 8))(v131 + v133, v134);
    }

    else if (v132 <= 1)
    {
    }

    v135 = v131 + v4[6];
    v136 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v136 - 8) + 48))(v135, 1, v136))
    {

      v137 = *(v136 + 20);
      v138 = sub_1BE04DA84();
      (*(*(v138 - 8) + 8))(&v135[v137], v138);
    }

    v139 = (v131 + v4[7]);
    v140 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v140 - 8) + 48))(v139, 1, v140))
    {

      v141 = *(v140 + 28);
      v142 = sub_1BE04AF64();
      v143 = *(v142 - 8);
      if (!(*(v143 + 48))(v139 + v141, 1, v142))
      {
        (*(v143 + 8))(v139 + v141, v142);
      }
    }

    v144 = v131 + v4[10];
    v145 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v145 - 8) + 48))(v144, 1, v145))
    {
      if (*(v144 + 2) != 1)
      {
      }

      if (*(v144 + 9) != 1)
      {
      }

      v146 = *(v145 + 28);
      v147 = sub_1BE04AF64();
      v148 = *(v147 - 8);
      v149 = *(v148 + 48);
      if (!v149(&v144[v146], 1, v147))
      {
        (*(v148 + 8))(&v144[v146], v147);
      }

      v150 = *(v145 + 32);
      v5 = v264;
      v4 = v265;
      if (!v149(&v144[v150], 1, v147))
      {
        (*(v148 + 8))(&v144[v150], v147);
      }
    }

    v151 = (v131 + v4[12]);
    if (*v151)
    {
    }

    v152 = (v131 + v4[13]);
    if (*v152)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);

  v153 = (v2 + v1[32]);
  v154 = _s11DetailSheetOMa();
  if (!(*(*(v154 - 8) + 48))(v153, 1, v154))
  {
    v155 = swift_getEnumCaseMultiPayload();
    if (v155 <= 1)
    {
      if (!v155)
      {
        if (!v5(v153, 1, v4))
        {
          type metadata accessor for WrappedPass(0);
          v159 = swift_getEnumCaseMultiPayload();
          if (v159 == 2)
          {

            v200 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v201 = sub_1BE04CF34();
            (*(*(v201 - 8) + 8))(v153 + v200, v201);
          }

          else if (v159 <= 1)
          {
          }

          v202 = v153 + v4[6];
          v203 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v203 - 8) + 48))(v202, 1, v203))
          {

            v204 = *(v203 + 20);
            v205 = sub_1BE04DA84();
            (*(*(v205 - 8) + 8))(&v202[v204], v205);
          }

          v206 = (v153 + v4[7]);
          v207 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v207 - 8) + 48))(v206, 1, v207))
          {

            v208 = *(v207 + 28);
            v209 = sub_1BE04AF64();
            v210 = *(v209 - 8);
            if (!(*(v210 + 48))(v206 + v208, 1, v209))
            {
              (*(v210 + 8))(v206 + v208, v209);
            }
          }

          v211 = v153 + v4[10];
          v212 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v212 - 8) + 48))(v211, 1, v212))
          {
            if (*(v211 + 2) != 1)
            {
            }

            if (*(v211 + 9) != 1)
            {
            }

            v213 = *(v212 + 28);
            v214 = sub_1BE04AF64();
            v215 = *(v214 - 8);
            v216 = *(v215 + 48);
            if (!v216(&v211[v213], 1, v214))
            {
              (*(v215 + 8))(&v211[v213], v214);
            }

            v261 = v215;
            v217 = *(v212 + 32);
            v5 = v264;
            v4 = v265;
            if (!v216(&v211[v217], 1, v214))
            {
              (*(v261 + 8))(&v211[v217], v214);
            }
          }

          v218 = (v153 + v4[12]);
          if (*v218)
          {
          }

          v219 = (v153 + v4[13]);
          if (*v219)
          {
          }
        }

        v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

        v221 = v153 + *(v220 + 64);

        v157 = *(v221 + 4);
        goto LABEL_243;
      }

      if (v155 != 1)
      {
        goto LABEL_244;
      }

LABEL_174:
      v157 = *v153;
LABEL_243:

      goto LABEL_244;
    }

    if (v155 != 2)
    {
      if (v155 != 3)
      {
        if (v155 != 4)
        {
          goto LABEL_244;
        }

        type metadata accessor for WrappedPass(0);
        v156 = swift_getEnumCaseMultiPayload();
        if (v156 == 2)
        {

          v180 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v181 = sub_1BE04CF34();
          (*(*(v181 - 8) + 8))(v153 + v180, v181);
        }

        else if (v156 <= 1)
        {
        }

        v182 = v153 + v4[6];
        v183 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v183 - 8) + 48))(v182, 1, v183))
        {

          v184 = *(v183 + 20);
          v185 = sub_1BE04DA84();
          (*(*(v185 - 8) + 8))(&v182[v184], v185);
        }

        v186 = (v153 + v4[7]);
        v187 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v187 - 8) + 48))(v186, 1, v187))
        {

          v188 = *(v187 + 28);
          v189 = sub_1BE04AF64();
          v190 = *(v189 - 8);
          if (!(*(v190 + 48))(v186 + v188, 1, v189))
          {
            (*(v190 + 8))(v186 + v188, v189);
          }
        }

        v191 = v153 + v4[10];
        v192 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v192 - 8) + 48))(v191, 1, v192))
        {
          if (*(v191 + 2) != 1)
          {
          }

          if (*(v191 + 9) != 1)
          {
          }

          v193 = *(v192 + 28);
          v194 = sub_1BE04AF64();
          v195 = *(v194 - 8);
          v196 = *(v195 + 48);
          if (!v196(&v191[v193], 1, v194))
          {
            (*(v195 + 8))(&v191[v193], v194);
          }

          v260 = v195;
          v197 = *(v192 + 32);
          v5 = v264;
          v4 = v265;
          if (!v196(&v191[v197], 1, v194))
          {
            (*(v260 + 8))(&v191[v197], v194);
          }
        }

        v198 = (v153 + v4[12]);
        if (*v198)
        {
        }

        v199 = (v153 + v4[13]);
        if (*v199)
        {
        }

        v157 = *(v153 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60) + 48));
        goto LABEL_243;
      }

      goto LABEL_174;
    }

    type metadata accessor for WrappedPass(0);
    v158 = swift_getEnumCaseMultiPayload();
    if (v158 == 2)
    {

      v160 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v161 = sub_1BE04CF34();
      (*(*(v161 - 8) + 8))(v153 + v160, v161);
    }

    else if (v158 <= 1)
    {
    }

    v162 = v153 + v4[6];
    v163 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v163 - 8) + 48))(v162, 1, v163))
    {

      v164 = *(v163 + 20);
      v165 = sub_1BE04DA84();
      (*(*(v165 - 8) + 8))(&v162[v164], v165);
    }

    v166 = (v153 + v4[7]);
    v167 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v167 - 8) + 48))(v166, 1, v167))
    {

      v168 = *(v167 + 28);
      v169 = sub_1BE04AF64();
      v170 = *(v169 - 8);
      if (!(*(v170 + 48))(v166 + v168, 1, v169))
      {
        (*(v170 + 8))(v166 + v168, v169);
      }
    }

    v171 = v153 + v4[10];
    v172 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v172 - 8) + 48))(v171, 1, v172))
    {
      if (*(v171 + 2) != 1)
      {
      }

      if (*(v171 + 9) != 1)
      {
      }

      v173 = *(v172 + 28);
      v174 = sub_1BE04AF64();
      v175 = *(v174 - 8);
      v176 = *(v175 + 48);
      if (!v176(&v171[v173], 1, v174))
      {
        (*(v175 + 8))(&v171[v173], v174);
      }

      v259 = v175;
      v177 = *(v172 + 32);
      v5 = v264;
      v4 = v265;
      if (!v176(&v171[v177], 1, v174))
      {
        (*(v259 + 8))(&v171[v177], v174);
      }
    }

    v178 = (v153 + v4[12]);
    if (*v178)
    {
    }

    v179 = (v153 + v4[13]);
    if (*v179)
    {
    }
  }

LABEL_244:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);

  if (*(v2 + v1[34] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + v1[34]);
  }

  v222 = (v2 + v1[35]);
  if (!v5(v222, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v223 = swift_getEnumCaseMultiPayload();
    if (v223 == 2)
    {

      v224 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v225 = sub_1BE04CF34();
      (*(*(v225 - 8) + 8))(v222 + v224, v225);
    }

    else if (v223 <= 1)
    {
    }

    v226 = v222 + v4[6];
    v227 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v227 - 8) + 48))(v226, 1, v227))
    {

      v228 = *(v227 + 20);
      v229 = sub_1BE04DA84();
      (*(*(v229 - 8) + 8))(&v226[v228], v229);
    }

    v230 = (v222 + v4[7]);
    v231 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v231 - 8) + 48))(v230, 1, v231))
    {

      v232 = *(v231 + 28);
      v233 = sub_1BE04AF64();
      v234 = *(v233 - 8);
      if (!(*(v234 + 48))(v230 + v232, 1, v233))
      {
        (*(v234 + 8))(v230 + v232, v233);
      }
    }

    v235 = v222 + v4[10];
    v236 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v236 - 8) + 48))(v235, 1, v236))
    {
      if (*(v235 + 2) != 1)
      {
      }

      if (*(v235 + 9) != 1)
      {
      }

      v237 = *(v236 + 28);
      v238 = sub_1BE04AF64();
      v239 = *(v238 - 8);
      v240 = *(v239 + 48);
      if (!v240(&v235[v237], 1, v238))
      {
        (*(v239 + 8))(&v235[v237], v238);
      }

      v241 = *(v236 + 32);
      v4 = v265;
      if (!v240(&v235[v241], 1, v238))
      {
        (*(v239 + 8))(&v235[v241], v238);
      }
    }

    v242 = (v222 + v4[12]);
    if (*v242)
    {
    }

    v243 = (v222 + v4[13]);
    if (*v243)
    {
    }
  }

  v244 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v245 = sub_1BE04C884();
    (*(*(v245 - 8) + 8))(v2 + v244, v245);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD080614()
{
  v1 = v0;
  v2 = *(type metadata accessor for PaymentPassDefaultConfirmationModifier(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for AvailablePass(0);
  v6 = *(v5 - 1);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  v8 = (v1 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B20) + 32));
  v54 = v7;
  if (!(*(v6 + 48))(v8, 1, v5))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v10 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v11 = sub_1BE04CF34();
      (*(*(v11 - 8) + 8))(v8 + v10, v11);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v12 = v8 + v5[6];
    v13 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v14 = *(v13 + 20);
      v15 = sub_1BE04DA84();
      (*(*(v15 - 8) + 8))(&v12[v14], v15);
    }

    v16 = (v8 + v5[7]);
    v17 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {

      v18 = *(v17 + 28);
      v19 = sub_1BE04AF64();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v16 + v18, 1, v19))
      {
        (*(v20 + 8))(v16 + v18, v19);
      }
    }

    v21 = v8 + v5[10];
    v22 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
    {
      if (*(v21 + 2) != 1)
      {
      }

      v53 = v1;
      if (*(v21 + 9) != 1)
      {
      }

      v23 = *(v22 + 28);
      v24 = sub_1BE04AF64();
      v52 = *(v24 - 8);
      v25 = *(v52 + 48);
      if (!v25(&v21[v23], 1, v24))
      {
        (*(v52 + 8))(&v21[v23], v24);
      }

      v26 = *(v22 + 32);
      v1 = v53;
      if (!v25(&v21[v26], 1, v24))
      {
        (*(v52 + 8))(&v21[v26], v24);
      }
    }

    v27 = (v8 + v5[12]);
    if (*v27)
    {
    }

    v28 = (v8 + v5[13]);
    v7 = v54;
    if (*v28)
    {
    }
  }

  v29 = (v1 + v7);
  type metadata accessor for WrappedPass(0);
  v30 = swift_getEnumCaseMultiPayload();
  if (v30 == 2)
  {

    v31 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v32 = sub_1BE04CF34();
    (*(*(v32 - 8) + 8))(v29 + v31, v32);
  }

  else if (v30 <= 1)
  {
  }

  v33 = v29 + v5[6];
  v34 = type metadata accessor for IdentityCredential(0);
  if (!(*(*(v34 - 8) + 48))(v33, 1, v34))
  {

    v35 = *(v34 + 20);
    v36 = sub_1BE04DA84();
    (*(*(v36 - 8) + 8))(&v33[v35], v36);
  }

  v37 = (v29 + v5[7]);
  v38 = type metadata accessor for BalanceInfo(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {

    v39 = *(v38 + 28);
    v40 = sub_1BE04AF64();
    v41 = *(v40 - 8);
    if (!(*(v41 + 48))(v37 + v39, 1, v40))
    {
      (*(v41 + 8))(v37 + v39, v40);
    }
  }

  v42 = v29 + v5[10];
  v43 = type metadata accessor for PassEligibleRewardsInfo();
  if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
  {
    if (*(v42 + 2) != 1)
    {
    }

    if (*(v42 + 9) != 1)
    {
    }

    v44 = *(v43 + 28);
    v45 = sub_1BE04AF64();
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    if (!v47(&v42[v44], 1, v45))
    {
      (*(v46 + 8))(&v42[v44], v45);
    }

    v48 = *(v43 + 32);
    if (!v47(&v42[v48], 1, v45))
    {
      (*(v46 + 8))(&v42[v48], v45);
    }
  }

  v49 = (v29 + v5[12]);
  if (*v49)
  {
  }

  v50 = (v29 + v5[13]);
  if (*v50)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD080FA4()
{
  v1 = *(*(type metadata accessor for PaymentPassDefaultConfirmationModifier(0) - 8) + 80);

  v2 = (v0 + ((v1 + 16) & ~v1) + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B20) + 32));
  v3 = type metadata accessor for AvailablePass(0);
  if (!(*(*(v3 - 1) + 48))(v2, 1, v3))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v5 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v6 = sub_1BE04CF34();
      (*(*(v6 - 8) + 8))(v2 + v5, v6);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v7 = v2 + v3[6];
    v8 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {

      v9 = *(v8 + 20);
      v10 = sub_1BE04DA84();
      (*(*(v10 - 8) + 8))(&v7[v9], v10);
    }

    v11 = (v2 + v3[7]);
    v12 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 28);
      v14 = sub_1BE04AF64();
      v15 = *(v14 - 8);
      if (!(*(v15 + 48))(v11 + v13, 1, v14))
      {
        (*(v15 + 8))(v11 + v13, v14);
      }
    }

    v16 = v2 + v3[10];
    v17 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {
      if (*(v16 + 2) != 1)
      {
      }

      if (*(v16 + 9) != 1)
      {
      }

      v18 = *(v17 + 28);
      v19 = sub_1BE04AF64();
      v25 = *(v19 - 8);
      v20 = *(v25 + 48);
      if (!v20(&v16[v18], 1, v19))
      {
        (*(v25 + 8))(&v16[v18], v19);
      }

      v21 = *(v17 + 32);
      if (!v20(&v16[v21], 1, v19))
      {
        (*(v25 + 8))(&v16[v21], v19);
      }
    }

    v22 = (v2 + v3[12]);
    if (*v22)
    {
    }

    v23 = (v2 + v3[13]);
    if (*v23)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0814F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47F68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47F70);
  type metadata accessor for AvailablePass(255);
  sub_1BD0DE4F4(&qword_1EBD47F78, &qword_1EBD47F68);
  sub_1BD0DDEBC();
  sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80);
  sub_1BD4D58A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD081670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD08172C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0817DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47FB0);
  sub_1BD0DE4F4(&qword_1EBD47FD8, &qword_1EBD47FB0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD081878()
{
  v1 = (type metadata accessor for AddBankCredentialSheet() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[10];
  v4 = sub_1BE0492B4();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FE0);

  return swift_deallocObject();
}

uint64_t sub_1BD0819F0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1BD081A2C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD081AA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD081AD4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1BD081C1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD081D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BD081E24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1BD081F2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD081FE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0820A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD483F0);
  sub_1BD4E7480();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD08210C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08214C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0821C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48660);
  sub_1BD4EB82C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD082290@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BD4EDE3C(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1BD0822F4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08233C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE04AF64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0823E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE04AF64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD082498()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0824D0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD082510()
{

  return swift_deallocObject();
}

uint64_t sub_1BD082548()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD082580()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0825B8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0825F4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD08262C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD082684()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0826BC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD082728()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD082760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BD08282C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE04AFE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1BD0828F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD082964()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0829A4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD082A70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD491E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD082AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD491E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD082B48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD491E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49210);
  sub_1BD50ECF0();
  sub_1BD50EE34();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD082E00()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD082E40()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD082E78()
{

  return swift_deallocObject();
}

uint64_t sub_1BD082EB0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD082EF0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD082F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD083000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD0830C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD08315C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49290);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD492D0);
  sub_1BD5184CC();
  sub_1BD0DE4F4(&qword_1EBD492E0, &qword_1EBD492D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD08323C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s14MerchantOriginOMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1BD08330C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s14MerchantOriginOMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1BD0833CC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD083410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1BD083558(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD083694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BD083760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1BD08381C()
{
  v1 = *(type metadata accessor for FinanceKitMerchantBrandViewButtons(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v4 = *(v3 + 20);
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v7 = *(v3 + 24);
  v8 = sub_1BE0491B4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD083A04()
{

  return swift_deallocObject();
}

uint64_t sub_1BD083A3C()
{
  v1 = sub_1BE04AA64();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD083AD4()
{
  v1 = *(type metadata accessor for FinanceKitMerchantBrandViewButtons(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v5 = *(v4 + 20);
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v4 + 24);
  v9 = sub_1BE0491B4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD083CC8()
{
  _Block_release(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1BD083D24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49680);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD083DE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD083E90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49700);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1BD083F58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49700);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD084010()
{
  v1 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v2 + *(v1 + 60);
  v5 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 24);
    v7 = sub_1BE04AA64();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49680);

  sub_1BD528638(*(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1BD084254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49818);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0842E8()
{
  v1 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v2 + *(v1 + 60);
  v5 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 24);
    v7 = sub_1BE04AA64();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49680);

  return swift_deallocObject();
}

uint64_t sub_1BD084630@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049C34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD08469C()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1BD084728()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD084788()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0847E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD084860()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C20);
  sub_1BD53E33C();
  swift_getOpaqueTypeConformance2();
  sub_1BD0F9764();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD084AF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E50);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD084B88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD084C44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD084DEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD084ED0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49F70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49F68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49F60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49F08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49F58);
  sub_1BD54C480();
  sub_1BD54C530();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1BD54C5F0();
  swift_getOpaqueTypeConformance2();
  sub_1BD54C914();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD085098()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0850D0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD085158@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD551860(*v1, v1[1]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD085184(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD085240(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0852F4()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08534C()
{
  v1 = type metadata accessor for PaymentOfferSelectorTile();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 128))
  {
  }

  v3 = v2 + *(v1 + 36);

  v4 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8) + 32));
  v5 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_1BE04AA64();
      (*(*(v6 - 8) + 8))(v4, v6);
    }

    else
    {
    }
  }

  if (*(v2 + *(v1 + 44)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD085578@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F364();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD0855E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F224();
  *a1 = result;
  return result;
}

uint64_t sub_1BD085634()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08566C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1BFB3C340]();
  *a1 = result;
  return result;
}

uint64_t sub_1BD085728@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04F3A4();
  *a1 = result;
  return result;
}

uint64_t sub_1BD085804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD0858D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD08599C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD085A24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A7F0);
  sub_1BD55D34C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD085AA8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD085AE0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD085B1C()
{
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  swift_getWitnessTable();
  type metadata accessor for OffsetScrollView();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A860);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD36758, &qword_1EBD4A860);
  swift_getWitnessTable();
  sub_1BE04F6A4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A868);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD36760, &qword_1EBD4A868);
  swift_getWitnessTable();
  sub_1BE04F6A4();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0860AC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0860EC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08612C()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD086174()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0861B4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0861F0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD086230()
{

  return swift_deallocObject();
}

uint64_t sub_1BD086268()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0862C0()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0862F8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD086338()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD086380()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0863E4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08641C()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD086464()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08649C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD08650C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AvailablePass(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0865B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AvailablePass(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD08665C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD086694()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0866CC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08670C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE049364();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BD0867D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE049364();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1BD086900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD086A18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD086A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD086AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BD086BC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 16) = (a2 + 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD086C78(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_13:
    v15 = *(v11 + 48);

    return v15(&a1[v12], a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[8];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE8);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[9]];

  return v17(v18, a2, v16);
}

char *sub_1BD086E5C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE8);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[9]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1BD0870F4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD08712C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD087174()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0871AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B258);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1BD0872F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B258);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1BD08743C()
{
  v1 = sub_1BE04D474();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 32) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6 + v5[7];
  v8 = sub_1BE04AF64();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v9(v7 + *(v10 + 36), v8);

  v11 = v5[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1BE04EB44();
    (*(*(v12 - 8) + 8))(v0 + v6 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD087684()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0876BC()
{
  v1 = (type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  v4 = sub_1BE04AF64();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v5(v3 + *(v6 + 36), v4);

  v7 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1BE04EB44();
    (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD087874()
{
  v1 = (type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v13 = *(*v1 + 64);
  v15 = sub_1BE04D474();
  v3 = *(v15 - 8);
  v4 = *(v3 + 80);
  v14 = v2;
  v5 = v0 + v2;
  v6 = v0 + v2 + v1[7];
  v7 = sub_1BE04AF64();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v8(v6 + *(v9 + 36), v7);

  v10 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04EB44();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  (*(v3 + 8))(v0 + ((v14 + v13 + v4) & ~v4), v15);

  return swift_deallocObject();
}

uint64_t sub_1BD087AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD087B48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD087BC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B2B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B310);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B2A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BB80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B2A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B300);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B298);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B290);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B2F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B288);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B280);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B2C8);
  sub_1BD0DE4F4(&qword_1EBD4B2D0, &qword_1EBD4B280);
  sub_1BD58D1F4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD4B2F8, &qword_1EBD4B2F0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD4B308, &qword_1EBD4B300);
  swift_getOpaqueTypeConformance2();
  sub_1BD19CE20();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD4B318, &qword_1EBD4B310);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD087F28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD087FE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD088098()
{
  v1 = (type metadata accessor for FinanceKitTransactionTypeView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0881D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD08824C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08828C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD088390()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD371E0);
  sub_1BD595864();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD088404()
{

  return swift_deallocObject();
}

uint64_t sub_1BD088440(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0884FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FA70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0885B4()
{
  v1 = type metadata accessor for FavoritesView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1BE04E664();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD08875C()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD088818()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD088858()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0888A0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0888D8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD088920()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08896C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0889B4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD088A04()
{

  return swift_deallocObject();
}

uint64_t sub_1BD088A48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD088B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04E724();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD088B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04E724();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD088BEC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD088C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD088CF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD088DA8()
{
  type metadata accessor for AutomaticSheetViewModifier();
  swift_getWitnessTable();
  sub_1BE04FC14();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  sub_1BE04F9B4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1BD088F1C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD088F54()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD088F8C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD088FD4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD08904C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0890C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD089130()
{

  if (*(v0 + 64) >= 5uLL)
  {
  }

  sub_1BD0D4604(*(v0 + 104), *(v0 + 112));
  sub_1BD035CB4(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  v1 = *(v0 + 144);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD089204()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD089240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD08930C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD089408()
{

  return swift_deallocObject();
}

uint64_t sub_1BD089470()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0894BC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD089508@<X0>(void *a1@<X8>)
{
  sub_1BD5BCCF4();
  result = sub_1BE04F3E4();
  *a1 = v3;
  return result;
}

uint64_t sub_1BD08955C()
{
  sub_1BE04E924();
  sub_1BE04EC14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C070);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD5BCC90();
  return swift_getWitnessTable();
}

void sub_1BD08963C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD5C0D04(v1);
}

uint64_t sub_1BD08966C()
{
  v1 = sub_1BE04AA64();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_1BD08971C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD5C0B88(v1);
}

void sub_1BD089774(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD5C0E80(v1);
}

void sub_1BD0897CC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD5C0714(v1);
}

void sub_1BD089824(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD5C0A0C(v1);
}

void sub_1BD08987C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD5C1108(v1);
}

void sub_1BD0898D8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD5C0890(v1);
}

uint64_t sub_1BD089908()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD089948()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0899B0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD089A34()
{

  return swift_deallocObject();
}

uint64_t sub_1BD089A74()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD089AAC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD089AE4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD089B2C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD089B84()
{

  return swift_deallocObject();
}

uint64_t sub_1BD089BDC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD089C2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C330);
  sub_1BD5CA4D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD089CF8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD089DB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}