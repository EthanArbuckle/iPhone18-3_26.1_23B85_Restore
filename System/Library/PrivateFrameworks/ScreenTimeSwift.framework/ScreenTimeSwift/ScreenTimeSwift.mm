void *sub_264D349D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_264D349E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_264D6E988();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_264D34A30(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_264D34A48()
{
  v1 = (type metadata accessor for STExpressIntroduction.Internal.STDatabase(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_264D6E848();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7]);
  swift_unknownObjectRelease();
  v7 = *(v0 + v3 + v1[8]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[9]));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264D34B48()
{
  v1 = (type metadata accessor for STExpressIntroduction.Internal.STDatabase(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;

  v7 = v0 + v3;
  v8 = sub_264D6E848();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + v1[7]);
  swift_unknownObjectRelease();
  v10 = *(v7 + v1[8]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v7 + v1[9]));

  v11 = *(v0 + v6 + 24);

  return MEMORY[0x2821FE8E8](v0, v6 + 40, v2 | 7);
}

uint64_t sub_264D34CB8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27FFAC668;
  *a1 = qword_27FFAC660;
  a1[1] = v2;
}

uint64_t sub_264D34D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264D6E848();
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

uint64_t sub_264D34DC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264D6E848();
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

uint64_t sub_264D34E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264D6E848();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264D34F40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264D6E848();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_264D34FFC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264D35034()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264D350C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_264D6EAF8();
  *a2 = result;
  return result;
}

id sub_264D350F4(id *a1, uint64_t a2)
{
  result = [*a1 integerValue];
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_264D35128(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_264D351D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_264D3528C()
{
  if (*v0)
  {
    result = 0x6F50746369727473;
  }

  else
  {
    result = 0x656C62616E457369;
  }

  *v0;
  return result;
}

id sub_264D35300@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEnabled];
  *a2 = result;
  return result;
}

id sub_264D35338@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

