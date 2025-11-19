uint64_t sub_26B932F54(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_26B9ACB44();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = sub_26B930990(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_26B932FF0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26B9ACB44();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_26B9ACB44();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26B93331C(&qword_280426510, &qword_2804264F0, &qword_26B9B1C58);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804264F0, &qword_26B9B1C58);
            v9 = sub_26B933190(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_26B9294B8(0, &qword_280426508, 0x277CC34B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_26B933190(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D686B00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26B92A4F8;
  }

  __break(1u);
  return result;
}

unint64_t sub_26B933218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804264F8, &unk_26B9B1C60);
    v3 = sub_26B9ACD84();
    sub_26B9AAAE4();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26B9201A8(v5, v6);
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

uint64_t sub_26B93331C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26B933370()
{
  swift_beginAccess();

  sub_26B92F070(v0, sub_26B932FF0);
  return swift_endAccess();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_26B9AAAE4();
}

uint64_t sub_26B9333F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426518, &qword_26B9B1C70);
  if (a1)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426518, &qword_26B9B1C70);
    return sub_26B9AC7D4();
  }

  else
  {
    v6 = *(v1 + ((((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)) + *(*(v3 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
    swift_beginAccess();
    v7 = *(v6 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426518, &qword_26B9B1C70);
    return sub_26B9AC7E4();
  }
}

uint64_t sub_26B9334F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return sub_26B92EAA0(a1, v4);
}

uint64_t sub_26B933594(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EB6C8;

  return sub_26B92EE6C(a1);
}

uint64_t AlertQuery.symbolName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AlertQuery.symbolName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AlertQuery.description.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t AlertQuery.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t AlertQuery.init(symbolName:symbolColor:description:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t AlertQuery.sections.getter()
{
  *&v31 = sub_26B9AB1F4();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v31);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 4);
  v8 = v0[3];
  v9 = v0[4];
  v29 = [objc_allocWithZone(MEMORY[0x277D65850]) init];
  v30 = [objc_allocWithZone(MEMORY[0x277D4C328]) init];
  [v30 setSeparatorStyle_];
  v10 = [objc_allocWithZone(MEMORY[0x277D4C6E0]) init];
  if (v9)
  {
    v11 = sub_26B9AC4C4();
    v12 = [objc_opt_self() textWithString_];

    [v10 setTitle_];
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D4C688]) &selRef_documentURLs];
  v14 = sub_26B9AC4C4();
  [v13 setSymbolName_];

  [v13 setPrimaryColor_];
  [v10 setThumbnail_];
  v15 = v10;
  [v15 setSeparatorStyle_];
  v16 = [objc_allocWithZone(MEMORY[0x277D4C230]) &selRef_documentURLs];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26B9B1CB0;
  v18 = v30;
  *(v17 + 32) = v30;
  *(v17 + 40) = v15;
  sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
  v19 = sub_26B9AC6E4();

  [v16 setCardSections_];

  v20 = v29;
  [v20 setInlineCard_];
  sub_26B9AA884();
  sub_26B9AB1C4();
  (*(v1 + 8))(v4, v31);
  v21 = sub_26B9AC4C4();

  [v20 setIdentifier_];

  v22 = [objc_allocWithZone(MEMORY[0x277D65848]) init];
  v23 = sub_26B9AC4C4();
  [v22 setTitle_];

  v24 = sub_26B9AC4C4();
  [v22 setIdentifier_];

  v25 = swift_allocObject();
  v31 = xmmword_26B9B1290;
  *(v25 + 16) = xmmword_26B9B1290;
  *(v25 + 32) = v20;
  sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
  v26 = sub_26B9AC6E4();

  [v22 setResults_];

  v27 = swift_allocObject();
  *(v27 + 16) = v31;
  *(v27 + 32) = v22;

  return v27;
}

unint64_t sub_26B933BF0(uint64_t a1)
{
  result = sub_26B933C18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B933C18()
{
  result = qword_280426538;
  if (!qword_280426538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426538);
  }

  return result;
}

uint64_t sub_26B933C6C@<X0>(void *a1@<X8>)
{
  sub_26B934008();

  return StaticQuery.representation.getter(a1);
}

uint64_t sub_26B933CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B934008();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return StaticQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B933D94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_26B934008();
  *v1 = v0;
  v1[1] = sub_26B8EB6C8;

  return StaticQuery.stop(with:)();
}

unint64_t sub_26B933E48(uint64_t a1)
{
  result = sub_26B933E70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B933E70()
{
  result = qword_280426540;
  if (!qword_280426540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426540);
  }

  return result;
}

uint64_t sub_26B933EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B933C18();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B933F18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26B933F60(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void type metadata accessor for SFTextColor()
{
  if (!qword_280426548)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280426548);
    }
  }
}

unint64_t sub_26B934008()
{
  result = qword_280426550;
  if (!qword_280426550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426550);
  }

  return result;
}

uint64_t sub_26B93405C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_26B9340A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t sub_26B9340FC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_26B934134(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_26B9341CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_26B934274()
{
  swift_beginAccess();
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_26B9342AC(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_26B934398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426558, &unk_26B9B1DA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B934408(uint64_t a1)
{
  swift_beginAccess();
  sub_26B934458(a1, v1 + 56);
  return swift_endAccess();
}

uint64_t sub_26B934458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426558, &unk_26B9B1DA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_26B93451C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 224))(v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_26B934578(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v7[0] = *a1;
  v7[1] = v2;
  v4 = *(*v3 + 232);
  v5 = v2;

  return v4(v7);
}

uint64_t sub_26B9345E4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *a1 = *(v1 + 96);
  a1[1] = v3;
  v4 = v3;
}

void sub_26B93463C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
}

double AppZKWQuery.__allocating_init(representation:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  v4 = a1[1];
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 1;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  return result;
}

uint64_t AppZKWQuery.init(representation:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0;
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  return v1;
}

uint64_t sub_26B934760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 184) = a4;
  *(v5 + 192) = v4;
  *(v5 + 168) = a1;
  *(v5 + 176) = a3;
  *(v5 + 50) = *(a2 + 8);
  *(v5 + 200) = *(a2 + 24);
  return MEMORY[0x2822009F8](sub_26B934794, 0, 0);
}

uint64_t sub_26B934794()
{
  v1 = *(v0 + 168);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = type metadata accessor for AppZKWQueryDataSource();
  v5 = *(v3 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  *v7 = v0;
  v7[1] = sub_26B9348E4;

  return (v9)(v0 + 160, v4, v4, &protocol witness table for AppZKWQueryDataSource, v2, v3);
}

uint64_t sub_26B9348E4()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26B9349E0, 0, 0);
}

uint64_t sub_26B9349E0()
{
  v1 = *(v0 + 50);
  v2 = *(v0 + 160);
  *(v0 + 216) = v2;
  if (v1 == 2)
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
      v3 = sub_26B9ACD34();
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      sub_26B9ACDA4();
    }

    v4 = *(v0 + 200);
    v5 = *(v0 + 176);
    v6 = sub_26B906128();
    SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v3, v4, 1, 1, 0, v6 & 1, v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    v9 = *(v0 + 33);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 64) = v7;
    *(v0 + 72) = v8;
    *(v0 + 73) = v9;
    *(v0 + 80) = v10;
    *(v0 + 88) = v11;
    v19 = (v5 + *v5);
    v12 = v5[1];
    v13 = swift_task_alloc();
    *(v0 + 272) = v13;
    *v13 = v0;
    v13[1] = sub_26B935274;
    v14 = *(v0 + 184);

    return v19(v0 + 56);
  }

  else
  {
    *(v0 + 49) = v1 & 1;
    v16 = *v2 + 152;
    *(v0 + 224) = *v16;
    *(v0 + 232) = v16 & 0xFFFFFFFFFFFFLL | 0x1F9A000000000000;
    v17 = sub_26B92A538();
    swift_beginAccess();
    v18 = *v17;

    return MEMORY[0x2822009F8](sub_26B934C08, v18, 0);
  }
}

uint64_t sub_26B934C08()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  *(v0 + 240) = (*(v0 + 224))(*(v0 + 192), v0 + 49);

  return MEMORY[0x2822009F8](sub_26B934C80, 0, 0);
}

uint64_t sub_26B934C80()
{
  v40 = v0;
  v1 = *(v0 + 240);
  if (!v1)
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
      v9 = sub_26B9ACD34();
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
      sub_26B9ACDA4();
    }

    v10 = *(v0 + 200);
    v11 = *(v0 + 176);
    v12 = sub_26B906128();
    SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v9, v10, 1, 1, 0, v12 & 1, v0 + 16);
    v13 = *(v0 + 24);
    v14 = *(v0 + 32);
    v15 = *(v0 + 33);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    *(v0 + 56) = *(v0 + 16);
    v18 = v0 + 56;
    *(v0 + 64) = v13;
    *(v0 + 72) = v14;
    *(v0 + 73) = v15;
    *(v0 + 80) = v16;
    *(v0 + 88) = v17;
    v34 = (v11 + *v11);
    v19 = v11[1];
    v20 = swift_task_alloc();
    *(v0 + 272) = v20;
    *v20 = v0;
    v21 = sub_26B935274;
    goto LABEL_20;
  }

  v2 = (*(**(v0 + 192) + 144))();
  v3 = v2;
  if (v2)
  {
    if (v2 >> 62)
    {
      v4 = sub_26B9ACB44();
      if (v4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_5:
        v35[0] = MEMORY[0x277D84F90];
        result = sub_26B9ACC94();
        if (v4 < 0)
        {
          __break(1u);
          return result;
        }

        sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);
        v6 = 0;
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x26D686B00](v6, v3);
          }

          else
          {
            v7 = *(v3 + 8 * v6 + 32);
          }

          ++v6;
          sub_26B9373D0(v7);
          sub_26B9ACC64();
          v8 = *(v35[0] + 16);
          sub_26B9ACCA4();
          sub_26B9ACCB4();
          sub_26B9ACC74();
        }

        while (v4 != v6);

        v3 = v35[0];
        goto LABEL_17;
      }
    }

    v3 = MEMORY[0x277D84F90];
  }

LABEL_17:
  if (*(v0 + 240) >> 62)
  {
    sub_26B9294B8(0, &qword_280426400, 0x277D4C588);

    v22 = sub_26B9ACD34();
  }

  else
  {

    sub_26B9ACEC4();
    sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
    v22 = v1;
  }

  v23 = *(v0 + 200);
  v24 = *(v0 + 176);

  v25 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v22, v23, 1, 1, v3, v25 & 1, v35);
  v26 = v35[0];
  v27 = v35[1];
  v28 = v36;
  v29 = v37;
  v30 = v38;
  *(v0 + 248) = v35[0];
  *(v0 + 256) = v30;
  v31 = v39;
  *(v0 + 96) = v26;
  v18 = v0 + 96;
  *(v0 + 104) = v27;
  *(v0 + 112) = v28;
  *(v0 + 113) = v29;
  *(v0 + 120) = v30;
  *(v0 + 128) = v31;
  v34 = (v24 + *v24);
  v32 = v24[1];
  v20 = swift_task_alloc();
  *(v0 + 264) = v20;
  *v20 = v0;
  v21 = sub_26B9350E0;
LABEL_20:
  v20[1] = v21;
  v33 = *(v0 + 184);

  return v34(v18);
}

uint64_t sub_26B9350E0()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_26B935214, 0, 0);
}

uint64_t sub_26B935214()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B935274()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26B935214, 0, 0);
}

uint64_t *AppZKWQuery.deinit()
{
  v1 = v0[3];
  sub_26B9353FC(v0[2]);
  v2 = v0[4];

  sub_26B93540C((v0 + 7));
  v3 = v0[12];
  v4 = v0[13];

  return v0;
}

uint64_t sub_26B9353FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26B93540C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426558, &unk_26B9B1DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppZKWQuery.__deallocating_deinit()
{
  v1 = v0[3];
  sub_26B9353FC(v0[2]);
  v2 = v0[4];

  sub_26B93540C((v0 + 7));
  v3 = v0[12];
  v4 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t sub_26B9354DC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AppZKWQuery();

  return TypedQuery<>.request.getter(v2, a1);
}

uint64_t sub_26B935524(uint64_t a1)
{
  result = sub_26B9359B0(&qword_280426560);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B9355D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 256);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EB6C8;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_26B935724(uint64_t a1)
{
  result = sub_26B9359B0(&qword_280426568);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B9357AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  WitnessTable = swift_getWitnessTable();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_26B9358A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return TypedQuery.stop(with:)(a1, a2, WitnessTable);
}

uint64_t sub_26B93596C(uint64_t a1)
{
  result = sub_26B9359B0(&qword_280426570);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B9359B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppZKWQuery();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B935A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static Query.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t dispatch thunk of AppZKWQuery.updateLayout(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 256);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EB6C8;

  return v14(a1, a2, a3, a4);
}

void type metadata accessor for ATXAppDirectoryCategoryID()
{
  if (!qword_280426578)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280426578);
    }
  }
}

unint64_t sub_26B935E30()
{
  result = sub_26B93D170(MEMORY[0x277D84F90]);
  qword_280433D80 = result;
  return result;
}

uint64_t sub_26B935E58()
{
  v1 = [*v0 predictedAppIdentities];
  sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
  v2 = sub_26B9AC6F4();

  return v2;
}

uint64_t sub_26B935EC0(char a1)
{
  *(v2 + 160) = a1;
  *(v2 + 152) = *v1;
  return MEMORY[0x2822009F8](sub_26B935EE8, 0, 0);
}

uint64_t sub_26B935EE8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_26B936014;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804265D0, &unk_26B9B21E0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_26B936154;
  *(v0 + 104) = &block_descriptor_20;
  *(v0 + 112) = v3;
  [v1 categoriesWithShouldUseDefault:v2 reply:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_26B936014()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 144);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

uint64_t sub_26B936154(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426530, &unk_26B9B1CA0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_26B9294B8(0, &qword_2804265D8, 0x277CEB350);
    **(*(v4 + 64) + 40) = sub_26B9AC6F4();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_26B936244(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 176) = a3;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;
  *(v4 + 168) = *v3;
  return MEMORY[0x2822009F8](sub_26B936270, 0, 0);
}

uint64_t sub_26B936270()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_26B9363A0;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804265C8, &qword_26B9B21D8);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_26B9364AC;
  *(v0 + 104) = &block_descriptor_1;
  *(v0 + 112) = v4;
  [v2 predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps:v3 shouldUseDefaultCategories:v1 reply:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_26B9363A0()
{
  v3 = *v0;
  **(*v0 + 152) = *(*v0 + 144);
  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26B9364AC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

void *AppZKWQueryDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_opt_self() sharedInstance];
  v0[5] = sub_26B9294B8(0, &qword_280426580, 0x277CEB358);
  v0[6] = &off_281FF74D0;
  v0[2] = v1;
  return v0;
}

void *AppZKWQueryDataSource.init()()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[5] = sub_26B9294B8(0, &qword_280426580, 0x277CEB358);
  v0[6] = &off_281FF74D0;
  v0[2] = v1;
  return v0;
}

uint64_t *sub_26B93660C(__int128 *a1)
{
  v2 = swift_allocObject();
  v3 = [objc_opt_self() sharedInstance];
  v2[5] = sub_26B9294B8(0, &qword_280426580, 0x277CEB358);
  v2[6] = &off_281FF74D0;
  v2[2] = v3;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  sub_26B8ECB70(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t sub_26B9366D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = v4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a3;
  *(v5 + 112) = *a2;
  *(v5 + 160) = *(a2 + 8);
  *(v5 + 161) = *(a2 + 9);
  *(v5 + 120) = *(a2 + 16);
  v6 = sub_26B92A538();
  swift_beginAccess();
  v7 = *v6;
  *(v5 + 136) = v7;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B936788, v7, 0);
}

uint64_t sub_26B936788()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 161);
  v4 = *(v0 + 160);
  v5 = *(v0 + 112);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  *(v0 + 72) = v6;
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 25) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  *(v8 + 41) = v3;
  *(v8 + 48) = v2;
  *(v8 + 56) = v1;
  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  type metadata accessor for AppZKWQueryDataSource();
  *v9 = v0;
  v9[1] = sub_26B9368C8;
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);

  return QueryDataSource.wrapWithFeedback(context:spotlightBrowsingSearchScope:resultHandler:fetchResults:)(v0 + 16, 1, v10, v11, dword_26B9B1F30);
}

uint64_t sub_26B9368C8()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_26B9369F4, v3, 0);
}

uint64_t sub_26B9369F4()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B936A54(uint64_t a1, double a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a2;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  v10 = sub_26B92A538();
  swift_beginAccess();
  *(v7 + 72) = *v10;
  sub_26B9AAAE4();
  v11 = swift_task_alloc();
  *(v7 + 80) = v11;
  *v11 = v7;
  v11[1] = sub_26B936B48;

  return sub_26B936CB8(a1, a4, v7 + 16);
}

uint64_t sub_26B936B48()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B936C58, v2, 0);
}

uint64_t sub_26B936C58()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B936CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a1;
  *(v4 + 88) = a2;
  *(v4 + 128) = *(a3 + 8);
  v6 = *(a3 + 24);
  *(v4 + 96) = v3;
  *(v4 + 104) = v6;
  v7 = sub_26B92A538();
  swift_beginAccess();
  *(v4 + 112) = *v7;
  v8 = *(*v3 + 144);
  sub_26B9AAAE4();
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 120) = v10;
  *v10 = v4;
  v10[1] = sub_26B936E10;

  return v12(a2);
}

