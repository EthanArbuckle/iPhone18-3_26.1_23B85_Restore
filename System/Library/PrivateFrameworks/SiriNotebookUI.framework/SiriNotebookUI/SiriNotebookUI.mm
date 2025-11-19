uint64_t sub_26845DF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3D94();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26845E008(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B3D94();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_26845E0C8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_26845E0EC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D618B10]();
  *a1 = result;
  return result;
}

uint64_t sub_26845E118(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x26D618B20](v2);
}

uint64_t sub_26845E144()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26845E194(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D2E8, &unk_2684B68E0);
  sub_2684B45B4();
  sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_2684B45B4();
  sub_2684B45B4();
  sub_2684B45B4();
  swift_getTupleTypeMetadata2();
  sub_2684B50F4();
  swift_getWitnessTable();
  sub_2684B4FA4();
  sub_2684B45B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D2F8, &qword_2684B8010);
  sub_2684B45B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D300, &unk_2684B68F0);
  sub_2684B45B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D2E0, &unk_2684B85F0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26846ACF0(&qword_28027D308, &qword_28027D2F8, &qword_2684B8010);
  swift_getWitnessTable();
  sub_26846ACF0(&qword_28027D310, &qword_28027D300, &unk_2684B68F0);
  swift_getWitnessTable();
  sub_26846ACF0(&qword_28027D318, &qword_28027D2E0, &unk_2684B85F0);
  swift_getOpaqueTypeMetadata2();
  sub_2684B45B4();
  sub_2684B45B4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_26846B18C();
  return swift_getWitnessTable();
}

uint64_t sub_26845E544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B40B4();
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

uint64_t sub_26845E610(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B40B4();
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

uint64_t sub_26845E6E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D378, &qword_2684B6A78);
  sub_2684B3A24();
  sub_26846DA14();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26845E778(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3DC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26845E7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3DC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26845E854()
{
  v1 = *(type metadata accessor for SetTaskAttribute3pSnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_2684B3DC4();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

double sub_26845E938@<D0>(_OWORD *a1@<X8>)
{
  sub_26846EEA4();
  sub_2684B4804();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_26845E98C@<X0>(void *a1@<X8>)
{
  sub_26846EE50();
  result = sub_2684B4804();
  *a1 = v3;
  return result;
}

uint64_t sub_26845E9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B4084();
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

uint64_t sub_26845EAA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B4084();
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

uint64_t sub_26845EB64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3AD4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26845EBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3AD4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26845EC94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26845ECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2684B4EE4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_26845EE10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2684B4EE4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_26845EF30()
{
  v1 = type metadata accessor for CompletionButton();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = *(v3 + 1);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150) + 32);
  v7 = sub_2684B41E4();
  (*(*(v7 - 8) + 8))(&v3[v6], v7);
  v8 = v1[5];
  v9 = sub_2684B4EE4();
  (*(*(v9 - 8) + 8))(&v3[v8], v9);
  v10 = *&v3[v1[7] + 8];

  v11 = &v3[v1[8]];
  if (v11[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v12 = *v11;
  }

  sub_26846B1E0(*&v3[v1[9]], v3[v1[9] + 8]);

  return swift_deallocObject();
}

uint64_t sub_26845F0C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D658, &qword_2684B71D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26845F158()
{
  v1 = type metadata accessor for CompletionButton();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + v2);

  v6 = *(v0 + v2 + 8);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150) + 32);
  v8 = sub_2684B41E4();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  v9 = v1[5];
  v10 = sub_2684B4EE4();
  (*(*(v10 - 8) + 8))(v0 + v2 + v9, v10);
  v11 = *(v0 + v2 + v1[7] + 8);

  v12 = v0 + v2 + v1[8];
  if (*(v12 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v13 = *v12;
  }

  sub_26846B1E0(*(v0 + v2 + v1[9]), *(v0 + v2 + v1[9] + 8));

  return swift_deallocObject();
}

uint64_t sub_26845F31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B4084();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26845F418(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B4084();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26845F52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D710, &qword_2684B7418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26845F59C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D710, &qword_2684B7418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26845F64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3FB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2684B52B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26845F73C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3FB4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2684B52B4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26845F848(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B41E4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26845F8B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B41E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26845F924@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2684B4784();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26845F990()
{
  v1 = sub_2684B37F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for LinkAttachmentViewInternal(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v9 = sub_2684B4034();
  (*(*(v9 - 8) + 8))(v0 + v6, v9);

  return swift_deallocObject();
}

uint64_t sub_26845FB04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26845FBC8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_26845FC10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684B46C4();
  *a1 = result;
  return result;
}

uint64_t sub_26845FC3C(uint64_t *a1)
{
  v1 = *a1;

  return sub_2684B46D4();
}

uint64_t sub_26845FCAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D968, &qword_2684B7C08);
  sub_26847C330();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26845FD14()
{
  v8 = *(v0 + 16);
  v9 = *(v0 + 32);
  v1 = (type metadata accessor for DIButton() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  (*(*(v8 - 8) + 8))(v3);
  v4 = *(v3 + v1[15] + 8);

  v5 = v1[16];
  v6 = sub_2684B52B4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  return swift_deallocObject();
}

uint64_t sub_26845FE44(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  sub_2684B4F84();

  return swift_getWitnessTable();
}

uint64_t sub_26845FE90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_2684B52B4();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_26845FF48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_2684B52B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26845FFEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268460030()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268460068()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA68, &unk_2684B7D50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA58, &qword_2684B7D40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA60, &qword_2684B7D48);
  sub_26847E17C();
  swift_getOpaqueTypeConformance2();
  sub_26846ACF0(&qword_28027DAB8, &qword_28027DA58, &qword_2684B7D40);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_268460170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B41E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB60, &unk_2684B7DF0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26846026C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B41E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB60, &unk_2684B7DF0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_268460374()
{
  sub_26846D468(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_2684603E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3EF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_26846050C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3EF4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_268460620@<X0>(uint64_t a1@<X8>)
{
  result = sub_2684B47A4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_268460654(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_2684B47B4();
}

uint64_t sub_2684606C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26846071C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DC98, &qword_2684B81B8);
  sub_2684817A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_268460780(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3924();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2684607EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3924();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2684608A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7D0, &qword_2684B7560);
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

uint64_t sub_26846097C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7D0, &qword_2684B7560);
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

uint64_t sub_268460A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 96);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_268460B5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 96) = (a2 - 1);
  }

  return result;
}

uint64_t sub_268460C78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684B41A4();
  *a1 = result;
  return result;
}

uint64_t sub_268460CA4(uint64_t *a1)
{
  v1 = *a1;

  return sub_2684B41B4();
}

uint64_t sub_268460CE0@<X0>(void *a1@<X8>)
{
  result = sub_2684B46A4();
  *a1 = v3;
  return result;
}