id sub_264D35344@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_264D35368(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC950, &qword_264D709A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_264D35430(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC950, &qword_264D709A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_264D354E8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC688, &qword_264D70960);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_264D355A4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC688, &qword_264D70960);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_264D35650(uint64_t a1, uint64_t a2)
{
  v4 = sub_264D6E778();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264D356BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_264D6E778();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264D35740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STExpressIntroduction.STSettings();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264D357AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STExpressIntroduction.STSettings();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264D3581C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264D6E848();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264D358DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264D6E848();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_264D359E8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264D35A20()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264D35D48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264D35D80()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264D35DC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264D35E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264D6E848();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264D35EC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264D6E848();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_264D35F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264D6E848();
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

uint64_t sub_264D36040(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264D6E848();
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

uint64_t sub_264D36108()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264D36158()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_264D361C8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264D362D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264D36310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264D6E848();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264D363D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264D6E848();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t static RestrictionsRepresentationConverter.convertToScreenTimeRepresentation(presetRestrictions:)(uint64_t a1)
{
  v2 = sub_264D36C38(a1);
  _s15ScreenTimeSwift35RestrictionsRepresentationConverterO03getabE26ImageGenerationRestriction09forPresetD0So020STContentPrivacySirihiJ0VSDySSypG_tFZ_0(a1);
  return v2;
}

uint64_t static RestrictionsRepresentationConverter.convertToPresetRepresentation(screenTimeRepresentationRestrictions:screenTimeRepresentationImageGenerationRestriction:)(uint64_t a1, uint64_t a2)
{
  if (a2 && (a2 == 2 || a2 == 1))
  {
    v3 = *MEMORY[0x277D4BB40];
    v4 = sub_264D6E988();
    v6 = v5;
    v7 = sub_264D37624();

    v12 = v7;
    *&v11 = sub_264D6EBC8();
    sub_264D37670(&v11, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_264D3726C(v10, v4, v6, isUniquelyReferenced_nonNull_native);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_264D3664C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_264D37670(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_264D3726C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_264D37A94(a1, &qword_27FFAC5A0, &qword_264D6FD40);
    sub_264D5B730(a2, a3, v10);

    return sub_264D37A94(v10, &qword_27FFAC5A0, &qword_264D6FD40);
  }

  return result;
}

uint64_t sub_264D36730(uint64_t a1, id *a2)
{
  result = sub_264D6E968();
  *a2 = 0;
  return result;
}

uint64_t sub_264D367A8(uint64_t a1, id *a2)
{
  v3 = sub_264D6E978();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_264D36828@<X0>(uint64_t *a1@<X8>)
{
  sub_264D6E988();
  v2 = sub_264D6E958();

  *a1 = v2;
  return result;
}

BOOL sub_264D36888(void *a1, uint64_t *a2)
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

uint64_t sub_264D368EC(uint64_t a1)
{
  v2 = sub_264D3783C(&qword_27FFAC530, type metadata accessor for STFamilyMemberType);
  v3 = sub_264D3783C(&qword_27FFAC538, type metadata accessor for STFamilyMemberType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_264D369A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_264D6E958();

  *a2 = v5;
  return result;
}

uint64_t sub_264D369F0(uint64_t a1)
{
  v2 = sub_264D3783C(&qword_27FFAC520, type metadata accessor for MOScreenTimeShieldPolicy);
  v3 = sub_264D3783C(&qword_27FFAC528, type metadata accessor for MOScreenTimeShieldPolicy);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_264D36AAC()
{
  v1 = *v0;
  v2 = sub_264D6E988();
  v3 = MEMORY[0x26674CC30](v2);

  return v3;
}

uint64_t sub_264D36AE8()
{
  v1 = *v0;
  sub_264D6E988();
  sub_264D6E9B8();
}

uint64_t sub_264D36B3C()
{
  v1 = *v0;
  sub_264D6E988();
  sub_264D6EFC8();
  sub_264D6E9B8();
  v2 = sub_264D6F008();

  return v2;
}

uint64_t sub_264D36BB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_264D6E988();
  v6 = v5;
  if (v4 == sub_264D6E988() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264D6EF28();
  }

  return v9 & 1;
}

uint64_t sub_264D36C38(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_264D36D98(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_264D36FA4(v9, v4, v2);
  result = MEMORY[0x26674D8B0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_264D36D98(uint64_t result, uint64_t a2, uint64_t a3)
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v26[5] = *MEMORY[0x277D4BB40];
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_264D37A38(*(a3 + 56) + 32 * v13, v26);
    v24[0] = v15;
    v24[1] = v16;
    sub_264D37A38(v26, &v25);
    if (v15 == sub_264D6E988() && v16 == v17)
    {
      swift_bridgeObjectRetain_n();

      sub_264D37A94(v24, &qword_27FFAC5A8, &qword_264D6FD48);
      __swift_destroy_boxed_opaque_existential_0(v26);
    }

    else
    {
      v19 = sub_264D6EF28();
      swift_bridgeObjectRetain_n();

      sub_264D37A94(v24, &qword_27FFAC5A8, &qword_264D6FD48);
      __swift_destroy_boxed_opaque_existential_0(v26);

      if ((v19 & 1) == 0)
      {
        *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return sub_264D3701C(v22, a2, v23, a3);
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_264D3701C(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_264D36FA4(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_264D36D98(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_264D3701C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC5B0, &unk_264D6FD50);
  result = sub_264D6EDE8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_264D37A38(v17 + 32 * v16, v34);
    sub_264D37670(v34, v33);
    v21 = *(v9 + 40);
    sub_264D6EFC8();

    sub_264D6E9B8();
    result = sub_264D6F008();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_264D37670(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

_OWORD *sub_264D3726C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_264D5B584(a2, a3);
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
      sub_264D62328();
      v11 = v19;
      goto LABEL_8;
    }

    sub_264D6187C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_264D5B584(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_264D6EF68();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_264D37670(a1, v23);
  }

  else
  {
    sub_264D374E0(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_264D373BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_264D5B5FC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_264D624CC();
    result = v17;
    goto LABEL_8;
  }

  sub_264D61B34(v14, a3 & 1);
  v18 = *v4;
  result = sub_264D5B5FC(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_264D6EF68();
  __break(1u);
  return result;
}

_OWORD *sub_264D374E0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_264D37670(a4, (a5[7] + 32 * a1));
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

uint64_t _s15ScreenTimeSwift35RestrictionsRepresentationConverterO03getabE26ImageGenerationRestriction09forPresetD0So020STContentPrivacySirihiJ0VSDySSypG_tFZ_0(uint64_t a1)
{
  v2 = *MEMORY[0x277D4BB40];
  v3 = sub_264D6E988();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v5 = sub_264D5B584(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_264D37A38(*(a1 + 56) + 32 * v5, v11);
  sub_264D37624();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v8 = [v10 BOOLValue];

  if (v8)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_264D37624()
{
  result = qword_27FFAC3B0;
  if (!qword_27FFAC3B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFAC3B0);
  }

  return result;
}

_OWORD *sub_264D37670(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t getEnumTagSinglePayload for RestrictionsRepresentationConverter(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RestrictionsRepresentationConverter(_WORD *result, int a2, int a3)
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

uint64_t sub_264D3783C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

uint64_t sub_264D37A38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_264D37A94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_264D37B1C(uint64_t a1, unint64_t *a2)
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

unint64_t sub_264D37B98()
{
  result = sub_264D380D8(MEMORY[0x277D84F90]);
  dword_27FFB1600 = 0;
  qword_27FFB1608 = result;
  return result;
}

unint64_t sub_264D37BC8()
{
  result = sub_264D380D8(MEMORY[0x277D84F90]);
  dword_27FFB1610 = 0;
  qword_27FFB1618 = result;
  return result;
}

void (*static Dependencies.bind<A>(identifier:live:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (qword_27FFAC2F0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_27FFB1600);
  sub_264D37E28(&qword_27FFB1608, a1, a2, a3);
  os_unfair_lock_unlock(&dword_27FFB1600);
  *(swift_allocObject() + 16) = a4;
  return sub_264D37CD0;
}

void sub_264D37CD8(void (*a1)(void))
{
  if (qword_27FFAC2F0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_27FFB1600);
  sub_264D37F54(&qword_27FFB1608, a1);

  os_unfair_lock_unlock(&dword_27FFB1600);
}

void static Dependencies.mock<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FFAC2F8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_27FFB1610);
  sub_264D37E28(&qword_27FFB1618, a1, a2, a3);

  os_unfair_lock_unlock(&dword_27FFB1610);
}

uint64_t sub_264D37E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getMetatypeMetadata();
  v6 = sub_264D6E998();
  v8 = v7;
  v10[3] = swift_getFunctionTypeMetadata0();
  v10[0] = a3;
  v10[1] = a4;

  return sub_264D3664C(v10, v6, v8);
}

void static Dependencies.unMock()()
{
  if (qword_27FFAC2F8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_27FFB1610);

  qword_27FFB1618 = sub_264D380D8(MEMORY[0x277D84F90]);

  os_unfair_lock_unlock(&dword_27FFB1610);
}

uint64_t sub_264D37F54(uint64_t *a1, void (*a2)(void))
{
  swift_getMetatypeMetadata();
  v3 = sub_264D6E998();
  v5 = *a1;
  if (*(v5 + 16))
  {
    v6 = sub_264D5B584(v3, v4);
    v8 = v7;

    if (v8)
    {
      sub_264D37A38(*(v5 + 56) + 32 * v6, &v12);
      swift_getFunctionTypeMetadata0();
      if (swift_dynamicCast())
      {
        a2();
      }
    }
  }

  else
  {
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_264D6ED08();

  v12 = 0xD00000000000001DLL;
  v13 = 0x8000000264D72730;
  v10 = sub_264D6F088();
  MEMORY[0x26674CBC0](v10);

  result = sub_264D6EDA8();
  __break(1u);
  return result;
}

unint64_t sub_264D380D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC5B0, &unk_264D6FD50);
    v3 = sub_264D6EDE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_264D38510(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_264D5B584(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_264D37670(&v15, (v3[7] + 32 * result));
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

unint64_t sub_264D381F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC640, &qword_264D72310);
    v3 = sub_264D6EDE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_264D5B584(v5, v6);
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

unint64_t sub_264D38308(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC638, &qword_264D6FE70);
    v3 = sub_264D6EDE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_264D5B640(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_264D38414(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_264D6EDE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_264D5B584(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_264D38510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAC650, &qword_264D6FE80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t STExpressIntroduction.Internal.STDatabase.init(persistenceController:organizationSettingsRestrictionUtility:introductionModelService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_264D6E838();
  v8 = type metadata accessor for STExpressIntroduction.Internal.STDatabase(0);
  *(a4 + v8[5]) = a1;
  *(a4 + v8[6]) = a2;
  v9 = a4 + v8[7];

  return sub_264D34A30(a3, v9);
}

uint64_t STExpressIntroduction.Internal.STDatabase.load(forUser:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 208) = a1;
  *(v3 + 216) = v2;
  v5 = sub_264D6EBA8();
  *(v3 + 224) = v5;
  v6 = *(v5 - 8);
  *(v3 + 232) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  v8 = type metadata accessor for STExpressIntroduction.Internal.STDatabase(0);
  *(v3 + 256) = v8;
  v9 = *(v8 - 8);
  *(v3 + 264) = v9;
  *(v3 + 272) = *(v9 + 64);
  v10 = swift_task_alloc();
  v11 = *a2;
  *(v3 + 280) = v10;
  *(v3 + 288) = v11;
  *(v3 + 457) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_264D38784, 0, 0);
}

uint64_t sub_264D38784()
{
  v31 = v0;
  v1 = *(v0 + 216);
  v2 = sub_264D6E828();
  v3 = sub_264D6EB18();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 457);
    v5 = *(v0 + 288);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136380675;
    *(v0 + 184) = v5;
    *(v0 + 192) = v4;
    v8 = sub_264D6E998();
    v10 = sub_264D3FD80(v8, v9, &v30);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264D33000, v2, v3, "Loading for user %{private}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26674D8B0](v7, -1, -1);
    MEMORY[0x26674D8B0](v6, -1, -1);
  }

  v11 = *(v0 + 457);
  v12 = *(v0 + 280);
  v13 = *(v0 + 288);
  v14 = *(v0 + 264);
  v15 = *(v0 + 272);
  v29 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v18 = *(v0 + 216);
  v19 = *(v18 + *(*(v0 + 256) + 20));
  *(v0 + 296) = v19;
  *(v0 + 304) = [v19 viewContext];
  sub_264D402C4(v18, v12, type metadata accessor for STExpressIntroduction.Internal.STDatabase);
  v20 = *(v14 + 80);
  *(v0 + 460) = v20;
  v21 = (v20 + 25) & ~v20;
  v22 = swift_allocObject();
  *(v0 + 312) = v22;
  *(v22 + 16) = v13;
  *(v22 + 24) = v11;
  sub_264D39AC0(v12, v22 + v21);
  *(v0 + 464) = *MEMORY[0x277CBE110];
  v23 = *(v17 + 104);
  *(v0 + 320) = v23;
  *(v0 + 328) = (v17 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v23(v29);
  v24 = *(MEMORY[0x277CBE118] + 4);
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC670, &qword_264D6FED8);
  *v25 = v0;
  v25[1] = sub_264D38A2C;
  v27 = *(v0 + 248);

  return MEMORY[0x28210EE50](v0 + 144, v27, sub_264D39B24, v22, v26);
}

uint64_t sub_264D38A2C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  v2[43] = v0;

  v5 = v2[39];
  v6 = v2[31];
  v7 = v2[29];
  v8 = v2[28];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v6, v8);

    v12 = sub_264D39384;
  }

  else
  {
    v2[44] = v10;
    v2[45] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);

    v12 = sub_264D38BD8;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_264D38BD8()
{
  *(v0 + 368) = *(v0 + 144);
  v1 = *(v0 + 152);
  *(v0 + 376) = v1;
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  *(v0 + 392) = v3;
  *(v0 + 400) = v2;
  if (v3 == 1)
  {
    v4 = *(v0 + 304);
    v5 = *(v0 + 208);
    v6 = type metadata accessor for STExpressIntroduction.STSettings();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);

    v7 = *(v0 + 280);
    v8 = *(v0 + 240);
    v9 = *(v0 + 248);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 296);
    v13 = *(v0 + 256);
    v14 = *(v0 + 216);
    LOWORD(v19) = v1;
    *(v0 + 456) = v1 & 1;
    v15 = sub_264D6EAF8();
    *(v0 + 408) = v15;
    v16 = objc_opt_self();
    v17 = *(v14 + *(v13 + 24));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 200;
    *(v0 + 24) = sub_264D38E28;
    v18 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC678, &qword_264D6FEE0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_264D39B98;
    *(v0 + 104) = &block_descriptor;
    *(v0 + 112) = v18;
    [v16 fetchRestrictionsForUserDSID:v15 persistenceController:v12 organizationSettingsRestrictionUtility:v17 completionHandler:{v0 + 80, v19}];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_264D38E28()
{
  v1 = *v0;
  v2 = *v0;
  v3 = (*v0)[6];
  (*v0)[52] = v3;
  if (v3)
  {
    v4 = v1[50];
    sub_264D39C9C(v1[46], v1[47], v1[48], v1[49]);
    v5 = sub_264D3940C;
  }

  else
  {
    v5 = sub_264D38F48;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_264D38F48()
{
  v1 = *(v0 + 408);
  v27 = *(v0 + 384);
  v30 = *(v0 + 328);
  v28 = *(v0 + 400);
  v29 = *(v0 + 320);
  v26 = *(v0 + 464);
  v2 = *(v0 + 460);
  v22 = *(v0 + 457);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 272);
  v23 = *(v0 + 240);
  v24 = *(v0 + 368);
  v6 = *(v0 + 216);
  v25 = *(v0 + 224);
  v7 = *(v0 + 200);
  *(v0 + 424) = v7;

  sub_264D402C4(v6, v4, type metadata accessor for STExpressIntroduction.Internal.STDatabase);
  v8 = (v2 + 24) & ~v2;
  v9 = swift_allocObject();
  *(v0 + 432) = v9;
  *(v9 + 16) = v1;
  sub_264D39AC0(v4, v9 + v8);
  v10 = v9 + ((v8 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v10 = v3;
  *(v10 + 8) = v22;
  v11 = v9 + ((v8 + v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v11 = v7;
  *(v11 + 8) = 0;
  v12 = v9 + ((v8 + v5 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v12 = v24;
  *(v12 + 8) = *(v0 + 456);
  *(v12 + 12) = *(v0 + 196);
  *(v12 + 9) = *(v0 + 193);
  *(v12 + 16) = v27;
  *(v12 + 32) = v28;
  v29(v23, v26, v25);
  v13 = *(MEMORY[0x277CBE118] + 4);
  v14 = v1;
  v15 = v7;
  v16 = swift_task_alloc();
  *(v0 + 440) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC680, &qword_264D6FEE8);
  *v16 = v0;
  v16[1] = sub_264D39168;
  v18 = *(v0 + 304);
  v19 = *(v0 + 240);
  v20 = *(v0 + 208);

  return MEMORY[0x28210EE50](v20, v19, sub_264D3B1B8, v9, v17);
}

uint64_t sub_264D39168()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 432);
  v6 = *(v2 + 360);
  (*(v2 + 352))(*(v2 + 240), *(v2 + 224));

  if (v0)
  {
    v7 = sub_264D394A4;
  }

  else
  {
    v7 = sub_264D392F4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_264D392F4()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 304);

  v3 = *(v0 + 280);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_264D39384()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 280);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_264D3940C()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[38];
  swift_willThrow();

  v4 = v0[52];
  v5 = v0[35];
  v7 = v0[30];
  v6 = v0[31];

  v8 = v0[1];

  return v8();
}

uint64_t sub_264D394A4()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 304);

  v3 = *(v0 + 448);
  v4 = *(v0 + 280);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);

  v7 = *(v0 + 8);

  return v7();
}

void sub_264D3953C(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v6 = objc_opt_self();
  if (a2)
  {
    v7 = [v6 fetchRequestMatchingLocalUser];
  }

  else
  {
    v8 = v6;
    v9 = sub_264D6EAF8();
    v7 = [v8 fetchRequestForUsersWithDSID_];
  }

  v51 = 0;
  v10 = [v7 execute_];
  v11 = v51;
  if (!v10)
  {
    v16 = v51;
    sub_264D6E788();

    goto LABEL_9;
  }

  v12 = v10;
  sub_264D414E0(0, &qword_27FFAC7A8, 0x277D4B988);
  v13 = sub_264D6EAA8();
  v14 = v11;

  if (v13 >> 62)
  {
    v15 = sub_264D6EC88();
    if (v15 > 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 > 1)
    {
LABEL_7:

      sub_264D41528();
      swift_allocError();
LABEL_9:
      swift_willThrow();

      goto LABEL_28;
    }
  }

  if (v15)
  {
    if (v13 >> 62)
    {
      if (sub_264D6EC88())
      {
        goto LABEL_14;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x26674CF10](0, v13);
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v17 = *(v13 + 32);
      }

      v50 = v17;

      v18 = [v50 dsid];
      v19 = [v50 altDSID];
      if (v19)
      {
        v20 = v19;
        v49 = sub_264D6E988();
        v22 = v21;
      }

      else
      {
        v49 = 0;
        v22 = 0;
      }

      v30 = v18;
      v31 = sub_264D6E828();
      v32 = sub_264D6EB38();

      if (os_log_type_enabled(v31, v32))
      {
        v48 = v22;
        v45 = v32;
        v33 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v53[0] = v46;
        *v33 = 136381187;
        v51 = a1;
        LOBYTE(v52) = a2 & 1;
        v34 = sub_264D6E998();
        v36 = sub_264D3FD80(v34, v35, v53);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2113;
        *(v33 + 14) = v30;
        *v47 = v30;
        *(v33 + 22) = 2081;
        v51 = v49;
        v52 = v48;
        v37 = v30;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC7B8, &qword_264D70390);
        v38 = sub_264D6E998();
        v40 = sub_264D3FD80(v38, v39, v53);

        *(v33 + 24) = v40;
        _os_log_impl(&dword_264D33000, v31, v45, "User %{private}s has DSID: %{private}@ and AltDSID: %{private}s", v33, 0x20u);
        sub_264D37A94(v47, &unk_27FFAC698, &qword_264D6FF08);
        MEMORY[0x26674D8B0](v47, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x26674D8B0](v46, -1, -1);
        v41 = v33;
        v22 = v48;
        v42 = v49;
        MEMORY[0x26674D8B0](v41, -1, -1);
      }

      else
      {

        v42 = v49;
      }

      v43 = [v30 integerValue];

      *a3 = a1;
      a3[1] = a2 & 1;
      a3[2] = v42;
      a3[3] = v22;
      a3[4] = v43;
      goto LABEL_28;
    }
  }

  v23 = sub_264D6E828();
  v24 = sub_264D6EB38();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v53[0] = v26;
    *v25 = 136380675;
    v51 = a1;
    LOBYTE(v52) = a2 & 1;
    v27 = sub_264D6E998();
    v29 = sub_264D3FD80(v27, v28, v53);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_264D33000, v23, v24, "User %{private}s has no STCoreUser; returning nil", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x26674D8B0](v26, -1, -1);
    MEMORY[0x26674D8B0](v25, -1, -1);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *(a3 + 3) = xmmword_264D6FEC0;
LABEL_28:
  v44 = *MEMORY[0x277D85DE8];
}

uint64_t sub_264D39AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STExpressIntroduction.Internal.STDatabase(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D39B98(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC778, &qword_264D722D0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_264D39C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

void sub_264D39CB0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, void *a5@<X4>, int a6@<W5>, id a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v204 = a6;
  LODWORD(v210) = a4;
  v209 = a3;
  v211 = a2;
  v217 = *MEMORY[0x277D85DE8];
  v205 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0);
  v14 = *(*(v205 - 8) + 64);
  MEMORY[0x28223BE20](v205);
  v16 = &v192[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC688, &qword_264D70960);
  v17 = *(*(v201 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v201);
  v206 = &v192[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v202 = &v192[-v21];
  MEMORY[0x28223BE20](v20);
  v208 = &v192[-v22];
  v23 = objc_opt_self();
  v203 = a1;
  v24 = [v23 fetchRequestForUsersWithDSID_];
  v213 = 0;
  v25 = [v24 execute_];

  v26 = v213;
  if (!v25)
  {
    v72 = v213;
    sub_264D6E788();

    swift_willThrow();
    goto LABEL_72;
  }

  sub_264D414E0(0, &qword_27FFAC7A8, 0x277D4B988);
  v27 = sub_264D6EAA8();
  v28 = v26;

  if (v27 >> 62)
  {
    if (sub_264D6EC88())
    {
LABEL_4:
      v198 = a8;
      if ((v27 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x26674CF10](0, v27);
      }

      else
      {
        if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_75;
        }

        v29 = *(v27 + 32);
      }

      v207 = v29;

      v30 = a5;
      v31 = sub_264D6E828();
      v32 = sub_264D6EB38();

      v33 = os_log_type_enabled(v31, v32);
      v200 = v16;
      v197 = v8;
      v196 = a7;
      if (v33)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v34 = 136380931;
        v212 = v36;
        v213 = v209;
        LOBYTE(v214) = v210 & 1;
        v37 = sub_264D6E998();
        v39 = sub_264D3FD80(v37, v38, &v212);

        *(v34 + 4) = v39;
        *(v34 + 12) = 2113;
        *(v34 + 14) = v30;
        *v35 = v30;
        v40 = v30;
        _os_log_impl(&dword_264D33000, v31, v32, "User %{private}s has restrictions: %{private}@", v34, 0x16u);
        sub_264D37A94(v35, &unk_27FFAC698, &qword_264D6FF08);
        MEMORY[0x26674D8B0](v35, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x26674D8B0](v36, -1, -1);
        MEMORY[0x26674D8B0](v34, -1, -1);
      }

      v41 = v30;
      v42 = v207;
      v43 = [v207 isCommunicationSafetyRestricted];
      v44 = sub_264D6E828();
      v45 = sub_264D6EB38();
      v46 = os_log_type_enabled(v44, v45);
      v199 = v41;
      v195 = v43;
      if (v46)
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 136380931;
        v212 = v48;
        v213 = v209;
        LOBYTE(v214) = v210 & 1;
        v49 = sub_264D6E998();
        v51 = sub_264D3FD80(v49, v50, &v212);

        *(v47 + 4) = v51;
        *(v47 + 12) = 1025;
        *(v47 + 14) = v43;
        _os_log_impl(&dword_264D33000, v44, v45, "User %{private}s has Communication Safety enabled: %{BOOL,private}d", v47, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x26674D8B0](v48, -1, -1);
        MEMORY[0x26674D8B0](v47, -1, -1);
      }

      v52 = [v42 communicationPolicy];
      v53 = [v42 communicationWhileLimitedPolicy];
      v54 = [v42 contactsEditable];
      v55 = [v42 contactManagementState];
      v56 = sub_264D6E828();
      v57 = sub_264D6EB38();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v194 = v53;
        v59 = v58;
        v60 = v55;
        v61 = swift_slowAlloc();
        *v59 = 136380931;
        v212 = v61;
        v213 = v209;
        LOBYTE(v214) = v210 & 1;
        v62 = sub_264D6E998();
        v64 = sub_264D3FD80(v62, v63, &v212);

        *(v59 + 4) = v64;
        *(v59 + 12) = 2081;
        v213 = v52;
        v214 = v194;
        v215 = v54;
        v216 = v60;
        v65 = sub_264D6E998();
        v67 = sub_264D3FD80(v65, v66, &v212);

        *(v59 + 14) = v67;
        _os_log_impl(&dword_264D33000, v56, v57, "User %{private}s has Communication Limits Database Model: %{private}s", v59, 0x16u);
        swift_arrayDestroy();
        v68 = v61;
        v55 = v60;
        MEMORY[0x26674D8B0](v68, -1, -1);
        v69 = v59;
        v53 = v194;
        MEMORY[0x26674D8B0](v69, -1, -1);
      }

      v16 = v200;
      v71 = v52 != 2 || v53 != 2;
      a7 = v207;
      if (((v71 | v54) & 1) == 0 && v55 == 2)
      {
        v9 = 0;
LABEL_27:
        LODWORD(a8) = 1;
        goto LABEL_28;
      }

      if ((((v52 | v53) == 0) & v54) == 1)
      {
        if (v55 == 2)
        {
          LODWORD(a8) = 1;
          v9 = 1;
        }

        else
        {
          if (v55)
          {
            goto LABEL_26;
          }

          LODWORD(a8) = 0;
          v9 = 1;
        }

LABEL_28:
        v73 = [v207 managingOrganization];
        if (!v73)
        {
          v105 = sub_264D6E828();
          v106 = sub_264D6EB38();
          v107 = os_log_type_enabled(v105, v106);
          v193 = v9;
          LODWORD(v194) = a8;
          if (v107)
          {
            v108 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            *v108 = 136380675;
            v212 = v109;
            v213 = v209;
            LOBYTE(v214) = v210 & 1;
            v110 = sub_264D6E998();
            v112 = sub_264D3FD80(v110, v111, &v212);

            *(v108 + 4) = v112;
            _os_log_impl(&dword_264D33000, v105, v106, "User %{private}s has no managing organization", v108, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v109);
            MEMORY[0x26674D8B0](v109, -1, -1);
            MEMORY[0x26674D8B0](v108, -1, -1);
          }

          goto LABEL_50;
        }

        a5 = v73;
        v74 = [objc_opt_self() fetchRequestMatchingBlueprintsForUserWithDSID:v203 ofType:*MEMORY[0x277D4BB90] fromOrganization:v73];
        v213 = 0;
        v75 = [v74 execute_];

        v76 = v213;
        if (!v75)
        {
          v113 = v213;
          sub_264D6E788();

          swift_willThrow();
          goto LABEL_72;
        }

        sub_264D414E0(0, &qword_27FFAC7B0, 0x277D4B928);
        v27 = sub_264D6EAA8();
        v77 = v76;

        if (!(v27 >> 62))
        {
          v78 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
          v193 = v9;
          LODWORD(v194) = a8;
          if (v78)
          {
            if ((v27 & 0xC000000000000001) != 0)
            {
              v79 = MEMORY[0x26674CF10](0, v27);
            }

            else
            {
              if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
              }

              v79 = *(v27 + 32);
            }

            v80 = v79;

            if ([v80 enabled])
            {
              v81 = [v80 schedule];
              if (v81)
              {
                v82 = v81;
                v83 = [v81 scheduleRepresentation];

                v84 = [v83 simpleSchedule];
                if (v84)
                {
                  v85 = v84;
                  v86 = [v84 startTime];
                  v87 = v208;
                  sub_264D6E768();

                  v203 = v85;
                  v88 = [v85 endTime];
                  v89 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0);
                  v90 = &v87[*(v89 + 20)];
                  sub_264D6E768();

                  (*(*(v89 - 8) + 56))(v87, 0, 1, v89);
                  v91 = v87;
                  v92 = v202;
                  sub_264D41300(v91, v202);
                  v93 = sub_264D6E828();
                  v94 = sub_264D6EB38();
                  if (os_log_type_enabled(v93, v94))
                  {
                    v95 = v92;
                    v96 = swift_slowAlloc();
                    v97 = swift_slowAlloc();
                    *v96 = 136380931;
                    v212 = v97;
                    v213 = v209;
                    LOBYTE(v214) = v210 & 1;
                    v98 = sub_264D6E998();
                    v100 = sub_264D3FD80(v98, v99, &v212);

                    *(v96 + 4) = v100;
                    *(v96 + 12) = 2081;
                    sub_264D41300(v95, v206);
                    v101 = sub_264D6E998();
                    v103 = v102;
                    sub_264D37A94(v95, &qword_27FFAC688, &qword_264D70960);
                    v104 = sub_264D3FD80(v101, v103, &v212);
                    v16 = v200;

                    *(v96 + 14) = v104;
                    a7 = v207;
                    _os_log_impl(&dword_264D33000, v93, v94, "User %{private}s has enabled Downtime Simple Schedule: %{private}s", v96, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x26674D8B0](v97, -1, -1);
                    MEMORY[0x26674D8B0](v96, -1, -1);
                  }

                  else
                  {

                    sub_264D37A94(v92, &qword_27FFAC688, &qword_264D70960);
                  }

                  goto LABEL_51;
                }
              }
            }
          }

          else
          {
          }

          v114 = sub_264D6E828();
          v115 = sub_264D6EB38();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            v117 = swift_slowAlloc();
            *v116 = 136380675;
            v212 = v117;
            v213 = v209;
            LOBYTE(v214) = v210 & 1;
            v118 = sub_264D6E998();
            v120 = sub_264D3FD80(v118, v119, &v212);

            *(v116 + 4) = v120;
            a7 = v207;
            _os_log_impl(&dword_264D33000, v114, v115, "User %{private}s does not have an enabled Downtime Simple Schedule blueprint", v116, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v117);
            MEMORY[0x26674D8B0](v117, -1, -1);
            MEMORY[0x26674D8B0](v116, -1, -1);
          }

LABEL_50:
          v121 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0);
          (*(*(v121 - 8) + 56))(v208, 1, 1, v121);
LABEL_51:
          v122 = v204 & 1;
          v123 = [a7 screenTimeEnabled];
          v124 = sub_264D6E828();
          v125 = sub_264D6EB38();
          v126 = os_log_type_enabled(v124, v125);
          v204 = v122;
          if (v126)
          {
            v127 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            *v127 = 136380931;
            v212 = v128;
            v213 = v209;
            LOBYTE(v214) = v210 & 1;
            v129 = sub_264D6E998();
            v131 = sub_264D3FD80(v129, v130, &v212);
            LOBYTE(v122) = v204;

            *(v127 + 4) = v131;
            a7 = v207;
            *(v127 + 12) = 1025;
            *(v127 + 14) = v123;
            _os_log_impl(&dword_264D33000, v124, v125, "User %{private}s has App & Website Activity enabled: %{BOOL,private}d", v127, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v128);
            MEMORY[0x26674D8B0](v128, -1, -1);
            MEMORY[0x26674D8B0](v127, -1, -1);
          }

          v132 = v206;
          sub_264D41300(v208, v206);
          v133 = *(v205 + 24);
          v134 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0);
          (*(*(v134 - 8) + 56))(&v16[v133], 1, 1, v134);
          *v16 = v123;
          v16[1] = v122;
          sub_264D41370(v132, &v16[v133]);
          v135 = [a7 isEyeReliefEnabled];
          v136 = sub_264D6E828();
          v137 = sub_264D6EB38();
          if (os_log_type_enabled(v136, v137))
          {
            v138 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            *v138 = 136380931;
            v212 = v139;
            v213 = v209;
            LOBYTE(v214) = v210 & 1;
            v140 = sub_264D6E998();
            v142 = sub_264D3FD80(v140, v141, &v212);

            *(v138 + 4) = v142;
            a7 = v207;
            *(v138 + 12) = 1025;
            *(v138 + 14) = v135;
            _os_log_impl(&dword_264D33000, v136, v137, "User %{private}s has Screen Distance enabled: %{BOOL,private}d", v138, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v139);
            MEMORY[0x26674D8B0](v139, -1, -1);
            MEMORY[0x26674D8B0](v138, -1, -1);
          }

          v143 = [a7 effectivePasscode];
          if (v143)
          {
            v144 = v143;
            v145 = sub_264D6E988();
            v147 = v146;

            v148 = sub_264D6E828();
            v149 = sub_264D6EB38();
            if (os_log_type_enabled(v148, v149))
            {
              v150 = swift_slowAlloc();
              v151 = swift_slowAlloc();
              *v150 = 136380675;
              v212 = v151;
              v213 = v209;
              LOBYTE(v214) = v210 & 1;
              v152 = sub_264D6E998();
              v154 = sub_264D3FD80(v152, v153, &v212);
              a7 = v207;

              *(v150 + 4) = v154;
              v16 = v200;
              _os_log_impl(&dword_264D33000, v148, v149, "User %{private}s has passcode set", v150, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v151);
              MEMORY[0x26674D8B0](v151, -1, -1);
              MEMORY[0x26674D8B0](v150, -1, -1);
            }

            v155 = v199;
            v156 = v193;
            v157 = v204;
            v158 = [a7 effectiveRecoveryAltDSID];
            v205 = v147;
            v206 = v145;
            if (v158)
            {
              v159 = v158;
              v160 = sub_264D6E988();
              v210 = v161;
              v211 = v160;

              sub_264D37A94(v208, &qword_27FFAC688, &qword_264D70960);
            }

            else
            {
              sub_264D37A94(v208, &qword_27FFAC688, &qword_264D70960);

              v210 = 0;
              v211 = 0;
            }
          }

          else
          {
            v162 = sub_264D6E828();
            v163 = sub_264D6EB38();
            if (os_log_type_enabled(v162, v163))
            {
              v164 = swift_slowAlloc();
              v165 = swift_slowAlloc();
              *v164 = 136380675;
              v212 = v165;
              v213 = v209;
              LOBYTE(v214) = v210 & 1;
              v166 = sub_264D6E998();
              v168 = sub_264D3FD80(v166, v167, &v212);

              *(v164 + 4) = v168;
              _os_log_impl(&dword_264D33000, v162, v163, "User %{private}s does not have passcode", v164, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v165);
              MEMORY[0x26674D8B0](v165, -1, -1);
              MEMORY[0x26674D8B0](v164, -1, -1);
            }

            sub_264D37A94(v208, &qword_27FFAC688, &qword_264D70960);
            v205 = 0;
            v206 = 0;
            v210 = 0;
            v211 = 0;
            v155 = v199;
            v156 = v193;
            v157 = v204;
          }

          v169 = type metadata accessor for STExpressIntroduction.STSettings();
          v170 = v198;
          sub_264D402C4(v16, v198 + v169[7], type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings);
          v171 = v170 + v169[9];
          *v171 = 0u;
          *(v171 + 16) = 0u;
          *v170 = v155;
          *(v170 + 8) = v157;
          *(v170 + 9) = v195;
          *(v170 + 10) = v157;
          *(v170 + 11) = v194;
          *(v170 + 12) = v157;
          *(v170 + 13) = v156;
          v172 = (v170 + v169[8]);
          *v172 = v135;
          v172[1] = v157;
          v173 = *v171;
          v174 = *(v171 + 8);
          v175 = v16;
          v176 = *(v171 + 16);
          v177 = *(v171 + 24);
          v178 = v196;
          sub_264D413E0(v196, &v213);
          sub_264D4143C(v173, v174);
          v179 = v205;
          *v171 = v206;
          *(v171 + 8) = v179;
          v180 = v210;
          *(v171 + 16) = v211;
          *(v171 + 24) = v180;
          v181 = v170 + v169[10];
          v182 = *(v178 + 16);
          *v181 = *v178;
          *(v181 + 16) = v182;
          *(v181 + 32) = *(v178 + 32);
          sub_264D41480(v175, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings);
          (*(*(v169 - 1) + 56))(v170, 0, 1, v169);
          goto LABEL_72;
        }

LABEL_75:
        v78 = sub_264D6EC88();
        goto LABEL_32;
      }

LABEL_26:
      v9 = 2;
      goto LABEL_27;
    }
  }

  else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

  v183 = sub_264D6E828();
  v184 = sub_264D6EB38();
  if (os_log_type_enabled(v183, v184))
  {
    v185 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    *v185 = 136380675;
    v212 = v186;
    v213 = v209;
    LOBYTE(v214) = v210 & 1;
    v187 = sub_264D6E998();
    v189 = sub_264D3FD80(v187, v188, &v212);

    *(v185 + 4) = v189;
    _os_log_impl(&dword_264D33000, v183, v184, "User %{private}s has no STCoreUser; returning nil", v185, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v186);
    MEMORY[0x26674D8B0](v186, -1, -1);
    MEMORY[0x26674D8B0](v185, -1, -1);
  }

  v190 = type metadata accessor for STExpressIntroduction.STSettings();
  (*(*(v190 - 8) + 56))(a8, 1, 1, v190);
LABEL_72:
  v191 = *MEMORY[0x277D85DE8];
}

void sub_264D3B1B8(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for STExpressIntroduction.Internal.STDatabase(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_264D39CB0(*(v1 + 16), v1 + v4, *(v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), (v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t STExpressIntroduction.Internal.STDatabase.save(settings:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC688, &qword_264D70960) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC690, &qword_264D6FF00) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v7 = type metadata accessor for STExpressIntroduction.STSettings();
  v2[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264D3B3E0, 0, 0);
}

uint64_t sub_264D3B3E0()
{
  v97 = v0;
  v1 = *(v0 + 24);
  sub_264D402C4(*(v0 + 16), *(v0 + 104), type metadata accessor for STExpressIntroduction.STSettings);
  v2 = sub_264D6E828();
  v3 = sub_264D6EB18();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 104);
  if (v4)
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v96 = v9;
    *v8 = 136380675;
    sub_264D402C4(v5, v6, type metadata accessor for STExpressIntroduction.STSettings);
    v10 = sub_264D6E998();
    v12 = v11;
    sub_264D41480(v5, type metadata accessor for STExpressIntroduction.STSettings);
    v13 = sub_264D3FD80(v10, v12, &v96);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_264D33000, v2, v3, "Saving settings %{private}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26674D8B0](v9, -1, -1);
    MEMORY[0x26674D8B0](v8, -1, -1);
  }

  else
  {

    sub_264D41480(v5, type metadata accessor for STExpressIntroduction.STSettings);
  }

  v14 = *(v0 + 16);
  v15 = *(v14 + *(*(v0 + 88) + 40) + 32);
  v94 = sub_264D6EAF8();
  *(v0 + 112) = v94;
  v16 = *v14;
  *(v0 + 120) = *v14;
  v17 = v16;
  if ([v17 isEnabled])
  {
    v18 = objc_opt_self();
    v19 = [v18 numberByAgePresetKeyExcludingImageGenerationForRestrictions_];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v20 = sub_264D6E938();

    v92 = [v18 imageGenerationRestrictionFromRestrictions_];
  }

  else
  {
    v92 = 0;
    v20 = 0;
  }

  v21 = *(v0 + 64);
  v22 = *(v0 + 48);
  v23 = *(v0 + 32);
  v24 = *(v0 + 16);
  v25 = *(*(v0 + 88) + 28);
  v26 = *(v24 + v25);
  v93 = sub_264D6EAB8();
  sub_264D402C4(v24 + v25, v22, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings);
  sub_264D4032C(v22 + *(v23 + 24), v21);
  v27 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0);
  v28 = *(*(v27 - 8) + 48);
  v29 = v28(v21, 1, v27);
  v30 = *(v0 + 80);
  v31 = *(v0 + 64);
  if (v29 == 1)
  {
    sub_264D37A94(*(v0 + 64), &qword_27FFAC688, &qword_264D70960);
    v32 = sub_264D6E778();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
  }

  else
  {
    v88 = v23;
    v90 = v20;
    v33 = sub_264D6E778();
    v34 = *(v33 - 8);
    (*(v34 + 16))(v30, v31, v33);
    sub_264D41480(v31, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings);
    v35 = v33;
    v20 = v90;
    (*(v34 + 56))(v30, 0, 1, v35);
    v23 = v88;
  }

  v36 = *(v0 + 56);
  v37 = *(v0 + 40);
  sub_264D402C4(v24 + v25, v37, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings);
  sub_264D4032C(v37 + *(v23 + 24), v36);
  v38 = v28(v36, 1, v27);
  v39 = *(v0 + 72);
  v40 = *(v0 + 56);
  if (v38 == 1)
  {
    sub_264D37A94(*(v0 + 56), &qword_27FFAC688, &qword_264D70960);
    v41 = sub_264D6E778();
    (*(*(v41 - 8) + 56))(v39, 1, 1, v41);
    if (v20)
    {
LABEL_12:
      v42 = sub_264D3C5A8(v20);

      goto LABEL_15;
    }
  }

  else
  {
    v43 = *(v27 + 20);
    v44 = sub_264D6E778();
    v45 = *(v44 - 8);
    (*(v45 + 16))(v39, v40 + v43, v44);
    sub_264D41480(v40, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings);
    (*(v45 + 56))(v39, 0, 1, v44);
    if (v20)
    {
      goto LABEL_12;
    }
  }

  v42 = 0;
LABEL_15:
  v46 = *(v0 + 88);
  v47 = *(v0 + 16);
  v48 = (v47 + *(v46 + 36));
  v49 = v48[1];
  if (v49)
  {
    v89 = *v48;
  }

  v50 = *(v0 + 80);
  v51 = *(v47 + 9);
  v91 = sub_264D6EAB8();
  v52 = *(v47 + *(v46 + 32));
  v53 = sub_264D6EAB8();
  v54 = sub_264D6E778();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  v57 = 0;
  if (v56(v50, 1, v54) != 1)
  {
    v58 = *(v0 + 80);
    v57 = sub_264D6E748();
    (*(v55 + 8))(v58, v54);
  }

  v59 = *(v0 + 72);
  if (v56(v59, 1, v54) == 1)
  {
    v60 = 0;
    if (v42)
    {
      goto LABEL_21;
    }

LABEL_24:
    v61 = 0;
    if (v49)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v60 = sub_264D6E748();
  (*(v55 + 8))(v59, v54);
  if (!v42)
  {
    goto LABEL_24;
  }

LABEL_21:
  v61 = sub_264D6E928();

  if (v49)
  {
LABEL_22:
    v62 = sub_264D6E958();

    goto LABEL_26;
  }

LABEL_25:
  v62 = 0;
LABEL_26:
  v63 = *(v0 + 16);
  v64 = [objc_allocWithZone(MEMORY[0x277D4B9E0]) initWithAppAndWebsiteActivityEnabled:v93 downtimeStartTime:v57 downtimeEndTime:v60 restrictions:v61 passcode:v62 communicationSafetyEnabled:v91 eyeReliefEnabled:v53 imageGenerationRestriction:v92];
  *(v0 + 128) = v64;

  if (*(v63 + 11) != 1)
  {
LABEL_29:
    v65 = 0;
    goto LABEL_34;
  }

  if (*(*(v0 + 16) + 13))
  {
    if (*(*(v0 + 16) + 13) == 1)
    {
      goto LABEL_29;
    }

    v66 = *(v0 + 24);
    v67 = sub_264D6E828();
    v68 = sub_264D6EB28();
    if (os_log_type_enabled(v67, v68))
    {
      v65 = 2;
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_264D33000, v67, v68, "Received save request with CommunicationLimitsSettings that don't map to any Database Model. Falling back to .enabledWithSpecificContactsOnly", v69, 2u);
      MEMORY[0x26674D8B0](v69, -1, -1);

      goto LABEL_34;
    }
  }

  v65 = 2;
LABEL_34:
  v70 = *(v0 + 24);
  [v64 setCommunicationPolicy_];
  [v64 setCommunicationWhileLimitedPolicy_];
  v71 = sub_264D6EAB8();
  [v64 setIsContactEditingDisabled_];

  v72 = sub_264D6EAB8();
  [v64 setIsContactManagementEnabled_];

  v73 = v94;
  v74 = sub_264D6E828();
  v75 = sub_264D6EB38();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v76 = 138477827;
    *(v76 + 4) = v73;
    *v77 = v73;
    v78 = v73;
    _os_log_impl(&dword_264D33000, v74, v75, "Enabling remote management for DSID %{private}@", v76, 0xCu);
    sub_264D37A94(v77, &unk_27FFAC698, &qword_264D6FF08);
    MEMORY[0x26674D8B0](v77, -1, -1);
    MEMORY[0x26674D8B0](v76, -1, -1);
  }

  v79 = *(v0 + 24);

  v80 = *(type metadata accessor for STExpressIntroduction.Internal.STDatabase(0) + 28);
  *(v0 + 168) = v80;
  v81 = (v79 + v80);
  v82 = *(v79 + v80 + 24);
  v83 = v81[4];
  __swift_project_boxed_opaque_existential_1Tm(v81, v82);
  v84 = *(v83 + 8);
  v95 = (v84 + *v84);
  v85 = v84[1];
  v86 = swift_task_alloc();
  *(v0 + 136) = v86;
  *v86 = v0;
  v86[1] = sub_264D3BE70;

  return v95(v73, v82, v83);
}

uint64_t sub_264D3BE70()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_264D3C3D8;
  }

  else
  {
    v3 = sub_264D3BF84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264D3BF84()
{
  v25 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 128);
  v3 = sub_264D6E828();
  v4 = sub_264D6EB38();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136380675;
    v8 = v5;
    v9 = [v8 description];
    v10 = sub_264D6E988();
    v12 = v11;

    v13 = sub_264D3FD80(v10, v12, &v24);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_264D33000, v3, v4, "Applying introductionModel %{private}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26674D8B0](v7, -1, -1);
    MEMORY[0x26674D8B0](v6, -1, -1);
  }

  v14 = (*(v0 + 24) + *(v0 + 168));
  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1Tm(v14, v15);
  v17 = *(v16 + 16);
  v23 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 152) = v19;
  *v19 = v0;
  v19[1] = sub_264D3C1E0;
  v20 = *(v0 + 128);
  v21 = *(v0 + 112);

  return v23(v20, v21, v15, v16);
}