uint64_t sub_26B936E10()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B936F20, v2, 0);
}

uint64_t sub_26B936F20()
{
  v37 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 128);

  if (v2 == 2 || (v3 = *(v0 + 88), v4 = *(v0 + 96), v35 = *(v0 + 128) & 1, (v5 = (*(*v4 + 152))(v3, &v35)) == 0))
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
      v28 = sub_26B9ACD34();
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
      sub_26B9ACDA4();
    }

    v8 = 0;
    goto LABEL_26;
  }

  v6 = v5;
  v7 = (*(**(v0 + 88) + 144))();
  v8 = v7;
  if (v7)
  {
    if (v7 >> 62)
    {
      v9 = sub_26B9ACB44();
      if (v9)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_6:
        v36 = MEMORY[0x277D84F90];
        result = sub_26B9ACC94();
        if (v9 < 0)
        {
          __break(1u);
          return result;
        }

        v11 = 0;
        v34 = v8 & 0xC000000000000001;
        v12 = &off_279D10000;
        v33 = v8;
        do
        {
          if (v34)
          {
            v16 = MEMORY[0x26D686B00](v11, v8);
          }

          else
          {
            v16 = *(v8 + 8 * v11 + 32);
          }

          v17 = v16;
          v18 = [v16 v12[334]];
          if (!v18)
          {
            sub_26B9AC504();
            v18 = sub_26B9AC4C4();
          }

          v19 = [objc_allocWithZone(MEMORY[0x277D65918]) initWithFilterTitle:v18 thumbnailType:0 symbolName:0 keywords:0 filterQueries:0 folderScopeURLs:0 enabledDomains:0 searchBarButtonItems:0 contentTypes:0 allowedTypes:0 blockedTypes:0 parentType:0 appBundleId:0 appURL:0 filterSubtitle:0];

          v20 = type metadata accessor for SUIPerformAppBrowseFilterCommand();
          v21 = objc_allocWithZone(v20);
          v22 = &v21[OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID];
          *v22 = 0;
          v22[8] = 1;
          *(v0 + 64) = v21;
          *(v0 + 72) = v20;
          v23 = v19;
          v24 = v17;
          v25 = objc_msgSendSuper2((v0 + 64), sel_init);
          v26 = v12;
          v27 = [v24 v12[334]];
          if (!v27)
          {
            sub_26B9AC504();
            v27 = sub_26B9AC4C4();
          }

          ++v11;
          [v25 setTokenString_];

          [v25 setEntityType_];
          v13 = [v24 categoryID];

          v14 = &v25[OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID];
          swift_beginAccess();
          *v14 = v13;
          v14[8] = 0;

          [v23 setCommand_];
          sub_26B9ACC64();
          v15 = *(v36 + 16);
          sub_26B9ACCA4();
          sub_26B9ACCB4();
          sub_26B9ACC74();
          v12 = v26;
          v8 = v33;
        }

        while (v9 != v11);

        v8 = v36;
        goto LABEL_23;
      }
    }

    v8 = MEMORY[0x277D84F90];
  }

LABEL_23:
  if (v6 >> 62)
  {
    sub_26B9294B8(0, &qword_280426400, 0x277D4C588);

    v28 = sub_26B9ACD34();
  }

  else
  {

    sub_26B9ACEC4();
    sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
    v28 = v6;
  }

LABEL_26:
  v29 = *(v0 + 104);
  v30 = *(v0 + 80);
  v31 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v28, v29, 1, 1, v8, v31 & 1, v30);
  v32 = *(v0 + 8);

  return v32();
}

id sub_26B9373D0(void *a1)
{
  v2 = [a1 localizedStringForCategoryID_];
  if (!v2)
  {
    sub_26B9AC504();
    v2 = sub_26B9AC4C4();
  }

  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFilterTitle:v2 thumbnailType:0 symbolName:0 keywords:0 filterQueries:0 folderScopeURLs:0 enabledDomains:0 searchBarButtonItems:0 contentTypes:0 allowedTypes:0 blockedTypes:0 parentType:0 appBundleId:0 appURL:0 filterSubtitle:0];

  v4 = objc_allocWithZone(type metadata accessor for SUIPerformAppBrowseFilterCommand());
  v5 = v3;
  v6 = a1;
  v7 = sub_26B93AD28(v6);
  [v5 setCommand_];

  return v5;
}

uint64_t sub_26B9374DC(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_26B9AB584();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = sub_26B92A538();
  swift_beginAccess();
  v7 = *v6;
  v2[23] = v7;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B9375C8, v7, 0);
}

uint64_t sub_26B9375C8()
{
  v1 = v0[19];
  swift_beginAccess();
  sub_26B907F08(v1 + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_26B937714;

  return (v8)(0, v2, v3);
}

uint64_t sub_26B937714(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v7 = *(v3 + 184);
  if (v1)
  {
    v8 = sub_26B937DBC;
  }

  else
  {
    v8 = sub_26B937848;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26B937848()
{
  v1 = (*(**(v0 + 144) + 168))();
  if (v2)
  {
    (*(**(v0 + 144) + 152))(*(v0 + 200));
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    v5 = *(v4 + 32);
    *(v0 + 80) = swift_getAssociatedTypeWitness();
    *(v0 + 88) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    v27 = (v5 + *v5);
    v7 = v5[1];
    v8 = swift_task_alloc();
    *(v0 + 216) = v8;
    *v8 = v0;
    v8[1] = sub_26B937C0C;

    return (v27)(boxed_opaque_existential_1, 7, 0, v3, v4);
  }

  else
  {
    v10 = v1;
    v11 = *(v0 + 200);
    v12 = *(v0 + 184);

    v30 = MEMORY[0x277D84F90];
    if (v11 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26B9ACB44())
    {
      v28 = v0;
      v14 = 0;
      v15 = v11 & 0xC000000000000001;
      v16 = v11 & 0xFFFFFFFFFFFFFF8;
      v17 = *(v0 + 200) + 32;
      v11 = &off_279D10000;
      v29 = v17;
      while (1)
      {
        if (v15)
        {
          v18 = MEMORY[0x26D686B00](v14, *(v28 + 200));
        }

        else
        {
          if (v14 >= *(v16 + 16))
          {
            goto LABEL_19;
          }

          v18 = *(v17 + 8 * v14);
        }

        v19 = v18;
        v0 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if ([v18 categoryID] == v10)
        {
          sub_26B9ACC64();
          v20 = *(v30 + 16);
          sub_26B9ACCA4();
          sub_26B9ACCB4();
          sub_26B9ACC74();
          v17 = v29;
        }

        else
        {
        }

        ++v14;
        if (v0 == i)
        {
          v21 = v30;
          v0 = v28;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      if (*(v0 + 200) < 0)
      {
        v22 = *(v0 + 200);
      }
    }

    v21 = MEMORY[0x277D84F90];
LABEL_24:
    v23 = *(v0 + 200);
    v24 = *(v0 + 144);

    (*(*v24 + 152))(v21);
    v25 = *(v0 + 176);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_26B937C0C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B937D1C, v2, 0);
}

uint64_t sub_26B937D1C()
{
  v1 = v0[23];
  v2 = v0[18];

  (*(*v2 + 200))(v0 + 7);
  v3 = v0[22];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26B937DBC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];

  v5 = sub_26B9A7568();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_26B9AB564();
  v7 = sub_26B9AC934();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[26];
  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[20];
  if (v8)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26B8E8000, v6, v7, "Unable to retrieve app info from ATXAppDirectoryClient", v13, 2u);
    MEMORY[0x26D6879F0](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v14 = v0[22];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v15 = v0[1];

  return v15();
}

void sub_26B937F50(unint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x277D84F90];
  v60 = MEMORY[0x277D84F90];
  v59 = v3;
  v58 = 0;
  sub_26B93D0F4();
  v5 = &type metadata for QueryDisplayStyle;
  sub_26B9AC684();
  v6 = sub_26B9AC684();
  if (v53 == v57)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  LODWORD(v52) = v7;
  v8 = a1;
  v9 = (*(*a1 + 144))(v6);
  if (!v9)
  {
    v47 = v4;
    goto LABEL_26;
  }

  v10 = v9;
  if (v9 >> 62)
  {
    v11 = sub_26B9ACB44();
    if (v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_7:
      v51 = objc_opt_self();
      if (v11 < 1)
      {
        __break(1u);
        goto LABEL_40;
      }

      v12 = 0;
      v49 = 0x800000026B9B8240;
      v50 = v10 & 0xC000000000000001;
      v47 = MEMORY[0x277D84F90];
      do
      {
        if (v50)
        {
          v13 = MEMORY[0x26D686B00](v12, v10);
        }

        else
        {
          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = [v13 localizedName];
        if (!v15)
        {
          v15 = [v14 localizedStringForCategoryID_];
        }

        v16 = v15;
        v17 = sub_26B9AC504();
        v19 = v18;

        v20 = sub_26B9AC4C4();
        v53 = 0xD00000000000001CLL;
        v54 = v49;
        MEMORY[0x26D686470](46, 0xE100000000000000);

        MEMORY[0x26D686470](v17, v19);

        v21 = sub_26B9AC4C4();

        v22 = [v14 appIdentities];
        if (!v22)
        {
          sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
          sub_26B9AC6F4();
          v22 = sub_26B9AC6E4();
        }

        v23 = [v51 appSectionWithTitle:v20 identifier:v21 style:v52 appIdentities:v22];

        if (v23)
        {
          (*(*a1 + 192))(&v53);
          (*(*v48 + 192))(v23, &v53);
          sub_26B8EACD8(&v53, &qword_280426558, &unk_26B9B1DA0);
          v24 = v23;
          MEMORY[0x26D6865A0]();
          if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v25 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_26B9AC734();
          }

          sub_26B9AC774();

          v47 = v60;
        }

        else
        {
        }

        ++v12;
      }

      while (v11 != v12);
      goto LABEL_25;
    }
  }

  v47 = MEMORY[0x277D84F90];
LABEL_25:

LABEL_26:
  v26 = *(*a1 + 192);
  v27 = (*a1 + 192);
  v26(&v53);
  v28 = v55;
  if (!v55)
  {
    sub_26B8EACD8(&v53, &qword_280426558, &unk_26B9B1DA0);
    goto LABEL_43;
  }

  v29 = v56;
  v30 = __swift_project_boxed_opaque_existential_1(&v53, v55);
  v31 = *(v28 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v34);
  sub_26B8EACD8(&v53, &qword_280426558, &unk_26B9B1DA0);
  (*(v29 + 8))(v28, v29);
  (*(v31 + 8))(v34, v28);
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000026B9B8240;
  MEMORY[0x26D686470](0x747365676775532ELL, 0xEC000000736E6F69);
  v35 = objc_opt_self();
  v36 = sub_26B9AC4C4();
  v37 = sub_26B9AC4C4();
  sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
  v38 = sub_26B9AC6E4();
  v5 = [v35 appSectionWithTitle:v36 identifier:v37 style:v52 appIdentities:v38];

  if (!v5)
  {

    goto LABEL_43;
  }

  v39 = [(ValueMetadata *)v5 results];
  if (!v39)
  {
LABEL_52:
    __break(1u);
    return;
  }

  v40 = v39;
  v51 = v27;
  v52 = v26;

  sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
  v8 = sub_26B9AC6F4();

  if (v8 >> 62)
  {
LABEL_40:
    v41 = sub_26B9ACB44();
    if (v41)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  v41 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v41)
  {
LABEL_31:
    if (v41 < 1)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v42 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x26D686B00](v42, v8);
      }

      else
      {
        v43 = *(v8 + 8 * v42 + 32);
      }

      v44 = v43;
      ++v42;
      v45 = sub_26B9AC4C4();
      [v44 setSectionBundleIdentifier_];
    }

    while (v41 != v42);
  }

LABEL_41:

  v52(&v53, v46);
  (*(*v48 + 192))(v5, &v53);
  sub_26B8EACD8(&v53, &qword_280426558, &unk_26B9B1DA0);
  if (v47 >> 62 && sub_26B9ACB44() < 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  sub_26B93D5E4(0, 0, v5);

LABEL_43:
  if (!(v60 >> 62))
  {
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    goto LABEL_45;
  }

  if (!sub_26B9ACB44())
  {
LABEL_45:
  }
}

unint64_t sub_26B93875C(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x277D84F90];
  v77 = MEMORY[0x277D84F90];
  LOBYTE(v76) = v3;
  LOBYTE(v75) = 0;
  sub_26B93D0F4();
  sub_26B9AC684();
  v5 = sub_26B9AC684();
  if (v73 == v72)
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  v67 = v6;
  v76 = v4;
  v65 = a1;
  v62 = (*(*a1 + 144))(v5);
  if (v62)
  {
    if (v62 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26B9ACB44())
    {
      v8 = 0;
      v61 = v62 + 32;
      v9 = MEMORY[0x277D84F90];
      v63 = i;
      while ((v62 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D686B00](v8, v62);
        v11 = __OFADD__(v8, 1);
        v12 = v8 + 1;
        if (v11)
        {
          goto LABEL_34;
        }

LABEL_15:
        v68 = v10;
        v70 = v12;
        v13 = [v10 appIdentities];
        sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
        v14 = sub_26B9AC6F4();

        if (v14 >> 62)
        {
          v15 = sub_26B9ACB44();
          if (!v15)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v15)
          {
            goto LABEL_8;
          }
        }

        if (v15 < 1)
        {
          goto LABEL_35;
        }

        for (j = 0; j != v15; ++j)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x26D686B00](j, v14);
          }

          else
          {
            v17 = *(v14 + 8 * j + 32);
          }

          v18 = v17;
          v19 = [v17 bundleIdentifier];
          if (!v19)
          {
            sub_26B9AC504();
            v19 = sub_26B9AC4C4();
          }

          v20 = SSAppNameForBundleId();

          if (v20)
          {
            v21 = sub_26B9AC504();
            v23 = v22;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_26B93B6AC(0, v9[2] + 1, 1, v9);
            }

            v25 = v9[2];
            v24 = v9[3];
            if (v25 >= v24 >> 1)
            {
              v9 = sub_26B93B6AC((v24 > 1), v25 + 1, 1, v9);
            }

            v9[2] = v25 + 1;
            v26 = &v9[3 * v25];
            v26[4] = v18;
            v26[5] = v21;
            v26[6] = v23;
            v76 = v9;
          }

          else
          {
          }
        }

LABEL_8:

        v8 = v70;
        if (v70 == v63)
        {
          goto LABEL_38;
        }
      }

      if (v8 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v10 = *(v61 + 8 * v8);
      v11 = __OFADD__(v8, 1);
      v12 = v8 + 1;
      if (!v11)
      {
        goto LABEL_15;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

LABEL_38:
  }

  sub_26B938FC0(&v76);
  v27 = MEMORY[0x277D84F90];
  v75 = MEMORY[0x277D84F90];
  v28 = v76[2];
  if (v28)
  {
    v29 = 0;
    v71 = 0;
    v30 = v76 + 6;
    v64 = MEMORY[0x277D84F90];
    while (1)
    {
      v32 = HIBYTE(*v30) & 0xFLL;
      if ((*v30 & 0x2000000000000000) == 0)
      {
        v32 = *(v30 - 1) & 0xFFFFFFFFFFFFLL;
      }

      if (!v32)
      {
        goto LABEL_46;
      }

      v33 = *(v30 - 2);

      v34 = sub_26B9AC604();
      v36 = v35;
      if (!v71)
      {
        goto LABEL_42;
      }

      v73 = v29;
      v74 = v71;
      sub_26B92C070();
      if (!sub_26B9ACA94())
      {

        v34 = v29;
        goto LABEL_43;
      }

      if (v27 >> 62)
      {
        if (sub_26B9ACB44())
        {
LABEL_54:

          v37 = v64;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_26B93B564(0, v64[2] + 1, 1, v64);
          }

          v39 = v37[2];
          v38 = v37[3];
          v64 = v37;
          if (v39 >= v38 >> 1)
          {
            v64 = sub_26B93B564((v38 > 1), v39 + 1, 1, v37);
          }

          v64[2] = v39 + 1;
          v40 = &v64[3 * v39];
          v40[4] = v29;
          v40[5] = v71;
          v40[6] = v27;
          goto LABEL_42;
        }
      }

      else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

LABEL_42:

      v75 = MEMORY[0x277D84F90];
      v71 = v36;
LABEL_43:
      v31 = v33;
      MEMORY[0x26D6865A0]();
      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_26B9AC734();
      }

      sub_26B9AC774();

      v27 = v75;
      v29 = v34;
LABEL_46:
      v30 += 3;
      if (!--v28)
      {

        v42 = v64;
        goto LABEL_64;
      }
    }
  }

  v42 = MEMORY[0x277D84F90];
LABEL_64:

  v43 = v42[2];
  if (v43)
  {
    v44 = objc_opt_self();
    v45 = v42 + 6;
    v69 = MEMORY[0x277D84F90];
    do
    {
      v46 = *(v45 - 2);
      v47 = *(v45 - 1);
      v48 = *v45;
      v49 = sub_26B9AC544();
      v51 = v50;

      v52 = sub_26B9AC4C4();
      v73 = 0xD00000000000001FLL;
      v74 = 0x800000026B9B8C80;
      MEMORY[0x26D686470](v49, v51);

      v53 = sub_26B9AC4C4();

      sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
      v54 = sub_26B9AC6E4();

      v55 = [v44 appSectionWithTitle:v52 identifier:v53 style:v67 appIdentities:v54];

      if (v55)
      {
        (*(*v65 + 192))(&v73);
        (*(*v66 + 192))(v55, &v73);
        sub_26B8EACD8(&v73, &qword_280426558, &unk_26B9B1DA0);
        v56 = v55;
        MEMORY[0x26D6865A0]();
        if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v57 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_26B9AC734();
        }

        sub_26B9AC774();

        v69 = v77;
      }

      v45 += 3;
      --v43;
    }

    while (v43);
  }

  else
  {
    v69 = MEMORY[0x277D84F90];
  }

  v58 = v69;
  if (v69 >> 62)
  {
    v59 = sub_26B9ACB44();
  }

  else
  {
    v59 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v59)
  {

    return 0;
  }

  return v58;
}

