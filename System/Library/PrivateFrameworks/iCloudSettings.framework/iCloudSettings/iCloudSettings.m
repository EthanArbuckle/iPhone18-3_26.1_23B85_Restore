BOOL sub_27581C9F4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_27581CA70@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2759BA298();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *sub_27581CAA0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_27581CABC()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 48);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_27581CBB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27581CC70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27581CE2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27581CEE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27581CF9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27581CFDC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27581D014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E950, &qword_2759C1820);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_27581D08C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E950, &qword_2759C1820);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_27581D10C()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_27581D17C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_2758657C8(v2);
}

void sub_27581D1B0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275866968(v2);
}

void sub_27581D1E4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275865AB8(v2);
}

void sub_27581D218(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275866C58(v2);
}

void sub_27581D24C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275865DA8(v2);
}

void sub_27581D280(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275866F48(v2);
}

void sub_27581D2B4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275866098(v2);
}

void sub_27581D2E8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275867238(v2);
}

void sub_27581D31C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275866388(v2);
}

void sub_27581D350(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275867528(v2);
}

void sub_27581D384(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275866678(v2);
}

void sub_27581D3B8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275867818(v2);
}

void sub_27581D3EC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275867B08(v2);
}

void sub_27581D420(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275867DF8(v2);
}

uint64_t sub_27581D480(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_275868100(v4);
}

uint64_t sub_27581D4B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_27581D4F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2759B8A38();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_27581D624(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2759B8A38();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_27581D754()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_27581D7A4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275876AF8(v2);
}

void sub_27581D8D8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_27587A118(v2);
}

uint64_t sub_27581D9B0()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_27581DA90()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27581DAFC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27581DB34()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27581DC24()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_27581DC64()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_27581DCAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27581DD30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_27587C898(v2, v3);
}

void sub_27581DD98(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_27587BF74(v2);
}

void sub_27581DE0C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_27581DE1C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_27581DE54(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_27587A394(v2);
}

void sub_27581DEB4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275879F28(v2);
}

void sub_27581DF0C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275879D38(v2);
}

void sub_27581DF64(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275879900(v2);
}

void sub_27581DFC4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275879564(v2);
}

void sub_27581E01C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275879374(v2);
}

void sub_27581E074(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275879184(v2);
}

void sub_27581E0CC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275878F94(v2);
}

void sub_27581E124(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275878C38(v2);
}

uint64_t sub_27581E200(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2759BA7D8();
  sub_2759B9F58();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0A0, &qword_2759C3560);
  sub_2759B90A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_27589B02C(&qword_280A0F0A8, &qword_280A0F0A0, &qword_2759C3560);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0B0, &qword_2759C3330);
  sub_2759B90A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0B8, &qword_2759C3338);
  sub_2759B90A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0C0, &unk_2759C3340);
  sub_2759B90A8();
  swift_getOpaqueTypeConformance2();
  sub_27589B02C(&qword_280A0F0C8, &qword_280A0F0B0, &qword_2759C3330);
  swift_getWitnessTable();
  sub_27589B02C(&qword_280A0F0D0, &qword_280A0F0B8, &qword_2759C3338);
  swift_getWitnessTable();
  sub_27589B02C(&qword_280A0F0D8, &qword_280A0F0C0, &unk_2759C3340);
  return swift_getWitnessTable();
}

uint64_t sub_27581E4C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27581E4FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_27581E554(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_27581E5A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27581E5F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27581E648()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27581E698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F268, &qword_2759C3718);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27581E708()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27581E740()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_27581E780()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v3);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

void sub_27581E7FC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_2758A5424(v2);
}

void sub_27581E838(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_2758A51B8(v2);
}

uint64_t sub_27581E870()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27581E8E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2758A4418(v2, v3);
}

uint64_t sub_27581E990()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27581E9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
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

uint64_t sub_27581EAB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
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

uint64_t sub_27581EC00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_27581EC90()
{
  v1 = type metadata accessor for ADPSection();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2759B94D8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + *(v1 + 20);

  v9 = *(v8 + 1);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27581EE04()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27581EE3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v3);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_27581EE9C()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_27581EF74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_27581EFC0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_2758B296C(v2);
}

uint64_t sub_27581EFFC()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C0, &qword_2759C4600);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_27581F150()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_27581F1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27581F2A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27581F364()
{
  v1 = type metadata accessor for ManageStorageDrilldownAnimationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 40);

  v11 = *(v0 + v3 + 48);

  v12 = *(v0 + v3 + 56);

  v13 = *(v0 + v3 + 72);

  v14 = *(v0 + v3 + 88);

  v15 = *(v0 + v3 + 104);

  v16 = *(v0 + v3 + 112);

  v17 = *(v0 + v3 + 120);

  v18 = *(v0 + v3 + 128);

  v19 = *(v0 + v3 + 144);

  v20 = *(v0 + v3 + 152);

  v21 = *(v0 + v3 + 160);

  v22 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_2759B8DA8();
    (*(*(v23 - 8) + 8))(v6 + v22, v23);
  }

  else
  {
    v24 = *(v6 + v22);
  }

  v25 = *(v6 + v1[16]);

  v26 = *(v6 + v1[17]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27581F52C()
{
  v1 = type metadata accessor for ManageStorageDrilldownAnimationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 40);

  v11 = *(v0 + v3 + 48);

  v12 = *(v0 + v3 + 56);

  v13 = *(v0 + v3 + 72);

  v14 = *(v0 + v3 + 88);

  v15 = *(v0 + v3 + 104);

  v16 = *(v0 + v3 + 112);

  v17 = *(v0 + v3 + 120);

  v18 = *(v0 + v3 + 128);

  v19 = *(v0 + v3 + 144);

  v20 = *(v0 + v3 + 152);

  v21 = *(v0 + v3 + 160);

  v22 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_2759B8DA8();
    (*(*(v23 - 8) + 8))(v6 + v22, v23);
  }

  else
  {
    v24 = *(v6 + v22);
  }

  v25 = *(v6 + v1[16]);

  v26 = *(v6 + v1[17]);

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_27581F70C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_27581F754()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27581F7AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27581F7E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FAB0, &qword_2759C4DD0);
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
      v13 = sub_2759B8C48();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_27581F914(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FAB0, &qword_2759C4DD0);
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
      v13 = sub_2759B8C48();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_27581FA44()
{
  v1 = type metadata accessor for RemoteUIWebView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 56);

  v11 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FAF8, &qword_2759C4F18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2759B8F38();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = *(v1 + 40);
  v15 = sub_2759B8C48();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27581FBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2759B8508();
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

uint64_t sub_27581FCA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2759B8508();
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

uint64_t sub_27581FD64()
{
  v1 = (type metadata accessor for WebViewRepresentable(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_2759B8508();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7]);
  swift_unknownObjectRelease();
  v7 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27581FE60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27581FE98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2759B9DC8();
  sub_2759B9648();
  swift_getWitnessTable();
  sub_2758C82A0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_2759B9E58();
  return swift_getWitnessTable();
}

uint64_t sub_27581FF88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27581FFD8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275820010(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_2758201A0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_275820354()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2758203A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_27585A900(*(v0 + 32), *(v0 + 40));

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_27582040C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_275820468(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2758204C4()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27582050C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27582054C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEC8, &qword_2759C5AA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275820650()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FEE0, &qword_2759C5B68);
  sub_27589B02C(&qword_280A0FEF8, &qword_280A0FEE0, &qword_2759C5B68);
  sub_27589F2D4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_275820708()
{
  v1 = sub_2759B8768();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2758207D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275820858()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2758208A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_27582098C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_2758DE27C(v2);
}

uint64_t sub_275820A00()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275820A38()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275820B38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275820BC4()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275820BFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v3);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_275820CB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275820CF8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275820D3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275820D7C()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275820DB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_275820E0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275820E4C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275820E94()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275820ECC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_275820F48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275820FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107D0, &unk_2759CAA10);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2758210C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107D0, &unk_2759CAA10);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_275821290()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2758212EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
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

uint64_t sub_2758213B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
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

uint64_t sub_275821478()
{
  v1 = type metadata accessor for BackupSection();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2759B94D8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + *(v1 + 20);

  v9 = *(v8 + 1);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27582164C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2759B92E8();
  *a1 = result;
  return result;
}

uint64_t sub_275821678(uint64_t *a1)
{
  v1 = *a1;

  return sub_2759B92F8();
}

uint64_t sub_2758216A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2759B91E8();
  *a1 = result;
  return result;
}

uint64_t sub_2758216D0(uint64_t *a1)
{
  v1 = *a1;

  return sub_2759B91F8();
}

uint64_t sub_275821700(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_27587AAE4(v4);
}

uint64_t sub_27582172C()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275821764()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v3);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_2758217C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_275821904(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_275821A40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275821A90()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_275821B00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_27587C744(v2, v3);
}

uint64_t sub_275821B50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_275821BA4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275878260(v2);
}

void sub_275821C0C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_27587A2C4(v2);
}

void sub_275821C64(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275879710(v2);
}

uint64_t sub_275821C9C()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275821CE4()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275821DB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_275821E58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275821EC0()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275821F58()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_275822040()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_27585A900(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2758220DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B8F98();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_275822148(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B8F98();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2758221C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_275822284(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275822370()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2758223B4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2758223FC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27582243C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275822490(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EED8, qword_2759C9B60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_27582254C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EED8, qword_2759C9B60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27582260C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10F48, &qword_2759C9BE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10F58, &qword_2759C9BF8);
  sub_27592B448();
  sub_27592B4AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2758226B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2758226FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2758227C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_275822888()
{
  v1 = type metadata accessor for SimpleStorageMeter();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2759B8DA8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 24));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2758229B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11150, &qword_2759CA1B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_275822A24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11158, &qword_2759CA1B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275822B7C()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275822BB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_275822BF8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_275822C40()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275822C78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275822CC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275822D04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_27593697C(v4);
}

uint64_t sub_275822D30()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275822D68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v3);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

void sub_275822DCC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275936C08(v2);
}