uint64_t sub_268460D34()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DDE0, &qword_2684B8620);
  sub_268488508();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_268460D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3D24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2684B52B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_268460E8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3D24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2684B52B4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_268460F8C()
{
  sub_26846D468(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_268461004()
{
  v1 = sub_2684B40B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for ReminderComposeSnippet() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v8 = sub_2684B3D24();
  (*(*(v8 - 8) + 8))(v0 + v6, v8);
  v9 = v5[7];
  v10 = sub_2684B52B4();
  (*(*(v10 - 8) + 8))(v0 + v6 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_268461208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
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

uint64_t sub_2684612D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
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

uint64_t sub_26846139C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684B47C4();
  *a1 = result;
  return result;
}

uint64_t sub_2684613C8(uint64_t *a1)
{
  v1 = *a1;

  return sub_2684B47D4();
}

uint64_t sub_2684613F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E220, &qword_2684B8C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268461460()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E238, &qword_2684B8C78);
  sub_2684B48F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E230, &qword_2684B8C70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E228, &qword_2684B8C68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E220, &qword_2684B8C60);
  sub_268494514();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2684947B8(&qword_28027E280, MEMORY[0x277CDDF20]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_268461604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3924();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2684B3974();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 2;
  if (v14 >= 2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268461718(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3924();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2684B3974();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_26846186C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2684618E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3924();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_2684B3974();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_2684619FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3924();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2684B3974();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_268461B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3DD4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_268461B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3DD4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_268461C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B4184();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_268461CF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B4184();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_268461DAC()
{
  v1 = (type metadata accessor for AppLinkView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = sub_2684B4184();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_26845E0C8(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v5 = v3 + v1[8];
  if (*v5)
  {

    v6 = *(v5 + 16);

    v7 = *(v5 + 32);
  }

  v8 = *(v5 + 40);

  return swift_deallocObject();
}

uint64_t sub_268461EC8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_268461F10()
{

  return swift_deallocObject();
}

uint64_t sub_268461F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3924();
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

uint64_t sub_268462018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B3924();
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

uint64_t sub_268462104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3B24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2684B52B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2684621F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3B24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2684B52B4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26846233C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3E74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_2684B52B4();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_268462448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3E74();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2684B52B4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_268462554()
{
  v1 = (type metadata accessor for RemindersAppPunchoutModifier() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = sub_2684B3E74();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v1[7];
  v6 = sub_2684B52B4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  sub_26846B1E0(*(v3 + v1[8]), *(v3 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t sub_268462688()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E560, &qword_2684B9920);
  sub_26849C64C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2684626EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3CF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_268462758(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3CF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2684627FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2684B52B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2684628A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2684B52B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_268462950()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_26846298C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2684629C4()
{
  sub_26846D468(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_268462A08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  swift_getTupleTypeMetadata2();
  sub_2684B5664();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DAB0, &unk_2684B9A90);
  sub_2684B45B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA58, &qword_2684B7D40);
  sub_26846ACF0(&qword_28027DAA8, &qword_28027DAB0, &unk_2684B9A90);
  swift_getWitnessTable();
  sub_26846ACF0(&qword_28027DAB8, &qword_28027DA58, &qword_2684B7D40);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  sub_2684B5034();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_2684B5254();
  sub_2684B45B4();
  swift_getWitnessTable();
  sub_26846B18C();
  return swift_getWitnessTable();
}

uint64_t sub_268462CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3CF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_268462DAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B3CF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t sub_268462E68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684B4724();
  *a1 = result;
  return result;
}

uint64_t sub_268462E94(uint64_t *a1)
{
  v1 = *a1;

  return sub_2684B4734();
}

uint64_t sub_268462EC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E748, &qword_2684B9D48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268462F30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E750, &qword_2684B9D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268462FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3B84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_268463020(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3B84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_268463090()
{
  v1 = *(type metadata accessor for CreateNote3pSnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_2684B3B84();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_268463174()
{
  sub_26846D468(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_2684631BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B40F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2684632B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B40F4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2684633D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3E64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 80);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_268463494(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B3E64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 80) = (a2 - 1);
  }

  return result;
}

uint64_t sub_268463550()
{
  v1 = sub_2684B3CF4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for ReminderSearchResult1pSnippet(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v8 = sub_2684B3E64();
  (*(*(v8 - 8) + 8))(v0 + v6, v8);
  v9 = v0 + v6 + v5[7];
  sub_26845E0C8(*v9, *(v9 + 8));
  sub_26845E0C8(*(v9 + 16), *(v9 + 24));
  sub_26845E0C8(*(v9 + 32), *(v9 + 40));
  sub_26845E0C8(*(v9 + 48), *(v9 + 56));
  v10 = *(v9 + 88);

  return swift_deallocObject();
}

uint64_t sub_2684636F0@<X0>(_BYTE *a1@<X8>)
{
  sub_2684A6B08();
  result = sub_2684B4804();
  *a1 = v3;
  return result;
}

uint64_t sub_268463740(char *a1)
{
  v2 = *a1;
  sub_2684A6B08();
  return sub_2684B4814();
}

uint64_t sub_26846379C()
{
  v1 = (type metadata accessor for ReminderSearchResult1pSnippet(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2684B3CF4();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_2684B3E64();
  (*(*(v8 - 8) + 8))(v0 + v2, v8);
  v9 = v0 + v2 + v1[7];
  sub_26845E0C8(*v9, *(v9 + 8));
  sub_26845E0C8(*(v9 + 16), *(v9 + 24));
  sub_26845E0C8(*(v9 + 32), *(v9 + 40));
  sub_26845E0C8(*(v9 + 48), *(v9 + 56));
  v10 = *(v9 + 88);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_268463944()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26846397C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3E34();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2684639E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3E34();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_268463A5C()
{
  v1 = *(type metadata accessor for ReminderSearchResult1pSnippet.SectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_2684B3E34();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_268463B78()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_268463BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3CE4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_268463C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B3CE4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_268463CAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268463CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3E34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_268463DE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2684B3E34();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_268463EF8@<X0>(_BYTE *a1@<X8>)
{
  sub_26849A6FC();
  result = sub_2684B4804();
  *a1 = v3;
  return result;
}

uint64_t sub_268463F48(char *a1)
{
  v2 = *a1;
  sub_26849A6FC();
  return sub_2684B4814();
}

uint64_t sub_26846401C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027ED98, &unk_2684BADF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684640D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3CF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_268464190(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B3CF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_268464270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B3C84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 80);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_268464330(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2684B3C84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 80) = (a2 - 1);
  }

  return result;
}

uint64_t sub_268464408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE80, &qword_2684BB198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268464478(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE80, &qword_2684BB198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268464550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderEnvironmentSetupModifier();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2684B45B4();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = v16 - v11;
  sub_268464850(v7);
  MEMORY[0x26D6191B0](v7, a1, v4, a2);
  sub_268467AAC(v7, type metadata accessor for ReminderEnvironmentSetupModifier);
  v13 = sub_268466FB0(&qword_28027D008, type metadata accessor for ReminderEnvironmentSetupModifier);
  v16[0] = a2;
  v16[1] = v13;
  swift_getWitnessTable();
  v14 = sub_2684B4BC4();
  (*(v9 + 8))(v12, v8);
  return v14;
}

uint64_t sub_268464730()
{
  sub_2684B5A64();
  MEMORY[0x26D619E40](0);
  return sub_2684B5A94();
}

uint64_t sub_26846479C()
{
  sub_2684B5A64();
  MEMORY[0x26D619E40](0);
  return sub_2684B5A94();
}

uint64_t sub_268464804@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_268464850@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D070, &qword_2684B6308) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v12 - v3;
  v5 = [objc_opt_self() sharedPreferences];
  v6 = [v5 languageCode];

  if (v6)
  {
    sub_2684B5554();

    sub_2684B38A4();
    v7 = sub_2684B3924();
    v8 = *(v7 - 8);
    (*(v8 + 56))(v4, 0, 1, v7);
    return (*(v8 + 32))(a1, v4, v7);
  }

  else
  {
    v10 = sub_2684B3924();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v4, 1, 1, v10);
    sub_2684B38E4();
    result = (*(v11 + 48))(v4, 1, v10);
    if (result != 1)
    {
      return sub_268467A4C(v4, &qword_28027D070, &qword_2684B6308);
    }
  }

  return result;
}

uint64_t sub_268464A64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684B4664();
  *a1 = result;
  return result;
}

uint64_t sub_268464AB8@<X0>(_BYTE *a1@<X8>)
{
  sub_268467BB4();
  result = sub_2684B4804();
  *a1 = v3;
  return result;
}

uint64_t sub_268464B08(char *a1)
{
  v2 = *a1;
  sub_268467BB4();
  return sub_2684B4814();
}

uint64_t sub_268464B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2684B4624();
  *a1 = result & 1;
  return result;
}

uint64_t sub_268464BAC@<X0>(void *a1@<X8>)
{
  result = sub_2684B4644();
  *a1 = v3;
  return result;
}

uint64_t sub_268464C00()
{
  v1 = *v0;
  sub_2684B5A64();
  MEMORY[0x26D619E40](v1);
  return sub_2684B5A94();
}

uint64_t sub_268464C74()
{
  v1 = *v0;
  sub_2684B5A64();
  MEMORY[0x26D619E40](v1);
  return sub_2684B5A94();
}

void *sub_268464CCC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_268464D1C@<D0>(void (*a1)(void)@<X1>, _OWORD *a2@<X8>)
{
  a1();
  sub_2684B53E4();
  result = *&v4;
  *a2 = v4;
  return result;
}

char *sub_268464D78(uint64_t a1)
{
  v229 = a1;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF50, &qword_2684B61F8);
  v1 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v165 = &v162 - v2;
  v3 = type metadata accessor for SimpleConfirmationSnippetView();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v163 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_2684B3DD4();
  v162 = *(v164 - 8);
  v6 = *(v162 + 64);
  MEMORY[0x28223BE20](v164);
  v172 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF58, &qword_2684B6200);
  v8 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v170 = &v162 - v9;
  v10 = type metadata accessor for SearchForNotebookItems3pSnippet(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v168 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_2684B3CE4();
  v167 = *(v169 - 8);
  v13 = *(v167 + 64);
  MEMORY[0x28223BE20](v169);
  v178 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF60, &qword_2684B6208);
  v15 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v176 = &v162 - v16;
  v173 = type metadata accessor for NoteSearchResult1pSnippet();
  v17 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v175 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_2684B3D94();
  v174 = *(v185 - 8);
  v19 = *(v174 + 64);
  MEMORY[0x28223BE20](v185);
  v184 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF68, &qword_2684B6210);
  v21 = *(*(v190 - 8) + 64);
  MEMORY[0x28223BE20](v190);
  v189 = &v162 - v22;
  v197 = sub_2684B3AF4();
  v188 = *(v197 - 8);
  v23 = *(v188 + 64);
  MEMORY[0x28223BE20](v197);
  v187 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF70, &qword_2684B6218);
  v25 = *(*(v196 - 8) + 64);
  MEMORY[0x28223BE20](v196);
  v195 = &v162 - v26;
  v27 = type metadata accessor for SetTaskAttribute3pSnippet();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v193 = &v162 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_2684B3DC4();
  v192 = *(v194 - 8);
  v30 = *(v192 + 64);
  MEMORY[0x28223BE20](v194);
  v191 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF78, &qword_2684B6220);
  v32 = *(*(v203 - 8) + 64);
  MEMORY[0x28223BE20](v203);
  v202 = &v162 - v33;
  v34 = type metadata accessor for AddTasks3pSnippet();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v200 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_2684B3AD4();
  v199 = *(v201 - 8);
  v37 = *(v199 + 64);
  MEMORY[0x28223BE20](v201);
  v198 = &v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF80, &qword_2684B6228);
  v39 = *(*(v217 - 8) + 64);
  MEMORY[0x28223BE20](v217);
  v216 = &v162 - v40;
  v211 = type metadata accessor for ReminderSearchResult1pSnippet(0);
  v41 = *(*(v211 - 8) + 64);
  MEMORY[0x28223BE20](v211);
  v214 = &v162 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_2684B3E64();
  v213 = *(v215 - 8);
  v43 = *(v213 + 64);
  MEMORY[0x28223BE20](v215);
  v212 = &v162 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF88, &qword_2684B6230);
  v45 = *(*(v224 - 8) + 64);
  MEMORY[0x28223BE20](v224);
  v223 = &v162 - v46;
  v218 = type metadata accessor for ReminderDetail1pSnippet();
  v47 = *(*(v218 - 8) + 64);
  MEMORY[0x28223BE20](v218);
  v221 = &v162 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_2684B3C84();
  v220 = *(v222 - 8);
  v49 = *(v220 + 64);
  MEMORY[0x28223BE20](v222);
  v219 = &v162 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF90, &qword_2684B6238);
  v51 = *(*(v210 - 8) + 64);
  MEMORY[0x28223BE20](v210);
  v209 = &v162 - v52;
  v204 = type metadata accessor for ReminderComposeSnippet();
  v53 = *(*(v204 - 8) + 64);
  MEMORY[0x28223BE20](v204);
  v207 = &v162 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_2684B3D24();
  v206 = *(v208 - 8);
  v55 = *(v206 + 64);
  MEMORY[0x28223BE20](v208);
  v205 = &v162 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2684B3C54();
  v226 = *(v57 - 8);
  v227 = v57;
  v58 = *(v226 + 64);
  MEMORY[0x28223BE20](v57);
  v225 = &v162 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CF98, &qword_2684B6240);
  v60 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v183);
  v182 = &v162 - v61;
  Note3pSnippet = type metadata accessor for CreateNote3pSnippet();
  v63 = *(*(Note3pSnippet - 8) + 64);
  MEMORY[0x28223BE20](Note3pSnippet - 8);
  v180 = &v162 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_2684B3B84();
  v179 = *(v181 - 8);
  v65 = *(v179 + 64);
  MEMORY[0x28223BE20](v181);
  v186 = &v162 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027CFA0, &qword_2684B6248);
  v67 = *(*(v228 - 8) + 64);
  MEMORY[0x28223BE20](v228);
  v69 = &v162 - v68;
  v70 = type metadata accessor for AppPunchoutSnippet();
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v73 = &v162 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2684B3B24();
  v75 = *(v74 - 8);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  v78 = &v162 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2684B41F4();
  v80 = *(v79 - 8);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  v83 = &v162 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v80 + 16))(v83, v229, v79);
  v84 = (*(v80 + 88))(v83, v79);
  if (v84 == *MEMORY[0x277D5DFE0])
  {
    (*(v80 + 96))(v83, v79);
    (*(v75 + 32))(v78, v83, v74);
    (*(v75 + 16))(v73, v78, v74);
    v85 = &v73[*(v70 + 20)];
    sub_2684B52A4();
    v86 = &v69[*(v228 + 36)];
    sub_268464850(v86);
    v229 = *(type metadata accessor for NotebookEnvironmentSetupModifier() + 20);
    v87 = [objc_opt_self() standardUserDefaults];
    v88 = sub_2684B5544();
    v89 = [v87 BOOLForKey_];

    *(v86 + v229) = v89;
    sub_2684678F8(v73, v69, type metadata accessor for AppPunchoutSnippet);
    sub_268467960();
    v83 = sub_2684B4BC4();
    sub_268467A4C(v69, &qword_28027CFA0, &qword_2684B6248);
    sub_268467AAC(v73, type metadata accessor for AppPunchoutSnippet);
    (*(v75 + 8))(v78, v74);
    return v83;
  }

  if (v84 == *MEMORY[0x277D5E0A8])
  {
    (*(v80 + 96))(v83, v79);
    v91 = v225;
    v90 = v226;
    v92 = v227;
    (*(v226 + 32))(v225, v83, v227);
    sub_26849D39C(&v230);
    v93 = v231;
    v94 = v232;
    __swift_project_boxed_opaque_existential_1(&v230, v231);
    v83 = sub_268464550(v93, v94);
    (*(v90 + 8))(v91, v92);
    __swift_destroy_boxed_opaque_existential_1(&v230);
    return v83;
  }

  if (v84 == *MEMORY[0x277D5E0B0])
  {
    (*(v80 + 96))(v83, v79);
    v97 = v219;
    v96 = v220;
    v98 = v222;
    (*(v220 + 32))(v219, v83, v222);
    v99 = v221;
    (*(v96 + 16))(v221, v97, v98);
    v100 = v218;
    v101 = v99 + *(v218 + 20);
    *v101 = swift_getKeyPath();
    *(v101 + 8) = 0;
    *(v101 + 16) = swift_getKeyPath();
    *(v101 + 24) = 0;
    *(v101 + 32) = swift_getKeyPath();
    *(v101 + 40) = 0;
    *(v101 + 48) = swift_getKeyPath();
    *(v101 + 56) = 0;
    *(v101 + 64) = xmmword_2684B6170;
    *(v101 + 80) = sub_268464CDC;
    *(v101 + 88) = 0;
    *(v101 + 96) = xmmword_2684B6170;
    v102 = v99 + *(v100 + 24);
    *v102 = swift_getKeyPath();
    *(v102 + 8) = 0;
    v103 = v223;
    sub_268464850(&v223[*(v224 + 36)]);
    sub_2684678F8(v99, v103, type metadata accessor for ReminderDetail1pSnippet);
    sub_2684675A4();
    v83 = sub_2684B4BC4();
    sub_268467A4C(v103, &qword_28027CF88, &qword_2684B6230);
    v104 = type metadata accessor for ReminderDetail1pSnippet;
LABEL_10:
    sub_268467AAC(v99, v104);
    (*(v96 + 8))(v97, v98);
    return v83;
  }

  if (v84 == *MEMORY[0x277D5E128])
  {
    (*(v80 + 96))(v83, v79);
    v96 = v213;
    v97 = v212;
    v98 = v215;
    (*(v213 + 32))(v212, v83, v215);
    v99 = v214;
    (*(v96 + 16))(v214, v97, v98);
    v105 = v99 + *(v211 + 20);
    *v105 = swift_getKeyPath();
    *(v105 + 8) = 0;
    *(v105 + 16) = swift_getKeyPath();
    *(v105 + 24) = 0;
    *(v105 + 32) = swift_getKeyPath();
    *(v105 + 40) = 0;
    *(v105 + 48) = swift_getKeyPath();
    *(v105 + 56) = 0;
    *(v105 + 64) = xmmword_2684B6170;
    *(v105 + 80) = sub_268464CFC;
    *(v105 + 88) = 0;
    *(v105 + 96) = xmmword_2684B6170;
    v106 = v216;
    sub_268464850(&v216[*(v217 + 36)]);
    sub_2684678F8(v99, v106, type metadata accessor for ReminderSearchResult1pSnippet);
    sub_2684674B8();
    v83 = sub_2684B4BC4();
    sub_268467A4C(v106, &qword_28027CF80, &qword_2684B6228);
    v104 = type metadata accessor for ReminderSearchResult1pSnippet;
    goto LABEL_10;
  }

  if (v84 == *MEMORY[0x277D5E0C0])
  {
    (*(v80 + 96))(v83, v79);
    v96 = v206;
    v97 = v205;
    v98 = v208;
    (*(v206 + 32))(v205, v83, v208);
    v99 = v207;
    (*(v96 + 16))(v207, v97, v98);
    v107 = v99 + *(v204 + 20);
    sub_2684B52A4();
    v108 = v209;
    sub_268464850(&v209[*(v210 + 36)]);
    sub_2684678F8(v99, v108, type metadata accessor for ReminderComposeSnippet);
    sub_268467690();
    v83 = sub_2684B4BC4();
    sub_268467A4C(v108, &qword_28027CF90, &qword_2684B6238);
    v104 = type metadata accessor for ReminderComposeSnippet;
    goto LABEL_10;
  }

  if (v84 == *MEMORY[0x277D5DFD8])
  {
    (*(v80 + 96))(v83, v79);
    v96 = v199;
    v97 = v198;
    v98 = v201;
    (*(v199 + 32))(v198, v83, v201);
    v99 = v200;
    (*(v96 + 16))(v200, v97, v98);
    v109 = v202;
    sub_268464850(&v202[*(v203 + 36)]);
    sub_2684678F8(v99, v109, type metadata accessor for AddTasks3pSnippet);
    sub_2684673CC();
    v83 = sub_2684B4BC4();
    sub_268467A4C(v109, &qword_28027CF78, &qword_2684B6220);
    v104 = type metadata accessor for AddTasks3pSnippet;
    goto LABEL_10;
  }

  if (v84 == *MEMORY[0x277D5E108])
  {
    (*(v80 + 96))(v83, v79);
    v96 = v192;
    v97 = v191;
    v98 = v194;
    (*(v192 + 32))(v191, v83, v194);
    v99 = v193;
    (*(v96 + 16))(v193, v97, v98);
    v110 = v195;
    sub_268464850(&v195[*(v196 + 36)]);
    sub_2684678F8(v99, v110, type metadata accessor for SetTaskAttribute3pSnippet);
    sub_2684672E0();
    v83 = sub_2684B4BC4();
    sub_268467A4C(v110, &qword_28027CF70, &qword_2684B6218);
    v104 = type metadata accessor for SetTaskAttribute3pSnippet;
    goto LABEL_10;
  }

  if (v84 == *MEMORY[0x277D5E010])
  {
    (*(v80 + 96))(v83, v79);
    v111 = v188;
    v112 = v187;
    (*(v188 + 32))(v187, v83, v197);
    v113 = sub_2684B3AE4();
    v228 = v114;
    v229 = v113;
    v115 = v189;
    v116 = &v189[*(v190 + 36)];
    sub_268464850(v116);
    v117 = *(type metadata accessor for NotebookEnvironmentSetupModifier() + 20);
    v118 = [objc_opt_self() standardUserDefaults];
    v119 = sub_2684B5544();
    v120 = [v118 BOOLForKey_];

    *(v116 + v117) = v120;
    v121 = v228;
    *v115 = v229;
    v115[1] = v121;
    sub_2684671D0();
    v83 = sub_2684B4BC4();
    sub_268467A4C(v115, &qword_28027CF68, &qword_2684B6210);
    (*(v111 + 8))(v112, v197);
  }

  else if (v84 == *MEMORY[0x277D5E008])
  {
    (*(v80 + 96))(v83, v79);
    v122 = v179;
    v123 = v186;
    v124 = v181;
    (*(v179 + 32))(v186, v83, v181);
    v125 = v180;
    (*(v122 + 16))(v180, v123, v124);
    v126 = v182;
    v127 = &v182[*(v183 + 36)];
    sub_268464850(v127);
    v229 = *(type metadata accessor for NotebookEnvironmentSetupModifier() + 20);
    v128 = [objc_opt_self() standardUserDefaults];
    v129 = sub_2684B5544();
    v130 = [v128 BOOLForKey_];

    *(v127 + v229) = v130;
    sub_2684678F8(v125, v126, type metadata accessor for CreateNote3pSnippet);
    sub_26846780C();
    v83 = sub_2684B4BC4();
    sub_268467A4C(v126, &qword_28027CF98, &qword_2684B6240);
    sub_268467AAC(v125, type metadata accessor for CreateNote3pSnippet);
    (*(v122 + 8))(v186, v124);
  }

  else if (v84 == *MEMORY[0x277D5E100])
  {
    (*(v80 + 96))(v83, v79);
    v131 = v174;
    v132 = v184;
    v133 = v185;
    (*(v174 + 32))(v184, v83, v185);
    v134 = v175;
    (*(v131 + 16))(v175, v132, v133);
    v135 = v173;
    v136 = v134 + *(v173 + 20);
    *v136 = swift_getKeyPath();
    *(v136 + 8) = 0;
    v137 = v134 + *(v135 + 24);
    *v137 = swift_getKeyPath();
    *(v137 + 8) = 0;
    v138 = v176;
    v139 = &v176[*(v177 + 36)];
    sub_268464850(v139);
    v140 = *(type metadata accessor for NotebookEnvironmentSetupModifier() + 20);
    v141 = [objc_opt_self() standardUserDefaults];
    v142 = sub_2684B5544();
    v143 = [v141 BOOLForKey_];

    *(v139 + v140) = v143;
    sub_2684678F8(v134, v138, type metadata accessor for NoteSearchResult1pSnippet);
    sub_2684670E4();
    v83 = sub_2684B4BC4();
    sub_268467A4C(v138, &qword_28027CF60, &qword_2684B6208);
    sub_268467AAC(v134, type metadata accessor for NoteSearchResult1pSnippet);
    (*(v131 + 8))(v184, v185);
  }

  else if (v84 == *MEMORY[0x277D5E0B8])
  {
    (*(v80 + 96))(v83, v79);
    v144 = v167;
    v145 = v178;
    v146 = v169;
    (*(v167 + 32))(v178, v83, v169);
    v147 = v168;
    (*(v144 + 16))(v168, v145, v146);
    v148 = v170;
    v149 = &v170[*(v171 + 36)];
    sub_268464850(v149);
    v229 = *(type metadata accessor for NotebookEnvironmentSetupModifier() + 20);
    v150 = [objc_opt_self() standardUserDefaults];
    v151 = sub_2684B5544();
    v152 = [v150 BOOLForKey_];

    *(v149 + v229) = v152;
    sub_2684678F8(v147, v148, type metadata accessor for SearchForNotebookItems3pSnippet);
    sub_268466FF8();
    v83 = sub_2684B4BC4();
    sub_268467A4C(v148, &qword_28027CF58, &qword_2684B6200);
    sub_268467AAC(v147, type metadata accessor for SearchForNotebookItems3pSnippet);
    (*(v144 + 8))(v178, v146);
  }

  else if (v84 == *MEMORY[0x277D5E110])
  {
    (*(v80 + 96))(v83, v79);
    v153 = v162;
    v154 = v172;
    v155 = v164;
    (*(v162 + 32))(v172, v83, v164);
    v156 = v163;
    (*(v153 + 16))(v163, v154, v155);
    v157 = v165;
    v158 = &v165[*(v166 + 36)];
    sub_268464850(v158);
    v229 = *(type metadata accessor for NotebookEnvironmentSetupModifier() + 20);
    v159 = [objc_opt_self() standardUserDefaults];
    v160 = sub_2684B5544();
    v161 = [v159 BOOLForKey_];

    *(v158 + v229) = v161;
    sub_2684678F8(v156, v157, type metadata accessor for SimpleConfirmationSnippetView);
    sub_268466E7C();
    v83 = sub_2684B4BC4();
    sub_268467A4C(v157, &qword_28027CF50, &qword_2684B61F8);
    sub_268467AAC(v156, type metadata accessor for SimpleConfirmationSnippetView);
    (*(v153 + 8))(v172, v155);
  }

  else
  {
    sub_268466E28();
    swift_allocError();
    swift_willThrow();
    (*(v80 + 8))(v83, v79);
  }

  return v83;
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

unint64_t sub_268466E28()
{
  result = qword_28027CFA8;
  if (!qword_28027CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFA8);
  }

  return result;
}

unint64_t sub_268466E7C()
{
  result = qword_28027CFB0;
  if (!qword_28027CFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF50, &qword_2684B61F8);
    sub_268466FB0(&qword_28027CFB8, type metadata accessor for SimpleConfirmationSnippetView);
    sub_268466FB0(&qword_28027CFC0, type metadata accessor for NotebookEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFB0);
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

uint64_t sub_268466FB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_268466FF8()
{
  result = qword_28027CFC8;
  if (!qword_28027CFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF58, &qword_2684B6200);
    sub_268466FB0(&qword_28027CFD0, type metadata accessor for SearchForNotebookItems3pSnippet);
    sub_268466FB0(&qword_28027CFC0, type metadata accessor for NotebookEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFC8);
  }

  return result;
}

unint64_t sub_2684670E4()
{
  result = qword_28027CFD8;
  if (!qword_28027CFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF60, &qword_2684B6208);
    sub_268466FB0(&qword_28027CFE0, type metadata accessor for NoteSearchResult1pSnippet);
    sub_268466FB0(&qword_28027CFC0, type metadata accessor for NotebookEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFD8);
  }

  return result;
}

unint64_t sub_2684671D0()
{
  result = qword_28027CFE8;
  if (!qword_28027CFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF68, &qword_2684B6210);
    sub_26846728C();
    sub_268466FB0(&qword_28027CFC0, type metadata accessor for NotebookEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFE8);
  }

  return result;
}

unint64_t sub_26846728C()
{
  result = qword_28027CFF0;
  if (!qword_28027CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFF0);
  }

  return result;
}

unint64_t sub_2684672E0()
{
  result = qword_28027CFF8;
  if (!qword_28027CFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF70, &qword_2684B6218);
    sub_268466FB0(&qword_28027D000, type metadata accessor for SetTaskAttribute3pSnippet);
    sub_268466FB0(&qword_28027D008, type metadata accessor for ReminderEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFF8);
  }

  return result;
}

unint64_t sub_2684673CC()
{
  result = qword_28027D010;
  if (!qword_28027D010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF78, &qword_2684B6220);
    sub_268466FB0(&qword_28027D018, type metadata accessor for AddTasks3pSnippet);
    sub_268466FB0(&qword_28027D008, type metadata accessor for ReminderEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D010);
  }

  return result;
}

unint64_t sub_2684674B8()
{
  result = qword_28027D020;
  if (!qword_28027D020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF80, &qword_2684B6228);
    sub_268466FB0(&qword_28027D028, type metadata accessor for ReminderSearchResult1pSnippet);
    sub_268466FB0(&qword_28027D008, type metadata accessor for ReminderEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D020);
  }

  return result;
}

unint64_t sub_2684675A4()
{
  result = qword_28027D030;
  if (!qword_28027D030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF88, &qword_2684B6230);
    sub_268466FB0(&qword_28027D038, type metadata accessor for ReminderDetail1pSnippet);
    sub_268466FB0(&qword_28027D008, type metadata accessor for ReminderEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D030);
  }

  return result;
}

unint64_t sub_268467690()
{
  result = qword_28027D040;
  if (!qword_28027D040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF90, &qword_2684B6238);
    sub_268466FB0(&qword_28027D048, type metadata accessor for ReminderComposeSnippet);
    sub_268466FB0(&qword_28027D008, type metadata accessor for ReminderEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D040);
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_26846780C()
{
  result = qword_28027D050;
  if (!qword_28027D050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CF98, &qword_2684B6240);
    sub_268466FB0(&qword_28027D058, type metadata accessor for CreateNote3pSnippet);
    sub_268466FB0(&qword_28027CFC0, type metadata accessor for NotebookEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D050);
  }

  return result;
}