uint64_t sub_26B938F50(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26B93D148(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_26B93B8A0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26B938FC0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26B93D15C(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_26B93B998(v5);
  *a1 = v2;
  return result;
}

void sub_26B939030(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_26B9AB224();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v138[1] = v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26B9AC4B4();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v138[0] = v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = *a2;
  v170 = MEMORY[0x277D84F90];
  v11 = (*a1 + 192);
  v139 = *v11;
  v138[2] = v11;
  v139(&v165, v9);
  v12 = v168;
  v143 = a1;
  if (!v168)
  {
    v32 = sub_26B8EACD8(&v165, &qword_280426558, &unk_26B9B1DA0);
    v141 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v13 = v169;
  v14 = __swift_project_boxed_opaque_existential_1(&v165, v168);
  v15 = *(v12 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18);
  sub_26B8EACD8(&v165, &qword_280426558, &unk_26B9B1DA0);
  (*(v13 + 8))(v12, v13);
  (*(v15 + 8))(v18, v12);
  v165 = 0xD00000000000001CLL;
  v166 = 0x800000026B9B8240;
  MEMORY[0x26D686470](0x747365676775532ELL, 0xEC000000736E6F69);
  v19 = objc_opt_self();
  v20 = sub_26B9AC4C4();
  v21 = sub_26B9AC4C4();
  sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
  v22 = sub_26B9AC6E4();
  v23 = [v19 appSectionWithTitle:v20 identifier:v21 style:1 appIdentities:v22];

  if (v23)
  {
    v24 = [v23 results];
    if (!v24)
    {
      goto LABEL_127;
    }

    v25 = v24;

    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
    v26 = sub_26B9AC6F4();

    if (v26 >> 62)
    {
      v27 = sub_26B9ACB44();
      if (v27)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
LABEL_6:
        if (v27 >= 1)
        {
          v28 = 0;
          do
          {
            if ((v26 & 0xC000000000000001) != 0)
            {
              v29 = MEMORY[0x26D686B00](v28, v26);
            }

            else
            {
              v29 = *(v26 + 8 * v28 + 32);
            }

            v30 = v29;
            ++v28;
            v31 = sub_26B9AC4C4();
            [v30 setSectionBundleIdentifier_];
          }

          while (v27 != v28);
          goto LABEL_15;
        }

        __break(1u);
LABEL_127:
        __break(1u);
        return;
      }
    }

LABEL_15:

    v139(&v165, v34);
    (*(*v140 + 192))(v23, &v165);
    sub_26B8EACD8(&v165, &qword_280426558, &unk_26B9B1DA0);
    v35 = v23;
    MEMORY[0x26D6865A0]();
    if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v134 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v33 = v170;
    goto LABEL_18;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_18:
  v141 = v33;
  a1 = v143;
LABEL_19:
  v163 = MEMORY[0x277D84F90];
  v164 = MEMORY[0x277D84F90];
  v162 = MEMORY[0x277D84F90];
  v36 = (*(*a1 + 144))(v32);
  if (v36)
  {
    v145 = v36 & 0xFFFFFFFFFFFFFF8;
    if (v36 >> 62)
    {
      v133 = v36;
      v37 = sub_26B9ACB44();
      v36 = v133;
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v147 = v36;
    if (v37)
    {
      v38 = 0;
      v39 = 0;
      v149 = v147 & 0xC000000000000001;
      v144 = v147 + 32;
      v146 = ".SA Color Finesse 3 UI";
      v152 = MEMORY[0x277D84F90];
      v40 = &selRef_setObject_forKey_;
      v41 = &qword_280433D80;
      v148 = v37;
      while (1)
      {
        if (v149)
        {
          v42 = MEMORY[0x26D686B00](v38, v147);
        }

        else
        {
          if (v38 >= *(v145 + 16))
          {
            goto LABEL_90;
          }

          v42 = *(v144 + 8 * v38);
        }

        v43 = v42;
        v44 = __OFADD__(v38, 1);
        v45 = v38 + 1;
        if (v44)
        {
          __break(1u);
          goto LABEL_89;
        }

        v46 = [v42 appIdentities];
        sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
        v47 = sub_26B9AC6F4();

        v151 = v45;
        v48 = v47 >> 62 ? sub_26B9ACB44() : *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v150 = v43;
        if (v48)
        {
          break;
        }

LABEL_24:

        v38 = v151;
        if (v151 == v148)
        {
          goto LABEL_71;
        }
      }

      if (v48 >= 1)
      {
        v49 = 0;
        v156 = v47 & 0xC000000000000001;
        v154 = v47;
        while (1)
        {
          if (v156)
          {
            v50 = MEMORY[0x26D686B00](v49, v47);
          }

          else
          {
            v50 = *(v47 + 8 * v49 + 32);
          }

          v51 = v50;
          v52 = [v50 v40[25]];
          if (!v52)
          {
            sub_26B9AC504();
            v52 = sub_26B9AC4C4();
          }

          v53 = SSAppNameForBundleId();

          if (v53)
          {
            break;
          }

LABEL_36:
          if (v48 == ++v49)
          {
            goto LABEL_24;
          }
        }

        v155 = sub_26B9AC504();
        v55 = v54;

        v56 = [v51 v40[25]];
        v57 = sub_26B9AC504();
        v59 = v58;

        if (qword_28042C240 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v60 = *v41;
        if (*(*v41 + 16) && (v61 = sub_26B9201A8(v57, v59), (v62 & 1) != 0))
        {
          v63 = *(*(v60 + 56) + v61);
          v64 = swift_endAccess();
          if (v63 == 1)
          {

            goto LABEL_49;
          }
        }

        else
        {
          v64 = swift_endAccess();
        }

        v165 = v57;
        v166 = v59;
        MEMORY[0x28223BE20](v64);
        v138[-2] = &v165;
        if (sub_26B93B7F4(sub_26B93DAAC, &v138[-4], &unk_287C5E870))
        {

          goto LABEL_63;
        }

        v153 = v39;
        v69 = v41;
        v70 = v40;
        v72 = sub_26B9AC534();
        v73 = v71;
        if (v72 == 0x7075746573 && v71 == 0xE500000000000000 || (sub_26B9ACEB4() & 1) != 0)
        {

          goto LABEL_61;
        }

        v165 = v72;
        v166 = v73;
        v159 = 0x6C6174736E696E75;
        v160 = 0xE90000000000006CLL;
        sub_26B92C070();
        v74 = sub_26B9ACAB4();

        if (v74)
        {

LABEL_61:

          v40 = v70;
        }

        else
        {
          v75 = sub_26B9AC5E4();

          v40 = v70;
          if ((v75 & 1) == 0)
          {
            v41 = v69;
            v39 = v153;
LABEL_49:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v152 = sub_26B93B444(0, *(v152 + 2) + 1, 1, v152);
            }

            v66 = *(v152 + 2);
            v65 = *(v152 + 3);
            if (v66 >= v65 >> 1)
            {
              v152 = sub_26B93B444((v65 > 1), v66 + 1, 1, v152);
            }

            v67 = v152;
            *(v152 + 2) = v66 + 1;
            v68 = &v67[24 * v66];
            *(v68 + 4) = v155;
            *(v68 + 5) = v55;
            *(v68 + 6) = v51;
            v164 = v67;
LABEL_63:
            v47 = v154;
            goto LABEL_36;
          }
        }

        v41 = v69;
        v39 = v153;
        goto LABEL_63;
      }

LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      if (!sub_26B9ACB44())
      {
        goto LABEL_92;
      }

      goto LABEL_81;
    }

LABEL_71:
  }

  v76 = v143;
  (*(*v143 + 168))(v36);
  if (v77)
  {
    sub_26B938F50(&v164);
    sub_26B938F50(&v162);
    sub_26B938F50(&v163);
    v78 = v164;
  }

  else
  {
    v79 = MEMORY[0x277D84F90];
    sub_26B93A5D4(MEMORY[0x277D84F90]);
    sub_26B93A5D4(v79);
    v162 = v79;
    v163 = v79;
    type metadata accessor for FuzzyRanker();
    v80 = v164;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26B9B1290;
    *(inited + 32) = swift_getKeyPath();
    v82 = sub_26B93D26C(inited);
    swift_setDeallocating();
    v83 = *(inited + 16);
    v84 = swift_arrayDestroy();
    (*(*v76 + 224))(&v159, v84);
    v85 = v160;
    v157 = v159;
    v158 = v160;
    v86 = QueryRepresentation.rawQuery.getter();
    v88 = v87;

    sub_26B93D6D0();
    v166 = 0;
    v167 = 0;
    v165 = 0;
    v89 = sub_26B906128();
    v78 = sub_26B9731BC(v80, v82, v86, v88, &v165, v89 & 1, &type metadata for AppZKWQueryDataSource.RankableAppIdentity);

    v164 = v78;
  }

  v90 = *(v78 + 2);
  v91 = MEMORY[0x277D84F90];
  if (v90)
  {
    v165 = MEMORY[0x277D84F90];
    sub_26B9ACC94();
    v92 = (v78 + 48);
    do
    {
      v93 = *v92;
      v92 += 3;
      v94 = v93;
      sub_26B9ACC64();
      v95 = *(v165 + 16);
      sub_26B9ACCA4();
      sub_26B9ACCB4();
      sub_26B9ACC74();
      --v90;
    }

    while (v90);
    v91 = v165;
  }

  if (v91 >> 62)
  {
    goto LABEL_91;
  }

  if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_92:

    goto LABEL_93;
  }

LABEL_81:
  v96 = sub_26B9AC4C4();
  v97 = sub_26B9AC4C4();
  LOBYTE(v157) = v142;
  v161 = 0;
  sub_26B93D0F4();
  sub_26B9AC684();
  sub_26B9AC684();
  if (v165 == v159)
  {
    v98 = 0;
  }

  else
  {
    v98 = 3;
  }

  v99 = objc_opt_self();
  sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
  v100 = sub_26B9AC6E4();

  v101 = [v99 appSectionWithTitle:v96 identifier:v97 style:v98 appIdentities:v100];

  if (v101)
  {
    (v139)(&v165);
    (*(*v140 + 192))(v101, &v165);
    sub_26B8EACD8(&v165, &qword_280426558, &unk_26B9B1DA0);
    v102 = v101;
    MEMORY[0x26D6865A0]();
    if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v135 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v141 = v170;
  }

LABEL_93:
  v103 = v163;
  v104 = *(v163 + 2);
  v105 = MEMORY[0x277D84F90];
  if (v104)
  {
    v165 = MEMORY[0x277D84F90];
    sub_26B9ACC94();
    v106 = (v103 + 48);
    do
    {
      v107 = *v106;
      v106 += 3;
      v108 = v107;
      sub_26B9ACC64();
      v109 = *(v165 + 16);
      sub_26B9ACCA4();
      sub_26B9ACCB4();
      sub_26B9ACC74();
      --v104;
    }

    while (v104);
    v110 = v165;
  }

  else
  {
    v110 = MEMORY[0x277D84F90];
  }

  if (!(v110 >> 62))
  {
    if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_100;
    }

LABEL_108:

    goto LABEL_109;
  }

  if (!sub_26B9ACB44())
  {
    goto LABEL_108;
  }

LABEL_100:
  sub_26B9AC4A4();
  v111 = [objc_opt_self() bundle];
  sub_26B9AB214();
  sub_26B9AC514();
  v112 = sub_26B9AC4C4();

  v113 = sub_26B9AC4C4();
  LOBYTE(v157) = v142;
  v161 = 0;
  sub_26B93D0F4();
  sub_26B9AC684();
  sub_26B9AC684();
  if (v165 == v159)
  {
    v114 = 0;
  }

  else
  {
    v114 = 3;
  }

  v115 = objc_opt_self();
  sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
  v116 = sub_26B9AC6E4();

  v117 = [v115 appSectionWithTitle:v112 identifier:v113 style:v114 appIdentities:v116];

  if (v117)
  {
    (v139)(&v165);
    (*(*v140 + 192))(v117, &v165);
    sub_26B8EACD8(&v165, &qword_280426558, &unk_26B9B1DA0);
    v118 = v117;
    MEMORY[0x26D6865A0]();
    if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v136 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v141 = v170;
  }

LABEL_109:
  v119 = v162;
  v120 = *(v162 + 2);
  if (v120)
  {
    v165 = v105;
    sub_26B9ACC94();
    v121 = 48;
    do
    {
      v122 = *&v119[v121];
      sub_26B9ACC64();
      v123 = *(v165 + 16);
      sub_26B9ACCA4();
      sub_26B9ACCB4();
      sub_26B9ACC74();
      v121 += 24;
      --v120;
    }

    while (v120);

    v124 = v165;
    if (!(v165 >> 62))
    {
LABEL_113:
      if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_114;
      }

LABEL_123:

      return;
    }
  }

  else
  {

    v124 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_113;
    }
  }

  if (!sub_26B9ACB44())
  {
    goto LABEL_123;
  }

LABEL_114:
  sub_26B9AC4A4();
  v125 = [objc_opt_self() &off_279D101F8];
  sub_26B9AB214();
  sub_26B9AC514();
  v126 = sub_26B9AC4C4();

  v127 = sub_26B9AC4C4();
  LOBYTE(v157) = v142;
  v161 = 0;
  sub_26B93D0F4();
  sub_26B9AC684();
  sub_26B9AC684();
  if (v165 == v159)
  {
    v128 = 0;
  }

  else
  {
    v128 = 3;
  }

  v129 = objc_opt_self();
  sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
  v130 = sub_26B9AC6E4();

  v131 = [v129 appSectionWithTitle:v126 identifier:v127 style:v128 appIdentities:v130];

  if (v131)
  {
    v139(&v165, v141);
    (*(*v140 + 192))(v131, &v165);
    sub_26B8EACD8(&v165, &qword_280426558, &unk_26B9B1DA0);
    v132 = v131;
    MEMORY[0x26D6865A0]();
    if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v137 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26B9AC734();
    }

    sub_26B9AC774();
  }
}

uint64_t sub_26B93A5D4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26B93B444(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26B93A6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426598, &qword_26B9B1F60);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v11 = &v26[-v10 - 8];
  sub_26B934398(a3, v26);
  if (!v27)
  {
    v18 = &qword_280426558;
    v19 = &unk_26B9B1DA0;
    v20 = v26;
LABEL_11:
    sub_26B8EACD8(v20, v18, v19);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804265A0, &qword_26B9B1F68);
  sub_26B9294B8(0, &qword_2804265A8, 0x277CEB368);
  if (swift_dynamicCast())
  {
    v12 = v25;
    if (a2)
    {
      v13 = objc_allocWithZone(MEMORY[0x277CEB380]);
      v14 = sub_26B9AC4C4();
      v15 = [v13 initWithBundleIdentifier_];

      v16 = [v12 uuidForIdentity_];
      if (v16)
      {
        sub_26B9AB1D4();

        v17 = 0;
      }

      else
      {
        v17 = 1;
      }

      v21 = sub_26B9AB1F4();
      v22 = *(v21 - 8);
      (*(v22 + 56))(v9, v17, 1, v21);
      sub_26B93D77C(v9, v11);
      if ((*(v22 + 48))(v11, 1, v21) != 1)
      {
        v24 = sub_26B9AB1C4();

        (*(v22 + 8))(v11, v21);
        return v24;
      }

      v18 = &qword_280426598;
      v19 = &qword_26B9B1F60;
      v20 = v11;
      goto LABEL_11;
    }
  }

  return 0;
}

uint64_t AppZKWQueryDataSource.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_26B93A9D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  *a1 = result;
  return result;
}

uint64_t sub_26B93AA10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v10 = *(**v4 + 128);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EB6C8;

  return v14(v9, a2, a3, a4);
}

uint64_t sub_26B93AB54()
{
  v1 = (v0 + OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_26B93ABA0(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

char *sub_26B93AD28(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID];
  *v3 = 0;
  v3[8] = 1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SUIPerformAppBrowseFilterCommand();
  v4 = objc_msgSendSuper2(&v9, sel_init);
  v5 = [a1 localizedStringForCategoryID_];
  if (!v5)
  {
    sub_26B9AC504();
    v5 = sub_26B9AC4C4();
  }

  [v4 setTokenString_];

  [v4 setEntityType_];
  v6 = [a1 categoryID];

  v7 = &v4[OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID];
  swift_beginAccess();
  *v7 = v6;
  v7[8] = 0;

  return v4;
}

void sub_26B93AE5C(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SUIPerformAppBrowseFilterCommand();
  v3 = objc_msgSendSuper2(&v8, sel_encodeWithCoder_, a1);
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x58))(v3);
  if ((v5 & 1) == 0)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v7 = sub_26B9AC4C4();
    [a1 encodeObject:v6 forKey:v7];
  }
}