uint64_t sub_275822DFC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107D0, &unk_2759CAA10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11240, qword_2759CAA20);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_275822F94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107D0, &unk_2759CAA10);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11240, qword_2759CAA20);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_27582313C()
{
  v1 = type metadata accessor for AppsUsingiCloudSection();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10410, &qword_2759C6CD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2759B87B8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2759B94D8();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = &v5[v1[6]];

  v12 = *(v11 + 1);

  v13 = &v5[v1[7]];
  v14 = sub_2759B8F58();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11240, qword_2759CAA20) + 28)];

  v16 = *&v5[v1[8]];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27582336C()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2758233A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v3);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_275823408(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2758234C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275823578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_275823648(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_275823714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11458, &qword_2759CB370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758237C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_27582388C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_275823954(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_275823A10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275823AC0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11468, &qword_2759CB380);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11188, &unk_2759CA220);
  sub_275947A84();
  sub_275931330();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_275823B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116C8, &qword_2759CB868);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275823C68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275823CA0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275823CD8()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_275823D10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275823E04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275823E4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275823EB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275823EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A119F8, &qword_2759CC5A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275823F6C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A10, &qword_2759CC5B8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2758240A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A10, &qword_2759CC5B8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2758241E8()
{
  v1 = type metadata accessor for ManageStorageAppView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 8);

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2759B94D8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = v1[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A10, &qword_2759CC5B8);
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2758243CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2759B8C48();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2758244FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2759B8C48();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_275824684()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2758246CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ToolbarBackButton();
  sub_2759B90A8();
  sub_27595FBBC();
  return swift_getWitnessTable();
}

uint64_t sub_275824738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BE0, qword_2759CCDC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2758247B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BE0, qword_2759CCDC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_27582482C()
{
  v1 = *(type metadata accessor for ToolbarBackButton() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BE0, qword_2759CCDC0) + 32);
  v8 = sub_2759B9048();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27582492C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11C08, &qword_2759CCE48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11C10, &qword_2759CCE50);
  sub_27589B02C(&qword_280A11C18, &qword_280A11C08, &qword_2759CCE48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11C20, &qword_2759CCE58);
  sub_27589B02C(&unk_280A11C28, &qword_280A11C20, &qword_2759CCE58);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_275824A58()
{
  v1 = sub_2759B8768();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275824B24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275824C0C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275824C54(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11CF8, &unk_2759CD458);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_275824D90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11CF8, &unk_2759CD458);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_275824ED0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275824F18()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275824F78()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275824FC0()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275824FF8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v3);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_275825068()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2758250F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2758251BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2758252DC(uint64_t *a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12000, &qword_2759CE420);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

char *sub_27582546C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12000, &qword_2759CE420);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2758255FC(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11FB0, &unk_2759CE2F8);
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_27589B02C(&qword_280A11FB8, &qword_280A11FB0, &unk_2759CE2F8);
  swift_getWitnessTable();
  sub_2759B9928();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F58, &qword_2759CE2D0);
  type metadata accessor for SixPackCard(255);
  sub_2759B9EF8();
  sub_27589B02C(&qword_280A11F68, &qword_280A11F58, &qword_2759CE2D0);
  sub_2759B8FE8();
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  sub_2759B95F8();
  sub_2759B8FE8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_2759B95F8();
  sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0);
  sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_27597DC18();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
  sub_2759B9EF8();
  sub_27597DB08();
  swift_getWitnessTable();
  sub_2759B9F18();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F90, &qword_2759CE2E8);
  sub_2759B95F8();
  sub_27597DD00();
  swift_getWitnessTable();
  sub_2759B9F18();
  sub_2759B9EF8();
  sub_2759B95F8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9928();
  sub_2759B95F8();
  sub_2759B95F8();
  sub_2759B9E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F18, &qword_2759CE2B8);
  sub_2759B95F8();
  sub_27597DA50();
  swift_getWitnessTable();
  sub_2759B9F18();
  sub_2759B9EF8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9928();
  sub_2759B95F8();
  sub_2759B95F8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_275825CE4@<X0>(void *a1@<X8>)
{
  result = sub_2759B9248();
  *a1 = v3;
  return result;
}

