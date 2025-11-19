uint64_t sub_1BD0C7F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
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
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0C8020(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C80DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BE04D214();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0C8188(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE04D214();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C8230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0C82F4()
{
  v1 = (type metadata accessor for FinanceKitPredictedTransactionsView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1BE049BF4();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0 + v2;
  sub_1BD0D45CC();

  v8 = v1[9];
  v9 = sub_1BE04D214();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1BD0C8484()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C84BC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C84F8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0C8530()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C8580()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C85D8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C863C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0C8684(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1BD0C8740(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1BD0C87F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0C8868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD0C8974()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0C89B8()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C8A10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049E34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD0C8A98()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C8AFC()
{
  v1 = (type metadata accessor for FeatureError(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = v0 + v2;

  v7 = v1[7];
  v8 = sub_1BE04B824();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  if (!v10(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C8CE4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0C8D20()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_1BE04B7C4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C8E7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  sub_1BE04EBD4();
  sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  swift_getWitnessTable();
  sub_1BE04E2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A458);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD366F8, &qword_1EBD5A458);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0C9048()
{

  return swift_deallocObject();
}

id sub_1BD0C9080@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1BD0C90EC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0C9128()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C9160()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C91A0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C9208()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C9250()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0C92A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0C9320@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0C934C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0C9378(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0C9434(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C9530()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C9568()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C95CC()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C9604()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C963C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C96DC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A9D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0C9798(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A9D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0C9848(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BE04AF64();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD0C9978(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BE04AF64();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0C9AE0()
{
  v1 = (type metadata accessor for FinanceKitTransactionFoundInMailView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A9D8);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1BD0C9BFC()
{
  v1 = (type metadata accessor for FinanceKitTransactionFoundInMailView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A9D8);
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1BD0C9D70()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C9E30()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C9EB4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0C9EEC()
{

  if (*(v0 + 48) >= 7uLL)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0C9F3C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0C9F74()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0CA000@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0CA054()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0CA08C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CA0CC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CA120()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CA1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s11TotalAmountVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41380);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BD0CA2E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s11TotalAmountVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41380);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BD0CA418(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0CA484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD0CA4F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD0CA634(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0CA770()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0CA7A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04EFE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD0CA808()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CA84C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B0C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0CA8C0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0CA97C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0CAA30()
{
  v1 = (type metadata accessor for AppleCardBillingAddressSection() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = (v0 + v2 + v1[14]);
  v5 = type metadata accessor for FeatureError(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 20);
    v7 = sub_1BE04B824();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);

  return swift_deallocObject();
}

uint64_t sub_1BD0CAC50()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0CAC88()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CACC0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CAD00()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CAD50(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD0CAE8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0CAFD4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CB00C()
{
  v1 = type metadata accessor for RedemptionPresentation(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[7];
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = v1[8];
  v7 = sub_1BE04AF64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v10 = v1[11];
  if (!v9(v2 + v10, 1, v7))
  {
    (*(v8 + 8))(v2 + v10, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0CB294()
{
  v1 = type metadata accessor for RedemptionPresentation(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[7];
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = v1[8];
  v7 = sub_1BE04AF64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v10 = v1[11];
  if (!v9(v2 + v10, 1, v7))
  {
    (*(v8 + 8))(v2 + v10, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0CB4EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedemptionPresentation(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0CB558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedemptionPresentation(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD0CB5CC()
{
  sub_1BE04E8F4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051874();
  return swift_getWitnessTable();
}

id sub_1BD0CB708@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKCredentialCenterViewController_hostingVC;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1BD0CB780(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1BE048964();

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1BD0CB818()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CB860()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CB8B0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CB900@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04EFA4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD0CB964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0CB9D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0CBA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BD0CBB08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD0CBBD0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55600);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B758);
  sub_1BE04EBD4();
  swift_getWitnessTable();
  type metadata accessor for PaymentSheetContentContainer();
  swift_getWitnessTable();
  type metadata accessor for AuthorizationSheet();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051874();
  sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600);
  swift_getWitnessTable();
  sub_1BE04EE14();
  sub_1BE04EBD4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for PaymentRequestViewContainer();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  sub_1BD9EBD2C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  return swift_getWitnessTable();
}

uint64_t sub_1BD0CBEFC()
{
  sub_1BE04F9B4();
  sub_1BE04EBD4();
  sub_1BE04F9B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BD0CBFFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B7A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0CC084()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B7A0);
  sub_1BD9ED21C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0CC0E8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0CC120(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0CC1DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0CC298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B918);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0CC38C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1BE04AFE4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_1BE049B04();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_1BD0CC504(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1BE04AFE4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_1BE049B04();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BD0CC688()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5BAF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5BB20);
  sub_1BD0DE4F4(&qword_1EBD5BB28, &qword_1EBD5BAF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5BB30);
  sub_1BD9FAB0C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0CC7C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1BE0493F4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[7]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F8);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[9];
      goto LABEL_7;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F0);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[10];
      goto LABEL_7;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507E8);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[11];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_1BD0CCA44(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BE04AFE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1BE0493F4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[10];
    goto LABEL_7;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507E8);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[11];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1BD0CCCC0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_1BE049B04();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_13;
  }

  v17 = sub_1BE0493F4();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[10];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[11];

  return v19(v20, a2, v18);
}

uint64_t sub_1BD0CCEE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1BE04AFE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1BE049B04();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v17 = sub_1BE0493F4();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[11];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1BD0CD100(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BE049B04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1BE0493F4();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1BD0CD280(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1BE049B04();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_1BE0493F4();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1BD0CD40C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0CD444()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v13 = *(v5 + 64);
  v14 = sub_1BE04B2D4();
  v7 = *(v14 - 8);
  v8 = *(v7 + 80);
  swift_unknownObjectRelease();

  v9 = v0 + v3;
  v10 = sub_1BE04AF64();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v11(v9 + *(v1 + 36), v10);
  if (!(*(v2 + 48))(v0 + v6, 1, v1))
  {
    v11(v0 + v6, v10);
    v11(v0 + v6 + *(v1 + 36), v10);
  }

  (*(v7 + 8))(v0 + ((v6 + v13 + v8) & ~v8), v14);

  return swift_deallocObject();
}

uint64_t sub_1BD0CD6CC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = sub_1BE04AF64();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + v2 + v1[11], v3);

  return swift_deallocObject();
}

uint64_t sub_1BD0CD7E8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3))
  {
    v4 = sub_1BE04AF64();
    v5 = *(*(v4 - 8) + 8);
    v5(v0 + v2, v4);
    v5(v0 + v2 + *(v3 + 36), v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0CD95C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0CD99C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDD0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDE0);
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDC8) + 52);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDD8);
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = v1[18];
  v8 = sub_1BE053924();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1BD0CDB8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = _s14MerchantOriginOMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0CDC38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = _s14MerchantOriginOMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0CDCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BD0CDDD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BD0CDEE0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CDF18()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CDF58()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CDF98()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0CE008(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BE0511B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0CE0B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE0511B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0CE1AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0CE1E4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CE21C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CE2EC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CE338()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

void *sub_1BD0CE380@<X0>(void *a1@<X8>)
{
  result = sub_1BD20B2EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD0CE434@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F024();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD0CE48C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CE4C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04F0E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD0CE614@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE049B94();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD0CE66C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049534();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD0CE73C@<X0>(_WORD *a1@<X8>)
{
  result = sub_1BE0498C4();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0CE770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0CE82C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0CE8DC()
{
  v1 = type metadata accessor for CachedAsyncImage();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)));
  sub_1BDA32618(*v2);

  v3 = *(v1 + 40);
  v4 = sub_1BE04A134();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0CEA3C()
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C350);
  v1 = *(v13 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1BE04A134();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = type metadata accessor for CachedAsyncImage();
  v9 = *(*(v8 - 8) + 80);
  (*(v1 + 8))(v0 + v2, v13);
  v14 = *(v5 + 8);
  v14(v0 + v6, v4);
  v10 = (v0 + ((v6 + v7 + v9) & ~v9));
  sub_1BDA32618(*v10);

  v11 = *(v8 + 40);
  if (!(*(v5 + 48))(v10 + v11, 1, v4))
  {
    v14(v10 + v11, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0CEC98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C330);
  sub_1BE04EBD4();
  sub_1BDA32814();
  return swift_getWitnessTable();
}

uint64_t sub_1BD0CED18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C360);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E98);
  sub_1BD0DE4F4(&qword_1EBD5C368, &qword_1EBD5C360);
  sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80);
  sub_1BD12E194();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0CEEA4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CEEF4()
{
  v1 = type metadata accessor for DeviceViewModel(0);
  v2 = (*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80);

  v3 = *(v1 + 24);
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0CF078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DeviceViewModel(0);
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
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BD0CF150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DeviceViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1BD0CF20C()
{
  v1 = *(type metadata accessor for DeviceRowView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(type metadata accessor for DeviceViewModel(0) + 24);
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0CF37C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C5A8);
  sub_1BD0DE4F4(&qword_1EBD5C5B8, &qword_1EBD5C5A8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0CF428()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CF460()
{

  if (*(v0 + 248))
  {
  }

  sub_1BD0D4604(*(v0 + 272), *(v0 + 280));

  return swift_deallocObject();
}

uint64_t sub_1BD0CF50C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1BD0CF694(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BD0CF814()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0CF874()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CF8D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0CF980@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049A04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD0CFA4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE049A74();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD0CFB6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049144();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD0CFC14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049E24();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD0CFCBC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C750);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C758);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C760);
  sub_1BDA4A7D4();
  swift_getOpaqueTypeConformance2();
  sub_1BD0F9764();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0CFDB4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0CFE64()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD0CFF38()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0CFF78()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0CFFD0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0D0018()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0D0050()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0D00A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
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
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BD0D0170(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
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
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BD0D0240(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5CBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0D0334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailablePass(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD0D03A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailablePass(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BD0D0410()
{
  v1 = *(type metadata accessor for PeerPaymentAddMoneyRow() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v4 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v5 = sub_1BE04CF34();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v6 = type metadata accessor for AvailablePass(0);
  v7 = v2 + v6[6];
  v8 = type metadata accessor for IdentityCredential(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v9 = *(v8 + 20);
    v10 = sub_1BE04DA84();
    (*(*(v10 - 8) + 8))(&v7[v9], v10);
  }

  v11 = (v2 + v6[7]);
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

  v16 = v2 + v6[10];
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
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (!v21(&v16[v18], 1, v19))
    {
      (*(v20 + 8))(&v16[v18], v19);
    }

    v22 = *(v17 + 32);
    if (!v21(&v16[v22], 1, v19))
    {
      (*(v20 + 8))(&v16[v22], v19);
    }
  }

  v23 = (v2 + v6[12]);
  if (*v23)
  {
  }

  v24 = (v2 + v6[13]);
  if (*v24)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0D0924()
{
  sub_1BE04E8F4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051874();
  return swift_getWitnessTable();
}

uint64_t sub_1BD0D0A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BD0D0B6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BD0D0CA8(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_1BE04AD84();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[9]];

  return v15(v16, a2, v14);
}

char *sub_1BD0D0E2C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_1BE04AD84();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[9]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BD0D0FC0()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0D107C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D008);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D060);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ABA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E5A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D000);
  sub_1BDA67B10();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD5D068, &qword_1EBD5D060);
  sub_1BD170E70();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0D1224(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD0D12E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0D1390()
{
  v1 = (type metadata accessor for ActionButton() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1BD0D1484()
{
  v1 = (type metadata accessor for ActionButton() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1BD0D15B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D168);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0D16C4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0D16FC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0D175C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0D17F4()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD0D182C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0D186C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0D18B4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

BOOL sub_1BD0D1984(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_1BDA731C0(v12, v14);
}

uint64_t sub_1BD0D1A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0D1AEC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0D1B24()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0D1B64()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0D1B9C()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0D1BD4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0D1C2C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BD0D1C64()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD0D1CA4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0D1CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0D1D4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0D1DB4()
{

  return swift_deallocObject();
}

uint64_t sub_1BD0D1E00@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0D1ECC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PKMicaView_namedLayers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_1BE048C84();
}

uint64_t sub_1BD0D1F2C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B258);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[17];

  return v15(v16, a2, v14);
}

uint64_t sub_1BD0D20BC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B258);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[17];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BD0D224C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0D22C0()
{
  v1 = sub_1BE04D474();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for SavingsBalanceHistoryView();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;

  v8 = v0 + v6 + v5[6];

  v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898) + 32);
  v10 = type metadata accessor for AccountBalance(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = *(v10 + 20);
    v12 = sub_1BE04AF64();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  v13 = v5[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1BE04E354();
    (*(*(v14 - 8) + 8))(v7 + v13, v14);
  }

  else
  {
  }

  v15 = v5[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1BE04EB44();
    (*(*(v16 - 8) + 8))(v7 + v15, v16);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0D2598()
{
  v1 = type metadata accessor for SavingsBalanceHistoryView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = sub_1BE04D474();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;

  v7 = v0 + v2 + v1[6];

  v8 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898) + 32);
  v9 = type metadata accessor for AccountBalance(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = *(v9 + 20);
    v11 = sub_1BE04AF64();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  v12 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04E354();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
  }

  else
  {
  }

  v14 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1BE04EB44();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((v2 + v17 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_1BD0D289C()
{
  v1 = type metadata accessor for SavingsBalanceHistoryView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];

  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898) + 32);
  v5 = type metadata accessor for AccountBalance(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = *(v5 + 20);
    v7 = sub_1BE04AF64();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1BE04E354();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  v10 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04EB44();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0D2B04()
{
  v1 = type metadata accessor for SavingsBalanceHistoryView();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v0 + v2 + v1[6];

  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898) + 32);
  v6 = type metadata accessor for AccountBalance(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = *(v6 + 20);
    v8 = sub_1BE04AF64();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1BE04E354();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1BE04EB44();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0D2DC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0D2E2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DB00);
  sub_1BDA918B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0D2E90(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1BD0D2F4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD0D2FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FinanceKitTransactionMapView.ViewModel(0);
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

uint64_t sub_1BD0D30B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FinanceKitTransactionMapView.ViewModel(0);
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

uint64_t sub_1BD0D3170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0D31E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0D3248()
{
  v1 = *(type metadata accessor for FinanceKitTransactionMapView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  v3 = *(type metadata accessor for FinanceKitTransactionMapView.ViewModel(0) + 24);
  v4 = sub_1BE0491B4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0D33B4()
{
  v1 = *(type metadata accessor for FinanceKitTransactionMapView(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = *(type metadata accessor for FinanceKitTransactionMapView.ViewModel(0) + 24);
  v4 = sub_1BE0491B4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0D3578@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0D44B8(uint64_t result)
{
  if (result)
  {
    return sub_1BE048964();
  }

  return result;
}

void sub_1BD0D455C(void *a1, void *a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_1BD0D4604(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PaymentOfferInstallmentAmountEntry(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  sub_1BE048964();
  return v2 + 16;
}

uint64_t sub_1BD0D4658@<X0>(void *a1@<X8>)
{
  result = sub_1BE04E684();
  *a1 = v3;
  return result;
}

void *sub_1BD0D468C(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13PaymentUIBase16ClientViewSource_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI15SetupFooterViewV13ConfigurationV0eG0VSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD0D4744(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_1BD0D4770(void *result)
{
  if (result)
  {
    v1 = result;

    return sub_1BE048C84();
  }

  return result;
}

uint64_t static AppIntentUIUtilities.annotate(view:withEntityForPass:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD37128);
  result = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = &v9[-v6];
  if (a2)
  {
    sub_1BD02F840(a2, 0, 0xF000000000000000, v14);
    v10 = v14[0];
    v11 = v14[1];
    v12 = v14[2];
    v13 = v14[3];
    sub_1BD0303B8(v14, v9);
    sub_1BD0304AC();
    sub_1BE048904();
    v8 = sub_1BE048914();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
    sub_1BE052F74();
    return sub_1BD030458(v14);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t static AppIntentUIUtilities.annotate(view:withEntityForTransaction:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD37128);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10[-v5 - 8];
  sub_1BD51B424(a2, v16);
  v13 = v16[2];
  v14 = v16[3];
  v15 = v17;
  v11 = v16[0];
  v12 = v16[1];
  sub_1BD0D7104(v16, v10);
  sub_1BD0D7160();
  sub_1BE048904();
  v7 = sub_1BE048914();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_1BE052F74();
  return sub_1BD0D71B4(v16);
}

void sub_1BD0D4C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = aBlock - v12;
  (*(v10 + 16))(aBlock - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD976224;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  a5(v16);
  _Block_release(v16);
}

void sub_1BD0D4DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - v5;
  v7 = sub_1BE04A9C4();
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  aBlock[4] = sub_1BD0DB158;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD976224;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  PKOpenURL();
  _Block_release(v10);
}

id AppIntentUIUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppIntentUIUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppIntentUIUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AppIntentUIUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppIntentUIUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD0D50C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_1BD0D5130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

uint64_t sub_1BD0D518C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE052AA4();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0D51B4(uint64_t a1, id *a2)
{
  result = sub_1BE052414();
  *a2 = 0;
  return result;
}

uint64_t sub_1BD0D522C(uint64_t a1, id *a2)
{
  v3 = sub_1BE052424();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BD0D52AC@<X0>(uint64_t *a1@<X8>)
{
  sub_1BE052434();
  v2 = sub_1BE052404();

  *a1 = v2;
  return result;
}

uint64_t sub_1BD0D52F0()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

uint64_t sub_1BD0D5338()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

_DWORD *sub_1BD0D537C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1BD0D543C()
{
  sub_1BE053D04();
  swift_getWitnessTable();
  sub_1BE04CDC4();
  return sub_1BE053D64();
}

uint64_t sub_1BD0D54B4(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD52810, type metadata accessor for PrivateEmailError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1BD0D5520(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD52810, type metadata accessor for PrivateEmailError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1BD0D558C(void *a1, uint64_t a2)
{
  v4 = sub_1BD0D8820(&qword_1EBD52810, type metadata accessor for PrivateEmailError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1BD0D561C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD0D8820(&qword_1EBD52810, type metadata accessor for PrivateEmailError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1BD0D56A8(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD38068, type metadata accessor for CIDVUIBiometricBindingEnrollmentError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1BD0D5714(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD38068, type metadata accessor for CIDVUIBiometricBindingEnrollmentError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1BD0D5780(void *a1, uint64_t a2)
{
  v4 = sub_1BD0D8820(&qword_1EBD38068, type metadata accessor for CIDVUIBiometricBindingEnrollmentError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1BD0D5810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD0D8820(&qword_1EBD38068, type metadata accessor for CIDVUIBiometricBindingEnrollmentError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1BD0D589C(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD381F0, type metadata accessor for CIDVUIProofingError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1BD0D5908(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD381F0, type metadata accessor for CIDVUIProofingError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1BD0D5974(void *a1, uint64_t a2)
{
  v4 = sub_1BD0D8820(&qword_1EBD381F0, type metadata accessor for CIDVUIProofingError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1BD0D5A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD0D8820(&qword_1EBD381F0, type metadata accessor for CIDVUIProofingError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1BD0D5A80()
{
  sub_1BE053D04();
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD0D5AE0()
{
  swift_getWitnessTable();

  return sub_1BE04CDB4();
}

uint64_t sub_1BD0D5B4C()
{
  sub_1BD0D8820(&qword_1EBD37B60, type metadata accessor for PKAccessibilityIdentifier);
  sub_1BD0D8820(&qword_1EBD37B68, type metadata accessor for PKAccessibilityIdentifier);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D5C08()
{
  sub_1BD0D8820(&qword_1EBD35EE0, type metadata accessor for PKContactField);
  sub_1BD0D8820(&qword_1EBD37B58, type metadata accessor for PKContactField);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D5CC4()
{
  sub_1BD0D8820(&qword_1EBD37BA0, type metadata accessor for PKAnalyticsSubject);
  sub_1BD0D8820(&unk_1EBD37BA8, type metadata accessor for PKAnalyticsSubject);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D5D80()
{
  sub_1BD0D8820(&qword_1EBD38340, type metadata accessor for TextStyle);
  sub_1BD0D8820(&qword_1EBD38348, type metadata accessor for TextStyle);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D5E3C()
{
  sub_1BD0D8820(&qword_1EBD38230, type metadata accessor for UIContentSizeCategory);
  sub_1BD0D8820(&qword_1EBD38238, type metadata accessor for UIContentSizeCategory);

  return sub_1BE053A24();
}

double sub_1BD0D5EF8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1BD0D5F04()
{
  sub_1BD0D8820(&qword_1EBD38250, type metadata accessor for Weight);
  sub_1BD0D8820(&qword_1EBD38258, type metadata accessor for Weight);
  sub_1BD0DAEB4();
  return sub_1BE053A24();
}

uint64_t sub_1BD0D5FCC()
{
  sub_1BD0D8820(&qword_1EBD37B70, type metadata accessor for PKPaymentNetwork);
  sub_1BD0D8820(&qword_1EBD37B78, type metadata accessor for PKPaymentNetwork);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D6088()
{
  sub_1BD0D8820(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  sub_1BD0D8820(&qword_1EBD37BB8, type metadata accessor for PKAnalyticsKey);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D6144()
{
  sub_1BD0D8820(&qword_1EBD37B90, type metadata accessor for OpenExternalURLOptionsKey);
  sub_1BD0D8820(&qword_1EBD37B98, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D6200()
{
  sub_1BD0D8820(&qword_1EBD38278, type metadata accessor for AttributeName);
  sub_1BD0D8820(&qword_1EBD38280, type metadata accessor for AttributeName);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D62BC()
{
  sub_1BD0D8820(&qword_1EBD38268, type metadata accessor for TraitKey);
  sub_1BD0D8820(&qword_1EBD38270, type metadata accessor for TraitKey);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D6378()
{
  sub_1BD0D8820(&qword_1EBD382B8, type metadata accessor for UITextContentType);
  sub_1BD0D8820(&qword_1EBD382C0, type metadata accessor for UITextContentType);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D6434()
{
  sub_1BD0D8820(&qword_1EBD382C8, type metadata accessor for ActivityType);
  sub_1BD0D8820(&qword_1EBD382D0, type metadata accessor for ActivityType);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D64F0()
{
  sub_1BD0D8820(&qword_1EBD382A8, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_1BD0D8820(&qword_1EBD382B0, type metadata accessor for UIBackgroundTaskIdentifier);
  return sub_1BE053A24();
}

uint64_t sub_1BD0D65AC()
{
  sub_1BD0D8820(&qword_1EBD37B80, type metadata accessor for Key);
  sub_1BD0D8820(&qword_1EBD37B88, type metadata accessor for Key);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D6668()
{
  sub_1BD0D8820(&qword_1EBD38298, type metadata accessor for PKPassLibraryNotificationKey);
  sub_1BD0D8820(&qword_1EBD382A0, type metadata accessor for PKPassLibraryNotificationKey);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D6724()
{
  sub_1BD0D8820(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters);
  sub_1BD0D8820(&qword_1EBD38228, type metadata accessor for PKPaymentRequestClientAnalyticsParameters);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D67E0()
{
  sub_1BD0D8820(&qword_1EBD38288, type metadata accessor for FileProtectionType);
  sub_1BD0D8820(&qword_1EBD38290, type metadata accessor for FileProtectionType);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D689C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BE052404();

  *a1 = v2;
  return result;
}

uint64_t sub_1BD0D68E4()
{
  sub_1BD0D8820(&qword_1EBD38240, type metadata accessor for VFXWorldLoaderOption);
  sub_1BD0D8820(&qword_1EBD38248, type metadata accessor for VFXWorldLoaderOption);

  return sub_1BE053A24();
}

uint64_t sub_1BD0D69A0(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD38180, type metadata accessor for PrivateEmailError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BD0D6A0C(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD38180, type metadata accessor for PrivateEmailError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BD0D6A78(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD52810, type metadata accessor for PrivateEmailError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1BD0D6AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD0D8820(&qword_1EBD52810, type metadata accessor for PrivateEmailError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1BD0D6B68(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD381F8, type metadata accessor for CIDVUIBiometricBindingEnrollmentError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BD0D6BD4(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD381F8, type metadata accessor for CIDVUIBiometricBindingEnrollmentError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BD0D6C40(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD38068, type metadata accessor for CIDVUIBiometricBindingEnrollmentError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1BD0D6CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD0D8820(&qword_1EBD38068, type metadata accessor for CIDVUIBiometricBindingEnrollmentError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1BD0D6D30(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD381C0, type metadata accessor for CIDVUIProofingError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BD0D6D9C(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD381C0, type metadata accessor for CIDVUIProofingError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BD0D6E08(uint64_t a1)
{
  v2 = sub_1BD0D8820(&qword_1EBD381F0, type metadata accessor for CIDVUIProofingError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1BD0D6E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD0D8820(&qword_1EBD381F0, type metadata accessor for CIDVUIProofingError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1BD0D6F00()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1BFB40DD0](*&v1);
}

uint64_t sub_1BD0D6F64()
{
  v0 = sub_1BE052434();
  v1 = MEMORY[0x1BFB3F690](v0);

  return v1;
}

uint64_t sub_1BD0D6FA0()
{
  sub_1BE052434();
  sub_1BE052524();
}

uint64_t sub_1BD0D6FF4()
{
  sub_1BE052434();
  sub_1BE053D04();
  sub_1BE052524();
  v0 = sub_1BE053D64();

  return v0;
}

uint64_t sub_1BD0D707C()
{
  v0 = sub_1BE052434();
  v2 = v1;
  if (v0 == sub_1BE052434() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BE053B84();
  }

  return v5 & 1;
}

unint64_t sub_1BD0D7160()
{
  result = qword_1EBD37138;
  if (!qword_1EBD37138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD37138);
  }

  return result;
}

unint64_t sub_1BD0D722C()
{
  result = qword_1EBD37140;
  if (!qword_1EBD37140)
  {
    sub_1BE04EAA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD37140);
  }

  return result;
}

uint64_t sub_1BD0D7278()
{
  v1 = sub_1BE04D214();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1BD0D73B0;
  v3 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 6, 0, 0, 0x6C6C61576E65706FLL, 0xEC00000029287465, sub_1BD0D4B94, 0, v3);
}

uint64_t sub_1BD0D73B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD0D74AC, 0, 0);
}

uint64_t sub_1BD0D74AC()
{
  v18 = v0;
  v1 = *(v0 + 48);
  sub_1BE04D074();
  v2 = sub_1BE04D204();
  v3 = sub_1BE052C54();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    if (v1)
    {
      v10 = 0x73736563637573;
    }

    else
    {
      v10 = 0x64656C696166;
    }

    v16 = v6;
    v11 = v1;
    if (v1)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = sub_1BD123690(v10, v12, &v17);
    v1 = v11;

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BD026000, v2, v3, "Open Wallet: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);

    (*(v5 + 8))(v16, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v14 = *(v0 + 8);

  return v14(v1);
}

uint64_t sub_1BD0D7668()
{
  v1 = sub_1BE04D214();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1BD0D779C;
  v3 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 6, 0, 0, 0xD000000000000014, 0x80000001BE118370, sub_1BD0D4BD0, 0, v3);
}

uint64_t sub_1BD0D779C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD0D7898, 0, 0);
}

uint64_t sub_1BD0D7898()
{
  v18 = v0;
  v1 = *(v0 + 48);
  sub_1BE04D074();
  v2 = sub_1BE04D204();
  v3 = sub_1BE052C54();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    if (v1)
    {
      v10 = 0x73736563637573;
    }

    else
    {
      v10 = 0x64656C696166;
    }

    v16 = v6;
    v11 = v1;
    if (v1)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = sub_1BD123690(v10, v12, &v17);
    v1 = v11;

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BD026000, v2, v3, "Open Wallet settings: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);

    (*(v5 + 8))(v16, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v14 = *(v0 + 8);

  return v14(v1);
}

uint64_t sub_1BD0D7A54(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1BE04D214();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD0D7B14, 0, 0);
}

uint64_t sub_1BD0D7B14()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1BD0D7C0C;
  v4 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001BE118350, sub_1BD0D93A8, v2, v4);
}

uint64_t sub_1BD0D7C0C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD0D7D24, 0, 0);
}

uint64_t sub_1BD0D7D24()
{
  v18 = v0;
  v1 = *(v0 + 64);
  sub_1BE04D074();
  v2 = sub_1BE04D204();
  v3 = sub_1BE052C54();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    if (v1)
    {
      v10 = 0x73736563637573;
    }

    else
    {
      v10 = 0x64656C696166;
    }

    v16 = v6;
    v11 = v1;
    if (v1)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = sub_1BD123690(v10, v12, &v17);
    v1 = v11;

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BD026000, v2, v3, "Open URL: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);

    (*(v5 + 8))(v16, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v14 = *(v0 + 8);

  return v14(v1);
}

uint64_t sub_1BD0D7EE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1BD0D7F18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1BE048964();
  }

  else
  {
    return sub_1BE048C84();
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BD0D7F70()
{
  result = qword_1EBD37430;
  if (!qword_1EBD37430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD37430);
  }

  return result;
}

unint64_t sub_1BD0D7FC4()
{
  result = qword_1EBD37438;
  if (!qword_1EBD37438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD37438);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BD0D81B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD0D81D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BD0D83DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD0D83FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FundingSourceButtonStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for UIFlowItemConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_1BD0D8820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BD0D9448()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0);
  return sub_1BE052864();
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

uint64_t sub_1BD0D95DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD0D95FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1BD0D971C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD0D973C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1BD0DAA5C()
{
  result = qword_1EBD381A8;
  if (!qword_1EBD381A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD381A8);
  }

  return result;
}

unint64_t sub_1BD0DAEB4()
{
  result = qword_1EBD38260;
  if (!qword_1EBD38260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38260);
  }

  return result;
}

uint64_t sub_1BD0DB188()
{
  sub_1BD0D4534(v0 + 16);

  return swift_deallocClassInstance();
}

id _s9PassKitUI29PKDataReleaseRelyingPartyCellCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD0DB300()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v8 = sub_1BE04B9A4();
  (*(v3 + 8))(v6, v2);
  v9 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_category);
  v10 = objc_allocWithZone(PKPaymentSetupProductsViewController);
  sub_1BD0DB624();
  v11 = sub_1BE052724();
  v12 = [v10 initWithProvisioningController:v7 context:v8 delegate:0 category:v9 paymentSetupProducts:v11];

  [v12 setFlowDelegate_];
  sub_1BE052434();
  v13 = sub_1BE04BB74();

  [v12 setReporter_];

  return v12;
}

uint64_t sub_1BD0DB4C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD0DB4FC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_1BD0DB624()
{
  result = qword_1EBD38568;
  if (!qword_1EBD38568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD38568);
  }

  return result;
}

id sub_1BD0DB670(id result, void *a2, unint64_t a3)
{
  v6 = result;
  if (a3 >> 62)
  {
    if (sub_1BE053704() != 1)
    {
      goto LABEL_19;
    }

    result = sub_1BE053704();
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_19;
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1BFB40900](0, a3);
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v7 = *(a3 + 32);
  }

  v8 = v7;
  result = [v7 configuration];
  if (!result)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v9 = result;
  v10 = [result type];

  if (v10 == 7)
  {
LABEL_21:

    v27 = type metadata accessor for PaymentSetupProductFlowSection();
    v28 = objc_allocWithZone(v27);
    *&v28[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials] = MEMORY[0x1E69E7CC0];
    *&v28[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v29 = &v28[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_identifier];
    *v29 = 0xD000000000000012;
    *(v29 + 1) = 0x80000001BE118AA0;
    *&v28[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context] = v6;
    *&v28[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product] = v8;
    v31.receiver = v28;
    v31.super_class = v27;
    sub_1BE048964();
    v24 = objc_msgSendSuper2(&v31, sel_init);
    v25 = &off_1F3BAAA80;
    goto LABEL_22;
  }

  result = [v8 configuration];
  if (!result)
  {
    goto LABEL_29;
  }

  v11 = result;
  v12 = [result productIdentifier];

  if (!v12)
  {
    sub_1BE052434();
    goto LABEL_15;
  }

  v13 = sub_1BE052434();
  v15 = v14;

  v16 = sub_1BE052434();
  if (!v15)
  {
LABEL_15:

    goto LABEL_16;
  }

  if (v13 == v16 && v15 == v17)
  {

    goto LABEL_21;
  }

  v26 = sub_1BE053B84();

  if (v26)
  {
    goto LABEL_21;
  }

LABEL_16:
  result = [v8 configuration];
  if (result)
  {
    v18 = result;
    v19 = [result type];

    if (v19 == 6)
    {
      goto LABEL_21;
    }

LABEL_19:
    v20 = type metadata accessor for PaymentSetupProductsFlowItem();
    v21 = objc_allocWithZone(v20);
    *&v21[OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v22 = &v21[OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_identifier];
    *v22 = 0xD000000000000010;
    *(v22 + 1) = 0x80000001BE118A60;
    *&v21[OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_context] = v6;
    *&v21[OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_category] = a2;
    *&v21[OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_products] = a3;
    v32.receiver = v21;
    v32.super_class = v20;
    sub_1BE048964();
    v23 = a2;
    v24 = objc_msgSendSuper2(&v32, sel_init);
    v25 = &off_1F3B91888;
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BE0B69E0;
    *(v30 + 32) = v24;
    *(v30 + 40) = v25;
    *(v3 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v3 + 40) = 0xD000000000000013;
    *(v3 + 48) = 0x80000001BE118A80;
    *(v3 + 56) = v30;
    *(v3 + 32) = 514;
    return v3;
  }

LABEL_30:
  __break(1u);
  return result;
}

void sub_1BD0DBA78()
{
  v1 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
  v2 = sub_1BE048964();
  v6 = sub_1BD87126C(v2, 0, 0);
  v3 = v0 + OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v0, &off_1F3B91888, v6, &off_1F3BC0AB0, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD0DBB6C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_context);
  v4 = type metadata accessor for PaymentSetupProductFlowSection();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v5[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_identifier];
  *v6 = 0xD000000000000012;
  *(v6 + 1) = 0x80000001BE118AA0;
  *&v5[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context] = v3;
  *&v5[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product] = a1;
  v16.receiver = v5;
  v16.super_class = v4;
  sub_1BE048964();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v16, sel_init);
  type metadata accessor for UIFlowModifier();
  v9 = swift_allocObject();
  v10 = byte_1EBDAB281;
  *(v9 + 32) = byte_1EBDAB280;
  *(v9 + 33) = v10;
  *(v9 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 16) = v8;
  *(v9 + 24) = &off_1F3BAAA80;
  *(v9 + 32) = 1;
  v11 = v1 + OBJC_IVAR____TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v12 = *(v11 + 8);
  ObjectType = swift_getObjectType();
  v14 = v8;
  sub_1BD865948(v1, &off_1F3B91888, v9, &off_1F3BAC7A0, ObjectType, v12);

  return swift_unknownObjectRelease();
}

uint64_t FlightWidgetProgressView.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[11];
  v35 = v1[12];
  v36 = v2;
  v4 = v1[13];
  v37 = v1[14];
  v5 = v1[9];
  v7 = v1[7];
  v31 = v1[8];
  v6 = v31;
  v32 = v5;
  v8 = v1[9];
  v9 = v1[11];
  v33 = v1[10];
  v10 = v33;
  v34 = v9;
  v11 = v1[5];
  v13 = v1[3];
  v27 = v1[4];
  v12 = v27;
  v28 = v11;
  v14 = v1[5];
  v15 = v1[7];
  v29 = v1[6];
  v16 = v29;
  v30 = v15;
  v17 = v1[1];
  v24[0] = *v1;
  v24[1] = v17;
  v18 = v1[3];
  v20 = *v1;
  v19 = v1[1];
  v25 = v1[2];
  v21 = v25;
  v26 = v18;
  *(a1 + 192) = v35;
  *(a1 + 208) = v4;
  *(a1 + 224) = v1[14];
  *(a1 + 128) = v6;
  *(a1 + 144) = v8;
  *(a1 + 160) = v10;
  *(a1 + 176) = v3;
  *(a1 + 64) = v12;
  *(a1 + 80) = v14;
  *(a1 + 96) = v16;
  *(a1 + 112) = v7;
  *a1 = v20;
  *(a1 + 16) = v19;
  v38 = *(v1 + 30);
  *(a1 + 240) = *(v1 + 30);
  *(a1 + 32) = v21;
  *(a1 + 48) = v13;
  return sub_1BD0DBDF0(v24, v23);
}

__n128 FlightWidgetProgressView.init(content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FlightWidgetProgressView();
  sub_1BD0DBFDC();
  sub_1BE04E524();
  *(a2 + v4[6]) = 0x4044000000000000;
  sub_1BE04E524();
  *(a2 + v4[8]) = 0x403E000000000000;
  sub_1BE04E524();
  sub_1BE04E524();
  *(a2 + v4[11]) = 0x4059000000000000;
  v5 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v5;
  *(a2 + 224) = *(a1 + 224);
  *(a2 + 240) = *(a1 + 240);
  v6 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v6;
  v7 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v7;
  v8 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v8;
  v9 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v9;
  v10 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v10;
  result = *(a1 + 32);
  v12 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v12;
  return result;
}

uint64_t type metadata accessor for FlightWidgetProgressView()
{
  result = qword_1EBD385B8;
  if (!qword_1EBD385B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD0DBFDC()
{
  result = qword_1EBD38580;
  if (!qword_1EBD38580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38580);
  }

  return result;
}

uint64_t sub_1BD0DC030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v46 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0);
  MEMORY[0x1EEE9AC00](v47, v7);
  v9 = v46 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A8);
  MEMORY[0x1EEE9AC00](v51, v10);
  v54 = v46 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386B0);
  MEMORY[0x1EEE9AC00](v50, v12);
  v52 = v46 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386B8);
  MEMORY[0x1EEE9AC00](v55, v14);
  v53 = v46 - v15;
  LOBYTE(v15) = *a1;
  v17 = *(a1 + 8);
  v16 = *(a1 + 16);
  v18 = *(a1 + 48);
  v48 = *(a1 + 56);
  v49 = v18;
  if (v15)
  {
    v19 = sub_1BE051CB4();
  }

  else
  {
    v19 = sub_1BE051CA4();
  }

  v46[0] = v20;
  v46[1] = v19;
  *&v57 = v17;
  *(&v57 + 1) = v16;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v21 = sub_1BE0506C4();
  v23 = v22;
  v25 = v24;
  type metadata accessor for FlightWidgetProgressView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
  sub_1BE04E534();
  sub_1BE050364();
  v26 = sub_1BE050354();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  sub_1BE0503B4();
  sub_1BD0DE53C(v6, &qword_1EBD49130);
  v27 = sub_1BE0505F4();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_1BD0DDF10(v21, v23, v25 & 1);

  v34 = &v9[*(v47 + 36)];
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
  v36 = *MEMORY[0x1E6980FD8];
  v37 = sub_1BE0505C4();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v34 + v35, v36, v37);
  (*(v38 + 56))(v34 + v35, 0, 1, v37);
  *v34 = swift_getKeyPath();
  *v9 = v27;
  *(v9 + 1) = v29;
  v9[16] = v31 & 1;
  *(v9 + 3) = v33;
  v39 = v54;
  sub_1BD0DE204(v9, v54, &qword_1EBD386A0);
  *(v39 + *(v51 + 36)) = 257;
  sub_1BE04E5E4();
  v40 = v52;
  sub_1BD0DE204(v39, v52, &qword_1EBD386A8);
  v41 = (v40 + *(v50 + 36));
  v42 = v58;
  *v41 = v57;
  v41[1] = v42;
  v41[2] = v59;
  v43 = sub_1BE051424();
  v44 = v53;
  sub_1BD0DE204(v40, v53, &qword_1EBD386B0);
  *(v44 + *(v55 + 36)) = v43;
  sub_1BD0DE26C();
  sub_1BE050DE4();
  return sub_1BD0DE53C(v44, &qword_1EBD386B8);
}

uint64_t sub_1BD0DC548(_BYTE *a1)
{
  if (*a1)
  {
    sub_1BE051CF4();
  }

  else
  {
    sub_1BE051CE4();
  }

  sub_1BD0DDEBC();
  sub_1BE048C84();
  v1 = sub_1BE0506C4();
  v3 = v2;
  v5 = v4;
  sub_1BE050454();
  v6 = sub_1BE0505F4();
  v8 = v7;
  v10 = v9;

  sub_1BD0DDF10(v1, v3, v5 & 1);

  sub_1BE0503A4();
  v11 = sub_1BE050544();
  v13 = v12;
  LOBYTE(v3) = v14;
  sub_1BD0DDF10(v6, v8, v10 & 1);

  sub_1BE048964();
  v15 = sub_1BE050574();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1BD0DDF10(v11, v13, v3 & 1);

  sub_1BE04E5E4();
  *&v23 = v15;
  *(&v23 + 1) = v17;
  LOBYTE(v24) = v19 & 1;
  *(&v24 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E810);
  sub_1BD0DDF20();
  sub_1BE050DE4();
  v28[2] = v25;
  v28[3] = v26;
  v28[4] = v27;
  v28[0] = v23;
  v28[1] = v24;
  return sub_1BD0DE53C(v28, &unk_1EBD4E810);
}

double FlightWidgetProgressView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38588);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v14 - v5;
  *v6 = sub_1BE04F7B4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38590);
  sub_1BD0DC918(v1, &v6[*(v7 + 44)]);
  v8 = *v1;
  v9 = v8 >= 2;
  v10 = v8 - 2;
  if (!v9 || v10 >= 2)
  {
    type metadata accessor for FlightWidgetProgressView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
    sub_1BE04E534();
  }

  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BD0DE204(v6, a1, &qword_1EBD38588);
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38598) + 36));
  v12 = v14[1];
  *v11 = v14[0];
  v11[1] = v12;
  result = *&v15;
  v11[2] = v15;
  return result;
}

uint64_t sub_1BD0DC918@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385E0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385E8);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v24 - v18;
  *v19 = sub_1BE04F4F4();
  *(v19 + 1) = 0x402C000000000000;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385F0);
  sub_1BD0DCBB8(a1, &v19[*(v20 + 44)]);
  *v11 = sub_1BE04F4C4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385F8);
  sub_1BD0DD298(a1, &v11[*(v21 + 44)]);
  sub_1BD0DE19C(v19, v16, &qword_1EBD385E8);
  sub_1BD0DE19C(v11, v8, &qword_1EBD385E0);
  sub_1BD0DE19C(v16, a2, &qword_1EBD385E8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38600);
  sub_1BD0DE19C(v8, a2 + *(v22 + 48), &qword_1EBD385E0);
  sub_1BD0DE53C(v11, &qword_1EBD385E0);
  sub_1BD0DE53C(v19, &qword_1EBD385E8);
  sub_1BD0DE53C(v8, &qword_1EBD385E0);
  return sub_1BD0DE53C(v16, &qword_1EBD385E8);
}

unint64_t sub_1BD0DCB64()
{
  result = qword_1EBD385A8;
  if (!qword_1EBD385A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD385A8);
  }

  return result;
}

uint64_t sub_1BD0DCBB8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38648);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v71 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38650);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38658);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v68 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v62 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v67 = &v62 - v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v62 - v26;
  v28 = *a1;
  v65 = v10;
  v66 = v9;
  if (v28 == 4)
  {
    v29 = *(v10 + 56);
    v30 = &v62 - v26;
    v31 = 1;
  }

  else
  {
    v32 = *(a1 + 56);
    v80 = *(a1 + 40);
    v81 = v32;
    v33 = *(a1 + 88);
    v82 = *(a1 + 72);
    v83 = v33;
    v34 = *(a1 + 24);
    v78 = *(a1 + 8);
    v79 = v34;
    v35 = *(a1 + 56);
    v94 = *(a1 + 40);
    v95 = v35;
    v36 = *(a1 + 88);
    v96 = *(a1 + 72);
    v97 = v36;
    v37 = *(a1 + 24);
    v92 = *(a1 + 8);
    v93 = v37;
    sub_1BD0DDE0C(&v78, &v85);
    sub_1BD0DC030(&v92, v13);
    v87 = v94;
    v88 = v95;
    v89 = v96;
    v90 = v97;
    v85 = v92;
    v86 = v93;
    sub_1BD0DDE68(&v85);
    sub_1BD0DE204(v13, v27, &qword_1EBD38650);
    v29 = *(v10 + 56);
    v30 = v27;
    v31 = 0;
  }

  v64 = v29;
  v29(v30, v31, 1, v9);
  v38 = *(a1 + 25);
  v39 = *(a1 + 28);
  v40 = *(a1 + 26);
  v41 = a1[216];
  v42 = *a1;
  v43 = v42 >= 2;
  v44 = v42 - 2;
  v63 = v13;
  if (v43 && v44 < 2)
  {
    sub_1BE048964();
    sub_1BE048964();
  }

  else
  {
    type metadata accessor for FlightWidgetProgressView();
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
    sub_1BE04E534();
  }

  sub_1BE051CD4();
  sub_1BE04E5E4();
  *&v78 = v38;
  *(&v78 + 1) = v39;
  *&v79 = v40;
  BYTE8(v79) = v41;
  *&v80 = 0x4034000000000000;
  WORD4(v83) = 256;
  v84 = xmmword_1BE0B6A60;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38660);
  sub_1BD0DDFA4();
  sub_1BE050DE4();

  v89 = v82;
  v90 = v83;
  v91 = v84;
  v85 = v78;
  v86 = v79;
  v87 = v80;
  v88 = v81;
  sub_1BD0DE53C(&v85, &qword_1EBD38660);
  if (*a1 == 4)
  {
    v45 = v67;
    v46 = v67;
    v47 = 1;
  }

  else
  {
    v48 = *(a1 + 152);
    v94 = *(a1 + 136);
    v95 = v48;
    v49 = *(a1 + 184);
    v96 = *(a1 + 168);
    v97 = v49;
    v50 = *(a1 + 120);
    v92 = *(a1 + 104);
    v93 = v50;
    v51 = *(a1 + 152);
    v74 = *(a1 + 136);
    v75 = v51;
    v52 = *(a1 + 184);
    v76 = *(a1 + 168);
    v77 = v52;
    v53 = *(a1 + 120);
    v72 = *(a1 + 104);
    v73 = v53;
    sub_1BD0DDE0C(&v92, &v78);
    v54 = v63;
    sub_1BD0DC030(&v72, v63);
    v80 = v74;
    v81 = v75;
    v82 = v76;
    v83 = v77;
    v78 = v72;
    v79 = v73;
    sub_1BD0DDE68(&v78);
    v45 = v67;
    sub_1BD0DE204(v54, v67, &qword_1EBD38650);
    v46 = v45;
    v47 = 0;
  }

  v64(v46, v47, 1, v66);
  sub_1BD0DE19C(v27, v21, &qword_1EBD38658);
  v67 = v27;
  v55 = v21;
  v56 = v70;
  v57 = v71;
  sub_1BD0DE19C(v71, v70, &qword_1EBD38648);
  v58 = v68;
  sub_1BD0DE19C(v45, v68, &qword_1EBD38658);
  v59 = v69;
  sub_1BD0DE19C(v55, v69, &qword_1EBD38658);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38698);
  sub_1BD0DE19C(v56, v59 + *(v60 + 48), &qword_1EBD38648);
  sub_1BD0DE19C(v58, v59 + *(v60 + 64), &qword_1EBD38658);
  sub_1BD0DE53C(v45, &qword_1EBD38658);
  sub_1BD0DE53C(v57, &qword_1EBD38648);
  sub_1BD0DE53C(v67, &qword_1EBD38658);
  sub_1BD0DE53C(v58, &qword_1EBD38658);
  sub_1BD0DE53C(v56, &qword_1EBD38648);
  return sub_1BD0DE53C(v55, &qword_1EBD38658);
}

uint64_t sub_1BD0DD298@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38608);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v65[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38610);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v75 = &v65[-v15];
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v65[-v18];
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v65[-v21];
  v23 = *a1;
  v72 = v7;
  if (v23 == 4)
  {
    (*(v4 + 56))(&v65[-v21], 1, 1, v3);
  }

  else
  {
    v24 = *(a1 + 56);
    v104 = *(a1 + 40);
    v105 = v24;
    v25 = *(a1 + 88);
    v106 = *(a1 + 72);
    v107 = v25;
    v26 = *(a1 + 24);
    v102 = *(a1 + 8);
    v103 = v26;
    v27 = *(a1 + 56);
    v96 = *(a1 + 40);
    v97 = v27;
    v28 = *(a1 + 88);
    v98 = *(a1 + 72);
    v99 = v28;
    v29 = *(a1 + 24);
    v94 = *(a1 + 8);
    v95 = v29;
    sub_1BD0DDE0C(&v102, v110);
    sub_1BD0DC548(&v94);
    *&v110[32] = v96;
    *&v110[48] = v97;
    *&v110[64] = v98;
    *&v110[80] = v99;
    *v110 = v94;
    *&v110[16] = v95;
    sub_1BD0DDE68(v110);
    sub_1BD0DE204(v7, v22, &qword_1EBD38608);
    (*(v4 + 56))(v22, 0, 1, v3);
  }

  v30 = *(a1 + 30);
  v73 = v22;
  if (v30 && *a1 != 4)
  {
    *v110 = *(a1 + 29);
    *&v110[8] = v30;
    sub_1BD0DDEBC();
    v70 = v19;
    sub_1BE048C84();
    v31 = sub_1BE0506C4();
    v33 = v32;
    v34 = v3;
    v36 = v35;
    sub_1BE050454();
    v71 = v12;
    v37 = sub_1BE0505F4();
    v68 = v38;
    v69 = v37;
    v66 = v39;
    v67 = v40;

    v41 = v36 & 1;
    v3 = v34;
    sub_1BD0DDF10(v31, v33, v41);

    KeyPath = swift_getKeyPath();
    v43 = swift_getKeyPath();
    LOBYTE(v34) = v66 & 1;
    v110[0] = v66 & 1;
    LOBYTE(v102) = 0;
    v44 = sub_1BE0513E4();
    *&v79 = v69;
    *(&v79 + 1) = v68;
    LOBYTE(v80) = v34;
    *(&v80 + 1) = v67;
    *&v81 = KeyPath;
    *(&v81 + 1) = 1;
    LOBYTE(v82) = 0;
    *(&v82 + 1) = v43;
    *&v83 = 0x3FE6666666666666;
    WORD4(v83) = 256;
    HIWORD(v83) = *&v110[4];
    *(&v83 + 10) = *v110;
    v94 = v79;
    v95 = v80;
    v97 = v82;
    v98 = v83;
    v96 = v81;
    v86 = v79;
    v87 = v80;
    v89 = v82;
    v90 = v83;
    v88 = v81;
    v84 = v44;
    *&v99 = v44;
    v78 = 1;
    *&v91 = v44;
    *(&v77[1] + 7) = v80;
    *(v77 + 7) = v79;
    *(&v77[5] + 7) = v44;
    *(&v77[4] + 7) = v83;
    *(&v77[3] + 7) = v82;
    *(&v77[2] + 7) = v81;
    v76 = 1;
    sub_1BD0DE19C(&v79, v110, &qword_1EBD38638);
    sub_1BD0DE19C(&v86, v110, &qword_1EBD38638);
    sub_1BD0DE53C(&v94, &qword_1EBD38638);
    *&v110[41] = v77[2];
    *&v110[57] = v77[3];
    *&v110[73] = v77[4];
    *&v110[88] = *(&v77[4] + 15);
    *&v110[9] = v77[0];
    v85 = 0;
    *v110 = 0;
    v110[8] = 1;
    *&v110[25] = v77[1];
    *&v110[104] = 0;
    v111 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38618);
    sub_1BD0DE4F4(&qword_1EBD38620, &qword_1EBD38618);
    v12 = v71;
    sub_1BE04F9A4();
    v19 = v70;
    sub_1BD0DE53C(&v79, &qword_1EBD38638);
    *&v110[64] = v106;
    *&v110[80] = v107;
    *&v110[96] = v108;
    v111 = v109;
    *v110 = v102;
    *&v110[16] = v103;
    *&v110[32] = v104;
    *&v110[48] = v105;
  }

  else
  {
    LOBYTE(v94) = 1;
    LOBYTE(v86) = 1;
    *&v102 = 0;
    BYTE8(v102) = 1;
    HIBYTE(v109) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38618);
    sub_1BD0DE4F4(&qword_1EBD38620, &qword_1EBD38618);
    sub_1BE04F9A4();
  }

  v45 = v72;
  if (*a1 == 4)
  {
    (*(v4 + 56))(v19, 1, 1, v3);
  }

  else
  {
    v46 = *(a1 + 152);
    v96 = *(a1 + 136);
    v97 = v46;
    v47 = *(a1 + 184);
    v98 = *(a1 + 168);
    v99 = v47;
    v48 = *(a1 + 120);
    v94 = *(a1 + 104);
    v95 = v48;
    v49 = *(a1 + 152);
    v88 = *(a1 + 136);
    v89 = v49;
    v50 = *(a1 + 184);
    v90 = *(a1 + 168);
    v91 = v50;
    v51 = *(a1 + 120);
    v86 = *(a1 + 104);
    v87 = v51;
    sub_1BD0DDE0C(&v94, &v102);
    sub_1BD0DC548(&v86);
    v104 = v88;
    v105 = v89;
    v106 = v90;
    v107 = v91;
    v102 = v86;
    v103 = v87;
    sub_1BD0DDE68(&v102);
    sub_1BD0DE204(v45, v19, &qword_1EBD38608);
    (*(v4 + 56))(v19, 0, 1, v3);
  }

  v52 = v73;
  v53 = v75;
  sub_1BD0DE19C(v73, v75, &qword_1EBD38610);
  v90 = *&v110[64];
  v91 = *&v110[80];
  v92 = *&v110[96];
  v93 = v111;
  v86 = *v110;
  v87 = *&v110[16];
  v88 = *&v110[32];
  v89 = *&v110[48];
  sub_1BD0DE19C(v19, v12, &qword_1EBD38610);
  v54 = v74;
  sub_1BD0DE19C(v53, v74, &qword_1EBD38610);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38628);
  v56 = v54 + *(v55 + 48);
  v57 = v90;
  v58 = v91;
  v98 = v90;
  v99 = v91;
  v59 = v92;
  v100 = v92;
  v60 = v93;
  v101 = v93;
  v61 = v86;
  v62 = v87;
  v94 = v86;
  v95 = v87;
  v63 = v89;
  v96 = v88;
  v97 = v89;
  *(v56 + 32) = v88;
  *(v56 + 48) = v63;
  *v56 = v61;
  *(v56 + 16) = v62;
  *(v56 + 112) = v60;
  *(v56 + 80) = v58;
  *(v56 + 96) = v59;
  *(v56 + 64) = v57;
  sub_1BD0DE19C(v12, v54 + *(v55 + 64), &qword_1EBD38610);
  sub_1BD0DE19C(&v94, &v102, &qword_1EBD38630);
  sub_1BD0DE53C(v19, &qword_1EBD38610);
  sub_1BD0DE53C(v52, &qword_1EBD38610);
  sub_1BD0DE53C(v12, &qword_1EBD38610);
  v106 = v90;
  v107 = v91;
  v108 = v92;
  v109 = v93;
  v102 = v86;
  v103 = v87;
  v104 = v88;
  v105 = v89;
  sub_1BD0DE53C(&v102, &qword_1EBD38630);
  return sub_1BD0DE53C(v53, &qword_1EBD38610);
}

uint64_t sub_1BD0DDAD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[11];
  v35 = v1[12];
  v36 = v2;
  v4 = v1[13];
  v37 = v1[14];
  v5 = v1[9];
  v7 = v1[7];
  v31 = v1[8];
  v6 = v31;
  v32 = v5;
  v8 = v1[9];
  v9 = v1[11];
  v33 = v1[10];
  v10 = v33;
  v34 = v9;
  v11 = v1[5];
  v13 = v1[3];
  v27 = v1[4];
  v12 = v27;
  v28 = v11;
  v14 = v1[5];
  v15 = v1[7];
  v29 = v1[6];
  v16 = v29;
  v30 = v15;
  v17 = v1[1];
  v24[0] = *v1;
  v24[1] = v17;
  v18 = v1[3];
  v20 = *v1;
  v19 = v1[1];
  v25 = v1[2];
  v21 = v25;
  v26 = v18;
  *(a1 + 192) = v35;
  *(a1 + 208) = v4;
  *(a1 + 224) = v1[14];
  *(a1 + 128) = v6;
  *(a1 + 144) = v8;
  *(a1 + 160) = v10;
  *(a1 + 176) = v3;
  *(a1 + 64) = v12;
  *(a1 + 80) = v14;
  *(a1 + 96) = v16;
  *(a1 + 112) = v7;
  *a1 = v20;
  *(a1 + 16) = v19;
  v38 = *(v1 + 30);
  *(a1 + 240) = *(v1 + 30);
  *(a1 + 32) = v21;
  *(a1 + 48) = v13;
  return sub_1BD0DBDF0(v24, v23);
}

unint64_t sub_1BD0DDB98(uint64_t a1)
{
  result = sub_1BD0DDBC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BD0DDBC0()
{
  result = qword_1EBD385B0;
  if (!qword_1EBD385B0)
  {
    type metadata accessor for FlightWidgetProgressView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD385B0);
  }

  return result;
}

void sub_1BD0DDC60()
{
  sub_1BD0DDCF8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BD0DDCF8()
{
  if (!qword_1EBD385C8)
  {
    sub_1BD0DBFDC();
    v0 = sub_1BE04E544();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD385C8);
    }
  }
}

unint64_t sub_1BD0DDD54()
{
  result = qword_1EBD385D0;
  if (!qword_1EBD385D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38598);
    sub_1BD0DE4F4(&qword_1EBD385D8, &qword_1EBD38588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD385D0);
  }

  return result;
}

unint64_t sub_1BD0DDEBC()
{
  result = qword_1EBD35F30;
  if (!qword_1EBD35F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35F30);
  }

  return result;
}

uint64_t sub_1BD0DDF10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1BD0DDF20()
{
  result = qword_1EBD38640;
  if (!qword_1EBD38640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4E810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38640);
  }

  return result;
}

unint64_t sub_1BD0DDFA4()
{
  result = qword_1EBD38668;
  if (!qword_1EBD38668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38660);
    sub_1BD0DE030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38668);
  }

  return result;
}

unint64_t sub_1BD0DE030()
{
  result = qword_1EBD38670;
  if (!qword_1EBD38670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38678);
    sub_1BD0DE0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38670);
  }

  return result;
}

unint64_t sub_1BD0DE0BC()
{
  result = qword_1EBD38680;
  if (!qword_1EBD38680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38688);
    sub_1BD0DE148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38680);
  }

  return result;
}

unint64_t sub_1BD0DE148()
{
  result = qword_1EBD38690;
  if (!qword_1EBD38690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38690);
  }

  return result;
}

uint64_t sub_1BD0DE19C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD0DE204(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD0DE26C()
{
  result = qword_1EBD386C8;
  if (!qword_1EBD386C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD386B8);
    sub_1BD0DE324();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD386C8);
  }

  return result;
}

unint64_t sub_1BD0DE324()
{
  result = qword_1EBD386D0;
  if (!qword_1EBD386D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD386B0);
    sub_1BD0DE3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD386D0);
  }

  return result;
}

unint64_t sub_1BD0DE3B0()
{
  result = qword_1EBD386D8;
  if (!qword_1EBD386D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD386A8);
    sub_1BD0DE43C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD386D8);
  }

  return result;
}

unint64_t sub_1BD0DE43C()
{
  result = qword_1EBD386E0;
  if (!qword_1EBD386E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD386A0);
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD386E0);
  }

  return result;
}

uint64_t sub_1BD0DE4F4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD0DE53C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1BD0DE59C(unsigned __int8 a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v28 - v10;
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v28 - v14;
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v28 - v18;
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v28 - v21;
  v23 = *MEMORY[0x1E69B80E0];
  v24 = *(v3 + 104);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v24(v15, v23, v2);
      result = PKPassKitBundle();
      if (result)
      {
        v26 = result;
        v27 = sub_1BE04B6F4();
        v22 = v15;
        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      if (a1 != 3)
      {
        v24(v7, v23, v2);
        result = PKPassKitBundle();
        if (result)
        {
          v26 = result;
          v27 = sub_1BE04B6F4();
          v22 = v7;
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      v24(v11, v23, v2);
      result = PKPassKitBundle();
      if (result)
      {
        v26 = result;
        v27 = sub_1BE04B6F4();
        v22 = v11;
LABEL_15:

        (*(v3 + 8))(v22, v2);
        return v27;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!a1)
  {
    v24(&v28 - v21, v23, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v26 = result;
      v27 = sub_1BE04B6F4();
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v24(v19, v23, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v26 = result;
    v27 = sub_1BE04B6F4();
    v22 = v19;
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

id sub_1BD0DE914(unsigned __int8 a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v29 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v29 - v17;
  v22 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v29 - v21;
  v24 = *MEMORY[0x1E69B80E0];
  v25 = *(v3 + 104);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v25(v14, v24, v2, v22);
      result = PKPassKitBundle();
      if (result)
      {
        v27 = result;
        v28 = sub_1BE04B6F4();
        v23 = v14;
        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      if (a1 != 3)
      {
        v25(v6, v24, v2, v22);
        result = PKPassKitBundle();
        if (result)
        {
          v27 = result;
          v28 = sub_1BE04B6F4();
          v23 = v6;
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      v25(v10, v24, v2, v22);
      result = PKPassKitBundle();
      if (result)
      {
        v27 = result;
        v28 = sub_1BE04B6F4();
        v23 = v10;
LABEL_15:

        (*(v3 + 8))(v23, v2);
        return v28;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!a1)
  {
    v25(&v29 - v21, v24, v2, v22);
    result = PKPassKitBundle();
    if (result)
    {
      v27 = result;
      v28 = sub_1BE04B6F4();
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v25(v18, v24, v2, v22);
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6F4();
    v23 = v18;
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t _s9PassKitUI19FlightExtendedStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

uint64_t sub_1BD0DECD4()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

unint64_t sub_1BD0DED18@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD0E5D44(*a1);
  *a2 = result;
  return result;
}

id sub_1BD0DED60@<X0>(void *a1@<X8>)
{
  result = sub_1BD0DE59C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD0DEDDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD0DEE50(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return sub_1BE04AED4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD0DEE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1BE04AF64();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BD0DEEEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD0DEF74(char a1)
{
  v2 = OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_range;
  *(v1 + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_range) = a1;
  if (os_variant_has_internal_ui() && PKSavingsGraphOverrideCurrentType())
  {

    return sub_1BD0DF668();
  }

  else
  {
    sub_1BD0DF95C();
    v4 = *(v1 + v2);

    return MEMORY[0x1EEE255E8](v4);
  }
}

void sub_1BD0DEFEC(void *a1)
{
  v2 = v1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810);
  v5 = MEMORY[0x1EEE9AC00](v60, v4);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v61 = &v54 - v8;
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v54 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
  v19 = MEMORY[0x1EEE9AC00](v62, v18);
  v58 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v57 = &v54 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38850);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v54 - v26;
  v28 = OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory__balances;
  v65 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD387A0);
  sub_1BE04D874();
  (*(v24 + 32))(&v2[v28], v27, v23);
  v29 = PKLastSelectedAccountGraphRange();
  if (v29 >= 5)
  {
    v30 = 4;
  }

  else
  {
    v30 = v29;
  }

  v2[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_range] = v30;
  v31 = OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_accountService;
  *&v2[v31] = [objc_opt_self() sharedInstance];
  *&v2[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_activeState] = 2;
  *&v2[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_maxDataPoint] = 185;
  *&v2[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account] = a1;
  v32 = a1;
  sub_1BE04AEF4();
  v33 = sub_1BE04AE64();
  v56 = *(v10 + 8);
  v56(v17, v9);
  v34 = PKStartOfMonth();

  if (!v34)
  {
    goto LABEL_15;
  }

  sub_1BE04AEE4();

  sub_1BE04AEF4();
  sub_1BD0E48AC(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  if ((sub_1BE052314() & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v54 = v14;
  v55 = v32;
  v35 = v10;
  v36 = v61;
  (*(v10 + 16))(v61, v14, v9);
  v37 = v60;
  v38 = *(v35 + 32);
  v38(v36 + *(v60 + 48), v17, v9);
  v39 = v59;
  sub_1BD0DE19C(v36, v59, &unk_1EBD38810);
  v40 = v2;
  v41 = *(v37 + 48);
  v42 = v57;
  v38(v57, v39, v9);
  v43 = (v39 + v41);
  v44 = v40;
  v45 = v56;
  v56(v43, v9);
  sub_1BD0DE204(v36, v39, &unk_1EBD38810);
  v38(v42 + *(v62 + 36), (v39 + *(v37 + 48)), v9);
  v45(v39, v9);
  v45(v54, v9);
  swift_beginAccess();
  sub_1BD0DE19C(v42, v58, &unk_1EBD387B0);
  sub_1BE04D874();
  sub_1BD0DE53C(v42, &unk_1EBD387B0);
  swift_endAccess();
  if (os_variant_has_internal_ui() && PKSavingsGraphOverrideCurrentType())
  {
    v46 = type metadata accessor for AccountBalanceHistory(0);
    v64.receiver = v44;
    v64.super_class = v46;
    objc_msgSendSuper2(&v64, sel_init);
    sub_1BD0DF668();
  }

  else
  {
    v47 = type metadata accessor for AccountBalanceHistory(0);
    v63.receiver = v44;
    v63.super_class = v47;
    v48 = objc_msgSendSuper2(&v63, sel_init);
    sub_1BD0DF95C();
    sub_1BD0DFB34(0, 0);
    v49 = *&v48[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_accountService];
    v50 = v55;
    if (v49)
    {
      [v49 registerObserver_];
    }

    v51 = [objc_opt_self() sharedInstance];
    if (v51)
    {
      v52 = v51;
      v53 = [v51 registerObserver_];

      *&v48[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_activeState] = v53 & 0x101;
    }

    else
    {
    }
  }
}

uint64_t sub_1BD0DF668()
{
  v1 = type metadata accessor for AccountBalance(0);
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - v8;
  v10 = sub_1BE04AF64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_variant_has_internal_ui();
  if (result)
  {
    result = PKSavingsGraphOverrideCurrentType();
    if (result)
    {
      sub_1BD0E106C(v14);
      v16 = sub_1BD7B5448();
      v17 = *(v16 + 16);
      if (v17)
      {
        v26 = v11;
        v27 = v10;
        v24 = v16;
        v25 = v0;
        v28 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v18 = v16 + v28;
        v19 = *(v2 + 72);
        sub_1BE048C84();
        v20 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1BD0E5D5C(v18, v9);
          if (sub_1BE04AE74())
          {
            sub_1BD0E5D5C(v9, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_1BD1D7640(0, v20[2] + 1, 1, v20);
            }

            v22 = v20[2];
            v21 = v20[3];
            if (v22 >= v21 >> 1)
            {
              v20 = sub_1BD1D7640(v21 > 1, v22 + 1, 1, v20);
            }

            sub_1BD0E5E24(v9);
            v20[2] = v22 + 1;
            sub_1BD0E5DC0(v6, v20 + v28 + v22 * v19);
          }

          else
          {
            sub_1BD0E5E24(v9);
          }

          v18 += v19;
          --v17;
        }

        while (v17);

        v0 = v25;
        v11 = v26;
        v10 = v27;
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v29 = v20;
      v23 = v0;
      sub_1BE04D8C4();
      sub_1BD0E1B54();
      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

uint64_t sub_1BD0DF95C()
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_accountService);
  if (v6)
  {
    v7 = [*(v0 + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account) accountIdentifier];
    sub_1BD0E106C(v5);
    v8 = sub_1BE04AE64();
    v9 = *(v2 + 8);
    v9(v5, v1);
    sub_1BE04AEF4();
    v10 = sub_1BE04AE64();
    v9(v5, v1);
    v11 = [v6 accountBalancesForAccountIdentifier:v7 startDate:v8 endDate:v10 type:1];

    if (v11)
    {
      sub_1BD0E5E8C(0, &qword_1EBD4DFC0);
      v12 = sub_1BE052744();
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  sub_1BD0E0398(v12, 0);
}

void sub_1BD0DFB34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v32 - v8;
  v10 = sub_1BE04AF64();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v32 - v17;
  v19 = *&v3[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_accountService];
  if (v19)
  {
    v33 = a2;
    v20 = OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account;
    v32 = [*&v3[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account] accountIdentifier];
    v21 = [*&v3[v20] savingsDetails];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 createdDate];

      if (v23)
      {
        sub_1BE04AEE4();

        v24 = *(v11 + 32);
        v24(v9, v15, v10);
        (*(v11 + 56))(v9, 0, 1, v10);
        v24(v18, v9, v10);
      }

      else
      {
        (*(v11 + 56))(v9, 1, 1, v10);
        sub_1BE04AEF4();
        if ((*(v11 + 48))(v9, 1, v10) != 1)
        {
          sub_1BD0DE53C(v9, &unk_1EBD39970);
        }
      }

      v25 = sub_1BE04AE64();
      v26 = *(v11 + 8);
      v26(v18, v10);
      sub_1BE04AEF4();
      v27 = sub_1BE04AE64();
      v26(v15, v10);
      v28 = swift_allocObject();
      v28[2] = v3;
      v28[3] = a1;
      v28[4] = v33;
      aBlock[4] = sub_1BD0E5E80;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD0E02F4;
      aBlock[3] = &block_descriptor_44;
      v29 = _Block_copy(aBlock);
      v30 = v3;
      sub_1BD0D44B8(a1);

      v31 = v32;
      [v19 updateAccountBalancesForAccountIdentifier:v32 startDate:v25 endDate:v27 type:1 completion:v29];
      _Block_release(v29);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD0DFEE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BE051F54();
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE051FA4();
  v13 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v24 = sub_1BE052D54();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a4;
  v18[6] = a5;
  aBlock[4] = sub_1BD0E5ED4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_51;
  v19 = _Block_copy(aBlock);
  sub_1BE048C84();
  v20 = a2;
  sub_1BD0D44B8(a4);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD0E48AC(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  v21 = v24;
  MEMORY[0x1BFB3FDF0](0, v16, v12, v19);
  _Block_release(v19);

  (*(v26 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v25);
}

void sub_1BD0E0230(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    sub_1BE048C84();
    sub_1BD0E0398(v9, a3);
  }

  if (a4)
  {
    v10 = sub_1BE048964();
    a4(v10);
    sub_1BD0D4744(a4);
  }
}

uint64_t sub_1BD0E02F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4DFC0);
    v4 = sub_1BE052744();
  }

  sub_1BE048964();
  v6 = a3;
  v5(v4, a3);
}

void sub_1BD0E0398(unint64_t a1, void *a2)
{
  v102 = a2;
  v96 = a1;
  v2 = sub_1BE04AF64();
  v91 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v94 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v86 - v8;
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v86 - v11;
  v13 = type metadata accessor for AccountBalance(0);
  v97 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v86 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v86 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v86 - v27;
  v29 = sub_1BE04D214();
  v103 = *(v29 - 8);
  v104 = v29;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &v86 - v35;
  if (v102)
  {
    v37 = v102;
    v38 = v102;
    sub_1BE04D194();
    v39 = v37;
    v40 = sub_1BE04D204();
    v41 = sub_1BE052C54();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v105[0] = v43;
      *v42 = 136315138;
      swift_getErrorValue();
      v44 = sub_1BE053C74();
      v46 = sub_1BD123690(v44, v45, v105);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_1BD026000, v40, v41, "No balances with error %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1BFB45F20](v43, -1, -1);
      MEMORY[0x1BFB45F20](v42, -1, -1);
    }

    else
    {
    }

    (*(v103 + 8))(v36, v104);
  }

  else
  {
    v99 = v25;
    v100 = v21;
    v92 = v13;
    v87 = v17;
    v101 = v12;
    sub_1BE04D194();
    v47 = sub_1BE04D204();
    v48 = sub_1BE052C54();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1BD026000, v47, v48, "Updating graph balances", v49, 2u);
      MEMORY[0x1BFB45F20](v49, -1, -1);
    }

    (*(v103 + 8))(v33, v104);
    v50 = v98;
    sub_1BD0E0E24(v28);
    v52 = v96;
    v51 = v97;
    v53 = v91;
    if (v96 >> 62)
    {
LABEL_36:
      v54 = sub_1BE053704();
    }

    else
    {
      v54 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    if (v54 < 1)
    {
      sub_1BE04D8B4();

      v83 = *(v105[0] + 16);

      if (v83 <= 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38820);
        v84 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_1BE0B69E0;
        sub_1BD0E5D5C(v28, v85 + v84);
        swift_getKeyPath();
        swift_getKeyPath();
        v105[0] = v85;
        v50;
        sub_1BE04D8C4();
        sub_1BD0E1B54();
      }

      v82 = v28;
    }

    else
    {
      v105[0] = MEMORY[0x1E69E7CC0];
      v51 = v50;
      sub_1BE04D8C4();
      v93 = v51;
      sub_1BD0E106C(v101);
      v55 = 0;
      v104 = v52 & 0xC000000000000001;
      v103 = *(v92 + 20);
      v95 = v52 & 0xFFFFFFFFFFFFFF8;
      v50 = (v53 + 1);
      v88 = (v53 + 4);
      v53 = &selRef_currentPassbookState;
      v91 = v28;
      v102 = v54;
      v89 = v2;
      v90 = v50;
      do
      {
        if (v104)
        {
          v56 = MEMORY[0x1BFB40900](v55, v52);
        }

        else
        {
          if (v55 >= *(v95 + 16))
          {
            __break(1u);
            goto LABEL_36;
          }

          v56 = *(v52 + 8 * v55 + 32);
        }

        v57 = v56;
        v58 = [v56 v53[76]];
        sub_1BE04AEE4();

        LOBYTE(v58) = sub_1BE04AE74();
        v51 = *v50;
        (*v50)(v9, v2);
        if (v58 & 1) != 0 || (v59 = [v57 v53[76]], sub_1BE04AEE4(), v59, LOBYTE(v59) = sub_1BE04AE84(), v51(v9, v2), (v59))
        {
        }

        else
        {
          v60 = [v57 balance];
          sub_1BE0529E4();
          v62 = v61;

          v63 = [v57 v53[76]];
          sub_1BE04AEE4();

          v64 = sub_1BE04AE64();
          v51(v9, v2);
          v65 = PKStartOfDay();

          if (!v65)
          {
            __break(1u);
            return;
          }

          v66 = v94;
          sub_1BE04AEE4();

          v67 = v99;
          *v99 = v62;
          (*v88)(&v67[*(v92 + 20)], v66, v2);
          sub_1BD0E5D5C(v67, v100);
          swift_getKeyPath();
          swift_getKeyPath();
          v98 = sub_1BE04D8A4();
          v69 = v68;
          v70 = *v68;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v69 = v70;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v70 = sub_1BD1D7640(0, v70[2] + 1, 1, v70);
            *v69 = v70;
          }

          v73 = v70[2];
          v72 = v70[3];
          if (v73 >= v72 >> 1)
          {
            v70 = sub_1BD1D7640(v72 > 1, v73 + 1, 1, v70);
            *v69 = v70;
          }

          v70[2] = v73 + 1;
          sub_1BD0E5DC0(v100, v70 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v73);
          (v98)(v105, 0);

          sub_1BD0E5E24(v99);
          v28 = v91;
          v2 = v89;
          v52 = v96;
          v50 = v90;
        }

        ++v55;
        v53 = &selRef_currentPassbookState;
      }

      while (v102 != v55);
      sub_1BD0E5D5C(v28, v87);
      swift_getKeyPath();
      swift_getKeyPath();
      v74 = sub_1BE04D8A4();
      v76 = v75;
      v77 = *v75;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      *v76 = v77;
      if ((v78 & 1) == 0)
      {
        v77 = sub_1BD1D7640(0, v77[2] + 1, 1, v77);
        *v76 = v77;
      }

      v80 = v77[2];
      v79 = v77[3];
      v81 = v87;
      if (v80 >= v79 >> 1)
      {
        v77 = sub_1BD1D7640(v79 > 1, v80 + 1, 1, v77);
        v81 = v87;
        *v76 = v77;
      }

      v77[2] = v80 + 1;
      sub_1BD0E5DC0(v81, v77 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v80);
      v74(v105, 0);

      sub_1BD0E1B54();
      v51(v101, v2);
      v82 = v91;
    }

    sub_1BD0E5E24(v82);
  }
}

void sub_1BD0E0E24(char *a1@<X8>)
{
  v3 = sub_1BE04AF64();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account;
  v13 = [*(v1 + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account) savingsDetails];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 accountSummary];

    v16 = [v15 currentBalance];
    if (!v16)
    {
      sub_1BD0E5E8C(0, &qword_1EBD38840);
      v16 = sub_1BE053044();
    }

    sub_1BE0529E4();
    v18 = v17;

    v19 = [*(v1 + v12) lastUpdated];
    if (v19)
    {
      v20 = v19;
      sub_1BE04AEE4();

      v21 = sub_1BE04AE64();
      (*(v4 + 8))(v11, v3);
    }

    else
    {
      v21 = 0;
    }

    v22 = PKStartOfDay();

    if (v22)
    {
      sub_1BE04AEE4();

      *a1 = v18;
      v23 = type metadata accessor for AccountBalance(0);
      (*(v4 + 32))(&a1[*(v23 + 20)], v8, v3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD0E106C@<X0>(char *a1@<X8>)
{
  v86 = a1;
  v2 = sub_1BE04B2D4();
  v80 = *(v2 - 8);
  v81 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v78 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v85 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v75 = &v74 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v87 = &v74 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v79 = &v74 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v74 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v74 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v74 - v27;
  v29 = sub_1BE04AF64();
  v30 = *(v29 - 8);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v38 = &v74 - v37;
  v40 = MEMORY[0x1EEE9AC00](v36, v39);
  v42 = &v74 - v41;
  MEMORY[0x1EEE9AC00](v40, v43);
  v89 = &v74 - v44;
  v45 = sub_1BE04B2F4();
  v83 = *(v45 - 8);
  v84 = v45;
  MEMORY[0x1EEE9AC00](v45, v46);
  v88 = &v74 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B1E4();
  if (os_variant_has_internal_ui() && PKSavingsGraphOverrideCurrentType())
  {
    v48 = sub_1BD7B5448();
    if (*(v48 + 16))
    {
      v49 = v48;
      v50 = type metadata accessor for AccountBalance(0);
      (*(v30 + 16))(v28, v49 + *(v50 + 20) + ((*(*(v50 - 8) + 80) + 32) & ~*(*(v50 - 8) + 80)), v29);
      v51 = *(v30 + 56);
      v51(v28, 0, 1, v29);
      (*(v30 + 32))(v42, v28, v29);
    }

    else
    {
      v51 = *(v30 + 56);
      v51(v28, 1, 1, v29);
      sub_1BE04AEF4();
      if ((*(v30 + 48))(v28, 1, v29) != 1)
      {
        sub_1BD0DE53C(v28, &unk_1EBD39970);
      }
    }
  }

  else
  {
    result = [*(v1 + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account) savingsDetails];
    if (!result)
    {
      __break(1u);
      goto LABEL_36;
    }

    v53 = result;
    v54 = [result createdDate];

    if (v54)
    {
      sub_1BE04AEE4();

      v55 = *(v30 + 32);
      v55(v25, v34, v29);
      v51 = *(v30 + 56);
      v51(v25, 0, 1, v29);
      v55(v38, v25, v29);
    }

    else
    {
      v51 = *(v30 + 56);
      v51(v25, 1, 1, v29);
      sub_1BE04AEF4();
      if ((*(v30 + 48))(v25, 1, v29) != 1)
      {
        sub_1BD0DE53C(v25, &unk_1EBD39970);
      }
    }

    v42 = v38;
  }

  v56 = *(v30 + 32);
  v56(v89, v42, v29);
  v51(v21, 1, 1, v29);
  v57 = *(v1 + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_range);
  v82 = v56;
  v77 = v30 + 56;
  if (v57 > 1)
  {
    if (v57 == 2)
    {
      v59 = v80;
      v58 = v81;
      v60 = v78;
      (*(v80 + 104))(v78, *MEMORY[0x1E6969A78], v81);
      sub_1BE04AEF4();
      v76 = v51;
      v61 = v79;
    }

    else
    {
      if (v57 != 3)
      {
        sub_1BD0DE53C(v21, &unk_1EBD39970);
        (*(v30 + 16))(v21, v89, v29);
        v51(v21, 0, 1, v29);
        goto LABEL_20;
      }

      v59 = v80;
      v58 = v81;
      v60 = v78;
      (*(v80 + 104))(v78, *MEMORY[0x1E6969A68], v81);
      sub_1BE04AEF4();
      v76 = v51;
      v61 = v79;
    }

    sub_1BE04B224();
    (*(v30 + 8))(v34, v29);
    (*(v59 + 8))(v60, v58);
    sub_1BD0DE53C(v21, &unk_1EBD39970);
    v66 = v61;
    v51 = v76;
    sub_1BD0DE204(v66, v21, &unk_1EBD39970);
LABEL_20:
    v67 = v87;
    goto LABEL_23;
  }

  v76 = v51;
  v63 = v80;
  v62 = v81;
  v64 = v78;
  if (v57)
  {
    (*(v80 + 104))(v78, *MEMORY[0x1E6969A78], v81);
  }

  else
  {
    (*(v80 + 104))(v78, *MEMORY[0x1E6969A48], v81);
  }

  sub_1BE04AEF4();
  v65 = v79;
  sub_1BE04B224();
  (*(v30 + 8))(v34, v29);
  (*(v63 + 8))(v64, v62);
  sub_1BD0DE53C(v21, &unk_1EBD39970);
  sub_1BD0DE204(v65, v21, &unk_1EBD39970);
  v67 = v87;
  v51 = v76;
LABEL_23:
  sub_1BD0DE19C(v21, v67, &unk_1EBD39970);
  v68 = *(v30 + 48);
  if (v68(v67, 1, v29) != 1)
  {
    sub_1BD0DE53C(v67, &unk_1EBD39970);
    v69 = v75;
    sub_1BD0DE19C(v21, v75, &unk_1EBD39970);
    result = v68(v69, 1, v29);
    if (result != 1)
    {
      v70 = sub_1BE04AE84();
      (*(v83 + 8))(v88, v84);
      (*(v30 + 8))(v69, v29);
      if ((v70 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_36:
    __break(1u);
    return result;
  }

  (*(v83 + 8))(v88, v84);
  sub_1BD0DE53C(v67, &unk_1EBD39970);
LABEL_27:
  sub_1BD0DE53C(v21, &unk_1EBD39970);
  (*(v30 + 16))(v21, v89, v29);
  v51(v21, 0, 1, v29);
LABEL_28:
  v71 = v85;
  sub_1BD0DE204(v21, v85, &unk_1EBD39970);
  v72 = v68(v71, 1, v29);
  v73 = v82;
  if (v72 == 1)
  {
    v82(v86, v89, v29);
    result = v68(v71, 1, v29);
    if (result != 1)
    {
      return sub_1BD0DE53C(v71, &unk_1EBD39970);
    }
  }

  else
  {
    (*(v30 + 8))(v89, v29);
    return v73(v86, v71, v29);
  }

  return result;
}

uint64_t sub_1BD0E1B54()
{
  v1 = sub_1BE04D214();
  v101 = *(v1 - 8);
  v102 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v104 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810);
  v5 = MEMORY[0x1EEE9AC00](v95, v4);
  v94 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v93 = &v87 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
  v10 = MEMORY[0x1EEE9AC00](v106, v9);
  v97 = (&v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v12);
  v96 = &v87 - v13;
  v105 = sub_1BE04AF64();
  v109 = *(v105 - 8);
  v15 = MEMORY[0x1EEE9AC00](v105, v14);
  v100 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v98 = &v87 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v107 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v108 = &v87 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38828);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v99 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = &v87 - v31;
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = (&v87 - v34);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BE048C84();
  sub_1BD0E49E8(v110);

  v36 = v110[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v110[0] = v36;
  v37 = v0;
  sub_1BE04D8C4();
  v38 = *(v25 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD0E267C(v35 + v38, v110[0]);
  v40 = v39;

  *v35 = v40;
  sub_1BD0DE19C(v35, v32, &qword_1EBD38828);
  v41 = *v32;
  v42 = *(v25 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  v110[0] = v41;
  v92 = v37;
  sub_1BE04D8C4();
  sub_1BD0DE53C(&v32[v42], &unk_1EBD387B0);
  sub_1BD0DE19C(v35, v32, &qword_1EBD38828);

  v43 = *(v25 + 48);
  v44 = v109 + 16;
  v45 = *(v109 + 16);
  v46 = v105;
  v45(v108, &v32[v43], v105);
  sub_1BD0DE53C(&v32[v43], &unk_1EBD387B0);
  v103 = v35;
  sub_1BD0DE19C(v35, v32, &qword_1EBD38828);

  v89 = v25;
  v47 = *(v25 + 48);
  v88 = v32;
  v48 = &v32[v47];
  v49 = v46;
  v45(v107, (v48 + *(v106 + 36)), v46);
  sub_1BD0DE53C(v48, &unk_1EBD387B0);
  sub_1BD0E48AC(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  if (sub_1BE052314())
  {
    v50 = v93;
    v91 = v45;
    v45(v93, v108, v49);
    v51 = v95;
    v45((v50 + *(v95 + 48)), v107, v49);
    v52 = v94;
    sub_1BD0DE19C(v50, v94, &unk_1EBD38810);
    v53 = *(v51 + 48);
    v54 = v109;
    v55 = *(v109 + 32);
    v56 = v96;
    v55(v96, v52, v49);
    v90 = v44;
    v57 = *(v54 + 8);
    v57(v52 + v53, v49);
    sub_1BD0DE204(v50, v52, &unk_1EBD38810);
    v55((v56 + *(v106 + 36)), v52 + *(v51 + 48), v49);
    v109 = v54 + 8;
    v106 = v57;
    v57(v52, v49);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD0DE19C(v56, v97, &unk_1EBD387B0);
    v58 = v92;
    sub_1BE04D8C4();
    sub_1BD0DE53C(v56, &unk_1EBD387B0);
    v59 = v104;
    sub_1BE04D194();
    v60 = v98;
    v61 = v91;
    v91(v98, v108, v49);
    v62 = v100;
    v61(v100, v107, v49);
    v63 = v103;
    v64 = v99;
    sub_1BD0DE19C(v103, v99, &qword_1EBD38828);
    v65 = sub_1BE04D204();
    v66 = sub_1BE052C54();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v110[0] = v97;
      *v67 = 136315650;
      sub_1BD0E48AC(&unk_1EBD38830, MEMORY[0x1E6969530]);
      LODWORD(v96) = v66;
      v68 = sub_1BE053B24();
      v69 = v64;
      v70 = v62;
      v72 = v71;
      v73 = v106;
      (v106)(v60, v49);
      v74 = sub_1BD123690(v68, v72, v110);

      *(v67 + 4) = v74;
      *(v67 + 12) = 2080;
      v75 = sub_1BE053B24();
      v77 = v76;
      v73(v70, v49);
      v78 = sub_1BD123690(v75, v77, v110);

      *(v67 + 14) = v78;
      *(v67 + 22) = 2048;
      v79 = v88;
      sub_1BD0DE19C(v69, v88, &qword_1EBD38828);
      v80 = *(v89 + 48);
      v81 = *(*v79 + 16);

      sub_1BD0DE53C(v79 + v80, &unk_1EBD387B0);
      sub_1BD0DE53C(v69, &qword_1EBD38828);
      *(v67 + 24) = v81;
      _os_log_impl(&dword_1BD026000, v65, v96, "Updated graph from %s to %s with %ld balances", v67, 0x20u);
      v82 = v97;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v82, -1, -1);
      MEMORY[0x1BFB45F20](v67, -1, -1);

      (*(v101 + 8))(v104, v102);
      v83 = v105;
      v73(v107, v105);
      v73(v108, v83);
      v84 = v103;
    }

    else
    {
      sub_1BD0DE53C(v64, &qword_1EBD38828);

      v85 = v106;
      (v106)(v62, v49);
      v85(v60, v49);
      (*(v101 + 8))(v59, v102);
      v85(v107, v49);
      v85(v108, v49);
      v84 = v63;
    }

    return sub_1BD0DE53C(v84, &qword_1EBD38828);
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

void sub_1BD0E267C(uint64_t a1, char *a2)
{
  v200 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38800);
  v205 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v207 = (v189 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38808);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v189 - v12);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810);
  v15 = MEMORY[0x1EEE9AC00](v198, v14);
  v199 = v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v197 = v189 - v18;
  v19 = sub_1BE04AF64();
  v20 = *(v19 - 8);
  v201 = v19;
  v202 = v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = v189 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = v189 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v196 = v189 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v195 = v189 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v203 = v189 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v204 = v189 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v206 = (v189 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v208 = v189 - v46;
  MEMORY[0x1EEE9AC00](v45, v47);
  v49 = v189 - v48;
  v50 = type metadata accessor for AccountBalance(0);
  v52 = MEMORY[0x1EEE9AC00](v50, v51);
  v54 = MEMORY[0x1EEE9AC00](v52, v53);
  v56 = MEMORY[0x1EEE9AC00](v54, v55);
  v58 = (v189 - v57);
  v60 = MEMORY[0x1EEE9AC00](v56, v59);
  v62 = v189 - v61;
  v64 = MEMORY[0x1EEE9AC00](v60, v63);
  v66 = MEMORY[0x1EEE9AC00](v64, v189 - v65);
  v68 = MEMORY[0x1EEE9AC00](v66, v67);
  v75 = *(a2 + 2);
  if (!v75)
  {
    v103 = v24;
    v203 = a2;
    sub_1BE04AEF4();
    v104 = sub_1BE04AE64();
    v105 = v201;
    v106 = v202;
    v107 = *(v202 + 8);
    v107(v49, v201);
    v108 = PKStartOfDay();

    if (!v108)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    sub_1BE04AEE4();

    sub_1BE04AEF4();
    v109 = sub_1BE04AE64();
    v107(v49, v105);
    v110 = PKEndOfDay();

    if (!v110)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v111 = v103;
    sub_1BE04AEE4();

    sub_1BD0E48AC(&qword_1EBD525D0, MEMORY[0x1E6969530]);
    if (sub_1BE052314())
    {
      v112 = *(v106 + 16);
      v113 = v106;
      v114 = v197;
      v112(v197, v28, v105);
      v115 = v198;
      v112((v114 + *(v198 + 48)), v111, v105);
      v116 = v107;
      v117 = v199;
      sub_1BD0DE19C(v114, v199, &unk_1EBD38810);
      v207 = v111;
      v208 = v28;
      v118 = *(v115 + 48);
      v206 = *(v113 + 32);
      v119 = v200;
      v206(v200, v117, v105);
      v116(v117 + v118, v105);
      sub_1BD0DE204(v114, v117, &unk_1EBD38810);
      v120 = *(v115 + 48);
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
      v206(v119 + *(v121 + 36), v117 + v120, v105);
      v116(v117, v105);
      v116(v207, v105);
      v116(v208, v105);
      sub_1BE048C84();
      return;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v76 = v68;
  if (v75 == 1)
  {
    v77 = v70;
    v207 = v69;
    v78 = (v74[80] + 32) & ~v74[80];
    v79 = (v189 - v71);
    v80 = v74;
    sub_1BD0E5D5C(&a2[v78], v189 - v71);
    v81 = *v79;
    if (*v79 != 0.0)
    {
      v206 = v80;
      v160 = v76;
      v161 = sub_1BE04AE64();
      v162 = PKStartOfDay();

      v164 = v201;
      v163 = v202;
      if (!v162)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v165 = v204;
      sub_1BE04AEE4();

      *v77 = v81;
      v166 = *(v160 + 20);
      v167 = *(v163 + 32);
      v205 = v77;
      v196 = v166;
      v208 = v167;
      v167(&v166[v77], v165, v164);
      v168 = sub_1BE04AE64();
      v169 = PKEndOfDay();

      if (!v169)
      {
LABEL_50:
        __break(1u);
        return;
      }

      v170 = v203;
      sub_1BE04AEE4();

      v172 = v207;
      v171 = v208;
      *v207 = v81;
      v173 = *(v160 + 20);
      v171(v172 + v173, v170, v164);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38820);
      v174 = *(v206 + 9);
      v175 = swift_allocObject();
      *(v175 + 16) = xmmword_1BE0B6CA0;
      v203 = v175;
      v176 = v175 + v78;
      v177 = v205;
      sub_1BD0E5D5C(v205, v175 + v78);
      sub_1BD0E5D5C(v172, v176 + v174);
      sub_1BD0E48AC(&qword_1EBD525D0, MEMORY[0x1E6969530]);
      v178 = v196;
      LOBYTE(v176) = sub_1BE052314();
      sub_1BD0E5E24(v79);
      if (v176)
      {
        v179 = &v178[v177];
        v180 = v197;
        v181 = v208;
        (v208)(v197, v179, v164);
        v182 = v198;
        v181(v180 + *(v198 + 48), v172 + v173, v164);
        v183 = v199;
        sub_1BD0DE19C(v180, v199, &unk_1EBD38810);
        v184 = *(v182 + 48);
        v185 = v200;
        v181(v200, v183, v164);
        v186 = *(v202 + 8);
        v186(v183 + v184, v164);
        sub_1BD0DE204(v180, v183, &unk_1EBD38810);
        v187 = *(v182 + 48);
        v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
        v181(v185 + *(v188 + 36), v183 + v187, v164);
        v186(v183, v164);
        return;
      }

      goto LABEL_44;
    }

    sub_1BE04AEF4();
    v82 = sub_1BE04AE64();
    v84 = v201;
    v83 = v202;
    v85 = *(v202 + 8);
    v85(v49, v201);
    v86 = PKStartOfDay();

    if (!v86)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v87 = v208;
    sub_1BE04AEE4();

    sub_1BE04AEF4();
    v88 = sub_1BE04AE64();
    v85(v49, v84);
    v89 = PKEndOfDay();

    if (!v89)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v207 = v85;
    v90 = v206;
    sub_1BE04AEE4();

    sub_1BD0E48AC(&qword_1EBD525D0, MEMORY[0x1E6969530]);
    v91 = sub_1BE052314();
    sub_1BD0E5E24(v79);
    if (v91)
    {
      v92 = *(v83 + 16);
      v93 = v197;
      v92(v197, v87, v84);
      v94 = v198;
      v92((v93 + *(v198 + 48)), v90, v84);
      v95 = v199;
      sub_1BD0DE19C(v93, v199, &unk_1EBD38810);
      v96 = *(v94 + 48);
      v97 = *(v83 + 32);
      v98 = v200;
      v97(v200, v95, v84);
      v99 = v95 + v96;
      v100 = v207;
      v207(v99, v84);
      sub_1BD0DE204(v93, v95, &unk_1EBD38810);
      v101 = *(v94 + 48);
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
      v97(v98 + *(v102 + 36), v95 + v101, v84);
      v100(v95, v84);
      v100(v206, v84);
      v100(v208, v84);
      return;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v190 = v72;
  v208 = v75 - 1;
  v191 = (v74[80] + 32) & ~v74[80];
  v192 = v73;
  v122 = &a2[v191];
  v206 = v74;
  sub_1BD0E5D5C(&a2[v191], v62);
  v194 = v76;
  v123 = *(v76 + 20);
  v124 = v201;
  v125 = v202 + 32;
  v126 = *(v202 + 32);
  v126(v195, &v62[v123], v201);
  v127 = *(v206 + 9);
  v204 = v122;
  v206 = v127;
  sub_1BD0E5D5C(&v122[v127 * v208], v62);
  v128 = &v62[*(v194 + 20)];
  v189[1] = v125;
  v189[0] = v126;
  v126(v196, v128, v124);
  v129 = 0;
  v130 = (v205 + 7);
  v131 = (v205 + 6);
  v203 = MEMORY[0x1E69E7CC0];
  v205 = v58;
  while (1)
  {
    if (v129 == v75)
    {
      v132 = 1;
      v129 = v75;
    }

    else
    {
      if (v129 >= v75)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (__OFADD__(v129, 1))
      {
        goto LABEL_40;
      }

      v133 = &v204[v129 * v206];
      v134 = *(v3 + 48);
      v135 = v10;
      v136 = v207;
      *v207 = v129;
      sub_1BD0E5D5C(v133, &v136[v134]);
      v137 = v136;
      v10 = v135;
      v58 = v205;
      sub_1BD0DE204(v137, v10, &qword_1EBD38800);
      v132 = 0;
      ++v129;
    }

    (*v130)(v10, v132, 1, v3);
    sub_1BD0DE204(v10, v13, &qword_1EBD38808);
    if ((*v131)(v13, 1, v3) == 1)
    {
      break;
    }

    v138 = *v13;
    sub_1BD0E5DC0(v13 + *(v3 + 48), v58);
    if (v75 <= 0x171)
    {
      sub_1BD0E5D5C(v58, v192);
      v139 = v203;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v139 = sub_1BD1D7640(0, *(v139 + 2) + 1, 1, v139);
      }

      v141 = *(v139 + 2);
      v140 = *(v139 + 3);
      v142 = v141 + 1;
      v193 = v141;
      v143 = v141 >= v140 >> 1;
      v144 = v192;
      v203 = v142;
      if (!v143)
      {
LABEL_26:
        v194 = v144;
        goto LABEL_27;
      }

LABEL_32:
      v146 = v144;
      v139 = sub_1BD1D7640(v140 > 1, v142, 1, v139);
      v194 = v146;
      v58 = v205;
LABEL_27:
      sub_1BD0E5E24(v58);
      *(v139 + 2) = v203;
      v203 = v139;
      sub_1BD0E5DC0(v194, &v139[v191 + v193 * v206]);
    }

    else
    {
      if (v138 == v208 || !(v138 % (v75 / 0xB9)))
      {
        sub_1BD0E5D5C(v58, v190);
        v139 = v203;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_1BD1D7640(0, *(v139 + 2) + 1, 1, v139);
        }

        v145 = *(v139 + 2);
        v140 = *(v139 + 3);
        v142 = v145 + 1;
        v193 = v145;
        v143 = v145 >= v140 >> 1;
        v144 = v190;
        v203 = v142;
        if (!v143)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }

      sub_1BD0E5E24(v58);
    }
  }

  sub_1BD0E48AC(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  v148 = v195;
  v147 = v196;
  v149 = v201;
  if ((sub_1BE052314() & 1) == 0)
  {
    goto LABEL_42;
  }

  v150 = v197;
  v151 = v189[0];
  (v189[0])(v197, v148, v149);
  v152 = v198;
  v151(v150 + *(v198 + 48), v147, v149);
  v153 = v199;
  sub_1BD0DE19C(v150, v199, &unk_1EBD38810);
  v154 = *(v152 + 48);
  v155 = v200;
  v151(v200, v153, v149);
  v156 = *(v202 + 8);
  v156(v153 + v154, v149);
  v157 = v156;
  sub_1BD0DE204(v150, v153, &unk_1EBD38810);
  v158 = *(v152 + 48);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
  v151(v155 + *(v159 + 36), (v153 + v158), v149);
  v157(v153, v149);
}

uint64_t sub_1BD0E3720(void *a1)
{
  v3 = sub_1BE051F54();
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(v1 + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account) accountIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1BE052434();
    v15 = v14;

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    if (v15)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v13 = 0;
  v15 = 0;
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v16 = [a1 accountIdentifier];
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = v16;
  v18 = sub_1BE052434();
  v20 = v19;

  if (!v15)
  {
    if (v20)
    {
      goto LABEL_14;
    }

LABEL_18:
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v23 = sub_1BE052D54();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = a1;
    aBlock[4] = sub_1BD0E5D54;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_0;
    v26 = _Block_copy(aBlock);
    v27 = a1;

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD0E48AC(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v10, v6, v26);
    _Block_release(v26);

    (*(v31 + 8))(v6, v3);
    return (*(v29 + 8))(v10, v30);
  }

  if (v20)
  {
    if (v13 == v18 && v15 == v20)
    {
    }

    else
    {
      v22 = sub_1BE053B84();

      if ((v22 & 1) == 0)
      {
        return result;
      }
    }

    goto LABEL_18;
  }

LABEL_14:
}

void sub_1BD0E3B50(uint64_t a1, void *a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04D194();
  v8 = sub_1BE04D204();
  v9 = sub_1BE052C54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v8, v9, "Will update balances following account update", v10, 2u);
    MEMORY[0x1BFB45F20](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!a2)
    {
      __break(1u);
      return;
    }

    v12 = *(Strong + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account);
    *(Strong + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account) = a2;
    v13 = Strong;
    v14 = a2;
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    sub_1BD0DF95C();
  }
}

uint64_t sub_1BD0E3D78(void *a1)
{
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  result = MEMORY[0x1EEE9AC00](v7, v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = v10;
    v22 = result;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v13 = a1;
    v20 = sub_1BE052D54();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    aBlock[4] = sub_1BD0E6068;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_64;
    v16 = _Block_copy(aBlock);
    v17 = v13;

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD0E48AC(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    sub_1BE053664();
    v18 = v20;
    MEMORY[0x1BFB3FDF0](0, v12, v6, v16);
    _Block_release(v16);

    (*(v3 + 8))(v6, v2);
    return (*(v21 + 8))(v12, v22);
  }

  return result;
}

void sub_1BD0E40A8(uint64_t a1, void *a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04D194();
  v8 = sub_1BE04D204();
  v9 = sub_1BE052C54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v8, v9, "Will update balances following foreground event", v10, 2u);
    MEMORY[0x1BFB45F20](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account);
    *(Strong + OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account) = a2;
    v13 = Strong;

    v14 = a2;
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    sub_1BD0DF95C();
  }
}

id sub_1BD0E4304()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountBalanceHistory(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD0E4448()
{
  sub_1BD0E4578(319, &qword_1EBD38798, &qword_1EBD387A0);
  if (v0 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD387A8, &unk_1EBD387B0);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD0E4578(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1BE04D8D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FlightWidgetDisplayContext(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FlightWidgetDisplayContext(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BD0E4768(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD0E47A0()
{
  result = sub_1BE04AF64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD0E48AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD0E4948()
{
  result = qword_1EBD387E8;
  if (!qword_1EBD387E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD387E8);
  }

  return result;
}

uint64_t sub_1BD0E49A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountBalanceHistory(0);
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD0E49E8(void **a1)
{
  v2 = *(type metadata accessor for AccountBalance(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED6DC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1BD0E4D30(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1BD0E4A90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD0E4B0C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15 - v10;
  sub_1BD0DE19C(a1, &v15 - v10, &unk_1EBD387B0);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v11, v8, &unk_1EBD387B0);
  v13 = v12;
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v11, &unk_1EBD387B0);
}

uint64_t sub_1BD0E4C38@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD0E4CB8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  v3 = v2;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD0E4D30(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BE053B14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for AccountBalance(0);
        v6 = sub_1BE0527B4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AccountBalance(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BD0E505C(v8, v9, a1, v4);
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
    return sub_1BD0E4E5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BD0E4E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AccountBalance(0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v30 - v15;
  result = MEMORY[0x1EEE9AC00](v14, v17);
  v21 = &v30 - v20;
  v32 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v25 = -v23;
    v26 = a1 - a3;
    v37 = v22;
    v31 = v23;
    v27 = v22 + v23 * a3;
LABEL_5:
    v35 = v24;
    v36 = a3;
    v33 = v27;
    v34 = v26;
    while (1)
    {
      sub_1BD0E5D5C(v27, v21);
      sub_1BD0E5D5C(v24, v16);
      v28 = sub_1BE04AE84();
      sub_1BD0E5E24(v16);
      result = sub_1BD0E5E24(v21);
      if ((v28 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v24 = v35 + v31;
        v26 = v34 - 1;
        v27 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      sub_1BD0E5DC0(v27, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1BD0E5DC0(v12, v24);
      v24 += v25;
      v27 += v25;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BD0E505C(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v106 = a1;
  v9 = type metadata accessor for AccountBalance(0);
  v114 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v108 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v117 = &v103 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v103 - v18;
  result = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v103 - v22;
  v116 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v106;
    if (!*v106)
    {
      goto LABEL_135;
    }

    a4 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_1BD5ED6C8(a4);
    }

    v119 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v116)
      {
        v99 = *(result + 16 * a4);
        v100 = result;
        v101 = *(result + 16 * (a4 - 1) + 40);
        sub_1BD0E58BC(*v116 + *(v114 + 72) * v99, *v116 + *(v114 + 72) * *(result + 16 * (a4 - 1) + 32), *v116 + *(v114 + 72) * v101, v5);
        if (v6)
        {
        }

        if (v101 < v99)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_1BD5ED6C8(v100);
        }

        if (a4 - 2 >= *(v100 + 2))
        {
          goto LABEL_123;
        }

        v102 = &v100[16 * a4];
        *v102 = v99;
        *(v102 + 1) = v101;
        v119 = v100;
        sub_1BD5ED63C(a4 - 1);
        result = v119;
        a4 = *(v119 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v105 = a4;
  v118 = v9;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    v109 = v26;
    if (v28 >= v24)
    {
      v24 = v28;
    }

    else
    {
      v29 = *v116;
      v30 = v27;
      v31 = *(v114 + 72);
      v5 = *v116 + v31 * v28;
      sub_1BD0E5D5C(v5, v23);
      sub_1BD0E5D5C(v29 + v31 * v30, v19);
      LODWORD(v113) = sub_1BE04AE84();
      sub_1BD0E5E24(v19);
      result = sub_1BD0E5E24(v23);
      v104 = v30;
      v32 = v30 + 2;
      v115 = v31;
      v33 = v29 + v31 * v32;
      v34 = v113;
      while (v24 != v32)
      {
        sub_1BD0E5D5C(v33, v23);
        sub_1BD0E5D5C(v5, v19);
        v35 = sub_1BE04AE84() & 1;
        sub_1BD0E5E24(v19);
        result = sub_1BD0E5E24(v23);
        ++v32;
        v33 += v115;
        v5 += v115;
        if ((v34 & 1) != v35)
        {
          v36 = v34;
          v24 = v32 - 1;
          goto LABEL_11;
        }
      }

      v36 = v34;
LABEL_11:
      v27 = v104;
      a4 = v105;
      if (v36)
      {
        if (v24 < v104)
        {
          goto LABEL_126;
        }

        if (v104 < v24)
        {
          v103 = v6;
          v37 = v115 * (v24 - 1);
          v38 = v24 * v115;
          v113 = v24;
          v39 = v24;
          v40 = v104;
          v41 = v104 * v115;
          do
          {
            if (v40 != --v39)
            {
              v42 = *v116;
              if (!*v116)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_1BD0E5DC0(v42 + v41, v108);
              if (v41 < v37 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1BD0E5DC0(v108, v42 + v37);
            }

            ++v40;
            v37 -= v115;
            v38 -= v115;
            v41 += v115;
          }

          while (v40 < v39);
          v6 = v103;
          v27 = v104;
          a4 = v105;
          v24 = v113;
        }
      }
    }

    v43 = v116[1];
    if (v24 < v43)
    {
      if (__OFSUB__(v24, v27))
      {
        goto LABEL_125;
      }

      if (v24 - v27 < a4)
      {
        if (__OFADD__(v27, a4))
        {
          goto LABEL_127;
        }

        if ((v27 + a4) >= v43)
        {
          v44 = v116[1];
        }

        else
        {
          v44 = v27 + a4;
        }

        if (v44 < v27)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v24 != v44)
        {
          break;
        }
      }
    }

    v45 = v24;
    if (v24 < v27)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v26 = v109;
    }

    else
    {
      result = sub_1BD1D7844(0, *(v109 + 2) + 1, 1, v109);
      v26 = result;
    }

    a4 = *(v26 + 2);
    v46 = *(v26 + 3);
    v5 = a4 + 1;
    if (a4 >= v46 >> 1)
    {
      result = sub_1BD1D7844((v46 > 1), a4 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v5;
    v47 = &v26[16 * a4];
    *(v47 + 4) = v27;
    *(v47 + 5) = v45;
    v48 = *v106;
    if (!*v106)
    {
      goto LABEL_134;
    }

    v110 = v45;
    if (a4)
    {
      while (1)
      {
        v49 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v50 = *(v26 + 4);
          v51 = *(v26 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_54:
          if (v53)
          {
            goto LABEL_113;
          }

          v66 = &v26[16 * v5];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_116;
          }

          v72 = &v26[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_120;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v76 = &v26[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_68:
        if (v71)
        {
          goto LABEL_115;
        }

        v79 = &v26[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_118;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v49 - 1;
        if (v49 - 1 >= v5)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v116)
        {
          goto LABEL_131;
        }

        v87 = v26;
        v88 = *&v26[16 * a4 + 32];
        v5 = *&v26[16 * v49 + 40];
        sub_1BD0E58BC(*v116 + *(v114 + 72) * v88, *v116 + *(v114 + 72) * *&v26[16 * v49 + 32], *v116 + *(v114 + 72) * v5, v48);
        if (v6)
        {
        }

        if (v5 < v88)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_1BD5ED6C8(v87);
        }

        if (a4 >= *(v87 + 2))
        {
          goto LABEL_110;
        }

        v89 = &v87[16 * a4];
        *(v89 + 4) = v88;
        *(v89 + 5) = v5;
        v119 = v87;
        result = sub_1BD5ED63C(v49);
        v26 = v119;
        v5 = *(v119 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v26[16 * v5 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_111;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_112;
      }

      v61 = &v26[16 * v5];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_114;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_117;
      }

      if (v65 >= v57)
      {
        v83 = &v26[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_121;
        }

        if (v52 < v86)
        {
          v49 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v24 = v116[1];
    v25 = v110;
    a4 = v105;
    if (v110 >= v24)
    {
      goto LABEL_96;
    }
  }

  v103 = v6;
  v104 = v27;
  a4 = *v116;
  v90 = *(v114 + 72);
  v91 = *v116 + v90 * (v24 - 1);
  v92 = v24;
  v93 = -v90;
  v94 = v27 - v92;
  v113 = v92;
  v107 = v90;
  v5 = a4 + v92 * v90;
  v110 = v44;
LABEL_86:
  v111 = v5;
  v112 = v94;
  v115 = v91;
  v95 = v91;
  while (1)
  {
    sub_1BD0E5D5C(v5, v23);
    sub_1BD0E5D5C(v95, v19);
    v96 = sub_1BE04AE84();
    sub_1BD0E5E24(v19);
    result = sub_1BD0E5E24(v23);
    if ((v96 & 1) == 0)
    {
LABEL_85:
      v91 = v115 + v107;
      v94 = v112 - 1;
      v45 = v110;
      v5 = v111 + v107;
      if (++v113 != v110)
      {
        goto LABEL_86;
      }

      v6 = v103;
      v27 = v104;
      if (v110 < v104)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!a4)
    {
      break;
    }

    v97 = v117;
    sub_1BD0E5DC0(v5, v117);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BD0E5DC0(v97, v95);
    v95 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_1BD0E58BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = a3;
  v45 = type metadata accessor for AccountBalance(0);
  v9 = MEMORY[0x1EEE9AC00](v45, v8);
  v44 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v40 - v13;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v46 - a2;
  if (v46 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v49 = a1;
  v48 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40[1] = v4;
    v25 = a4 + v20;
    if (v20 < 1)
    {
      v28 = a4 + v20;
    }

    else
    {
      v26 = -v16;
      v27 = a4 + v20;
      v28 = v25;
      v42 = v26;
      v43 = a4;
      do
      {
        v40[0] = v28;
        v29 = a2;
        v30 = a2 + v26;
        while (1)
        {
          v32 = v46;
          if (v29 <= a1)
          {
            v49 = v29;
            v47 = v40[0];
            goto LABEL_59;
          }

          v41 = v28;
          v46 += v26;
          v33 = v27 + v26;
          sub_1BD0E5D5C(v33, v14);
          v34 = v30;
          v35 = v30;
          v36 = v14;
          v37 = v44;
          sub_1BD0E5D5C(v35, v44);
          v38 = sub_1BE04AE84();
          v39 = v37;
          v14 = v36;
          sub_1BD0E5E24(v39);
          sub_1BD0E5E24(v36);
          if (v38)
          {
            break;
          }

          v28 = v33;
          if (v32 < v27 || v46 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v34;
          }

          else
          {
            v30 = v34;
            if (v32 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v31 = v33 > v43;
          v26 = v42;
          if (!v31)
          {
            a2 = v29;
            goto LABEL_58;
          }
        }

        if (v32 < v29 || v46 >= v29)
        {
          a2 = v34;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v41;
          v26 = v42;
        }

        else
        {
          v28 = v41;
          v26 = v42;
          a2 = v34;
          if (v32 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v43);
    }

LABEL_58:
    v49 = a2;
    v47 = v28;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v21 = a4 + v19;
    v47 = a4 + v19;
    if (v19 >= 1 && a2 < v46)
    {
      do
      {
        sub_1BD0E5D5C(a2, v14);
        v23 = v44;
        sub_1BD0E5D5C(a4, v44);
        v24 = sub_1BE04AE84();
        sub_1BD0E5E24(v23);
        sub_1BD0E5E24(v14);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v16;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = a4 + v16;
          a4 += v16;
        }

        a1 += v16;
        v49 = a1;
      }

      while (a4 < v21 && a2 < v46);
    }
  }

LABEL_59:
  sub_1BD935150(&v49, &v48, &v47);
  return 1;
}

unint64_t sub_1BD0E5D44(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1BD0E5D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountBalance(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0E5DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountBalance(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0E5E24(uint64_t a1)
{
  v2 = type metadata accessor for AccountBalance(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0E5E8C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1BD0E5EE4(__int16 a1)
{
  v2 = v1[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_activeState];
  if (v2 != 2)
  {
    *&v1[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_activeState] = a1 & 0x101;
    if ((a1 & 1) != 0 && (v2 & 1) == 0)
    {
      v3 = *&v1[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_accountService];
      if (v3)
      {
        v4 = [*&v1[OBJC_IVAR____TtC9PassKitUI21AccountBalanceHistory_account] accountIdentifier];
        v5 = swift_allocObject();
        *(v5 + 16) = v1;
        v8[4] = sub_1BD0E6020;
        v8[5] = v5;
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 1107296256;
        v8[2] = sub_1BD14E1D8;
        v8[3] = &block_descriptor_57;
        v6 = _Block_copy(v8);
        v7 = v1;

        [v3 accountWithIdentifier:v4 completion:v6];
        _Block_release(v6);
      }
    }
  }
}