id sub_26B93B0C4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID];
  *v3 = 0;
  v3[8] = 1;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for SUIPerformAppBrowseFilterCommand();
  v4 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1);
  if (v4)
  {
    v5 = v4;
    v6 = v4;
    v7 = sub_26B9AC4C4();
    v8 = [a1 decodeObjectForKey_];

    if (v8)
    {
      sub_26B9ACAD4();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      sub_26B9294B8(0, &qword_2804265C0, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v10 = [v12 unsignedIntegerValue];

        v11 = &v6[OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID];
        swift_beginAccess();
        *v11 = v10;
        v11[8] = 0;
      }

      else
      {
      }
    }

    else
    {

      sub_26B8EACD8(v15, &qword_2804265B8, &qword_26B9B1F70);
    }

    return v5;
  }

  else
  {

    return 0;
  }
}

id sub_26B93B2D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SUIPerformAppBrowseFilterCommand();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26B93B308()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B9ACFB4();
  sub_26B9AC574();
  return sub_26B9ACFF4();
}

uint64_t sub_26B93B354()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_26B9AC574();
}

uint64_t sub_26B93B35C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B9ACFB4();
  sub_26B9AC574();
  return sub_26B9ACFF4();
}

uint64_t sub_26B93B3A4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_26B9ACEB4() & 1) == 0)
  {
    return 0;
  }

  sub_26B9294B8(0, &qword_280426F60, 0x277D82BB8);
  return sub_26B9AC9C4() & 1;
}

void *sub_26B93B428@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

char *sub_26B93B444(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804265E0, &qword_26B9B21F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26B93B564(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426608, &qword_26B9B2220);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426610, &qword_26B9B2228);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26B93B6AC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804265F8, &qword_26B9B2210);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426600, &qword_26B9B2218);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26B93B7F4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_26B93B8A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_26B9ACE64();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26B9AC754();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26B93BCCC(v7, v8, a1, v4);
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
    return sub_26B93BAA0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26B93B998(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_26B9ACE64();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426600, &qword_26B9B2218);
        v5 = sub_26B9AC754();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26B93C37C(v7, v8, a1, v4);
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
    return sub_26B93BBB8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26B93BAA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_26B92C070();
    v7 = v6 + 24 * v4 - 24;
    v8 = v5 - v4;
LABEL_5:
    v9 = (v6 + 24 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      v18 = *v13;
      v19 = *(v13 + 8);
      result = sub_26B9ACA94();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v13 + 32);
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      *(v13 + 24) = *v13;
      *(v13 + 40) = v16;
      *v13 = v15;
      *(v13 + 8) = v14;
      v13 -= 24;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B93BBB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_26B92C070();
    v7 = (v6 + 24 * v4);
    v8 = v5 - v4;
LABEL_5:
    v9 = v6 + 24 * v4;
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    v12 = v8;
    v13 = v7;
    while (1)
    {
      v18 = *(v13 - 2);
      v19 = *(v13 - 1);
      result = sub_26B9ACA94();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 3;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v15 = *v13;
      v14 = v13[1];
      v16 = v13[2];
      *v13 = *(v13 - 3);
      v13[2] = *(v13 - 1);
      *(v13 - 2) = v14;
      *(v13 - 1) = v16;
      *(v13 - 3) = v15;
      v13 -= 3;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B93BCCC(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v97 = result;
  v6 = *(a3 + 1);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      if (v7 + 1 >= v6)
      {
        v6 = (v7 + 1);
      }

      else
      {
        v95 = v5;
        v10 = (*a3 + 24 * (v7 + 1));
        v11 = 24 * v7;
        v12 = (*a3 + 24 * v7);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12 + 7;
        v104 = *v10;
        v106 = v10[1];
        sub_26B92C070();
        result = sub_26B9ACA94();
        v16 = result;
        v17 = (v7 + 2);
        while (v6 != v17)
        {
          v105 = *(v15 - 1);
          v107 = *v15;
          v100 = *(v15 - 4);
          v102 = *(v15 - 3);
          result = sub_26B9ACA94();
          ++v17;
          v15 += 3;
          if ((v16 == -1) == (result != -1))
          {
            v6 = v17 - 1;
            break;
          }
        }

        v5 = v95;
        if (v16 == -1)
        {
          v9 = v7;
          if (v6 < v7)
          {
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
LABEL_128:
            __break(1u);
            return result;
          }

          if (v7 < v6)
          {
            v66 = 0;
            v67 = 24 * v6;
            v68 = v7;
            do
            {
              if (v68 != &v6[v66 - 1])
              {
                v74 = *a3;
                if (!*a3)
                {
                  goto LABEL_126;
                }

                v69 = (v74 + v11);
                v70 = v74 + v67;
                v71 = *v69;
                v72 = *(v69 + 1);
                v73 = *(v70 - 24);
                v69[2] = *(v70 - 8);
                *v69 = v73;
                *(v70 - 24) = v71;
                *(v70 - 16) = v72;
              }

              ++v68;
              --v66;
              v67 -= 24;
              v11 += 24;
            }

            while (v68 < &v6[v66]);
          }
        }

        else
        {
          v9 = v7;
        }
      }

      v18 = *(a3 + 1);
      if (v6 >= v18)
      {
        goto LABEL_20;
      }

      if (__OFSUB__(v6, v9))
      {
        goto LABEL_118;
      }

      if (&v6[-v9] >= a4)
      {
        goto LABEL_20;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_119;
      }

      if (v9 + a4 < v18)
      {
        v18 = (v9 + a4);
      }

      if (v18 < v9)
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      if (v6 == v18)
      {
LABEL_20:
        v7 = v6;
      }

      else
      {
        v98 = v18;
        v96 = v5;
        v75 = v9;
        v76 = *a3;
        sub_26B92C070();
        v77 = v76 + 24 * v6 - 24;
        v94 = v75;
        v78 = v75 - v6;
        do
        {
          v79 = (v76 + 24 * v6);
          v80 = *v79;
          v81 = v79[1];
          v82 = v78;
          v83 = v77;
          do
          {
            v101 = *v83;
            v103 = *(v83 + 8);
            result = sub_26B9ACA94();
            if (result != -1)
            {
              break;
            }

            if (!v76)
            {
              goto LABEL_123;
            }

            v84 = *(v83 + 32);
            v86 = *(v83 + 16);
            v85 = *(v83 + 24);
            *(v83 + 24) = *v83;
            *(v83 + 40) = v86;
            *v83 = v85;
            *(v83 + 8) = v84;
            v83 -= 24;
          }

          while (!__CFADD__(v82++, 1));
          ++v6;
          v77 += 24;
          --v78;
        }

        while (v6 != v98);
        v9 = v94;
        v5 = v96;
        v7 = v98;
      }

      v6 = a3;
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26B93088C(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v20 = *(v8 + 2);
      v19 = *(v8 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        result = sub_26B93088C((v19 > 1), v20 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v21;
      v22 = &v8[16 * v20];
      *(v22 + 4) = v9;
      *(v22 + 5) = v7;
      v23 = *v97;
      if (!*v97)
      {
        goto LABEL_127;
      }

      if (v20)
      {
        while (1)
        {
          v24 = v21 - 1;
          if (v21 >= 4)
          {
            break;
          }

          if (v21 == 3)
          {
            v25 = *(v8 + 4);
            v26 = *(v8 + 5);
            v35 = __OFSUB__(v26, v25);
            v27 = v26 - v25;
            v28 = v35;
LABEL_41:
            if (v28)
            {
              goto LABEL_106;
            }

            v41 = &v8[16 * v21];
            v43 = *v41;
            v42 = *(v41 + 1);
            v44 = __OFSUB__(v42, v43);
            v45 = v42 - v43;
            v46 = v44;
            if (v44)
            {
              goto LABEL_109;
            }

            v47 = &v8[16 * v24 + 32];
            v49 = *v47;
            v48 = *(v47 + 1);
            v35 = __OFSUB__(v48, v49);
            v50 = v48 - v49;
            if (v35)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v45, v50))
            {
              goto LABEL_113;
            }

            if (v45 + v50 >= v27)
            {
              if (v27 < v50)
              {
                v24 = v21 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v51 = &v8[16 * v21];
          v53 = *v51;
          v52 = *(v51 + 1);
          v35 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          v46 = v35;
LABEL_55:
          if (v46)
          {
            goto LABEL_108;
          }

          v54 = &v8[16 * v24];
          v56 = *(v54 + 4);
          v55 = *(v54 + 5);
          v35 = __OFSUB__(v55, v56);
          v57 = v55 - v56;
          if (v35)
          {
            goto LABEL_111;
          }

          if (v57 < v45)
          {
            goto LABEL_3;
          }

LABEL_62:
          v62 = v24 - 1;
          if (v24 - 1 >= v21)
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
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
            goto LABEL_120;
          }

          if (!*a3)
          {
            goto LABEL_124;
          }

          v63 = *&v8[16 * v62 + 32];
          v64 = *&v8[16 * v24 + 40];
          sub_26B93CA2C((*a3 + 24 * v63), (*a3 + 24 * *&v8[16 * v24 + 32]), *a3 + 24 * v64, v23);
          if (v5)
          {
          }

          if (v64 < v63)
          {
            goto LABEL_102;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_26B932B28(v8);
          }

          if (v62 >= *(v8 + 2))
          {
            goto LABEL_103;
          }

          v65 = &v8[16 * v62];
          *(v65 + 4) = v63;
          *(v65 + 5) = v64;
          result = sub_26B932A9C(v24);
          v21 = *(v8 + 2);
          if (v21 <= 1)
          {
            goto LABEL_3;
          }
        }

        v29 = &v8[16 * v21 + 32];
        v30 = *(v29 - 64);
        v31 = *(v29 - 56);
        v35 = __OFSUB__(v31, v30);
        v32 = v31 - v30;
        if (v35)
        {
          goto LABEL_104;
        }

        v34 = *(v29 - 48);
        v33 = *(v29 - 40);
        v35 = __OFSUB__(v33, v34);
        v27 = v33 - v34;
        v28 = v35;
        if (v35)
        {
          goto LABEL_105;
        }

        v36 = &v8[16 * v21];
        v38 = *v36;
        v37 = *(v36 + 1);
        v35 = __OFSUB__(v37, v38);
        v39 = v37 - v38;
        if (v35)
        {
          goto LABEL_107;
        }

        v35 = __OFADD__(v27, v39);
        v40 = v27 + v39;
        if (v35)
        {
          goto LABEL_110;
        }

        if (v40 >= v32)
        {
          v58 = &v8[16 * v24 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v35 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v35)
          {
            goto LABEL_114;
          }

          if (v27 < v61)
          {
            v24 = v21 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v6 = *(a3 + 1);
      if (v7 >= v6)
      {
        goto LABEL_89;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_89:
  v6 = *v97;
  if (!*v97)
  {
    goto LABEL_128;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_121:
    result = sub_26B932B28(v8);
    v8 = result;
  }

  v88 = v5;
  v89 = *(v8 + 2);
  if (v89 >= 2)
  {
    while (*a3)
    {
      v5 = v89 - 1;
      v90 = *&v8[16 * v89];
      v91 = *&v8[16 * v89 + 24];
      sub_26B93CA2C((*a3 + 24 * v90), (*a3 + 24 * *&v8[16 * v89 + 16]), *a3 + 24 * v91, v6);
      if (v88)
      {
      }

      if (v91 < v90)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_26B932B28(v8);
      }

      if (v89 - 2 >= *(v8 + 2))
      {
        goto LABEL_116;
      }

      v92 = &v8[16 * v89];
      *v92 = v90;
      *(v92 + 1) = v91;
      result = sub_26B932A9C(v5);
      v89 = *(v8 + 2);
      if (v89 <= 1)
      {
      }
    }

    goto LABEL_125;
  }
}

uint64_t sub_26B93C37C(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = *(a3 + 1);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      if (v7 + 1 >= v6)
      {
        v6 = (v7 + 1);
      }

      else
      {
        v93 = v5;
        v10 = *a3 + 24 * (v7 + 1);
        v11 = 24 * v7;
        v12 = *a3 + 24 * v7;
        v104 = *(v10 + 8);
        v106 = *(v10 + 16);
        v98 = *(v12 + 8);
        v101 = *(v12 + 16);
        sub_26B92C070();
        result = sub_26B9ACA94();
        v13 = result;
        v14 = (v7 + 2);
        v15 = (v12 + 64);
        while (v6 != v14)
        {
          v105 = *(v15 - 1);
          v107 = *v15;
          v99 = *(v15 - 4);
          v102 = *(v15 - 3);
          result = sub_26B9ACA94();
          ++v14;
          v15 += 3;
          if ((v13 == -1) == (result != -1))
          {
            v6 = v14 - 1;
            break;
          }
        }

        v5 = v93;
        if (v13 == -1)
        {
          v9 = v7;
          if (v6 < v7)
          {
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
LABEL_128:
            __break(1u);
            return result;
          }

          if (v7 < v6)
          {
            v64 = 0;
            v65 = 24 * v6;
            v66 = v7;
            do
            {
              if (v66 != &v6[v64 - 1])
              {
                v72 = *a3;
                if (!*a3)
                {
                  goto LABEL_126;
                }

                v67 = (v72 + v11);
                v68 = v72 + v65;
                v69 = *v67;
                v70 = *(v67 + 2);
                v71 = *(v68 - 8);
                *v67 = *(v68 - 24);
                *(v67 + 2) = v71;
                *(v68 - 24) = v69;
                *(v68 - 8) = v70;
              }

              ++v66;
              --v64;
              v65 -= 24;
              v11 += 24;
            }

            while (v66 < &v6[v64]);
          }
        }

        else
        {
          v9 = v7;
        }
      }

      v16 = *(a3 + 1);
      if (v6 >= v16)
      {
        goto LABEL_20;
      }

      if (__OFSUB__(v6, v9))
      {
        goto LABEL_118;
      }

      if (&v6[-v9] >= a4)
      {
        goto LABEL_20;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_119;
      }

      if (v9 + a4 < v16)
      {
        v16 = (v9 + a4);
      }

      if (v16 < v9)
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      if (v6 == v16)
      {
LABEL_20:
        v7 = v6;
      }

      else
      {
        v96 = v16;
        v94 = v5;
        v73 = v9;
        v74 = *a3;
        sub_26B92C070();
        v75 = (v74 + 24 * v6);
        v92 = v73;
        v76 = v73 - v6;
        do
        {
          v77 = v74 + 24 * v6;
          v78 = *(v77 + 8);
          v79 = *(v77 + 16);
          v80 = v76;
          v81 = v75;
          do
          {
            v100 = *(v81 - 2);
            v103 = *(v81 - 1);
            result = sub_26B9ACA94();
            if (result != -1)
            {
              break;
            }

            if (!v74)
            {
              goto LABEL_123;
            }

            v83 = *v81;
            v82 = v81[1];
            v84 = v81[2];
            *v81 = *(v81 - 3);
            v81[2] = *(v81 - 1);
            *(v81 - 2) = v82;
            *(v81 - 1) = v84;
            *(v81 - 3) = v83;
            v81 -= 3;
          }

          while (!__CFADD__(v80++, 1));
          ++v6;
          v75 += 3;
          --v76;
        }

        while (v6 != v96);
        v9 = v92;
        v5 = v94;
        v7 = v96;
      }

      v6 = a3;
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26B93088C(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v18 = *(v8 + 2);
      v17 = *(v8 + 3);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        result = sub_26B93088C((v17 > 1), v18 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v19;
      v20 = &v8[16 * v18];
      *(v20 + 4) = v9;
      *(v20 + 5) = v7;
      v21 = *v95;
      if (!*v95)
      {
        goto LABEL_127;
      }

      if (v18)
      {
        while (1)
        {
          v22 = v19 - 1;
          if (v19 >= 4)
          {
            break;
          }

          if (v19 == 3)
          {
            v23 = *(v8 + 4);
            v24 = *(v8 + 5);
            v33 = __OFSUB__(v24, v23);
            v25 = v24 - v23;
            v26 = v33;
LABEL_41:
            if (v26)
            {
              goto LABEL_106;
            }

            v39 = &v8[16 * v19];
            v41 = *v39;
            v40 = *(v39 + 1);
            v42 = __OFSUB__(v40, v41);
            v43 = v40 - v41;
            v44 = v42;
            if (v42)
            {
              goto LABEL_109;
            }

            v45 = &v8[16 * v22 + 32];
            v47 = *v45;
            v46 = *(v45 + 1);
            v33 = __OFSUB__(v46, v47);
            v48 = v46 - v47;
            if (v33)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v43, v48))
            {
              goto LABEL_113;
            }

            if (v43 + v48 >= v25)
            {
              if (v25 < v48)
              {
                v22 = v19 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v49 = &v8[16 * v19];
          v51 = *v49;
          v50 = *(v49 + 1);
          v33 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          v44 = v33;
LABEL_55:
          if (v44)
          {
            goto LABEL_108;
          }

          v52 = &v8[16 * v22];
          v54 = *(v52 + 4);
          v53 = *(v52 + 5);
          v33 = __OFSUB__(v53, v54);
          v55 = v53 - v54;
          if (v33)
          {
            goto LABEL_111;
          }

          if (v55 < v43)
          {
            goto LABEL_3;
          }

LABEL_62:
          v60 = v22 - 1;
          if (v22 - 1 >= v19)
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
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
            goto LABEL_120;
          }

          if (!*a3)
          {
            goto LABEL_124;
          }

          v61 = *&v8[16 * v60 + 32];
          v62 = *&v8[16 * v22 + 40];
          sub_26B93CCF4((*a3 + 24 * v61), (*a3 + 24 * *&v8[16 * v22 + 32]), *a3 + 24 * v62, v21);
          if (v5)
          {
          }

          if (v62 < v61)
          {
            goto LABEL_102;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_26B932B28(v8);
          }

          if (v60 >= *(v8 + 2))
          {
            goto LABEL_103;
          }

          v63 = &v8[16 * v60];
          *(v63 + 4) = v61;
          *(v63 + 5) = v62;
          result = sub_26B932A9C(v22);
          v19 = *(v8 + 2);
          if (v19 <= 1)
          {
            goto LABEL_3;
          }
        }

        v27 = &v8[16 * v19 + 32];
        v28 = *(v27 - 64);
        v29 = *(v27 - 56);
        v33 = __OFSUB__(v29, v28);
        v30 = v29 - v28;
        if (v33)
        {
          goto LABEL_104;
        }

        v32 = *(v27 - 48);
        v31 = *(v27 - 40);
        v33 = __OFSUB__(v31, v32);
        v25 = v31 - v32;
        v26 = v33;
        if (v33)
        {
          goto LABEL_105;
        }

        v34 = &v8[16 * v19];
        v36 = *v34;
        v35 = *(v34 + 1);
        v33 = __OFSUB__(v35, v36);
        v37 = v35 - v36;
        if (v33)
        {
          goto LABEL_107;
        }

        v33 = __OFADD__(v25, v37);
        v38 = v25 + v37;
        if (v33)
        {
          goto LABEL_110;
        }

        if (v38 >= v30)
        {
          v56 = &v8[16 * v22 + 32];
          v58 = *v56;
          v57 = *(v56 + 1);
          v33 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v33)
          {
            goto LABEL_114;
          }

          if (v25 < v59)
          {
            v22 = v19 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v6 = *(a3 + 1);
      if (v7 >= v6)
      {
        goto LABEL_89;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_89:
  v6 = *v95;
  if (!*v95)
  {
    goto LABEL_128;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_121:
    result = sub_26B932B28(v8);
    v8 = result;
  }

  v86 = v5;
  v87 = *(v8 + 2);
  if (v87 >= 2)
  {
    while (*a3)
    {
      v5 = v87 - 1;
      v88 = *&v8[16 * v87];
      v89 = *&v8[16 * v87 + 24];
      sub_26B93CCF4((*a3 + 24 * v88), (*a3 + 24 * *&v8[16 * v87 + 16]), *a3 + 24 * v89, v6);
      if (v86)
      {
      }

      if (v89 < v88)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_26B932B28(v8);
      }

      if (v87 - 2 >= *(v8 + 2))
      {
        goto LABEL_116;
      }

      v90 = &v8[16 * v87];
      *v90 = v88;
      *(v90 + 1) = v89;
      result = sub_26B932A9C(v5);
      v87 = *(v8 + 2);
      if (v87 <= 1)
      {
      }
    }

    goto LABEL_125;
  }
}

uint64_t sub_26B93CA2C(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[24 * v11] <= a4)
    {
      memmove(a4, __dst, 24 * v11);
    }

    v12 = &v4[24 * v11];
    if (v10 >= 24 && v6 > v7)
    {
      sub_26B92C070();
LABEL_23:
      v24 = v6 - 24;
      v5 -= 24;
      v16 = v12;
      do
      {
        v17 = (v5 + 24);
        v18 = *(v16 - 24);
        v19 = *(v16 - 16);
        v16 -= 24;
        v26 = *(v6 - 3);
        v28 = *(v6 - 2);
        if (sub_26B9ACA94() == -1)
        {
          if (v17 != v6)
          {
            v21 = *v24;
            *(v5 + 16) = *(v6 - 1);
            *v5 = v21;
          }

          if (v12 <= v4 || (v6 -= 24, v24 <= v7))
          {
            v6 = v24;
            goto LABEL_35;
          }

          goto LABEL_23;
        }

        if (v17 != v12)
        {
          v20 = *v16;
          *(v5 + 16) = *(v16 + 16);
          *v5 = v20;
        }

        v5 -= 24;
        v12 = v16;
      }

      while (v16 > v4);
      v12 = v16;
    }
  }

  else
  {
    if (a4 != __src || &__src[24 * v9] <= a4)
    {
      memmove(a4, __src, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 >= 24 && v6 < v5)
    {
      sub_26B92C070();
      while (1)
      {
        v29 = *v6;
        v30 = *(v6 + 1);
        v25 = *v4;
        v27 = *(v4 + 1);
        if (sub_26B9ACA94() != -1)
        {
          break;
        }

        v13 = v6;
        v14 = v7 == v6;
        v6 += 24;
        if (!v14)
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 24;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_33;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_10:
      v15 = *v13;
      *(v7 + 2) = *(v13 + 2);
      *v7 = v15;
      goto LABEL_11;
    }

LABEL_33:
    v6 = v7;
  }

LABEL_35:
  v22 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_26B93CCF4(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[24 * v11] <= a4)
    {
      memmove(a4, __dst, 24 * v11);
    }

    v12 = &v4[24 * v11];
    if (v10 >= 24 && v6 > v7)
    {
      sub_26B92C070();
LABEL_23:
      v5 -= 24;
      do
      {
        v16 = (v5 + 24);
        v28 = *(v12 - 2);
        v30 = *(v12 - 1);
        v24 = *(v6 - 2);
        v26 = *(v6 - 1);
        if (sub_26B9ACA94() == -1)
        {
          v19 = v6 - 24;
          if (v16 != v6)
          {
            v20 = *v19;
            *(v5 + 16) = *(v6 - 1);
            *v5 = v20;
          }

          if (v12 <= v4 || (v6 -= 24, v19 <= v7))
          {
            v6 = v19;
            goto LABEL_35;
          }

          goto LABEL_23;
        }

        v17 = v12 - 24;
        if (v16 != v12)
        {
          v18 = *v17;
          *(v5 + 16) = *(v12 - 1);
          *v5 = v18;
        }

        v5 -= 24;
        v12 -= 24;
      }

      while (v17 > v4);
      v12 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[24 * v9] <= a4)
    {
      memmove(a4, __src, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 >= 24 && v6 < v5)
    {
      sub_26B92C070();
      while (1)
      {
        v27 = *(v6 + 1);
        v29 = *(v6 + 2);
        v23 = *(v4 + 1);
        v25 = *(v4 + 2);
        if (sub_26B9ACA94() != -1)
        {
          break;
        }

        v13 = v6;
        v14 = v7 == v6;
        v6 += 24;
        if (!v14)
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 24;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_33;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_10:
      v15 = *v13;
      *(v7 + 2) = *(v13 + 2);
      *v7 = v15;
      goto LABEL_11;
    }

LABEL_33:
    v6 = v7;
  }

LABEL_35:
  v21 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

uint64_t sub_26B93CFC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  if (v8)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_26B8EC52C;

  return sub_26B936A54(a1, v6, v4, v5, v11 | v7, v10, v9);
}

unint64_t sub_26B93D0F4()
{
  result = qword_280426588;
  if (!qword_280426588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426588);
  }

  return result;
}

unint64_t sub_26B93D170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426620, &unk_26B9B2230);
    v3 = sub_26B9ACD84();
    sub_26B9AAAE4();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26B9201A8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_26B93D26C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_26B9ACB44();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804265E8, &qword_26B9B21F8);
      result = sub_26B9ACBA4();
      v3 = result;
      v19 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_26B9ACB44();
      v4 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v19 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = v3 + 56;
  v18 = v4;
  while ((v19 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x26D686B00](v5, v19);
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_17:
    v9 = *(v3 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804265F0, &unk_26B9B2200);
    result = sub_26B9AC454();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v6 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      while (1)
      {
        v20 = *(*(v3 + 48) + 8 * v11);
        result = sub_26B9AC494();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v6 + 8 * (v11 >> 6));
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          v4 = v18;
          goto LABEL_22;
        }
      }

      v4 = v18;
      if (v5 == v18)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *(v6 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v7;
      v16 = *(v3 + 16);
      v8 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      *(v3 + 16) = v17;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v19 + 32 + 8 * v5);
  result = sub_26B9AAAE4();
  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

char *sub_26B93D4B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_26B9294B8(0, &qword_280426618, 0x277D65848);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_26B9ACB44();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_26B9ACB44();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_26B93D5E4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_26B9ACB44();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_26B9ACB44();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_26B928DFC(result);

  return sub_26B93D4B8(v6, v5, 1, v3);
}

unint64_t sub_26B93D6D0()
{
  result = qword_28042C250[0];
  if (!qword_28042C250[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28042C250);
  }

  return result;
}

uint64_t sub_26B93D724(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26B9ACEB4() & 1;
  }
}

uint64_t sub_26B93D77C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426598, &qword_26B9B1F60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of AppZKWQueryDataSource.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 128);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EC52C;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_26B93D988(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26B93D9D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_26B93DA24()
{
  result = qword_28042C360[0];
  if (!qword_28042C360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28042C360);
  }

  return result;
}

__n128 EmptyQuery.platterBehavior.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26B92CA84();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

__n128 sub_26B93DB1C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26B92CA84();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_26B93DB50(uint64_t a1)
{
  result = sub_26B903C04();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B93DB78@<X0>(void *a1@<X8>)
{
  sub_26B93DE34();

  return StaticQuery.representation.getter(a1);
}

uint64_t sub_26B93DBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B93DE34();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return StaticQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B93DCA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_26B93DE34();
  *v1 = v0;
  v1[1] = sub_26B8EB6C8;

  return StaticQuery.stop(with:)();
}

unint64_t sub_26B93DD54(uint64_t a1)
{
  result = sub_26B93DD7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B93DD7C()
{
  result = qword_280426628;
  if (!qword_280426628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426628);
  }

  return result;
}

uint64_t sub_26B93DDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B903C04();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_26B93DE34()
{
  result = qword_280426630;
  if (!qword_280426630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426630);
  }

  return result;
}

id ErrorQuery.error.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t ErrorQuery.representation.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
  v3 = v2;
}

void ErrorQuery.representation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
}

__n128 ErrorQuery.platterBehavior.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26B92CA84();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

uint64_t ErrorQuery.init(error:representation:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = MEMORY[0x277D84F90];
  *a3 = result;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  return result;
}

unint64_t sub_26B93DFF4(uint64_t a1)
{
  result = sub_26B93E01C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B93E01C()
{
  result = qword_280426638;
  if (!qword_280426638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426638);
  }

  return result;
}

uint64_t sub_26B93E070@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
  v3 = v2;
}

uint64_t sub_26B93E0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B93E3A4();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return StaticQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B93E188()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_26B93E3A4();
  *v1 = v0;
  v1[1] = sub_26B8EB6C8;

  return StaticQuery.stop(with:)();
}