uint64_t sub_275825D40()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for SixPackCard(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  v11 = *(v0 + v8);
  swift_unknownObjectRelease();
  v12 = v6[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B8DA8();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  else
  {
    v14 = *(v10 + v12);
  }

  v15 = v6[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_2759B96B8();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v10 + v15, 1, v16))
    {
      (*(v17 + 8))(v10 + v15, v16);
    }
  }

  else
  {
    v18 = *(v10 + v15);
  }

  v19 = v6[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_2759B94D8();
    (*(*(v20 - 8) + 8))(v10 + v19, v20);
  }

  else
  {
    v21 = *(v10 + v19);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_275826024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122C8, &qword_2759CE6B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275826094()
{
  v1 = type metadata accessor for SixPackCard(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);
  swift_unknownObjectRelease();
  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2759B8DA8();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  v11 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2759B96B8();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v6 + v11, 1, v12))
    {
      (*(v13 + 8))(v6 + v11, v12);
    }
  }

  else
  {
    v14 = *(v6 + v11);
  }

  v15 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_2759B94D8();
    (*(*(v16 - 8) + 8))(v6 + v15, v16);
  }

  else
  {
    v17 = *(v6 + v15);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2758262FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_275826374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2758263F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12038, &qword_2759CE498);
  sub_2759B8DA8();
  sub_27597EC6C();
  sub_27597E8D8(&qword_280A120D8, MEMORY[0x277CDF3E0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_275826508()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275826548@<X0>(void *a1@<X8>)
{
  result = sub_2759B92C8();
  *a1 = v3;
  return result;
}

uint64_t sub_2758265B8()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2758265F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v3);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_2758266EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B8F98();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_275826758(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B8F98();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2758267E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275826824()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275826888()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2758268D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27582693C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12818, &qword_2759CF420);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275826A14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275826A6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_275826ABC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275826AF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_27585A900(*(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_275826B54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275826BCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275826C0C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275826C64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_275826D20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275826DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12900, &qword_2759CF888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275826EB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2759B9368();
  *a1 = result & 1;
  return result;
}

uint64_t sub_275826F64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2759B93A8();
  *a1 = result;
  return result;
}

uint64_t sub_275826F90(uint64_t *a1)
{
  v1 = *a1;

  return sub_2759B93B8();
}

uint64_t sub_275826FBC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275827004@<X0>(uint64_t a1@<X8>)
{
  result = sub_2759B9388();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_275827038(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_2759B9398();
}

uint64_t sub_275827068@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2759B92A8();
  *a1 = result;
  return result;
}

uint64_t sub_275827108()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27582714C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2759B8C48();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_27582727C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2759B8C48();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_275827404(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2759B8C48();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2758274B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2759B8C48();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275827554()
{
  v1 = (type metadata accessor for ObserveNotificationModifier() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = (v0 + v3);
  v8 = *v7;

  v9 = v1[7];
  v10 = sub_2759B8C48();
  (*(*(v10 - 8) + 8))(&v7[v9], v10);
  v11 = *(v0 + v4);

  v12 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v2 | 7);
}

uint64_t sub_275827668()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2758276B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275827714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F10, &qword_2759D0E00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275827784()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2758277BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F08, &qword_2759D0DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27582782C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27582786C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2758278AC()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2758278E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_27582793C()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275827A08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275827A40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FE0, &unk_2759D1200);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275827AD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FF8, qword_2759D1230);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275827BA4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275827BDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275827C1C()
{
  v1 = sub_2759B8578();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275827D1C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_275827D68(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_27582B420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_27582CC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKHealthManageStorageViewControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!HealthUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __HealthUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27A6664D0;
    v7 = 0;
    HealthUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (HealthUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("HKHealthManageStorageViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKHealthManageStorageViewControllerClass_block_invoke_cold_1();
  }

  getHKHealthManageStorageViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HealthUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27582EFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak((v11 + 64));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v12 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27582F448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPSGBackupUtilsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPSGBackupUtilsClass_softClass;
  v7 = getPSGBackupUtilsClass_softClass;
  if (!getPSGBackupUtilsClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPSGBackupUtilsClass_block_invoke;
    v3[3] = &unk_27A6664B0;
    v3[4] = &v4;
    __getPSGBackupUtilsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2758323FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPSGBackupUtilsClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!GeneralSettingsUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __GeneralSettingsUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27A666648;
    v7 = 0;
    GeneralSettingsUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (GeneralSettingsUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PSGBackupUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPSGBackupUtilsClass_block_invoke_cold_1();
  }

  getPSGBackupUtilsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __GeneralSettingsUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  GeneralSettingsUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_275834EC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_275835314(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_275835994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27583AA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27583B140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27583CD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_27583CF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak(&a9);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27583D0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_27583D2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak(&a9);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getINDaemonConnectionClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __iCloudNotificationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27A666A18;
    v7 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27583F180(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2758428F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2758434DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKCloudSettingsViewControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MessagesSettingsUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MessagesSettingsUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27A666AB8;
    v7 = 0;
    MessagesSettingsUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (MessagesSettingsUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CKCloudSettingsViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKCloudSettingsViewControllerClass_block_invoke_cold_1();
  }

  getCKCloudSettingsViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MessagesSettingsUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MessagesSettingsUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_275846B4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_275847CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPSGBackupUtilsClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPSGBackupUtilsClass_softClass_0;
  v7 = getPSGBackupUtilsClass_softClass_0;
  if (!getPSGBackupUtilsClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPSGBackupUtilsClass_block_invoke_0;
    v3[3] = &unk_27A6664B0;
    v3[4] = &v4;
    __getPSGBackupUtilsClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_275848E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275849CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27584A2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27584F454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPSGBackupUtilsClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!GeneralSettingsUILibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __GeneralSettingsUILibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27A666CF8;
    v7 = 0;
    GeneralSettingsUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (GeneralSettingsUILibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PSGBackupUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPSGBackupUtilsClass_block_invoke_cold_1();
  }

  getPSGBackupUtilsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __GeneralSettingsUILibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  GeneralSettingsUILibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getHKHealthStoreClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __HealthKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27A666D10;
    v7 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (HealthKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
  }

  getHKHealthStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_275850A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_275851E24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 96));
  _Unwind_Resume(a1);
}

id LogSubsystem()
{
  if (LogSubsystem_onceToken != -1)
  {
    LogSubsystem_cold_1();
  }

  v1 = LogSubsystem_log;

  return v1;
}

uint64_t __LogSubsystem_block_invoke()
{
  LogSubsystem_log = os_log_create("com.apple.iCloudSettings", "core");

  return MEMORY[0x2821F96F8]();
}

void sub_275852814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_275857070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_275857590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_275857D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_275858930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_275858B9C(uint64_t a1, int a2)
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

uint64_t sub_275858BBC(uint64_t result, int a2, int a3)
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

uint64_t sub_275858C5C(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v42 = a2;
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v38 - v11;
  v13 = sub_2759B8508();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  v41 = a1;
  v20 = (*(*&a1[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_action) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionURL);
  v22 = *v20;
  v21 = v20[1];

  sub_2759B84F8();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_27585A458(v12);
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v23 = sub_2759B89A8();
    __swift_project_value_buffer(v23, qword_280A238A0);
    v24 = sub_2759B8988();
    v25 = sub_2759BA648();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_275819000, v24, v25, "Unable to generate LiftUI data task without url", v26, 2u);
      MEMORY[0x277C85860](v26, -1, -1);
    }

    return 0;
  }

  else
  {
    v39 = *(v14 + 32);
    v40 = v19;
    v39(v19, v12, v13);
    v28 = sub_2759BA518();
    (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
    (*(v14 + 16))(v17, v19, v13);
    v29 = (*(v14 + 80) + 56) & ~*(v14 + 80);
    v30 = (v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = v41;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v44;
    *(v32 + 4) = v43;
    *(v32 + 5) = v33;
    v44 = v8;
    *(v32 + 6) = v45;
    v39(&v32[v29], v17, v13);
    *&v32[v30] = v31;
    v34 = v42;
    *&v32[(v30 + 15) & 0xFFFFFFFFFFFFFFF8] = v42;
    swift_unknownObjectRetain();
    v35 = v31;
    v36 = v34;
    v37 = sub_27590A198(0, 0, v44, &unk_2759C0750, v32);
    (*(v14 + 8))(v40, v13);
    return v37;
  }
}

uint64_t sub_27585907C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v17;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  v9 = sub_2759B8A28();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = sub_2759B8248();
  v8[12] = v12;
  v13 = *(v12 - 8);
  v8[13] = v13;
  v14 = *(v13 + 64) + 15;
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758591AC, 0, 0);
}

uint64_t sub_2758591AC()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[3];
  v4 = v0[4];
  sub_2759B8A08();
  v6 = v0[11];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[5];
  (*(v8 + 104))(v6, *MEMORY[0x277D23198], v7);
  sub_27596AD54();
  (*(v8 + 8))(v6, v7);
  v10 = *(v9 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category;
  v11 = *v10;
  v12 = *(v10 + 8);
  if (v12)
  {
    v13 = *v10;
    sub_27585A8D8(v11, *(v10 + 8));
    sub_27585A8EC(v13, v12);
    sub_27585A8EC(0, 0);
  }

  else
  {
    v14 = v0[14];
    v15 = v0[6];
    sub_27585A8EC(v11, 0);
    sub_27585A8EC(0, 0);
    [v15 isEnabledForDataclass_];
    sub_2759B8238();
  }

  v16 = *(MEMORY[0x277D23190] + 4);
  v17 = swift_task_alloc();
  v0[15] = v17;
  *v17 = v0;
  v17[1] = sub_2758593F0;
  v18 = v0[14];
  v19 = v0[7];
  v20 = v0[8];
  v21 = v0[3];

  return MEMORY[0x282182070](v18, v19, v20);
}

uint64_t sub_2758593F0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 120);
  v8 = *v3;
  v4[16] = a1;
  v4[17] = a2;
  v4[18] = v2;

  if (v2)
  {
    v6 = sub_2758595F0;
  }

  else
  {
    v6 = sub_275859508;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_275859508()
{
  v1 = v0[18];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  sub_2759BA558();
  (*(v3 + 8))(v2, v4);
  if (v1)
  {
    sub_27585A900(v0[16], v0[17]);
    v5 = v0[14];
    v6 = v0[11];
  }

  else
  {
    v8 = v0[14];
    v9 = v0[11];
    *v0[2] = *(v0 + 8);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_2758595F0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_275859678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2759B8A28();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_2759B8248();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_275859798, 0, 0);
}

uint64_t sub_275859798()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  sub_2759B8A08();
  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[7];
  (*(v8 + 104))(v6, *MEMORY[0x277D23198], v7);
  sub_27596AD54();
  (*(v8 + 8))(v6, v7);
  v9 = *(MEMORY[0x277D23190] + 4);
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_275859900;
  v11 = v0[11];
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[3];

  return MEMORY[0x282182070](v11, v14, v12);
}

uint64_t sub_275859900(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = sub_275859AC0;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v9 = sub_275859A34;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_275859A34()
{
  v1 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v2 = v0[1];
  v4 = v0[14];
  v3 = v0[15];

  return v2(v3, v4);
}

uint64_t sub_275859AC0()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_275859B54(uint64_t a1, id *a2)
{
  result = sub_2759BA278();
  *a2 = 0;
  return result;
}

uint64_t sub_275859BCC(uint64_t a1, id *a2)
{
  v3 = sub_2759BA288();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_275859C4C@<X0>(uint64_t *a1@<X8>)
{
  sub_2759BA298();
  v2 = sub_2759BA258();

  *a1 = v2;
  return result;
}

uint64_t sub_275859C90(uint64_t a1)
{
  v2 = sub_27585A010(&qword_280A0E4F0, type metadata accessor for Dataclass);
  v3 = sub_27585A010(&qword_280A0E4F8, type metadata accessor for Dataclass);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_275859D4C(uint64_t a1)
{
  v2 = sub_27585A010(&qword_280A0E480, type metadata accessor for CALayerContentsGravity);
  v3 = sub_27585A010(&qword_280A0E488, type metadata accessor for CALayerContentsGravity);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_275859E08(uint64_t a1)
{
  v2 = sub_27585A010(&qword_280A0E5C0, type metadata accessor for Key);
  v3 = sub_27585A010(&qword_280A0E5C8, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_275859EC4(uint64_t a1)
{
  v2 = sub_27585A010(&qword_280A0E500, type metadata accessor for AIDAServiceType);
  v3 = sub_27585A010(&qword_280A0E508, type metadata accessor for AIDAServiceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27585A010(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27585A208(uint64_t a1)
{
  v2 = sub_27585A010(&qword_280A0E5B0, type metadata accessor for NSFileProviderItemIdentifier);
  v3 = sub_27585A010(&qword_280A0E5B8, type metadata accessor for NSFileProviderItemIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27585A2C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BA258();

  *a2 = v5;
  return result;
}

uint64_t sub_27585A30C(uint64_t a1)
{
  v2 = sub_27585A010(&qword_280A0E5D0, type metadata accessor for URLResourceKey);
  v3 = sub_27585A010(&qword_280A0E5D8, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
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

uint64_t sub_27585A458(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_27585A4F8()
{
  v1 = *v0;
  v2 = sub_2759BA298();
  v3 = MEMORY[0x277C84110](v2);

  return v3;
}

uint64_t sub_27585A534()
{
  v1 = *v0;
  sub_2759BA298();
  sub_2759BA328();
}

uint64_t sub_27585A588()
{
  v1 = *v0;
  sub_2759BA298();
  sub_2759BABD8();
  sub_2759BA328();
  v2 = sub_2759BAC08();

  return v2;
}

uint64_t sub_27585A5FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2759BA298();
  v6 = v5;
  if (v4 == sub_2759BA298() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2759BAAC8();
  }

  return v9 & 1;
}

uint64_t sub_27585A684(uint64_t a1)
{
  v3 = v2;
  v5 = v1[5];
  v17 = v1[4];
  v6 = *(sub_2759B8508() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[6];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_27585A7E4;

  return sub_27585907C(a1, v9, v10, v11, v1 + v7, v12, v13, v17);
}

uint64_t sub_27585A7E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_27585A8D8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_27585A8EC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_27585A900(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_27585A99C(uint64_t a1, int a2)
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

uint64_t sub_27585A9BC(uint64_t result, int a2, int a3)
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

void sub_27585ACF8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t type metadata accessor for IfMessagesIsInExitStateView()
{
  result = qword_280A0E6B8;
  if (!qword_280A0E6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27585AE04()
{
  sub_27585AF10(319, &qword_280A0E6C8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_27585AF10(319, &qword_280A0E6D0, MEMORY[0x277D231A8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_27585AF74();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27585AF10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_27585AF74()
{
  if (!qword_280A0E6D8)
  {
    sub_2759B8C08();
    sub_27585BFE4(&qword_280A0E6E0, MEMORY[0x277D23330]);
    v0 = sub_2759B9178();
    if (!v1)
    {
      atomic_store(v0, &qword_280A0E6D8);
    }
  }
}

id sub_27585B008()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E710, &qword_2759C0E60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - v3;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v6 = result;
    v7 = [result isInExitState];

    v8 = type metadata accessor for IfMessagesIsInExitStateView();
    v9 = 28;
    if (v7)
    {
      v9 = 24;
    }

    sub_27585BD94(v0 + *(v8 + v9), v4);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    sub_27585BE04();
    return sub_2759B95E8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27585B140(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1852139636;
  if (v2 != 1)
  {
    v3 = 1702063205;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 25705;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  v6 = 1852139636;
  if (*a2 != 1)
  {
    v6 = 1702063205;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 25705;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2759BAAC8();
  }

  return v9 & 1;
}

uint64_t sub_27585B21C()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27585B2A4()
{
  *v0;
  *v0;
  sub_2759BA328();
}

uint64_t sub_27585B318()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27585B39C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_27585C4B0();
  *a2 = result;
  return result;
}

void sub_27585B3CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 1852139636;
  if (v2 != 1)
  {
    v4 = 1702063205;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 25705;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_27585B410()
{
  v1 = 1852139636;
  if (*v0 != 1)
  {
    v1 = 1702063205;
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

uint64_t sub_27585B450@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27585C4B0();
  *a1 = result;
  return result;
}

uint64_t sub_27585B490(uint64_t a1)
{
  v2 = sub_27585BF44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27585B4CC(uint64_t a1)
{
  v2 = sub_27585BF44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27585B508@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v35 - v8;
  v44 = sub_2759B85A8();
  v40 = *(v44 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E728, &qword_2759C0E68);
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = type metadata accessor for IfMessagesIsInExitStateView();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v19 + 2) = MEMORY[0x277D84F90];
  v20 = &v19[*(v17 + 32)];
  sub_2759B8C08();
  sub_27585BFE4(&qword_280A0E6E0, MEMORY[0x277D23330]);
  v46 = sub_2759B9168();
  *v20 = v46;
  v20[1] = v21;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27585BF44();
  sub_2759BAC18();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v37 = v19;
    v38 = a1;
    v24 = v43;
    v23 = v44;
    v49 = 0;
    v25 = sub_2759BAA58();
    v28 = v26;
    v36 = v14;
    if (!v26)
    {
      sub_2759B8598();
      v29 = sub_2759B8588();
      v28 = v30;
      (*(v40 + 8))(v24, v23);
      v25 = v29;
    }

    v31 = v37;
    *v37 = v25;
    *(v31 + 8) = v28;
    v44 = v28;
    sub_2759B8A38();
    v48 = 1;
    sub_27585BFE4(&qword_280A0E738, MEMORY[0x277D231A8]);
    v32 = v42;
    v33 = v36;
    sub_2759BAA68();
    sub_27585C094(v32, v31 + *(v15 + 24));
    v47 = 2;
    v34 = v41;
    sub_2759BAA68();
    (*(v45 + 8))(v33, v11);
    sub_27585C094(v34, v31 + *(v15 + 28));
    sub_27585C104(v31, v39);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return sub_27585C168(v31);
  }
}

uint64_t sub_27585B9E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_27585BFE4(&qword_280A0E6E8, type metadata accessor for IfMessagesIsInExitStateView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_27585BA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_27585BFE4(&qword_280A0E6F0, type metadata accessor for IfMessagesIsInExitStateView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_27585BAE4(uint64_t a1)
{
  v2 = sub_27585BFE4(&qword_280A0E6F0, type metadata accessor for IfMessagesIsInExitStateView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_27585BB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_27585BFE4(&qword_280A0E708, type metadata accessor for IfMessagesIsInExitStateView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_27585BC00()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_27585BC4C()
{
  sub_27585BFE4(&qword_280A0E6E8, type metadata accessor for IfMessagesIsInExitStateView);
  sub_27585BFE4(&qword_280A0E6F0, type metadata accessor for IfMessagesIsInExitStateView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27585BD94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27585BE04()
{
  result = qword_280A0E718;
  if (!qword_280A0E718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E6B0, &qword_2759C0D00);
    sub_27585BFE4(&qword_280A0E720, MEMORY[0x277D231A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E718);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
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

unint64_t sub_27585BF44()
{
  result = qword_280A0E730;
  if (!qword_280A0E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E730);
  }

  return result;
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

uint64_t sub_27585BFE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27585C02C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27585C094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27585C104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IfMessagesIsInExitStateView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27585C168(uint64_t a1)
{
  v2 = type metadata accessor for IfMessagesIsInExitStateView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for IfMessagesIsInExitStateView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IfMessagesIsInExitStateView.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27585C324()
{
  result = qword_280A0E740;
  if (!qword_280A0E740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E748, &qword_2759C0E80);
    sub_27585BE04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E740);
  }

  return result;
}

unint64_t sub_27585C3AC()
{
  result = qword_280A0E750;
  if (!qword_280A0E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E750);
  }

  return result;
}

unint64_t sub_27585C404()
{
  result = qword_280A0E758;
  if (!qword_280A0E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E758);
  }

  return result;
}

unint64_t sub_27585C45C()
{
  result = qword_280A0E760;
  if (!qword_280A0E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E760);
  }

  return result;
}

uint64_t sub_27585C4B0()
{
  v0 = sub_2759BAA48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_27585C588()
{
  result = qword_280A0E768;
  if (!qword_280A0E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E768);
  }

  return result;
}

unint64_t sub_27585C648()
{
  result = qword_280A0E770;
  if (!qword_280A0E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E770);
  }

  return result;
}

unint64_t sub_27585C728()
{
  result = qword_280A0E778;
  if (!qword_280A0E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E778);
  }

  return result;
}

uint64_t sub_27585C7A8()
{
  swift_getKeyPath();
  sub_2759B9A88();
}

uint64_t sub_27585C838(void (*a1)(void))
{
  a1();
  sub_2759B93E8();
  return v2;
}

uint64_t keypath_getTm@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_2759B93E8();
  *a2 = v4;
  return result;
}

uint64_t sub_27585C91C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v5 = *a1;
  a5();
  v6 = v5;
  return sub_2759B93F8();
}

unint64_t sub_27585C97C()
{
  result = qword_280A0E780;
  if (!qword_280A0E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E780);
  }

  return result;
}

uint64_t sub_27585CA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27585D258();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_27585CAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27585D1B8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_27585CB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27585D118();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_27585CB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27585D02C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.appsListViewModel.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_27585C588();
  sub_2759B93E8();
  return sub_27585CC48;
}

void (*EnvironmentValues.appViewModel.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_27585C648();
  sub_2759B93E8();
  return sub_27585CCB4;
}

void (*EnvironmentValues.homeViewModel.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_27585C728();
  sub_2759B93E8();
  return sub_27585CD20;
}

void (*EnvironmentValues.msDrilldownPresentingController.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_27585C97C();
  sub_2759B93E8();
  return sub_27585CD8C;
}

void sub_27585CD98(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (a2)
  {
    v6 = v2;
    sub_2759B93F8();
    v7 = *a1;
  }

  else
  {
    sub_2759B93F8();
  }
}

uint64_t getEnumTagSinglePayload for MessagesDaysUntilDeleteTextView.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MessagesDaysUntilDeleteTextView.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy14iCloudSettings021ManageStorageAppsListC5ModelCSgGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = *a1;
  v8 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_2759B90A8();
  sub_27585CFD8(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t sub_27585CFD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_27585D02C()
{
  result = qword_280A0E7C8;
  if (!qword_280A0E7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E7D0, &qword_2759C1228);
    sub_27585D2F8(&qword_280A0E7D8, sub_27585D0CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E7C8);
  }

  return result;
}

unint64_t sub_27585D0CC()
{
  result = qword_280A0E7E0;
  if (!qword_280A0E7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0E7E0);
  }

  return result;
}

unint64_t sub_27585D118()
{
  result = qword_280A0E7E8;
  if (!qword_280A0E7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E7F0, &unk_2759C1230);
    sub_27585D2F8(&qword_280A0E7F8, type metadata accessor for iCloudHomeViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E7E8);
  }

  return result;
}

unint64_t sub_27585D1B8()
{
  result = qword_280A0E800;
  if (!qword_280A0E800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
    sub_27585D2F8(&qword_280A0E810, type metadata accessor for ManageStorageAppViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E800);
  }

  return result;
}

unint64_t sub_27585D258()
{
  result = qword_280A10080;
  if (!qword_280A10080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
    sub_27585D2F8(&unk_280A11C80, type metadata accessor for ManageStorageAppsListViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10080);
  }

  return result;
}

uint64_t sub_27585D2F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for IfMessagesEligibleView()
{
  result = qword_280A0E818;
  if (!qword_280A0E818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_27585D3C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E710, &qword_2759C0E60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - v3;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v6 = result;
    v7 = [result eligibleForTruthZone];

    v8 = type metadata accessor for IfMessagesEligibleView();
    v9 = 28;
    if (v7)
    {
      v9 = 24;
    }

    sub_27585BD94(v0 + *(v8 + v9), v4);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    sub_27585BE04();
    return sub_2759B95E8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27585D500@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_27585E0A0();
  *a2 = result;
  return result;
}

uint64_t sub_27585D530@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27585E0A0();
  *a1 = result;
  return result;
}

uint64_t sub_27585D558(uint64_t a1)
{
  v2 = sub_27585DE2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27585D594(uint64_t a1)
{
  v2 = sub_27585DE2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27585D5D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v35 - v8;
  v44 = sub_2759B85A8();
  v40 = *(v44 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E850, &qword_2759C13A0);
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = type metadata accessor for IfMessagesEligibleView();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v19 + 2) = MEMORY[0x277D84F90];
  v20 = &v19[*(v17 + 32)];
  sub_2759B8C08();
  sub_27585DE80(&qword_280A0E6E0, MEMORY[0x277D23330]);
  v46 = sub_2759B9168();
  *v20 = v46;
  v20[1] = v21;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27585DE2C();
  sub_2759BAC18();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v37 = v19;
    v38 = a1;
    v24 = v43;
    v23 = v44;
    v49 = 0;
    v25 = sub_2759BAA58();
    v28 = v26;
    v36 = v14;
    if (!v26)
    {
      sub_2759B8598();
      v29 = sub_2759B8588();
      v28 = v30;
      (*(v40 + 8))(v24, v23);
      v25 = v29;
    }

    v31 = v37;
    *v37 = v25;
    *(v31 + 8) = v28;
    v44 = v28;
    sub_2759B8A38();
    v48 = 1;
    sub_27585DE80(&qword_280A0E738, MEMORY[0x277D231A8]);
    v32 = v42;
    v33 = v36;
    sub_2759BAA68();
    sub_27585C094(v32, v31 + *(v15 + 24));
    v47 = 2;
    v34 = v41;
    sub_2759BAA68();
    (*(v45 + 8))(v33, v11);
    sub_27585C094(v34, v31 + *(v15 + 28));
    sub_27585DEC8(v31, v39);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return sub_27585DF2C(v31);
  }
}

uint64_t sub_27585DAAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_27585DE80(&qword_280A0E828, type metadata accessor for IfMessagesEligibleView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_27585DB30(uint64_t a1, uint64_t a2)
{
  v4 = sub_27585DE80(&qword_280A0E830, type metadata accessor for IfMessagesEligibleView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_27585DBAC(uint64_t a1)
{
  v2 = sub_27585DE80(&qword_280A0E830, type metadata accessor for IfMessagesEligibleView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_27585DC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_27585DE80(&qword_280A0E848, type metadata accessor for IfMessagesEligibleView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_27585DCE4()
{
  sub_27585DE80(&qword_280A0E828, type metadata accessor for IfMessagesEligibleView);
  sub_27585DE80(&qword_280A0E830, type metadata accessor for IfMessagesEligibleView);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_27585DE2C()
{
  result = qword_280A0E858;
  if (!qword_280A0E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E858);
  }

  return result;
}

uint64_t sub_27585DE80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27585DEC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IfMessagesEligibleView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27585DF2C(uint64_t a1)
{
  v2 = type metadata accessor for IfMessagesEligibleView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27585DF9C()
{
  result = qword_280A0E860;
  if (!qword_280A0E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E860);
  }

  return result;
}

unint64_t sub_27585DFF4()
{
  result = qword_280A0E868;
  if (!qword_280A0E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E868);
  }

  return result;
}

unint64_t sub_27585E04C()
{
  result = qword_280A0E870;
  if (!qword_280A0E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E870);
  }

  return result;
}

uint64_t sub_27585E0A0()
{
  v0 = sub_2759BAA48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27585E0EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6449656C646E7562;
  }

  else
  {
    v4 = 0x6E6F69746361;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x6449656C646E7562;
  }

  else
  {
    v6 = 0x6E6F69746361;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
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
    v9 = sub_2759BAAC8();
  }

  return v9 & 1;
}

uint64_t sub_27585E190()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27585E210()
{
  *v0;
  sub_2759BA328();
}

uint64_t sub_27585E27C()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27585E2F8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BAA48();

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

void sub_27585E358(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F69746361;
  if (*v1)
  {
    v2 = 0x6449656C646E7562;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_27585E394()
{
  if (*v0)
  {
    result = 0x6449656C646E7562;
  }

  else
  {
    result = 0x6E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_27585E3CC@<X0>(char *a1@<X8>)
{
  v2 = sub_2759BAA48();

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

uint64_t sub_27585E43C(uint64_t a1)
{
  v2 = sub_27585F3D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27585E478(uint64_t a1)
{
  v2 = sub_27585F3D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27585E4B4(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v29 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v32 = v28 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8B0, &qword_2759C1640);
  v35 = *(v31 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v31);
  v11 = v28 - v10;
  v12 = OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_action;
  v13 = sub_2759B8C48();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v33 = v12;
  v15(v2 + v12, 1, 1, v13);
  v34 = OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_bundleId;
  v15(v2 + OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_bundleId, 1, 1, v13);
  v17 = (v2 + OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_telemetryProvider);
  v17[3] = &type metadata for TelemetryProvider;
  v17[4] = &off_288481108;
  *v17 = sub_27594A594;
  v17[1] = 0;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27585F3D4();
  v30 = v11;
  v19 = v37;
  sub_2759BAC18();
  if (v19)
  {
  }

  else
  {
    v28[0] = a1;
    v28[1] = v16;
    v37 = v15;
    v20 = v29;
    v36 = 0;
    sub_27585F428(&qword_280A0E8C0, MEMORY[0x277D23340]);
    v21 = v31;
    v22 = v32;
    v23 = v30;
    sub_2759BAA68();
    v24 = v22;
    v25 = v33;
    swift_beginAccess();
    sub_27585F470(v24, v2 + v25);
    swift_endAccess();
    v36 = 1;
    sub_2759BAA68();
    (*(v35 + 8))(v23, v21);
    a1 = v28[0];
    v26 = v34;
    swift_beginAccess();
    sub_27585F470(v20, v2 + v26);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_27585E8C4()
{
  sub_27585F4E0(v0 + OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_action);
  sub_27585F4E0(v0 + OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_bundleId);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_telemetryProvider));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManageStorageDrilldownAnalyticsAction()
{
  result = qword_280A0E878;
  if (!qword_280A0E878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27585E99C()
{
  sub_27585EA38();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_27585EA38()
{
  if (!qword_280A0E888)
  {
    sub_2759B8C48();
    v0 = sub_2759BA7D8();
    if (!v1)
    {
      atomic_store(v0, &qword_280A0E888);
    }
  }
}

uint64_t sub_27585EA90(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D231E8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585F7A0;

  return MEMORY[0x2821820D8](a1, a2);
}

uint64_t sub_27585EB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D231E0] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_27585F7A0;

  return MEMORY[0x2821820C8](a1, a2, a3);
}

uint64_t sub_27585EBE8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return (sub_27585EEF0)(a1);
}

uint64_t sub_27585EE08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_27585E4B4(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_27585EEF0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_2759B8C48();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27585EFBC, 0, 0);
}

uint64_t sub_27585EFBC()
{
  v40 = v0;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A23900);
  v2 = sub_2759B8988();
  v3 = sub_2759BA638();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "ManageStorageDrilldownAnalyticsAction performing action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = 0x676E697373696DLL;
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[9];

  v9 = OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_action;
  swift_beginAccess();
  v10 = *(v7 + 48);
  if (v10(v8 + v9, 1, v6))
  {
    v11 = 0xE700000000000000;
    v12 = 0x676E697373696DLL;
  }

  else
  {
    v13 = v0[11];
    v14 = v0[8];
    (*(v13 + 16))(v0[13], v8 + v9, v0[10]);
    v15 = sub_2759B8C38();
    v11 = v16;
    v12 = 0x676E697373696DLL;
    v5 = v15;
    (*(v13 + 8))(v0[13], v0[10]);
  }

  v18 = v0[9];
  v17 = v0[10];
  v19 = OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_bundleId;
  swift_beginAccess();
  if (v10(v18 + v19, 1, v17))
  {
    v20 = 0xE700000000000000;
    v21 = v5;
  }

  else
  {
    v22 = v0[11];
    v23 = v0[8];
    (*(v22 + 16))(v0[12], v18 + v19, v0[10]);
    v24 = sub_2759B8C38();
    v20 = v25;
    v12 = v24;
    v21 = v5;
    (*(v22 + 8))(v0[12], v0[10]);
  }

  v26 = v12;

  v27 = sub_2759B8988();
  v28 = sub_2759BA638();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39[0] = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_2758937B8(v21, v11, v39);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_2758937B8(v26, v20, v39);
    _os_log_impl(&dword_275819000, v27, v28, "Resolved values action: %s bundleId: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v30, -1, -1);
    MEMORY[0x277C85860](v29, -1, -1);
  }

  v32 = v0[12];
  v31 = v0[13];
  v33 = v0[9];
  v34 = sub_275908FC8(v21, v11);
  v35 = __swift_project_boxed_opaque_existential_1((v33 + OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_telemetryProvider), *(v33 + OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_telemetryProvider + 24));
  v36 = v35[1];
  sub_2759516F4(v34, v26, v20, *v35);

  v37 = v0[1];

  return v37();
}

unint64_t sub_27585F3D4()
{
  result = qword_280A0E8B8;
  if (!qword_280A0E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E8B8);
  }

  return result;
}

uint64_t sub_27585F428(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27585F470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27585F4E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ManageStorageDrilldownAnalyticsAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ManageStorageDrilldownAnalyticsAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27585F69C()
{
  result = qword_280A0E8C8;
  if (!qword_280A0E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E8C8);
  }

  return result;
}

unint64_t sub_27585F6F4()
{
  result = qword_280A0E8D0;
  if (!qword_280A0E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E8D0);
  }

  return result;
}

unint64_t sub_27585F74C()
{
  result = qword_280A0E8D8;
  if (!qword_280A0E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E8D8);
  }

  return result;
}

void sub_27585F7A4(void *a1)
{
  v3 = v1;
  MEMORY[0x277C84160]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v13 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2759BA3F8();
  }

  sub_2759BA418();
  v4 = [v3 mask];
  if (v4)
  {
    v5 = v4;
    sub_27585F7A4(a1);
  }

  v6 = [v3 sublayers];
  if (v6)
  {
    v7 = v6;
    sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
    v8 = sub_2759BA3E8();

    if (v8 >> 62)
    {
      v9 = sub_2759BA9E8();
      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_8:
        if (v9 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v9; ++i)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x277C846A0](i, v8);
          }

          else
          {
            v11 = *(v8 + 8 * i + 32);
          }

          v12 = v11;
          sub_27585F7A4(a1);
        }
      }
    }
  }
}

unint64_t sub_27585F94C()
{
  v0 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  sub_27585F7A4(&v25);
  v1 = v25;
  v25 = v0;
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2759BA9E8())
  {
    v3 = 0;
    v24 = v1 & 0xC000000000000001;
    v20 = v1 + 32;
    v21 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x277D84F90];
    v22 = i;
    v23 = v1;
    while (1)
    {
      if (v24)
      {
        v5 = MEMORY[0x277C846A0](v3, v1);
      }

      else
      {
        if (v3 >= *(v21 + 16))
        {
          goto LABEL_20;
        }

        v5 = *(v20 + 8 * v3);
      }

      v6 = v5;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v8 = [v5 animationKeys];
      if (v8)
      {
        v9 = v8;
        v10 = sub_2759BA3E8();

        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = (v10 + 40);
          do
          {
            v13 = *(v12 - 1);
            v14 = *v12;

            v15 = sub_2759BA258();

            v16 = [v6 animationForKey_];

            if (v16)
            {
              v17 = v16;
              MEMORY[0x277C84160]();
              if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v18 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_2759BA3F8();
              }

              sub_2759BA418();

              v4 = v25;
            }

            v12 += 2;
            --v11;
          }

          while (v11);
        }

        i = v22;
        v1 = v23;
      }

      if (v3 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_23:

  return v4;
}

void sub_27585FB70(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = [v3 superlayer];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v3 bounds];
  if (v19 >= 0.00001)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0.00001;
  }

  if (v18 >= 0.00001)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0.00001;
  }

  if (v17 >= 0.00001)
  {
    v22 = v17;
  }

  else
  {
    v22 = 0.00001;
  }

  if (v15 >= 0.00001)
  {
    v23 = v15;
  }

  else
  {
    v23 = 0.00001;
  }

  v24 = *MEMORY[0x277CDA748];
  if ((a2 & 1) == 0)
  {
    v37 = a1;
    goto LABEL_27;
  }

  v25 = *MEMORY[0x277CDA748];
  v26 = sub_2759BA298();
  v28 = v27;
  if (v26 == sub_2759BA298() && v28 == v29)
  {

    goto LABEL_25;
  }

  v31 = sub_2759BAAC8();

  if (v31)
  {
LABEL_25:
    v38 = MEMORY[0x277CDA6B8];
LABEL_26:
    v37 = *v38;
    goto LABEL_27;
  }

  v32 = *MEMORY[0x277CDA740];
  v33 = sub_2759BA298();
  v35 = v34;
  if (v33 == sub_2759BA298() && v35 == v36)
  {

LABEL_48:
    v38 = MEMORY[0x277CDA6B0];
    goto LABEL_26;
  }

  v56 = sub_2759BAAC8();

  if (v56)
  {
    goto LABEL_48;
  }

  v63 = *MEMORY[0x277CDA760];
  v64 = sub_2759BA298();
  v66 = v65;
  if (v64 == sub_2759BA298() && v66 == v67)
  {

LABEL_61:
    v38 = MEMORY[0x277CDA6D0];
    goto LABEL_26;
  }

  v73 = sub_2759BAAC8();

  if (v73)
  {
    goto LABEL_61;
  }

  v76 = *MEMORY[0x277CDA6B8];
  v77 = sub_2759BA298();
  v79 = v78;
  if (v77 == sub_2759BA298() && v79 == v80)
  {

    v37 = v24;
  }

  else
  {
    v144 = sub_2759BAAC8();

    v37 = v24;
    if ((v144 & 1) == 0)
    {
      v37 = v32;
      v86 = *MEMORY[0x277CDA6B0];
      v87 = sub_2759BA298();
      v89 = v88;
      if (v87 == sub_2759BA298() && v89 == v90)
      {
      }

      else
      {
        v92 = sub_2759BAAC8();

        if ((v92 & 1) == 0)
        {
          v93 = *MEMORY[0x277CDA6D0];
          v94 = sub_2759BA298();
          v96 = v95;
          if (v94 == sub_2759BA298() && v96 == v97)
          {

            v37 = v63;
          }

          else
          {
            v104 = sub_2759BAAC8();

            if (v104)
            {
              v37 = v63;
            }

            else
            {
              v37 = a1;
            }
          }
        }
      }
    }
  }

LABEL_27:
  v39 = v37;
  v40 = sub_2759BA298();
  v42 = v41;
  if (v40 == sub_2759BA298() && v42 == v43)
  {
  }

  else
  {
    v45 = sub_2759BAAC8();

    if ((v45 & 1) == 0)
    {
      v46 = *MEMORY[0x277CDA740];
      v47 = sub_2759BA298();
      v49 = v48;
      if (v47 == sub_2759BA298() && v49 == v50)
      {

LABEL_37:
        v11 = v11 + v23 * 0.5 - v21 * 0.5;
        goto LABEL_38;
      }

      v51 = sub_2759BAAC8();

      if (v51)
      {
        goto LABEL_37;
      }

      v57 = *MEMORY[0x277CDA760];
      v58 = sub_2759BA298();
      v60 = v59;
      if (v58 == sub_2759BA298() && v60 == v61)
      {

LABEL_53:
        v11 = v11 + v23 - v21;
        goto LABEL_38;
      }

      v62 = sub_2759BAAC8();

      if (v62)
      {
        goto LABEL_53;
      }

      v68 = *MEMORY[0x277CDA6E8];
      v69 = sub_2759BA298();
      v71 = v70;
      if (v69 == sub_2759BA298() && v71 == v72)
      {

LABEL_63:
        v75 = 0.5;
LABEL_64:
        v13 = v13 + v22 * v75 - v20 * v75;
        goto LABEL_39;
      }

      v74 = sub_2759BAAC8();

      if (v74)
      {
        goto LABEL_63;
      }

      v81 = *MEMORY[0x277CDA6E0];
      v82 = sub_2759BA298();
      v84 = v83;
      if (v82 == sub_2759BA298() && v84 == v85)
      {

LABEL_76:
        v75 = 0.5;
        v11 = v11 + v23 * 0.5 - v21 * 0.5;
        goto LABEL_64;
      }

      v91 = sub_2759BAAC8();

      if (v91)
      {
        goto LABEL_76;
      }

      v98 = *MEMORY[0x277CDA730];
      v99 = sub_2759BA298();
      v101 = v100;
      if (v99 == sub_2759BA298() && v101 == v102)
      {

LABEL_85:
        v11 = v11 + v23 - v21;
        goto LABEL_63;
      }

      v103 = sub_2759BAAC8();

      if (v103)
      {
        goto LABEL_85;
      }

      v105 = *MEMORY[0x277CDA6B8];
      v106 = sub_2759BA298();
      v108 = v107;
      if (v106 == sub_2759BA298() && v108 == v109)
      {

        goto LABEL_39;
      }

      v110 = sub_2759BAAC8();

      v52 = 1.0;
      if (v110)
      {
        goto LABEL_40;
      }

      v111 = *MEMORY[0x277CDA6B0];
      v112 = sub_2759BA298();
      v114 = v113;
      if (v112 == sub_2759BA298() && v114 == v115)
      {

LABEL_97:
        v11 = v11 + v23 * 0.5 - v21 * 0.5;
        goto LABEL_40;
      }

      v116 = sub_2759BAAC8();

      if (v116)
      {
        goto LABEL_97;
      }

      v117 = *MEMORY[0x277CDA6D0];
      v118 = sub_2759BA298();
      v120 = v119;
      if (v118 == sub_2759BA298() && v120 == v121)
      {

LABEL_102:
        v11 = v11 + v23 - v21;
        goto LABEL_40;
      }

      v122 = sub_2759BAAC8();

      if (v122)
      {
        goto LABEL_102;
      }

      v123 = *MEMORY[0x277CDA700];
      v124 = sub_2759BA298();
      v126 = v125;
      if (v124 == sub_2759BA298() && v126 == v127)
      {

LABEL_107:
        v53 = v23 / v21;
        v52 = v22 / v20;
        goto LABEL_41;
      }

      v128 = sub_2759BAAC8();

      if (v128)
      {
        goto LABEL_107;
      }

      v129 = *MEMORY[0x277CDA710];
      v130 = sub_2759BA298();
      v132 = v131;
      if (v130 == sub_2759BA298() && v132 == v133)
      {
      }

      else
      {
        v134 = sub_2759BAAC8();

        if ((v134 & 1) == 0)
        {
          v137 = *MEMORY[0x277CDA720];
          v138 = sub_2759BA298();
          v140 = v139;
          if (v138 == sub_2759BA298() && v140 == v141)
          {
          }

          else
          {
            v142 = sub_2759BAAC8();

            if ((v142 & 1) == 0)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E910, &qword_2759C17B8);
              v143 = swift_allocObject();
              *(v143 + 16) = xmmword_2759C17A0;
              v145.m11 = 0.0;
              v145.m12 = -2.68156159e154;
              sub_2759BA8C8();
              MEMORY[0x277C840E0](0xD000000000000011, 0x80000002759DD340);
              v146 = v39;
              type metadata accessor for CALayerContentsGravity(0);
              sub_2759BA9C8();
              *(v143 + 56) = MEMORY[0x277D837D0];
              *(v143 + 32) = 0;
              *(v143 + 40) = 0xE000000000000000;
              sub_2759BABC8();

              v13 = 0.0;
              v11 = 0.0;
              goto LABEL_40;
            }
          }

          v52 = v23 / v21;
          v135 = v22 / v20;
          if (v22 / v20 >= v23 / v21)
          {
            goto LABEL_113;
          }

          goto LABEL_119;
        }
      }

      v52 = v23 / v21;
      v135 = v22 / v20;
      if (v23 / v21 > v22 / v20)
      {
LABEL_113:
        if ((*&v135 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v136 = v52;
        }

        else
        {
          v136 = v135;
        }

        if ((~*&v135 & 0x7FF0000000000000) != 0)
        {
          v52 = v135;
        }

        else
        {
          v52 = v136;
        }
      }

LABEL_119:
      v11 = v11 + (v23 - v21 * v52) * 0.5;
      v13 = v13 + (v22 - v20 * v52) * 0.5;
      v53 = v52;
      goto LABEL_41;
    }
  }

LABEL_38:
  v13 = v13 + v22 - v20;
LABEL_39:
  v52 = 1.0;
LABEL_40:
  v53 = 1.0;
LABEL_41:
  if ((a3 & 1) == 0)
  {
    v54 = objc_opt_self();
    [v54 begin];
    [v54 setDisableActions_];
  }

  CATransform3DMakeScale(&v145, v53, v52, 1.0);
  [v4 setTransform_];
  [v4 frame];
  CGPointMake([v4 frame], v11, v13, v55);
  [v4 setFrame_];
  if ((a3 & 1) == 0)
  {
    [objc_opt_self() commit];
  }
}

void sub_2758607AC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(swift_getObjCClassFromObject()) initWithLayer_];
  v3 = [v0 sublayers];
  if (v3)
  {
    v4 = v3;
    sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
    v5 = sub_2759BA3E8();

    if (v5 >> 62)
    {
      v6 = sub_2759BA9E8();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
LABEL_59:
          __break(1u);
          return;
        }

        v7 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x277C846A0](v7, v5);
          }

          else
          {
            v8 = *(v5 + 8 * v7 + 32);
          }

          v9 = v8;
          ++v7;
          v10 = sub_2758607AC();
          [v2 addSublayer_];
        }

        while (v6 != v7);
      }
    }
  }

  v11 = [v1 mask];
  if (v11)
  {
    v12 = v11;
    v13 = sub_2758607AC();
  }

  else
  {
    v13 = 0;
  }

  [v2 setMask_];

  v14 = sub_275860DBC();
  v15 = v14;
  v16 = 0;
  v17 = v14 + 56;
  v18 = 1 << *(v14 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v14 + 56);
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
LABEL_23:
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v24 = (*(v15 + 48) + ((v16 << 10) | (16 * v23)));
    v26 = *v24;
    v25 = v24[1];
    v27 = *v24 == 0x726579616C627573 && v25 == 0xE900000000000073;
    if (!v27 && (sub_2759BAAC8() & 1) == 0)
    {
      v28 = v26 == 1802723693 && v25 == 0xE400000000000000;
      if (!v28 && (sub_2759BAAC8() & 1) == 0)
      {

        v29 = sub_2759BA258();
        LODWORD(v49) = [v1 shouldArchiveValueForKey_];

        if (v49)
        {
          v49 = sub_2759BA258();
          v30 = [v1 valueForKey_];

          if (v30)
          {
            sub_2759BA818();
            swift_unknownObjectRelease();
          }

          else
          {
            v50 = 0u;
            v51 = 0u;
          }

          v52[0] = v50;
          v52[1] = v51;
          sub_275860F74(v52, &v50);
          v31 = *(&v51 + 1);
          if (*(&v51 + 1))
          {
            v32 = __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
            v46 = &v46;
            v48 = *(v31 - 8);
            v33 = *(v48 + 64);
            MEMORY[0x28223BE20](v32);
            v47 = &v46 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v48 + 16))();
            v49 = sub_2759BAAB8();
            (*(v48 + 8))(v47, v31);
            __swift_destroy_boxed_opaque_existential_1(&v50);
          }

          else
          {
            v49 = 0;
          }

          v35 = sub_2759BA258();

          [v2 setValue:v49 forKey:v35];
          swift_unknownObjectRelease();

          sub_275860FE4(v52);
        }

        else
        {
        }
      }
    }
  }

  while (1)
  {
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v22 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v22);
    ++v16;
    if (v20)
    {
      v16 = v22;
      goto LABEL_23;
    }
  }

  if ([v1 needsDisplay])
  {
    [v2 setNeedsDisplay];
  }

  if ([v1 needsLayout])
  {
    [v2 setNeedsLayout];
  }

  v36 = [v1 animationKeys];
  if (v36)
  {
    v37 = v36;
    v38 = sub_2759BA3E8();

    v49 = v38;
    v39 = *(v38 + 2);
    if (v39)
    {
      v40 = (v49 + 40);
      do
      {
        v42 = *(v40 - 1);
        v41 = *v40;

        v43 = sub_2759BA258();
        v44 = [v1 animationForKey_];

        if (v44)
        {
          if ([v44 isRemovedOnCompletion])
          {
          }

          else
          {
            v45 = sub_2759BA258();

            [v2 addAnimation:v44 forKey:v45];
          }
        }

        else
        {
        }

        v40 += 2;
        --v39;
      }

      while (v39);
    }
  }
}

uint64_t sub_275860DBC()
{
  v1 = sub_275861A60(&unk_28847D518);
  swift_arrayDestroy();
  sub_275861AF8(0, &qword_280A0E8E8, 0x277CD9FC8);
  if ([v0 isKindOfClass_])
  {
    sub_275861B40(&unk_28847D838);
  }

  else
  {
    sub_275861AF8(0, &qword_280A0E8F0, 0x277CD9F90);
    if ([v0 isKindOfClass_])
    {
      sub_275861B40(&unk_28847D8C8);
    }

    else
    {
      sub_275861AF8(0, &qword_280A0E8F8, 0x277CD9F80);
      if ([v0 isKindOfClass_])
      {
        sub_275861B40(&unk_28847D9A8);
        sub_275861BB0(&unk_28847D9C8);
        return v1;
      }

      sub_275861AF8(0, &qword_280A0E900, 0x277CD9FE0);
      if (![v0 isKindOfClass_])
      {
        return v1;
      }

      sub_275861B40(&unk_28847D9D8);
    }
  }

  swift_arrayDestroy();
  return v1;
}

uint64_t sub_275860F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ED70, &qword_2759C6C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275860FE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ED70, &qword_2759C6C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27586104C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2759BABD8();
  sub_2759BA328();
  v9 = sub_2759BAC08();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2759BAAC8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2758613FC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_27586119C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E908, &qword_2759C17B0);
  result = sub_2759BA898();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2759BABD8();
      sub_2759BA328();
      result = sub_2759BAC08();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2758613FC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_27586119C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_27586157C();
      goto LABEL_16;
    }

    sub_275861828(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2759BABD8();
  sub_2759BA328();
  result = sub_2759BAC08();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2759BAAC8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2759BAB28();
  __break(1u);
  return result;
}