uint64_t sub_2684678F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_268467960()
{
  result = qword_28027D060;
  if (!qword_28027D060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027CFA0, &qword_2684B6248);
    sub_268466FB0(&qword_28027D068, type metadata accessor for AppPunchoutSnippet);
    sub_268466FB0(&qword_28027CFC0, type metadata accessor for NotebookEnvironmentSetupModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D060);
  }

  return result;
}

uint64_t sub_268467A4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_268467AAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_268467B0C()
{
  result = qword_28027D078;
  if (!qword_28027D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D078);
  }

  return result;
}

unint64_t sub_268467B60()
{
  result = qword_28027D080;
  if (!qword_28027D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D080);
  }

  return result;
}

unint64_t sub_268467BB4()
{
  result = qword_28027D088;
  if (!qword_28027D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D088);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotebookUIPlugin.Errors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NotebookUIPlugin.Errors(_WORD *result, int a2, int a3)
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

unint64_t sub_268467D10()
{
  result = qword_28027D098;
  if (!qword_28027D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D098);
  }

  return result;
}

void sub_268467DC0(uint64_t a1, unint64_t *a2)
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

uint64_t type metadata accessor for NoteSearchResult1pSnippet()
{
  result = qword_28027D0B0;
  if (!qword_28027D0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268467E84()
{
  sub_2684B3D94();
  if (v0 <= 0x3F)
  {
    sub_268467F10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_268467F10()
{
  if (!qword_28027D0C0)
  {
    type metadata accessor for VRXIdiom(255);
    v0 = sub_2684B43F4();
    if (!v1)
    {
      atomic_store(v0, &qword_28027D0C0);
    }
  }
}

uint64_t sub_268467F84()
{
  v0 = sub_2684B3D64();
  if (!v0[2] || (v2 = v0[4], v1 = v0[5], , , v3 = *(sub_2684B3D64() + 16), , v3 != 1))
  {

    return 0;
  }

  return v2;
}

uint64_t sub_268467FF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v32 = sub_2684B5484();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v32);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NoteSearchResult1pSnippet();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D0C8, &qword_2684B6530);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D0D0, &qword_2684B6538);
  v31 = *(v33 - 8);
  v15 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v17 = &v30 - v16;
  sub_26846A5F0(v2, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_26846A654(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D0D8, &qword_2684B6540);
  sub_26846ACF0(&qword_28027D0E0, &qword_28027D0D8, &qword_2684B6540);
  sub_2684B5184();
  v20 = v32;
  (*(v3 + 104))(v6, *MEMORY[0x277D63EC0], v32);
  sub_26846ACF0(&qword_28027D0E8, &qword_28027D0C8, &qword_2684B6530);
  sub_2684B4C44();
  (*(v3 + 8))(v6, v20);
  (*(v11 + 8))(v14, v10);
  sub_268467F84();
  v22 = v21;
  if (v21)
  {
  }

  v23 = v22 == 0;
  KeyPath = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v26 = swift_getKeyPath();
  v27 = v34;
  (*(v31 + 32))(v34, v17, v33);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D0F0, &qword_2684B65D0);
  v29 = v27 + *(result + 36);
  *v29 = v23;
  *(v29 + 8) = KeyPath;
  *(v29 + 16) = 0;
  *(v29 + 24) = v25;
  *(v29 + 32) = 0;
  *(v29 + 40) = v26;
  *(v29 + 48) = 0;
  return result;
}

uint64_t sub_268468424@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D0F8, &qword_2684B65D8);
  v1 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v3 = &v32 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D100, &qword_2684B65E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D108, &qword_2684B65E8);
  v11 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v13 = &v32 - v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D110, &qword_2684B65F0);
  v14 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D118, &qword_2684B65F8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  v24 = sub_268467F84();
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    KeyPath = swift_getKeyPath();
    sub_2684688F8(v10);
    v33 = v10;
    sub_26846A6DC(v10, v8, &qword_28027D100, &qword_2684B65E0);
    *v3 = v26;
    *(v3 + 1) = v27;
    *(v3 + 2) = KeyPath;
    *(v3 + 12) = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D130, &unk_2684B6600);
    sub_26846A6DC(v8, &v3[*(v29 + 48)], &qword_28027D100, &qword_2684B65E0);
    swift_bridgeObjectRetain_n();

    sub_26846A6D0(v30, 0);
    sub_268467A4C(v8, &qword_28027D100, &qword_2684B65E0);

    sub_26845E0C8(KeyPath, 0);
    sub_26846A6DC(v3, v13, &qword_28027D0F8, &qword_2684B65D8);
    swift_storeEnumTagMultiPayload();
    sub_26846ACF0(&qword_28027D120, &qword_28027D0F8, &qword_2684B65D8);
    sub_26846ACF0(&qword_28027D128, &qword_28027D110, &qword_2684B65F0);
    sub_2684B49B4();

    sub_268467A4C(v3, &qword_28027D0F8, &qword_2684B65D8);
    sub_268467A4C(v33, &qword_28027D100, &qword_2684B65E0);
  }

  else
  {
    sub_268468C84(v16);
    sub_26846A6DC(v16, v13, &qword_28027D110, &qword_2684B65F0);
    swift_storeEnumTagMultiPayload();
    sub_26846ACF0(&qword_28027D120, &qword_28027D0F8, &qword_2684B65D8);
    sub_26846ACF0(&qword_28027D128, &qword_28027D110, &qword_2684B65F0);
    sub_2684B49B4();
    sub_268467A4C(v16, &qword_28027D110, &qword_2684B65F0);
  }

  sub_26846A6DC(v23, v21, &qword_28027D118, &qword_2684B65F8);
  sub_26846A6DC(v21, v37, &qword_28027D118, &qword_2684B65F8);
  sub_268467A4C(v23, &qword_28027D118, &qword_2684B65F8);
  return sub_268467A4C(v21, &qword_28027D118, &qword_2684B65F8);
}

uint64_t sub_2684688F8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = sub_2684B4E34();
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D138, &qword_2684BA200);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D140, &qword_2684B6610);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = sub_2684B3FB4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B3D84();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_268467A4C(v13, &qword_28027D140, &qword_2684B6610);
    v19 = 1;
    v20 = v30;
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    (*(v15 + 16))(v9, v18, v14);
    v21 = &v9[*(type metadata accessor for ReadingPromptButtons() + 20)];
    sub_2684B52A4();
    (*(v1 + 104))(v4, *MEMORY[0x277CE0EE8], v29);
    v22 = sub_2684B4E94();
    KeyPath = swift_getKeyPath();
    v31 = v22;

    v24 = sub_2684B44B4();
    (*(v15 + 8))(v18, v14);

    v25 = &v9[*(v5 + 36)];
    *v25 = KeyPath;
    v25[1] = v24;
    v26 = v30;
    sub_26846A79C(v9, v30);
    v19 = 0;
    v20 = v26;
  }

  return (*(v6 + 56))(v20, v19, 1, v5);
}

uint64_t sub_268468C84@<X0>(char *a1@<X8>)
{
  v107 = a1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D148, &qword_2684B6648);
  v93 = *(v94 - 8);
  v2 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v91 = &v79 - v3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D150, &qword_2684B6650);
  v4 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v92 = &v79 - v5;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D158, &qword_2684B6658);
  v6 = *(*(v106 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v106);
  v90 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v95 = &v79 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D160, &qword_2684B6660);
  v10 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v105 = &v79 - v11;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D168, &qword_2684B6668);
  v12 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v88 = &v79 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D100, &qword_2684B65E0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v84 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v87 = &v79 - v18;
  v19 = type metadata accessor for NoteSearchResult1pSnippet();
  v20 = v19 - 8;
  v80 = *(v19 - 8);
  v21 = *(v80 + 64);
  MEMORY[0x28223BE20](v19);
  v81 = v22;
  v82 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D170, &qword_2684B6670);
  v85 = *(v86 - 8);
  v23 = *(v85 + 64);
  v24 = MEMORY[0x28223BE20](v86);
  v83 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v96 = &v79 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D178, &qword_2684B6678);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v102 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v101 = &v79 - v31;
  v32 = sub_2684B3994();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D180, &qword_2684B6680);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v79 - v39;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D188, &qword_2684B6688);
  v99 = *(v100 - 8);
  v41 = *(v99 + 64);
  v42 = MEMORY[0x28223BE20](v100);
  v98 = &v79 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = &v79 - v44;
  sub_2684B3D74();
  sub_2684B3D54();
  sub_2684B39D4();
  (*(v33 + 104))(v36, *MEMORY[0x277D62F20], v32);
  sub_26846A80C();
  v97 = v45;
  sub_2684B4C04();
  (*(v33 + 8))(v36, v32);
  v46 = sub_268467A4C(v40, &qword_28027D180, &qword_2684B6680);
  if (*(v1 + *(v20 + 28) + 9) == 1)
  {
    v47 = v82;
    sub_26846A5F0(v1, v82);
    v48 = (*(v80 + 80) + 16) & ~*(v80 + 80);
    v49 = swift_allocObject();
    sub_26846A654(v47, v49 + v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D1D8, &qword_2684B66A0);
    sub_26846AA8C();
    v50 = v96;
    sub_2684B5184();
    v51 = v87;
    sub_2684688F8(v87);
    v52 = v85;
    v53 = *(v85 + 16);
    v54 = v83;
    v55 = v86;
    v53(v83, v50, v86);
    v56 = v84;
    sub_26846A6DC(v51, v84, &qword_28027D100, &qword_2684B65E0);
    v57 = v88;
    v53(v88, v54, v55);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D210, &qword_2684B66B8);
    sub_26846A6DC(v56, v57 + *(v58 + 48), &qword_28027D100, &qword_2684B65E0);
    sub_268467A4C(v56, &qword_28027D100, &qword_2684B65E0);
    v59 = *(v52 + 8);
    v59(v54, v55);
    sub_26846A6DC(v57, v105, &qword_28027D168, &qword_2684B6668);
    swift_storeEnumTagMultiPayload();
    sub_26846ACF0(&qword_28027D1B0, &qword_28027D168, &qword_2684B6668);
    sub_26846A930();
    v60 = v101;
    sub_2684B49B4();
    sub_268467A4C(v57, &qword_28027D168, &qword_2684B6668);
    sub_268467A4C(v51, &qword_28027D100, &qword_2684B65E0);
    v59(v96, v55);
  }

  else
  {
    MEMORY[0x28223BE20](v46);
    sub_2684B4A34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D1A0, &qword_2684B6690);
    sub_26846ACF0(&qword_28027D1A8, &qword_28027D1A0, &qword_2684B6690);
    v61 = v91;
    sub_2684B43C4();
    sub_2684B5094();
    sub_2684B45F4();
    v62 = v92;
    (*(v93 + 32))(v92, v61, v94);
    v63 = (v62 + *(v89 + 36));
    v64 = v113;
    v63[4] = v112;
    v63[5] = v64;
    v63[6] = v114;
    v65 = v109;
    *v63 = v108;
    v63[1] = v65;
    v66 = v111;
    v63[2] = v110;
    v63[3] = v66;
    v67 = v90;
    sub_26846A8C8(v62, v90, &qword_28027D150, &qword_2684B6650);
    *(v67 + *(v106 + 36)) = 256;
    v68 = v95;
    sub_26846A8C8(v67, v95, &qword_28027D158, &qword_2684B6658);
    sub_26846A6DC(v68, v105, &qword_28027D158, &qword_2684B6658);
    swift_storeEnumTagMultiPayload();
    sub_26846ACF0(&qword_28027D1B0, &qword_28027D168, &qword_2684B6668);
    sub_26846A930();
    v60 = v101;
    sub_2684B49B4();
    sub_268467A4C(v68, &qword_28027D158, &qword_2684B6658);
  }

  v69 = v99;
  v70 = *(v99 + 16);
  v71 = v98;
  v72 = v97;
  v73 = v100;
  v70(v98, v97, v100);
  v74 = v102;
  sub_26846A6DC(v60, v102, &qword_28027D178, &qword_2684B6678);
  v75 = v107;
  v70(v107, v71, v73);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D1D0, &qword_2684B6698);
  sub_26846A6DC(v74, &v75[*(v76 + 48)], &qword_28027D178, &qword_2684B6678);
  sub_268467A4C(v60, &qword_28027D178, &qword_2684B6678);
  v77 = *(v69 + 8);
  v77(v72, v73);
  sub_268467A4C(v74, &qword_28027D178, &qword_2684B6678);
  return (v77)(v71, v73);
}

uint64_t sub_268469924(uint64_t a1)
{
  v2 = type metadata accessor for NoteSearchResult1pSnippet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_2684B3D64();
  v6 = sub_2684AB780(v5);

  v11[1] = v6;
  swift_getKeyPath();
  sub_26846A5F0(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_26846A654(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26846ACD4;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D218, &qword_2684B66E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D1F0, &qword_2684B66A8);
  sub_26846ACF0(&qword_28027D220, &qword_28027D218, &qword_2684B66E0);
  sub_26846AB10();
  return sub_2684B5014();
}

uint64_t sub_268469B1C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_2684B47F4();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2684B3994();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D1F8, &qword_2684B66B0);
  v12 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v14 = &v26 - v13;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D228, &qword_2684B66E8);
  v15 = *(v29 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v29);
  v18 = &v26 - v17;

  sub_2684B3D54();
  sub_2684B3A04();
  v19 = a1 + *(type metadata accessor for NoteSearchResult1pSnippet() + 24);
  if ((*(v19 + 8) & 1) == 0)
  {
    v20 = *v19;

    sub_2684B5704();
    v21 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v20, 0);
    (*(v26 + 8))(v6, v27);
  }

  v22 = sub_2684B5794();
  v23 = MEMORY[0x277D62F48];
  if ((v22 & 1) == 0)
  {
    v23 = MEMORY[0x277D62F58];
  }

  (*(v8 + 104))(v11, *v23, v7);
  sub_26846ABD8();
  sub_2684B4C04();
  (*(v8 + 8))(v11, v7);
  sub_268467A4C(v14, &qword_28027D1F8, &qword_2684B66B0);
  v24 = v30;
  (*(v15 + 32))(v30, v18, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D1F0, &qword_2684B66A8);
  *(v24 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_268469EC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D100, &qword_2684B65E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = type metadata accessor for NoteSearchResult1pSnippet();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D230, &qword_2684B66F0);
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  sub_26846A5F0(a1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  sub_26846A654(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D238, &qword_2684B66F8);
  sub_26846ADD4();
  sub_2684B5184();
  sub_2684688F8(v8);
  v22 = v13[2];
  v22(v17, v19, v12);
  v23 = v28;
  sub_26846A6DC(v8, v28, &qword_28027D100, &qword_2684B65E0);
  v24 = v29;
  v22(v29, v17, v12);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D248, &unk_2684B6700);
  sub_26846A6DC(v23, &v24[*(v25 + 48)], &qword_28027D100, &qword_2684B65E0);
  sub_268467A4C(v8, &qword_28027D100, &qword_2684B65E0);
  v26 = v13[1];
  v26(v19, v12);
  sub_268467A4C(v23, &qword_28027D100, &qword_2684B65E0);
  return (v26)(v17, v12);
}

uint64_t sub_26846A200(uint64_t a1)
{
  v2 = type metadata accessor for NoteSearchResult1pSnippet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_2684B3D64();
  v6 = sub_2684AB780(v5);

  v13[3] = v6;
  swift_getKeyPath();
  sub_26846A5F0(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_26846A654(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26846AF98;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D218, &qword_2684B66E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D228, &qword_2684B66E8);
  sub_26846ACF0(&qword_28027D220, &qword_28027D218, &qword_2684B66E0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D1F8, &qword_2684B66B0);
  v11 = sub_26846ABD8();
  v13[1] = v10;
  v13[2] = v11;
  swift_getOpaqueTypeConformance2();
  return sub_2684B5014();
}

uint64_t sub_26846A434()
{
  v0 = sub_2684B3994();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D1F8, &qword_2684B66B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;

  sub_2684B3D54();
  sub_2684B3A04();
  (*(v1 + 104))(v4, *MEMORY[0x277D62F28], v0);
  sub_26846ABD8();
  sub_2684B4C04();
  (*(v1 + 8))(v4, v0);
  return sub_268467A4C(v8, &qword_28027D1F8, &qword_2684B66B0);
}

uint64_t sub_26846A5F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteSearchResult1pSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26846A654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteSearchResult1pSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26846A6D0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_26846A6DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26846A744@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D618B10]();
  *a1 = result;
  return result;
}

uint64_t sub_26846A770(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x26D618B20](v2);
}

uint64_t sub_26846A79C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D138, &qword_2684BA200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26846A80C()
{
  result = qword_28027D190;
  if (!qword_28027D190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D180, &qword_2684B6680);
    sub_26846AC8C(&qword_28027D198, MEMORY[0x277D36048]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D190);
  }

  return result;
}

uint64_t sub_26846A8C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_26846A930()
{
  result = qword_28027D1B8;
  if (!qword_28027D1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D158, &qword_2684B6658);
    sub_26846A9BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D1B8);
  }

  return result;
}

unint64_t sub_26846A9BC()
{
  result = qword_28027D1C0;
  if (!qword_28027D1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D150, &qword_2684B6650);
    sub_26846ACF0(&qword_28027D1C8, &qword_28027D148, &qword_2684B6648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D1C0);
  }

  return result;
}

unint64_t sub_26846AA8C()
{
  result = qword_28027D1E0;
  if (!qword_28027D1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D1D8, &qword_2684B66A0);
    sub_26846AB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D1E0);
  }

  return result;
}

unint64_t sub_26846AB10()
{
  result = qword_28027D1E8;
  if (!qword_28027D1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D1F0, &qword_2684B66A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D1F8, &qword_2684B66B0);
    sub_26846ABD8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D1E8);
  }

  return result;
}

unint64_t sub_26846ABD8()
{
  result = qword_28027D200;
  if (!qword_28027D200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D1F8, &qword_2684B66B0);
    sub_26846AC8C(&qword_28027D208, MEMORY[0x277D36060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D200);
  }

  return result;
}

uint64_t sub_26846AC8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26846ACF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26846AD50(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NoteSearchResult1pSnippet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_26846ADD4()
{
  result = qword_28027D240;
  if (!qword_28027D240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D238, &qword_2684B66F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D1F8, &qword_2684B66B0);
    sub_26846ABD8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D240);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for NoteSearchResult1pSnippet() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = sub_2684B3D94();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_26845E0C8(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  sub_26845E0C8(*(v3 + v1[8]), *(v3 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t sub_26846AFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(type metadata accessor for NoteSearchResult1pSnippet() - 8);
  v9 = v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a4(a1, a2, a3, v9);
}

uint64_t sub_26846B05C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2]);
}