uint64_t sub_264D3C1E0()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_264D3C4C0;
  }

  else
  {
    v3 = sub_264D3C2F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264D3C2F4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 48);
  v12 = *(v0 + 40);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_264D3C3D8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 48);
  v12 = *(v0 + 40);
  v13 = *(v0 + 144);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_264D3C4C0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 48);
  v12 = *(v0 + 40);
  v13 = *(v0 + 160);

  v10 = *(v0 + 8);

  return v10();
}

unint64_t sub_264D3C5A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC5B0, &unk_264D6FD50);
    v2 = sub_264D6EDE8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);
        sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);

        v20 = v19;
        swift_dynamicCast();
        sub_264D37670(&v26, v28);
        sub_264D37670(v28, v29);
        sub_264D37670(v29, &v27);
        result = sub_264D5B584(v18, v17);
        if (v21)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_264D37670(&v27, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v22 = (v2[6] + 16 * result);
          *v22 = v18;
          v22[1] = v17;
          result = sub_264D37670(&v27, (v2[7] + 32 * result));
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_264D3C81C(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264D41720;

  return STExpressIntroduction.Internal.STDatabase.load(forUser:)(a1, a2);
}

uint64_t sub_264D3C8C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264D41720;

  return STExpressIntroduction.Internal.STDatabase.save(settings:)(a1);
}