void *sub_27586157C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E908, &qword_2759C17B0);
  v2 = *v0;
  v3 = sub_2759BA888();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2758616D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E918, &qword_2759C17C0);
  v2 = *v0;
  v3 = sub_2759BA888();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_275861828(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E908, &qword_2759C17B0);
  result = sub_2759BA898();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2759BABD8();

      sub_2759BA328();
      result = sub_2759BAC08();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_275861A60(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277C84330](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_27586104C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_275861AF8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_275861B40(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_27586104C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

id sub_275861C04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E950, &qword_2759C1820);
  sub_2759B9F68();
  v0 = type metadata accessor for MicaPlayerUIView();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC14iCloudSettings16MicaPlayerUIView_micaPlayerModel] = v19;
  v18.receiver = v1;
  v18.super_class = v0;
  v2 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 100.0, 100.0);
  sub_2759B9F68();
  v3 = *(v19 + 32);

  v4 = [v2 layer];
  sub_2759B9F68();
  v5 = *(v19 + 24);

  v6 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer;
  v7 = [*&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer] superlayer];
  if (v7)
  {
  }

  else
  {
    sub_2758633B0();
    sub_275863520(0.0);
    [v4 addSublayer_];
    v8 = [*&v3[v6] superlayer];
    if (v8)
    {

      v9 = *&v3[v6];
      sub_27585FB70(v5, 1, 0);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E980, &qword_2759C1918);
  sub_2759B9718();
  v10 = v19;
  swift_unknownObjectWeakAssign();
  [*&v3[v6] speed];
  if (v11 == 0.0)
  {
    goto LABEL_6;
  }

  if (*&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_documentDuration] != INFINITY)
  {
    goto LABEL_12;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_6;
  }

  swift_unknownObjectRelease();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v16 = [result respondsToSelector_];
  swift_unknownObjectRelease();
  if ((v16 & 1) == 0)
  {
LABEL_6:
    v12 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer;
    v13 = *&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer];
    if (v13)
    {
      [v13 invalidate];
      v14 = *&v3[v12];
      *&v3[v12] = 0;

      v10 = v14;
    }
  }

  else
  {
LABEL_12:
    sub_275863750();
  }

  sub_2759B9F68();
  v17 = *(v19 + 16);

  if (v17 == 1)
  {
    sub_275863244();
  }

  return v2;
}