unint64_t sub_26846B090()
{
  result = qword_28027D250;
  if (!qword_28027D250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D0F0, &qword_2684B65D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D0C8, &qword_2684B6530);
    sub_26846ACF0(&qword_28027D0E8, &qword_28027D0C8, &qword_2684B6530);
    swift_getOpaqueTypeConformance2();
    sub_26846B18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D250);
  }

  return result;
}

unint64_t sub_26846B18C()
{
  result = qword_28027D258[0];
  if (!qword_28027D258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28027D258);
  }

  return result;
}

uint64_t sub_26846B1E8(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_2684B5104();
}

uint64_t sub_26846B3B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D2E0, &unk_2684B85F0);
  v3 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v102 = &v74 - v4;
  v100 = sub_2684B45E4();
  v5 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v101 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D2E8, &unk_2684B68E0);
  v98 = a1 + 5;
  v97 = a1[2];
  v7 = sub_2684B45B4();
  v96 = a1[4];
  v8 = v96;
  v87 = MEMORY[0x277CE0868];
  v9 = sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0);
  v121 = v8;
  v122 = v9;
  WitnessTable = swift_getWitnessTable();
  v111 = v7;
  v112 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_2684B45B4();
  sub_2684B45B4();
  v94 = a1[3];
  sub_2684B45B4();
  swift_getTupleTypeMetadata2();
  v92 = sub_2684B50F4();
  v91 = swift_getWitnessTable();
  v11 = sub_2684B4FA4();
  v93 = *(v11 - 8);
  v12 = *(v93 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v74 - v13;
  v15 = sub_2684B45B4();
  v90 = *(v15 - 8);
  v16 = *(v90 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v74 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D2F8, &qword_2684B8010);
  v19 = sub_2684B45B4();
  v95 = *(v19 - 8);
  v20 = *(v95 + 64);
  MEMORY[0x28223BE20](v19);
  v88 = &v74 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D300, &unk_2684B68F0);
  v22 = sub_2684B45B4();
  v83 = *(v22 - 8);
  v23 = *(v83 + 64);
  MEMORY[0x28223BE20](v22);
  v89 = &v74 - v24;
  v86 = swift_getWitnessTable();
  v119 = v86;
  v120 = MEMORY[0x277CDF918];
  v25 = swift_getWitnessTable();
  v85 = v25;
  v26 = sub_26846ACF0(&qword_28027D308, &qword_28027D2F8, &qword_2684B8010);
  v117 = v25;
  v118 = v26;
  v27 = swift_getWitnessTable();
  v87 = v27;
  v28 = sub_26846ACF0(&qword_28027D310, &qword_28027D300, &unk_2684B68F0);
  v115 = v27;
  v116 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_26846ACF0(&qword_28027D318, &qword_28027D2E0, &unk_2684B85F0);
  v111 = v22;
  v112 = v103;
  v79 = v29;
  v113 = v29;
  v114 = v30;
  v74 = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v77 = *(OpaqueTypeMetadata2 - 8);
  v32 = *(v77 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v34 = &v74 - v33;
  v80 = v35;
  v36 = sub_2684B45B4();
  v81 = *(v36 - 8);
  v37 = *(v81 + 64);
  MEMORY[0x28223BE20](v36);
  v75 = &v74 - v38;
  v39 = sub_2684B45B4();
  v82 = *(v39 - 8);
  v40 = *(v82 + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v76 = &v74 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v78 = &v74 - v43;
  *&v44 = v96;
  *(&v44 + 1) = *v98;
  *&v45 = v97;
  *(&v45 + 1) = v94;
  v104 = v45;
  v105 = v44;
  v106 = v99;
  sub_2684B4834();
  sub_2684B4F94();
  sub_2684B4DC4();
  (*(v93 + 8))(v14, v11);
  v46 = v88;
  sub_2684B4E24();
  (*(v90 + 8))(v18, v15);
  LODWORD(v111) = sub_2684B49C4();
  v47 = *(v100 + 20);
  v48 = *MEMORY[0x277CE0118];
  v49 = sub_2684B48B4();
  v50 = v101;
  (*(*(v49 - 8) + 104))(&v101[v47], v48, v49);
  __asm { FMOV            V0.2D, #10.0 }

  *v50 = _Q0;
  v56 = v50;
  v57 = v89;
  sub_26846CC9C(&qword_28027D320, MEMORY[0x277CDFC08]);
  sub_2684B4C94();
  sub_26846CC40(v56);
  (*(v95 + 8))(v46, v19);
  v58 = *MEMORY[0x277CDF998];
  v59 = sub_2684B4594();
  v60 = v102;
  (*(*(v59 - 8) + 104))();
  sub_26846CC9C(&qword_28027D328, MEMORY[0x277CDFA28]);
  result = sub_2684B5534();
  if (result)
  {
    v62 = v103;
    v63 = v79;
    v64 = v74;
    sub_2684B4D34();
    sub_268467A4C(v60, &qword_28027D2E0, &unk_2684B85F0);
    (*(v83 + 8))(v57, v22);
    sub_2684B4A94();
    v111 = v22;
    v112 = v62;
    v113 = v63;
    v114 = v64;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v66 = v75;
    v67 = v80;
    sub_2684B4DD4();
    (*(v77 + 8))(v34, v67);
    v109 = OpaqueTypeConformance2;
    v110 = MEMORY[0x277CDF918];
    v68 = swift_getWitnessTable();
    v69 = v76;
    sub_2684ACFD8(1, v36, v68);
    (*(v81 + 8))(v66, v36);
    v70 = sub_26846B18C();
    v107 = v68;
    v108 = v70;
    v71 = swift_getWitnessTable();
    v72 = v78;
    sub_26847D324(v69, v39, v71);
    v73 = *(v82 + 8);
    v73(v69, v39);
    sub_26847D324(v72, v39, v71);
    return (v73)(v72, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26846C00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v87 = a5;
  v69 = a4;
  v88 = a6;
  v83 = a3;
  v86 = *(a3 - 8);
  v9 = *(v86 + 64);
  MEMORY[0x28223BE20](a1);
  v81 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2684B45B4();
  v85 = *(v84 - 8);
  v11 = *(v85 + 64);
  v12 = MEMORY[0x28223BE20](v84);
  v80 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D330, &qword_2684BAEE0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v67 - v18;
  v75 = a2;
  v78 = *(a2 - 8);
  v20 = *(v78 + 8);
  MEMORY[0x28223BE20](v17);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D2E8, &unk_2684B68E0);
  v23 = sub_2684B45B4();
  v77 = *(v23 - 8);
  v24 = *(v77 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v67 - v25;
  v27 = sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0);
  v97 = a4;
  v98 = v27;
  v79 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v95 = v23;
  v96 = WitnessTable;
  v72 = MEMORY[0x277D63920];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = *(OpaqueTypeMetadata2 - 8);
  v29 = *(v73 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v31 = &v67 - v30;
  v32 = sub_2684B45B4();
  v76 = *(v32 - 8);
  v33 = *(v76 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v67 - v34;
  v89 = sub_2684B45B4();
  v91 = *(v89 - 8);
  v36 = *(v91 + 64);
  v37 = MEMORY[0x28223BE20](v89);
  v68 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v90 = &v67 - v40;
  v71 = a1;
  v41 = *(a1 + 8);
  (*a1)(v39);
  v42 = *(a1 + 48);
  v74 = *(a1 + 56);
  v43 = sub_2684B4AE4();
  (*(*(v43 - 8) + 56))(v19, 1, 1, v43);
  sub_2684B4B04();
  sub_268467A4C(v19, &qword_28027D330, &qword_2684BAEE0);
  v44 = v75;
  sub_2684B4D84();

  (*(v78 + 1))(v22, v44);
  v45 = WitnessTable;
  sub_2684B4BE4();
  (*(v77 + 8))(v26, v23);
  sub_2684B50A4();
  v95 = v23;
  v96 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2684B4D94();
  (*(v73 + 8))(v31, OpaqueTypeMetadata2);
  sub_2684B4A84();
  v94[6] = OpaqueTypeConformance2;
  v94[7] = MEMORY[0x277CDF678];
  v47 = swift_getWitnessTable();
  v48 = v68;
  sub_2684B4DD4();
  (*(v76 + 8))(v35, v32);
  v49 = MEMORY[0x277CDF918];
  v94[4] = v47;
  v94[5] = MEMORY[0x277CDF918];
  v50 = v89;
  v77 = swift_getWitnessTable();
  sub_26847D324(v48, v50, v77);
  v51 = *(v91 + 8);
  v76 = v91 + 8;
  v78 = v51;
  v52 = v51(v48, v50);
  v53 = *(v71 + 24);
  v54 = v81;
  (*(v71 + 16))(v52);
  sub_2684B4A84();
  v55 = v80;
  v56 = v83;
  v57 = v87;
  sub_2684B4DD4();
  (*(v86 + 8))(v54, v56);
  v94[2] = v57;
  v94[3] = v49;
  v58 = v84;
  v59 = swift_getWitnessTable();
  v60 = v82;
  sub_26847D324(v55, v58, v59);
  v61 = v85;
  v62 = *(v85 + 8);
  v62(v55, v58);
  v63 = v90;
  v64 = v89;
  (*(v91 + 16))(v48, v90, v89);
  v95 = v48;
  (*(v61 + 16))(v55, v60, v58);
  v96 = v55;
  v94[0] = v64;
  v94[1] = v58;
  v92 = v77;
  v93 = v59;
  sub_26846B1E8(&v95, 2uLL, v94);
  v62(v60, v58);
  v65 = v78;
  v78(v63, v64);
  v62(v55, v58);
  return v65(v48, v64);
}

uint64_t sub_26846C970@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v4 = *v2;
  v5 = v2[1];
  return sub_26846B3B8(a1, a2);
}

double sub_26846C9B4@<D0>(_OWORD *a1@<X8>)
{
  result = 24.0;
  *a1 = xmmword_2684B6710;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TriggerPillConstants(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TriggerPillConstants(uint64_t result, int a2, int a3)
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

uint64_t sub_26846CA28()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_26846CA98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26846CAE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26846CB4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

double sub_26846CBD8@<D0>(_OWORD *a1@<X8>)
{
  result = 16.0;
  *a1 = xmmword_2684B6720;
  return result;
}

uint64_t sub_26846CC40(uint64_t a1)
{
  v2 = sub_2684B45E4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26846CC9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TemporalTriggerView()
{
  result = qword_28027D338;
  if (!qword_28027D338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26846CD58()
{
  result = sub_2684B40B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26846CDE8@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for TemporalTriggerFormatStyle(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2684B40B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D348, &unk_2684BA020);
  v34 = *(v11 - 8);
  v35 = v11;
  v12 = *(v34 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  (*(v7 + 16))(v10, v1, v6);
  sub_2684B38E4();
  v15 = &v5[*(v2 + 20)];
  sub_2684B3944();
  v5[*(v2 + 24)] = 2;
  sub_26846D420(&qword_28027D350, type metadata accessor for TemporalTriggerFormatStyle);
  sub_26846D420(&qword_28027D358, MEMORY[0x277D5E170]);
  v16 = sub_2684B4B84();
  v18 = v17;
  v20 = v19;
  if (*(v1 + *(type metadata accessor for TemporalTriggerView() + 20)) == 1 && (sub_26846D1D0() & 1) != 0)
  {
    v37 = sub_2684B4E44();
  }

  else
  {
    LODWORD(v37) = sub_2684B49F4();
  }

  v37 = sub_2684B44B4();
  v21 = sub_2684B4B44();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_26846D468(v16, v18, v20 & 1);

  v37 = v21;
  v38 = v23;
  v25 &= 1u;
  v39 = v25;
  v40 = v27;
  sub_2684B4D44();
  sub_26846D468(v21, v23, v25);

  KeyPath = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  v31 = v36;
  (*(v34 + 32))(v36, v14, v35);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D360, &qword_2684B6A08);
  v33 = v31 + *(result + 36);
  *v33 = 1;
  *(v33 + 8) = KeyPath;
  *(v33 + 16) = 0;
  *(v33 + 24) = v29;
  *(v33 + 32) = 0;
  *(v33 + 40) = v30;
  *(v33 + 48) = 0;
  return result;
}

uint64_t sub_26846D1D0()
{
  v0 = sub_2684B3974();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2684B3844();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = (v6 + 8);
  if (sub_2684B40A4())
  {
    sub_2684B3964();
    sub_2684B3834();
    sub_2684B3934();
    v14 = *v13;
    (*v13)(v10, v5);
    (*(v1 + 8))(v4, v0);
    sub_2684B4094();
    v15 = sub_2684B3824();
    v14(v10, v5);
    v14(v12, v5);
  }

  else
  {
    sub_2684B4094();
    sub_2684B3834();
    v15 = sub_2684B3824();
    v16 = *v13;
    (*v13)(v10, v5);
    v16(v12, v5);
  }

  return v15 & 1;
}

uint64_t sub_26846D420(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26846D468(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_26846D478()
{
  result = qword_28027D368;
  if (!qword_28027D368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D360, &qword_2684B6A08);
    swift_getOpaqueTypeConformance2();
    sub_26846B18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D368);
  }

  return result;
}

uint64_t sub_26846D534(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];

  swift_getAtKeyPath();

  return v2;
}

BOOL sub_26846D588(uint64_t a1, unint64_t a2)
{
  v4 = sub_2684B3784();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B3764();
  sub_2684B3774();
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v15[0] = a1;
    v15[1] = a2;
    sub_26846D6EC();
    v10 = sub_2684B57B4();
    v12 = v11;
    (*(v5 + 8))(v8, v4);

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    return v13 != 0;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    return 0;
  }
}

unint64_t sub_26846D6EC()
{
  result = qword_28027D370;
  if (!qword_28027D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D370);
  }

  return result;
}

uint64_t sub_26846D76C@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = sub_2684B3994();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2684B3A24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D378, &qword_2684B6A78);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  sub_2684B3A14();
  (*(v2 + 104))(v5, *MEMORY[0x277D62F48], v1);
  v16 = sub_26846DA14();
  sub_2684B4C04();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  sub_26846DA6C(&unk_287913BB8);
  v18[2] = v6;
  v18[3] = v16;
  swift_getOpaqueTypeConformance2();
  sub_2684B4C54();

  return (*(v12 + 8))(v15, v11);
}

unint64_t sub_26846DA14()
{
  result = qword_28027D380;
  if (!qword_28027D380)
  {
    sub_2684B3A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D380);
  }

  return result;
}

uint64_t sub_26846DA6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D388, &unk_2684B6A80);
    v3 = sub_2684B5864();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      sub_2684B5A64();
      MEMORY[0x26D619E40](v10);
      result = sub_2684B5A94();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t type metadata accessor for SetTaskAttribute3pSnippet()
{
  result = qword_28027D390;
  if (!qword_28027D390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26846DC1C()
{
  result = sub_2684B3DC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26846DCA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2684B3B54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SetTaskAttribute3pSnippet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_26846EEF8(v1, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetTaskAttribute3pSnippet);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_26846EFD4(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SetTaskAttribute3pSnippet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3A0, &qword_2684B6B00);
  sub_26846ACF0(&qword_28027D3A8, &qword_28027D3A0, &qword_2684B6B00);
  sub_2684B5184();
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3B0, &qword_2684B6B90) + 36);
  *v16 = 0;
  *(v16 + 8) = KeyPath;
  *(v16 + 16) = 0;
  *(v16 + 24) = v14;
  *(v16 + 32) = 0;
  *(v16 + 40) = v15;
  *(v16 + 48) = 0;
  v17 = swift_getKeyPath();
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3B8, &qword_2684B6BC0) + 36);
  *v18 = 0xD00000000000001ELL;
  *(v18 + 8) = 0x80000002684C4380;
  *(v18 + 16) = v17;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  sub_2684B3DA4();
  v19 = swift_getKeyPath();
  v20 = sub_2684B3B34();
  (*(v4 + 8))(v7, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3C0, &qword_2684B6BF0);
  v22 = (a1 + *(result + 36));
  *v22 = v19;
  v22[1] = v20;
  return result;
}

uint64_t sub_26846DFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v74 = sub_2684B41E4();
  v72 = *(v74 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v71 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for ReminderDetail3pView();
  v5 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3D8, &qword_2684B6BF8);
  v8 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v65 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E0, &unk_2684B6C00);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v75 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v73 = &v61 - v14;
  v15 = sub_2684B3B54();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v67 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v61 - v24;
  v26 = sub_2684B3EA4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F0, &qword_2684B6C10);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v70 = &v61 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v61 - v35;
  v68 = a1;
  sub_2684B3DA4();
  sub_2684B3B44();
  v37 = *(v16 + 8);
  v66 = v15;
  v63 = v37;
  v37(v19, v15);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_268467A4C(v25, &qword_28027D3E8, &unk_2684B7F40);
    v38 = 1;
  }

  else
  {
    (*(v27 + 32))(v30, v25, v26);
    sub_2684B3E84();
    sub_2684B5214();
    (*(v27 + 8))(v30, v26);
    v38 = 0;
  }

  v61 = v36;
  v39 = sub_2684B5204();
  (*(*(v39 - 8) + 56))(v36, v38, 1, v39);
  KeyPath = swift_getKeyPath();
  sub_2684B3DB4();
  v40 = *(v64 + 20);
  *&v7[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F8, &qword_2684BA7E0);
  swift_storeEnumTagMultiPayload();
  v41 = swift_getKeyPath();
  v42 = swift_getKeyPath();
  v43 = v65;
  sub_26846EEF8(v7, v65, type metadata accessor for ReminderDetail3pView);
  v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D400, &qword_2684B6C50) + 36);
  *v44 = v41;
  *(v44 + 8) = 0;
  *(v44 + 16) = v42;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  sub_26846EF60(v7);
  v45 = swift_getKeyPath();
  v46 = v43 + *(v69 + 36);
  strcpy(v46, "modifiedTask");
  *(v46 + 13) = 0;
  *(v46 + 14) = -5120;
  *(v46 + 16) = v45;
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  sub_2684B3DA4();
  v47 = v67;
  sub_2684B3B44();
  v63(v19, v66);
  v48 = v71;
  sub_2684B3DB4();
  v49 = sub_2684B3FC4();
  v51 = v50;
  (*(v72 + 8))(v48, v74);
  v52 = v73;
  sub_26846E7C8(v47, v49, v51, &qword_28027D3D8, &qword_2684B6BF8, &qword_28027D3E0, &unk_2684B6C00, v73);

  sub_268467A4C(v47, &qword_28027D3E8, &unk_2684B7F40);
  sub_268467A4C(v43, &qword_28027D3D8, &qword_2684B6BF8);
  v53 = v61;
  v54 = v70;
  sub_26846A6DC(v61, v70, &qword_28027D3F0, &qword_2684B6C10);
  v55 = v75;
  sub_26846A6DC(v52, v75, &qword_28027D3E0, &unk_2684B6C00);
  v56 = v76;
  sub_26846A6DC(v54, v76, &qword_28027D3F0, &qword_2684B6C10);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D408, &qword_2684B6C58);
  v58 = v56 + *(v57 + 48);
  v59 = KeyPath;
  *v58 = KeyPath;
  *(v58 + 8) = 0;
  sub_26846A6DC(v55, v56 + *(v57 + 64), &qword_28027D3E0, &unk_2684B6C00);
  sub_26846EFBC(v59, 0);
  sub_268467A4C(v52, &qword_28027D3E0, &unk_2684B6C00);
  sub_268467A4C(v53, &qword_28027D3F0, &qword_2684B6C10);
  sub_268467A4C(v55, &qword_28027D3E0, &unk_2684B6C00);
  sub_26846EFC8(v59, 0);
  return sub_268467A4C(v54, &qword_28027D3F0, &qword_2684B6C10);
}