uint64_t static STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource.userDefaultsKey.getter()
{
  swift_beginAccess();
  v0 = qword_27FFAC660;

  return v0;
}

uint64_t static STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource.userDefaultsKey.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_27FFAC660 = a1;
  off_27FFAC668 = a2;
}

uint64_t sub_264D3CA64(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27FFAC660 = v2;
  off_27FFAC668 = v1;
}

uint64_t STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource.init(coder:createAppGroupUserDefaults:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_264D6E838();
  v8 = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource(0);
  result = sub_264D34A30(a1, a4 + *(v8 + 20));
  v10 = (a4 + *(v8 + 24));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource.load()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_264D3CB88, 0, 0);
}

uint64_t sub_264D3CB88()
{
  v1 = v0[6];
  v2 = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource(0);
  v3 = v1 + *(v2 + 24);
  v4 = *(v3 + 8);
  v5 = (*v3)();
  swift_beginAccess();

  v6 = sub_264D6E958();

  v7 = [v5 dataForKey_];

  if (v7)
  {
    v8 = v0[6];
    v22 = v0[5];
    v9 = sub_264D6E7A8();
    v11 = v10;

    v12 = (v8 + *(v2 + 20));
    v14 = v12[3];
    v13 = v12[4];
    __swift_project_boxed_opaque_existential_1Tm(v12, v14);
    v15 = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
    v21 = *(v13 + 16);
    v16 = sub_264D41274(&qword_27FFAC6A8, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v21(v15, v9, v11, v15, v16, v14, v13);
    (*(*(v15 - 8) + 56))(v0[5], 0, 1, v15);
    sub_264D403BC(v9, v11);
  }

  else
  {
    v17 = v0[5];

    v18 = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  }

  v19 = v0[1];

  return v19();
}

uint64_t STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource.save(settingsDefaults:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_264D3CE24, 0, 0);
}

uint64_t sub_264D3CE24()
{
  v1 = v0[6];
  v2 = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource(0);
  v3 = v1 + *(v2 + 24);
  v4 = *(v3 + 8);
  v5 = (*v3)();
  v6 = v0[5];
  v7 = (v0[6] + *(v2 + 20));
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1Tm(v7, v8);
  v10 = *(v9 + 8);
  v11 = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  v12 = sub_264D41274(&unk_27FFAC6B0, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v14 = v10(v6, v11, v12, v8, v9);
  v16 = v15;
  v17 = sub_264D6E798();
  swift_beginAccess();

  v18 = sub_264D6E958();

  [v5 setObject:v17 forKey:v18];

  sub_264D403BC(v14, v16);
  v19 = v0[1];

  return v19();
}

uint64_t sub_264D3D010()
{
  v1 = *(v0 + 40);
  v2 = v1 + *(type metadata accessor for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource(0) + 24);
  v3 = *(v2 + 8);
  v4 = (*v2)();
  swift_beginAccess();

  v5 = sub_264D6E958();

  [v4 removeObjectForKey_];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_264D3D10C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264D3D1A4;

  return STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource.load()(a1);
}

uint64_t sub_264D3D1A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264D3D298(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264D41720;

  return STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource.save(settingsDefaults:)(a1);
}

uint64_t sub_264D3D32C(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_264D3D34C, 0, 0);
}

uint64_t sub_264D3D34C()
{
  v1 = v0[5] + *(v0[6] + 24);
  v2 = *(v1 + 8);
  v3 = (*v1)();
  swift_beginAccess();

  v4 = sub_264D6E958();

  [v3 removeObjectForKey_];

  v5 = v0[1];

  return v5();
}

uint64_t sub_264D3D440(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24))
  {
    return (*(a1 + 8) == *(a2 + 8)) & ~(*(a2 + 16) ^ *(a1 + 16));
  }

  return 0;
}

uint64_t sub_264D3D48C()
{
  v1 = OBJC_IVAR____TtCOO15ScreenTimeSwift21STExpressIntroduction8Internal26STServerProxySettingsStore_connection;
  [*(v0 + OBJC_IVAR____TtCOO15ScreenTimeSwift21STExpressIntroduction8Internal26STServerProxySettingsStore_connection) invalidate];
  v2 = OBJC_IVAR____TtCOO15ScreenTimeSwift21STExpressIntroduction8Internal26STServerProxySettingsStore_logger;
  v3 = sub_264D6E848();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtCOO15ScreenTimeSwift21STExpressIntroduction8Internal26STServerProxySettingsStore_coder));

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_264D3D560(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = a3;
  v5 = *a2;
  *(v4 + 64) = v3;
  *(v4 + 72) = v5;
  *(v4 + 41) = *(a2 + 8);
  return MEMORY[0x2822009F8](sub_264D3D590, 0, 0);
}

uint64_t sub_264D3D590()
{
  v1 = *(v0 + 41);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = OBJC_IVAR____TtCOO15ScreenTimeSwift21STExpressIntroduction8Internal26STServerProxySettingsStore_coder;
  *(v0 + 80) = OBJC_IVAR____TtCOO15ScreenTimeSwift21STExpressIntroduction8Internal26STServerProxySettingsStore_coder;
  v5 = (v2 + v4);
  v6 = *(v2 + v4 + 24);
  v7 = *(v2 + v4 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v2 + v4), v6);
  *(v0 + 32) = v3;
  *(v0 + 40) = v1;
  v8 = *(v7 + 8);
  v9 = sub_264D41114();
  v10 = v8(v0 + 32, &type metadata for STExpressIntroduction.User, v9, v6, v7);
  *(v0 + 88) = v10;
  *(v0 + 96) = v11;
  v12 = v10;
  v26 = v11;
  v13 = *(v0 + 56);
  v14 = v5[3];
  v15 = v5[4];
  __swift_project_boxed_opaque_existential_1Tm(v5, v14);
  v16 = *(v15 + 8);
  v17 = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  v18 = sub_264D41274(&unk_27FFAC6B0, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v19 = v16(v13, v17, v18, v14, v15);
  *(v0 + 104) = v19;
  *(v0 + 112) = v20;
  v21 = v19;
  v22 = v20;
  sub_264D41220(v12, v26);
  sub_264D41220(v21, v22);
  v23 = swift_task_alloc();
  *(v0 + 120) = v23;
  *v23 = v0;
  v23[1] = sub_264D3D7D4;
  v24 = *(v0 + 64);

  return sub_264D3F010(v0 + 16, v24, v12, v26, v21, v22);
}

uint64_t sub_264D3D7D4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_264D3DA7C;
  }

  else
  {
    v3 = sub_264D3D8E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264D3D8E8()
{
  v18 = v0[16];
  v1 = v0[6];
  v2 = (v0[8] + v0[10]);
  v4 = v0[2];
  v3 = v0[3];
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  v7 = type metadata accessor for STExpressIntroduction.STSettings();
  v8 = *(v6 + 16);
  v9 = sub_264D41274(&qword_27FFAC788, type metadata accessor for STExpressIntroduction.STSettings);
  v19 = v4;
  v10 = v4;
  v11 = v3;
  v8(v7, v10, v3, v7, v9, v5, v6);
  v13 = v0[13];
  v12 = v0[14];
  v15 = v0[11];
  v14 = v0[12];
  if (v18)
  {
    sub_264D403BC(v19, v11);
    sub_264D403BC(v13, v12);
    sub_264D403BC(v15, v14);
  }

  else
  {
    sub_264D403BC(v0[11], v0[12]);
    sub_264D403BC(v13, v12);
    sub_264D403BC(v19, v11);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_264D3DA7C()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_264D403BC(v0[11], v0[12]);
  sub_264D403BC(v1, v2);
  v3 = v0[16];
  v4 = v0[1];

  return v4();
}

uint64_t sub_264D3DAF0(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC778, &qword_264D722D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_264D6E7A8();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_264D3DBD8(uint64_t a1, uint64_t a2)
{
  *(v3 + 144) = a1;
  *(v3 + 152) = v2;
  *(v3 + 160) = *a2;
  *(v3 + 129) = *(a2 + 8);
  return MEMORY[0x2822009F8](sub_264D3DC08, 0, 0);
}

uint64_t sub_264D3DC08()
{
  v1 = v0[18];
  v2 = (v0[19] + OBJC_IVAR____TtCOO15ScreenTimeSwift21STExpressIntroduction8Internal26STServerProxySettingsStore_coder);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  v5 = *(v4 + 8);
  v6 = type metadata accessor for STExpressIntroduction.STSettings();
  v7 = sub_264D41274(&qword_27FFAC780, type metadata accessor for STExpressIntroduction.STSettings);
  v8 = v5(v1, v6, v7, v3, v4);
  v0[21] = v8;
  v0[22] = v9;
  v10 = v8;
  v11 = v9;
  LOBYTE(v5) = *(v0 + 129);
  v12 = v0[20];
  v13 = v2[3];
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v13);
  v0[15] = v12;
  *(v0 + 128) = v5;
  v15 = *(v14 + 8);
  v16 = sub_264D41114();
  v17 = v15(v0 + 15, &type metadata for STExpressIntroduction.User, v16, v13, v14);
  v0[23] = v17;
  v0[24] = v18;
  v19 = v18;
  v20 = v17;
  v21 = v0[19];
  v22 = swift_allocObject();
  v0[25] = v22;
  *(v22 + 16) = 0;
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v0[26] = v24;
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  v25 = *(v21 + OBJC_IVAR____TtCOO15ScreenTimeSwift21STExpressIntroduction8Internal26STServerProxySettingsStore_connection);
  v0[6] = sub_264D4175C;
  v0[7] = v24;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_264D3F8E4;
  v0[5] = &block_descriptor_69;
  v26 = _Block_copy(v0 + 2);
  v27 = v0[7];

  v28 = [v25 remoteObjectProxyWithErrorHandler_];
  _Block_release(v26);
  sub_264D6EC28();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC760, &qword_264D70120);
  if (swift_dynamicCast())
  {
    v29 = v0[17];
    v0[27] = v29;
    v30 = swift_task_alloc();
    v0[28] = v30;
    *v30 = v0;
    v30[1] = sub_264D3DFE4;

    return sub_264D3E2B0(v30, v29, v10, v11, v20, v19);
  }

  else
  {
    sub_264D41188();
    swift_allocError();
    swift_willThrow();

    v32 = v0[23];
    v33 = v0[24];
    sub_264D403BC(v0[21], v0[22]);
    sub_264D403BC(v32, v33);
    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_264D3DFE4()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_264D3E218;
  }

  else
  {
    v3 = sub_264D3E0F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264D3E0F8()
{
  v1 = v0[25];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  if (v2)
  {
    swift_willThrow();
    v6 = v2;
    swift_unknownObjectRelease();

    v8 = v0[23];
    v7 = v0[24];
    sub_264D403BC(v0[21], v0[22]);
    sub_264D403BC(v8, v7);
  }

  else
  {
    v11 = v0[23];
    v10 = v0[24];
    v13 = v0[21];
    v12 = v0[22];
    v14 = v0[26];

    swift_unknownObjectRelease();

    sub_264D403BC(v13, v12);
    sub_264D403BC(v11, v10);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_264D3E218()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];

  swift_unknownObjectRelease();

  v4 = v0[29];
  v6 = v0[23];
  v5 = v0[24];
  sub_264D403BC(v0[21], v0[22]);
  sub_264D403BC(v6, v5);
  v7 = v0[1];

  return v7();
}

uint64_t sub_264D3E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[18] = a2;
  return MEMORY[0x2822009F8](sub_264D3E2D8, 0, 0);
}

uint64_t sub_264D3E2D8()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = sub_264D6E798();
  v0[23] = v6;
  v7 = sub_264D6E798();
  v0[24] = v7;
  v0[2] = v0;
  v0[3] = sub_264D3E424;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC770, &unk_264D70130);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_264D3E534;
  v0[13] = &block_descriptor_74;
  v0[14] = v8;
  [v5 saveEncodedSettings:v6 forEncodedUser:v7 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264D3E424()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_264D41734;
  }

  else
  {
    v3 = sub_264D41730;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264D3E534(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC778, &qword_264D722D0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_264D3E5E0(uint64_t a1, uint64_t a2)
{
  *(v3 + 144) = a1;
  *(v3 + 152) = v2;
  *(v3 + 160) = *a2;
  *(v3 + 129) = *(a2 + 8);
  return MEMORY[0x2822009F8](sub_264D3E610, 0, 0);
}

uint64_t sub_264D3E610()
{
  v1 = *(v0 + 129);
  v2 = v0[20];
  v3 = (v0[19] + OBJC_IVAR____TtCOO15ScreenTimeSwift21STExpressIntroduction8Internal26STServerProxySettingsStore_coder);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v4);
  v0[15] = v2;
  *(v0 + 128) = v1;
  v6 = *(v5 + 8);
  v7 = sub_264D41114();
  v8 = v6(v0 + 15, &type metadata for STExpressIntroduction.User, v7, v4, v5);
  v0[21] = v8;
  v0[22] = v9;
  v34 = v8;
  v35 = v9;
  v10 = v0[18];
  v12 = v3[3];
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v12);
  v13 = *(v11 + 8);
  v14 = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  v15 = sub_264D41274(&unk_27FFAC6B0, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v16 = v13(v10, v14, v15, v12, v11);
  v0[23] = v16;
  v0[24] = v17;
  v32 = v16;
  v33 = v17;
  v18 = v0[19];
  v19 = swift_allocObject();
  v0[25] = v19;
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v0[26] = v21;
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v22 = *(v18 + OBJC_IVAR____TtCOO15ScreenTimeSwift21STExpressIntroduction8Internal26STServerProxySettingsStore_connection);
  v0[6] = sub_264D41168;
  v0[7] = v21;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_264D3F8E4;
  v0[5] = &block_descriptor_54;
  v23 = _Block_copy(v0 + 2);
  v24 = v0[7];

  v25 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v23);
  sub_264D6EC28();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC760, &qword_264D70120);
  if (swift_dynamicCast())
  {
    v26 = v0[17];
    v0[27] = v26;
    v27 = swift_task_alloc();
    v0[28] = v27;
    *v27 = v0;
    v27[1] = sub_264D3E9E0;

    return sub_264D3ECAC(v27, v26, v32, v33, v34, v35);
  }

  else
  {
    sub_264D41188();
    swift_allocError();
    swift_willThrow();

    v29 = v0[21];
    v30 = v0[22];
    sub_264D403BC(v0[23], v0[24]);
    sub_264D403BC(v29, v30);
    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_264D3E9E0()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_264D3EC14;
  }

  else
  {
    v3 = sub_264D3EAF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264D3EAF4()
{
  v1 = v0[25];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  if (v2)
  {
    swift_willThrow();
    v6 = v2;
    swift_unknownObjectRelease();

    v8 = v0[21];
    v7 = v0[22];
    sub_264D403BC(v0[23], v0[24]);
    sub_264D403BC(v8, v7);
  }

  else
  {
    v11 = v0[23];
    v10 = v0[24];
    v13 = v0[21];
    v12 = v0[22];
    v14 = v0[26];

    swift_unknownObjectRelease();

    sub_264D403BC(v11, v10);
    sub_264D403BC(v13, v12);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_264D3EC14()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];

  swift_unknownObjectRelease();

  v4 = v0[29];
  v6 = v0[21];
  v5 = v0[22];
  sub_264D403BC(v0[23], v0[24]);
  sub_264D403BC(v6, v5);
  v7 = v0[1];

  return v7();
}

uint64_t sub_264D3ECAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[18] = a2;
  return MEMORY[0x2822009F8](sub_264D3ECD4, 0, 0);
}

uint64_t sub_264D3ECD4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = sub_264D6E798();
  v0[23] = v6;
  v7 = sub_264D6E798();
  v0[24] = v7;
  v0[2] = v0;
  v0[3] = sub_264D3EE20;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC770, &unk_264D70130);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_264D3E534;
  v0[13] = &block_descriptor_59;
  v0[14] = v8;
  [v5 saveEncodedDefaults:v6 forEncodedUser:v7 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264D3EE20()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_264D3EF98;
  }

  else
  {
    v3 = sub_264D3EF30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264D3EF30()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264D3EF98()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

uint64_t sub_264D3F010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  return MEMORY[0x2822009F8](sub_264D3F038, 0, 0);
}