id sub_275861EE8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E950, &qword_2759C1820);
  sub_2759B9F68();
  v2 = type metadata accessor for MicaPlayerCoordinator();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC14iCloudSettings21MicaPlayerCoordinator_micaPlayerModel] = v6;
  v5.receiver = v3;
  v5.super_class = v2;
  result = objc_msgSendSuper2(&v5, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_275861FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275862E5C(&qword_280A0E978, type metadata accessor for MicaPlayerView);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_275862044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275862E5C(&qword_280A0E978, type metadata accessor for MicaPlayerView);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2758620D8()
{
  sub_275862E5C(&qword_280A0E978, type metadata accessor for MicaPlayerView);
  sub_2759B95B8();
  __break(1u);
}

uint64_t sub_275862130(void *a1)
{
  v3 = sub_2759BA148();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = sub_2759BA178();
  v8 = *(v18[0] - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18[0]);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2758628F4();
  v12 = sub_2759BA6A8();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  aBlock[4] = sub_275862940;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27586249C;
  aBlock[3] = &block_descriptor;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  v16 = a1;
  sub_2759BA168();
  v18[1] = MEMORY[0x277D84F90];
  sub_275862E5C(&qword_280A0E938, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E940, &qword_2759C1818);
  sub_275862960();
  sub_2759BA828();
  MEMORY[0x277C84450](0, v11, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18[0]);
}

void sub_2758623E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC14iCloudSettings21MicaPlayerCoordinator_micaPlayerModel);
  *(v2 + 48) = 1;
  v3 = *(a2 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer);
  [v3 speed];
  if (v4 == 0.0)
  {
    [v3 timeOffset];
  }

  else
  {
    v6 = CACurrentMediaTime();
    [v3 beginTime];
    v8 = v6 - v7;
    [v3 speed];
    v5 = v8 * v9;
  }

  sub_275864E2C(v5);
  *(v2 + 48) = 0;
}