unint64_t sub_26B93E23C(uint64_t a1)
{
  result = sub_26B93E264();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B93E264()
{
  result = qword_280426640;
  if (!qword_280426640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426640);
  }

  return result;
}

uint64_t sub_26B93E2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B93E01C();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B93E30C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26B93E354(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_26B93E3A4()
{
  result = qword_280426648;
  if (!qword_280426648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426648);
  }

  return result;
}

unint64_t sub_26B93E480()
{
  result = qword_280426F60;
  if (!qword_280426F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280426F60);
  }

  return result;
}

id sub_26B93E4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v13 = sub_26B9AC4C4();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    if (a4)
    {
LABEL_3:
      v14 = sub_26B9AC4C4();

      if (a6)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v14 = 0;
  if (a6)
  {
LABEL_4:
    v15 = sub_26B9AC4C4();

    if (a7)
    {
      goto LABEL_5;
    }

LABEL_10:
    v16 = 0;
    if (a8)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v15 = 0;
  if (!a7)
  {
    goto LABEL_10;
  }

LABEL_5:
  v16 = sub_26B9AC6E4();

  if (a8)
  {
LABEL_6:
    sub_26B93E480();
    v17 = sub_26B9AC6E4();

    goto LABEL_12;
  }

LABEL_11:
  v17 = 0;
LABEL_12:
  v20.receiver = v8;
  v20.super_class = type metadata accessor for FilesZKWFallbackResult();
  v18 = objc_msgSendSuper2(&v20, sel_initWithIdentifier_bundleIdentifier_protectionClass_attributeKeys_attributeValues_, v13, v14, v15, v16, v17);

  if (v18)
  {
  }

  return v18;
}

id sub_26B93E76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    v16 = sub_26B9AC4C4();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = 0;
    if (a4)
    {
LABEL_3:
      v17 = sub_26B9AC4C4();

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v18 = 0;
      if (a7)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v17 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v18 = sub_26B9AC4C4();

  if (a7)
  {
LABEL_5:
    v19 = sub_26B9AC6E4();

    goto LABEL_10;
  }

LABEL_9:
  v19 = 0;
LABEL_10:
  if (a8)
  {
    sub_26B93E480();
    v20 = sub_26B9AC6E4();

    if (a11)
    {
LABEL_12:
      v21 = sub_26B9AC4C4();

      goto LABEL_15;
    }
  }

  else
  {
    v20 = 0;
    if (a11)
    {
      goto LABEL_12;
    }
  }

  v21 = 0;
LABEL_15:
  v24.receiver = v11;
  v24.super_class = type metadata accessor for FilesZKWFallbackResult();
  v22 = objc_msgSendSuper2(&v24, sel_initWithIdentifier_bundleIdentifier_protectionClass_attributeKeys_attributeValues_type_completion_, v16, v17, v18, v19, v20, a9, v21);

  if (v22)
  {
  }

  return v22;
}

id sub_26B93EA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    v15 = sub_26B9AC4C4();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = 0;
    if (a4)
    {
LABEL_3:
      v16 = sub_26B9AC4C4();

      v17 = a10;
      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v18 = 0;
      if (v17)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v16 = 0;
  v17 = a10;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v18 = sub_26B9AC4C4();

  if (v17)
  {
LABEL_5:
    v19 = sub_26B9AC4C4();

    goto LABEL_10;
  }

LABEL_9:
  v19 = 0;
LABEL_10:
  v22.receiver = v10;
  v22.super_class = type metadata accessor for FilesZKWFallbackResult();
  v20 = objc_msgSendSuper2(&v22, sel_initWithIdentifier_bundleIdentifier_protectionClass_attributes_type_completion_, v15, v16, v18, a7, a8, v19);

  if (v20)
  {
  }

  return v20;
}

id sub_26B93ECEC(void *a1, uint64_t a2, void *a3, const char **a4)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for FilesZKWFallbackResult();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id sub_26B93EDE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FilesZKWFallbackResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26B93EE1C(uint64_t a1)
{
  v3 = sub_26B9AB104();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v9 = *(a1 + 16);
  if (v9)
  {
    v12 = *(v4 + 16);
    v11 = v4 + 16;
    v10 = v12;
    v13 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v25 = *(v11 + 56);
    v14 = (v11 - 8);
    v21 = v13;
    v12(v7, a1 + v13, v3);
    sub_26B93F2EC(v7);
    if (v1)
    {
      v8 = MEMORY[0x277D84F90];
      (*v14)(v7, v3);
    }

    else
    {
      v22 = v10;
      v23 = v11;
      v24 = *v14;
      v16 = a1 + v25 + v21;
      while (1)
      {
        v17 = (v24)(v7, v3);
        MEMORY[0x26D6865A0](v17);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_26B9AC734();
        }

        sub_26B9AC774();
        v8 = v26;
        if (!--v9)
        {
          break;
        }

        v18 = v14;
        v19 = v16 + v25;
        v22(v7, v16, v3);
        sub_26B93F2EC(v7);
        v16 = v19;
        v14 = v18;
      }
    }
  }

  return v8;
}

uint64_t sub_26B93F060(uint64_t a1)
{
  v2 = sub_26B93F624(&qword_280426680);
  v3 = sub_26B93F624(&qword_280426688);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26B93F0F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426658, &qword_26B9B2430);
    v3 = sub_26B9ACBA4();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_26B9AC504();
      sub_26B9ACFB4();
      v29 = v7;
      sub_26B9AC574();
      v9 = sub_26B9ACFF4();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_26B9AC504();
        v20 = v19;
        if (v18 == sub_26B9AC504() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_26B9ACEB4();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

id sub_26B93F2EC(uint64_t a1)
{
  v27 = a1;
  v1 = sub_26B9AAF24();
  v25 = *(v1 - 8);
  v26 = v1;
  v2 = *(v25 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426650, &qword_26B9B2428);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B9B23E0;
  v6 = *MEMORY[0x277CBE7C0];
  *(inited + 32) = *MEMORY[0x277CBE7C0];
  v7 = (inited + 32);
  v8 = *MEMORY[0x277CBE7B0];
  v9 = *MEMORY[0x277CBE8D8];
  *(inited + 40) = *MEMORY[0x277CBE7B0];
  *(inited + 48) = v9;
  v10 = *MEMORY[0x277CBE8E8];
  v11 = *MEMORY[0x277CBE838];
  *(inited + 56) = *MEMORY[0x277CBE8E8];
  *(inited + 64) = v11;
  v12 = *MEMORY[0x277CBE7B8];
  v13 = *MEMORY[0x277CBE8F8];
  *(inited + 72) = *MEMORY[0x277CBE7B8];
  *(inited + 80) = v13;
  v14 = v6;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v4;
  v20 = v12;
  v21 = v13;
  sub_26B93F0F8(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey();
  swift_arrayDestroy();
  v22 = v28;
  sub_26B9AB084();

  if (!v22)
  {
    v7 = [objc_allocWithZone(type metadata accessor for FilesZKWFallbackResult()) init];
    [v7 setSectionBundleIdentifier_];
    v23 = sub_26B9AB0A4();
    [v7 setUrl_];

    (*(v25 + 8))(v19, v26);
  }

  return v7;
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_280426660)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280426660);
    }
  }
}