uint64_t sub_264D3F038()
{
  v1 = v0[21];
  v2 = swift_allocObject();
  v0[26] = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v0[27] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(v1 + OBJC_IVAR____TtCOO15ScreenTimeSwift21STExpressIntroduction8Internal26STServerProxySettingsStore_connection);
  v0[14] = sub_264D4175C;
  v0[15] = v4;
  v6 = MEMORY[0x277D85DD0];
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_264D3F8E4;
  v0[13] = &block_descriptor_86;
  v7 = _Block_copy(v0 + 10);
  v8 = v0[15];

  v9 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_264D6EC28();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC760, &qword_264D70120);
  if (swift_dynamicCast())
  {
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[22];
    v13 = v0[23];
    v14 = v0[18];
    v0[28] = v14;
    v15 = sub_264D6E798();
    v0[29] = v15;
    v16 = sub_264D6E798();
    v0[30] = v16;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_264D3F388;
    v17 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAC790, &unk_264D70150);
    v0[10] = v6;
    v0[11] = 1107296256;
    v0[12] = sub_264D3DAF0;
    v0[13] = &block_descriptor_89;
    v0[14] = v17;
    [v14 loadEncodedSettingsForEncodedUser:v15 withEncodedDefaults:v16 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_264D41188();
    swift_allocError();
    swift_willThrow();

    v19 = v0[24];
    v18 = v0[25];
    v21 = v0[22];
    v20 = v0[23];

    sub_264D403BC(v21, v20);
    sub_264D403BC(v19, v18);
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_264D3F388()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_264D3F5F8;
  }

  else
  {
    v3 = sub_264D3F498;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264D3F498()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);

  swift_beginAccess();
  v5 = *(v2 + 16);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  if (v5)
  {
    swift_willThrow();
    v8 = v5;
    swift_unknownObjectRelease();

    sub_264D403BC(v3, v4);
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = *(v0 + 176);

    sub_264D403BC(v13, v12);
    sub_264D403BC(v11, v10);
  }

  else
  {
    v15 = *(v0 + 208);
    v21 = *(v0 + 200);
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    v18 = *(v0 + 176);
    v19 = *(v0 + 160);

    swift_unknownObjectRelease();

    sub_264D403BC(v18, v17);
    *v19 = v3;
    v19[1] = v4;
    sub_264D403BC(v16, v21);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_264D3F5F8()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[26];
  swift_willThrow();

  swift_unknownObjectRelease();

  v6 = v0[31];
  v7 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v11 = v0[22];
  v10 = v0[23];

  sub_264D403BC(v11, v10);
  sub_264D403BC(v9, v8);
  v12 = v0[1];

  return v12();
}

id sub_264D3F6B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264D6E848();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v6 + 16))(v9, Strong + OBJC_IVAR____TtCOO15ScreenTimeSwift21STExpressIntroduction8Internal26STServerProxySettingsStore_logger, v5);

    v11 = a1;
    v12 = sub_264D6E828();
    v13 = sub_264D6EB28();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_264D33000, v12, v13, "Connection error: %{public}@", v14, 0xCu);
      sub_264D37A94(v15, &unk_27FFAC698, &qword_264D6FF08);
      MEMORY[0x26674D8B0](v15, -1, -1);
      MEMORY[0x26674D8B0](v14, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }

  swift_beginAccess();
  v18 = *(a3 + 16);
  *(a3 + 16) = a1;

  return a1;
}

void sub_264D3F8E4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_264D3F94C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_264D41720;

  return sub_264D3D560(a1, a2, a3);
}

uint64_t sub_264D3FA00(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_264D41720;

  return sub_264D3DBD8(a1, a2);
}

uint64_t sub_264D3FAA8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_264D41720;

  return sub_264D3E5E0(a1, a2);
}

uint64_t STExpressIntroduction.Internal.JSONCoder.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264D6E738();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *a1 = sub_264D6E728();
  v5 = sub_264D6E708();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_264D6E6F8();
  a1[1] = result;
  return result;
}

uint64_t sub_264D3FC2C()
{
  sub_264D6EFC8();
  MEMORY[0x26674D1D0](0);
  return sub_264D6F008();
}

uint64_t sub_264D3FC70()
{
  sub_264D6EFC8();
  MEMORY[0x26674D1D0](0);
  return sub_264D6F008();
}