uint64_t sub_27586249C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_275862730()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for MicaPlayerUIView();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC14iCloudSettings16MicaPlayerUIView_micaPlayerModel];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer;
  v5 = *&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer];
  v6 = v3;
  v7 = v2;
  v8 = [v5 superlayer];
  if (v8)
  {

    v9 = *&v3[v4];
    sub_27585FB70(v7, 1, 0);
    v10 = v6;
  }

  else
  {
    v10 = v7;
    v7 = v6;
  }
}

id sub_275862888(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2758628F4()
{
  result = qword_280A0E930;
  if (!qword_280A0E930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0E930);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275862960()
{
  result = qword_280A0E948;
  if (!qword_280A0E948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E940, &qword_2759C1818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E948);
  }

  return result;
}

uint64_t sub_2758629C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = sub_2759BA148();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2759BA178();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v21);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2758628F4();
  v14 = sub_2759BA6A8();
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27586249C;
  aBlock[3] = v20;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  sub_2759BA168();
  v22 = MEMORY[0x277D84F90];
  sub_275862E5C(&qword_280A0E938, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E940, &qword_2759C1818);
  sub_275862960();
  sub_2759BA828();
  MEMORY[0x277C84450](0, v13, v9, v16);
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v21);
}

uint64_t type metadata accessor for MicaPlayerView()
{
  result = qword_280A0E958;
  if (!qword_280A0E958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275862D44()
{
  sub_275862DB0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_275862DB0()
{
  if (!qword_280A0E968)
  {
    type metadata accessor for MicaPlayerModel();
    v0 = sub_2759B9F88();
    if (!v1)
    {
      atomic_store(v0, &qword_280A0E968);
    }
  }
}

uint64_t sub_275862E5C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_275862EB4()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer;
  v2 = *&v0[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer];
  if (v2)
  {
    [v2 invalidate];
    v3 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MicaPlayer();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for MicaPlayer()
{
  result = qword_280A0E9F8;
  if (!qword_280A0E9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758630A0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_publishedObjects);
  if (v7 && *(v7 + 16) && (v8 = sub_27586F8A0(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    return swift_unknownObjectRetain();
  }

  else
  {
    if (a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E910, &qword_2759C17B8);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_2759C17A0;
      sub_2759BA8C8();
      MEMORY[0x277C840E0](0xD00000000000001ALL, 0x80000002759DD5B0);
      MEMORY[0x277C840E0](a1, a2);
      MEMORY[0x277C840E0](0xD000000000000014, 0x80000002759DD5D0);
      sub_2759B8508();
      sub_275863BDC();
      v13 = sub_2759BAA98();
      MEMORY[0x277C840E0](v13);

      MEMORY[0x277C840E0](39, 0xE100000000000000);
      *(v12 + 56) = MEMORY[0x277D837D0];
      *(v12 + 32) = 0;
      *(v12 + 40) = 0xE000000000000000;
      sub_2759BABC8();
    }

    return 0;
  }
}

id sub_275863244()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer);
  result = [v1 speed];
  if (v3 == 0.0)
  {
    v4 = CACurrentMediaTime();
    [v1 speed];
    if (v5 == 0.0)
    {
      [v1 timeOffset];
    }

    else
    {
      v7 = CACurrentMediaTime();
      [v1 beginTime];
      v9 = v7 - v8;
      [v1 speed];
      v6 = v9 * v10;
    }

    v11 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_preferredPlaybackSpeed;
    [v1 setBeginTime_];
    [v1 setTimeOffset_];
    LODWORD(v12) = *(v0 + v11);
    [v1 setSpeed_];
    sub_275863750();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = result;
      if ([result respondsToSelector_])
      {
        [v13 micaPlayerDidStartPlaying_];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_2758633B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer);
  result = [v1 speed];
  if (v3 != 0.0)
  {
    [v1 speed];
    if (v4 == 0.0)
    {
      [v1 timeOffset];
    }

    else
    {
      v6 = CACurrentMediaTime();
      [v1 beginTime];
      v8 = v6 - v7;
      [v1 speed];
      v5 = v8 * v9;
    }

    [v1 setTimeOffset_];
    [v1 setBeginTime_];
    [v1 setSpeed_];
    v10 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer;
    v11 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer);
    if (v11)
    {
      [v11 invalidate];
      v12 = *(v0 + v10);
      *(v0 + v10) = 0;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = result;
      if ([result respondsToSelector_])
      {
        [v13 micaPlayerDidStopPlaying_];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_275863520(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer);
  [v3 speed];
  v5 = v4;
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = CACurrentMediaTime() - a1;
    a1 = 0.0;
  }

  [v3 setBeginTime_];
  [v3 setTimeOffset_];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if ([result respondsToSelector_])
    {
      [v8 micaPlayerDidChangePlaybackTime_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_275863750()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer;
  if (!*(v0 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer))
  {
    [*(v0 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer) speed];
    if (v2 != 0.0)
    {
      if (*(v0 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_documentDuration) != INFINITY)
      {
        goto LABEL_7;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          __break(1u);
          return;
        }

        v4 = [Strong respondsToSelector_];
        swift_unknownObjectRelease();
        if (v4)
        {
LABEL_7:
          v5 = objc_opt_self();
          v6 = swift_allocObject();
          swift_unknownObjectUnownedInit();
          v10[4] = sub_275863BBC;
          v10[5] = v6;
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 1107296256;
          v10[2] = sub_275863A4C;
          v10[3] = &block_descriptor_0;
          v7 = _Block_copy(v10);

          v8 = [v5 scheduledTimerWithTimeInterval:1 repeats:v7 block:0.0333333333];
          _Block_release(v7);
          v9 = *(v0 + v1);
          *(v0 + v1) = v8;
        }
      }
    }
  }
}

void sub_2758638FC()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v0 = *&Strong[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer];
  [v0 speed];
  if (v1 == 0.0)
  {
    [v0 timeOffset];
  }

  else
  {
    v3 = CACurrentMediaTime();
    [v0 beginTime];
    v5 = v3 - v4;
    [v0 speed];
    v2 = v5 * v6;
  }

  if (*&Strong[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_documentDuration] + -0.001 <= v2)
  {
    if (Strong[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_shouldLoop] == 1)
    {
      sub_275863520(0.0);
    }

    else
    {
      sub_2758633B0();
    }
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    if ([v7 respondsToSelector_])
    {
      [v8 micaPlayerDidChangePlaybackTime_];
    }

    swift_unknownObjectRelease();
  }
}

void sub_275863A4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_275863AE4()
{
  result = sub_2759B8508();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275863BDC()
{
  result = qword_280A10300;
  if (!qword_280A10300)
  {
    sub_2759B8508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10300);
  }

  return result;
}

uint64_t sub_275863C34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EA40, &qword_2759C19B8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_280A0EA48;
    v3 = &unk_2759C19C0;
  }

  else
  {
    v2 = &qword_280A102F0;
    v3 = &qword_2759C4560;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_275863CAC()
{
  v0 = sub_2759B8518();
  v2 = v1;
  sub_275863C34();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C1920;
  *(inited + 32) = sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  *(inited + 40) = sub_275861AF8(0, &qword_280A0EA18, 0x277CBEB38);
  *(inited + 48) = sub_275861AF8(0, &qword_280A0EA20, 0x277CBEA60);
  *(inited + 56) = sub_275861AF8(0, &qword_280A0ED90, 0x277CCABB0);
  *(inited + 64) = sub_275861AF8(0, &qword_280A0EA28, 0x277CCACA8);
  sub_275861AF8(0, &qword_280A0EA30, 0x277CCAAC8);
  sub_27595CCEC(inited);

  sub_2759BA698();

  sub_27585A900(v0, v2);
  if (v5[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EA38, &qword_2759C19B0);
    if (swift_dynamicCast())
    {
      return v5[13];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_275860FE4(v5);
    return 0;
  }
}

id sub_275864150(uint64_t a1, void *a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_preferredPlaybackSpeed] = 1065353216;
  v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_shouldLoop] = 0;
  *&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer] = 0;
  v7 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_url;
  v8 = sub_2759B8508();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  v10 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer;
  *&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer] = a2;
  *&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_publishedObjects] = a3;
  [a2 duration];
  *&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_documentDuration] = v11;
  [*&v3[v10] setDuration_];
  v14.receiver = v3;
  v14.super_class = type metadata accessor for MicaPlayer();
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v9 + 8))(a1, v8);
  return v12;
}