uint64_t sub_26846E7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a6;
  v34 = a7;
  v31 = a4;
  v32 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for PunchoutToNotebookItemModifier();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26846A6DC(a1, v15, &qword_28027D3E8, &unk_2684B7F40);
  v20 = sub_2684B3EA4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v15, 1, v20) == 1)
  {
    sub_268467A4C(v15, &qword_28027D3E8, &unk_2684B7F40);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v22 = sub_2684B3E84();
    v23 = v24;
    (*(v21 + 8))(v15, v20);
  }

  *v19 = v22;
  v19[1] = v23;
  v19[2] = a2;
  v19[3] = a3;
  v25 = *(v16 + 24);

  sub_2684B52A4();
  v26 = v19 + *(v16 + 28);
  v35 = 0;
  sub_2684B4F24();
  v27 = v37;
  *v26 = v36;
  *(v26 + 1) = v27;
  sub_26846A6DC(v30, a8, v31, v32);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
  return sub_26846EFD4(v19, a8 + *(v28 + 36), type metadata accessor for PunchoutToNotebookItemModifier);
}

uint64_t sub_26846EA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for PunchoutToNotebookItemModifier();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26846A6DC(a1, v11, &qword_28027D3E8, &unk_2684B7F40);
  v16 = sub_2684B3EA4();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_268467A4C(v11, &qword_28027D3E8, &unk_2684B7F40);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v18 = sub_2684B3E84();
    v19 = v20;
    (*(v17 + 8))(v11, v16);
  }

  *v15 = v18;
  v15[1] = v19;
  v15[2] = a2;
  v15[3] = a3;
  v21 = *(v12 + 24);

  sub_2684B52A4();
  v22 = v15 + *(v12 + 28);
  v27 = 0;
  sub_2684B4F24();
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  sub_26846EEF8(v26, a4, type metadata accessor for ReminderDetail3pView);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D470, &unk_2684B6C90);
  return sub_26846EFD4(v15, a4 + *(v24 + 36), type metadata accessor for PunchoutToNotebookItemModifier);
}

uint64_t sub_26846EC84@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SetTaskAttribute3pSnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26846DFB8(v4, a1);
}

double sub_26846ECF4@<D0>(_OWORD *a1@<X8>)
{
  sub_26846EEA4();
  sub_2684B4804();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_26846ED44(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_26846EEA4();

  return sub_2684B4814();
}

uint64_t sub_26846EDA4@<X0>(void *a1@<X8>)
{
  sub_26846EE50();
  result = sub_2684B4804();
  *a1 = v3;
  return result;
}

uint64_t sub_26846EDF4(void **a1)
{
  v1 = *a1;
  sub_26846EE50();
  v2 = v1;
  return sub_2684B4814();
}

unint64_t sub_26846EE50()
{
  result = qword_28027D3C8;
  if (!qword_28027D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D3C8);
  }

  return result;
}

unint64_t sub_26846EEA4()
{
  result = qword_28027D3D0;
  if (!qword_28027D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D3D0);
  }

  return result;
}

uint64_t sub_26846EEF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26846EF60(uint64_t a1)
{
  v2 = type metadata accessor for ReminderDetail3pView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_26846EFBC(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_26846EFC8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_26846EFD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26846F03C()
{
  result = qword_28027D420;
  if (!qword_28027D420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D3C0, &qword_2684B6BF0);
    sub_26846F0F4();
    sub_26846ACF0(&qword_28027D450, &qword_28027D458, &unk_2684B6FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D420);
  }

  return result;
}

unint64_t sub_26846F0F4()
{
  result = qword_28027D428;
  if (!qword_28027D428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D3B8, &qword_2684B6BC0);
    sub_26846F180();
    sub_26846F238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D428);
  }

  return result;
}

unint64_t sub_26846F180()
{
  result = qword_28027D430;
  if (!qword_28027D430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D3B0, &qword_2684B6B90);
    sub_26846ACF0(&qword_28027D438, &qword_28027D440, &unk_2684B6C70);
    sub_26846B18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D430);
  }

  return result;
}

unint64_t sub_26846F238()
{
  result = qword_28027D448;
  if (!qword_28027D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D448);
  }

  return result;
}

uint64_t type metadata accessor for LocationTriggerTextView()
{
  result = qword_28027D478;
  if (!qword_28027D478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26846F300()
{
  result = sub_2684B4084();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26846F3A0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocationTriggerTextView();
  if (*(v1 + *(v3 + 20)) == 1)
  {
    v4 = v3;
    sub_2684B4EC4();
    v5 = sub_2684B4BB4();
    v7 = v6;
    v9 = v8;
    v33 = *(v1 + *(v4 + 24));

    v10 = sub_2684B4B44();
    v31 = v11;
    v32 = v10;
    v30 = v12;
    sub_26846D468(v5, v7, v9 & 1);

    v13 = sub_26846F560();
    v15 = v14;
    v17 = v16;
    v29 = sub_2684B4B54();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_26846D468(v13, v15, v17 & 1);

    v24 = v29;
    sub_26846D468(v32, v31, v30 & 1);
  }

  else
  {
    v24 = sub_26846F560();
    v19 = v25;
    v21 = v26;
    v23 = v27;
  }

  result = sub_2684B49F4();
  *a1 = v24;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  *(a1 + 32) = result;
  *(a1 + 36) = 0;
  return result;
}

uint64_t sub_26846F560()
{
  v0 = sub_2684B4004();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v19[-v6];
  v8 = sub_2684B3D44();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((sub_2684B4064() & 1) == 0)
  {
    return sub_26846F834();
  }

  sub_2684B4054();
  (*(v1 + 104))(v5, *MEMORY[0x277D5E160], v0);
  v13 = sub_2684B3FF4();
  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);
  v15 = MEMORY[0x277D5E0F0];
  if ((v13 & 1) == 0)
  {
    v15 = MEMORY[0x277D5E0D8];
  }

  (*(v9 + 104))(v12, *v15, v8);
  sub_2684B3D34();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v16 = qword_280282928;
  v17 = sub_2684B4B94();
  (*(v9 + 8))(v12, v8);
  return v17;
}

uint64_t sub_26846F834()
{
  v0 = sub_2684B4004();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  v8 = sub_2684B3D44();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B4054();
  (*(v1 + 104))(v5, *MEMORY[0x277D5E160], v0);
  v13 = sub_2684B3FF4();
  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);
  v15 = MEMORY[0x277D5E0E8];
  if ((v13 & 1) == 0)
  {
    v15 = MEMORY[0x277D5E0E0];
  }

  (*(v9 + 104))(v12, *v15, v8);
  sub_2684B3D34();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v16 = qword_280282928;
  v17 = sub_2684B4B94();
  v19 = v18;
  v21 = v20;
  (*(v9 + 8))(v12, v8);
  v25[3] = 32;
  v25[4] = 0xE100000000000000;
  v22 = sub_2684B4074();
  MEMORY[0x26D619980](v22);

  v23 = sub_2684B4B54();

  sub_26846D468(v17, v19, v21 & 1);

  return v23;
}

unint64_t sub_26846FB7C()
{
  result = qword_28027D488;
  if (!qword_28027D488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D490, &qword_2684B6D08);
    sub_26846FC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D488);
  }

  return result;
}

unint64_t sub_26846FC08()
{
  result = qword_28027D498;
  if (!qword_28027D498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D4A0, &qword_2684B6D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D498);
  }

  return result;
}

uint64_t sub_26846FC6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4A8, &unk_2684B6D30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_2684B3F64();
  __swift_allocate_value_buffer(v4, qword_2802828F8);
  __swift_project_value_buffer(v4, qword_2802828F8);
  v5 = *MEMORY[0x277D5E150];
  v6 = sub_2684B3F04();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v3, v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  return sub_2684B3F34();
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

uint64_t type metadata accessor for AddTasks3pSnippet()
{
  result = qword_28027D4B0;
  if (!qword_28027D4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26846FEC8()
{
  result = sub_2684B3AD4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26846FF50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2684B3B54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AddTasks3pSnippet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_26847205C(v1, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AddTasks3pSnippet);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_268471B2C(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4C0, &qword_2684B6DA8);
  sub_26846ACF0(&qword_28027D4C8, &qword_28027D4C0, &qword_2684B6DA8);
  sub_2684B5184();
  KeyPath = swift_getKeyPath();
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4D0, &qword_2684B6DD8) + 36);
  *v14 = 0xD000000000000016;
  *(v14 + 8) = 0x80000002684C43A0;
  *(v14 + 16) = KeyPath;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  sub_2684B3AA4();
  v15 = swift_getKeyPath();
  v16 = sub_2684B3B34();
  (*(v4 + 8))(v7, v3);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4D8, &qword_2684B6E08) + 36));
  *v17 = v15;
  v17[1] = v16;
  v18 = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4E0, &qword_2684B6E98);
  v22 = a1 + *(result + 36);
  *v22 = 1;
  *(v22 + 8) = v18;
  *(v22 + 16) = 0;
  *(v22 + 24) = v19;
  *(v22 + 32) = 0;
  *(v22 + 40) = v20;
  *(v22 + 48) = 0;
  return result;
}

uint64_t sub_268470254(uint64_t a1)
{
  v2 = sub_2684B3894();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2684B4144();
}

uint64_t sub_26847031C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = type metadata accessor for AddTasks3pSnippet();
  v94 = *(v3 - 8);
  v4 = *(v94 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v95 = v5;
  v96 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4E8, &unk_2684B6EA0);
  v101 = *(v6 - 8);
  v102 = v6;
  v7 = *(v101 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v100 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v99 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4F0, &qword_2684B8A20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v89 = &v85 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D410, &qword_2684B6C60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v93 = &v85 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D418, &qword_2684B6C68);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v92 = &v85 - v19;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4F8, &qword_2684B6EB0);
  v20 = *(*(v91 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v91);
  v98 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v90 = &v85 - v24;
  MEMORY[0x28223BE20](v23);
  v106 = &v85 - v25;
  v26 = sub_2684B3B54();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v86 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v85 - v35;
  v37 = sub_2684B3EA4();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v85 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F0, &qword_2684B6C10);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v105 = &v85 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = &v85 - v46;
  v97 = a1;
  sub_2684B3AA4();
  sub_2684B3B44();
  v48 = *(v27 + 8);
  v87 = v26;
  v48(v30, v26);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    sub_268467A4C(v36, &qword_28027D3E8, &unk_2684B7F40);
    v49 = 1;
  }

  else
  {
    (*(v38 + 32))(v41, v36, v37);
    sub_2684B3E84();
    sub_2684B5214();
    (*(v38 + 8))(v41, v37);
    v49 = 0;
  }

  v50 = sub_2684B5204();
  (*(*(v50 - 8) + 56))(v47, v49, 1, v50);
  KeyPath = swift_getKeyPath();
  v51 = v93;
  v52 = v97;
  sub_268470E18(v93);
  sub_2684B3AA4();
  v53 = v86;
  sub_2684B3B44();
  v48(v30, v87);
  v54 = v89;
  sub_2684B3AB4();
  v55 = sub_2684B3C14();
  v56 = *(v55 - 8);
  v57 = (*(v56 + 48))(v54, 1, v55);
  v104 = v47;
  if (v57 == 1)
  {
    sub_268467A4C(v54, &qword_28027D4F0, &qword_2684B8A20);
    v58 = 0;
    v59 = 0;
  }

  else
  {
    v58 = sub_2684B3BC4();
    v59 = v60;
    (*(v56 + 8))(v54, v55);
  }

  v61 = v92;
  sub_26846E7A4(v53, v58, v59, v92);

  sub_268467A4C(v53, &qword_28027D3E8, &unk_2684B7F40);
  sub_268467A4C(v51, &qword_28027D410, &qword_2684B6C60);
  v62 = swift_getKeyPath();
  v63 = v90;
  sub_26846A8C8(v61, v90, &qword_28027D418, &qword_2684B6C68);
  v64 = v63 + *(v91 + 36);
  *v64 = 0xD000000000000010;
  *(v64 + 8) = 0x80000002684C43C0;
  *(v64 + 16) = v62;
  *(v64 + 24) = 0;
  *(v64 + 32) = 0;
  v65 = v106;
  sub_26846A8C8(v63, v106, &qword_28027D4F8, &qword_2684B6EB0);
  v66 = sub_2684B3AC4();
  v67 = sub_2684AB930(v66);

  v107 = v67;
  swift_getKeyPath();
  v68 = v96;
  sub_26847205C(v52, v96, type metadata accessor for AddTasks3pSnippet);
  v69 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v70 = swift_allocObject();
  sub_268471B2C(v68, v70 + v69);
  v71 = swift_allocObject();
  *(v71 + 16) = sub_268471CCC;
  *(v71 + 24) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D500, &unk_2684B6EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E0, &unk_2684B6C00);
  sub_26846ACF0(&qword_28027D508, &qword_28027D500, &unk_2684B6EF8);
  sub_268472014(&qword_28027D510, MEMORY[0x277CC95F0]);
  sub_268471DBC();
  v72 = v99;
  sub_2684B5014();
  v73 = v105;
  sub_26846A6DC(v104, v105, &qword_28027D3F0, &qword_2684B6C10);
  v74 = v98;
  sub_26846A6DC(v65, v98, &qword_28027D4F8, &qword_2684B6EB0);
  v75 = v100;
  v76 = v101;
  v77 = *(v101 + 16);
  v78 = v102;
  v77(v100, v72, v102);
  v79 = v103;
  sub_26846A6DC(v73, v103, &qword_28027D3F0, &qword_2684B6C10);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D548, &qword_2684B6F08);
  v81 = v79 + v80[12];
  v82 = KeyPath;
  *v81 = KeyPath;
  *(v81 + 8) = 0;
  sub_26846A6DC(v74, v79 + v80[16], &qword_28027D4F8, &qword_2684B6EB0);
  v77((v79 + v80[20]), v75, v78);
  sub_26846EFBC(v82, 0);
  v83 = *(v76 + 8);
  v83(v72, v78);
  sub_268467A4C(v106, &qword_28027D4F8, &qword_2684B6EB0);
  sub_268467A4C(v104, &qword_28027D3F0, &qword_2684B6C10);
  v83(v75, v78);
  sub_268467A4C(v74, &qword_28027D4F8, &qword_2684B6EB0);
  sub_26846EFC8(v82, 0);
  return sub_268467A4C(v105, &qword_28027D3F0, &qword_2684B6C10);
}

uint64_t sub_268470E18@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D558, &qword_2684B6F50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D560, &qword_2684B6F58);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D568, &qword_2684B6F60);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  sub_26847111C(&v28 - v18);
  sub_26847187C(v4);
  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  sub_26846A6DC(v4, v12, &qword_28027D558, &qword_2684B6F50);
  v22 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D570, &qword_2684B6F68) + 36)];
  *v22 = KeyPath;
  v22[8] = 0;
  *(v22 + 2) = v21;
  *(v22 + 3) = 0;
  v22[32] = 0;
  sub_268467A4C(v4, &qword_28027D558, &qword_2684B6F50);
  v23 = swift_getKeyPath();
  v24 = &v12[*(v6 + 44)];
  *v24 = 0x656C746974;
  *(v24 + 1) = 0xE500000000000000;
  *(v24 + 2) = v23;
  *(v24 + 3) = 0;
  v24[32] = 0;
  sub_26846A6DC(v19, v17, &qword_28027D568, &qword_2684B6F60);
  sub_26846A6DC(v12, v10, &qword_28027D560, &qword_2684B6F58);
  v25 = v29;
  sub_26846A6DC(v17, v29, &qword_28027D568, &qword_2684B6F60);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D578, &qword_2684B6F70);
  sub_26846A6DC(v10, v25 + *(v26 + 48), &qword_28027D560, &qword_2684B6F58);
  sub_268467A4C(v12, &qword_28027D560, &qword_2684B6F58);
  sub_268467A4C(v19, &qword_28027D568, &qword_2684B6F60);
  sub_268467A4C(v10, &qword_28027D560, &qword_2684B6F58);
  return sub_268467A4C(v17, &qword_28027D568, &qword_2684B6F60);
}

uint64_t sub_26847111C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2684B5414();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D588, &qword_2684B6F80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4F0, &qword_2684B8A20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  sub_2684B3AB4();
  v15 = sub_2684B3C14();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_268467A4C(v14, &qword_28027D4F0, &qword_2684B8A20);
    v17 = 1;
  }

  else
  {
    v28 = a1;
    v18 = sub_2684B3C04();
    v20 = v19;
    (*(v16 + 8))(v14, v15);
    v17 = 1;
    if (v20)
    {
      v38 = MEMORY[0x277D837D0];
      v39 = MEMORY[0x277D63F80];
      v36 = v18;
      v37 = v20;
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      sub_2684B5404();
      KeyPath = swift_getKeyPath();
      v22 = swift_getKeyPath();
      v23 = v29;
      (*(v29 + 16))(v10, v5, v2);
      v24 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D590, &qword_2684B6F88) + 36)];
      *v24 = KeyPath;
      v24[8] = 0;
      *(v24 + 2) = v22;
      *(v24 + 3) = 0;
      v24[32] = 0;
      (*(v23 + 8))(v5, v2);
      v25 = swift_getKeyPath();
      v26 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D598, &qword_2684B6F90) + 36)];
      *v26 = 0x70756F7267;
      *(v26 + 1) = 0xE500000000000000;
      *(v26 + 2) = v25;
      *(v26 + 3) = 0;
      v26[32] = 0;
      v10[*(v6 + 36)] = 1;
      a1 = v28;
      sub_26846A8C8(v10, v28, &qword_28027D588, &qword_2684B6F80);
      v17 = 0;
    }

    else
    {
      a1 = v28;
    }
  }

  return (*(v7 + 56))(a1, v17, 1, v6);
}