uint64_t sub_264D3FCB0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_264D3FD24(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_264D3FD80(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_264D3FD80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_264D3FE4C(v11, 0, 0, 1, a1, a2);
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
    sub_264D37A38(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_264D3FE4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_264D3FF58(a5, a6);
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
    result = sub_264D6ED48();
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

uint64_t sub_264D3FF58(uint64_t a1, unint64_t a2)
{
  v4 = sub_264D3FFA4(a1, a2);
  sub_264D400D4(&unk_28769E628);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_264D3FFA4(uint64_t a1, unint64_t a2)
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

  v6 = sub_264D5B25C(v5, 0);
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

  result = sub_264D6ED48();
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
        v10 = sub_264D6E9D8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_264D5B25C(v10, 0);
        result = sub_264D6ECF8();
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

uint64_t sub_264D400D4(uint64_t result)
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

  result = sub_264D401C0(result, v12, 1, v3);
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

char *sub_264D401C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC7A0, &unk_264D70160);
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

_BYTE **sub_264D402B4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_264D402C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264D4032C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC688, &qword_264D70960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D403BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t dispatch thunk of STExpressIntroduction.Internal.STDataSource.load(forUser:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_264D3D1A4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of STExpressIntroduction.Internal.STDataSource.save(settings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_264D41720;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of STExpressIntroduction.Internal.SettingsDefaultsDataSource.load()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_264D41720;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of STExpressIntroduction.Internal.SettingsDefaultsDataSource.save(settingsDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_264D41720;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of STExpressIntroduction.Internal.SettingsDefaultsDataSource.clear()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264D41720;

  return v9(a1, a2);
}

uint64_t sub_264D40A00()
{
  result = sub_264D6E848();
  if (v1 <= 0x3F)
  {
    result = sub_264D40AE4(319, &qword_281222410, &protocolRef_STPersistenceControllerProtocol);
    if (v2 <= 0x3F)
    {
      result = sub_264D40AE4(319, &qword_281222408, &protocolRef_STOrganizationSettingsRestrictionUtilityProtocol);
      if (v3 <= 0x3F)
      {
        result = sub_264D40E70(319, qword_2812224D0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_264D40AE4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t dispatch thunk of STExpressIntroduction.Internal.STIntroductionModelService.enableRemoteManagement(forDSID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_264D41720;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of STExpressIntroduction.Internal.STIntroductionModelService.apply(_:forDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_264D41720;

  return v13(a1, a2, a3, a4);
}

unint64_t sub_264D40DC4()
{
  result = sub_264D6E848();
  if (v1 <= 0x3F)
  {
    result = sub_264D40E70(319, qword_281222420);
    if (v2 <= 0x3F)
    {
      result = sub_264D40ECC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_264D40E70(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_264D40ECC()
{
  result = qword_2812223F8;
  if (!qword_2812223F8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2812223F8);
  }

  return result;
}

uint64_t sub_264D40F44(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264D40F7C()
{
  result = sub_264D6E848();
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_264D41080(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264D410C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_264D41114()
{
  result = qword_27FFAC758;
  if (!qword_27FFAC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC758);
  }

  return result;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_264D41188()
{
  result = qword_27FFAC768;
  if (!qword_27FFAC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC768);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_264D41220(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_264D41274(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_50Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264D41300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC688, &qword_264D70960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D41370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC688, &qword_264D70960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D4143C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_264D41480(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264D414E0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_264D41528()
{
  result = qword_27FFAC7C0;
  if (!qword_27FFAC7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC7C0);
  }

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

uint64_t sub_264D41598(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_264D415EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_264D41654()
{
  result = qword_27FFAC7C8;
  if (!qword_27FFAC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC7C8);
  }

  return result;
}

unint64_t sub_264D416AC()
{
  result = qword_27FFAC7D0;
  if (!qword_27FFAC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC7D0);
  }

  return result;
}

uint64_t sub_264D41778()
{
  v0 = sub_264D6E848();
  __swift_allocate_value_buffer(v0, qword_27FFB1638);
  __swift_project_value_buffer(v0, qword_27FFB1638);
  return sub_264D6E838();
}

uint64_t sub_264D41824(uint64_t a1, uint64_t *a2)
{
  v3 = sub_264D6E848();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_264D6E838();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void STExpressIntroduction.ResolvedUser.init(resolvedDSID:user:altDSID:)(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = [a1 integerValue];

  *(a5 + 24) = a4;
  *(a5 + 32) = v11;
  *a5 = v9;
  *(a5 + 8) = v10;
  *(a5 + 16) = a3;
}

uint64_t STExpressIntroduction.PasscodeSettings.init(passcode:recoveryAltDSID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

__n128 STExpressIntroduction.STSettings.init(contentRestrictions:communicationSafety:communicationLimits:appAndWebsiteActivity:screenDistance:passcode:resolvedUser:)@<Q0>(uint64_t *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, _OWORD *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *a2;
  v12 = a2[1];
  v13 = *a3;
  v14 = a3[1];
  v15 = a3[2];
  v24 = a5[1];
  v25 = *a5;
  v30 = a7->n128_u64[0];
  v29 = a7->n128_u8[8];
  v28 = a7[1];
  v27 = a7[2].n128_u64[0];
  v16 = type metadata accessor for STExpressIntroduction.STSettings();
  v17 = a8 + v16[9];
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *a8 = v9;
  *(a8 + 8) = v10;
  *(a8 + 9) = v11;
  *(a8 + 10) = v12;
  *(a8 + 11) = v13;
  *(a8 + 12) = v14;
  *(a8 + 13) = v15;
  sub_264D41B30(a4, a8 + v16[7]);
  v18 = (a8 + v16[8]);
  *v18 = v25;
  v18[1] = v24;
  v19 = *(v17 + 16);
  v20 = *(v17 + 24);
  sub_264D4143C(*v17, *(v17 + 8));
  v21 = a6[1];
  *v17 = *a6;
  *(v17 + 16) = v21;
  v22 = (a8 + v16[10]);
  v22->n128_u64[0] = v30;
  v22->n128_u8[8] = v29;
  result = v28;
  v22[1] = v28;
  v22[2].n128_u64[0] = v27;
  return result;
}

uint64_t type metadata accessor for STExpressIntroduction.STSettings()
{
  result = qword_27FFAC8A0;
  if (!qword_27FFAC8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264D41B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static STExpressIntroduction.stSettingsStore()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264D6E738();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_264D6E728();
  v6 = sub_264D6E708();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v15[3] = &type metadata for STExpressIntroduction.Internal.JSONCoder;
  v15[4] = &protocol witness table for STExpressIntroduction.Internal.JSONCoder;
  v15[0] = v5;
  v15[1] = sub_264D6E6F8();
  v9 = _s26STServerProxySettingsStoreCMa(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();

  sub_264D6E838();
  sub_264D41D08(v15, v12 + OBJC_IVAR____TtCOO15ScreenTimeSwift21STExpressIntroduction8Internal26STServerProxySettingsStore_coder);
  v13 = [objc_opt_self() newConnection];
  *(v12 + OBJC_IVAR____TtCOO15ScreenTimeSwift21STExpressIntroduction8Internal26STServerProxySettingsStore_connection) = v13;
  [v13 activate];

  result = __swift_destroy_boxed_opaque_existential_0(v15);
  a1[3] = v9;
  a1[4] = &off_28769E9F8;
  *a1 = v12;
  return result;
}

uint64_t sub_264D41D08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id STExpressIntroduction.STSettings.contentRestrictions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

void STExpressIntroduction.STSettings.contentRestrictions.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
}

void STExpressIntroduction.STSettings.communicationSafety.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 10);
  *a1 = *(v1 + 9);
  a1[1] = v2;
}

_BYTE *STExpressIntroduction.STSettings.communicationSafety.setter(_BYTE *result)
{
  v2 = result[1];
  *(v1 + 9) = *result;
  *(v1 + 10) = v2;
  return result;
}

void STExpressIntroduction.STSettings.communicationLimits.getter(_BYTE *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[13];
  *a1 = v1[11];
  a1[1] = v2;
  a1[2] = v3;
}

_BYTE *STExpressIntroduction.STSettings.communicationLimits.setter(_BYTE *result)
{
  v2 = result[1];
  v3 = result[2];
  v1[11] = *result;
  v1[12] = v2;
  v1[13] = v3;
  return result;
}

uint64_t STExpressIntroduction.STSettings.appAndWebsiteActivity.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for STExpressIntroduction.STSettings() + 28);

  return sub_264D41F0C(a1, v3);
}

uint64_t sub_264D41F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t STExpressIntroduction.STSettings.screenDistance.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for STExpressIntroduction.STSettings();
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = v4[1];
  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t STExpressIntroduction.STSettings.screenDistance.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for STExpressIntroduction.STSettings();
  v5 = (v1 + *(result + 32));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t STExpressIntroduction.STSettings.passcode.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for STExpressIntroduction.STSettings() + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_264D420D4(v4, v5);
}

uint64_t sub_264D420D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 STExpressIntroduction.STSettings.passcode.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for STExpressIntroduction.STSettings() + 36));
  v4 = v3[2];
  v5 = v3[3];
  sub_264D4143C(*v3, v3[1]);
  result = *a1;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v7;
  return result;
}

uint64_t STExpressIntroduction.STSettings.resolvedUser.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for STExpressIntroduction.STSettings() + 40);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
}

__n128 STExpressIntroduction.STSettings.resolvedUser.setter(__n128 *a1)
{
  v2 = a1->n128_u64[0];
  v3 = a1->n128_u8[8];
  v8 = a1[1];
  v4 = a1[2].n128_u64[0];
  v5 = (v1 + *(type metadata accessor for STExpressIntroduction.STSettings() + 40));
  v6 = v5[1].n128_u64[1];

  v5->n128_u64[0] = v2;
  v5->n128_u8[8] = v3;
  result = v8;
  v5[1] = v8;
  v5[2].n128_u64[0] = v4;
  return result;
}

uint64_t STExpressIntroduction.STSettings.user.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for STExpressIntroduction.STSettings();
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_264D42334()
{
  v1 = *v0;
  v2 = 0x69446E6565726373;
  v3 = 0x65646F6373736170;
  if (v1 != 5)
  {
    v3 = 0x6465766C6F736572;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  *v0;
  if (*v0 <= 2u)
  {
    return 0xD000000000000013;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_264D42438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264D45700(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264D42478(uint64_t a1)
{
  v2 = sub_264D44354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264D424B4(uint64_t a1)
{
  v2 = sub_264D44354();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t STExpressIntroduction.STSettings.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC7E0, &qword_264D70380);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D44354();
  sub_264D6F058();
  v12 = *(v3 + 8);
  v29 = *v3;
  v11 = v29;
  LOBYTE(v30) = v12;
  v33 = 0;
  sub_264D443A8();
  v13 = v11;
  sub_264D6EF08();
  if (v2)
  {
  }

  else
  {

    v14 = *(v3 + 10);
    LOBYTE(v29) = *(v3 + 9);
    BYTE1(v29) = v14;
    v33 = 1;
    sub_264D443FC();
    sub_264D6EF08();
    v15 = *(v3 + 12);
    v16 = *(v3 + 13);
    LOBYTE(v29) = *(v3 + 11);
    BYTE1(v29) = v15;
    BYTE2(v29) = v16;
    v33 = 2;
    sub_264D44450();
    sub_264D6EF08();
    v17 = type metadata accessor for STExpressIntroduction.STSettings();
    v18 = v17[7];
    LOBYTE(v29) = 3;
    type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0);
    sub_264D4469C(&qword_27FFAC808);
    sub_264D6EF08();
    v19 = (v3 + v17[8]);
    v20 = *v19;
    LOBYTE(v19) = v19[1];
    LOBYTE(v29) = v20;
    BYTE1(v29) = v19;
    v33 = 4;
    sub_264D444A4();
    sub_264D6EF08();
    v21 = v3 + v17[9];
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);
    v29 = *v21;
    v30 = v22;
    v31 = v23;
    *&v32 = v24;
    v33 = 5;
    sub_264D420D4(v29, v22);
    sub_264D444F8();
    sub_264D6EEC8();
    sub_264D4143C(v29, v30);
    v25 = v3 + v17[10];
    v26 = *(v25 + 8);
    v27 = *(v25 + 16);
    v29 = *v25;
    LOBYTE(v30) = v26;
    v31 = v27;
    v32 = *(v25 + 24);
    v33 = 6;
    sub_264D4454C();

    sub_264D6EF08();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t STExpressIntroduction.STSettings.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC828, &qword_264D70388);
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for STExpressIntroduction.STSettings();
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v16[*(v14 + 36)];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v45 = v17;
  v46 = a1;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D44354();
  v44 = v11;
  sub_264D6F038();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v46);
    v20 = v45[2];
    v21 = v45[3];
    return sub_264D4143C(*v45, v45[1]);
  }

  else
  {
    *&v40 = v7;
    v19 = v42;
    v50 = 0;
    sub_264D445A0();
    sub_264D6EE88();
    v22 = BYTE8(v47);
    *v16 = v47;
    v16[8] = v22;
    v50 = 1;
    sub_264D445F4();
    sub_264D6EE88();
    v23 = BYTE1(v47);
    v16[9] = v47;
    v16[10] = v23;
    v50 = 2;
    sub_264D44648();
    sub_264D6EE88();
    v24 = BYTE1(v47);
    v25 = BYTE2(v47);
    v16[11] = v47;
    v16[12] = v24;
    v16[13] = v25;
    LOBYTE(v47) = 3;
    sub_264D4469C(&qword_27FFAC848);
    v26 = v40;
    sub_264D6EE88();
    sub_264D41B30(v26, &v16[v12[7]]);
    v50 = 4;
    sub_264D446E0();
    sub_264D6EE88();
    v27 = BYTE1(v47);
    v28 = &v16[v12[8]];
    *v28 = v47;
    v28[1] = v27;
    v50 = 5;
    sub_264D44734();
    sub_264D6EE48();
    v29 = v45;
    v30 = *v45;
    v31 = v45[1];
    v32 = v45[2];
    v33 = v45[3];
    v39 = v48;
    v40 = v47;
    sub_264D4143C(v30, v31);
    v34 = v39;
    *v29 = v40;
    *(v29 + 1) = v34;
    v50 = 6;
    sub_264D44788();
    sub_264D6EE88();
    (*(v19 + 8))(v44, v43);
    v35 = BYTE8(v47);
    v36 = v49;
    v37 = &v16[v12[10]];
    *v37 = v47;
    v37[8] = v35;
    *(v37 + 1) = v48;
    *(v37 + 4) = v36;
    sub_264D447DC(v16, v41, type metadata accessor for STExpressIntroduction.STSettings);
    __swift_destroy_boxed_opaque_existential_0(v46);
    return sub_264D44844(v16, type metadata accessor for STExpressIntroduction.STSettings);
  }
}

uint64_t STExpressIntroduction.PasscodeSettings.passcode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t STExpressIntroduction.PasscodeSettings.passcode.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t STExpressIntroduction.PasscodeSettings.recoveryAltDSID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t STExpressIntroduction.PasscodeSettings.recoveryAltDSID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

unint64_t STExpressIntroduction.PasscodeSettings.description.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  sub_264D6ED08();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC7B8, &qword_264D70390);
  v3 = sub_264D6E998();
  MEMORY[0x26674CBC0](v3);

  MEMORY[0x26674CBC0](41, 0xE100000000000000);
  return 0xD000000000000027;
}

uint64_t static STExpressIntroduction.PasscodeSettings.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_264D6EF28(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_264D6EF28() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_264D4308C()
{
  v1 = *v0;
  sub_264D6EFC8();
  MEMORY[0x26674D1D0](v1);
  return sub_264D6F008();
}

uint64_t sub_264D430D4()
{
  v1 = *v0;
  sub_264D6EFC8();
  MEMORY[0x26674D1D0](v1);
  return sub_264D6F008();
}

uint64_t sub_264D43118()
{
  if (*v0)
  {
    result = 0x797265766F636572;
  }

  else
  {
    result = 0x65646F6373736170;
  }

  *v0;
  return result;
}

uint64_t sub_264D43160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65646F6373736170 && a2 == 0xE800000000000000;
  if (v6 || (sub_264D6EF28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797265766F636572 && a2 == 0xEF44495344746C41)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264D6EF28();

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

uint64_t sub_264D43244(uint64_t a1)
{
  v2 = sub_264D448A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264D43280(uint64_t a1)
{
  v2 = sub_264D448A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t STExpressIntroduction.PasscodeSettings.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC868, &qword_264D70398);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D448A4();
  sub_264D6F058();
  v16 = 0;
  v12 = v14[3];
  sub_264D6EED8();
  if (!v12)
  {
    v15 = 1;
    sub_264D6EEB8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t STExpressIntroduction.PasscodeSettings.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC878, &qword_264D703A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D448A4();
  sub_264D6F038();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v11 = sub_264D6EE58();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_264D6EE38();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_264D43684(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_264D6EF28(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_264D6EF28() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void STExpressIntroduction.ResolvedUser.user.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t STExpressIntroduction.ResolvedUser.altDSID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void STExpressIntroduction.ResolvedUser.resolvedDSID.setter(void *a1)
{
  v3 = [a1 integerValue];

  *(v1 + 32) = v3;
}

void (*STExpressIntroduction.ResolvedUser.resolvedDSID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 32);
  *a1 = sub_264D6EAF8();
  return sub_264D437F4;
}

void sub_264D437F4(uint64_t a1, char a2)
{
  v7 = *a1;
  v4 = [*a1 integerValue];
  v5 = v4;
  v6 = *(a1 + 8);
  if (a2)
  {
    *(v6 + 32) = v4;
  }

  else
  {

    *(v6 + 32) = v5;
  }
}

uint64_t sub_264D43880()
{
  v1 = 0x44495344746C61;
  if (*v0 != 1)
  {
    v1 = 0x6465766C6F736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1919251317;
  }
}

uint64_t sub_264D438E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264D45964(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264D43908(uint64_t a1)
{
  v2 = sub_264D448F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264D43944(uint64_t a1)
{
  v2 = sub_264D448F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t STExpressIntroduction.ResolvedUser.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC880, &qword_264D703A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v14[0] = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D448F8();
  sub_264D6F058();
  v14[4] = v8;
  v15 = v9;
  v18 = 0;
  sub_264D41114();
  v12 = v14[3];
  sub_264D6EF08();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_264D6EEB8();
  v16 = 2;
  sub_264D6EEF8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t STExpressIntroduction.ResolvedUser.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC890, &qword_264D703B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D448F8();
  sub_264D6F038();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = 0;
  sub_264D4494C();
  sub_264D6EE88();
  v11 = v21;
  v12 = v22;
  v25 = 1;
  v19 = sub_264D6EE38();
  v20 = v13;
  v18 = v11;
  v23 = v12;
  v24 = 2;
  v14 = sub_264D6EE78();
  (*(v6 + 8))(v9, v5);
  *a2 = v18;
  *(a2 + 8) = v23;
  v15 = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v15;
  *(a2 + 32) = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

BOOL _s15ScreenTimeSwift21STExpressIntroductionO10STSettingsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = [*a1 isEqual_];
  result = 0;
  if (v6)
  {
    if (((v4 ^ v5) & 1) == 0)
    {
      result = 0;
      if (*(a1 + 9) == *(a2 + 9) && ((*(a1 + 10) ^ *(a2 + 10)) & 1) == 0)
      {
        v8 = *(a1 + 12);
        v9 = *(a1 + 13);
        v53[0] = *(a1 + 11);
        v53[1] = v8;
        v53[2] = v9;
        v10 = *(a2 + 12);
        v11 = *(a2 + 13);
        v52[0] = *(a2 + 11);
        v52[1] = v10;
        v52[2] = v11;
        if ((_s15ScreenTimeSwift21STExpressIntroductionO27CommunicationLimitsSettingsV2eeoiySbAE_AEtFZ_0(v53, v52) & 1) == 0)
        {
          return 0;
        }

        v12 = type metadata accessor for STExpressIntroduction.STSettings();
        if (!_s15ScreenTimeSwift21STExpressIntroductionO29AppAndWebsiteActivitySettingsV2eeoiySbAE_AEtFZ_0((a1 + v12[7]), (a2 + v12[7])))
        {
          return 0;
        }

        result = 0;
        v13 = v12[8];
        v14 = a1 + v13;
        v15 = *(a1 + v13);
        v16 = (a2 + v13);
        if (v15 == *v16 && ((*(v14 + 1) ^ v16[1]) & 1) == 0)
        {
          v17 = v12[9];
          v18 = *(a1 + v17);
          v19 = *(a1 + v17 + 8);
          v20 = *(a1 + v17 + 16);
          v21 = *(a1 + v17 + 24);
          v22 = (a2 + v17);
          v23 = *v22;
          v24 = v22[1];
          v25 = v22[2];
          v26 = v22[3];
          if (v19)
          {
            if (v24)
            {
              if (v18 == v23 && v19 == v24)
              {
                goto LABEL_14;
              }

              v49 = v22[3];
              v27 = v21;
              v28 = *v22;
              v29 = v18;
              v30 = v20;
              v31 = sub_264D6EF28();
              v20 = v30;
              v18 = v29;
              v23 = v28;
              v21 = v27;
              v26 = v49;
              if (v31)
              {
LABEL_14:
                if (!v21)
                {
                  sub_264D420D4(v18, v19);
                  if (!v26)
                  {
                    sub_264D420D4(v23, v24);
                    sub_264D420D4(v18, v19);
                    v32 = v23;
                    v33 = v24;
                    goto LABEL_34;
                  }

                  goto LABEL_26;
                }

                if (v26)
                {
                  if (v20 == v25 && v21 == v26)
                  {
                    sub_264D420D4(v18, v19);
                    sub_264D420D4(v23, v24);
                    sub_264D420D4(v18, v19);
                    v32 = v23;
                    v33 = v24;
LABEL_34:
                    sub_264D4143C(v32, v33);
LABEL_35:
                    v50 = v18;

                    goto LABEL_36;
                  }

                  v51 = sub_264D6EF28();
                  sub_264D420D4(v18, v19);
                  sub_264D420D4(v23, v24);
                  sub_264D420D4(v18, v19);
                  sub_264D4143C(v23, v24);
                  if (v51)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_27;
                }
              }

              sub_264D420D4(v18, v19);
LABEL_26:
              sub_264D420D4(v23, v24);
              sub_264D420D4(v18, v19);
              sub_264D4143C(v23, v24);
LABEL_27:

              v36 = v18;
              v37 = v19;
              goto LABEL_28;
            }

            v34 = *v22;
            v35 = v18;
            sub_264D420D4(v18, v19);
            sub_264D420D4(v34, 0);
            sub_264D420D4(v18, v19);
          }

          else
          {
            v50 = v18;
            sub_264D420D4(v18, 0);
            if (!v24)
            {
              sub_264D420D4(v23, 0);
              v19 = 0;
LABEL_36:
              sub_264D4143C(v50, v19);
              v38 = v12[10];
              v39 = (a1 + v38);
              v40 = *(a1 + v38 + 8);
              v41 = *(a1 + v38 + 16);
              v42 = *(a1 + v38 + 24);
              v43 = *(a1 + v38 + 32);
              v44 = (a2 + v38);
              v45 = *(a2 + v38 + 8);
              v46 = v44[3];
              v47 = v44[4];
              if (v40 == 1)
              {
                if ((v45 & 1) == 0)
                {
                  return 0;
                }
              }

              else
              {
                if (*v39 == *v44)
                {
                  v48 = v45;
                }

                else
                {
                  v48 = 1;
                }

                if (v48)
                {
                  return 0;
                }
              }

              if (v42)
              {
                if (!v46 || (v41 != v44[2] || v42 != v46) && (sub_264D6EF28() & 1) == 0)
                {
                  return 0;
                }

                return v43 == v47;
              }

              if (!v46)
              {
                return v43 == v47;
              }

              return 0;
            }

            v34 = v23;
            sub_264D420D4(v23, v24);
            v35 = v18;
          }

          sub_264D4143C(v35, v19);
          v36 = v34;
          v37 = v24;
LABEL_28:
          sub_264D4143C(v36, v37);
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL _s15ScreenTimeSwift21STExpressIntroductionO12ResolvedUserV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v4 == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v11 = *(a2 + 8);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v9 || (v5 != *(a2 + 16) || v6 != v9) && (sub_264D6EF28() & 1) == 0)
    {
      return 0;
    }

    return v7 == v10;
  }

  if (!v9)
  {
    return v7 == v10;
  }

  return 0;
}

unint64_t sub_264D44354()
{
  result = qword_27FFAC7E8;
  if (!qword_27FFAC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC7E8);
  }

  return result;
}

unint64_t sub_264D443A8()
{
  result = qword_27FFAC7F0;
  if (!qword_27FFAC7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC7F0);
  }

  return result;
}

unint64_t sub_264D443FC()
{
  result = qword_27FFAC7F8;
  if (!qword_27FFAC7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC7F8);
  }

  return result;
}

unint64_t sub_264D44450()
{
  result = qword_27FFAC800;
  if (!qword_27FFAC800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC800);
  }

  return result;
}

unint64_t sub_264D444A4()
{
  result = qword_27FFAC810;
  if (!qword_27FFAC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC810);
  }

  return result;
}

unint64_t sub_264D444F8()
{
  result = qword_27FFAC818;
  if (!qword_27FFAC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC818);
  }

  return result;
}

unint64_t sub_264D4454C()
{
  result = qword_27FFAC820;
  if (!qword_27FFAC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC820);
  }

  return result;
}

unint64_t sub_264D445A0()
{
  result = qword_27FFAC830;
  if (!qword_27FFAC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC830);
  }

  return result;
}

unint64_t sub_264D445F4()
{
  result = qword_27FFAC838;
  if (!qword_27FFAC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC838);
  }

  return result;
}

unint64_t sub_264D44648()
{
  result = qword_27FFAC840;
  if (!qword_27FFAC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC840);
  }

  return result;
}

uint64_t sub_264D4469C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264D446E0()
{
  result = qword_27FFAC850;
  if (!qword_27FFAC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC850);
  }

  return result;
}

unint64_t sub_264D44734()
{
  result = qword_27FFAC858;
  if (!qword_27FFAC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC858);
  }

  return result;
}

unint64_t sub_264D44788()
{
  result = qword_27FFAC860;
  if (!qword_27FFAC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC860);
  }

  return result;
}

uint64_t sub_264D447DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264D44844(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_264D448A4()
{
  result = qword_27FFAC870;
  if (!qword_27FFAC870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC870);
  }

  return result;
}

unint64_t sub_264D448F8()
{
  result = qword_27FFAC888;
  if (!qword_27FFAC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC888);
  }

  return result;
}

unint64_t sub_264D4494C()
{
  result = qword_27FFAC898;
  if (!qword_27FFAC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC898);
  }

  return result;
}

uint64_t dispatch thunk of STExpressIntroduction.STSettingsStore.load(forUser:withDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_264D3D1A4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of STExpressIntroduction.STSettingsStore.save(settings:forUser:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_264D41720;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of STExpressIntroduction.STSettingsStore.save(defaults:forUser:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_264D41720;

  return v13(a1, a2, a3, a4);
}

void sub_264D44D6C()
{
  type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(319);
  if (v0 <= 0x3F)
  {
    sub_264D44E28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264D44E28()
{
  if (!qword_27FFAC8B0)
  {
    v0 = sub_264D6EC08();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFAC8B0);
    }
  }
}

uint64_t sub_264D44E78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_264D44EC0(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_264D44F24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_264D44F80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t _s12ResolvedUserV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s12ResolvedUserV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s16PasscodeSettingsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s16PasscodeSettingsV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s10STSettingsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10STSettingsV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264D453EC()
{
  result = qword_27FFAC8B8;
  if (!qword_27FFAC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC8B8);
  }

  return result;
}

unint64_t sub_264D45444()
{
  result = qword_27FFAC8C0;
  if (!qword_27FFAC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC8C0);
  }

  return result;
}

unint64_t sub_264D4549C()
{
  result = qword_27FFAC8C8;
  if (!qword_27FFAC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC8C8);
  }

  return result;
}

unint64_t sub_264D454F4()
{
  result = qword_27FFAC8D0;
  if (!qword_27FFAC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC8D0);
  }

  return result;
}

unint64_t sub_264D4554C()
{
  result = qword_27FFAC8D8;
  if (!qword_27FFAC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC8D8);
  }

  return result;
}

unint64_t sub_264D455A4()
{
  result = qword_27FFAC8E0;
  if (!qword_27FFAC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC8E0);
  }

  return result;
}

unint64_t sub_264D455FC()
{
  result = qword_27FFAC8E8;
  if (!qword_27FFAC8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC8E8);
  }

  return result;
}

unint64_t sub_264D45654()
{
  result = qword_27FFAC8F0;
  if (!qword_27FFAC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC8F0);
  }

  return result;
}