uint64_t sub_26B93F624(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_26B93F668@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 120))(v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_26B93F6C4(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v7[0] = *a1;
  v7[1] = v2;
  v4 = *(*v3 + 128);
  v5 = v2;

  return v4(v7);
}

uint64_t sub_26B93F730@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v3;
  v4 = v3;
}

void sub_26B93F788(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

uint64_t sub_26B93F82C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_26B93F878(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t sub_26B93F91C()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t sub_26B93F954(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_26B93F99C()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_26B93F9D4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_26B93FA6C()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_26B93FAA4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

double sub_26B93FAEC@<D0>(__int128 *a1@<X8>)
{
  if ([objc_opt_self() isWiderFilesBrowseViewEnabled])
  {
    static ResultPlatterBehavior.gridBrowse.getter(&v6);
  }

  else
  {
    v2 = sub_26B92CDA0();
    v3 = v2[1];
    v6 = *v2;
    v7 = v3;
    v8 = v2[2];
  }

  v4 = v7;
  *a1 = v6;
  a1[1] = v4;
  result = *&v8;
  a1[2] = v8;
  return result;
}

uint64_t FilesZKWQuery.__allocating_init(representation:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v16 = *a1;
  v17 = v3;
  v5 = QueryRepresentation.tokenProviders.getter();
  v15 = MEMORY[0x277D84F90];
  v6 = v5[2];
  if (v6)
  {
    v11 = v1;
    v7 = (v5 + 4);
    v8 = MEMORY[0x277D84F90];
    do
    {
      sub_26B907F08(v7, v14);
      sub_26B8ECB70(v14, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263E8, &unk_26B9B1280);
      sub_26B9294B8(0, &qword_280426690, 0x277D4C508);
      if ((swift_dynamicCast() & 1) != 0 && v13)
      {
        MEMORY[0x26D6865A0]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_26B9AC734();
        }

        sub_26B9AC774();
        v8 = v15;
      }

      v7 += 40;
      --v6;
    }

    while (v6);

    v2 = v11;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  *&v14[0] = v4;
  *(&v14[0] + 1) = v3;
  return (*(v2 + 248))(v8, v14);
}

uint64_t FilesZKWQuery.__allocating_init(commands:representation:)(unint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FilesZKWQuery.init(commands:representation:)(a1, a2);
  return v4;
}

uint64_t *FilesZKWQuery.init(commands:representation:)(unint64_t a1, uint64_t a2)
{
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  v4 = *a2;
  v5 = *(a2 + 8);
  v17 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26B9ACB44())
  {
    v14 = v5;
    v5 = 0;
    v4 = &off_279D10000;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D686B00](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v7 entityType] == 7)
      {
        sub_26B9ACC64();
        v10 = *(v17 + 16);
        sub_26B9ACCA4();
        sub_26B9ACCB4();
        v2 = &v17;
        sub_26B9ACC74();
      }

      else
      {
      }

      ++v5;
      if (v9 == i)
      {
        v2 = v16;
        v11 = v17;
        v5 = v14;
        v4 = v15;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_18:

  swift_beginAccess();
  v12 = v2[4];
  v2[4] = v11;

  v2[2] = v4;
  v2[3] = v5;
  return v2;
}

uint64_t sub_26B93FEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 488) = a4;
  *(v5 + 496) = v4;
  *(v5 + 472) = a1;
  *(v5 + 480) = a3;
  v7 = sub_26B9AB584();
  *(v5 + 504) = v7;
  v8 = *(v7 - 8);
  *(v5 + 512) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 520) = swift_task_alloc();
  *(v5 + 51) = *(a2 + 8);
  *(v5 + 528) = *(a2 + 24);

  return MEMORY[0x2822009F8](sub_26B93FFC4, 0, 0);
}

uint64_t sub_26B93FFC4()
{
  v1 = *(v0 + 472);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = type metadata accessor for FilesZKWQueryDataSource();
  v5 = *(v3 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 536) = v7;
  *v7 = v0;
  v7[1] = sub_26B940114;

  return (v9)(v0 + 456, v4, v4, &protocol witness table for FilesZKWQueryDataSource, v2, v3);
}

uint64_t sub_26B940114()
{
  v1 = *(*v0 + 536);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26B940210, 0, 0);
}

uint64_t sub_26B940210()
{
  v42 = v0;
  v1 = *(v0 + 51);
  *(v0 + 544) = *(v0 + 456);
  if (v1 == 2)
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
      v2 = sub_26B9ACD34();
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      sub_26B9ACDA4();
    }

    v3 = *(v0 + 528);
    v4 = *(v0 + 480);
    v5 = sub_26B906128();
    SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v2, v3, 1, 1, 0, v5 & 1, v0 + 16);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 33);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    *(v0 + 56) = *(v0 + 16);
    v11 = v0 + 56;
    *(v0 + 64) = v6;
    *(v0 + 72) = v7;
    *(v0 + 73) = v8;
    *(v0 + 80) = v9;
    *(v0 + 88) = v10;
    v36 = (v4 + *v4);
    v12 = v4[1];
    v13 = swift_task_alloc();
    *(v0 + 784) = v13;
    *v13 = v0;
    v14 = sub_26B941560;
    goto LABEL_5;
  }

  v17 = MEMORY[0x277D84F90];
  v18 = *(v0 + 496);
  *(v0 + 464) = MEMORY[0x277D84F90];
  v19 = (*(*v18 + 168))();
  *(v0 + 552) = v19;
  if (v19)
  {
    v20 = sub_26B92A538();
    *(v0 + 560) = v20;
    swift_beginAccess();
    v21 = *v20;
    v22 = sub_26B9405E4;
  }

  else
  {
    *(v0 + 656) = v17;
    *(v0 + 648) = 0;
    v23 = (*(**(v0 + 496) + 192))();
    *(v0 + 664) = v23;
    if (!v23)
    {
      v25 = *(v0 + 528);
      v26 = *(v0 + 480);
      v27 = (*(**(v0 + 496) + 216))();
      v28 = sub_26B906128();
      SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(MEMORY[0x277D84F90], v25, 1, 1, v27, v28 & 1, v37);
      v29 = v37[0];
      v30 = v37[1];
      *(v0 + 760) = v37[0];
      v31 = v38;
      v32 = v39;
      v33 = v40;
      *(v0 + 768) = v40;
      v34 = v41;
      *(v0 + 96) = v29;
      v11 = v0 + 96;
      *(v0 + 104) = v30;
      *(v0 + 112) = v31;
      *(v0 + 113) = v32;
      *(v0 + 120) = v33;
      *(v0 + 128) = v34;
      v36 = (v26 + *v26);
      v35 = v26[1];
      v13 = swift_task_alloc();
      *(v0 + 776) = v13;
      *v13 = v0;
      v14 = sub_26B9413C4;
LABEL_5:
      v13[1] = v14;
      v15 = *(v0 + 488);

      return v36(v11);
    }

    v24 = sub_26B92A538();
    *(v0 + 672) = v24;
    swift_beginAccess();
    v21 = *v24;
    v22 = sub_26B940CFC;
  }

  return MEMORY[0x2822009F8](v22, v21, 0);
}

uint64_t sub_26B9405E4()
{
  *(v0 + 568) = sub_26B942870();

  return MEMORY[0x2822009F8](sub_26B94064C, 0, 0);
}

uint64_t sub_26B94064C()
{
  v1 = *(v0 + 560);
  swift_beginAccess();
  v2 = *v1;

  return MEMORY[0x2822009F8](sub_26B9406C4, v2, 0);
}

uint64_t sub_26B9406C4()
{
  v1 = v0[71];
  v0[72] = *v1;
  v0[73] = v1[1];

  return MEMORY[0x2822009F8](sub_26B940740, 0, 0);
}

uint64_t sub_26B940740()
{
  v1 = *(v0 + 560);
  swift_beginAccess();
  v2 = *v1;

  return MEMORY[0x2822009F8](sub_26B9407B8, v2, 0);
}

uint64_t sub_26B9407B8()
{
  *(v0 + 592) = sub_26B942934();

  return MEMORY[0x2822009F8](sub_26B940820, 0, 0);
}

uint64_t sub_26B940820()
{
  v1 = *(v0 + 560);
  swift_beginAccess();
  v2 = *v1;

  return MEMORY[0x2822009F8](sub_26B940898, v2, 0);
}

uint64_t sub_26B940898()
{
  v1 = v0[74];
  v0[75] = *v1;
  v0[76] = v1[1];

  return MEMORY[0x2822009F8](sub_26B940914, 0, 0);
}

uint64_t sub_26B940914()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 544);
  *(v0 + 50) = *(v0 + 51) & 1;
  v3 = *v2 + 128;
  *(v0 + 616) = *v3;
  *(v0 + 624) = v3 & 0xFFFFFFFFFFFFLL | 0xD493000000000000;
  swift_beginAccess();
  v4 = *v1;

  return MEMORY[0x2822009F8](sub_26B9409BC, v4, 0);
}

uint64_t sub_26B9409BC()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 544);
  *(v0 + 632) = (*(v0 + 616))(*(v0 + 552), *(v0 + 576), *(v0 + 584), *(v0 + 600), *(v0 + 608), v0 + 50);
  *(v0 + 640) = 0;
  v3 = *(v0 + 608);
  v4 = *(v0 + 584);
  v5 = *(v0 + 552);

  return MEMORY[0x2822009F8](sub_26B940A8C, 0, 0);
}

uint64_t sub_26B940A8C()
{
  v27 = v0;
  v1 = *(v0 + 632);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_26B9B1290;
    *(v2 + 32) = v1;
    *(v0 + 464) = v2;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v0 + 640);
  *(v0 + 656) = v2;
  *(v0 + 648) = v3;
  v4 = (*(**(v0 + 496) + 192))();
  *(v0 + 664) = v4;
  if (v4)
  {
    v5 = sub_26B92A538();
    *(v0 + 672) = v5;
    swift_beginAccess();
    v6 = *v5;

    return MEMORY[0x2822009F8](sub_26B940CFC, v6, 0);
  }

  else
  {
    v7 = *(v0 + 528);
    v8 = *(v0 + 480);
    v9 = (*(**(v0 + 496) + 216))();
    v10 = sub_26B906128();
    SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v2, v7, 1, 1, v9, v10 & 1, v22);
    v11 = v22[0];
    v12 = v22[1];
    *(v0 + 760) = v22[0];
    v13 = v23;
    v14 = v24;
    v15 = v25;
    *(v0 + 768) = v25;
    v16 = v26;
    *(v0 + 96) = v11;
    *(v0 + 104) = v12;
    *(v0 + 112) = v13;
    *(v0 + 113) = v14;
    *(v0 + 120) = v15;
    *(v0 + 128) = v16;
    v21 = (v8 + *v8);
    v17 = v8[1];
    v18 = swift_task_alloc();
    *(v0 + 776) = v18;
    *v18 = v0;
    v18[1] = sub_26B9413C4;
    v19 = *(v0 + 488);

    return v21(v0 + 96);
  }
}

uint64_t sub_26B940CFC()
{
  *(v0 + 680) = sub_26B942AB4();

  return MEMORY[0x2822009F8](sub_26B940D64, 0, 0);
}

uint64_t sub_26B940D64()
{
  v1 = *(v0 + 672);
  swift_beginAccess();
  v2 = *v1;

  return MEMORY[0x2822009F8](sub_26B940DDC, v2, 0);
}

uint64_t sub_26B940DDC()
{
  v1 = v0[85];
  v0[86] = *v1;
  v0[87] = v1[1];

  return MEMORY[0x2822009F8](sub_26B940E58, 0, 0);
}

uint64_t sub_26B940E58()
{
  v1 = *(v0 + 672);
  swift_beginAccess();
  v2 = *v1;

  return MEMORY[0x2822009F8](sub_26B940ED0, v2, 0);
}

uint64_t sub_26B940ED0()
{
  *(v0 + 704) = sub_26B942B80();

  return MEMORY[0x2822009F8](sub_26B940F38, 0, 0);
}

uint64_t sub_26B940F38()
{
  v1 = *(v0 + 672);
  swift_beginAccess();
  v2 = *v1;

  return MEMORY[0x2822009F8](sub_26B940FB0, v2, 0);
}

uint64_t sub_26B940FB0()
{
  v1 = v0[88];
  v0[89] = *v1;
  v0[90] = v1[1];

  return MEMORY[0x2822009F8](sub_26B94102C, 0, 0);
}

uint64_t sub_26B94102C()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 544);
  *(v0 + 49) = *(v0 + 51) & 1;
  v3 = *v2 + 128;
  *(v0 + 728) = *v3;
  *(v0 + 736) = v3 & 0xFFFFFFFFFFFFLL | 0xD493000000000000;
  swift_beginAccess();
  v4 = *v1;

  return MEMORY[0x2822009F8](sub_26B9410D4, v4, 0);
}

uint64_t sub_26B9410D4()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 648);
  v3 = *(v0 + 544);
  *(v0 + 744) = (*(v0 + 728))(*(v0 + 664), *(v0 + 688), *(v0 + 696), *(v0 + 712), *(v0 + 720), v0 + 49);
  *(v0 + 752) = v2;
  v4 = *(v0 + 720);
  v5 = *(v0 + 696);
  v6 = *(v0 + 664);
  if (v2)
  {
    v7 = *(v0 + 656);

    v8 = sub_26B941AF0;
  }

  else
  {
    v9 = *(v0 + 720);

    v8 = sub_26B9411D0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26B9411D0()
{
  v26 = v0;
  v1 = *(v0 + 744);
  if (v1)
  {
    v2 = (v0 + 464);
    v3 = v1;
    MEMORY[0x26D6865A0]();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26B9AC734();
    }

    sub_26B9AC774();
  }

  else
  {
    v2 = (v0 + 656);
  }

  v4 = *v2;
  v5 = *(v0 + 528);
  v6 = *(v0 + 480);
  v7 = (*(**(v0 + 496) + 216))();
  v8 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v4, v5, 1, 1, v7, v8 & 1, v21);
  v9 = v21[0];
  v10 = v21[1];
  *(v0 + 760) = v21[0];
  v11 = v22;
  v12 = v23;
  v13 = v24;
  *(v0 + 768) = v24;
  v14 = v25;
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  *(v0 + 112) = v11;
  *(v0 + 113) = v12;
  *(v0 + 120) = v13;
  *(v0 + 128) = v14;
  v20 = (v6 + *v6);
  v15 = v6[1];
  v16 = swift_task_alloc();
  *(v0 + 776) = v16;
  *v16 = v0;
  v16[1] = sub_26B9413C4;
  v17 = *(v0 + 488);

  return v20(v0 + 96);
}

uint64_t sub_26B9413C4()
{
  v1 = *(*v0 + 776);
  v2 = *(*v0 + 768);
  v3 = *(*v0 + 760);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_26B9414F8, 0, 0);
}

uint64_t sub_26B9414F8()
{
  v1 = v0[68];

  v2 = v0[65];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B941560()
{
  v1 = *v0;
  v2 = *(*v0 + 784);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26B9414F8, 0, 0);
}

uint64_t sub_26B941694()
{
  v1 = *v0;
  v2 = *(*v0 + 800);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_26B9417C8, 0, 0);
}

uint64_t sub_26B9417C8()
{
  v1 = *(v0 + 520);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B941830()
{
  v1 = *(v0 + 544);

  v2 = *(v0 + 640);
  *(v0 + 792) = v2;
  v3 = *(v0 + 520);
  v4 = *(v0 + 504);
  v5 = *(v0 + 512);
  v6 = sub_26B9A7568();
  (*(v5 + 16))(v3, v6, v4);
  v7 = v2;
  v8 = sub_26B9AB564();
  v9 = sub_26B9AC934();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_26B8E8000, v8, v9, "Unable to redisplay suggested files for ZKW from ATXSpotlightClient: %@", v10, 0xCu);
    sub_26B9422F4(v11);
    MEMORY[0x26D6879F0](v11, -1, -1);
    MEMORY[0x26D6879F0](v10, -1, -1);
  }

  v14 = *(v0 + 520);
  v15 = *(v0 + 504);
  v16 = *(v0 + 512);

  (*(v16 + 8))(v14, v15);
  if (MEMORY[0x277D84F90] >> 62)
  {
    sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
    v17 = sub_26B9ACD34();
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
    sub_26B9ACDA4();
  }

  v18 = *(v0 + 528);
  v19 = *(v0 + 480);
  v20 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v17, v18, 1, 1, 0, v20 & 1, v0 + 136);
  v21 = *(v0 + 144);
  v22 = *(v0 + 152);
  v23 = *(v0 + 153);
  v24 = *(v0 + 160);
  v25 = *(v0 + 168);
  *(v0 + 176) = *(v0 + 136);
  *(v0 + 184) = v21;
  *(v0 + 192) = v22;
  *(v0 + 193) = v23;
  *(v0 + 200) = v24;
  *(v0 + 208) = v25;
  v30 = (v19 + *v19);
  v26 = v19[1];
  v27 = swift_task_alloc();
  *(v0 + 800) = v27;
  *v27 = v0;
  v27[1] = sub_26B941694;
  v28 = *(v0 + 488);

  return v30(v0 + 176);
}