uint64_t sub_2684714C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a1;
  v38 = a3;
  v40 = a4;
  v39 = sub_2684B3B54();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ReminderDetail3pView();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3D8, &qword_2684B6BF8);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  v23 = sub_2684B41E4();
  (*(*(v23 - 8) + 16))(v17, a2, v23);
  v24 = *(v14 + 28);
  *&v17[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F8, &qword_2684BA7E0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v26 = swift_getKeyPath();
  sub_26847205C(v17, v22, type metadata accessor for ReminderDetail3pView);
  v27 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D400, &qword_2684B6C50) + 36)];
  *v27 = KeyPath;
  v27[8] = 0;
  *(v27 + 2) = v26;
  *(v27 + 3) = 0;
  v27[32] = 0;
  v42 = 0x7361546465646461;
  v43 = 0xEA0000000000736BLL;
  MEMORY[0x26D619980](91, 0xE100000000000000);
  v41 = v37;
  v28 = sub_2684B59E4();
  MEMORY[0x26D619980](v28);

  MEMORY[0x26D619980](93, 0xE100000000000000);
  v29 = v42;
  v30 = v43;
  sub_26846EF60(v17);
  v31 = swift_getKeyPath();
  v32 = &v22[*(v19 + 44)];
  *v32 = v29;
  *(v32 + 1) = v30;
  *(v32 + 2) = v31;
  *(v32 + 3) = 0;
  v32[32] = 0;
  sub_2684B3AA4();
  sub_2684B3B44();
  (*(v5 + 8))(v8, v39);
  v33 = sub_2684B3FC4();
  sub_26846E780(v12, v33, v34, v40);

  sub_268467A4C(v12, &qword_28027D3E8, &unk_2684B7F40);
  return sub_268467A4C(v22, &qword_28027D3D8, &qword_2684B6BF8);
}

uint64_t sub_26847187C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D580, &qword_2684B6F78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4F0, &qword_2684B8A20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  v11 = sub_2684B3C14();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B3AB4();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_268467A4C(v10, &qword_28027D4F0, &qword_2684B8A20);
    v16 = 1;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = sub_2684B3BF4();
    v27 = MEMORY[0x277D837D0];
    v28 = MEMORY[0x277D63F80];
    v25 = v17;
    v26 = v18;
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_2684B5404();
    (*(v12 + 8))(v15, v11);
    v6[*(v2 + 36)] = 1;
    sub_26846A8C8(v6, a1, &qword_28027D580, &qword_2684B6F78);
    v16 = 0;
  }

  return (*(v3 + 56))(a1, v16, 1, v2);
}

uint64_t sub_268471B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddTasks3pSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268471B90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddTasks3pSnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26847031C(v4, a1);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for AddTasks3pSnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_2684B3AD4();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_268471CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AddTasks3pSnippet() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_2684714C8(a1, a2, v8, a3);
}

uint64_t sub_268471D54(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D550, &qword_2684B6F10);
  return v4(v5, &a1[*(v6 + 48)]);
}

unint64_t sub_268471DBC()
{
  result = qword_28027D518;
  if (!qword_28027D518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D3E0, &unk_2684B6C00);
    sub_268471E78();
    sub_268472014(&qword_28027D540, type metadata accessor for PunchoutToNotebookItemModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D518);
  }

  return result;
}

unint64_t sub_268471E78()
{
  result = qword_28027D520;
  if (!qword_28027D520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D3D8, &qword_2684B6BF8);
    sub_268471F04();
    sub_26846F238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D520);
  }

  return result;
}

unint64_t sub_268471F04()
{
  result = qword_28027D528;
  if (!qword_28027D528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D400, &qword_2684B6C50);
    sub_268472014(&qword_28027D530, type metadata accessor for ReminderDetail3pView);
    sub_268471FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D528);
  }

  return result;
}

unint64_t sub_268471FC0()
{
  result = qword_28027D538;
  if (!qword_28027D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D538);
  }

  return result;
}

uint64_t sub_268472014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26847205C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2684720C4()
{
  result = qword_28027D5A0;
  if (!qword_28027D5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D4E0, &qword_2684B6E98);
    sub_268472150();
    sub_26846B18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D5A0);
  }

  return result;
}

unint64_t sub_268472150()
{
  result = qword_28027D5A8;
  if (!qword_28027D5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D4D8, &qword_2684B6E08);
    sub_268472208();
    sub_26846ACF0(&qword_28027D450, &qword_28027D458, &unk_2684B6FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D5A8);
  }

  return result;
}

unint64_t sub_268472208()
{
  result = qword_28027D5B0;
  if (!qword_28027D5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D4D0, &qword_2684B6DD8);
    sub_26846ACF0(&qword_28027D5B8, &qword_28027D5C0, &qword_2684B6F98);
    sub_26846F238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D5B0);
  }

  return result;
}

uint64_t sub_2684722C0()
{
  v1 = v0;
  v2 = sub_2684B47F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 32);
  v15 = *(v1 + 1);
  v7 = v15;
  if (v16 != 1)
  {

    sub_2684B5704();
    v10 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_268472750(&v15);
    (*(v3 + 8))(v6, v2);
    v7 = v13;
    v8 = v14;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = *v1;
    v11 = v1[1];

    return v9;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = v7;
  v14 = v8;
  MEMORY[0x26D619980](46, 0xE100000000000000);
  MEMORY[0x26D619980](*v1, v1[1]);
  return v13;
}

uint64_t sub_268472464()
{
  sub_26846EEA4();
  sub_2684B4804();
  return v1;
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

uint64_t sub_2684724D0(uint64_t a1, int a2)
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

uint64_t sub_268472518(uint64_t result, int a2, int a3)
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

uint64_t sub_2684725AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = sub_2684722C0();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D5D8, &qword_2684B7130);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D5E0, &qword_2684B7138);
  v10 = (a2 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = v5;
  v10[2] = v7;
  return result;
}

uint64_t sub_268472670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2684726D4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_2684726D4()
{
  result = qword_28027D5C8;
  if (!qword_28027D5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D5D0, &qword_2684B7100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D5C8);
  }

  return result;
}

uint64_t sub_268472750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D5E8, &qword_2684B7140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2684727B8()
{
  result = qword_28027D5F0;
  if (!qword_28027D5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D5E0, &qword_2684B7138);
    sub_26846ACF0(&qword_28027D5F8, &qword_28027D5D8, &qword_2684B7130);
    sub_26846ACF0(&qword_28027D600, &qword_28027D608, &qword_2684B7148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D5F0);
  }

  return result;
}

uint64_t type metadata accessor for CompletionButton()
{
  result = qword_28027D618;
  if (!qword_28027D618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268472910()
{
  sub_268472A1C();
  if (v0 <= 0x3F)
  {
    sub_2684B4EE4();
    if (v1 <= 0x3F)
    {
      sub_268472AD8(319, &qword_28027D630, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_268472A74();
        if (v3 <= 0x3F)
        {
          sub_268472AD8(319, &qword_28027D648, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_268472A1C()
{
  if (!qword_28027D628)
  {
    sub_2684B41E4();
    v0 = sub_2684B5004();
    if (!v1)
    {
      atomic_store(v0, &qword_28027D628);
    }
  }
}

void sub_268472A74()
{
  if (!qword_28027D638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D640, qword_2684B8BF0);
    v0 = sub_2684B43F4();
    if (!v1)
    {
      atomic_store(v0, &qword_28027D638);
    }
  }
}

void sub_268472AD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_268472B48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_2684B47F4();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CompletionButton();
  v7 = v6 - 8;
  v40 = *(v6 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D650, &qword_2684B71D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v37 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D658, &qword_2684B71D8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  *v12 = sub_2684B50C4();
  v12[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D660, &qword_2684B71E0);
  sub_268472FC4(v2, v12 + *(v18 + 44));
  sub_26846ACF0(&qword_28027D668, &qword_28027D650, &qword_2684B71D0);
  sub_2684B4D44();
  sub_268467A4C(v12, &qword_28027D650, &qword_2684B71D0);
  v19 = sub_2684B4AC4();
  KeyPath = swift_getKeyPath();
  v21 = &v16[*(v13 + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  sub_268473CC4(v2, &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v23 = swift_allocObject();
  v24 = v41;
  sub_268473D28(&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_268473DEC();
  sub_2684B4CF4();

  sub_26845F0C0(v16);
  v25 = v2 + *(v7 + 44);
  v26 = *v25;
  if (*(v25 + 8) != 1)
  {

    sub_2684B5704();
    v27 = sub_2684B4A24();
    sub_2684B4324();

    v28 = v37;
    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26846B1E0(v26, 0);
    (*(v38 + 8))(v28, v39);
    LOBYTE(v26) = v42;
  }

  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = (v26 & 1) == 0;
  v31 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D678, &qword_2684B7250) + 36));
  *v31 = v29;
  v31[1] = sub_268473F14;
  v31[2] = v30;
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v34 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D680, &unk_2684B72E0);
  v36 = v24 + *(result + 36);
  *v36 = 1;
  *(v36 + 8) = v32;
  *(v36 + 16) = 0;
  *(v36 + 24) = v33;
  *(v36 + 32) = 0;
  *(v36 + 40) = v34;
  *(v36 + 48) = 0;
  return result;
}

uint64_t sub_268472FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v73 = a2;
  v58 = sub_2684B4554();
  v2 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6A0, &qword_2684B7310);
  v4 = *(*(v70 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v70);
  v72 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v69 = (&v57 - v8);
  MEMORY[0x28223BE20](v7);
  v71 = &v57 - v9;
  v10 = sub_2684B41E4();
  v61 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v66 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6A8, &qword_2684B7318);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v57 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6B0, &qword_2684B7320);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v68 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v57 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v57 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  MEMORY[0x26D619380]();
  sub_2684B3FD4();
  v32 = *(v11 + 8);
  v62 = v11 + 8;
  v63 = v32;
  v32(v16, v10);
  v60 = 0x80000002684C43E0;
  v33 = sub_2684B4EC4();
  v34 = (v21 + *(v18 + 44));
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6B8, &qword_2684B7328);
  v35 = *(v65 + 28);
  v36 = *MEMORY[0x277CE1048];
  v37 = sub_2684B4EE4();
  v38 = *(v37 - 8);
  v39 = *(v38 + 104);
  v64 = v37;
  v39(v34 + v35, v36);
  *v34 = swift_getKeyPath();
  v40 = v59;
  *v21 = v33;
  sub_26846A8C8(v21, v28, &qword_28027D6A8, &qword_2684B7318);
  v67 = v30;
  sub_26846A8C8(v28, v30, &qword_28027D6B0, &qword_2684B7320);
  MEMORY[0x26D619380](v31);
  sub_2684B3FD4();
  v41 = v61;
  v42 = v63;
  v63(v16, v61);
  v43 = sub_2684B4EC4();
  v44 = v66;
  MEMORY[0x26D619380](v31);
  LOBYTE(v33) = sub_2684B3FD4();
  v42(v44, v41);
  if ((v33 & 1) != 0 || *(v40 + *(type metadata accessor for CompletionButton() + 24)) == 1)
  {
    sub_2684B4544();
  }

  else
  {
    v74 = sub_2684B49E4();
  }

  v45 = sub_2684B44B4();
  v46 = *(type metadata accessor for CompletionButton() + 20);
  KeyPath = swift_getKeyPath();
  v48 = v69;
  v49 = (v69 + *(v70 + 36));
  (*(v38 + 16))(v49 + *(v65 + 28), v40 + v46, v64);
  *v49 = KeyPath;
  *v48 = v43;
  v48[1] = v45;
  v50 = v71;
  sub_26846A8C8(v48, v71, &qword_28027D6A0, &qword_2684B7310);
  v52 = v67;
  v51 = v68;
  sub_26846A6DC(v67, v68, &qword_28027D6B0, &qword_2684B7320);
  v53 = v72;
  sub_26846A6DC(v50, v72, &qword_28027D6A0, &qword_2684B7310);
  v54 = v73;
  sub_26846A6DC(v51, v73, &qword_28027D6B0, &qword_2684B7320);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6C0, &unk_2684B7360);
  sub_26846A6DC(v53, v54 + *(v55 + 48), &qword_28027D6A0, &qword_2684B7310);
  sub_268467A4C(v50, &qword_28027D6A0, &qword_2684B7310);
  sub_268467A4C(v52, &qword_28027D6B0, &qword_2684B7320);
  sub_268467A4C(v53, &qword_28027D6A0, &qword_2684B7310);
  return sub_268467A4C(v51, &qword_28027D6B0, &qword_2684B7320);
}

uint64_t sub_268473624(uint64_t a1)
{
  v2 = type metadata accessor for CompletionButton();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D688, &qword_2684B76A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20[-v9];
  v11 = a1 + *(v3 + 36);
  v12 = *v11;
  v13 = *(v11 + 8);
  v22 = *v11;
  v23 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D690, &qword_2684B72F0);
  result = sub_2684B4F34();
  if ((v21 & 1) == 0)
  {
    v22 = v12;
    v23 = v13;
    v21 = 1;
    sub_2684B4F44();
    v15 = sub_2684B56C4();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    sub_268473CC4(a1, &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_2684B56A4();
    v16 = sub_2684B5694();
    v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v16;
    *(v18 + 24) = v19;
    sub_268473D28(v6, v18 + v17);
    sub_268476E6C(0, 0, v10, &unk_2684B7300, v18);
  }

  return result;
}

uint64_t sub_268473854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_2684B41E4();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_2684B56A4();
  v4[14] = sub_2684B5694();
  v9 = sub_2684B5684();

  return MEMORY[0x2822009F8](sub_268473954, v9, v8);
}

uint64_t sub_268473954()
{
  v1 = *(v0 + 112);
  v17 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);

  v18 = type metadata accessor for CompletionButton();
  v6 = v4 + *(v18 + 32);
  sub_268473B54(v0 + 16);
  v16 = *(v0 + 40);
  v15 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  MEMORY[0x26D619380]();
  v8 = sub_2684B3FD4();
  v9 = *(v3 + 8);
  v9(v2, v5);
  MEMORY[0x26D619380](v7);
  (*(v15 + 16))((v8 & 1) == 0, v2, v16);
  v9(v2, v5);
  (*(v3 + 16))(v2, v17, v5);
  sub_2684B4FC4();
  v9(v17, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v10 = (v4 + *(v18 + 28));
  v11 = *v10;
  v12 = *(v10 + 1);
  *(v0 + 56) = v11;
  *(v0 + 64) = v12;
  *(v0 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D690, &qword_2684B72F0);
  sub_2684B4F44();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_268473B54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2684B47F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26846A6DC(v2, v11, &qword_28027D698, &qword_2684B7308);
  if (v12 == 1)
  {
    return sub_268474100(v11, a1);
  }

  sub_2684B5704();
  v10 = sub_2684B4A24();
  sub_2684B4324();

  sub_2684B47E4();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_268473CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompletionButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268473D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompletionButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268473D8C()
{
  v1 = *(type metadata accessor for CompletionButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_268473624(v2);
}

unint64_t sub_268473DEC()
{
  result = qword_28027D670;
  if (!qword_28027D670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D658, &qword_2684B71D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D650, &qword_2684B71D0);
    sub_26846ACF0(&qword_28027D668, &qword_28027D650, &qword_2684B71D0);
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D670);
  }

  return result;
}

uint64_t sub_268473F1C(uint64_t a1)
{
  v4 = *(type metadata accessor for CompletionButton() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26847400C;

  return sub_268473854(a1, v6, v7, v1 + v5);
}

uint64_t sub_26847400C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_268474100(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_268474118(uint64_t a1)
{
  v2 = sub_2684B4EE4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2684B4694();
}

unint64_t sub_2684741E0()
{
  result = qword_28027D6C8;
  if (!qword_28027D6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D680, &unk_2684B72E0);
    sub_26847426C();
    sub_26846B18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D6C8);
  }

  return result;
}

unint64_t sub_26847426C()
{
  result = qword_28027D6D0;
  if (!qword_28027D6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D678, &qword_2684B7250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D658, &qword_2684B71D8);
    sub_268473DEC();
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D6D8, &qword_28027D6E0, &qword_2684B7F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D6D0);
  }

  return result;
}

void sub_268474360()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  v1 = sub_2684B3A84();

  sub_2684B5454();
}

uint64_t type metadata accessor for LocationTriggerPill()
{
  result = qword_28027D6F0;
  if (!qword_28027D6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26847446C()
{
  sub_2684B4084();
  if (v0 <= 0x3F)
  {
    sub_2684744F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2684744F0()
{
  if (!qword_28027D700)
  {
    sub_26847454C();
    v0 = sub_2684B4464();
    if (!v1)
    {
      atomic_store(v0, &qword_28027D700);
    }
  }
}

unint64_t sub_26847454C()
{
  result = qword_28027D708;
  if (!qword_28027D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D708);
  }

  return result;
}

uint64_t sub_2684745BC()
{
  if (sub_2684B4064())
  {
    sub_2684B4EC4();
    sub_2684B4E74();
    sub_2684B4E54();
  }

  else
  {
    sub_2684B4EC4();
    sub_2684B4E74();
    sub_2684B4E44();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D738, &qword_2684B7440);
  sub_268475610();
  sub_2684B4D44();
}

uint64_t sub_2684746BC@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D710, &qword_2684B7418);
  v2 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v4 = &v44 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D718, &unk_2684B7420);
  v5 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v44 - v6;
  v7 = sub_2684B4004();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = sub_2684B3D44();
  v46 = *(v15 - 8);
  v16 = *(v46 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D348, &unk_2684BA020);
  v48 = *(v19 - 8);
  v20 = *(v48 + 64);
  MEMORY[0x28223BE20](v19);
  v47 = &v44 - v21;
  if (sub_2684B4064())
  {
    v45 = v19;
    v22 = v49;
    sub_2684B4054();
    (*(v8 + 104))(v12, *MEMORY[0x277D5E160], v7);
    v23 = sub_2684B3FF4();
    v24 = *(v8 + 8);
    v24(v12, v7);
    v24(v14, v7);
    v25 = v46;
    v26 = MEMORY[0x277D5E0F0];
    if ((v23 & 1) == 0)
    {
      v26 = MEMORY[0x277D5E0D8];
    }

    (*(v46 + 104))(v18, *v26, v15);
    sub_2684B3D34();
    sub_2684B4894();
    if (qword_28027CF30 != -1)
    {
      swift_once();
    }

    v27 = qword_280282928;
    v28 = sub_2684B4B94();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    (*(v25 + 8))(v18, v15);
    v53 = v28;
    v54 = v30;
    v55 = v32 & 1;
    v56 = v34;
    v35 = MEMORY[0x277CE0BD8];
    v36 = MEMORY[0x277CE0BC8];
    v37 = v47;
    sub_2684B4D44();
    sub_26846D468(v28, v30, v32 & 1);

    v38 = v48;
    v39 = v45;
    (*(v48 + 16))(v22, v37, v45);
    swift_storeEnumTagMultiPayload();
    v53 = v35;
    v54 = v36;
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D728, &qword_28027D710, &qword_2684B7418);
    sub_2684B49B4();
    return (*(v38 + 8))(v37, v39);
  }

  else
  {
    v41 = *(type metadata accessor for LocationTriggerPill() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
    sub_2684B4454();
    v42 = v53;
    *v4 = sub_2684B4834();
    *(v4 + 1) = v42;
    v4[16] = 0;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D720, &unk_2684B7430);
    sub_268474CDC(v1, &v4[*(v43 + 44)]);
    sub_26845F52C(v4, v49);
    swift_storeEnumTagMultiPayload();
    v53 = MEMORY[0x277CE0BD8];
    v54 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D728, &qword_28027D710, &qword_2684B7418);
    sub_2684B49B4();
    return sub_26845F59C(v4);
  }
}