unint64_t sub_264D456AC()
{
  result = qword_27FFAC8F8;
  if (!qword_27FFAC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAC8F8);
  }

  return result;
}

uint64_t sub_264D45700(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000264D72970 == a2 || (sub_264D6EF28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000264D72990 == a2 || (sub_264D6EF28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000264D729B0 == a2 || (sub_264D6EF28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000264D729D0 == a2 || (sub_264D6EF28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69446E6565726373 && a2 == 0xEE0065636E617473 || (sub_264D6EF28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xE800000000000000 || (sub_264D6EF28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6465766C6F736572 && a2 == 0xEC00000072657355)
  {

    return 6;
  }

  else
  {
    v5 = sub_264D6EF28();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_264D45964(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1919251317 && a2 == 0xE400000000000000;
  if (v3 || (sub_264D6EF28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000 || (sub_264D6EF28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465766C6F736572 && a2 == 0xEF746E4944495344)
  {

    return 2;
  }

  else
  {
    v6 = sub_264D6EF28();

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

uint64_t STExpressIntroduction.ContentRestrictionsSettings.init(restrictions:strictPolicy:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings.init(startTime:endTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_264D6E778();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0) + 20);

  return v9(v7, a2, v6);
}

uint64_t STExpressIntroduction.AppAndWebsiteActivitySettings.init(isEnabled:strictPolicy:downtime:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = *(type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0) + 24);
  v9 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  *a4 = a1;
  a4[1] = a2;
  return sub_264D4B118(a3, &a4[v8], &qword_27FFAC688, &qword_264D70960);
}

ScreenTimeSwift::STExpressIntroduction::ScreenDistanceSettings __swiftcall STExpressIntroduction.ScreenDistanceSettings.init(isEnabled:strictPolicy:)(Swift::Bool isEnabled, Swift::Bool strictPolicy)
{
  *v2 = isEnabled;
  v2[1] = strictPolicy;
  result.isEnabled = isEnabled;
  return result;
}

uint64_t static STExpressIntroduction.ContentRestrictionsSettings.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return [*a1 isEqual_] & (v2 ^ v3 ^ 1);
}

BOOL static STExpressIntroduction.User.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t STExpressIntroduction.User.id.getter()
{
  if (v0[1])
  {
    return 0x6C61636F6CLL;
  }

  v3 = *v0;
  v2 = sub_264D6EF18();
  MEMORY[0x26674CBC0](v2);

  return 0x2D65746F6D6572;
}

uint64_t sub_264D45D74()
{
  if (*v0)
  {
    result = 0x65746F6D6572;
  }

  else
  {
    result = 0x6C61636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_264D45DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_264D6EF28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264D6EF28();

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

uint64_t sub_264D45E7C(uint64_t a1)
{
  v2 = sub_264D4AFFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264D45EB8(uint64_t a1)
{
  v2 = sub_264D4AFFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264D45F00@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_264D45F30(uint64_t a1)
{
  v2 = sub_264D4B0A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264D45F6C(uint64_t a1)
{
  v2 = sub_264D4B0A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264D45FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684632420 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264D6EF28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_264D46040(uint64_t a1)
{
  v2 = sub_264D4B050();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264D4607C(uint64_t a1)
{
  v2 = sub_264D4B050();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t STExpressIntroduction.User.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC900, &qword_264D70968);
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v23 = v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC908, &qword_264D70970);
  v21 = *(v6 - 8);
  v22 = v6;
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC910, &qword_264D70978);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  v20[1] = *v1;
  v15 = *(v1 + 8);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D4AFFC();
  sub_264D6F058();
  if (v15 == 1)
  {
    v26 = 0;
    sub_264D4B0A4();
    sub_264D6EEA8();
    (*(v21 + 8))(v9, v22);
  }

  else
  {
    v27 = 1;
    sub_264D4B050();
    v18 = v23;
    sub_264D6EEA8();
    v19 = v25;
    sub_264D6EEF8();
    (*(v24 + 8))(v18, v19);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t STExpressIntroduction.User.hash(into:)()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x26674D1D0](1);
  }

  return MEMORY[0x26674D1D0](v1);
}

uint64_t STExpressIntroduction.User.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_264D6EFC8();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x26674D1D0](1);
    v3 = v1;
  }

  MEMORY[0x26674D1D0](v3);
  return sub_264D6F008();
}

uint64_t STExpressIntroduction.User.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC930, &qword_264D70980);
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC938, &qword_264D70988);
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC940, &qword_264D70990);
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v35);
  v14 = &v32 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v16);
  sub_264D4AFFC();
  v17 = v36;
  sub_264D6F038();
  if (!v17)
  {
    v36 = v11;
    v18 = v34;
    v19 = sub_264D6EE98();
    if (*(v19 + 16) == 1)
    {
      v20 = v14;
      v21 = v35;
      v38 = *(v19 + 32);
      if (v38)
      {
        v40 = 1;
        sub_264D4B050();
        v22 = v20;
        sub_264D6EE18();
        v30 = v18;
        v31 = sub_264D6EE78();
        (*(v33 + 8))(v6, v3);
        (*(v36 + 8))(v22, v21);
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = 0;
        sub_264D4B0A4();
        v28 = v10;
        sub_264D6EE18();
        v30 = v18;
        (*(v32 + 8))(v28, v7);
        (*(v36 + 8))(v20, v21);
        swift_unknownObjectRelease();
        v31 = 0;
      }

      *v30 = v31;
      *(v30 + 8) = v38 ^ 1;
    }

    else
    {
      v23 = sub_264D6ED38();
      swift_allocError();
      v25 = v24;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC948, &qword_264D70998) + 48);
      *v25 = &type metadata for STExpressIntroduction.User;
      v27 = v35;
      sub_264D6EE28();
      sub_264D6ED28();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v36 + 8))(v14, v27);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v37);
}

BOOL sub_264D46924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_264D46960()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_264D6EFC8();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x26674D1D0](1);
    v3 = v1;
  }

  MEMORY[0x26674D1D0](v3);
  return sub_264D6F008();
}

uint64_t sub_264D469C0()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x26674D1D0](1);
  }

  return MEMORY[0x26674D1D0](v1);
}

uint64_t sub_264D46A08()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_264D6EFC8();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x26674D1D0](1);
  }

  MEMORY[0x26674D1D0](v1);
  return sub_264D6F008();
}

void sub_264D46A68(uint64_t *a1@<X8>)
{
  if (v1[1])
  {
    v3 = 0xE500000000000000;
    v4 = 0x6C61636F6CLL;
  }

  else
  {
    v6 = *v1;
    v5 = sub_264D6EF18();
    MEMORY[0x26674CBC0](v5);

    v4 = 0x2D65746F6D6572;
    v3 = 0xE700000000000000;
  }

  *a1 = v4;
  a1[1] = v3;
}

id STExpressIntroduction.SettingsDefaults.contentRestrictions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

void STExpressIntroduction.SettingsDefaults.contentRestrictions.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
}

void STExpressIntroduction.SettingsDefaults.communicationLimits.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 11);
  *(a1 + 2) = *(v1 + 13);
  *a1 = v2;
}

__int16 *STExpressIntroduction.SettingsDefaults.communicationLimits.setter(__int16 *result)
{
  v2 = *result;
  *(v1 + 13) = *(result + 2);
  *(v1 + 11) = v2;
  return result;
}

uint64_t STExpressIntroduction.SettingsDefaults.screenDistance.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t STExpressIntroduction.SettingsDefaults.screenDistance.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t STExpressIntroduction.SettingsDefaults.init(contentRestrictions:communicationSafety:communicationLimits:appAndWebsiteActivity:screenDistance:)@<X0>(uint64_t *a1@<X0>, __int16 *a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X3>, __int16 *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *a2;
  v11 = *a3;
  v12 = *(a3 + 2);
  v13 = *a5;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 9) = 131074;
  *(a6 + 13) = 0;
  v14 = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  v15 = *(v14 + 28);
  v16 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0);
  (*(*(v16 - 8) + 56))(a6 + v15, 1, 1, v16);
  v17 = *(v14 + 32);
  *(a6 + v17) = 2;

  *a6 = v8;
  *(a6 + 8) = v9;
  *(a6 + 9) = v10;
  *(a6 + 13) = v12;
  *(a6 + 11) = v11;
  result = sub_264D4B118(a4, a6 + v15, &qword_27FFAC950, &qword_264D709A0);
  *(a6 + v17) = v13;
  return result;
}