uint64_t sub_26B941AF0()
{
  v1 = *(v0 + 544);

  v2 = *(v0 + 752);
  *(v0 + 792) = v2;
  v3 = *(v0 + 520);
  v4 = *(v0 + 504);
  v5 = *(v0 + 512);
  v6 = sub_26B9A7568();
  (*(v5 + 16))(v3, v6, v4);
  v7 = v2;
  v8 = sub_26B9AB564();
  v9 = sub_26B9AC934();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_26B8E8000, v8, v9, "Unable to redisplay suggested files for ZKW from ATXSpotlightClient: %@", v10, 0xCu);
    sub_26B9422F4(v11);
    MEMORY[0x26D6879F0](v11, -1, -1);
    MEMORY[0x26D6879F0](v10, -1, -1);
  }

  v14 = *(v0 + 520);
  v15 = *(v0 + 504);
  v16 = *(v0 + 512);

  (*(v16 + 8))(v14, v15);
  if (MEMORY[0x277D84F90] >> 62)
  {
    sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
    v17 = sub_26B9ACD34();
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
    sub_26B9ACDA4();
  }

  v18 = *(v0 + 528);
  v19 = *(v0 + 480);
  v20 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v17, v18, 1, 1, 0, v20 & 1, v0 + 136);
  v21 = *(v0 + 144);
  v22 = *(v0 + 152);
  v23 = *(v0 + 153);
  v24 = *(v0 + 160);
  v25 = *(v0 + 168);
  *(v0 + 176) = *(v0 + 136);
  *(v0 + 184) = v21;
  *(v0 + 192) = v22;
  *(v0 + 193) = v23;
  *(v0 + 200) = v24;
  *(v0 + 208) = v25;
  v30 = (v19 + *v19);
  v26 = v19[1];
  v27 = swift_task_alloc();
  *(v0 + 800) = v27;
  *v27 = v0;
  v27[1] = sub_26B941694;
  v28 = *(v0 + 488);

  return v30(v0 + 176);
}

void *FilesZKWQuery.deinit()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return v0;
}

uint64_t FilesZKWQuery.__deallocating_deinit()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_26B941E60@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FilesZKWQuery();

  return TypedQuery<>.request.getter(v2, a1);
}

uint64_t sub_26B941EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 264);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EB6C8;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_26B942084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  WitnessTable = swift_getWitnessTable();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_26B942178(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return TypedQuery.stop(with:)(a1, a2, WitnessTable);
}

uint64_t sub_26B942288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static Query.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_26B9422F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426230, &unk_26B9B25F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B942368(uint64_t a1)
{
  result = sub_26B942458(&qword_280426698);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B9423D0(uint64_t a1)
{
  result = sub_26B942458(&qword_2804266A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B942414(uint64_t a1)
{
  result = sub_26B942458(&qword_2804266A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B942458(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FilesZKWQuery();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of FilesZKWQuery.updateLayout(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 264);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EB6C8;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_26B942738()
{
  v0 = sub_26B9AB224();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_26B9AC4B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26B9AC4A4();
  v4 = [objc_opt_self() bundle];
  sub_26B9AB214();
  result = sub_26B9AC514();
  qword_280433D88 = result;
  unk_280433D90 = v6;
  return result;
}

uint64_t *sub_26B942870()
{
  if (qword_28042CDF0 != -1)
  {
    swift_once();
  }

  return &qword_280433D88;
}

uint64_t sub_26B9428C0()
{
  v0 = sub_26B935E24();
  v2 = *v0;
  v3 = v0[1];
  swift_bridgeObjectRetain_n();
  MEMORY[0x26D686470](0xD000000000000012, 0x800000026B9B90C0);

  qword_280433D98 = v2;
  unk_280433DA0 = v3;
  return result;
}

uint64_t *sub_26B942934()
{
  if (qword_28042CDF8 != -1)
  {
    swift_once();
  }

  return &qword_280433D98;
}

uint64_t sub_26B942984()
{
  v0 = sub_26B9AB224();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_26B9AC4B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26B9AC4A4();
  v4 = [objc_opt_self() bundle];
  sub_26B9AB214();
  result = sub_26B9AC514();
  qword_280433DA8 = result;
  unk_280433DB0 = v6;
  return result;
}

uint64_t *sub_26B942AB4()
{
  if (qword_28042CE00 != -1)
  {
    swift_once();
  }

  return &qword_280433DA8;
}

uint64_t sub_26B942B04()
{
  v0 = sub_26B935E24();
  v2 = *v0;
  v3 = v0[1];
  swift_bridgeObjectRetain_n();
  MEMORY[0x26D686470](0x722E73656C69662ELL, 0xEE0073746E656365);

  qword_280433DB8 = v2;
  unk_280433DC0 = v3;
  return result;
}

uint64_t *sub_26B942B80()
{
  if (qword_28042CE08 != -1)
  {
    swift_once();
  }

  return &qword_280433DB8;
}

uint64_t sub_26B942BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = v4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a3;
  *(v5 + 112) = *a2;
  *(v5 + 160) = *(a2 + 8);
  *(v5 + 161) = *(a2 + 9);
  *(v5 + 120) = *(a2 + 16);
  v6 = sub_26B92A538();
  swift_beginAccess();
  v7 = *v6;
  *(v5 + 136) = v7;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B942C9C, v7, 0);
}

uint64_t sub_26B942C9C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 161);
  v4 = *(v0 + 160);
  v5 = *(v0 + 112);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  *(v0 + 72) = v6;
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 25) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  *(v8 + 41) = v3;
  *(v8 + 48) = v2;
  *(v8 + 56) = v1;
  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  type metadata accessor for FilesZKWQueryDataSource();
  *v9 = v0;
  v9[1] = sub_26B9368C8;
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);

  return QueryDataSource.wrapWithFeedback(context:spotlightBrowsingSearchScope:resultHandler:fetchResults:)(v0 + 16, 2, v10, v11, &unk_26B9B2760);
}

uint64_t sub_26B942DDC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a2;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  v10 = sub_26B92A538();
  swift_beginAccess();
  *(v7 + 72) = *v10;
  sub_26B9AAAE4();
  v11 = swift_task_alloc();
  *(v7 + 80) = v11;
  *v11 = v7;
  v11[1] = sub_26B936B48;

  return sub_26B942FCC(a1, a4, v7 + 16);
}

uint64_t sub_26B942EC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  if (v8)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_26B8EB6C8;

  return sub_26B942DDC(a1, v6, v4, v5, v11 | v7, v10, v9);
}

uint64_t sub_26B942FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 208) = a1;
  *(v3 + 216) = a2;
  v5 = sub_26B9AB584();
  *(v3 + 224) = v5;
  v6 = *(v5 - 8);
  *(v3 + 232) = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  *(v3 + 300) = *(a3 + 8);
  v9 = *(a3 + 24);
  *(v3 + 240) = v8;
  *(v3 + 248) = v9;
  v10 = sub_26B92A538();
  swift_beginAccess();
  v11 = *v10;
  *(v3 + 256) = v11;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B9430C8, v11, 0);
}

uint64_t sub_26B9430C8()
{
  v22 = v0;
  v1 = (*(**(v0 + 216) + 144))();
  if (!v1)
  {
LABEL_18:
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    v18 = v1;
    v19 = sub_26B9ACB44();
    v1 = v18;
    if (!v19)
    {
      goto LABEL_17;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:

    goto LABEL_18;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26D686B00](0);
  }

  else
  {
    if (!*(v2 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = [v4 filterQueries];
  if (!v5 || (v6 = v5, v7 = [objc_opt_self() uttypesFromFilterQueries_], v6, !v7))
  {

    v11 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v8 = sub_26B9AB414();
  sub_26B947164();
  v9 = sub_26B9AC874();

  v10 = *(v9 + 16);
  if (!v10)
  {

    goto LABEL_17;
  }

  v11 = sub_26B945780(*(v9 + 16), 0);
  v12 = sub_26B946A10(&v21, (v11 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80))), v10, v9);
  v1 = sub_26B9471BC();
  if (v12 != v10)
  {
LABEL_28:
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (*(v11 + 16))
  {
LABEL_15:
    v13 = objc_allocWithZone(MEMORY[0x277CEB4F0]);
    v14 = sub_26B945570();
    goto LABEL_21;
  }

LABEL_19:

LABEL_20:
  v14 = 0;
LABEL_21:
  *(v0 + 264) = 0;
  *(v0 + 272) = v14;
  v15 = [objc_allocWithZone(MEMORY[0x277CEB4E8]) initWithLimit:100 documentScope:v14];
  *(v0 + 280) = v15;
  v16 = objc_opt_self();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_26B9435C4;
  v17 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266C0, &qword_26B9B27E8);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_26B944FE4;
  *(v0 + 104) = &block_descriptor_2;
  *(v0 + 112) = v17;
  [v16 categoriesForRequest:v15 withReply:v0 + 80];
  v1 = v0 + 16;

  return MEMORY[0x282200938](v1);
}

uint64_t sub_26B9435C4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  v4 = *(v1 + 256);
  if (v3)
  {
    v5 = sub_26B944E08;
  }

  else
  {
    v5 = sub_26B9436E4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26B9436E4()
{
  v195 = v2;
  v4 = *(v2 + 256);

  v180 = v2;
  v5 = *(v2 + 168);
  v6 = [objc_opt_self() isWiderFilesBrowseViewEnabled];
  if (v6)
  {
    v7 = 7;
  }

  else
  {
    v7 = 5;
  }

  if (!(v5 >> 62))
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_84:

    v26 = 0;
    v9 = 0;
    v88 = MEMORY[0x277D84F90];
    v193 = MEMORY[0x277D84F90];
    v194 = MEMORY[0x277D84F90];
    v176 = MEMORY[0x277D84F90];
    v8 = v180;
LABEL_110:
    v175 = v26;
    if (*(v8 + 272))
    {

      isUniquelyReferenced_nonNull_native = 0;
LABEL_214:
      v167 = *(v8 + 272);
      v166 = *(v8 + 280);
      v168 = *(v8 + 248);
      v169 = *(v8 + 208);
      v170 = sub_26B906128();
      SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v176, v168, 1, 1, isUniquelyReferenced_nonNull_native, v170 & 1, v169);

      goto LABEL_215;
    }

    v177 = v88;
    v102 = sub_26B947014(MEMORY[0x277D84F90]);
    if (v177 >> 62)
    {
      goto LABEL_169;
    }

    v103 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v182 = v9;
    if (v103)
    {
LABEL_114:
      isUniquelyReferenced_nonNull_native = 0;
      v179 = objc_opt_self();
      v178 = v103;
      do
      {
        if ((v177 & 0xC000000000000001) != 0)
        {
          v104 = MEMORY[0x26D686B00](isUniquelyReferenced_nonNull_native, v177);
        }

        else
        {
          if (isUniquelyReferenced_nonNull_native >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_168;
          }

          v104 = *(v177 + 32 + 8 * isUniquelyReferenced_nonNull_native);
        }

        v105 = v104;
        v106 = __OFADD__(isUniquelyReferenced_nonNull_native++, 1);
        if (v106)
        {
          goto LABEL_167;
        }

        v107 = [v179 filtersForResult_];
        if (v107)
        {
          v108 = v107;
          sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);
          v9 = sub_26B9AC6F4();

          if (v9 >> 62)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v9 = MEMORY[0x277D84F90];
          if (MEMORY[0x277D84F90] >> 62)
          {
LABEL_158:
            v109 = sub_26B9ACB44();
            v183 = v105;
            v184 = isUniquelyReferenced_nonNull_native;
            if (!v109)
            {
              goto LABEL_115;
            }

LABEL_124:
            v110 = 0;
            v1 = (v9 & 0xC000000000000001);
            v190 = v9 & 0xFFFFFFFFFFFFFF8;
            v185 = v9 & 0xC000000000000001;
            v187 = v9;
LABEL_127:
            if (v1)
            {
              v111 = MEMORY[0x26D686B00](v110, v9);
            }

            else
            {
              if (v110 >= *(v190 + 16))
              {
                goto LABEL_162;
              }

              v111 = *(v9 + 8 * v110 + 32);
            }

            v112 = v111;
            v113 = v110 + 1;
            if (__OFADD__(v110, 1))
            {
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              v103 = sub_26B9ACB44();
              v182 = v9;
              if (!v103)
              {
                break;
              }

              goto LABEL_114;
            }

            if (v102[2])
            {
              v114 = sub_26B94587C(v111);
              if (v115)
              {
                v116 = *(v102[7] + 8 * v114);
                v1 = (v116 + 1);
                if (__OFADD__(v116, 1))
                {
                  goto LABEL_164;
                }

                v9 = v109;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v192 = v102;
                v118 = sub_26B94587C(v112);
                v119 = v102[2];
                v120 = (v117 & 1) == 0;
                v121 = v119 + v120;
                if (__OFADD__(v119, v120))
                {
                  goto LABEL_165;
                }

                v122 = v117;
                if (v102[3] >= v121)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    if ((v117 & 1) == 0)
                    {
                      goto LABEL_139;
                    }
                  }

                  else
                  {
                    sub_26B946780();
                    v102 = v192;
                    if ((v122 & 1) == 0)
                    {
                      goto LABEL_139;
                    }
                  }
                }

                else
                {
                  sub_26B946448(v121, isUniquelyReferenced_nonNull_native);
                  v102 = v192;
                  v123 = sub_26B94587C(v112);
                  if ((v122 & 1) != (v124 & 1))
                  {
                    goto LABEL_226;
                  }

                  v118 = v123;
                  if ((v122 & 1) == 0)
                  {
LABEL_139:
                    v102[(v118 >> 6) + 8] |= 1 << v118;
                    *(v102[6] + 8 * v118) = v112;
                    *(v102[7] + 8 * v118) = v1;
                    v125 = v102[2];
                    v106 = __OFADD__(v125, 1);
                    v126 = v125 + 1;
                    if (v106)
                    {
                      goto LABEL_166;
                    }

                    v102[2] = v126;
LABEL_152:
                    v109 = v9;
                    v1 = v185;
                    v9 = v187;
LABEL_126:
                    ++v110;
                    if (v113 == v109)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_127;
                  }
                }

                *(v102[7] + 8 * v118) = v1;

                goto LABEL_152;
              }
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v192 = v102;
            v127 = sub_26B94587C(v112);
            v129 = v102[2];
            v130 = (v128 & 1) == 0;
            v106 = __OFADD__(v129, v130);
            v131 = v129 + v130;
            if (v106)
            {
              goto LABEL_161;
            }

            v132 = v128;
            if (v102[3] >= v131)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_146;
              }

              isUniquelyReferenced_nonNull_native = v127;
              sub_26B946780();
              v127 = isUniquelyReferenced_nonNull_native;
              v102 = v192;
              if ((v132 & 1) == 0)
              {
LABEL_147:
                v102[(v127 >> 6) + 8] |= 1 << v127;
                *(v102[6] + 8 * v127) = v112;
                *(v102[7] + 8 * v127) = 1;
                v134 = v102[2];
                v106 = __OFADD__(v134, 1);
                v135 = v134 + 1;
                if (v106)
                {
                  goto LABEL_163;
                }

                v102[2] = v135;
                goto LABEL_126;
              }
            }

            else
            {
              sub_26B946448(v131, isUniquelyReferenced_nonNull_native);
              v102 = v192;
              v127 = sub_26B94587C(v112);
              if ((v132 & 1) != (v133 & 1))
              {
                goto LABEL_226;
              }

LABEL_146:
              if ((v132 & 1) == 0)
              {
                goto LABEL_147;
              }
            }

            *(v102[7] + 8 * v127) = 1;

            goto LABEL_126;
          }
        }

        v109 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v183 = v105;
        v184 = isUniquelyReferenced_nonNull_native;
        if (v109)
        {
          goto LABEL_124;
        }

LABEL_115:

        isUniquelyReferenced_nonNull_native = v184;
        v9 = v182;
      }

      while (v184 != v178);
    }

    v1 = v102 + 8;
    v136 = 1 << *(v102 + 32);
    v137 = -1;
    if (v136 < 64)
    {
      v137 = ~(-1 << v136);
    }

    v138 = v137 & v102[8];
    v139 = (v136 + 63) >> 6;

    v140 = 0;
    v141 = MEMORY[0x277D84F90];
    v142 = MEMORY[0x277D84F90];
    while (v138)
    {
      v143 = v138;
LABEL_179:
      v138 = (v143 - 1) & v143;
      if (v102[2])
      {
        isUniquelyReferenced_nonNull_native = *(v102[6] + ((v140 << 9) | (8 * __clz(__rbit64(v143)))));
        v145 = sub_26B94587C(isUniquelyReferenced_nonNull_native);
        if (v146)
        {
          v191 = *(v102[7] + 8 * v145);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v142 = sub_26B94564C(0, v142[2] + 1, 1, v142);
          }

          v148 = v142[2];
          v147 = v142[3];
          if (v148 >= v147 >> 1)
          {
            v142 = sub_26B94564C((v147 > 1), v148 + 1, 1, v142);
          }

          v142[2] = v148 + 1;
          v149 = &v142[2 * v148];
          v149[4] = isUniquelyReferenced_nonNull_native;
          v149[5] = v191;
          v9 = v182;
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v144 = v140 + 1;
      if (__OFADD__(v140, 1))
      {
        __break(1u);
        goto LABEL_208;
      }

      if (v144 >= v139)
      {
        break;
      }

      v143 = v1[v144];
      ++v140;
      if (v143)
      {
        v140 = v144;
        goto LABEL_179;
      }
    }

    v192 = v142;

    v1 = 0;
    sub_26B9458C0(&v192);

    v150 = v192;
    v151 = v192[2];
    if (v151)
    {
      v192 = v141;
      sub_26B9AAAE4();
      sub_26B9ACC94();
      v152 = 4;
      do
      {
        v1 = v150[v152];
        sub_26B9ACC64();
        v153 = v192[2];
        sub_26B9ACCA4();
        sub_26B9ACCB4();
        sub_26B9ACC74();
        v152 += 2;
        --v151;
      }

      while (v151);

      isUniquelyReferenced_nonNull_native = v192;
    }

    else
    {

      isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
    }

    v142 = (isUniquelyReferenced_nonNull_native >> 62);
    if (!(isUniquelyReferenced_nonNull_native >> 62))
    {
      if (*((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10) > 5uLL)
      {
        goto LABEL_194;
      }

LABEL_212:

LABEL_213:
      v8 = v180;
      v163 = *(v180 + 216);

      v164 = *(*v163 + 224);

      v164(v165);
      goto LABEL_214;
    }

LABEL_208:
    if (sub_26B9ACB44() <= 5)
    {
      goto LABEL_212;
    }

    if ((sub_26B9ACB44() & 0x8000000000000000) == 0)
    {
      v9 = v182;
      if (sub_26B9ACB44() < 5)
      {
        __break(1u);
        goto LABEL_212;
      }

LABEL_194:
      if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) != 0)
      {
        sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);

        sub_26B9ACC14();
        sub_26B9ACC14();
        sub_26B9ACC14();
        sub_26B9ACC14();
        sub_26B9ACC14();
      }

      else
      {
      }

      if (v142)
      {
        v154 = sub_26B9ACD54();
        v155 = v157;
        v142 = v158;
        v156 = v159;

        if ((v156 & 1) == 0)
        {
LABEL_200:
          sub_26B945A1C(v154, v155, v142, v156, &qword_2804263D0, 0x277D65918);
          isUniquelyReferenced_nonNull_native = v160;

          swift_unknownObjectRelease();
          goto LABEL_213;
        }
      }

      else
      {
        v154 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        v155 = (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 32;
        v156 = 11;
      }

      sub_26B9ACED4();
      swift_unknownObjectRetain_n();
      v161 = swift_dynamicCastClass();
      if (!v161)
      {
        swift_unknownObjectRelease();
        v161 = MEMORY[0x277D84F90];
      }

      v162 = *(v161 + 16);

      if (__OFSUB__(v156 >> 1, v142))
      {
        __break(1u);
      }

      else if (v162 == (v156 >> 1) - v142)
      {
        isUniquelyReferenced_nonNull_native = swift_dynamicCastClass();

        swift_unknownObjectRelease_n();
        if (!isUniquelyReferenced_nonNull_native)
        {
          swift_unknownObjectRelease();
          isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
        }

        goto LABEL_213;
      }

      swift_unknownObjectRelease_n();
      goto LABEL_200;
    }

    __break(1u);