id sub_2758642B8(uint64_t a1)
{
  v2 = sub_2759B8508();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_275863CAC();
  if (!v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E910, &qword_2759C17B8);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2759C17A0;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_2759BA8C8();

    v30 = 0xD000000000000026;
    v31 = 0x80000002759DD610;
    v20 = sub_2759B84E8();
    MEMORY[0x277C840E0](v20);

    v18 = v30;
    v19 = v31;
    *(v16 + 56) = MEMORY[0x277D837D0];
    goto LABEL_12;
  }

  v8 = v7;
  v28 = 0x6579614C746F6F72;
  v29 = 0xE900000000000072;
  v9 = MEMORY[0x277D837D0];
  sub_2759BA878();
  if (!*(v8 + 16) || (v10 = sub_2758A24F8(&v30), (v11 & 1) == 0))
  {

    sub_275864C40(&v30);
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E910, &qword_2759C17B8);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2759C17A0;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_2759BA8C8();

    v30 = 0xD000000000000026;
    v31 = 0x80000002759DD610;
    v17 = sub_2759B84E8();
    MEMORY[0x277C840E0](v17);

    v18 = v30;
    v19 = v31;
    *(v16 + 56) = v9;
LABEL_12:
    *(v16 + 32) = v18;
    *(v16 + 40) = v19;
    sub_2759BABC8();

    (*(v3 + 8))(a1, v2);
    return 0;
  }

  sub_275864C94(*(v8 + 56) + 32 * v10, &v32);
  sub_275864C40(&v30);
  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = v28;
  v32 = 0x797274656D6F6567;
  v33 = 0xEF64657070696C46;
  sub_2759BA878();
  if (*(v8 + 16) && (v13 = sub_2758A24F8(&v30), (v14 & 1) != 0))
  {
    sub_275864C94(*(v8 + 56) + 32 * v13, &v32);
    sub_275864C40(&v30);
    if (swift_dynamicCast())
    {
      v15 = v28;
      goto LABEL_17;
    }
  }

  else
  {
    sub_275864C40(&v30);
  }

  v15 = 0;
LABEL_17:
  [v12 setGeometryFlipped_];
  [v12 setGeometryFlipped_];
  [v12 setMasksToBounds_];
  [v12 setRepeatCount_];
  v32 = 0xD000000000000010;
  v33 = 0x80000002759DD540;
  sub_2759BA878();
  if (*(v8 + 16) && (v22 = sub_2758A24F8(&v30), (v23 & 1) != 0))
  {
    sub_275864C94(*(v8 + 56) + 32 * v22, &v32);
    sub_275864C40(&v30);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EA10, &qword_2759C19A8);
    if (swift_dynamicCast())
    {
      v24 = v28;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {

    sub_275864C40(&v30);
    v24 = 0;
  }

  (*(v3 + 16))(v6, a1, v2);
  v25 = objc_allocWithZone(type metadata accessor for MicaPlayer());
  v26 = sub_275864150(v6, v12, v24);

  (*(v3 + 8))(a1, v2);
  return v26;
}