unint64_t sub_264D46E88()
{
  v1 = *v0;
  v2 = 0x69446E6565726373;
  if (v1 == 3)
  {
    v2 = 0xD000000000000015;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000013;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0xD000000000000013;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_264D46F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264D4D03C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264D46F70(uint64_t a1)
{
  v2 = sub_264D4B738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264D46FAC(uint64_t a1)
{
  v2 = sub_264D4B738();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t STExpressIntroduction.SettingsDefaults.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC958, &qword_264D709A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D4B738();
  sub_264D6F058();
  v12 = *(v3 + 8);
  v20 = *v3;
  v11 = v20;
  v21 = v12;
  v19 = 0;
  sub_264D443A8();
  v13 = v11;
  sub_264D6EEC8();
  if (v2)
  {
  }

  else
  {

    LOWORD(v20) = *(v3 + 9);
    v19 = 1;
    sub_264D443FC();
    sub_264D6EEC8();
    v14 = *(v3 + 11);
    BYTE2(v20) = *(v3 + 13);
    LOWORD(v20) = v14;
    v19 = 2;
    sub_264D44450();
    sub_264D6EEC8();
    v15 = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
    v16 = *(v15 + 28);
    LOBYTE(v20) = 3;
    type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0);
    sub_264D4B78C(&qword_27FFAC808, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings);
    sub_264D6EEC8();
    LOWORD(v20) = *(v3 + *(v15 + 32));
    v19 = 4;
    sub_264D444A4();
    sub_264D6EEC8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t STExpressIntroduction.SettingsDefaults.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC950, &qword_264D709A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC968, &qword_264D709B0);
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 0;
  v14[8] = 0;
  *(v14 + 9) = 131074;
  v14[13] = 0;
  v15 = *(v11 + 36);
  v16 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0);
  (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
  v17 = *(v11 + 40);
  *&v14[v17] = 2;
  v18 = a1[3];
  v19 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v18);
  sub_264D4B738();
  v20 = v35;
  sub_264D6F038();
  if (!v20)
  {
    v35 = v16;
    v29 = v17;
    v30 = v15;
    v21 = v33;
    v39 = 0;
    sub_264D445A0();
    v22 = v34;
    sub_264D6EE48();
    v23 = v37;
    v24 = v38;

    *v14 = v23;
    v14[8] = v24;
    v39 = 1;
    sub_264D445F4();
    sub_264D6EE48();
    *(v14 + 9) = v37;
    v39 = 2;
    sub_264D44648();
    sub_264D6EE48();
    v26 = v21;
    v27 = v37;
    v14[13] = BYTE2(v37);
    *(v14 + 11) = v27;
    LOBYTE(v37) = 3;
    sub_264D4B78C(&qword_27FFAC848, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings);
    v28 = v32;
    sub_264D6EE48();
    sub_264D4B118(v28, &v14[v30], &qword_27FFAC950, &qword_264D709A0);
    v39 = 4;
    sub_264D446E0();
    sub_264D6EE48();
    (*(v26 + 8))(v9, v22);
    *&v14[v29] = v37;
    sub_264D4BA74(v14, v31, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  __swift_destroy_boxed_opaque_existential_0(v36);
  return sub_264D4BADC(v14, type metadata accessor for STExpressIntroduction.SettingsDefaults);
}

void STExpressIntroduction.ContentRestrictionsSettings.init(isEnabled:strictPolicy:restrictionByKey:)(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  sub_264D3C5A8(a3);

  v9 = sub_264D6E928();

  v10 = [v8 restrictionsWithIsEnabled:a1 & 1 valueByAgePresetKey:v9];

  *a4 = v10;
  *(a4 + 8) = a2;
}

void *STExpressIntroduction.ContentRestrictionsSettings.init(restrictionsContainer:strictPolicy:)@<X0>(void *result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

void sub_264D478D0(unsigned __int8 *a1, id *a2)
{
  v3 = *a1;
  v4 = [*a2 restrictionsMutableCopy];
  [v4 setIsEnabled_];
  v5 = [v4 restrictionsImmutableCopy];

  *a2 = v5;
}

void STExpressIntroduction.ContentRestrictionsSettings.isEnabled.setter(char a1)
{
  v3 = [*v1 restrictionsMutableCopy];
  [v3 setIsEnabled_];
  v4 = [v3 restrictionsImmutableCopy];

  *v1 = v4;
}

void (*STExpressIntroduction.ContentRestrictionsSettings.isEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = [v3 isEnabled];
  return sub_264D47A54;
}

void sub_264D47A54(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  v3 = [*(a1 + 8) restrictionsMutableCopy];
  [v3 setIsEnabled_];
  v4 = [v3 restrictionsImmutableCopy];

  *v1 = v4;
}

uint64_t (*STExpressIntroduction.ContentRestrictionsSettings.restrictions.modify(void **a1))()
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = v1;
  v3 = v2;
  return sub_264D47B24;
}

id STExpressIntroduction.ContentRestrictionsSettings.restrictionsContainer.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void STExpressIntroduction.ContentRestrictionsSettings.restrictionsContainer.setter(void **a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t (*STExpressIntroduction.ContentRestrictionsSettings.restrictionsContainer.modify(void **a1))()
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = v1;
  v3 = v2;
  return sub_264D4D53C;
}

void sub_264D47BAC(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *v2;
  if (a2)
  {
    v5 = v3;

    *v2 = v5;
  }

  else
  {

    *v2 = v3;
  }
}

uint64_t STExpressIntroduction.ContentRestrictionsSettings.restrictionByKey.getter()
{
  v1 = [objc_opt_self() numberByAgePresetKeyForRestrictions_];
  sub_264D37624();
  v2 = sub_264D6E938();

  return v2;
}

void sub_264D47C9C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() numberByAgePresetKeyForRestrictions_];
  sub_264D37624();
  v4 = sub_264D6E938();

  *a2 = v4;
}

void sub_264D47D20(uint64_t *a1, id *a2)
{
  v3 = *a1;
  v4 = objc_opt_self();
  v5 = [*a2 isEnabled];
  sub_264D3C5A8(v3);
  v6 = sub_264D6E928();

  v7 = [v4 restrictionsWithIsEnabled:v5 valueByAgePresetKey:v6];

  *a2 = v7;
}

void STExpressIntroduction.ContentRestrictionsSettings.restrictionByKey.setter(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [*v1 isEnabled];
  sub_264D3C5A8(a1);

  v5 = sub_264D6E928();

  v6 = [v3 restrictionsWithIsEnabled:v4 valueByAgePresetKey:v5];

  *v1 = v6;
}

void (*STExpressIntroduction.ContentRestrictionsSettings.restrictionByKey.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  v4 = objc_opt_self();
  a1[3] = v4;
  v5 = [v4 numberByAgePresetKeyForRestrictions_];
  sub_264D37624();
  v6 = sub_264D6E938();

  *a1 = v6;
  return sub_264D47F58;
}

void sub_264D47F58(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  if (a2)
  {
    v6 = *a1;

    v7 = [v3 isEnabled];
    sub_264D3C5A8(v4);

    v8 = sub_264D6E928();

    v9 = [v2 restrictionsWithIsEnabled:v7 valueByAgePresetKey:v8];

    *v5 = v9;
  }

  else
  {
    v10 = [*(a1 + 16) isEnabled];
    sub_264D3C5A8(v4);

    v11 = sub_264D6E928();

    v12 = [v2 restrictionsWithIsEnabled:v10 valueByAgePresetKey:v11];

    *v5 = v12;
  }
}

unint64_t sub_264D480D8()
{
  if (*v0)
  {
    result = 0x6F50746369727473;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t sub_264D48120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000264D72A20 == a2 || (sub_264D6EF28() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F50746369727473 && a2 == 0xEC0000007963696CLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_264D6EF28();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_264D4820C(uint64_t a1)
{
  v2 = sub_264D4B7D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264D48248(uint64_t a1)
{
  v2 = sub_264D4B7D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t STExpressIntroduction.ContentRestrictionsSettings.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC970, &qword_264D709B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v13[2] = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D4B7D4();
  v11 = v9;
  sub_264D6F058();
  v16 = v11;
  v15 = 0;
  sub_264D4B828();
  sub_264D6EF08();

  if (!v2)
  {
    v14 = 1;
    sub_264D6EEE8();
  }

  return (*(v5 + 8))(v8, v4);
}

void STExpressIntroduction.ContentRestrictionsSettings.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC988, &qword_264D709C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D4B7D4();
  sub_264D6F038();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v14[15] = 0;
    sub_264D4B87C();
    sub_264D6EE88();
    v11 = v15;
    v14[14] = 1;
    v12 = sub_264D6EE68();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v12 & 1;
    v13 = v11;
    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_264D48638(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return [*a1 isEqual_] & (v2 ^ v3 ^ 1);
}

uint64_t sub_264D486C0(uint64_t a1)
{
  v2 = sub_264D4B8D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264D486FC(uint64_t a1)
{
  v2 = sub_264D4B8D0();

  return MEMORY[0x2821FE720](a1, v2);
}

ScreenTimeSwift::STExpressIntroduction::CommunicationLimitsSettings::LimitType_optional __swiftcall STExpressIntroduction.CommunicationLimitsSettings.LimitType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264D6EE08();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t STExpressIntroduction.CommunicationLimitsSettings.LimitType.rawValue.getter()
{
  v1 = 0x61746E6F43796E61;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_264D488AC()
{
  v1 = *v0;
  sub_264D6EFC8();
  sub_264D6E9B8();

  return sub_264D6F008();
}

uint64_t sub_264D48954()
{
  *v0;
  *v0;
  sub_264D6E9B8();
}

uint64_t sub_264D489E8()
{
  v1 = *v0;
  sub_264D6EFC8();
  sub_264D6E9B8();

  return sub_264D6F008();
}

void sub_264D48A98(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007463;
  v4 = 0x61746E6F43796E61;
  if (v2 != 1)
  {
    v4 = 0x726568746FLL;
    v3 = 0xE500000000000000;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (v5)
  {
    v3 = 0x8000000264D726D0;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_264D48BAC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000007463;
  v3 = 0x61746E6F43796E61;
  v4 = *a1;
  v5 = 0xE500000000000000;
  v6 = 0x726568746FLL;
  if (v4 == 1)
  {
    v6 = 0x61746E6F43796E61;
    v5 = 0xEA00000000007463;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x8000000264D726D0;
  }

  if (*a2 != 1)
  {
    v3 = 0x726568746FLL;
    v2 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000264D726D0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264D6EF28();
  }

  return v11 & 1;
}

uint64_t sub_264D48D38()
{
  v1 = 0x6F50746369727473;
  if (*v0 != 1)
  {
    v1 = 0x70795474696D696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C62616E457369;
  }
}

uint64_t sub_264D48D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264D4D204(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264D48DC4(uint64_t a1)
{
  v2 = sub_264D4B924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264D48E00(uint64_t a1)
{
  v2 = sub_264D4B924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t STExpressIntroduction.CommunicationLimitsSettings.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC9B0, &qword_264D709D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v15 = v1[1];
  v14 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D4B924();
  sub_264D6F058();
  v19 = 0;
  sub_264D6EEE8();
  if (!v2)
  {
    v12 = v14;
    v18 = 1;
    sub_264D6EEE8();
    v17 = v12;
    v16 = 2;
    sub_264D4B978();
    sub_264D6EF08();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t STExpressIntroduction.CommunicationLimitsSettings.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC9C8, &qword_264D709E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D4B924();
  sub_264D6F038();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_264D6EE68();
    v18 = 1;
    v12 = sub_264D6EE68();
    v16 = 2;
    sub_264D4B9CC();
    sub_264D6EE88();
    (*(v6 + 8))(v9, v5);
    v14 = v17;
    *a2 = v11 & 1;
    a2[1] = v12 & 1;
    a2[2] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264D6E778();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings.startTime.setter(uint64_t a1)
{
  v3 = sub_264D6E778();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0) + 20);
  v4 = sub_264D6E778();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings.endTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0) + 20);
  v4 = sub_264D6E778();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings.== infix(_:_:)()
{
  if (MEMORY[0x26674C950]())
  {
    v0 = *(type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0) + 20);

    JUMPOUT(0x26674C950);
  }

  return 0;
}

uint64_t sub_264D494E8()
{
  if (*v0)
  {
    result = 0x656D6954646E65;
  }

  else
  {
    result = 0x6D69547472617473;
  }

  *v0;
  return result;
}

uint64_t sub_264D49528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_264D6EF28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264D6EF28();

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

uint64_t sub_264D4960C(uint64_t a1)
{
  v2 = sub_264D4BA20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264D49648(uint64_t a1)
{
  v2 = sub_264D4BA20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC9D8, &qword_264D709E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D4BA20();
  sub_264D6F058();
  v11[15] = 0;
  sub_264D6E778();
  sub_264D4B78C(&qword_27FFAC9E8, MEMORY[0x277CC8990]);
  sub_264D6EF08();
  if (!v1)
  {
    v9 = *(type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0) + 20);
    v11[14] = 1;
    sub_264D6EF08();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v34 = sub_264D6E778();
  v30 = *(v34 - 8);
  v4 = *(v30 + 64);
  v5 = MEMORY[0x28223BE20](v34);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC9F0, &qword_264D709F0);
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D4BA20();
  sub_264D6F038();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v14;
  v27 = v7;
  v28 = v17;
  v19 = v30;
  v36 = 0;
  sub_264D4B78C(&qword_27FFAC9F8, MEMORY[0x277CC8990]);
  v20 = v31;
  v21 = v32;
  sub_264D6EE88();
  v31 = *(v19 + 32);
  (v31)(v28, v20, v34);
  v35 = 1;
  v22 = v27;
  sub_264D6EE88();
  (*(v33 + 8))(v13, v21);
  v23 = v28;
  (v31)(&v28[*(v26 + 20)], v22, v34);
  sub_264D4BA74(v23, v29, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_264D4BADC(v23, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings);
}

uint64_t sub_264D49C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x26674C950]())
  {
    v4 = *(a3 + 20);

    JUMPOUT(0x26674C950);
  }

  return 0;
}

uint64_t STExpressIntroduction.AppAndWebsiteActivitySettings.init(isEnabled:strictPolicy:)@<X0>(char a1@<W0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC688, &qword_264D70960);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0);
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = *(type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0) + 24);
  v11(&a3[v12], 1, 1, v10);
  *a3 = a1;
  a3[1] = a2;
  return sub_264D4B118(v9, &a3[v12], &qword_27FFAC688, &qword_264D70960);
}

uint64_t sub_264D49EF8()
{
  v1 = 0x6F50746369727473;
  if (*v0 != 1)
  {
    v1 = 0x656D69746E776F64;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C62616E457369;
  }
}

uint64_t sub_264D49F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264D4D32C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264D49F88(uint64_t a1)
{
  v2 = sub_264D4BBA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264D49FC4(uint64_t a1)
{
  v2 = sub_264D4BBA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t STExpressIntroduction.AppAndWebsiteActivitySettings.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACA00, &qword_264D709F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D4BBA4();
  sub_264D6F058();
  v11 = *v3;
  v15[15] = 0;
  sub_264D6EEE8();
  if (!v2)
  {
    v13 = v3[1];
    v15[14] = 1;
    sub_264D6EEE8();
    v14 = *(type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0) + 24);
    v15[13] = 2;
    type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0);
    sub_264D4B78C(&qword_27FFACA10, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings);
    sub_264D6EEC8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t STExpressIntroduction.AppAndWebsiteActivitySettings.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC688, &qword_264D70960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACA18, &qword_264D70A00);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 32);
  v18 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0);
  v19 = *(*(v18 - 8) + 56);
  v27 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D4BBA4();
  sub_264D6F038();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_264D37A94(&v16[v27], &qword_27FFAC688, &qword_264D70960);
  }

  else
  {
    v21 = v25;
    v22 = v26;
    v30 = 0;
    *v16 = sub_264D6EE68() & 1;
    v29 = 1;
    v16[1] = sub_264D6EE68() & 1;
    v28 = 2;
    sub_264D4B78C(&qword_27FFACA20, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings);
    sub_264D6EE48();
    (*(v21 + 8))(v11, v22);
    sub_264D4B118(v7, &v16[v27], &qword_27FFAC688, &qword_264D70960);
    sub_264D4BA74(v16, v24, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_264D4BADC(v16, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings);
  }
}

uint64_t sub_264D4A614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C62616E457369 && a2 == 0xE900000000000064;
  if (v6 || (sub_264D6EF28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F50746369727473 && a2 == 0xEC0000007963696CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264D6EF28();

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

uint64_t sub_264D4A6FC(uint64_t a1)
{
  v2 = sub_264D4BBF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264D4A738(uint64_t a1)
{
  v2 = sub_264D4BBF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264D4A7B8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v15[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = *v4;
  v16 = v4[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  (v15[0])();
  sub_264D6F058();
  v18 = 0;
  v13 = v15[1];
  sub_264D6EEE8();
  if (!v13)
  {
    v17 = 1;
    sub_264D6EEE8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_264D4A98C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _BYTE *a5@<X8>)
{
  v19 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a4();
  sub_264D6F038();
  if (!v5)
  {
    v14 = v18;
    v13 = v19;
    v21 = 0;
    v15 = sub_264D6EE68();
    v20 = 1;
    v17 = sub_264D6EE68();
    (*(v14 + 8))(v11, v8);
    *v13 = v15 & 1;
    v13[1] = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t _s15ScreenTimeSwift21STExpressIntroductionO27CommunicationLimitsSettingsV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v3 = 0xEA00000000007463;
    v4 = 0x61746E6F43796E61;
    v5 = a1[2];
    v6 = 0xE500000000000000;
    v7 = 0x726568746FLL;
    if (v5 == 1)
    {
      v7 = 0x61746E6F43796E61;
      v6 = 0xEA00000000007463;
    }

    if (a1[2])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0xD000000000000014;
    }

    if (v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0x8000000264D726D0;
    }

    if (a2[2] != 1)
    {
      v4 = 0x726568746FLL;
      v3 = 0xE500000000000000;
    }

    if (a2[2])
    {
      v10 = v4;
    }

    else
    {
      v10 = 0xD000000000000014;
    }

    if (a2[2])
    {
      v11 = v3;
    }

    else
    {
      v11 = 0x8000000264D726D0;
    }

    if (v8 == v10 && v9 == v11)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_264D6EF28();
    }
  }

  return v2 & 1;
}

BOOL _s15ScreenTimeSwift21STExpressIntroductionO29AppAndWebsiteActivitySettingsV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC688, &qword_264D70960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACBA8, &qword_264D71B68);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v18 = v15;
  v19 = *(type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings(0) + 24);
  v20 = &a1[v19];
  v21 = *(v18 + 48);
  sub_264D4BB3C(v20, v17, &qword_27FFAC688, &qword_264D70960);
  sub_264D4BB3C(&a2[v19], &v17[v21], &qword_27FFAC688, &qword_264D70960);
  v22 = *(v5 + 48);
  if (v22(v17, 1, v4) == 1)
  {
    if (v22(&v17[v21], 1, v4) == 1)
    {
      sub_264D37A94(v17, &qword_27FFAC688, &qword_264D70960);
      return 1;
    }

    goto LABEL_9;
  }

  sub_264D4BB3C(v17, v12, &qword_27FFAC688, &qword_264D70960);
  if (v22(&v17[v21], 1, v4) == 1)
  {
    sub_264D4BADC(v12, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings);
LABEL_9:
    v24 = &qword_27FFACBA8;
    v25 = &qword_264D71B68;
LABEL_10:
    sub_264D37A94(v17, v24, v25);
    return 0;
  }

  sub_264D4D4A4(&v17[v21], v8, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings);
  if ((MEMORY[0x26674C950](v12, v8) & 1) == 0)
  {
    sub_264D4BADC(v8, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings);
    sub_264D4BADC(v12, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings);
    v24 = &qword_27FFAC688;
    v25 = &qword_264D70960;
    goto LABEL_10;
  }

  v26 = MEMORY[0x26674C950](&v12[*(v4 + 20)], &v8[*(v4 + 20)]);
  sub_264D4BADC(v8, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings);
  sub_264D4BADC(v12, type metadata accessor for STExpressIntroduction.AppAndWebsiteActivitySettings.DowntimeSettings);
  sub_264D37A94(v17, &qword_27FFAC688, &qword_264D70960);
  return (v26 & 1) != 0;
}