uint64_t sub_268474CDC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v3 = sub_2684B4004();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = sub_2684B3D44();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D348, &unk_2684BA020);
  v16 = *(v47 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v47);
  v49 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v48 = &v47 - v20;
  v50 = a1;
  sub_2684B4054();
  (*(v4 + 104))(v8, *MEMORY[0x277D5E160], v3);
  LOBYTE(a1) = sub_2684B3FF4();
  v21 = *(v4 + 8);
  v21(v8, v3);
  v21(v10, v3);
  v22 = MEMORY[0x277D5E0E8];
  if ((a1 & 1) == 0)
  {
    v22 = MEMORY[0x277D5E0E0];
  }

  (*(v12 + 104))(v15, *v22, v11);
  sub_2684B3D34();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v23 = qword_280282928;
  v24 = sub_2684B4B94();
  v26 = v25;
  v28 = v27;
  (*(v12 + 8))(v15, v11);
  v29 = sub_2684B4B64();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_26846D468(v24, v26, v28 & 1);

  v52 = v29;
  v53 = v31;
  v54 = v33 & 1;
  v55 = v35;
  v36 = v48;
  sub_2684B4D44();
  sub_26846D468(v29, v31, v33 & 1);

  v37 = sub_2684B4074();
  v39 = v38;
  v40 = v16[2];
  v41 = v49;
  v42 = v47;
  v40(v49, v36, v47);
  v43 = v51;
  v40(v51, v41, v42);
  v44 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D730, &unk_2684B89E0) + 48)];
  *v44 = v37;
  *(v44 + 1) = v39;
  v44[16] = 0;
  *(v44 + 3) = MEMORY[0x277D84F90];
  sub_268475600(v37, v39, 0);
  v45 = v16[1];

  v45(v36, v42);
  sub_26846D468(v37, v39, 0);

  return (v45)(v41, v42);
}

double sub_2684751AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1 - 8);
  v7 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  sub_268475340(v2, &v15 - v8);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_2684753A4(v9, v11 + v10);
  sub_268475340(v2, v7);
  v12 = swift_allocObject();
  sub_2684753A4(v7, v12 + v10);
  KeyPath = swift_getKeyPath();
  *a2 = sub_268475408;
  *(a2 + 8) = v11;
  *(a2 + 16) = sub_26847559C;
  *(a2 + 24) = v12;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  result = 24.0;
  *(a2 + 48) = xmmword_2684B6710;
  *(a2 + 64) = sub_2684A3C08;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_268475340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationTriggerPill();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684753A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationTriggerPill();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268475408()
{
  v0 = *(*(type metadata accessor for LocationTriggerPill() - 8) + 80);

  return sub_2684745BC();
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for LocationTriggerPill() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = sub_2684B4084();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_26847559C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationTriggerPill() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_2684746BC(a1);
}

uint64_t sub_268475600(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_268475610()
{
  result = qword_28027D740;
  if (!qword_28027D740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D738, &qword_2684B7440);
    sub_26846ACF0(&qword_28027D748, &qword_28027D750, &qword_2684B7448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D740);
  }

  return result;
}

uint64_t type metadata accessor for ReadingPromptButtons()
{
  result = qword_28027D768;
  if (!qword_28027D768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26847573C()
{
  result = sub_2684B3FB4();
  if (v1 <= 0x3F)
  {
    result = sub_2684B52B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2684757DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D778, &qword_2684B74C8);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  v36 = sub_2684B51B4();
  v33 = *(v36 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v36);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D780, &qword_2684B74D0);
  v9 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v30 - v10;
  v12 = type metadata accessor for ReadingPromptButtons();
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D788, &qword_2684B74D8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  if (sub_2684B3FA4())
  {
    sub_26847664C(v1, &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v20 = swift_allocObject();
    sub_2684766B0(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    sub_2684B4F74();
    (*(v15 + 16))(v11, v18, v14);
    swift_storeEnumTagMultiPayload();
    sub_2684765E8();
    sub_2684768D0(&qword_28027D798, MEMORY[0x277D63C38]);
    sub_2684B49B4();
    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    sub_268475D98(v6);
    v30 = sub_2684765E8();
    v41 = v14;
    v42 = v30;
    swift_getOpaqueTypeConformance2();
    v22 = sub_2684B4BC4();
    (*(v31 + 8))(v6, v3);
    v23 = MEMORY[0x277D63A60];
    v43 = MEMORY[0x277CE11C8];
    v44 = MEMORY[0x277D63A60];
    v41 = v22;
    sub_26847664C(v2, &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v25 = swift_allocObject();
    sub_2684766B0(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
    sub_2684B4F74();
    v26 = sub_2684B4BC4();
    (*(v15 + 8))(v18, v14);
    v40 = v23;
    v39 = MEMORY[0x277CE11C8];
    v38 = v26;
    v27 = v32;
    sub_2684B51A4();
    v28 = v33;
    v29 = v36;
    (*(v33 + 16))(v11, v27, v36);
    swift_storeEnumTagMultiPayload();
    sub_2684768D0(&qword_28027D798, MEMORY[0x277D63C38]);
    sub_2684B49B4();
    return (*(v28 + 8))(v27, v29);
  }
}

uint64_t sub_268475D98@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_2684B4554();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v21 = sub_2684B5134();
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReadingPromptButtons();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D788, &qword_2684B74D8);
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v20);
  v14 = &v20 - v13;
  sub_26847664C(v1, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_2684766B0(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_2684B4F74();
  v17 = v21;
  (*(v4 + 104))(v7, *MEMORY[0x277D63A90], v21);
  v23 = sub_2684B4E74();
  sub_2684B44B4();
  sub_2684B4544();
  sub_2684B44B4();
  sub_2684765E8();
  v18 = v20;
  sub_2684B4BD4();

  (*(v4 + 8))(v7, v17);
  return (*(v11 + 8))(v14, v18);
}

uint64_t sub_2684760F4(uint64_t a1)
{
  v2 = sub_2684B3A44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2684B5464();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(type metadata accessor for ReadingPromptButtons() + 20);
  sub_2684B5294();
  sub_2684B3A34();
  v13 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  sub_2684768D0(&qword_28027D7A0, MEMORY[0x277D5DF90]);
  v14 = sub_2684B3A84();

  sub_2684B5454();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_26847630C(uint64_t a1)
{
  v2 = sub_2684B3A64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2684B5464();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(type metadata accessor for ReadingPromptButtons() + 20);
  sub_2684B5294();
  sub_2684B3A54();
  v13 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  sub_2684768D0(&qword_28027D7A8, MEMORY[0x277D5DFA0]);
  v14 = sub_2684B3A84();

  sub_2684B5454();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_26847651C@<X0>(uint64_t a1@<X8>)
{
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v2 = qword_280282928;
  result = sub_2684B4B94();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

unint64_t sub_2684765E8()
{
  result = qword_28027D790;
  if (!qword_28027D790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D788, &qword_2684B74D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D790);
  }

  return result;
}

uint64_t sub_26847664C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingPromptButtons();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684766B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingPromptButtons();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26847672C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ReadingPromptButtons() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for ReadingPromptButtons() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = sub_2684B3FB4();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v1[7];
  v6 = sub_2684B52B4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_2684768D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_268476918()
{
  result = qword_28027D7B0;
  if (!qword_28027D7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D7B8, &unk_2684B74E0);
    sub_2684765E8();
    sub_2684768D0(&qword_28027D798, MEMORY[0x277D63C38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D7B0);
  }

  return result;
}

uint64_t type metadata accessor for ReminderDisambiguationRow()
{
  result = qword_28027D7C0;
  if (!qword_28027D7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268476A4C()
{
  result = sub_2684B41E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_268476AD4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2684B41E4();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7D0, &qword_2684B7560) + 28)) = 0;
  v4 = type metadata accessor for ReminderView(0);
  *(a1 + *(v4 + 20)) = 0;
  *(a1 + *(v4 + 24)) = 0;
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7D8, &qword_2684B7598) + 36));
  *v7 = KeyPath;
  v7[1] = sub_268476C74;
  v7[2] = v6;
  LOBYTE(KeyPath) = sub_2684B4A44();
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7E0, &qword_2684B75A0) + 36);
  *v8 = KeyPath;
  result = 0.0;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 1;
  return result;
}

uint64_t sub_268476C08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2684B4784();
  *a1 = result & 1;
  return result;
}

unint64_t sub_268476C8C()
{
  result = qword_28027D7E8;
  if (!qword_28027D7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D7E0, &qword_2684B75A0);
    sub_268476D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D7E8);
  }

  return result;
}

unint64_t sub_268476D18()
{
  result = qword_28027D7F0;
  if (!qword_28027D7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D7D8, &qword_2684B7598);
    sub_268476DA4();
    sub_268476DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D7F0);
  }

  return result;
}

unint64_t sub_268476DA4()
{
  result = qword_28027D7F8;
  if (!qword_28027D7F8)
  {
    type metadata accessor for ReminderView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D7F8);
  }

  return result;
}

unint64_t sub_268476DFC()
{
  result = qword_28027D6D8;
  if (!qword_28027D6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D6E0, &qword_2684B7F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D6D8);
  }

  return result;
}