LABEL_226:
    sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);
    sub_26B9ACF24();
    __break(1u);
LABEL_227:
    __break(1u);

    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = v6;
  v8 = sub_26B9ACB44();
  LOBYTE(v6) = isUniquelyReferenced_nonNull_native;
  if (!v8)
  {
    goto LABEL_84;
  }

LABEL_6:
  if (v8 < 1)
  {
    __break(1u);
LABEL_86:
    if (v7 >= sub_26B9ACB44())
    {
LABEL_91:
      v8 = v180;
      v9 = v181;
      v26 = v3;
      v66 = v186;
      goto LABEL_68;
    }

    if (sub_26B9ACB44() < 0)
    {
      goto LABEL_227;
    }

    v9 = v181;
    v66 = v186;
    if (sub_26B9ACB44() >= v7)
    {
      goto LABEL_39;
    }

    goto LABEL_89;
  }

  v188 = v6;
  v3 = 0;
  v9 = 0;
  for (isUniquelyReferenced_nonNull_native = 0; isUniquelyReferenced_nonNull_native != v8; ++isUniquelyReferenced_nonNull_native)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D686B00](isUniquelyReferenced_nonNull_native, v5);
    }

    else
    {
      v10 = *(v5 + 8 * isUniquelyReferenced_nonNull_native + 32);
    }

    v11 = v10;
    v12 = [v10 categoryID];
    if (v12 == 2)
    {

      v3 = v11;
    }

    else if (v12 == 1)
    {

      v9 = v11;
    }

    else
    {
    }
  }

  v13 = MEMORY[0x277D84F90];
  v193 = MEMORY[0x277D84F90];
  v194 = MEMORY[0x277D84F90];
  v181 = v9;
  if (!v9)
  {
    v8 = v180;
    v25 = *(v180 + 264);
LABEL_23:
    v176 = v13;
    goto LABEL_24;
  }

  v14 = v9;
  v15 = [v14 documentURLs];
  v16 = sub_26B9AB104();
  isUniquelyReferenced_nonNull_native = sub_26B9AC6F4();

  v17 = *(isUniquelyReferenced_nonNull_native + 16);

  if (!v17)
  {

    v8 = v180;
    v25 = *(v180 + 264);
    v13 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v18 = *(v180 + 264);
  v19 = [v14 documentURLs];
  v20 = sub_26B9AC6F4();

  v21 = sub_26B93EE1C(v20);
  v174 = v18;
  if (v18)
  {
    v22 = *(v180 + 272);
    v23 = *(v180 + 280);

    v24 = v180;
    goto LABEL_28;
  }

  isUniquelyReferenced_nonNull_native = v21;

  sub_26B9450D4(v57);
  v58 = [v14 documentURLs];
  v59 = sub_26B9AC6F4();

  v60 = *(v59 + 16);

  v186 = v14;
  v1 = [v14 documentURLs];
  v61 = sub_26B9AC6F4();

  if (v7 < v60)
  {
    v62 = *(v61 + 16);
    if (v62 < v7)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (v62 != v7)
    {
      sub_26B945B18(v61, v61 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)), 0, (2 * v7) | 1);
      v64 = v63;

      v61 = v64;
    }
  }

  (*(**(v180 + 216) + 176))(v61);
  v8 = isUniquelyReferenced_nonNull_native >> 62;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_86;
  }

  v65 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  v66 = v14;
  if (v7 >= v65)
  {
    v8 = v180;
    v26 = v3;
    goto LABEL_68;
  }

  if (v65 < v7)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_39:

  if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) != 0)
  {
    sub_26B9294B8(0, &qword_2804266B8, 0x277D65850);
    sub_26B9ACC14();
    sub_26B9ACC14();
    sub_26B9ACC14();
    sub_26B9ACC14();
    sub_26B9ACC14();
    if (v188)
    {
      sub_26B9ACC14();
      sub_26B9ACC14();
    }
  }

  if (v8)
  {
    v67 = sub_26B9ACD54();
    v1 = v78;
    v8 = v79;
    v68 = v80;

    if ((v68 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v67 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v1 = ((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 32);
    v68 = (2 * v7) | 1;
  }

  sub_26B9ACED4();
  swift_unknownObjectRetain_n();
  v82 = swift_dynamicCastClass();
  if (!v82)
  {
    swift_unknownObjectRelease();
    v82 = MEMORY[0x277D84F90];
  }

  v83 = *(v82 + 16);

  if (__OFSUB__(v68 >> 1, v8))
  {
    goto LABEL_221;
  }

  if (v83 != (v68 >> 1) - v8)
  {
    goto LABEL_222;
  }

  isUniquelyReferenced_nonNull_native = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v8 = v180;
  v26 = v3;
  v66 = v186;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_68;
  }

  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
  while (1)
  {
    swift_unknownObjectRelease();
LABEL_68:
    if (*(v8 + 300) == 2)
    {

      v25 = 0;
      v176 = MEMORY[0x277D84F90];
      if (v26)
      {
        goto LABEL_25;
      }

      goto LABEL_109;
    }

    if (qword_28042CDF0 != -1)
    {
      swift_once();
    }

    if (qword_28042CDF8 != -1)
    {
      swift_once();
    }

    v68 = qword_280433D98;
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
      v67 = sub_26B9ACB44();
      if (!v67)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v67 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v67)
      {
        goto LABEL_93;
      }
    }

    if (v67 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    swift_unknownObjectRelease_n();
    v66 = v186;
LABEL_60:
    sub_26B945A1C(v67, v1, v8, v68, &qword_2804266B8, 0x277D65850);
    isUniquelyReferenced_nonNull_native = v81;
    v8 = v180;
    v26 = v3;
  }

  v84 = 0;
  do
  {
    if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) != 0)
    {
      v85 = MEMORY[0x26D686B00](v84, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v85 = *(isUniquelyReferenced_nonNull_native + 8 * v84 + 32);
    }

    ++v84;
    v86 = v85;
    v87 = sub_26B9AC4C4();
    [v86 setSectionBundleIdentifier_];

    v9 = v181;
  }

  while (v67 != v84);
LABEL_93:
  *(v180 + 298) = 0;
  sub_26B93D0F4();
  sub_26B9AC684();
  sub_26B9AC684();
  if (*(v180 + 192) == *(v180 + 200))
  {
    v89 = 0;
  }

  else
  {
    v89 = 3;
  }

  sub_26B9294B8(0, &qword_2804266B0, 0x277D65908);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v91 = sub_26B9AC4C4();
  v92 = sub_26B9AC4C4();
  sub_26B9294B8(0, &qword_2804266B8, 0x277D65850);
  v93 = sub_26B9AC6E4();

  v94 = [ObjCClassFromMetadata sectionWithTitle:v91 identifier:v92 style:v89 results:v93];

  if (v94)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_26B9B1290;
    *(v95 + 32) = v94;

    v25 = 0;
    v176 = v95;
    v193 = v95;
  }

  else
  {

    v25 = 0;
    v176 = MEMORY[0x277D84F90];
  }

  v8 = v180;
LABEL_24:
  v26 = v3;
  if (!v3)
  {
LABEL_109:
    v88 = v194;
    goto LABEL_110;
  }

LABEL_25:
  v27 = v26;
  v28 = [v27 documentURLs];
  sub_26B9AB104();
  isUniquelyReferenced_nonNull_native = sub_26B9AC6F4();

  v29 = *(isUniquelyReferenced_nonNull_native + 16);

  if (!v29)
  {

    goto LABEL_109;
  }

  v30 = *(v8 + 216);
  v31 = [v27 documentURLs];
  v32 = v27;
  v33 = v8;
  v34 = sub_26B9AC6F4();

  (*(*v30 + 200))(v34);
  v35 = [v32 documentURLs];
  v36 = sub_26B9AC6F4();

  v37 = sub_26B93EE1C(v36);
  v174 = v25;
  if (!v25)
  {
    isUniquelyReferenced_nonNull_native = v37;
    v189 = v32;
    v69 = *(v33 + 300);

    v71 = sub_26B9450D4(v70);
    if (v69 == 2)
    {
      v8 = v33;

LABEL_108:
      v26 = v3;
      goto LABEL_109;
    }

    if (qword_28042CE00 != -1)
    {
      v71 = swift_once();
    }

    v72 = unk_280433DB0;
    if (qword_28042CE08 != -1)
    {
      v71 = swift_once();
    }

    v26 = qword_280433DB8;
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
      v71 = sub_26B9ACB44();
      v73 = v71;
      if (!v71)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v73 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v73)
      {
        goto LABEL_101;
      }
    }

    if (v73 < 1)
    {
      __break(1u);
LABEL_224:
      isUniquelyReferenced_nonNull_native = v71;
      sub_26B9AC734();
LABEL_106:
      sub_26B9AC774();

      v176 = v193;
      v8 = v180;
      goto LABEL_109;
    }

    v74 = 0;
    do
    {
      if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) != 0)
      {
        v75 = MEMORY[0x26D686B00](v74, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v75 = *(isUniquelyReferenced_nonNull_native + 8 * v74 + 32);
      }

      ++v74;
      v76 = v75;
      v77 = sub_26B9AC4C4();
      [v76 setSectionBundleIdentifier_];

      v9 = v181;
    }

    while (v73 != v74);
LABEL_101:
    *(v180 + 296) = *(v180 + 300) & 1;
    sub_26B93D0F4();
    sub_26B9AC684();
    sub_26B9AC684();
    if (*(v180 + 176) == *(v180 + 184))
    {
      v96 = 0;
    }

    else
    {
      v96 = 3;
    }

    sub_26B9294B8(0, &qword_2804266B0, 0x277D65908);
    v97 = swift_getObjCClassFromMetadata();
    v98 = sub_26B9AC4C4();
    v99 = sub_26B9AC4C4();
    sub_26B9294B8(0, &qword_2804266B8, 0x277D65850);
    v100 = sub_26B9AC6E4();

    v101 = [v97 sectionWithTitle:v98 identifier:v99 style:v96 results:v100];

    if (!v101)
    {

      v8 = v180;
      goto LABEL_108;
    }

    v72 = v101;
    MEMORY[0x26D6865A0]();
    v71 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v3;
    v25 = v189;
    if (v71 < *((v193 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_106;
    }

    goto LABEL_224;
  }

  v38 = *(v33 + 272);
  v39 = *(v33 + 280);

  v24 = v33;
LABEL_28:
  v40 = v24[29];
  v41 = v24[30];
  v42 = v24[28];
  v43 = sub_26B9A7568();
  (*(v40 + 16))(v41, v43, v42);
  v44 = v174;
  v45 = sub_26B9AB564();
  v46 = sub_26B9AC934();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    v49 = v174;
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v47 + 4) = v50;
    *v48 = v50;
    _os_log_impl(&dword_26B8E8000, v45, v46, "Unable to retrieve suggested files for ZKW from ATXSpotlightClient: %@", v47, 0xCu);
    sub_26B9422F4(v48);
    MEMORY[0x26D6879F0](v48, -1, -1);
    MEMORY[0x26D6879F0](v47, -1, -1);
  }

  v51 = v24[30];
  v52 = v24[31];
  v53 = *(v180 + 232);
  v54 = *(v180 + 224);
  v55 = *(v180 + 208);

  (*(v53 + 8))(v51, v54);
  v8 = v180;
  v56 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(MEMORY[0x277D84F90], v52, 1, 1, 0, v56 & 1, v55);

LABEL_215:
  v171 = *(v8 + 240);

  v172 = *(v8 + 8);

  return v172();
}

uint64_t sub_26B944E08()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[32];

  swift_willThrow();

  v5 = v0[36];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  v9 = sub_26B9A7568();
  (*(v7 + 16))(v6, v9, v8);
  v10 = v5;
  v11 = sub_26B9AB564();
  v12 = sub_26B9AC934();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v5;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_26B8E8000, v11, v12, "Unable to retrieve suggested files for ZKW from ATXSpotlightClient: %@", v13, 0xCu);
    sub_26B9422F4(v14);
    MEMORY[0x26D6879F0](v14, -1, -1);
    MEMORY[0x26D6879F0](v13, -1, -1);
  }

  v18 = v0[30];
  v17 = v0[31];
  v19 = v0[28];
  v20 = v0[29];
  v21 = v0[26];

  (*(v20 + 8))(v18, v19);
  v22 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(MEMORY[0x277D84F90], v17, 1, 1, 0, v22 & 1, v21);

  v23 = v0[30];

  v24 = v0[1];

  return v24();
}

uint64_t sub_26B944FE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426530, &unk_26B9B1CA0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_26B9294B8(0, &qword_2804266F8, 0x277CEB4D8);
    **(*(v4 + 64) + 40) = sub_26B9AC6F4();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_26B9450D4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26B9ACB44();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_26B9ACB44();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_26B928DFC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26B946E58(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_26B9451C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v8 = *a6;
  result = sub_26B93EE1C(a1);
  if (v7)
  {
    return v6;
  }

  v10 = result;
  if (!(result >> 62))
  {
    v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_26B93D0F4();
    sub_26B9AC684();
    sub_26B9AC684();
    if (v22 == v21)
    {
      v16 = 0;
    }

    else
    {
      v16 = 3;
    }

    sub_26B9294B8(0, &qword_2804266B0, 0x277D65908);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = sub_26B9AC4C4();
    v19 = sub_26B9AC4C4();
    sub_26B9294B8(0, &qword_2804266B8, 0x277D65850);
    v20 = sub_26B9AC6E4();

    v6 = [ObjCClassFromMetadata sectionWithTitle:v18 identifier:v19 style:v16 results:v20];

    return v6;
  }

  result = sub_26B9ACB44();
  v11 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v11 >= 1)
  {
    v12 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x26D686B00](v12, v10);
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      ++v12;
      v14 = v13;
      v15 = sub_26B9AC4C4();
      [v14 setSectionBundleIdentifier_];
    }

    while (v11 != v12);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B9453F4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t sub_26B94542C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v10 = *(**v4 + 112);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EB6C8;

  return v14(v9, a2, a3, a4);
}

id sub_26B945570()
{
  v7[1] = *MEMORY[0x277D85DE8];
  sub_26B9AB414();
  v1 = sub_26B9AC6E4();

  v7[0] = 0;
  v2 = [v0 initWithUTTypes:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_26B9AAFE4();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

void *sub_26B94564C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266F0, &unk_26B9B2818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266E8, &qword_26B9B2808);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26B945780(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426130, qword_26B9B0298);
  v4 = *(sub_26B9AB414() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26B94587C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_26B9AC9B4();

  return sub_26B9466AC(a1, v5);
}

uint64_t sub_26B9458C0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26B946FE8(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_26B9ACE64();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266E8, &qword_26B9B2808);
      v7 = sub_26B9AC754();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26B945CB8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_26B945A1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        sub_26B9294B8(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_26B945B18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266C8, &qword_26B9B27F0);
      v7 = *(sub_26B9AB104() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_26B9AB104() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_26B945CB8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_26B932B28(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_26B946244((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26B93088C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_26B93088C((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_26B946244((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}