uint64_t sub_268476E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D688, &qword_2684B76A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26846A6DC(a3, v27 - v11, &qword_28027D688, &qword_2684B76A0);
  v13 = sub_2684B56C4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_268467A4C(v12, &qword_28027D688, &qword_2684B76A0);
  }

  else
  {
    sub_2684B56B4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2684B5684();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2684B5574() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_268467A4C(a3, &qword_28027D688, &qword_2684B76A0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_268467A4C(a3, &qword_28027D688, &qword_2684B76A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_26847716C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2684B4034();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = sub_2684B4A94();
  sub_2684B4364();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D868, &qword_2684B7788);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

id sub_268477224()
{
  v0 = sub_2684B37F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2684B4014();
  if (v6 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v7 = v5;
  v8 = v6;
  sub_268479988(v5, v6);
  v9 = sub_2684B3804();
  v10 = [objc_opt_self() metadataWithDataRepresentation_];

  sub_2684799DC(v7, v8);
  sub_2684799DC(v7, v8);
  sub_2684B4024();
  LOBYTE(v7) = sub_268477728(v4);
  (*(v1 + 8))(v4, v0);
  if ((v7 & 1) == 0)
  {

LABEL_4:
    sub_2684B4024();
    v10 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
    v11 = sub_2684B37D4();
    [v10 setURL_];

    (*(v1 + 8))(v4, v0);
  }

  return v10;
}

void sub_2684773F8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for LinkAttachmentViewInternal(0);
  v27 = *(v4 - 8);
  v5 = v27[8];
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_2684B37F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D688, &qword_2684B76A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = [a2 metadata];
  if ((sub_268477728(a1) & 1) != 0 && (v15 = [v14 icon]) != 0)
  {
    v27 = v15;

    v16 = v27;
  }

  else
  {
    v17 = sub_2684B56C4();
    v18 = *(*(v17 - 8) + 56);
    v25 = v13;
    v18(v13, 1, 1, v17);
    (*(v7 + 16))(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    sub_268478D70(v26, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v20 = a2;
    v21 = (v8 + *(v27 + 80) + v19) & ~*(v27 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    (*(v7 + 32))(v22 + v19, v9, v6);
    sub_268478DD4(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    *(v22 + ((v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
    v23 = v20;
    sub_268476E6C(0, 0, v25, &unk_2684B76B0, v22);
  }
}

uint64_t sub_268477728(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2684B37F4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v57 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D828, &qword_2684B76E8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v66 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v54[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D830, &unk_2684B76F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v65 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v63 = &v54[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v64 = &v54[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v54[-v23];
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v54[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v54[-v28];
  v30 = v5[2];
  v59 = v5 + 2;
  v60 = a1;
  v58 = v30;
  v30(&v54[-v28], a1, v4);
  v31 = 1;
  v68 = v5[7];
  v68(v29, 0, 1, v4);
  v61 = v2;
  v32 = [v2 URL];
  if (v32)
  {
    v33 = v32;
    sub_2684B37E4();

    v31 = 0;
  }

  v68(v27, v31, 1, v4);
  v62 = v8;
  v34 = *(v8 + 48);
  sub_26846A6DC(v29, v13, &qword_28027D830, &unk_2684B76F0);
  sub_26846A6DC(v27, &v13[v34], &qword_28027D830, &unk_2684B76F0);
  v67 = v5;
  v35 = v5[6];
  if (v35(v13, 1, v4) != 1)
  {
    sub_26846A6DC(v13, v24, &qword_28027D830, &unk_2684B76F0);
    v56 = v35;
    if (v35(&v13[v34], 1, v4) != 1)
    {
      v43 = v67;
      v44 = v57;
      (v67[4])(v57, &v13[v34], v4);
      sub_26847993C(&qword_28027D838, MEMORY[0x277CC9260]);
      v55 = sub_2684B5534();
      v45 = v43[1];
      v45(v44, v4);
      sub_268467A4C(v27, &qword_28027D830, &unk_2684B76F0);
      sub_268467A4C(v29, &qword_28027D830, &unk_2684B76F0);
      v45(v24, v4);
      sub_268467A4C(v13, &qword_28027D830, &unk_2684B76F0);
      v35 = v56;
      if (v55)
      {
        goto LABEL_18;
      }

LABEL_9:
      v37 = v64;
      v58(v64, v60, v4);
      v38 = 1;
      v68(v37, 0, 1, v4);
      v39 = [v61 originalURL];
      if (v39)
      {
        v40 = v63;
        v41 = v39;
        sub_2684B37E4();

        v38 = 0;
        v42 = v65;
      }

      else
      {
        v42 = v65;
        v40 = v63;
      }

      v46 = v62;
      v68(v40, v38, 1, v4);
      v47 = *(v46 + 48);
      v48 = v66;
      sub_26846A6DC(v37, v66, &qword_28027D830, &unk_2684B76F0);
      sub_26846A6DC(v40, &v48[v47], &qword_28027D830, &unk_2684B76F0);
      if (v35(v48, 1, v4) == 1)
      {
        sub_268467A4C(v40, &qword_28027D830, &unk_2684B76F0);
        sub_268467A4C(v37, &qword_28027D830, &unk_2684B76F0);
        if (v35(&v48[v47], 1, v4) == 1)
        {
          v36 = v48;
          goto LABEL_17;
        }
      }

      else
      {
        sub_26846A6DC(v48, v42, &qword_28027D830, &unk_2684B76F0);
        if (v35(&v48[v47], 1, v4) != 1)
        {
          v50 = v67;
          v51 = v57;
          (v67[4])(v57, &v48[v47], v4);
          sub_26847993C(&qword_28027D838, MEMORY[0x277CC9260]);
          v49 = sub_2684B5534();
          v52 = v50[1];
          v52(v51, v4);
          sub_268467A4C(v40, &qword_28027D830, &unk_2684B76F0);
          sub_268467A4C(v37, &qword_28027D830, &unk_2684B76F0);
          v52(v42, v4);
          sub_268467A4C(v48, &qword_28027D830, &unk_2684B76F0);
          return v49 & 1;
        }

        sub_268467A4C(v40, &qword_28027D830, &unk_2684B76F0);
        sub_268467A4C(v37, &qword_28027D830, &unk_2684B76F0);
        (v67[1])(v42, v4);
      }

      sub_268467A4C(v48, &qword_28027D828, &qword_2684B76E8);
      v49 = 0;
      return v49 & 1;
    }

    sub_268467A4C(v27, &qword_28027D830, &unk_2684B76F0);
    sub_268467A4C(v29, &qword_28027D830, &unk_2684B76F0);
    (v67[1])(v24, v4);
    v35 = v56;
LABEL_8:
    sub_268467A4C(v13, &qword_28027D828, &qword_2684B76E8);
    goto LABEL_9;
  }

  sub_268467A4C(v27, &qword_28027D830, &unk_2684B76F0);
  sub_268467A4C(v29, &qword_28027D830, &unk_2684B76F0);
  if (v35(&v13[v34], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  v36 = v13;
LABEL_17:
  sub_268467A4C(v36, &qword_28027D830, &unk_2684B76F0);
LABEL_18:
  v49 = 1;
  return v49 & 1;
}

uint64_t sub_268477F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[20] = a4;
  v7 = sub_2684B37F4();
  v6[23] = v7;
  v8 = *(v7 - 8);
  v6[24] = v8;
  v9 = *(v8 + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268478040, 0, 0);
}

uint64_t sub_268478040()
{
  v1 = v0[20];
  v2 = [objc_allocWithZone(MEMORY[0x277CD46E0]) init];
  v0[27] = v2;
  v3 = sub_2684B37D4();
  v0[28] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_268478194;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D808, &qword_2684B76D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2684787B8;
  v0[13] = &block_descriptor;
  v0[14] = v4;
  [v2 startFetchingMetadataForURL:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_268478194()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_2684784D8;
  }

  else
  {
    v3 = sub_2684782A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2684782A4()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[18];
  v0[30] = v7;

  sub_2684B4024();
  LOBYTE(v6) = sub_268477728(v3);
  (*(v5 + 8))(v3, v4);
  if (v6)
  {
    sub_2684B56A4();
    v0[31] = sub_2684B5694();
    v9 = sub_2684B5684();

    return MEMORY[0x2822009F8](sub_2684783E8, v9, v8);
  }

  else
  {

    v11 = v0[25];
    v10 = v0[26];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_2684783E8()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[22];

  [v3 setMetadata_];

  return MEMORY[0x2822009F8](sub_268478468, 0, 0);
}

uint64_t sub_268478468()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2684784D8()
{
  v33 = v0;
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  swift_willThrow();

  if (qword_28027CF20 != -1)
  {
    swift_once();
  }

  v4 = v0[29];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  v8 = v0[20];
  v9 = sub_2684B4354();
  __swift_project_value_buffer(v9, qword_280282910);
  (*(v6 + 16))(v5, v8, v7);
  v10 = v4;
  v11 = sub_2684B4334();
  v12 = sub_2684B56F4();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[29];
  v16 = v0[24];
  v15 = v0[25];
  v17 = v0[23];
  if (v13)
  {
    v18 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v18 = 136315394;
    sub_26847993C(&qword_28027D810, MEMORY[0x277CC9260]);
    v19 = sub_2684B59E4();
    v21 = v20;
    (*(v16 + 8))(v15, v17);
    v22 = sub_268479394(v19, v21, v32);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v0[19] = v14;
    v23 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D818, &qword_2684B76D8);
    v24 = sub_2684B5564();
    v26 = sub_268479394(v24, v25, v32);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_26845C000, v11, v12, "Failed retrieving link metadata for %s with error: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D61A450](v31, -1, -1);
    MEMORY[0x26D61A450](v18, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  v28 = v0[25];
  v27 = v0[26];

  v29 = v0[1];

  return v29();
}

uint64_t sub_2684787B8(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D818, &qword_2684B76D8);
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

uint64_t sub_268478890(void *a1)
{
  v2 = sub_2684B37F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 metadata];
  sub_2684B4024();
  v8 = sub_268477728(v6);

  v9 = *(v3 + 8);
  result = v9(v6, v2);
  if ((v8 & 1) == 0)
  {
    v11 = sub_268477224();
    [a1 setMetadata_];
    sub_2684B4024();
    sub_2684773F8(v6, a1);

    return v9(v6, v2);
  }

  return result;
}

id sub_2684789EC()
{
  v0 = sub_2684B37F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CD46D0]) init];
  v6 = sub_268477224();
  [v5 setMetadata_];
  sub_2684B4024();
  sub_2684773F8(v4, v5);
  (*(v1 + 8))(v4, v0);
  [v5 _setPreferredSizeClass_];

  return v5;
}

double sub_268478B2C(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 10.0;
  if (a2)
  {
    *&a1 = 10.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits_];
  return result;
}

uint64_t sub_268478B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26847993C(&qword_28027D840, type metadata accessor for LinkAttachmentViewInternal);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_268478C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26847993C(&qword_28027D840, type metadata accessor for LinkAttachmentViewInternal);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_268478CB0()
{
  sub_26847993C(&qword_28027D840, type metadata accessor for LinkAttachmentViewInternal);
  sub_2684B4984();
  __break(1u);
}

uint64_t sub_268478D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkAttachmentViewInternal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268478DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkAttachmentViewInternal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268478E38(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2684B37F4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for LinkAttachmentViewInternal(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_26847400C;

  return sub_268477F70(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_268478FC0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2684790B8;

  return v7(a1);
}

uint64_t sub_2684790B8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2684791B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_268479D10;

  return sub_268478FC0(a1, v5);
}

uint64_t sub_268479268(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26847400C;

  return sub_268478FC0(a1, v5);
}

uint64_t sub_268479330(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_268479394(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_268479460(v11, 0, 0, 1, a1, a2);
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
    sub_268479330(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_268479460(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26847956C(a5, a6);
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
    result = sub_2684B58F4();
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

uint64_t sub_26847956C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2684795B8(a1, a2);
  sub_2684796E8(&unk_287913BE0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2684795B8(uint64_t a1, unint64_t a2)
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

  v6 = sub_2684797D4(v5, 0);
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

  result = sub_2684B58F4();
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
        v10 = sub_2684B55C4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2684797D4(v10, 0);
        result = sub_2684B5874();
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

uint64_t sub_2684796E8(uint64_t result)
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

  result = sub_268479848(result, v12, 1, v3);
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

void *sub_2684797D4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D820, &qword_2684B76E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_268479848(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D820, &qword_2684B76E0);
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

uint64_t sub_26847993C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268479988(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2684799DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2684799F0(a1, a2);
  }

  return a1;
}

uint64_t sub_2684799F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B4034();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2684B4034();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_268479B90(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268479BC8()
{
  result = sub_2684B4034();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_268479C50()
{
  result = qword_28027D870;
  if (!qword_28027D870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D868, &qword_2684B7788);
    sub_26847993C(&qword_28027D800, type metadata accessor for LinkAttachmentViewInternal);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D870);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_268479D38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_268479D80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_268479DD4()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v11.origin.x = v3;
  v11.origin.y = v5;
  v11.size.width = v7;
  v11.size.height = v9;
  Width = CGRectGetWidth(v11);
  v12.origin.x = v3;
  v12.origin.y = v5;
  v12.size.width = v7;
  v12.size.height = v9;
  *(v0 + 9) = CGRectGetHeight(v12) < Width;
}

uint64_t sub_268479ED8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_268479F20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_268479F94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = sub_2684B5364();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v35);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2684B47F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v2 + 32);
  v40 = *(v2 + 16);
  v13 = v40;
  if (v41 == 1)
  {
    v14 = *(&v40 + 1);

    if (v14)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v25 = sub_2684B4354();
    __swift_project_value_buffer(v25, qword_280282910);
    v26 = sub_2684B4334();
    v27 = sub_2684B5704();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_17;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "[IntentsUISlotViewModifier] intentsUIParameterPath not set up in view environment";
    goto LABEL_16;
  }

  sub_2684B5704();
  v22 = v9;
  v23 = a2;
  v24 = sub_2684B4A24();
  sub_2684B4324();

  a2 = v23;
  v9 = v22;
  sub_2684B47E4();
  swift_getAtKeyPath();
  sub_268467A4C(&v40, &qword_28027D5E8, &qword_2684B7140);
  (*(v22 + 8))(v12, v8);
  v13 = v38;
  v14 = v39;
  if (!v39)
  {
    goto LABEL_7;
  }

LABEL_3:
  LOBYTE(v39) = *(v2 + 8);
  v15 = *v2;
  v38 = v15;
  v34 = v5;
  if (v39 != 1)
  {

    sub_2684B5704();
    v30 = v8;
    v31 = v9;
    v32 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_268467A4C(&v38, &qword_28027D888, &qword_2684B79E0);
    v16 = (*(v31 + 8))(v12, v30);
    v15 = v37;
    if (v37)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  v16 = v15;
  if (!v15)
  {
LABEL_12:

    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v33 = sub_2684B4354();
    __swift_project_value_buffer(v33, qword_280282910);
    v26 = sub_2684B4334();
    v27 = sub_2684B5704();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_17;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "[IntentsUISlotViewModifier] INInteraction not set up in view environment.";
LABEL_16:
    _os_log_impl(&dword_26845C000, v26, v27, v29, v28, 2u);
    MEMORY[0x26D61A450](v28, -1, -1);
LABEL_17:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D878, &qword_2684B79D8);
    sub_26847A6CC();
    result = sub_2684B4BC4();
    v20 = result;
    goto LABEL_18;
  }

LABEL_5:
  MEMORY[0x28223BE20](v16);
  *(&v34 - 4) = v13;
  *(&v34 - 3) = v14;
  *(&v34 - 2) = a1;
  v17 = v15;
  v18 = v36;
  sub_2684B5374();

  sub_26847A73C();
  v19 = v35;
  v20 = sub_2684B4BC4();

  result = (*(v34 + 8))(v18, v19);
LABEL_18:
  *a2 = v20;
  return result;
}

uint64_t sub_26847A4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2684B5164();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D898, &qword_2684B79E8);
  v11 = swift_allocObject();
  v16 = xmmword_2684B7880;
  *(v11 + 16) = xmmword_2684B7880;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v17 = a3;

  sub_2684B5174();
  v12 = sub_2684B5334();
  (*(v7 + 8))(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8A0, &unk_2684B79F0);
  v13 = swift_allocObject();
  *(v13 + 16) = v16;
  *(v13 + 32) = v12;
  v14 = sub_2684B5324();

  return v14;
}

uint64_t sub_26847A634@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D878, &qword_2684B79D8);
  a2[3] = v4;
  a2[4] = sub_26847A6CC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, a1, v4);
}

unint64_t sub_26847A6CC()
{
  result = qword_28027D880;
  if (!qword_28027D880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D878, &qword_2684B79D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D880);
  }

  return result;
}

unint64_t sub_26847A73C()
{
  result = qword_28027D890;
  if (!qword_28027D890)
  {
    sub_2684B5364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D890);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26847A800@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v48 = type metadata accessor for ListBadgeView.EmblemView(0);
  v3 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2684B3BA4();
  v42 = *(v43 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v43);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8C8, &qword_2684B7A90);
  v7 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v9 = (&v41 - v8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8D0, &qword_2684B7A98);
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v12 = (&v41 - v11);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8D8, &qword_2684B7AA0);
  v13 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v15 = &v41 - v14;
  v16 = sub_2684B4E34();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2684B3BB4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (&v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v25, v2, v21);
  v26 = (*(v22 + 88))(v25, v21);
  if (v26 == *MEMORY[0x277D5DFF0])
  {
    (*(v22 + 96))(v25, v21);
    v27 = v25[1];
    v45 = *v25;
    v44 = v27;
    v28 = *(v2 + *(type metadata accessor for ListBadgeView(0) + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8F8, &qword_2684B7AA8);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2684B7A00;
    v30 = *MEMORY[0x277CE0EE0];
    v31 = *(v17 + 104);
    v31(v20, v30, v16);

    *(v29 + 32) = sub_2684B4EA4();
    v31(v20, v30, v16);
    *(v29 + 40) = sub_2684B4EA4();
    MEMORY[0x26D619420](v29);
    sub_2684B5114();
    sub_2684B5124();
    sub_2684B4514();
    *&v52 = v45;
    *(&v52 + 1) = v44;
    *&v53 = v28;
    *(&v53 + 1) = v56;
    v54 = v57;
    v55 = v58;
    v32 = v53;
    *v12 = v52;
    v12[1] = v32;
    v33 = v55;
    v12[2] = v54;
    v12[3] = v33;
    swift_storeEnumTagMultiPayload();
    sub_26847BD74(&v52, v51);
    sub_26847BC08();
    sub_26847BC5C();
    sub_2684B49B4();
    sub_26846A6DC(v15, v9, &qword_28027D8D8, &qword_2684B7AA0);
    swift_storeEnumTagMultiPayload();
    sub_26847BB7C();
    sub_2684B49B4();
    sub_26847BDAC(&v52);
    return sub_268467A4C(v15, &qword_28027D8D8, &qword_2684B7AA0);
  }

  else
  {
    v41 = v9;
    v35 = v48;
    if (v26 == *MEMORY[0x277D5DFF8])
    {
      (*(v22 + 96))(v25, v21);
      v36 = v42;
      v37 = v45;
      v38 = v25;
      v39 = v43;
      (*(v42 + 32))(v45, v38, v43);
      v40 = v44;
      (*(v36 + 16))(v44, v37, v39);
      *(v40 + *(v35 + 20)) = *(v2 + *(type metadata accessor for ListBadgeView(0) + 20));
      sub_26847BCB4(v40, v12);
      swift_storeEnumTagMultiPayload();
      sub_26847BC08();
      sub_26847BC5C();

      sub_2684B49B4();
      sub_26846A6DC(v15, v41, &qword_28027D8D8, &qword_2684B7AA0);
      swift_storeEnumTagMultiPayload();
      sub_26847BB7C();
      sub_2684B49B4();
      sub_268467A4C(v15, &qword_28027D8D8, &qword_2684B7AA0);
      sub_26847BD18(v40);
      return (*(v36 + 8))(v45, v39);
    }

    else
    {
      *v41 = sub_2684B4E64();
      swift_storeEnumTagMultiPayload();
      sub_26847BB7C();
      sub_2684B49B4();
      return (*(v22 + 8))(v25, v21);
    }
  }
}

uint64_t sub_26847AFD4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D330, &qword_2684BAEE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D920, &qword_2684B7BA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v12 = *a1;
  v11 = a1[1];

  sub_2684B44C4();
  v13 = sub_2684B4AE4();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_2684B4B04();
  sub_268467A4C(v6, &qword_28027D330, &qword_2684BAEE0);
  v14 = sub_2684B4B74();
  v16 = v15;
  LOBYTE(v12) = v17;
  v19 = v18;

  sub_2684B50A4();
  sub_2684B45F4();
  LOBYTE(v12) = v12 & 1;
  v40 = v12;
  v20 = sub_2684B50A4();
  v22 = v21;
  v23 = &v10[*(v7 + 36)];
  *v23 = sub_2684B50A4();
  v23[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D928, &qword_2684B7BB0);
  sub_26847B2BC(a1, v23 + *(v25 + 44));
  v26 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D930, &qword_2684B7BB8) + 36));
  *v26 = v20;
  v26[1] = v22;
  *v10 = v14;
  *(v10 + 1) = v16;
  v10[16] = v12;
  *(v10 + 3) = v19;
  v27 = v34;
  *(v10 + 2) = v33;
  *(v10 + 3) = v27;
  v28 = v39;
  v29 = v37;
  *(v10 + 7) = v38;
  *(v10 + 8) = v28;
  v30 = v36;
  *(v10 + 4) = v35;
  *(v10 + 5) = v30;
  *(v10 + 6) = v29;
  sub_26847C198();
  sub_2684B4D44();
  return sub_268467A4C(v10, &qword_28027D920, &qword_2684B7BA8);
}

uint64_t sub_26847B2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D958, &qword_2684B7BC8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *&v26[32] = *(a1 + 56);
  v14 = *(a1 + 40);
  *v26 = v13;
  *&v26[16] = v14;
  v15 = v13;
  v16 = *(v9 + 44);
  v17 = *MEMORY[0x277CE13E0];
  v18 = sub_2684B50D4();
  v19 = *(*(v18 - 8) + 104);
  v23 = *&v26[24];
  v24 = *&v26[8];
  v19(&v11[v16], v17, v18);
  *v11 = v15;
  v20 = v24;
  *(v11 + 24) = v23;
  *(v11 + 8) = v20;
  *(v11 + 20) = 256;
  sub_26846A6DC(v11, v8, &qword_28027D958, &qword_2684B7BC8);
  *a2 = v12;
  *(a2 + 8) = 256;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D960, &qword_2684B7BD0);
  sub_26846A6DC(v8, a2 + *(v21 + 48), &qword_28027D958, &qword_2684B7BC8);

  sub_26847C2D4(v26, v25);

  sub_268467A4C(v11, &qword_28027D958, &qword_2684B7BC8);
  sub_268467A4C(v8, &qword_28027D958, &qword_2684B7BC8);
}

uint64_t sub_26847B498@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v6;
  v7 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v7;
  *a1 = sub_26847C190;
  a1[1] = v5;
  return sub_26847BD74(v10, &v9);
}

uint64_t sub_26847B514()
{
  v1 = sub_2684B4ED4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B3B94();
  v6 = sub_2684B5544();

  sub_2684B5744();

  sub_2684B4EB4();
  (*(v2 + 104))(v5, *MEMORY[0x277CE0FE0], v1);
  v7 = sub_2684B4EF4();

  (*(v2 + 8))(v5, v1);
  v8 = sub_2684B4E74();
  KeyPath = swift_getKeyPath();
  v10 = *(v0 + *(type metadata accessor for ListBadgeView.EmblemView(0) + 20));
  v12[1] = v7;
  v12[2] = KeyPath;
  v12[3] = v8;
  v12[4] = v10;
  v13 = 256;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D968, &qword_2684B7C08);
  sub_26847C330();
  sub_2684B4D44();
}

uint64_t sub_26847B704@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8A8, &qword_2684BB110);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8B0, &qword_2684B7A20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_2684B3BB4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  sub_2684B3BD4();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v20 = sub_2684B3C14();
    (*(*(v20 - 8) + 8))(a1, v20);
    sub_268467A4C(v11, &qword_28027D8B0, &qword_2684B7A20);
    v21 = type metadata accessor for ListBadgeView(0);
    return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
  }

  else
  {
    v29 = *(v13 + 32);
    v30 = a2;
    v29(v19, v11, v12);
    (*(v13 + 16))(v17, v19, v12);
    sub_2684B3BE4();
    v23 = sub_2684B3F64();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v7, 1, v23) == 1)
    {
      sub_268467A4C(v7, &qword_28027D8A8, &qword_2684BB110);
      v25 = sub_2684B4E54();
    }

    else
    {
      v25 = sub_26849A760();
      (*(v24 + 8))(v7, v23);
    }

    v26 = sub_2684B3C14();
    (*(*(v26 - 8) + 8))(a1, v26);
    (*(v13 + 8))(v19, v12);
    v27 = v30;
    v29(v30, v17, v12);
    v28 = type metadata accessor for ListBadgeView(0);
    *&v27[*(v28 + 20)] = v25;
    return (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  }
}

unint64_t sub_26847BB7C()
{
  result = qword_28027D8E0;
  if (!qword_28027D8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D8D8, &qword_2684B7AA0);
    sub_26847BC08();
    sub_26847BC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D8E0);
  }

  return result;
}

unint64_t sub_26847BC08()
{
  result = qword_28027D8E8;
  if (!qword_28027D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D8E8);
  }

  return result;
}

unint64_t sub_26847BC5C()
{
  result = qword_28027D8F0;
  if (!qword_28027D8F0)
  {
    type metadata accessor for ListBadgeView.EmblemView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D8F0);
  }

  return result;
}

uint64_t sub_26847BCB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListBadgeView.EmblemView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26847BD18(uint64_t a1)
{
  v2 = type metadata accessor for ListBadgeView.EmblemView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26847BF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26847C024(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_26847C06C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26847C0CC()
{
  result = qword_28027D910;
  if (!qword_28027D910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D918, &qword_2684B7B00);
    sub_26847BB7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D910);
  }

  return result;
}

unint64_t sub_26847C198()
{
  result = qword_28027D938;
  if (!qword_28027D938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D920, &qword_2684B7BA8);
    sub_26847C250();
    sub_26846ACF0(&qword_28027D950, &qword_28027D930, &qword_2684B7BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D938);
  }

  return result;
}