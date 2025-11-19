unsigned int *sub_26B978018(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

unint64_t sub_26B97819C()
{
  result = qword_2804265C0;
  if (!qword_2804265C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804265C0);
  }

  return result;
}

unint64_t sub_26B9781E8()
{
  result = qword_280426D80;
  if (!qword_280426D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426D80);
  }

  return result;
}

uint64_t sub_26B978274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26B9782E4()
{
  result = qword_280426B78;
  if (!qword_280426B78)
  {
    sub_26B9ABE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426B78);
  }

  return result;
}

uint64_t sub_26B97833C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 ParameterQuery.platterBehavior.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26B92CEE8();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26B97837C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426258, &qword_26B9B0920);
  return Dependency.wrappedValue.getter(a1);
}

uint64_t ToolKitQueryDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  Dependency.init(_:)(KeyPath, (v0 + 16));
  return v0;
}

uint64_t ToolKitQueryDataSource.init()()
{
  KeyPath = swift_getKeyPath();
  Dependency.init(_:)(KeyPath, (v0 + 16));
  return v0;
}

uint64_t sub_26B97845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[46] = a4;
  v5[47] = v4;
  v5[44] = a1;
  v5[45] = a3;
  v5[48] = *(a2 + 24);
  v6 = sub_26B92A538();
  swift_beginAccess();
  v7 = *v6;
  v5[49] = v7;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B9784F8, v7, 0);
}

uint64_t sub_26B9784F8()
{
  (*(**(v0 + 376) + 96))();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = *(v2 + 16);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 400) = v5;
  *v5 = v0;
  v5[1] = sub_26B978648;

  return v7(v1, v2);
}

uint64_t sub_26B978648(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v7 = *(*v3 + 400);
  v8 = *v3;
  v6[51] = a1;
  v6[52] = v2;

  v9 = v5[49];
  if (v2)
  {
    v10 = sub_26B979370;
  }

  else
  {
    v6[53] = a2;
    v10 = sub_26B97878C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_26B97878C()
{
  v1 = v0[47];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = *(*v1 + 128);
  v10 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[54] = v4;
  *v4 = v0;
  v4[1] = sub_26B9788BC;
  v5 = v0[53];
  v6 = v0[51];
  v7 = v0[47];
  v8 = v0[44];

  return v10(v8, v6, v5);
}

uint64_t sub_26B9788BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  *(v4 + 440) = a1;
  *(v4 + 448) = v1;

  v7 = *(v3 + 392);
  if (v1)
  {
    v8 = sub_26B979560;
  }

  else
  {
    v8 = sub_26B9789F0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26B9789F0()
{
  v1 = *(v0 + 440);
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26B9ACB44())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = *(v0 + 440) + 32;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x26D686B00](v3, *(v0 + 440));
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_12;
        }

        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      (*(**(v0 + 376) + 104))();
      v1 = v10;
      v11 = sub_26B9AC4C4();

      [v8 setSectionBundleIdentifier_];

      ++v3;
      if (v9 == i)
      {
        v12 = *(v0 + 440);
        v13 = *(v0 + 376);
        v14 = *(v0 + 384);
        v15 = *(v0 + 360);
        v16 = [objc_allocWithZone(MEMORY[0x277D65848]) init];
        *(v0 + 456) = v16;
        v17 = v16;
        v18 = sub_26B9AC4C4();
        [v17 setTitle_];

        (*(*v13 + 104))();
        v19 = sub_26B9AC4C4();

        [v17 setIdentifier_];

        sub_26B979750();
        v20 = sub_26B9AC6E4();

        [v17 setResults_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_26B9B1290;
        *(v21 + 32) = v17;
        v22 = sub_26B906128();
        SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v21, v14, 1, 1, 0, v22 & 1, v0 + 136);
        v23 = *(v0 + 144);
        v24 = *(v0 + 152);
        v25 = *(v0 + 153);
        v26 = *(v0 + 160);
        v27 = *(v0 + 168);
        *(v0 + 176) = *(v0 + 136);
        *(v0 + 184) = v23;
        *(v0 + 192) = v24;
        *(v0 + 193) = v25;
        *(v0 + 200) = v26;
        *(v0 + 208) = v27;
        v44 = (v15 + *v15);
        v28 = v15[1];
        v29 = swift_task_alloc();
        *(v0 + 464) = v29;
        *v29 = v0;
        v29[1] = sub_26B978E34;
        v30 = *(v0 + 368);
        v31 = v0 + 176;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v32 = *(v0 + 440);
  v33 = *(v0 + 384);
  v34 = *(v0 + 360);

  static SearchResults.empty(queryID:)(v33, v0 + 216);
  v35 = *(v0 + 224);
  v36 = *(v0 + 232);
  v37 = *(v0 + 233);
  v38 = *(v0 + 240);
  v39 = *(v0 + 248);
  *(v0 + 256) = *(v0 + 216);
  *(v0 + 264) = v35;
  *(v0 + 272) = v36;
  *(v0 + 273) = v37;
  *(v0 + 280) = v38;
  *(v0 + 288) = v39;
  v44 = (v34 + *v34);
  v40 = v34[1];
  v41 = swift_task_alloc();
  *(v0 + 472) = v41;
  *v41 = v0;
  v41[1] = sub_26B978FF8;
  v42 = *(v0 + 368);
  v31 = v0 + 256;
LABEL_15:

  return v44(v31);
}

uint64_t sub_26B978E34()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 392);
  v7 = *v0;

  v4 = *(v1 + 176);
  v5 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_26B978F84, v3, 0);
}

uint64_t sub_26B978F84()
{
  v1 = v0[57];
  v2 = v0[51];
  v3 = v0[49];

  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

uint64_t sub_26B978FF8()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v3 = *(*v0 + 392);
  v7 = *v0;

  v4 = *(v1 + 256);
  v5 = *(v1 + 280);

  return MEMORY[0x2822009F8](sub_26B979148, v3, 0);
}

uint64_t sub_26B979148()
{
  v1 = v0[51];
  v2 = v0[49];

  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_26B9791B4()
{
  v1 = *v0;
  v2 = *(*v0 + 488);
  v3 = *(*v0 + 392);
  v7 = *v0;

  v4 = *(v1 + 96);
  v5 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_26B979304, v3, 0);
}

uint64_t sub_26B979304()
{
  v1 = v0[60];
  v2 = v0[49];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B979370()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 480) = *(v0 + 416);
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DC0, &qword_26B9B52A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26B9AF300;
  swift_getErrorValue();
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);
  *(v3 + 56) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v4, v5);
  sub_26B9ACFA4();

  static SearchResults.empty(queryID:)(v1, v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 73);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  *(v0 + 96) = *(v0 + 56);
  *(v0 + 104) = v7;
  *(v0 + 112) = v8;
  *(v0 + 113) = v9;
  *(v0 + 120) = v10;
  *(v0 + 128) = v11;
  v16 = (v2 + *v2);
  v12 = v2[1];
  v13 = swift_task_alloc();
  *(v0 + 488) = v13;
  *v13 = v0;
  v13[1] = sub_26B9791B4;
  v14 = *(v0 + 368);

  return v16(v0 + 96);
}

uint64_t sub_26B979560()
{
  v1 = *(v0 + 408);
  swift_unknownObjectRelease();
  *(v0 + 480) = *(v0 + 448);
  v2 = *(v0 + 384);
  v3 = *(v0 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DC0, &qword_26B9B52A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26B9AF300;
  swift_getErrorValue();
  v5 = *(v0 + 320);
  v6 = *(v0 + 328);
  *(v4 + 56) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_26B9ACFA4();

  static SearchResults.empty(queryID:)(v2, v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v10 = *(v0 + 73);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  *(v0 + 96) = *(v0 + 56);
  *(v0 + 104) = v8;
  *(v0 + 112) = v9;
  *(v0 + 113) = v10;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  v17 = (v3 + *v3);
  v13 = v3[1];
  v14 = swift_task_alloc();
  *(v0 + 488) = v14;
  *v14 = v0;
  v14[1] = sub_26B9791B4;
  v15 = *(v0 + 368);

  return v17(v0 + 96);
}

unint64_t sub_26B979750()
{
  result = qword_2804263F0;
  if (!qword_2804263F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804263F0);
  }

  return result;
}

uint64_t sub_26B97979C()
{
  sub_26B92A538();
  swift_beginAccess();
  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t ToolKitQueryDataSource.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ToolKitQueryDataSource.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_26B97986C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  *a1 = result;
  return result;
}

uint64_t sub_26B9798A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 120);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EC52C;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_26B9799E8()
{
  v2 = *(**v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EB6C8;

  return v6();
}

uint64_t dispatch thunk of ToolKitQueryDataSource.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 120);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EC52C;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ToolKitQueryDataSource.deactivate()()
{
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EB6C8;

  return v6();
}

uint64_t type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier()
{
  result = qword_28042F9F0;
  if (!qword_28042F9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B979E24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static ToolKitQueryHelper.resolveQuery(for:parameterDefinition:invocation:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  *(v5 + 144) = a1;
  *(v5 + 152) = a4;
  v10 = sub_26B9AB984();
  *(v5 + 160) = v10;
  v11 = *(v10 - 8);
  *(v5 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  v13 = *a5;
  *(v5 + 209) = *a5;
  *(v5 + 184) = sub_26B9AC804();
  *(v5 + 192) = sub_26B9AC7F4();
  *(v5 + 208) = v13;
  v14 = swift_task_alloc();
  *(v5 + 200) = v14;
  *v14 = v5;
  v14[1] = sub_26B979FE0;

  return sub_26B97A2B4(v5 + 16, a2, a3, a4, (v5 + 208));
}

uint64_t sub_26B979FE0()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v7 = *v0;

  v5 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B97A11C, v5, v4);
}

uint64_t sub_26B97A11C()
{
  v14 = v0;
  v1 = *(v0 + 192);

  sub_26B907F08(v0 + 16, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 136);

LABEL_4:
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = *(v0 + 144);
    sub_26B907F08(v0 + 16, v0 + 96);
    (*(v4 + 16))(v3, v6, v5);
    LOBYTE(v5) = sub_26B906128();
    v7[3] = type metadata accessor for RunnableParameterQuery();
    v7[4] = sub_26B97D6B0(&qword_280426DC8, type metadata accessor for RunnableParameterQuery);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
    RunnableParameterQuery.init(parameterQuery:invocation:isStatusRow:statusRow:)((v0 + 96), v3, v5 & 1, 0, boxed_opaque_existential_1);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_6;
  }

  v12 = *(v0 + 209);
  v13 = 0;
  if (static ParameterQueryInvocationKind.== infix(_:_:)(&v12, &v13))
  {
    goto LABEL_4;
  }

  sub_26B8ECB70((v0 + 16), *(v0 + 144));
LABEL_6:
  v9 = *(v0 + 176);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26B97A2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v5 + 480) = a3;
  *(v5 + 488) = a4;
  *(v5 + 464) = a1;
  *(v5 + 472) = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050) - 8) + 64) + 15;
  *(v5 + 496) = swift_task_alloc();
  v8 = sub_26B9AB984();
  *(v5 + 504) = v8;
  v9 = *(v8 - 8);
  *(v5 + 512) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 520) = swift_task_alloc();
  *(v5 + 528) = swift_task_alloc();
  v11 = sub_26B9AC0E4();
  *(v5 + 536) = v11;
  v12 = *(v11 - 8);
  *(v5 + 544) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 552) = swift_task_alloc();
  *(v5 + 560) = swift_task_alloc();
  v14 = sub_26B9ABF24();
  *(v5 + 568) = v14;
  v15 = *(v14 - 8);
  *(v5 + 576) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 584) = swift_task_alloc();
  v17 = sub_26B9ABFD4();
  *(v5 + 592) = v17;
  v18 = *(v17 - 8);
  *(v5 + 600) = v18;
  v19 = *(v18 + 64) + 15;
  *(v5 + 608) = swift_task_alloc();
  v20 = sub_26B9ABFF4();
  *(v5 + 616) = v20;
  v21 = *(v20 - 8);
  *(v5 + 624) = v21;
  v22 = *(v21 + 64) + 15;
  *(v5 + 632) = swift_task_alloc();
  *(v5 + 640) = swift_task_alloc();
  *(v5 + 648) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10) - 8) + 64) + 15;
  *(v5 + 656) = swift_task_alloc();
  v24 = sub_26B9ABEB4();
  *(v5 + 664) = v24;
  v25 = *(v24 - 8);
  *(v5 + 672) = v25;
  v26 = *(v25 + 64) + 15;
  *(v5 + 680) = swift_task_alloc();
  v27 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier();
  *(v5 + 688) = v27;
  v28 = *(v27 - 8);
  *(v5 + 696) = v28;
  v29 = *(v28 + 64) + 15;
  *(v5 + 704) = swift_task_alloc();
  *(v5 + 769) = *a5;
  sub_26B9AC804();
  *(v5 + 712) = sub_26B9AC7F4();
  v31 = sub_26B9AC7C4();
  *(v5 + 720) = v31;
  *(v5 + 728) = v30;

  return MEMORY[0x2822009F8](sub_26B97A684, v31, v30);
}

uint64_t sub_26B97A684()
{
  v109 = v0;
  sub_26B907F08(*(v0 + 472), v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DF0, &qword_26B9B4490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DF8, &qword_26B9B4498);
  if (!swift_dynamicCast())
  {
    v12 = *(v0 + 712);
    v13 = *(v0 + 464);

    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_26B8EACD8(v0 + 96, &qword_280426E00, &qword_26B9B44A0);
    *(v13 + 24) = &type metadata for EmptyQuery;
    *(v13 + 32) = sub_26B903C04();
    EmptyQuery.init()();
LABEL_26:
    v63 = *(v0 + 704);
    v64 = *(v0 + 680);
    v65 = *(v0 + 656);
    v66 = *(v0 + 648);
    v67 = *(v0 + 640);
    v68 = *(v0 + 632);
    v69 = *(v0 + 608);
    v70 = *(v0 + 584);
    v71 = *(v0 + 560);
    v72 = *(v0 + 552);
    v97 = *(v0 + 528);
    v99 = *(v0 + 520);
    v103 = *(v0 + 496);

    v73 = *(v0 + 8);

    return v73();
  }

  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 656);
  v7 = *(v0 + 480);
  v8 = sub_26B8ECB70((v0 + 96), v0 + 16);
  MEMORY[0x26D685FA0](v8);
  sub_26B97BCE4(v6);
  (*(v4 + 8))(v3, v5);
  if ((*(v1 + 48))(v6, 1, v2) == 1)
  {
    v9 = *(v0 + 712);
    v10 = *(v0 + 656);
    v11 = *(v0 + 464);

    sub_26B8EACD8(v10, &qword_2804260F0, &qword_26B9B0D10);
    *(v11 + 24) = &type metadata for EmptyQuery;
    *(v11 + 32) = sub_26B903C04();
    EmptyQuery.init()();
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_26;
  }

  v14 = *(v0 + 704);
  v15 = *(v0 + 688);
  sub_26B9043BC(*(v0 + 656), v14);
  *(v0 + 160) = &type metadata for EmptyQuery;
  *(v0 + 168) = sub_26B903C04();
  EmptyQuery.init()();
  v16 = *(v14 + *(v15 + 20));
  if (*(v16 + 16))
  {
    v17 = *(v0 + 648);
    v18 = *(v0 + 640);
    v19 = *(v0 + 624);
    v20 = *(v0 + 616);
    v21 = *(v19 + 16);
    v21(v17, v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v20);
    v21(v18, v17, v20);
    v22 = (*(v19 + 88))(v18, v20);
    v23 = *(v0 + 640);
    v24 = *(v0 + 624);
    v25 = *(v0 + 616);
    if (v22 == *MEMORY[0x277D72FA0])
    {
      v26 = *(v0 + 608);
      v27 = *(v0 + 600);
      v28 = *(v0 + 592);
      (*(v24 + 96))(*(v0 + 640), v25);
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426950, &qword_26B9B3490) + 48);
      (*(v27 + 32))(v26, v23, v28);
      v30 = sub_26B9ABF64();
      (*(*(v30 - 8) + 8))(v23 + v29, v30);
      sub_26B9ABFC4();
      LOBYTE(v29) = sub_26B9AC5E4();

      (*(v27 + 8))(v26, v28);
      if (v29)
      {
        v101 = *(v0 + 769);
        v96 = *(v0 + 616);
        v98 = *(v0 + 648);
        v31 = *(v0 + 560);
        v32 = *(v0 + 544);
        v33 = *(v0 + 536);
        v94 = *(v0 + 528);
        v95 = *(v0 + 632);
        v35 = *(v0 + 504);
        v34 = *(v0 + 512);
        v37 = *(v0 + 480);
        v36 = *(v0 + 488);
        (*(*(v0 + 576) + 16))(*(v0 + 584), *(v0 + 704), *(v0 + 568));
        (*(v32 + 16))(v31, v37, v33);
        v21(v95, v98, v96);
        (*(v34 + 16))(v94, v36, v35);
        v38 = *(v0 + 40);
        v39 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v38);
        *(v0 + 736) = (*(v39 + 16))(v38, v39);
        *(v0 + 744) = v40;
        v105 = v101;
        v106 = 0;
        *(v0 + 770) = static ParameterQueryInvocationKind.== infix(_:_:)(&v105, &v106);
        v107 = v101;
        v108 = 0;
        if (static ParameterQueryInvocationKind.== infix(_:_:)(&v107, &v108))
        {
          v41 = *(v0 + 472);
          v42 = v41[3];
          v43 = v41[4];
          __swift_project_boxed_opaque_existential_1(v41, v42);
          v44 = *(MEMORY[0x277D7D540] + 4);
          v45 = swift_task_alloc();
          *(v0 + 752) = v45;
          *v45 = v0;
          v45[1] = sub_26B97B0C0;
          v46 = *(v0 + 496);

          return MEMORY[0x2821E5078](v46, v42, v43);
        }

        v81 = *(v0 + 712);
        v82 = *(v0 + 496);

        v83 = sub_26B9ABE84();
        (*(*(v83 - 8) + 56))(v82, 1, 1, v83);
        LOBYTE(v82) = *(v0 + 770);
        v84 = *(v0 + 744);
        v85 = *(v0 + 736);
        v86 = *(v0 + 632);
        v87 = *(v0 + 624);
        v100 = *(v0 + 616);
        v104 = *(v0 + 648);
        v88 = *(v0 + 584);
        v89 = *(v0 + 560);
        v90 = *(v0 + 528);
        v91 = *(v0 + 496);
        *(v0 + 440) = type metadata accessor for AppEntityQuery();
        *(v0 + 448) = sub_26B97D6B0(&qword_280426900, type metadata accessor for AppEntityQuery);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 416));
        AppEntityQuery.init(typeIdentifier:parameterDefinition:restrictionContext:toolInvocation:searchString:showAllCases:selectedValue:)(v88, v89, v86, v90, v85, v84, v82, v91, boxed_opaque_existential_1);
        (*(v87 + 8))(v104, v100);
        __swift_destroy_boxed_opaque_existential_1((v0 + 136));
        sub_26B8ECB70((v0 + 416), v0 + 136);
LABEL_19:
        sub_26B907F08(v0 + 136, v0 + 296);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
        if (!swift_dynamicCast())
        {
          goto LABEL_23;
        }

        v56 = *(v0 + 456);

        v57 = *(v0 + 40);
        v58 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v57);
        v59 = (*(v58 + 16))(v57, v58);
        v61 = v60;

        v62 = HIBYTE(v61) & 0xF;
        if ((v61 & 0x2000000000000000) == 0)
        {
          v62 = v59 & 0xFFFFFFFFFFFFLL;
        }

        if (!v62)
        {
          v74 = *(v0 + 704);
          v75 = *(v0 + 552);
          v76 = *(v0 + 544);
          v77 = *(v0 + 536);
          v78 = *(v0 + 520);
          v79 = *(v0 + 480);
          (*(*(v0 + 512) + 16))(v78, *(v0 + 488), *(v0 + 504));
          (*(v76 + 16))(v75, v79, v77);
          *(v0 + 360) = type metadata accessor for SuggestedParameterQuery();
          *(v0 + 368) = sub_26B97D6B0(&qword_280426E18, type metadata accessor for SuggestedParameterQuery);
          v80 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
          SuggestedParameterQuery.init(toolInvocation:parameterDefinition:)(v78, v75, v80);
          sub_26B904420(v74);
          __swift_destroy_boxed_opaque_existential_1((v0 + 136));
          sub_26B8ECB70((v0 + 336), v0 + 136);
        }

        else
        {
LABEL_23:
          sub_26B904420(*(v0 + 704));
        }

        sub_26B8ECB70((v0 + 136), *(v0 + 464));
        goto LABEL_25;
      }

      (*(*(v0 + 624) + 8))(*(v0 + 648), *(v0 + 616));
    }

    else
    {
      v47 = *(v24 + 8);
      v47(*(v0 + 640), v25);
      v47(*(v0 + 648), *(v0 + 616));
    }
  }

  sub_26B907F08(*(v0 + 472), v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426E08, &qword_26B9B44A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v55 = *(v0 + 712);

    *(v0 + 288) = 0;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    sub_26B8EACD8(v0 + 256, &qword_280426E10, &unk_26B9B44B0);
    goto LABEL_19;
  }

  v48 = *(v0 + 769);
  sub_26B8ECB70((v0 + 256), v0 + 176);
  v49 = *(v0 + 200);
  v50 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v49);
  *(v0 + 768) = v48;
  v51 = *(v50 + 16);
  v102 = (v51 + *v51);
  v52 = v51[1];
  v53 = swift_task_alloc();
  *(v0 + 760) = v53;
  *v53 = v0;
  v53[1] = sub_26B97B558;
  v54 = *(v0 + 488);

  return v102(v0 + 376, v54, v0 + 768, v49, v50);
}

uint64_t sub_26B97B0C0()
{
  v2 = *v1;
  v3 = *(*v1 + 752);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 728);
    v6 = *(v2 + 720);
    v7 = sub_26B97B934;
  }

  else
  {
    v5 = *(v2 + 728);
    v6 = *(v2 + 720);
    v7 = sub_26B97B1EC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26B97B1EC()
{
  v1 = *(v0 + 712);

  v2 = *(v0 + 770);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v39 = *(v0 + 616);
  v41 = *(v0 + 648);
  v7 = *(v0 + 584);
  v8 = *(v0 + 560);
  v9 = *(v0 + 528);
  v10 = *(v0 + 496);
  *(v0 + 440) = type metadata accessor for AppEntityQuery();
  *(v0 + 448) = sub_26B97D6B0(&qword_280426900, type metadata accessor for AppEntityQuery);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 416));
  AppEntityQuery.init(typeIdentifier:parameterDefinition:restrictionContext:toolInvocation:searchString:showAllCases:selectedValue:)(v7, v8, v5, v9, v4, v3, v2, v10, boxed_opaque_existential_1);
  (*(v6 + 8))(v41, v39);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  sub_26B8ECB70((v0 + 416), v0 + 136);
  sub_26B907F08(v0 + 136, v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  v12 = *(v0 + 456);

  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  v15 = (*(v14 + 16))(v13, v14);
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    v31 = *(v0 + 704);
    v32 = *(v0 + 552);
    v33 = *(v0 + 544);
    v34 = *(v0 + 536);
    v35 = *(v0 + 520);
    v36 = *(v0 + 480);
    (*(*(v0 + 512) + 16))(v35, *(v0 + 488), *(v0 + 504));
    (*(v33 + 16))(v32, v36, v34);
    *(v0 + 360) = type metadata accessor for SuggestedParameterQuery();
    *(v0 + 368) = sub_26B97D6B0(&qword_280426E18, type metadata accessor for SuggestedParameterQuery);
    v37 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
    SuggestedParameterQuery.init(toolInvocation:parameterDefinition:)(v35, v32, v37);
    sub_26B904420(v31);
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    sub_26B8ECB70((v0 + 336), v0 + 136);
  }

  else
  {
LABEL_5:
    sub_26B904420(*(v0 + 704));
  }

  sub_26B8ECB70((v0 + 136), *(v0 + 464));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v19 = *(v0 + 704);
  v20 = *(v0 + 680);
  v21 = *(v0 + 656);
  v22 = *(v0 + 648);
  v23 = *(v0 + 640);
  v24 = *(v0 + 632);
  v25 = *(v0 + 608);
  v26 = *(v0 + 584);
  v27 = *(v0 + 560);
  v28 = *(v0 + 552);
  v38 = *(v0 + 528);
  v40 = *(v0 + 520);
  v42 = *(v0 + 496);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_26B97B558()
{
  v1 = *v0;
  v2 = *(*v0 + 760);
  v6 = *v0;

  v3 = *(v1 + 728);
  v4 = *(v1 + 720);

  return MEMORY[0x2822009F8](sub_26B97B678, v4, v3);
}

uint64_t sub_26B97B678()
{
  v1 = *(v0 + 712);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  sub_26B8ECB70((v0 + 376), v0 + 136);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  sub_26B907F08(v0 + 136, v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  v2 = *(v0 + 456);

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    v21 = *(v0 + 704);
    v22 = *(v0 + 552);
    v23 = *(v0 + 544);
    v24 = *(v0 + 536);
    v25 = *(v0 + 520);
    v26 = *(v0 + 480);
    (*(*(v0 + 512) + 16))(v25, *(v0 + 488), *(v0 + 504));
    (*(v23 + 16))(v22, v26, v24);
    *(v0 + 360) = type metadata accessor for SuggestedParameterQuery();
    *(v0 + 368) = sub_26B97D6B0(&qword_280426E18, type metadata accessor for SuggestedParameterQuery);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
    SuggestedParameterQuery.init(toolInvocation:parameterDefinition:)(v25, v22, boxed_opaque_existential_1);
    sub_26B904420(v21);
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    sub_26B8ECB70((v0 + 336), v0 + 136);
  }

  else
  {
LABEL_5:
    sub_26B904420(*(v0 + 704));
  }

  sub_26B8ECB70((v0 + 136), *(v0 + 464));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v9 = *(v0 + 704);
  v10 = *(v0 + 680);
  v11 = *(v0 + 656);
  v12 = *(v0 + 648);
  v13 = *(v0 + 640);
  v14 = *(v0 + 632);
  v15 = *(v0 + 608);
  v16 = *(v0 + 584);
  v17 = *(v0 + 560);
  v18 = *(v0 + 552);
  v28 = *(v0 + 528);
  v29 = *(v0 + 520);
  v30 = *(v0 + 496);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_26B97B934()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 496);

  v3 = sub_26B9ABE84();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  LOBYTE(v2) = *(v0 + 770);
  v4 = *(v0 + 744);
  v5 = *(v0 + 736);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v40 = *(v0 + 616);
  v42 = *(v0 + 648);
  v8 = *(v0 + 584);
  v9 = *(v0 + 560);
  v10 = *(v0 + 528);
  v11 = *(v0 + 496);
  *(v0 + 440) = type metadata accessor for AppEntityQuery();
  *(v0 + 448) = sub_26B97D6B0(&qword_280426900, type metadata accessor for AppEntityQuery);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 416));
  AppEntityQuery.init(typeIdentifier:parameterDefinition:restrictionContext:toolInvocation:searchString:showAllCases:selectedValue:)(v8, v9, v6, v10, v5, v4, v2, v11, boxed_opaque_existential_1);
  (*(v7 + 8))(v42, v40);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  sub_26B8ECB70((v0 + 416), v0 + 136);
  sub_26B907F08(v0 + 136, v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  v13 = *(v0 + 456);

  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
  v16 = (*(v15 + 16))(v14, v15);
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    v32 = *(v0 + 704);
    v33 = *(v0 + 552);
    v34 = *(v0 + 544);
    v35 = *(v0 + 536);
    v36 = *(v0 + 520);
    v37 = *(v0 + 480);
    (*(*(v0 + 512) + 16))(v36, *(v0 + 488), *(v0 + 504));
    (*(v34 + 16))(v33, v37, v35);
    *(v0 + 360) = type metadata accessor for SuggestedParameterQuery();
    *(v0 + 368) = sub_26B97D6B0(&qword_280426E18, type metadata accessor for SuggestedParameterQuery);
    v38 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
    SuggestedParameterQuery.init(toolInvocation:parameterDefinition:)(v36, v33, v38);
    sub_26B904420(v32);
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    sub_26B8ECB70((v0 + 336), v0 + 136);
  }

  else
  {
LABEL_5:
    sub_26B904420(*(v0 + 704));
  }

  sub_26B8ECB70((v0 + 136), *(v0 + 464));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v20 = *(v0 + 704);
  v21 = *(v0 + 680);
  v22 = *(v0 + 656);
  v23 = *(v0 + 648);
  v24 = *(v0 + 640);
  v25 = *(v0 + 632);
  v26 = *(v0 + 608);
  v27 = *(v0 + 584);
  v28 = *(v0 + 560);
  v29 = *(v0 + 552);
  v39 = *(v0 + 528);
  v41 = *(v0 + 520);
  v43 = *(v0 + 496);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_26B97BCE4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26B9ABF24();
  v106 = *(v2 - 8);
  v107 = v2;
  v3 = *(v106 + 64);
  MEMORY[0x28223BE20](v2);
  v105 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v101 = &v95 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v104 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v100 = &v95 - v13;
  MEMORY[0x28223BE20](v12);
  v103 = &v95 - v14;
  v15 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v96 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v98 = &v95 - v21;
  MEMORY[0x28223BE20](v20);
  v99 = &v95 - v22;
  v23 = sub_26B9ABEB4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v102 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v95 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v95 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v95 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = (&v95 - v37);
  v39 = v108;
  v108 = *(v24 + 16);
  v108(&v95 - v37, v39, v23);
  v40 = (*(v24 + 88))(v38, v23);
  if (v40 == *MEMORY[0x277D72AD0])
  {
    (*(v24 + 96))(v38, v23);
    v41 = *v38;
    v42 = swift_projectBox();
    v44 = v105;
    v43 = v106;
    v45 = v107;
    (*(v106 + 16))(v105, v42, v107);
    (*(v43 + 32))(a1, v44, v45);
    v46 = v15[6];
    v47 = sub_26B9ABE84();
    (*(*(v47 - 8) + 56))(a1 + v46, 1, 1, v47);
    *(a1 + v15[5]) = MEMORY[0x277D84F90];
    *(a1 + v15[7]) = 0;
    *(a1 + v15[8]) = 0;
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  v105 = v15;
  v97 = v16;
  v95 = a1;
  if (v40 == *MEMORY[0x277D72AB0])
  {
    (*(v24 + 96))(v38, v23);
    v48 = *v38;
    v49 = swift_projectBox();
    v50 = (v108)(v33, v49, v23);
    v51 = v103;
    sub_26B97BCE4(v50);
    (*(v24 + 8))(v33, v23);
    v52 = v97;
    v53 = v105;
    if ((*(v97 + 48))(v51, 1, v105) != 1)
    {
      v63 = v51;
      v64 = v99;
      sub_26B9043BC(v63, v99);
      *(v64 + v53[8]) = 1;
      v65 = v95;
      sub_26B9043BC(v64, v95);
      (*(v52 + 56))(v65, 0, 1, v53);
    }

    v54 = v51;
    goto LABEL_9;
  }

  if (v40 == *MEMORY[0x277D72AE8])
  {
    (*(v24 + 96))(v38, v23);
    v55 = *v38;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DD8, &qword_26B9B4440);
    v57 = swift_projectBox();
    v58 = *(v56 + 48);
    v108(v30, v57, v23);
    v59 = v57 + v58;
    v60 = v101;
    v61 = sub_26B9523F8(v59, v101);
    v62 = v100;
    sub_26B97BCE4(v61);
    (*(v24 + 8))(v30, v23);
    v52 = v97;
    v53 = v105;
    if ((*(v97 + 48))(v62, 1, v105) != 1)
    {
      v79 = v98;
      sub_26B9043BC(v62, v98);
      sub_26B979E24(v60, v79 + v53[6]);
      *(v79 + v53[7]) = 1;
      v80 = v95;
      sub_26B97C7E8(v79, v95);
      (*(v52 + 56))(v80, 0, 1, v53);
      sub_26B904420(v79);
    }

    sub_26B8EACD8(v60, &qword_2804260C8, &qword_26B9B0050);
    v54 = v62;
LABEL_9:
    sub_26B8EACD8(v54, &qword_2804260F0, &qword_26B9B0D10);
    (*(v52 + 56))(v95, 1, 1, v53);
  }

  if (v40 == *MEMORY[0x277D72AD8])
  {
    (*(v24 + 96))(v38, v23);
    v103 = *v38;
    v67 = *(v103 + 2);
    v68 = v67 + 56;
    v69 = 1 << *(v67 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & *(v67 + 56);
    v72 = (v69 + 63) >> 6;
    v106 = v24 + 8;
    v107 = v67;
    v73 = (v97 + 48);

    v74 = 0;
    if (v71)
    {
      while (1)
      {
        v75 = v74;
LABEL_20:
        v76 = v102;
        v77 = (v108)(v102, *(v107 + 48) + *(v24 + 72) * (__clz(__rbit64(v71)) | (v75 << 6)), v23);
        sub_26B97BCE4(v77);
        v78 = v104;
        (*(v24 + 8))(v76, v23);
        if ((*v73)(v78, 1, v105) != 1)
        {
          break;
        }

        v71 &= v71 - 1;
        result = sub_26B8EACD8(v78, &qword_2804260F0, &qword_26B9B0D10);
        v74 = v75;
        if (!v71)
        {
          goto LABEL_17;
        }
      }

      v92 = v96;
      sub_26B9043BC(v78, v96);
      v93 = v92;
      v94 = v95;
      sub_26B9043BC(v93, v95);
      (*(v97 + 56))(v94, 0, 1, v105);
    }

LABEL_17:
    while (1)
    {
      v75 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v75 >= v72)
      {

        (*(v97 + 56))(v95, 1, 1, v105);
      }

      v71 = *(v68 + 8 * v75);
      ++v74;
      if (v71)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    if (v40 == *MEMORY[0x277D72AB8])
    {
      (*(v24 + 96))(v38, v23);
      v81 = *v38;
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DD0, &qword_26B9B4438);
      v83 = swift_projectBox();
      v84 = *(v83 + *(v82 + 48));
      v85 = v95;
      (*(v106 + 16))(v95, v83, v107);
      v86 = v105;
      v87 = *(v105 + 6);
      v88 = sub_26B9ABE84();
      (*(*(v88 - 8) + 56))(v85 + v87, 1, 1, v88);
      *(v85 + v86[5]) = v84;
      *(v85 + v86[7]) = 0;
      *(v85 + v86[8]) = 0;
      (*(v97 + 56))(v85, 0, 1, v86);
    }

    if (v40 == *MEMORY[0x277D72AE0])
    {
      (*(v24 + 96))(v38, v23);
      v89 = *v38;
      v90 = swift_projectBox();
      v91 = (v108)(v36, v90, v23);
      sub_26B97BCE4(v91);
      (*(v24 + 8))(v36, v23);
    }

    (*(v97 + 56))(v95, 1, 1, v105);
    return (*(v24 + 8))(v38, v23);
  }

  return result;
}

uint64_t sub_26B97C7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ToolKitQueryHelper.resolveQuery(for:parameter:invocation:searchString:kind:selectedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  *(v8 + 104) = a6;
  *(v8 + 112) = a8;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  *(v8 + 64) = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050) - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v11 = sub_26B9AB984();
  *(v8 + 128) = v11;
  v12 = *(v11 - 8);
  *(v8 + 136) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v14 = sub_26B9AC0E4();
  *(v8 + 152) = v14;
  v15 = *(v14 - 8);
  *(v8 + 160) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v17 = sub_26B9ABFF4();
  *(v8 + 176) = v17;
  v18 = *(v17 - 8);
  *(v8 + 184) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v20 = sub_26B9AC014();
  *(v8 + 208) = v20;
  v21 = *(v20 - 8);
  *(v8 + 216) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v23 = sub_26B9ABF24();
  *(v8 + 232) = v23;
  v24 = *(v23 - 8);
  *(v8 + 240) = v24;
  v25 = *(v24 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10) - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v27 = sub_26B9ABEB4();
  *(v8 + 272) = v27;
  v28 = *(v27 - 8);
  *(v8 + 280) = v28;
  v29 = *(v28 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  v30 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier();
  *(v8 + 296) = v30;
  v31 = *(v30 - 8);
  *(v8 + 304) = v31;
  v32 = *(v31 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = *a7;

  return MEMORY[0x2822009F8](sub_26B97CBD4, 0, 0);
}

uint64_t sub_26B97CBD4()
{
  v85 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 80);
  MEMORY[0x26D685FA0]();
  sub_26B97BCE4(v6);
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v8 = *(v0 + 64);
    sub_26B8EACD8(*(v0 + 264), &qword_2804260F0, &qword_26B9B0D10);
    *(v8 + 24) = &type metadata for EmptyQuery;
    *(v8 + 32) = sub_26B903C04();
    EmptyQuery.init()();
    goto LABEL_12;
  }

  v9 = *(v0 + 256);
  v10 = *(v0 + 232);
  v11 = *(v0 + 240);
  v12 = *(v0 + 72);
  sub_26B9043BC(*(v0 + 264), *(v0 + 312));
  sub_26B9ABF74();
  v13 = sub_26B91EBC0(v9);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v11 + 8))(v9, v10);
  if (!v15)
  {
LABEL_9:
    v25 = *(v0 + 312);
    v44 = *(v0 + 64);
    *(v44 + 24) = &type metadata for EmptyQuery;
    *(v44 + 32) = sub_26B903C04();
    EmptyQuery.init()();
    goto LABEL_10;
  }

  v21 = *(v0 + 216);
  v20 = *(v0 + 224);
  v22 = *(v0 + 208);
  v23 = *(v0 + 72);
  (*(v21 + 104))(v20, *MEMORY[0x277D73000], v22);
  v24 = sub_26B9ABF84();
  (*(v21 + 8))(v20, v22);
  v25 = *(v0 + 312);
  if ((v24 & 1) == 0)
  {
    v31 = *(v0 + 296);

    v32 = *(v25 + *(v31 + 20));
    if (*(v32 + 16))
    {
      v76 = *(v0 + 320);
      v33 = *(v0 + 248);
      v34 = *(v0 + 200);
      v35 = *(v0 + 176);
      v36 = *(v0 + 184);
      v37 = *(v0 + 160);
      v69 = *(v0 + 152);
      v70 = *(v0 + 168);
      v38 = *(v0 + 136);
      v78 = *(v0 + 144);
      v72 = *(v0 + 192);
      v74 = *(v0 + 128);
      v39 = *(v0 + 80);
      v71 = *(v0 + 88);
      v40 = *(v0 + 72);
      v41 = *(v36 + 16);
      v41(v34, v32 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v35);
      sub_26B9ABF74();
      (*(v37 + 16))(v70, v39, v69);
      v41(v72, v34, v35);
      (*(v38 + 16))(v78, v71, v74);
      v81 = v76;
      v82 = 0;
      v79 = static ParameterQueryInvocationKind.== infix(_:_:)(&v81, &v82);
      v83 = v76;
      v84 = 0;
      v42 = static ParameterQueryInvocationKind.== infix(_:_:)(&v83, &v84);
      v43 = *(v0 + 120);
      if (v42)
      {
        sub_26B9523F8(*(v0 + 112), *(v0 + 120));
      }

      else
      {
        v58 = sub_26B9ABE84();
        (*(*(v58 - 8) + 56))(v43, 1, 1, v58);
      }

      v59 = *(v0 + 248);
      v60 = *(v0 + 192);
      v75 = *(v0 + 200);
      v77 = *(v0 + 312);
      v61 = *(v0 + 184);
      v73 = *(v0 + 176);
      v62 = *(v0 + 168);
      v63 = *(v0 + 144);
      v64 = *(v0 + 120);
      v65 = *(v0 + 96);
      v66 = *(v0 + 104);
      v67 = *(v0 + 64);
      v67[3] = type metadata accessor for AppEntityQuery();
      v67[4] = sub_26B97D6B0(&qword_280426900, type metadata accessor for AppEntityQuery);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);

      AppEntityQuery.init(typeIdentifier:parameterDefinition:restrictionContext:toolInvocation:searchString:showAllCases:selectedValue:)(v59, v62, v60, v63, v65, v66, v79, v64, boxed_opaque_existential_1);
      (*(v61 + 8))(v75, v73);
      v45 = v77;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v27 = *(v0 + 96);
  v26 = *(v0 + 104);
  v28 = *(v0 + 64);

  sub_26B9826E0(v17, v19, v13, v15, v27, v26, (v0 + 16));
  v28[3] = &type metadata for IndexedEntityParameterQuery;
  v28[4] = sub_26B97D0E0();
  v29 = swift_allocObject();
  *v28 = v29;
  v30 = *(v0 + 32);
  v29[1] = *(v0 + 16);
  v29[2] = v30;
  v29[3] = *(v0 + 48);
LABEL_10:
  v45 = v25;
LABEL_11:
  sub_26B904420(v45);
LABEL_12:
  v46 = *(v0 + 312);
  v47 = *(v0 + 288);
  v49 = *(v0 + 256);
  v48 = *(v0 + 264);
  v50 = *(v0 + 248);
  v51 = *(v0 + 224);
  v53 = *(v0 + 192);
  v52 = *(v0 + 200);
  v54 = *(v0 + 168);
  v55 = *(v0 + 144);
  v80 = *(v0 + 120);

  v56 = *(v0 + 8);

  return v56();
}

unint64_t sub_26B97D0E0()
{
  result = qword_280426DE0;
  if (!qword_280426DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426DE0);
  }

  return result;
}

uint64_t static ToolKitQueryHelper.restrictedTypeIdentifier(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26B9ABEB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x26D685FA0](v5);
  sub_26B97BCE4(a1);
  return (*(v3 + 8))(v7, v2);
}

uint64_t static ToolKitQueryHelper.resolveTypeIdentifier(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  sub_26B97BCE4(&v11 - v4);
  v6 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_26B8EACD8(v5, &qword_2804260F0, &qword_26B9B0D10);
    v7 = sub_26B9ABF24();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  else
  {
    v9 = sub_26B9ABF24();
    v10 = *(v9 - 8);
    (*(v10 + 16))(a1, v5, v9);
    sub_26B904420(v5);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }
}

uint64_t static ToolKitQueryHelper.defaultValue(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_26B97BCE4(&v9 - v4);
  v6 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_26B8EACD8(v5, &qword_2804260F0, &qword_26B9B0D10);
    v7 = sub_26B9ABE84();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  else
  {
    sub_26B9523F8(&v5[*(v6 + 24)], a1);
    return sub_26B904420(v5);
  }
}

void sub_26B97D540()
{
  sub_26B9ABF24();
  if (v0 <= 0x3F)
  {
    sub_26B97D64C(319, &qword_280426DE8, MEMORY[0x277D72FA8], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_26B97D64C(319, &qword_280426918, MEMORY[0x277D72A78], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26B97D64C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26B97D6B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B97D6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  return MEMORY[0x2822009F8](sub_26B97D720, 0, 0);
}

uint64_t sub_26B97D720()
{
  v1 = v0[5];
  v2 = v0[3];
  v19 = v0[6];
  swift_getAssociatedTypeWitness();
  v3 = swift_dynamicCastUnknownClass();
  if (v3)
  {
    v4 = v3;
    v5 = *(v19 + 24);
    v6 = v2;
    v18 = (v5 + *v5);
    v7 = v5[1];
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_26B97D8FC;
    v9 = v0[6];
    v10 = v0[7];
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[2];

    return v18(v13, v4, v11, v12, v9);
  }

  else
  {
    v15 = v0[2];
    v16 = type metadata accessor for ContextualTypedValue();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_26B97D8FC()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_26B97DA74;
  }

  else
  {
    v3 = sub_26B97DA10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26B97DA10()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B97DA74()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t type metadata accessor for ContextualTypedValue()
{
  result = qword_28042FC20;
  if (!qword_28042FC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContextualTypedValue.Presentation.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContextualTypedValue.Presentation.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContextualTypedValue.Presentation.symbol.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ContextualTypedValue.Presentation.symbol.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_26B97DC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 1;
}

uint64_t sub_26B97DCB0()
{
  v1 = 0x6C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0x6F54646C756F6873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_26B97DD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B982250(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B97DD44(uint64_t a1)
{
  v2 = sub_26B97DF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B97DD80(uint64_t a1)
{
  v2 = sub_26B97DF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextualTypedValue.Presentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426E20, &qword_26B9B44C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v15 = *(v1 + 32);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B97DF7C();
  sub_26B9AD014();
  v18 = 0;
  v12 = v14[3];
  sub_26B9ACE14();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_26B9ACE14();
  v16 = 2;
  sub_26B9ACE34();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26B97DF7C()
{
  result = qword_28042FA10;
  if (!qword_28042FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28042FA10);
  }

  return result;
}

double sub_26B97DFD0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ContextualTypedValue.Presentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426E28, &qword_26B9B44D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B97DF7C();
  sub_26B9AD004();
  if (!v2)
  {
    v25 = 0;
    v11 = sub_26B9ACDD4();
    v14 = v13;
    v21 = v11;
    v24 = 1;
    v15 = sub_26B9ACDD4();
    v17 = v16;
    v20 = v15;
    v23 = 2;
    v22 = sub_26B9ACDF4();
    (*(v6 + 8))(v9, v5);
    v18 = v22 & 1;
    v19 = v20;
    *a2 = v21;
    *(a2 + 8) = v14;
    *(a2 + 16) = v19;
    *(a2 + 24) = v17;
    *(a2 + 32) = v18;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ContextualTypedValue.typedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B9ABE84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContextualTypedValue.typedValue.setter(uint64_t a1)
{
  v3 = sub_26B9ABE84();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ContextualTypedValue.presentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContextualTypedValue() + 20);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 ContextualTypedValue.presentation.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for ContextualTypedValue() + 20);
  v5 = *(v4 + 8);
  v6 = *(v4 + 24);

  result = *a1;
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v8;
  *(v4 + 32) = v3;
  return result;
}

__n128 sub_26B97E43C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 32);
  v7 = sub_26B9ABE84();
  v10 = *(a2 + 16);
  v11 = *a2;
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  v8 = a3 + *(type metadata accessor for ContextualTypedValue() + 20);
  result = v11;
  *v8 = v11;
  *(v8 + 16) = v10;
  *(v8 + 32) = v6;
  return result;
}

uint64_t ContextualTypedValue.generateContent(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26B9AB394();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_26B97E544()
{
  if (*v0)
  {
    result = 0x61746E6573657270;
  }

  else
  {
    result = 0x6C61566465707974;
  }

  *v0;
  return result;
}

uint64_t sub_26B97E58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61566465707974 && a2 == 0xEA00000000006575;
  if (v6 || (sub_26B9ACEB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26B9ACEB4();

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

uint64_t sub_26B97E680(uint64_t a1)
{
  v2 = sub_26B97E910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B97E6BC(uint64_t a1)
{
  v2 = sub_26B97E910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextualTypedValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426E30, &qword_26B9B44D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B97E910();
  sub_26B9AD014();
  LOBYTE(v16) = 0;
  sub_26B9ABE84();
  sub_26B97F29C(&qword_280426FD0, MEMORY[0x277D72A78]);
  sub_26B9ACE44();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for ContextualTypedValue() + 20));
    v12 = v11[3];
    v13 = *(v11 + 32);
    v16 = *v11;
    v17 = *(v11 + 1);
    v18 = v12;
    v19 = v13;
    v15[7] = 1;
    sub_26B97E964();

    sub_26B9ACE44();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26B97E910()
{
  result = qword_28042FA18[0];
  if (!qword_28042FA18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28042FA18);
  }

  return result;
}

unint64_t sub_26B97E964()
{
  result = qword_280426E38;
  if (!qword_280426E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E38);
  }

  return result;
}

uint64_t ContextualTypedValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v34 = sub_26B9ABE84();
  v31 = *(v34 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v34);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426E40, &qword_26B9B44E0);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for ContextualTypedValue();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B97E910();
  sub_26B9AD004();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v12;
  v17 = v15;
  v18 = v31;
  LOBYTE(v35) = 0;
  sub_26B97F29C(&qword_280426E48, MEMORY[0x277D72A78]);
  v19 = v34;
  v20 = v32;
  sub_26B9ACE04();
  v21 = *(v18 + 32);
  v28 = v17;
  v21(v17, v6, v19);
  v38 = 1;
  sub_26B97ED38();
  sub_26B9ACE04();
  (*(v33 + 8))(v11, v20);
  v22 = v37;
  v23 = v28;
  v24 = v28 + *(v29 + 20);
  v25 = v36;
  *v24 = v35;
  *(v24 + 16) = v25;
  *(v24 + 32) = v22;
  sub_26B97ED8C(v23, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26B981DC4(v23, type metadata accessor for ContextualTypedValue);
}

unint64_t sub_26B97ED38()
{
  result = qword_280426E50;
  if (!qword_280426E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E50);
  }

  return result;
}

uint64_t sub_26B97ED8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualTypedValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B97EE20(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_26B9ABE84();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A38, &unk_26B9B3B20) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for ContextualTypedValue();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B97EF74, 0, 0);
}

uint64_t sub_26B97EF74()
{
  v1 = [*(v0 + 24) encodedTypedValue];
  if (v1)
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v4 = v1;
    v5 = sub_26B9AB124();
    v7 = v6;

    v8 = sub_26B9AAF84();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_26B9AAF74();
    sub_26B97F29C(&qword_280426E58, type metadata accessor for ContextualTypedValue);
    sub_26B9AAF64();
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 16);
    sub_26B922394(v5, v7);

    v16 = *(v12 + 56);
    v16(v14, 0, 1, v13);
    sub_26B96076C(v14, v11);
    sub_26B96076C(v11, v15);
    v17 = 0;
  }

  else
  {
    v16 = *(*(v0 + 72) + 56);
    v17 = 1;
  }

  v18 = *(v0 + 80);
  v19 = *(v0 + 56);
  v20 = *(v0 + 48);
  v16(*(v0 + 16), v17, 1, *(v0 + 64));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_26B97F29C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B97F2E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return sub_26B97EE20(a1, a2);
}

uint64_t sub_26B97F384(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_26B9ABDA4();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_26B9AB054();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v11 = sub_26B9AB104();
  v2[12] = v11;
  v12 = *(v11 - 8);
  v2[13] = v12;
  v13 = *(v12 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B97F56C, 0, 0);
}

uint64_t sub_26B97F56C()
{
  v1 = [*(v0 + 24) bundleIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_26B9AC504();
LABEL_3:

    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 16);
    v8 = sub_26B9AC1D4();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_26B9ABD84();
    v9 = sub_26B9ABE44();
    v10 = swift_allocBox();
    v12 = v11;
    (*(v4 + 32))(v11, v3, v5);
    (*(*(v9 - 8) + 104))(v12, *MEMORY[0x277D72970], v9);
    *v7 = v10;
    v13 = *MEMORY[0x277D72A58];
    v14 = sub_26B9ABE84();
    (*(*(v14 - 8) + 104))(v7, v13, v14);
    v15 = type metadata accessor for ContextualTypedValue();
    v16 = v7 + *(v15 + 20);
    v16[32] = 0;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    goto LABEL_8;
  }

  v17 = [*(v0 + 24) applicationPath];
  if (v17)
  {
    v18 = *(v0 + 104);
    v37 = *(v0 + 112);
    v20 = *(v0 + 88);
    v19 = *(v0 + 96);
    v21 = *(v0 + 72);
    v22 = *(v0 + 80);
    v23 = *(v0 + 64);
    v24 = v17;
    sub_26B9AC504();

    (*(v18 + 56))(v20, 1, 1, v19);
    (*(v21 + 104))(v22, *MEMORY[0x277CC91D8], v23);
    sub_26B9AB0F4();
    v25 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v35 = sub_26B981C70(v37, 0);
    v36 = [v35 bundleIdentifier];
    if (v36)
    {
      v2 = v36;
      sub_26B9AC504();

      goto LABEL_3;
    }

    v26 = *(v0 + 16);
  }

  else
  {
    v26 = *(v0 + 16);
  }

  v27 = type metadata accessor for ContextualTypedValue();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
LABEL_8:
  v28 = *(v0 + 112);
  v29 = *(v0 + 80);
  v30 = *(v0 + 88);
  v31 = *(v0 + 56);
  v32 = *(v0 + 32);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_26B97F944(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return sub_26B97F384(a1, a2);
}

uint64_t sub_26B97F9E4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_26B9ABE84();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_26B9ABDE4();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_26B9AB054();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = sub_26B9AB104();
  v2[14] = v13;
  v14 = *(v13 - 8);
  v2[15] = v14;
  v15 = *(v14 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B97FBFC, 0, 0);
}

uint64_t sub_26B97FBFC()
{
  v1 = [*(v0 + 24) filePath];
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 88);
    v46 = *(v0 + 80);
    v39 = *(v0 + 72);
    v40 = *(v0 + 64);
    v41 = *(v0 + 56);
    v42 = *(v0 + 48);
    v43 = *(v0 + 40);
    v44 = *(v0 + 32);
    v9 = v1;
    sub_26B9AC504();

    (*(v5 + 56))(v6, 1, 1, v4);
    (*(v8 + 104))(v7, *MEMORY[0x277CC91D8], v46);
    sub_26B9AB0F4();
    sub_26B9AB0B4();
    sub_26B9AB094();
    v45 = *(v5 + 8);
    v45(v3, v4);
    v10 = sub_26B9AB0A4();
    v11 = sub_26B9AC4C4();

    v12 = [objc_opt_self() fileWithFileURL:v10 filename:v11 typeIdentifier:0];

    v13 = v12;
    sub_26B9ABDC4();
    v14 = sub_26B9ABE44();
    v15 = swift_allocBox();
    v17 = v16;
    (*(v40 + 16))(v16, v39, v41);
    (*(*(v14 - 8) + 104))(v17, *MEMORY[0x277D72998], v14);
    *v42 = v15;
    v18 = *MEMORY[0x277D72A58];
    (*(v43 + 104))();
    v19 = sub_26B9ABDB4();
    v21 = v20;

    v22 = *(v0 + 136);
    v23 = *(v0 + 112);
    v24 = *(v0 + 48);
    v25 = *(v0 + 32);
    v26 = *(v0 + 40);
    v27 = *(v0 + 16);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v45(v22, v23);
    (*(v26 + 32))(v27, v24, v25);
    v28 = type metadata accessor for ContextualTypedValue();
    v29 = 0;
    v30 = v27 + *(v28 + 20);
    *v30 = v19;
    *(v30 + 8) = v21;
    *(v30 + 16) = xmmword_26B9B3B10;
    *(v30 + 32) = 1;
  }

  else
  {
    v28 = type metadata accessor for ContextualTypedValue();
    v29 = 1;
  }

  v31 = *(v0 + 128);
  v32 = *(v0 + 136);
  v34 = *(v0 + 96);
  v33 = *(v0 + 104);
  v35 = *(v0 + 72);
  v36 = *(v0 + 48);
  (*(*(v28 - 8) + 56))(*(v0 + 16), v29, 1);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_26B980040(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return sub_26B97F9E4(a1, a2);
}

uint64_t sub_26B9800E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426E60, &qword_26B9B4510) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_26B9ABFE4();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B9801E8, 0, 0);
}

uint64_t sub_26B9801E8()
{
  v1 = [*(v0 + 24) person];
  if (!v1)
  {
    v9 = *(v0 + 16);
    v10 = type metadata accessor for ContextualTypedValue();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    goto LABEL_44;
  }

  v2 = v1;
  v3 = [v1 emailAddresses];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26B9AC6F4();

    if (v5[2])
    {
      v6 = v5[4];
      v7 = v5[5];

      v8 = sub_26B9AC4C4();

      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_8:
  v70 = [objc_allocWithZone(MEMORY[0x277CD3E98]) initWithValue:v8 type:1];

  v11 = [v2 phoneNumbers];
  if (v11)
  {
    v12 = v11;
    v13 = sub_26B9AC6F4();

    if (v13[2])
    {
      v14 = v13[4];
      v15 = v13[5];

      v16 = sub_26B9AC4C4();

      goto LABEL_13;
    }
  }

  v16 = 0;
LABEL_13:
  v17 = *(v0 + 64);
  v18 = *(v0 + 72);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  v21 = *(v0 + 32);
  v71 = [objc_allocWithZone(MEMORY[0x277CD3E98]) initWithValue:v16 type:2];

  v22 = [objc_allocWithZone(MEMORY[0x277CD3E98]) initWithValue:0 type:0];
  sub_26B9808DC(v18);
  (*(v19 + 16))(v17, v18, v20);
  v23 = (*(v19 + 88))(v17, v20);
  v68 = v22;
  if (v23 == *MEMORY[0x277D72F98])
  {
    v24 = v22;
LABEL_24:
    v67 = v24;
    goto LABEL_25;
  }

  if (v23 == *MEMORY[0x277D72F90])
  {
    v24 = v71;
    goto LABEL_24;
  }

  v25 = v70;
  if (v23 == *MEMORY[0x277D72F88])
  {
    goto LABEL_23;
  }

  if (v23 == *MEMORY[0x277D72F80])
  {
    v26 = [v70 value];
    if (v26)
    {
LABEL_22:

      goto LABEL_23;
    }

    v26 = [v71 value];
    if (v26)
    {
      v25 = v71;
      goto LABEL_22;
    }

LABEL_23:
    v24 = v25;
    goto LABEL_24;
  }

  v63 = *(v0 + 64);
  v64 = *(v0 + 48);
  v65 = *(*(v0 + 56) + 8);
  v67 = v22;
  v65(v63, v64);
LABEL_25:
  v27 = *(v0 + 40);
  v28 = sub_26B9AAFD4();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v27, 1, 1, v28);
  v30 = [v2 displayName];
  if (v30)
  {
    v31 = v30;
    sub_26B9AC504();
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = [v2 contactIdentifier];
  if (v34)
  {
    v35 = v34;
    sub_26B9AC504();
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v69 = v2;
  v38 = [v2 personIdentifier];
  if (v38)
  {
    v39 = v38;
    sub_26B9AC504();
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v42 = *(v0 + 40);
  if ((*(v29 + 48))(v42, 1, v28) == 1)
  {
    v43 = 0;
    if (v33)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v43 = sub_26B9AAFC4();
    (*(v29 + 8))(v42, v28);
    if (v33)
    {
LABEL_36:
      v44 = sub_26B9AC4C4();

      if (v37)
      {
        goto LABEL_37;
      }

LABEL_41:
      v45 = 0;
      if (v41)
      {
        goto LABEL_38;
      }

LABEL_42:
      v46 = 0;
      goto LABEL_43;
    }
  }

  v44 = 0;
  if (!v37)
  {
    goto LABEL_41;
  }

LABEL_37:
  v45 = sub_26B9AC4C4();

  if (!v41)
  {
    goto LABEL_42;
  }

LABEL_38:
  v46 = sub_26B9AC4C4();

LABEL_43:
  v66 = *(v0 + 72);
  v48 = *(v0 + 48);
  v47 = *(v0 + 56);
  v49 = *(v0 + 16);
  [objc_allocWithZone(MEMORY[0x277CD3E90]) initWithPersonHandle:v67 nameComponents:v43 displayName:v44 image:0 contactIdentifier:v45 customIdentifier:v46];

  v50 = sub_26B9ABE44();
  v51 = swift_allocBox();
  v53 = v52;
  sub_26B9ABDF4();

  (*(v47 + 8))(v66, v48);
  (*(*(v50 - 8) + 104))(v53, *MEMORY[0x277D729B0], v50);
  *v49 = v51;
  v54 = *MEMORY[0x277D72A58];
  v55 = sub_26B9ABE84();
  (*(*(v55 - 8) + 104))(v49, v54, v55);
  v56 = type metadata accessor for ContextualTypedValue();
  v57 = v49 + *(v56 + 20);
  v57[32] = 0;
  *v57 = 0u;
  *(v57 + 1) = 0u;
  (*(*(v56 - 8) + 56))(v49, 0, 1, v56);
LABEL_44:
  v59 = *(v0 + 64);
  v58 = *(v0 + 72);
  v60 = *(v0 + 40);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_26B9808DC@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_26B9ABFF4();
  v53 = *(v1 - 8);
  v2 = *(v53 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B9ABFE4();
  v47 = *(v5 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26B9ABEB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v45 - v20;
  MEMORY[0x26D685FA0](v19);
  sub_26B97BCE4(v21);
  v22 = v13;
  v23 = v5;
  v24 = v47;
  (*(v10 + 8))(v22, v9);
  v25 = v8;
  (*(v24 + 104))(v8, *MEMORY[0x277D72F98], v23);
  sub_26B982368(v21, v18);
  v26 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier();
  if ((*(*(v26 - 8) + 48))(v18, 1, v26) == 1)
  {
    sub_26B8EACD8(v21, &qword_2804260F0, &qword_26B9B0D10);
    sub_26B8EACD8(v18, &qword_2804260F0, &qword_26B9B0D10);
    return (*(v24 + 32))(v48, v8, v23);
  }

  else
  {
    v28 = v48;
    v29 = *&v18[*(v26 + 20)];

    sub_26B981DC4(v18, type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier);
    v30 = *(v29 + 16);
    if (v30)
    {
      v45[1] = v29;
      v46 = v21;
      v54 = v25;
      v55 = v23;
      v31 = v53 + 16;
      v32 = *(v53 + 16);
      v33 = v29 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v34 = *(v53 + 72);
      v35 = v24;
      v36 = (v53 + 88);
      v37 = *MEMORY[0x277D72E80];
      v51 = (v35 + 8);
      v52 = (v53 + 8);
      v49 = (v35 + 32);
      v50 = (v53 + 96);
      v53 += 88;
      v32(v4, v33, v1);
      while (1)
      {
        if ((*v36)(v4, v1) == v37)
        {
          v38 = v37;
          v39 = v34;
          v40 = v31;
          v41 = v54;
          v42 = v55;
          (*v51)(v54, v55);
          (*v50)(v4, v1);
          v43 = v41;
          v31 = v40;
          v34 = v39;
          v37 = v38;
          v36 = v53;
          (*v49)(v43, v4, v42);
        }

        else
        {
          (*v52)(v4, v1);
        }

        v33 += v34;
        if (!--v30)
        {
          break;
        }

        v32(v4, v33, v1);
      }

      v24 = v47;
      v44 = v48;
      v25 = v54;
      v23 = v55;
      v21 = v46;
    }

    else
    {

      v44 = v28;
    }

    sub_26B8EACD8(v21, &qword_2804260F0, &qword_26B9B0D10);
    return (*(v24 + 32))(v44, v25, v23);
  }
}

uint64_t sub_26B980DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B8EC52C;

  return sub_26B9800E0(a1, a2, a3);
}

uint64_t sub_26B980E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_26B9ABE84();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_26B9ABD04();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_26B9ABEB4();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v17 = sub_26B9ABF24();
  v3[18] = v17;
  v18 = *(v17 - 8);
  v3[19] = v18;
  v19 = *(v18 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B981134, 0, 0);
}

uint64_t sub_26B981134()
{
  v1 = [*(v0 + 24) entity];
  *(v0 + 184) = v1;
  if (!v1)
  {
LABEL_6:
    v12 = type metadata accessor for ContextualTypedValue();
    v13 = *(v0 + 168);
    v14 = *(v0 + 176);
    v15 = *(v0 + 160);
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 104);
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    v21 = *(v0 + 48);
    v42 = *(v0 + 40);
    (*(*(v12 - 8) + 56))(*(v0 + 16), 1, 1);

    v22 = *(v0 + 8);

    return v22();
  }

  v2 = v1;
  v3 = [v1 entityIdentifer];
  if (!v3)
  {

    goto LABEL_6;
  }

  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 32);
  v9 = v3;
  sub_26B9AC504();

  MEMORY[0x26D685FA0]();
  sub_26B97BCE4(v4);
  (*(v6 + 8))(v5, v7);
  v10 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier();
  if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
  {
    v11 = *(v0 + 136);

    sub_26B8EACD8(v11, &qword_2804260F0, &qword_26B9B0D10);
    goto LABEL_6;
  }

  v25 = *(v0 + 168);
  v24 = *(v0 + 176);
  v26 = *(v0 + 152);
  v27 = *(v0 + 136);
  v28 = *(v0 + 144);
  v29 = *(v0 + 120);
  v43 = *(v0 + 112);
  v38 = *(v0 + 160);
  v39 = *(v0 + 104);
  v30 = *(v0 + 80);
  v40 = *(v0 + 40);
  v41 = *(v0 + 32);
  v31 = *(v26 + 16);
  v31(v25, v27, v28);
  sub_26B981DC4(v27, type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier);
  (*(v26 + 32))(v24, v25, v28);
  v31(v38, v24, v28);
  v32 = sub_26B9AC1D4();
  (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
  v33 = sub_26B9ABCE4();
  MEMORY[0x26D685FA0](v33);
  (*(v29 + 56))(v40, 0, 1, v43);
  v34 = swift_task_alloc();
  *(v0 + 192) = v34;
  *v34 = v0;
  v34[1] = sub_26B981500;
  v35 = *(v0 + 104);
  v37 = *(v0 + 40);
  v36 = *(v0 + 48);

  return static ToolKitUtilities.resolve(entityIdentifier:expectedType:)(v36, v35, v37);
}

uint64_t sub_26B981500()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 40);
  v4 = *v0;

  sub_26B8EACD8(v2, &qword_2804262A8, &qword_26B9B09B0);

  return MEMORY[0x2822009F8](sub_26B981628, 0, 0);
}

uint64_t sub_26B981628()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_26B8EACD8(*(v0 + 48), &qword_2804260C8, &qword_26B9B0050);
    v10 = type metadata accessor for ContextualTypedValue();
    v11 = 1;
  }

  else
  {
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);
    v14 = *(v0 + 16);
    v15 = *(*(v0 + 64) + 32);
    v15(v12, *(v0 + 48), v13);
    v15(v14, v12, v13);
    v10 = type metadata accessor for ContextualTypedValue();
    v11 = 0;
    v16 = v14 + *(v10 + 20);
    *(v16 + 32) = 0;
    *v16 = 0u;
    *(v16 + 16) = 0u;
  }

  v17 = *(v0 + 168);
  v18 = *(v0 + 176);
  v19 = *(v0 + 160);
  v21 = *(v0 + 128);
  v20 = *(v0 + 136);
  v22 = *(v0 + 104);
  v24 = *(v0 + 72);
  v23 = *(v0 + 80);
  v25 = *(v0 + 48);
  v28 = *(v0 + 40);
  (*(*(v10 - 8) + 56))(*(v0 + 16), v11, 1);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_26B98183C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B8EC52C;

  return sub_26B980E64(a1, a2, a3);
}

double sub_26B9818EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426E68, qword_26B9B4AB0);
  v0 = swift_allocObject();
  *&result = 5;
  *(v0 + 16) = xmmword_26B9B0460;
  *(v0 + 32) = &type metadata for TypedValueParameterResolver.AppResolver;
  *(v0 + 40) = &off_281FF92C8;
  *(v0 + 48) = &type metadata for TypedValueParameterResolver.FileResolver;
  *(v0 + 56) = &off_281FF92E8;
  *(v0 + 64) = &type metadata for TypedValueParameterResolver.PersonResolver;
  *(v0 + 72) = &off_281FF9308;
  *(v0 + 80) = &type metadata for TypedValueParameterResolver.AppEntityResolver;
  *(v0 + 88) = &off_281FF9328;
  *(v0 + 96) = &type metadata for TypedValueParameterResolver.DefaultResolver;
  *(v0 + 104) = &off_281FF92A8;
  qword_28042FA08 = v0;
  return result;
}

uint64_t static TypedValueParameterResolver.resolveTypedValue(for:definition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26B9819BC, 0, 0);
}

uint64_t sub_26B9819BC()
{
  if (qword_28042FA00 != -1)
  {
    swift_once();
  }

  v1 = (qword_28042FA08 + 40);
  v2 = *(qword_28042FA08 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 2;
    v4 = v0[3];
    v5 = *(v1 - 1);
    v6 = *v1;
    swift_getAssociatedTypeWitness();
    v7 = swift_dynamicCastUnknownClass();
    v1 = v3;
    if (v7)
    {
      v9 = swift_task_alloc();
      v0[6] = v9;
      *v9 = v0;
      v9[1] = sub_26B981B7C;
      v10 = v0[5];
      v11 = v0[2];
      v12 = v0[3];

      return sub_26B97D6F8(v11, v12, v8, v10, v5, v6);
    }
  }

  v14 = v0[2];
  v15 = type metadata accessor for ContextualTypedValue();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = v0[1];

  return v16();
}

uint64_t sub_26B981B7C()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_26B981C70(uint64_t a1, char a2)
{
  v3 = v2;
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = sub_26B9AB0A4();
  v16[0] = 0;
  v7 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:v16];

  v8 = v16[0];
  if (v7)
  {
    v9 = sub_26B9AB104();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v16[0];
    sub_26B9AAFE4();

    swift_willThrow();
    v13 = sub_26B9AB104();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_26B981DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26B981E88()
{
  result = sub_26B9ABE84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26B981EFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_26B981F58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_26B982044()
{
  result = qword_28042FD30[0];
  if (!qword_28042FD30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28042FD30);
  }

  return result;
}

unint64_t sub_26B98209C()
{
  result = qword_28042FF40[0];
  if (!qword_28042FF40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28042FF40);
  }

  return result;
}

unint64_t sub_26B9820F4()
{
  result = qword_280430050;
  if (!qword_280430050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280430050);
  }

  return result;
}

unint64_t sub_26B98214C()
{
  result = qword_280430058[0];
  if (!qword_280430058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280430058);
  }

  return result;
}

unint64_t sub_26B9821A4()
{
  result = qword_2804300E0;
  if (!qword_2804300E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804300E0);
  }

  return result;
}

unint64_t sub_26B9821FC()
{
  result = qword_2804300E8[0];
  if (!qword_2804300E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804300E8);
  }

  return result;
}

uint64_t sub_26B982250(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B9ACEB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_26B9ACEB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F54646C756F6873 && a2 == 0xEE00657A696E656BLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_26B9ACEB4();

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

uint64_t sub_26B982368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9823DC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26B9AF300;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
    *(v6 + 72) = 0;

    a1 = v5;
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  return QueryRepresentation.init(arrayLiteral:)(v7, a1);
}

uint64_t sub_26B982480@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v7 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26B9AF300;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    *(v8 + 72) = 0;

    a3 = v7;
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  return QueryRepresentation.init(arrayLiteral:)(v9, a3);
}

id sub_26B982534()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D65898]) init];
  v2 = v0[4];
  v3 = v0[5];
  v4 = sub_26B9AC4C4();
  [v1 setSearchString_];

  [v1 setQueryKind_];
  [v1 setWhyQuery_];
  sub_26B9832F8(*v0, v0[1], v0[2], v0[3]);
  v5 = sub_26B9AC6E4();

  [v1 setFilterQueries_];

  return v1;
}

id sub_26B982604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D65898]) init];
  v5 = sub_26B9AC4C4();
  [v4 setSearchString_];

  [v4 setQueryKind_];
  [v4 setWhyQuery_];
  sub_26B983430(a3);
  v6 = sub_26B9AC6E4();

  [v4 setFilterQueries_];

  return v4;
}

uint64_t sub_26B9826E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_26B9826F0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

id sub_26B98272C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_26B982534();
}

double sub_26B982768@<D0>(uint64_t a1@<X8>)
{
  sub_26B983698();

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B9827B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26B983768();

  return SpotlightQuery.request.getter(a1, v4, a2);
}

uint64_t sub_26B982800@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_26B9823DC(a1);
}

uint64_t sub_26B98283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B983860();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B982918(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B983860();
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B9829CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B97D0E0();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B982A20()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double sub_26B982A68@<D0>(uint64_t a1@<X8>)
{
  sub_26B983984();

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B982AB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26B983A54();

  return SpotlightQuery.request.getter(a1, v4, a2);
}

uint64_t sub_26B982B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B983B4C();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B982BF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B983B4C();
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B982CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B983BC8();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

id sub_26B982D18()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = [objc_allocWithZone(MEMORY[0x277D65898]) init];
  v4 = sub_26B9AC4C4();
  [v3 setSearchString_];

  [v3 setQueryKind_];
  [v3 setWhyQuery_];
  v5 = sub_26B9AC6E4();
  [v3 setFilterQueries_];

  return v3;
}

double sub_26B982DE0@<D0>(uint64_t a1@<X8>)
{
  sub_26B983CC4();

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B982E2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26B983D94();

  return SpotlightQuery.request.getter(a1, v4, a2);
}

uint64_t sub_26B982E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B983E8C();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B982F54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B983E8C();
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B983008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B903BB0();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

double sub_26B983070@<D0>(uint64_t a1@<X8>)
{
  sub_26B983FEC();

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B9830BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26B9840BC();

  return SpotlightQuery.request.getter(a1, v4, a2);
}

uint64_t sub_26B983114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B9841B4();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B9831F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B9841B4();
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B9832A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B904368();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B9832F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427370, &qword_26B9B0D00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26B9AF560;
  sub_26B9ACBF4();

  MEMORY[0x26D686470](a3, a4);
  MEMORY[0x26D686470](34, 0xE100000000000000);
  *(v8 + 32) = 0xD000000000000021;
  *(v8 + 40) = 0x800000026B9BA110;
  sub_26B9ACBF4();

  MEMORY[0x26D686470](a1, a2);
  MEMORY[0x26D686470](34, 0xE100000000000000);
  *(v8 + 48) = 0xD000000000000012;
  *(v8 + 56) = 0x800000026B9BA140;
  return v8;
}

uint64_t sub_26B983430(uint64_t a1)
{
  v2 = sub_26B9AB414();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0xE000000000000000;
  v24 = 0;
  v25 = 0xE000000000000000;
  v8 = *(a1 + 16);
  if (v8)
  {
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v21 = v10;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    v13 = (v9 - 8);
    do
    {
      v15 = v9;
      v21(v6, v11, v2);
      v16 = v24 & 0xFFFFFFFFFFFFLL;
      if ((v25 & 0x2000000000000000) != 0)
      {
        v16 = HIBYTE(v25) & 0xF;
      }

      if (v16)
      {
        MEMORY[0x26D686470](545029152, 0xE400000000000000);
      }

      v22 = 0;
      v23 = 0xE000000000000000;
      sub_26B9ACBF4();

      v22 = 0xD000000000000018;
      v23 = 0x800000026B9BA0F0;
      v14 = sub_26B9AB3C4();
      MEMORY[0x26D686470](v14);

      MEMORY[0x26D686470](v22, v23);

      (*v13)(v6, v2);
      v11 += v12;
      --v8;
      v9 = v15;
    }

    while (v8);
    v17 = v24;
    v7 = v25;
  }

  else
  {
    v17 = 0;
  }

  v18 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v18 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427370, &qword_26B9B0D00);
    result = swift_allocObject();
    *(result + 16) = xmmword_26B9AF300;
    *(result + 32) = v17;
    *(result + 40) = v7;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_26B983698()
{
  result = qword_280426E70;
  if (!qword_280426E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E70);
  }

  return result;
}

unint64_t sub_26B9836EC()
{
  result = qword_280426E78;
  if (!qword_280426E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E78);
  }

  return result;
}

unint64_t sub_26B983740(uint64_t a1)
{
  result = sub_26B983768();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983768()
{
  result = qword_280426E80;
  if (!qword_280426E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E80);
  }

  return result;
}

unint64_t sub_26B9837BC(uint64_t a1)
{
  result = sub_26B9837E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9837E4()
{
  result = qword_280426E88;
  if (!qword_280426E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E88);
  }

  return result;
}

unint64_t sub_26B983838(uint64_t a1)
{
  result = sub_26B983860();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983860()
{
  result = qword_280426E90;
  if (!qword_280426E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E90);
  }

  return result;
}

unint64_t sub_26B9838B4(uint64_t a1)
{
  result = sub_26B97D0E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9838DC(uint64_t a1)
{
  result = sub_26B983904();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983904()
{
  result = qword_280426E98;
  if (!qword_280426E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E98);
  }

  return result;
}

unint64_t sub_26B983984()
{
  result = qword_280426EA0;
  if (!qword_280426EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EA0);
  }

  return result;
}

unint64_t sub_26B9839D8()
{
  result = qword_280426EA8;
  if (!qword_280426EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EA8);
  }

  return result;
}

unint64_t sub_26B983A2C(uint64_t a1)
{
  result = sub_26B983A54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983A54()
{
  result = qword_280426EB0;
  if (!qword_280426EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EB0);
  }

  return result;
}

unint64_t sub_26B983AA8(uint64_t a1)
{
  result = sub_26B983AD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983AD0()
{
  result = qword_280426EB8;
  if (!qword_280426EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EB8);
  }

  return result;
}

unint64_t sub_26B983B24(uint64_t a1)
{
  result = sub_26B983B4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983B4C()
{
  result = qword_280426EC0;
  if (!qword_280426EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EC0);
  }

  return result;
}

unint64_t sub_26B983BA0(uint64_t a1)
{
  result = sub_26B983BC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983BC8()
{
  result = qword_280426EC8;
  if (!qword_280426EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EC8);
  }

  return result;
}

unint64_t sub_26B983C1C(uint64_t a1)
{
  result = sub_26B983C44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983C44()
{
  result = qword_280426ED0;
  if (!qword_280426ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426ED0);
  }

  return result;
}

unint64_t sub_26B983CC4()
{
  result = qword_280426ED8;
  if (!qword_280426ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426ED8);
  }

  return result;
}

unint64_t sub_26B983D18()
{
  result = qword_280426EE0;
  if (!qword_280426EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EE0);
  }

  return result;
}

unint64_t sub_26B983D6C(uint64_t a1)
{
  result = sub_26B983D94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983D94()
{
  result = qword_280426EE8;
  if (!qword_280426EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EE8);
  }

  return result;
}

unint64_t sub_26B983DE8(uint64_t a1)
{
  result = sub_26B983E10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983E10()
{
  result = qword_280426EF0;
  if (!qword_280426EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EF0);
  }

  return result;
}

unint64_t sub_26B983E64(uint64_t a1)
{
  result = sub_26B983E8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983E8C()
{
  result = qword_280426EF8;
  if (!qword_280426EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EF8);
  }

  return result;
}

unint64_t sub_26B983EE0(uint64_t a1)
{
  result = sub_26B903BB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983F08(uint64_t a1)
{
  result = sub_26B983F30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983F30()
{
  result = qword_280426F00;
  if (!qword_280426F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F00);
  }

  return result;
}

uint64_t sub_26B983FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26B983FEC()
{
  result = qword_280426F08;
  if (!qword_280426F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F08);
  }

  return result;
}

unint64_t sub_26B984040()
{
  result = qword_280426F10;
  if (!qword_280426F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F10);
  }

  return result;
}

unint64_t sub_26B984094(uint64_t a1)
{
  result = sub_26B9840BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9840BC()
{
  result = qword_280426F18;
  if (!qword_280426F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F18);
  }

  return result;
}

unint64_t sub_26B984110(uint64_t a1)
{
  result = sub_26B984138();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B984138()
{
  result = qword_280426F20;
  if (!qword_280426F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F20);
  }

  return result;
}

unint64_t sub_26B98418C(uint64_t a1)
{
  result = sub_26B9841B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9841B4()
{
  result = qword_280426F28;
  if (!qword_280426F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F28);
  }

  return result;
}

unint64_t sub_26B984208(uint64_t a1)
{
  result = sub_26B904368();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B984230(uint64_t a1)
{
  result = sub_26B984258();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B984258()
{
  result = qword_280426F30;
  if (!qword_280426F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F30);
  }

  return result;
}

uint64_t sub_26B9842D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26B98431C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_26B9843A8(uint64_t a1)
{
  result = sub_26B9843D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9843D0()
{
  result = qword_280426F38;
  if (!qword_280426F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F38);
  }

  return result;
}

uint64_t sub_26B984424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B98475C();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B984500(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B98475C();
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

unint64_t sub_26B9845B4(uint64_t a1)
{
  result = sub_26B9845DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9845DC()
{
  result = qword_280426F40;
  if (!qword_280426F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F40);
  }

  return result;
}

double sub_26B984630@<D0>(uint64_t a1@<X8>)
{
  sub_26B984708();

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

unint64_t sub_26B98467C(uint64_t a1)
{
  result = sub_26B903738();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B9846A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B903738();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_26B984708()
{
  result = qword_280426F48;
  if (!qword_280426F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F48);
  }

  return result;
}

unint64_t sub_26B98475C()
{
  result = qword_280426F50;
  if (!qword_280426F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F50);
  }

  return result;
}

uint64_t sub_26B9847B4(void *a1)
{
  if (a1)
  {
    v1 = [a1 title];
    v2 = sub_26B9AC504();
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = sub_26B9AAF14();
  }

  v3 = v2;

  return v3;
}

uint64_t sub_26B984878(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 subtitle];
  v2 = sub_26B9AC504();

  return v2;
}

void sub_26B9848DC()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v0 = [objc_allocWithZone(MEMORY[0x277CCA948]) initWithTypes:16 error:v5];
  v1 = v5[0];
  if (!v0)
  {
    v2 = v1;
    v3 = sub_26B9AAFE4();

    swift_willThrow();
    v0 = 0;
  }

  qword_280433DE8 = v0;
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26B984994(void *a1)
{
  if (!a1)
  {
    v3 = [objc_opt_self() mapItemForCurrentLocation];
    v6 = [v3 placemark];
    goto LABEL_6;
  }

  v2 = [a1 mapItem];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 placemark];
  v5 = [v4 name];

  if (v5)
  {

    v6 = [v3 placemark];
LABEL_6:
    v7 = v6;

    return v7;
  }

  v8 = [v3 location];
  v9 = [a1 title];
  sub_26B9AC504();

  if (qword_2804313F0 != -1)
  {
    swift_once();
  }

  if (!qword_280433DE8)
  {
    goto LABEL_44;
  }

  v10 = qword_280433DE8;
  v11 = [a1 title];
  sub_26B9AC504();

  MEMORY[0x26D686470](32, 0xE100000000000000);

  v12 = [a1 subtitle];
  v13 = sub_26B9AC504();
  v15 = v14;

  MEMORY[0x26D686470](v13, v15);

  v16 = sub_26B9AC4C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427080, &qword_26B9B52A8);
  sub_26B8F7938(&qword_280427088, &qword_280427080, &qword_26B9B52A8);
  sub_26B92C070();
  v17 = sub_26B9AC9E4();
  v19 = [v10 matchesInString:v16 options:0 range:{v17, v18}];

  sub_26B9294B8(0, &qword_280427098, 0x277CCACC0);
  v20 = sub_26B9AC6F4();

  if (!(v20 >> 62))
  {
    result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

  result = sub_26B9ACB44();
  if (!result)
  {
LABEL_43:

LABEL_44:
    v24 = 0;
LABEL_45:
    v76 = sub_26B9AC4C4();

    v7 = [objc_opt_self() placemarkWithLocation:v8 name:v76 postalAddress:v24];

    return v7;
  }

LABEL_13:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x26D686B00](0, v20);
    goto LABEL_16;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v20 + 32);
LABEL_16:
    v23 = v22;

    v24 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
    v25 = [v23 components];
    if (v25)
    {
      v26 = v25;
      type metadata accessor for NSTextCheckingKey();
      sub_26B989834(&qword_2804270A0, type metadata accessor for NSTextCheckingKey);
      v27 = sub_26B9AC404();

      if (*(v27 + 16) && (v28 = sub_26B92BD78(*MEMORY[0x277CCA6E8]), (v29 & 1) != 0))
      {
        v30 = (*(v27 + 56) + 16 * v28);
        v31 = v10;
        v32 = *v30;
        v33 = v30[1];

        v34 = sub_26B9AC4C4();
        v10 = v31;

        [v24 setStreet_];
      }

      else
      {
      }
    }

    v35 = &off_279D10000;
    v36 = [v23 addressComponents];
    if (v36)
    {
      v37 = v36;
      type metadata accessor for NSTextCheckingKey();
      sub_26B989834(&qword_2804270A0, type metadata accessor for NSTextCheckingKey);
      v38 = sub_26B9AC404();

      if (*(v38 + 16) && (v39 = sub_26B92BD78(*MEMORY[0x277CCA6B0]), (v40 & 1) != 0))
      {
        v41 = (*(v38 + 56) + 16 * v39);
        v42 = v10;
        v43 = *v41;
        v44 = v41[1];

        v45 = sub_26B9AC4C4();
        v10 = v42;
        v35 = &off_279D10000;

        [v24 setCity_];
      }

      else
      {
      }
    }

    v46 = [v23 v35[486]];
    if (v46)
    {
      v47 = v46;
      type metadata accessor for NSTextCheckingKey();
      sub_26B989834(&qword_2804270A0, type metadata accessor for NSTextCheckingKey);
      v48 = sub_26B9AC404();

      if (*(v48 + 16) && (v49 = sub_26B92BD78(*MEMORY[0x277CCA6E0]), (v50 & 1) != 0))
      {
        v51 = (*(v48 + 56) + 16 * v49);
        v52 = v10;
        v53 = *v51;
        v54 = v51[1];

        v55 = sub_26B9AC4C4();
        v10 = v52;

        [v24 setState_];
      }

      else
      {
      }
    }

    v56 = [v23 v35[486]];
    if (v56)
    {
      v57 = v56;
      type metadata accessor for NSTextCheckingKey();
      sub_26B989834(&qword_2804270A0, type metadata accessor for NSTextCheckingKey);
      v58 = sub_26B9AC404();

      if (*(v58 + 16) && (v59 = sub_26B92BD78(*MEMORY[0x277CCA6F0]), (v60 & 1) != 0))
      {
        v61 = (*(v58 + 56) + 16 * v59);
        v62 = v10;
        v63 = *v61;
        v64 = v61[1];

        v65 = sub_26B9AC4C4();
        v10 = v62;

        [v24 setPostalCode_];
      }

      else
      {
      }
    }

    v66 = [v23 v35[486]];
    if (v66)
    {
      v67 = v66;
      type metadata accessor for NSTextCheckingKey();
      sub_26B989834(&qword_2804270A0, type metadata accessor for NSTextCheckingKey);
      v68 = sub_26B9AC404();

      if (*(v68 + 16) && (v69 = sub_26B92BD78(*MEMORY[0x277CCA6B8]), (v70 & 1) != 0))
      {
        v71 = (*(v68 + 56) + 16 * v69);
        v72 = v10;
        v73 = *v71;
        v74 = v71[1];

        v75 = sub_26B9AC4C4();
        v10 = v72;

        [v24 setCountry_];
      }

      else
      {
      }
    }

    goto LABEL_45;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B985324()
{
  v1 = *v0;
  sub_26B9ACFB4();
  if (v1)
  {
    MEMORY[0x26D686E90](1);
    sub_26B9AC9D4();
  }

  else
  {
    MEMORY[0x26D686E90](0);
  }

  return sub_26B9ACFF4();
}

uint64_t sub_26B985388()
{
  if (!*v0)
  {
    return MEMORY[0x26D686E90](0);
  }

  MEMORY[0x26D686E90](1);
  return sub_26B9AC9D4();
}

uint64_t sub_26B9853E0()
{
  v1 = *v0;
  sub_26B9ACFB4();
  if (v1)
  {
    MEMORY[0x26D686E90](1);
    sub_26B9AC9D4();
  }

  else
  {
    MEMORY[0x26D686E90](0);
  }

  return sub_26B9ACFF4();
}

BOOL sub_26B985440(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_26B9294B8(0, &qword_280426F60, 0x277D82BB8);
      return sub_26B9AC9C4() & 1;
    }

    return 0;
  }

  return !v2;
}

id sub_26B9854B0()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource____lazy_storage___searchCompleter;
  v2 = *(v0 + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource____lazy_storage___searchCompleter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource____lazy_storage___searchCompleter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CD4E28]) init];
    [v4 setDelegate_];
    [v4 setResultTypes_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_26B9855B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = v5;
  *(v6 + 104) = a2;
  *(v6 + 112) = a4;
  *(v6 + 96) = a1;
  v8 = sub_26B9AC2E4();
  *(v6 + 136) = v8;
  v9 = *(v8 - 8);
  *(v6 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v11 = sub_26B9AC304();
  *(v6 + 160) = v11;
  v12 = *(v11 - 8);
  *(v6 + 168) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = *a3;
  *(v6 + 248) = *(a3 + 8);
  *(v6 + 249) = *(a3 + 9);
  *(v6 + 192) = *(a3 + 16);
  v14 = sub_26B92A538();
  swift_beginAccess();
  *(v6 + 208) = *v14;
  v15 = *((*MEMORY[0x277D85000] & *v5) + 0xC8);
  sub_26B9AAAE4();
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v6 + 216) = v17;
  *v17 = v6;
  v17[1] = sub_26B9857EC;

  return v19();
}

uint64_t sub_26B9857EC()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B9858FC, v2, 0);
}

uint64_t sub_26B9858FC()
{
  v1 = v0[24];
  v41 = v0[25];
  v2 = *(v0 + 249);
  v3 = *(v0 + 248);
  v4 = v0[23];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];
  v10 = &v6[OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_currentQuery];
  v11 = *&v6[OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_currentQuery + 8];
  *v10 = v9;
  *(v10 + 1) = v7;

  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v5;
  *(v12 + 40) = v4;
  *(v12 + 48) = v3;
  *(v12 + 49) = v2;
  *(v12 + 56) = v1;
  *(v12 + 64) = v41;
  v13 = &v6[OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler];
  v14 = *&v6[OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler];
  v15 = *&v6[OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler + 8];
  *v13 = &unk_26B9B50D0;
  *(v13 + 1) = v12;
  v16 = v6;
  sub_26B9AAAE4();
  sub_26B9353FC(v14);
  v17 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v17 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = v0[26];
    v19 = v0[22];
    v20 = v0[19];
    v40 = v0[21];
    v42 = v0[20];
    v21 = v0[17];
    v39 = v0[18];
    v22 = v0[16];
    v23 = v0[12];
    v24 = v0[13];

    sub_26B9294B8(0, &qword_280426F80, 0x277D85C78);
    v38 = sub_26B9AC954();
    v25 = swift_allocObject();
    v25[2] = v22;
    v25[3] = v23;
    v25[4] = v24;
    v0[6] = sub_26B989014;
    v0[7] = v25;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_26B9061AC;
    v0[5] = &block_descriptor_3;
    v26 = _Block_copy(v0 + 2);

    v27 = v22;
    sub_26B9AC2F4();
    v0[11] = MEMORY[0x277D84F90];
    sub_26B989834(&qword_280426F88, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426F90, &qword_26B9B6860);
    sub_26B8F7938(&qword_280426F98, &qword_280426F90, &qword_26B9B6860);
    sub_26B9ACB04();
    MEMORY[0x26D686830](0, v19, v20, v26);
    _Block_release(v26);

    (*(v39 + 8))(v20, v21);
    (*(v40 + 8))(v19, v42);
    v28 = v0[7];
LABEL_5:

    v29 = v0[22];
    v30 = v0[19];

    v31 = v0[1];

    return v31();
  }

  v33 = *v13;
  v0[28] = *v13;
  if (!v33)
  {
    v37 = v0[26];
    goto LABEL_5;
  }

  v0[29] = *(v13 + 1);
  sub_26B9AAAE4();
  v43 = (v33 + *v33);
  v34 = v33[1];
  v35 = swift_task_alloc();
  v0[30] = v35;
  *v35 = v0;
  v35[1] = sub_26B985D44;
  v36 = MEMORY[0x277D84F90];

  return v43(v36);
}

uint64_t sub_26B985D44()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v4 = *(*v0 + 208);
  v6 = *v0;

  sub_26B9353FC(v3);

  return MEMORY[0x2822009F8](sub_26B985E90, v4, 0);
}

uint64_t sub_26B985E90()
{
  v1 = v0[26];

  v2 = v0[22];
  v3 = v0[19];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26B985F04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[30] = a4;
  v7[31] = a7;
  v7[29] = a3;
  v10 = sub_26B92A538();
  swift_beginAccess();
  v7[32] = *v10;
  v11 = *((*MEMORY[0x277D85000] & *a2) + 0xD0);
  sub_26B9AAAE4();
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v7[33] = v13;
  *v13 = v7;
  v13[1] = sub_26B986064;

  return v15(a1);
}

uint64_t sub_26B986064(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  v4[34] = v1;

  v7 = v4[32];
  if (v1)
  {
    v8 = sub_26B9865B4;
  }

  else
  {
    v4[35] = a1;
    v8 = sub_26B9861A0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26B9861A0()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = [objc_allocWithZone(MEMORY[0x277D65848]) init];
  *(v0 + 288) = v4;
  v5 = v4;
  v6 = sub_26B9AC4C4();
  [v5 setTitle_];

  v7 = sub_26B9AC4C4();
  [v5 setIdentifier_];

  sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
  v8 = sub_26B9AC6E4();

  [v5 setResults_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26B9B1290;
  *(v9 + 32) = v5;
  v10 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v9, v2, 1, 1, 0, v10 & 1, v0 + 96);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  v13 = *(v0 + 113);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  *(v0 + 136) = *(v0 + 96);
  *(v0 + 144) = v11;
  *(v0 + 152) = v12;
  *(v0 + 153) = v13;
  *(v0 + 160) = v14;
  *(v0 + 168) = v15;
  v20 = (v3 + *v3);
  v16 = v3[1];
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *v17 = v0;
  v17[1] = sub_26B9863FC;
  v18 = *(v0 + 240);

  return v20(v0 + 136);
}

uint64_t sub_26B9863FC()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 256);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_26B98654C, v3, 0);
}

uint64_t sub_26B98654C()
{
  v1 = v0[36];
  v2 = v0[32];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B9865B4()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DC0, &qword_26B9B52A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26B9AF300;
  swift_getErrorValue();
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  *(v4 + 56) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_26B9ACFA4();

  static SearchResults.empty(queryID:)(v2, v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 33);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = v8;
  *(v0 + 72) = v9;
  *(v0 + 73) = v10;
  *(v0 + 80) = v11;
  *(v0 + 88) = v12;
  v17 = (v3 + *v3);
  v13 = v3[1];
  v14 = swift_task_alloc();
  *(v0 + 304) = v14;
  *v14 = v0;
  v14[1] = sub_26B986798;
  v15 = *(v0 + 240);

  return v17(v0 + 56);
}

uint64_t sub_26B986798()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 256);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26B9868E8, v3, 0);
}

uint64_t sub_26B9868E8()
{
  v1 = v0[34];
  v2 = v0[32];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B986954(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = [a1 results];
  sub_26B9294B8(0, &qword_280426FA8, 0x277CD4E30);
  v8 = sub_26B9AC6F4();

  v9 = sub_26B9AC824();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = v1;
  v11 = sub_26B92A538();
  swift_beginAccess();
  v12 = *v11;
  v13 = sub_26B989834(&qword_280426FB0, type metadata accessor for QueryActor);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v10;
  v14[5] = v8;
  sub_26B9AAAE4();
  sub_26B908364(0, 0, v6, &unk_26B9B50E0, v14);
}

uint64_t sub_26B986B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_26B92A538();
  swift_beginAccess();
  v7 = *v6;
  v5[8] = v7;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B986BA4, v7, 0);
}

uint64_t sub_26B986BA4()
{
  v1 = *(v0 + 48) + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler;
  v2 = *v1;
  *(v0 + 72) = *v1;
  if (v2)
  {
    *(v0 + 80) = *(v1 + 8);
    sub_26B9AAAE4();
    v9 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_26B986D14;
    v5 = *(v0 + 56);

    return v9(v5);
  }

  else
  {
    v7 = *(v0 + 64);

    **(v0 + 40) = *(v0 + 72) == 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_26B986D14()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v6 = *v0;

  sub_26B9353FC(v3);

  return MEMORY[0x2822009F8](sub_26B986E60, v4, 0);
}

uint64_t sub_26B986E60()
{
  v1 = *(v0 + 64);

  **(v0 + 40) = *(v0 + 72) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B9870B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_26B9AC824();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = v0;
  v7 = sub_26B92A538();
  swift_beginAccess();
  v8 = *v7;
  v9 = sub_26B989834(&qword_280426FB0, type metadata accessor for QueryActor);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v9;
  v10[4] = v6;
  sub_26B9AAAE4();
  sub_26B908364(0, 0, v4, &unk_26B9B50F0, v10);
}

uint64_t sub_26B987224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = sub_26B92A538();
  swift_beginAccess();
  v6 = *v5;
  v4[7] = v6;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B9872B4, v6, 0);
}

uint64_t sub_26B9872B4()
{
  v1 = *(v0 + 48) + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler;
  v2 = *v1;
  *(v0 + 64) = *v1;
  if (v2)
  {
    *(v0 + 72) = *(v1 + 8);
    sub_26B9AAAE4();
    v9 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_26B987428;
    v5 = MEMORY[0x277D84F90];

    return v9(v5);
  }

  else
  {
    v7 = *(v0 + 56);

    **(v0 + 40) = *(v0 + 64) == 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_26B987428()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v6 = *v0;

  sub_26B9353FC(v3);

  return MEMORY[0x2822009F8](sub_26B987574, v4, 0);
}

uint64_t sub_26B987574()
{
  v1 = *(v0 + 56);

  **(v0 + 40) = *(v0 + 64) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B987764()
{
  *(v1 + 40) = v0;
  v2 = sub_26B92A538();
  swift_beginAccess();
  v3 = *v2;
  *(v1 + 48) = v3;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B9877F4, v3, 0);
}

uint64_t sub_26B9877F4()
{
  v1 = *(v0 + 40);
  v2 = (v1 + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_currentQuery);
  v3 = *(v1 + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_currentQuery + 8);
  *v2 = 0;
  v2[1] = 0;

  v4 = (v1 + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler);
  v5 = *(v1 + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler);
  v6 = *(v1 + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler + 8);
  *v4 = 0;
  v4[1] = 0;
  sub_26B9353FC(v5);
  sub_26B9AC804();
  *(v0 + 56) = sub_26B9AC7F4();
  v8 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B9878BC, v8, v7);
}

uint64_t sub_26B9878BC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v0[8] = sub_26B9854B0();

  return MEMORY[0x2822009F8](sub_26B987930, v2, 0);
}

uint64_t sub_26B987930()
{
  v1 = v0[8];
  v2 = v0[6];

  [v1 cancel];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B9879A8(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_26B9AB1F4();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = sub_26B9ABE84();
  v2[23] = v6;
  v7 = *(v6 - 8);
  v2[24] = v7;
  v8 = *(v7 + 64) + 15;
  v2[25] = swift_task_alloc();
  v9 = sub_26B92A538();
  swift_beginAccess();
  v10 = *v9;

  return MEMORY[0x2822009F8](sub_26B987ADC, v10, 0);
}

char *sub_26B987ADC()
{
  v1 = v0;
  v2 = v0[18];
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
LABEL_55:
    v4 = sub_26B9ACB44();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v98 = MEMORY[0x277D84F90];
    result = sub_26B988CF8(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = v98;
    if ((v2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        v9 = MEMORY[0x26D686B00](i, v1[18]);
        v99 = v7;
        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          v12 = v9;
          sub_26B988CF8((v10 > 1), v11 + 1, 1);
          v9 = v12;
          v7 = v99;
        }

        v7[2] = v11 + 1;
        v7[v11 + 4] = v9;
      }
    }

    else
    {
      v80 = (v1[18] + 32);
      v81 = v98[2];
      do
      {
        v101 = v7;
        v82 = v7[3];
        v83 = *v80;
        if (v81 >= v82 >> 1)
        {
          v84 = v83;
          sub_26B988CF8((v82 > 1), v81 + 1, 1);
          v83 = v84;
          v7 = v101;
        }

        v7[2] = v81 + 1;
        v7[v81 + 4] = v83;
        ++v80;
        ++v81;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v13 = (v1[19] + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_currentQuery);
  v14 = v13[1];
  if (!v14)
  {
    v15 = 0;
    v14 = 0xE000000000000000;
    if (!v3)
    {
      goto LABEL_14;
    }

LABEL_16:
    v18 = v1[18];
    if (v2 < 0)
    {
      v19 = v1[18];
    }

    v17 = sub_26B9ACB44();
    goto LABEL_19;
  }

  v15 = *v13;
  v16 = v13[1];

  if (v3)
  {
    goto LABEL_16;
  }

LABEL_14:
  v17 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
  if (!v17)
  {
    goto LABEL_21;
  }

  type metadata accessor for FuzzyRanker();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B9B1290;
  *(inited + 32) = swift_getKeyPath();
  v21 = sub_26B9891F4(inited);
  swift_setDeallocating();
  v22 = *(inited + 16);
  swift_arrayDestroy();
  v1[16] = 1;
  sub_26B989440();
  v23 = sub_26B906128();
  v24 = sub_26B9731BC(&unk_287C608F8, v21, v15, v14, (v1 + 16), v23 & 1, &type metadata for LocationParameterQueryDataSource.LocationResult);

  v25 = *(v24 + 16);

  if (v25)
  {
LABEL_21:
    sub_26B988C04(v7);
    v7 = &unk_287C60920;
  }

  type metadata accessor for FuzzyRanker();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_26B9B1CB0;
  *(v26 + 32) = swift_getKeyPath();
  *(v26 + 40) = swift_getKeyPath();
  v27 = sub_26B9891F4(v26);
  swift_setDeallocating();
  v28 = *(v26 + 16);
  swift_arrayDestroy();
  v1[17] = 1;
  sub_26B989440();
  v29 = sub_26B9731BC(v7, v27, v15, v14, (v1 + 17), 1, &type metadata for LocationParameterQueryDataSource.LocationResult);

  v100 = v5;
  v30 = sub_26B9AAFB4();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_26B9AAFA4();
  v92 = *(v29 + 16);
  if (v92)
  {
    v33 = v1[24];
    v2 = v1[21];
    v95 = objc_opt_self();
    v3 = 0;
    v86 = *MEMORY[0x277D729D0];
    v88 = *MEMORY[0x277D72A58];
    v87 = (v33 + 104);
    v85 = (v2 + 8);
    v91 = MEMORY[0x277D84F90];
    v89 = (v33 + 8);
    v34 = &off_279D10000;
    v90 = v29;
    while (1)
    {
      if (v3 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_55;
      }

      v35 = *(v29 + 8 * v3 + 32);
      v36 = objc_allocWithZone(MEMORY[0x277D65850]);
      v37 = v35;
      v96 = [v36 v34[280]];
      v38 = [objc_allocWithZone(MEMORY[0x277D4C328]) v34[280]];
      v97 = v37;
      if (v35)
      {
        v39 = [v37 title];
        sub_26B9AC504();
      }

      else
      {
        v39 = [objc_opt_self() mainBundle];
        sub_26B9AAF14();
      }

      v2 = sub_26B9AC4C4();

      v40 = [v95 textWithString_];

      if (v40)
      {
        [v40 setMaxLines_];
        v94 = v40;
        [v38 setTitle_];
        if (v35)
        {
          v41 = [v37 subtitle];
          sub_26B9AC504();

          v42 = sub_26B9AC4C4();

          v43 = [v95 textWithString_];

          if (v43)
          {
            v44 = swift_allocObject();
            *(v44 + 16) = xmmword_26B9B1290;
            *(v44 + 32) = v43;
            sub_26B9294B8(0, &qword_280426FE0, 0x277D4C598);
            v45 = v43;
            v46 = sub_26B9AC6E4();

            [v38 setDescriptions_];
          }
        }

        v34 = &off_279D10000;
        v47 = [objc_allocWithZone(MEMORY[0x277D4C688]) init];
        v2 = sub_26B9AC4C4();

        [v47 setSymbolName_];

        v93 = v47;
        [v38 setThumbnail_];
        if (v35)
        {
          v48 = v97;
          if (!sub_26B984994(v35))
          {

            goto LABEL_26;
          }

          v49 = sub_26B9ABE44();
          v50 = swift_allocBox();
          v52 = v51;
          sub_26B9ABE34();

          (*(*(v49 - 8) + 104))(v52, v86, v49);
        }

        else
        {
          v53 = sub_26B9ABE44();
          v50 = swift_allocBox();
          v55 = v54;
          sub_26B9ABE24();
          (*(*(v53 - 8) + 104))(v55, v86, v53);
        }

        v56 = v1[25];
        v57 = v1[23];
        *v56 = v50;
        (*v87)(v56, v88, v57);
        v58 = [objc_allocWithZone(MEMORY[0x277D4C380]) init];
        sub_26B989834(&qword_280426FD0, MEMORY[0x277D72A78]);
        v59 = v1;
        v60 = sub_26B9AAF94();
        v62 = v61;
        v63 = v59[22];
        v64 = v59[20];
        v65 = sub_26B9AB114();
        sub_26B922394(v60, v62);
        [v58 setEncodedTypedValue_];

        v66 = v38;
        [v66 setCommand_];
        v67 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_26B9B1290;
        *(v68 + 32) = v66;
        sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
        v69 = sub_26B9AC6E4();

        [v67 setCardSections_];

        v70 = v96;
        [v70 setInlineCard_];
        sub_26B9AA884();
        sub_26B9AB1C4();
        v71 = v58;
        (*v85)(v63, v64);
        v72 = sub_26B9AC4C4();

        [v70 setIdentifier_];

        v73 = v70;
        MEMORY[0x26D6865A0](v73);
        if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v75 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_26B9AC734();
        }

        v2 = v59[25];
        v74 = v59[23];
        sub_26B9AC774();

        (*v89)(v2, v74);
        v91 = v100;
        v1 = v59;
        v29 = v90;
      }

      else
      {
      }

      v34 = &off_279D10000;
LABEL_26:
      if (v92 == ++v3)
      {
        goto LABEL_44;
      }
    }
  }

  v91 = v5;
LABEL_44:

  if (v91 >> 62)
  {
    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);

    v76 = sub_26B9ACD34();
  }

  else
  {

    sub_26B9ACEC4();

    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
    v76 = v91;
  }

  v77 = v1[25];
  v78 = v1[22];

  v79 = v1[1];

  return v79(v76);
}

uint64_t sub_26B988798@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26B9847B4(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_26B9887C4(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = [v3 subtitle];
    v5 = sub_26B9AC504();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

id sub_26B98882C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationParameterQueryDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26B9888C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *((*MEMORY[0x277D85000] & **v4) + 0xB0);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_26B8EC52C;

  return v15(v9, v10, a2, a3, a4);
}

uint64_t sub_26B988A24()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0xC8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26B8EB6C8;

  return v6();
}

uint64_t sub_26B988B48(uint64_t a1)
{
  v2 = sub_26B989834(&qword_2804270A0, type metadata accessor for NSTextCheckingKey);
  v3 = sub_26B989834(&qword_2804270C8, type metadata accessor for NSTextCheckingKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26B988C04(uint64_t result)
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

  result = sub_26B988E24(result, v11, 1, v3);
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

char *sub_26B988CF8(char *a1, int64_t a2, char a3)
{
  result = sub_26B988D18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26B988D18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427058, &qword_26B9B5288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26B988E24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427058, &qword_26B9B5288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26B988F54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26B8EC52C;

  return sub_26B985F04(a1, v4, v5, v6, v9, v10, v7);
}

void sub_26B989014()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v5 = sub_26B9854B0();
  v4 = sub_26B9AC4C4();
  [v5 setQueryFragment_];
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_26B9AAAE4();
}

uint64_t sub_26B9890A8(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26B8EC52C;

  return sub_26B986B10(a1, v6, v7, v5, v4);
}

uint64_t sub_26B989154(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B8EC52C;

  return sub_26B987224(a1, v5, v6, v4);
}

unint64_t sub_26B9891F4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_26B9ACB44();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427060, &qword_26B9B5290);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427068, &qword_26B9B5298);
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

unint64_t sub_26B989440()
{
  result = qword_280426FC0;
  if (!qword_280426FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426FC0);
  }

  return result;
}

unint64_t sub_26B989498()
{
  result = qword_280426FE8;
  if (!qword_280426FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426FE8);
  }

  return result;
}

uint64_t sub_26B9894EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B98953C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26B989590(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26B9895A8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B989660(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26B8EB6C8;

  return sub_26B986B10(a1, v6, v7, v5, v4);
}

void type metadata accessor for NSTextCheckingKey()
{
  if (!qword_2804270A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2804270A8);
    }
  }
}

uint64_t sub_26B989834(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RunnableParameterQuery.invocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RunnableParameterQuery() + 20);
  v4 = sub_26B9AB984();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RunnableParameterQuery()
{
  result = qword_280431A10;
  if (!qword_280431A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *RunnableParameterQuery.statusRow.getter()
{
  v1 = *(v0 + *(type metadata accessor for RunnableParameterQuery() + 28));
  v2 = v1;
  return v1;
}

uint64_t RunnableParameterQuery.init(parameterQuery:invocation:isStatusRow:statusRow:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_26B925694(a1, a5);
  v9 = type metadata accessor for RunnableParameterQuery();
  v10 = v9[5];
  v11 = sub_26B9AB984();
  result = (*(*(v11 - 8) + 32))(a5 + v10, a2, v11);
  *(a5 + v9[6]) = a3;
  *(a5 + v9[7]) = a4;
  return result;
}

id static RunnableParameterQuery.statusQuery(for:statusRow:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for RunnableParameterQuery();
  a3[3] = v5;
  a3[4] = sub_26B98BB48(&qword_280426DC8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  boxed_opaque_existential_1[3] = &type metadata for EmptyQuery;
  boxed_opaque_existential_1[4] = sub_26B903C04();
  EmptyQuery.init()();
  v7 = v5[5];
  v8 = sub_26B9AB984();
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1 + v7, a1, v8);
  *(boxed_opaque_existential_1 + v5[6]) = 1;
  *(boxed_opaque_existential_1 + v5[7]) = a2;

  return a2;
}

uint64_t RunnableParameterQuery.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = v4;
  *(v5 + 72) = a1;
  *(v5 + 80) = a3;
  v7 = *(type metadata accessor for RunnableParameterQuery() - 8);
  *(v5 + 104) = v7;
  *(v5 + 112) = *(v7 + 64);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = *a2;
  *(v5 + 176) = *(a2 + 8);
  *(v5 + 177) = *(a2 + 9);
  *(v5 + 136) = *(a2 + 16);
  v8 = sub_26B92A538();
  swift_beginAccess();
  v9 = *v8;
  *(v5 + 152) = v9;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B989C84, v9, 0);
}

uint64_t sub_26B989C84()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 177);
  v4 = *(v0 + 176);
  v5 = *(v0 + 128);
  v6 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 88);
  v20 = v8[3];
  v21 = *(v0 + 80);
  v17 = v8[4];
  v18 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1(v8, v20);
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 25) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  sub_26B98A3FC(v8, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v0 + 160) = v11;
  *(v11 + 16) = v21;
  *(v11 + 24) = v9;
  sub_26B98A460(v6, v11 + v10);
  v12 = *(v17 + 24);
  sub_26B9AAAE4();
  v19 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 168) = v14;
  *v14 = v0;
  v14[1] = sub_26B989E84;
  v15 = *(v0 + 72);

  return v19(v15, v0 + 16, &unk_26B9B5460, v11, v20, v17);
}

uint64_t sub_26B989E84()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_26B989FB0, v3, 0);
}

uint64_t sub_26B989FB0()
{
  v1 = v0[19];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B98A01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 136) = a2;
  *(v3 + 144) = a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  *(v3 + 56) = *a1;
  *(v3 + 64) = v4;
  *(v3 + 72) = v5;
  *(v3 + 73) = v6;
  *(v3 + 80) = v7;
  *(v3 + 88) = v8;
  v9 = swift_task_alloc();
  *(v3 + 152) = v9;
  *v9 = v3;
  v9[1] = sub_26B98A0EC;

  return sub_26B98A5B0(v3 + 16, v3 + 56);
}

uint64_t sub_26B98A0EC()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);
  v4 = *v0;

  *(v1 + 96) = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *(v1 + 104) = *(v1 + 24);
  *(v1 + 112) = v5;
  *(v1 + 113) = v6;
  *(v1 + 120) = v7;
  *(v1 + 128) = v8;
  v13 = (v3 + *v3);
  v9 = v3[1];
  v10 = swift_task_alloc();
  *(v1 + 160) = v10;
  *v10 = v4;
  v10[1] = sub_26B98A2D0;
  v11 = *(v1 + 144);

  return v13(v1 + 96);
}

uint64_t sub_26B98A2D0()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v7 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 120);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_26B98A3FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunnableParameterQuery();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B98A460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunnableParameterQuery();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B98A4C4(uint64_t a1)
{
  v4 = *(type metadata accessor for RunnableParameterQuery() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26B8EB6C8;

  return sub_26B98A01C(a1, v6, v7);
}

uint64_t sub_26B98A5B0(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = sub_26B9AB584();
  *(v3 + 32) = v5;
  v6 = *(v5 - 8);
  *(v3 + 40) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v8 = sub_26B9AB914();
  *(v3 + 56) = v8;
  v9 = *(v8 - 8);
  *(v3 + 64) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = *a2;
  *(v3 + 124) = *(a2 + 16);
  *(v3 + 125) = *(a2 + 17);
  *(v3 + 96) = *(a2 + 24);
  *(v3 + 126) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_26B98A6F8, 0, 0);
}

uint64_t sub_26B98A6F8()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for RunnableParameterQuery();
  *(v0 + 104) = v2;
  v3 = *(v2 + 20);
  *(v0 + 120) = v3;
  v4 = sub_26B906128();
  v5 = sub_26B90585C();
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_26B98A7CC;

  return static ToolKitUtilities.needsToolConfiguration(for:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:fetchDefaultValues:)(v1 + v3, 0, v4 & 1, v5 & 1);
}

uint64_t sub_26B98A7CC(char a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 127) = a1;

  return MEMORY[0x2822009F8](sub_26B98A8CC, 0, 0);
}

uint64_t sub_26B98A8CC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  v3 = *(v2 + *(v1 + 28));
  if (v3 || (*(v0 + 127) & 1) == 0)
  {
    v19 = *(v2 + *(v1 + 24));
    if (v3)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = &off_279D10000;
    if (v20)
    {
      v22 = *(v0 + 120);
      v24 = *(v0 + 64);
      v23 = *(v0 + 72);
      v25 = *(v0 + 56);
      v84 = v25;
      v30 = [objc_allocWithZone(MEMORY[0x277D4C328]) &selRef_documentURLs];
      sub_26B9AB934();
      v26 = ToolDefinition.spui_image.getter();
      v27 = *(v24 + 8);
      v27(v23, v25);
      [v30 setThumbnail_];

      v28 = [objc_allocWithZone(MEMORY[0x277D4C598]) init];
      sub_26B9AB934();
      sub_26B9AB8F4();
      v27(v23, v84);
      v29 = sub_26B9AC4C4();

      [v28 setText_];

      [v30 setTitle_];
      if (v19)
      {

        v21 = &off_279D10000;
      }

      else
      {
        v31 = *(v0 + 120);
        v32 = *(v0 + 24);
        v21 = &off_279D10000;
        v33 = [objc_allocWithZone(MEMORY[0x277D4C358]) init];
        v34 = sub_26B9AB964();
        [v33 setToolInvocationData_];

        v30 = v30;
        v35 = v33;
        [v30 setCommand_];
      }
    }

    else
    {
      v30 = v3;
      [v30 setCommand_];
    }

    v36 = *(v0 + 80);
    v37 = objc_allocWithZone(MEMORY[0x277D4C230]);
    v38 = v30;
    v39 = [v37 v21[280]];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_26B9B1290;
    v78 = v38;
    *(v40 + 32) = v38;
    sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
    v41 = sub_26B9AC6E4();

    [v39 setCardSections_];

    v42 = [objc_allocWithZone(MEMORY[0x277D65850]) v21[280]];
    v79 = v39;
    [v42 setInlineCard_];
    v43 = sub_26B9AC4C4();
    v44 = &off_279D10000;
    v85 = v42;
    [v42 setIdentifier_];

    v45 = v36 >> 62;
    if (v36 >> 62)
    {
      v71 = *(v0 + 80);
      if (v36 < 0)
      {
        v72 = *(v0 + 80);
      }

      v46 = sub_26B9ACB44();
    }

    else
    {
      v46 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v77 = v36;
    v82 = v46;
    if (!v46)
    {
      v50 = [objc_allocWithZone(MEMORY[0x277D65848]) v21[280]];
      v48 = sub_26B9AC4C4();
      [v50 setIdentifier_];
      goto LABEL_24;
    }

    if ((v36 & 0xC000000000000001) != 0)
    {
      goto LABEL_55;
    }

    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_57;
    }

    for (i = *(*(v0 + 80) + 32); ; i = MEMORY[0x26D686B00](0, *(v0 + 80)))
    {
      v48 = i;
      v49 = [objc_allocWithZone(MEMORY[0x277D65848]) initWithResultSection_];
      if (v49)
      {
        v50 = v49;
      }

      else
      {
        v50 = [objc_allocWithZone(MEMORY[0x277D65848]) v21[280]];
        v51 = sub_26B9AC4C4();
        [v50 v44[315]];

        v48 = v51;
LABEL_24:
      }

      v52 = v50;
      v53 = [v52 results];
      if (v53)
      {
        v54 = v53;
        sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
        v55 = sub_26B9AC6F4();
      }

      else
      {
        v55 = MEMORY[0x277D84F90];
      }

      v76 = v45;
      if (v55 >> 62 && sub_26B9ACB44() < 0)
      {
        __break(1u);
        goto LABEL_53;
      }

      v80 = *(v0 + 126);
      v21 = *(v0 + 88);
      v45 = *(v0 + 96);
      v56 = *(v0 + 125);
      v57 = *(v0 + 124);
      v58 = *(v0 + 80);
      sub_26B98BE98(0, 0, v85, &qword_2804263F0, 0x277D4C5D0);

      sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
      v59 = sub_26B9AC6E4();

      v44 = v52;
      [v52 setResults_];

      v86 = v58;
      v87 = v21;
      v88 = v57;
      v89 = v56;
      v90 = v45;
      v91 = v80;
      if (!v82)
      {
        goto LABEL_33;
      }

      v41 = v76;
      if (v76)
      {
        v62 = *(v0 + 80);
        v45 = v77;
        if (v77 < 0)
        {
          v63 = *(v0 + 80);
        }

        if (!sub_26B9ACB44())
        {
          goto LABEL_61;
        }

        if (!sub_26B9ACB44())
        {
          goto LABEL_62;
        }
      }

      else
      {
        v45 = v77;
        if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_33:
          v60 = *(v0 + 96);
          v61 = *(v0 + 80);

          goto LABEL_43;
        }
      }

      if ((v45 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v64 = *(v0 + 96);
      v65 = *(v0 + 80);

      if (v76)
      {
        while (!sub_26B9ACB44())
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          v75 = *(v0 + 80);
        }
      }

LABEL_42:
      sub_26B98BC9C(0, 1);
      v61 = v86;
LABEL_43:
      if (!(v61 >> 62))
      {
        goto LABEL_44;
      }

LABEL_53:
      if ((sub_26B9ACB44() & 0x8000000000000000) == 0)
      {
LABEL_44:
        v66 = *(v0 + 16);
        sub_26B98BE98(0, 0, v44, &qword_280426400, 0x277D4C588);

        *v66 = v86;
        *(v66 + 8) = v87;
        *(v66 + 16) = v88;
        *(v66 + 17) = v89;
        *(v66 + 24) = v90;
        *(v66 + 32) = v91;
        goto LABEL_45;
      }

      __break(1u);
LABEL_55:
      ;
    }

LABEL_57:
    v73 = *(v0 + 96);
    v74 = *(v0 + 80);

    MEMORY[0x26D686B00](0, v74);
    swift_unknownObjectRelease();
    if (v41)
    {
      goto LABEL_63;
    }

    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    goto LABEL_59;
  }

  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = sub_26B9A77DC();
  (*(v5 + 16))(v4, v7, v6);
  v8 = sub_26B9AB564();
  v9 = sub_26B9AC914();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26B8E8000, v8, v9, "Tool not ready, omitting ExecutionRow", v10, 2u);
    MEMORY[0x26D6879F0](v10, -1, -1);
  }

  v83 = *(v0 + 126);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v81 = *(v0 + 125);
  v13 = *(v0 + 124);
  v14 = *(v0 + 80);
  v16 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 32);
  v18 = *(v0 + 16);

  (*(v16 + 8))(v15, v17);
  *v18 = v14;
  *(v18 + 8) = v12;
  *(v18 + 16) = v13;
  *(v18 + 17) = v81;
  *(v18 + 24) = v11;
  *(v18 + 32) = v83;

LABEL_45:
  v67 = *(v0 + 72);
  v68 = *(v0 + 48);

  v69 = *(v0 + 8);

  return v69();
}

uint64_t RunnableParameterQuery.stop(with:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_26B92A538();
  swift_beginAccess();
  v4 = *v3;
  v2[7] = v4;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B98B1E8, v4, 0);
}

uint64_t sub_26B98B1E8()
{
  v1 = v0[6];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 32);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_26B98B314;
  v7 = v0[5];

  return v9(v7, v2, v3);
}

uint64_t sub_26B98B314()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B98B424, v2, 0);
}

uint64_t sub_26B98B424()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B98B484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26B8EB6C8;

  return RunnableParameterQuery.start(with:context:resultHandler:)(a1, a2, a3, a4);
}

uint64_t sub_26B98B540(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_26B92A538();
  swift_beginAccess();
  v4 = *v3;
  v2[7] = v4;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B98B5D0, v4, 0);
}

uint64_t sub_26B98B5D0()
{
  v1 = v0[6];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 32);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_26B98B6FC;
  v7 = v0[5];

  return v9(v7, v2, v3);
}

uint64_t sub_26B98B6FC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B98BF90, v2, 0);
}

uint64_t sub_26B98B80C(uint64_t a1)
{
  result = sub_26B98BB48(&qword_2804270D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B98B850(uint64_t a1)
{
  result = sub_26B98BB48(&qword_2804270D8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B98B894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B98BB48(&qword_280426DC8);

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

double sub_26B98B904@<D0>(uint64_t a1@<X8>)
{
  sub_26B98BB48(&qword_2804270F0);

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B98B96C(uint64_t a1)
{
  result = sub_26B98BB48(&qword_280426DC8);
  *(a1 + 8) = result;
  return result;
}

void sub_26B98B9D8()
{
  sub_26B98BA7C();
  if (v0 <= 0x3F)
  {
    sub_26B9AB984();
    if (v1 <= 0x3F)
    {
      sub_26B98BAE0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_26B98BA7C()
{
  result = qword_2804270E0;
  if (!qword_2804270E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2804270E0);
  }

  return result;
}

void sub_26B98BAE0()
{
  if (!qword_2804270E8)
  {
    sub_26B9294B8(255, &qword_2804272E0, 0x277D4C238);
    v0 = sub_26B9ACA34();
    if (!v1)
    {
      atomic_store(v0, &qword_2804270E8);
    }
  }
}

uint64_t sub_26B98BB48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RunnableParameterQuery();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B98BB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_26B9ACB44();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_26B9ACB44();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_26B98BC9C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_26B9ACB44();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_26B928DFC(result);

  return sub_26B98BB8C(v4, v2, 0);
}

char *sub_26B98BD74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6)
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  sub_26B9294B8(0, a5, a6);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      result = v7[2];
      v17 = &result[-v9];
      if (!__OFSUB__(result, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_26B9ACB44();
    v17 = &result[-v9];
    if (!__OFSUB__(result, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        result = sub_26B9ACB44();
      }

      else
      {
        result = v7[2];
      }

      if (!__OFADD__(result, v13))
      {
        v7[2] = &result[v13];
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
  if (v6 > 0)
  {
    *v8 = v10;
    result = v10;
    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_26B98BE98(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a5;
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v10 = a1;
    v11 = *v6;
    v12 = *v6 >> 62;
    if (!v12)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_26B9ACB44();
  if (result < v9)
  {
    goto LABEL_13;
  }

LABEL_4:
  v14 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12)
  {
    v16 = sub_26B9ACB44();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = (v16 + v15);
  if (!v17)
  {
    sub_26B928DFC(result);
    return sub_26B98BD74(v10, v9, 1, v8, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t SuggestedParameterQuery.toolInvocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B9AB984();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SuggestedParameterQuery.toolInvocation.setter(uint64_t a1)
{
  v3 = sub_26B9AB984();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SuggestedParameterQuery.parameterDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SuggestedParameterQuery() + 20);
  v4 = sub_26B9AC0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SuggestedParameterQuery()
{
  result = qword_280431CA0;
  if (!qword_280431CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SuggestedParameterQuery.parameterDefinition.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SuggestedParameterQuery() + 20);
  v4 = sub_26B9AC0E4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SuggestedParameterQuery.init(toolInvocation:parameterDefinition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26B9AB984();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for SuggestedParameterQuery() + 20);
  v8 = sub_26B9AC0E4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_26B98C324(uint64_t a1)
{
  result = sub_26B98C7C8(&qword_280427100, type metadata accessor for SuggestedParameterQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B98C37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B98C7C8(&qword_280427118, type metadata accessor for SuggestedParameterQuery);
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B98C488(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B98C7C8(&qword_280427118, type metadata accessor for SuggestedParameterQuery);
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B98C56C(uint64_t a1)
{
  result = sub_26B98C7C8(&qword_280427108, type metadata accessor for SuggestedParameterQuery);
  *(a1 + 8) = result;
  return result;
}

double sub_26B98C5C4@<D0>(uint64_t a1@<X8>)
{
  sub_26B98C7C8(&qword_280427110, type metadata accessor for SuggestedParameterQuery);

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B98C640(uint64_t a1)
{
  result = sub_26B98C7C8(&qword_280426E18, type metadata accessor for SuggestedParameterQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B98C698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B98C7C8(&qword_280426E18, type metadata accessor for SuggestedParameterQuery);

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B98C744()
{
  result = sub_26B9AB984();
  if (v1 <= 0x3F)
  {
    result = sub_26B9AC0E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B98C7C8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_26B98C834()
{
  result = [objc_allocWithZone(type metadata accessor for ParameterSuggestionsManager(0)) init];
  qword_280433DF0 = result;
  return result;
}

uint64_t sub_26B98C868(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue(0);
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = sub_26B9ABE84();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = sub_26B9ABFB4();
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v13 = sub_26B9AB984();
  v3[19] = v13;
  v14 = *(v13 - 8);
  v3[20] = v14;
  v15 = *(v14 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = sub_26B9AC804();
  v3[23] = sub_26B9AC7F4();
  v17 = sub_26B9AC7C4();
  v3[24] = v17;
  v3[25] = v16;

  return MEMORY[0x2822009F8](sub_26B98CAA8, v17, v16);
}

uint64_t sub_26B98CAA8()
{
  v1 = v0[22];
  v2 = v0[5];
  v3 = v0[3];
  v4 = sub_26B9AC7F4();
  v0[26] = v4;
  v5 = swift_task_alloc();
  v0[27] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[28] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427120, qword_26B9B5628);
  *v7 = v0;
  v7[1] = sub_26B98CBD0;
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 2, v4, v9, 0xD000000000000023, 0x800000026B9BA270, sub_26B98D998, v5, v8);
}

uint64_t sub_26B98CBD0()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 224);
  v5 = *v1;

  v6 = *(v2 + 216);
  v7 = *(v2 + 208);
  if (v0)
  {

    v8 = *(v3 + 192);
    v9 = *(v3 + 200);
    v10 = sub_26B98D410;
  }

  else
  {

    v8 = *(v3 + 192);
    v9 = *(v3 + 200);
    v10 = sub_26B98CD40;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_26B98CD40()
{
  v90 = v0;
  v1 = v0[23];

  v2 = v0[2];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v0[3];
  v4 = sub_26B9AB954();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v0[14];
    v88 = sub_26B98FEF8(*(v4 + 16), 0);
    v8 = sub_26B990174(&v89, (v88 + ((*(v7 + 80) + 32) & ~*(v7 + 80))), v6, v5);
    sub_26B9471BC();
    if (v8 != v6)
    {
      __break(1u);
LABEL_5:
      v9 = MEMORY[0x277D84F90];
      goto LABEL_40;
    }
  }

  else
  {

    v88 = MEMORY[0x277D84F90];
  }

  v10 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_37;
  }

  v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
LABEL_9:
    v12 = 0;
    v13 = v0[14];
    v14 = v0[11];
    v74 = v0[7];
    v73 = v0[6];
    v84 = v2 & 0xC000000000000001;
    v81 = v2 + 32;
    v86 = (v13 + 8);
    v83 = (v0[20] + 8);
    v77 = (v13 + 88);
    v76 = *MEMORY[0x277D72E38];
    v87 = v13;
    v71 = (v14 + 32);
    v72 = (v13 + 96);
    v69 = (v14 + 8);
    v70 = (v14 + 16);
    v15 = MEMORY[0x277D84F90];
    v79 = v10;
    v80 = v2;
    v78 = v11;
    while (1)
    {
      if (v84)
      {
        MEMORY[0x26D686B00](v12, v2);
        v18 = __OFADD__(v12, 1);
        v19 = v12 + 1;
        if (v18)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_36;
        }

        v20 = *(v81 + 8 * v12);
        sub_26B9AAAE4();
        v18 = __OFADD__(v12, 1);
        v19 = v12 + 1;
        if (v18)
        {
          goto LABEL_35;
        }
      }

      v21 = v0[21];
      v22 = v0[4];
      sub_26B9AB454();
      v23 = sub_26B9AB954();
      v24 = sub_26B9AC0B4();
      v85 = v19;
      if (*(v23 + 16))
      {
        v26 = sub_26B9201A8(v24, v25);
        v28 = v27;

        if (v28)
        {
          v82 = v15;
          v30 = v0[17];
          v29 = v0[18];
          v31 = v0[13];
          v2 = v87;
          v10 = *(v87 + 72);
          v32 = *(v87 + 16);
          v32(v30, *(v23 + 56) + v10 * v26, v31);

          (*(v87 + 32))(v29, v30, v31);
          v33 = -*(v88 + 16);
          v34 = -1;
          v35 = v88;
          while (1)
          {
            if (v33 + v34 == -1)
            {
              v42 = v0[15];
              v43 = v0[13];
              v32(v42, v0[18], v43);
              if ((*v77)(v42, v43) == v76)
              {
                v44 = v0[15];
                v45 = v0[12];
                v47 = v0[9];
                v46 = v0[10];
                v48 = v0[8];
                (*v72)(v44, v0[13]);
                (*v71)(v45, v44, v46);
                (*v70)(v47, v45, v46);
                *(v47 + *(v73 + 20)) = sub_26B9AB464();
                sub_26B990418(v47, v48);
                v15 = v82;
                v10 = v79;
                v2 = v80;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v15 = sub_26B98FD20(0, v82[2] + 1, 1, v82);
                }

                v50 = v15[2];
                v49 = v15[3];
                if (v50 >= v49 >> 1)
                {
                  v15 = sub_26B98FD20(v49 > 1, v50 + 1, 1, v15);
                }

                v51 = v0[21];
                v52 = v0[19];
                v53 = v0[12];
                v54 = v0[9];
                v55 = v0[10];
                v75 = v0[8];

                sub_26B990500(v54, type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue);
                (*v69)(v53, v55);
                (*v83)(v51, v52);
                v15[2] = v50 + 1;
                sub_26B99047C(v75, v15 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v50);
                (*v86)(v0[18], v0[13]);
              }

              else
              {
                v56 = v0[15];
                v57 = v0[13];
                (*v83)(v0[21], v0[19]);

                v58 = *v86;
                (*v86)(v56, v57);
                v10 = v79;
                v2 = v80;
                v15 = v82;
                v58(v0[18], v0[13]);
              }

              goto LABEL_33;
            }

            if (++v34 >= *(v88 + 16))
            {
              break;
            }

            v2 = v35 + v10;
            v36 = v0[18];
            v37 = v0[16];
            v38 = v0[13];
            v32(v37, v35 + ((*(v87 + 80) + 32) & ~*(v87 + 80)), v38);
            LOBYTE(v36) = sub_26B9ABFA4();
            v39 = *(v87 + 8);
            v39(v37, v38);
            v35 = v2;
            if (v36)
            {
              v40 = v0[18];
              v41 = v0[13];
              (*v83)(v0[21], v0[19]);

              v39(v40, v41);
              v10 = v79;
              v2 = v80;
              v15 = v82;
LABEL_33:
              v11 = v78;
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          v11 = sub_26B9ACB44();
          if (!v11)
          {
            break;
          }

          goto LABEL_9;
        }
      }

      else
      {
      }

      v16 = v0[21];
      v17 = v0[19];

      (*v83)(v16, v17);
LABEL_12:
      v12 = v85;
      if (v85 == v11)
      {
        goto LABEL_39;
      }
    }
  }

  v15 = MEMORY[0x277D84F90];
LABEL_39:

  v9 = v15;
LABEL_40:
  v59 = v0[21];
  v60 = v0[17];
  v61 = v0[18];
  v63 = v0[15];
  v62 = v0[16];
  v64 = v0[12];
  v66 = v0[8];
  v65 = v0[9];

  v67 = v0[1];

  return v67(v9);
}

uint64_t sub_26B98D410()
{
  v1 = v0[23];

  v2 = v0[21];
  v3 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[12];
  v9 = v0[8];
  v8 = v0[9];

  v10 = v0[1];
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

uint64_t sub_26B98D4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427150, &qword_26B9B5788);
  v47 = *(v5 - 8);
  v43 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v38 - v6;
  v7 = sub_26B9AB914();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26B9AB984();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26B9AB584();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26B9A77DC();
  (*(v16 + 16))(v19, v20, v15);
  v21 = *(v11 + 16);
  v44 = a2;
  v42 = v10;
  v21(v14, a2, v10);
  v22 = sub_26B9AB564();
  v23 = sub_26B9AC914();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v41 = a3;
    v25 = v24;
    v38 = swift_slowAlloc();
    v51 = v38;
    *v25 = 136315138;
    v39 = v15;
    v26 = v48;
    sub_26B9AB934();
    v27 = sub_26B9AB8E4();
    v40 = v5;
    v29 = v28;
    (*(v49 + 8))(v26, v50);
    (*(v11 + 8))(v14, v42);
    v30 = sub_26B91FC00(v27, v29, &v51);
    v5 = v40;

    *(v25 + 4) = v30;
    _os_log_impl(&dword_26B8E8000, v22, v23, "Fetched suggestions for %s", v25, 0xCu);
    v31 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x26D6879F0](v31, -1, -1);
    MEMORY[0x26D6879F0](v25, -1, -1);

    (*(v16 + 8))(v19, v39);
  }

  else
  {

    (*(v11 + 8))(v14, v42);
    (*(v16 + 8))(v19, v15);
  }

  v32 = v48;
  sub_26B9AB934();
  v33 = v47;
  v34 = v45;
  (*(v47 + 16))(v45, v46, v5);
  v35 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v36 = swift_allocObject();
  (*(v33 + 32))(v36 + v35, v34, v5);
  sub_26B9AB2A4();

  return (*(v49 + 8))(v32, v50);
}

uint64_t sub_26B98D9A0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_26B9AB584();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426218, &qword_26B9B0890) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_26B9AB914();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = sub_26B9AB984();
  v1[10] = v9;
  v10 = *(v9 - 8);
  v1[11] = v10;
  v11 = *(v10 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B98DB5C, 0, 0);
}

uint64_t sub_26B98DB5C()
{
  v1 = v0[13];
  v2 = v0[6];
  (*(v0[8] + 16))(v0[9], v0[2], v0[7]);
  sub_26B95E540(MEMORY[0x277D84F90]);
  v3 = sub_26B9ABAE4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_26B9AB924();
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  sub_26B9AB444();
  v0[14] = sub_26B9AB434();
  (*(v7 + 16))(v5, v4, v6);
  v8 = sub_26B9AB484();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_26B9AB474();
  v0[15] = v11;
  v12 = *(MEMORY[0x277D41FC8] + 4);
  v15 = (*MEMORY[0x277D41FC8] + MEMORY[0x277D41FC8]);
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_26B98DEA4;

  return v15(v11);
}

uint64_t sub_26B98DEA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 120);
  v7 = *(*v2 + 112);
  v8 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v9 = sub_26B98E0DC;
  }

  else
  {
    *(v4 + 144) = a1;
    v9 = sub_26B98E00C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26B98E00C()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = sub_26B9AB494();

  (*(v4 + 8))(v2, v3);
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[9];
  v10 = v0[5];
  v9 = v0[6];

  v11 = v0[1];

  return v11(v5);
}

uint64_t sub_26B98E0DC()
{
  (*(v0[11] + 8))(v0[13], v0[10]);
  v1 = v0[17];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = sub_26B9A77DC();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_26B9AB564();
  v8 = sub_26B9AC934();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26B8E8000, v7, v8, "Failed fetching invocation suggestions: %@", v9, 0xCu);
    sub_26B9422F4(v10);
    MEMORY[0x26D6879F0](v10, -1, -1);
    MEMORY[0x26D6879F0](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[9];
  v17 = v0[5];
  v16 = v0[6];

  v18 = v0[1];

  return v18(0);
}

id sub_26B98E2B0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for ParameterSuggestionsManager(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_26B98E2F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParameterSuggestionsManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26B98E334(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *((*MEMORY[0x277D85000] & *v2) + qword_280433DF8 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_26B98E484;

  return v9(a2);
}

uint64_t sub_26B98E484(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_26B98E594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D6F198] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for ParameterSuggestionsManager(0);
  *v7 = v3;
  v7[1] = sub_26B95B478;

  return MEMORY[0x2821D66E8](a1, v8, a3);
}

uint64_t sub_26B98E64C(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_26B9ABE84();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v7 = sub_26B9ABF24();
  v1[12] = v7;
  v8 = *(v7 - 8);
  v1[13] = v8;
  v9 = *(v8 + 64) + 15;
  v1[14] = swift_task_alloc();
  v10 = *(*(type metadata accessor for TypedValueResultBuilder.Config(0) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v11 = type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue(0);
  v1[16] = v11;
  v12 = *(v11 - 8);
  v1[17] = v12;
  v13 = *(v12 + 64) + 15;
  v1[18] = swift_task_alloc();
  v14 = sub_26B92A538();
  swift_beginAccess();
  v15 = *v14;
  v1[19] = v15;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B98E88C, v15, 0);
}

uint64_t sub_26B98E88C()
{
  *(v0 + 160) = sub_26B9AC804();
  *(v0 + 168) = sub_26B9AC7F4();
  v2 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B98E924, v2, v1);
}

uint64_t sub_26B98E924()
{
  v1 = *(v0 + 168);

  if (qword_280431CB0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_26B98E9BC, v2, 0);
}

uint64_t sub_26B98E9BC()
{
  v1 = *(v0 + 160);
  *(v0 + 176) = sub_26B9AC7F4();
  v3 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B98EA48, v3, v2);
}

uint64_t sub_26B98EA48()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 48);

  v3 = qword_280433DF0;
  v4 = *(type metadata accessor for SuggestedParameterQuery() + 20);
  *(v0 + 248) = v4;
  v9 = ((*MEMORY[0x277D85000] & *v3) + qword_280433DF8);
  v10 = (*v9 + **v9);
  v5 = (*v9)[1];
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_26B98EBBC;
  v7 = *(v0 + 48);

  return v10(v7, v2 + v4);
}

uint64_t sub_26B98EBBC(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_26B98ECD4, v3, 0);
}

uint64_t sub_26B98ECD4()
{
  *(v0 + 40) = MEMORY[0x277D84F90];
  result = *(v0 + 192);
  v2 = *(result + 16);
  *(v0 + 200) = v2;
  if (v2)
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 104);
    *(v0 + 208) = 0;
    if (*(result + 16))
    {
      v6 = *(v0 + 144);
      v7 = *(v0 + 112);
      v31 = *(v0 + 248);
      v32 = *(v0 + 120);
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v10 = *(v0 + 80);
      v11 = *(v0 + 48);
      v30 = v4;
      sub_26B990418(result + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v6);
      sub_26B9ABE54();
      v29 = sub_26B9ABEF4();
      v13 = v12;
      (*(v5 + 8))(v7, v8);
      sub_26B9AB934();
      v14 = sub_26B9AB914();
      (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
      v15 = sub_26B9AC0E4();
      v16 = *(v15 - 8);
      (*(v16 + 16))(v10, v11 + v31, v15);
      (*(v16 + 56))(v10, 0, 1, v15);
      sub_26B964AE0(v29, v13, v9, v10, *(v6 + *(v30 + 20)), 0, v32);
      v17 = swift_task_alloc();
      *(v0 + 216) = v17;
      *v17 = v0;
      v17[1] = sub_26B98EFB8;
      v18 = *(v0 + 144);
      v19 = *(v0 + 72);

      return static ToolKitUtilities.hydrate(typedValue:parameterDefinition:)(v19, v18, v11 + v31);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = *(v0 + 144);
    v21 = *(v0 + 152);
    v23 = *(v0 + 112);
    v22 = *(v0 + 120);
    v25 = *(v0 + 80);
    v24 = *(v0 + 88);
    v26 = *(v0 + 72);

    v27 = *(v0 + 40);

    v28 = *(v0 + 8);

    return v28(v27);
  }

  return result;
}

uint64_t sub_26B98EFB8()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 144);
  v4 = *v0;

  sub_26B990500(v3, type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue);
  type metadata accessor for TypedValueResultBuilder(0);
  v5 = swift_task_alloc();
  v1[28] = v5;
  *v5 = v4;
  v5[1] = sub_26B98F154;
  v6 = v1[15];
  v7 = v1[9];

  return sub_26B9653AC(v7, v6);
}

uint64_t sub_26B98F154(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = v4[24];
    v8 = v4[19];
    v9 = v4[5];

    v10 = sub_26B98F5E0;
    v11 = v8;
  }

  else
  {
    v11 = v4[19];
    v4[30] = a1;
    v10 = sub_26B98F2A0;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_26B98F2A0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 120);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 208) + 1;
  sub_26B98F6D0(*(v0 + 240));
  (*(v4 + 8))(v3, v5);
  result = sub_26B990500(v2, type metadata accessor for TypedValueResultBuilder.Config);
  if (v6 == v1)
  {
    v8 = *(v0 + 192);
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = *(v0 + 72);

    v16 = *(v0 + 40);

    v17 = *(v0 + 8);

    return v17(v16);
  }

  else
  {
    v18 = *(v0 + 208) + 1;
    *(v0 + 208) = v18;
    v19 = *(v0 + 192);
    if (v18 >= *(v19 + 16))
    {
      __break(1u);
    }

    else
    {
      v36 = *(v0 + 248);
      v20 = *(v0 + 144);
      v37 = *(v0 + 128);
      v21 = *(v0 + 112);
      v38 = *(v0 + 120);
      v22 = *(v0 + 96);
      v23 = *(v0 + 104);
      v25 = *(v0 + 80);
      v24 = *(v0 + 88);
      v26 = *(v0 + 48);
      sub_26B990418(v19 + ((*(*(v0 + 136) + 80) + 32) & ~*(*(v0 + 136) + 80)) + *(*(v0 + 136) + 72) * v18, v20);
      sub_26B9ABE54();
      v35 = sub_26B9ABEF4();
      v28 = v27;
      (*(v23 + 8))(v21, v22);
      sub_26B9AB934();
      v29 = sub_26B9AB914();
      (*(*(v29 - 8) + 56))(v24, 0, 1, v29);
      v30 = sub_26B9AC0E4();
      v31 = *(v30 - 8);
      (*(v31 + 16))(v25, v26 + v36, v30);
      (*(v31 + 56))(v25, 0, 1, v30);
      sub_26B964AE0(v35, v28, v24, v25, *(v20 + *(v37 + 20)), 0, v38);
      v32 = swift_task_alloc();
      *(v0 + 216) = v32;
      *v32 = v0;
      v32[1] = sub_26B98EFB8;
      v33 = *(v0 + 144);
      v34 = *(v0 + 72);

      return static ToolKitUtilities.hydrate(typedValue:parameterDefinition:)(v34, v33, v26 + v36);
    }
  }

  return result;
}

uint64_t sub_26B98F5E0()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];

  (*(v8 + 8))(v7, v9);
  sub_26B990500(v3, type metadata accessor for TypedValueResultBuilder.Config);

  v10 = v0[1];
  v11 = v0[29];

  return v10();
}

uint64_t sub_26B98F6D0(unint64_t a1)
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
  sub_26B98FFF4(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

uint64_t static SuggestedParameterQueryDataSource.invalidateCaches()()
{
  v1 = sub_26B92A538();
  swift_beginAccess();
  v2 = *v1;
  *(v0 + 40) = v2;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B98F84C, v2, 0);
}

uint64_t sub_26B98F84C()
{
  *(v0 + 48) = sub_26B9AC804();
  *(v0 + 56) = sub_26B9AC7F4();
  v2 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B98F8E4, v2, v1);
}

uint64_t sub_26B98F8E4()
{
  v1 = *(v0 + 56);

  if (qword_280431CB0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_26B98F97C, v2, 0);
}

uint64_t sub_26B98F97C()
{
  v1 = *(v0 + 48);
  *(v0 + 64) = sub_26B9AC7F4();
  v3 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B98FA08, v3, v2);
}

uint64_t sub_26B98FA08()
{
  v1 = v0[8];
  v2 = v0[5];

  v0[9] = qword_280433DF0;

  return MEMORY[0x2822009F8](sub_26B98FA80, v2, 0);
}

uint64_t sub_26B98FA80()
{
  v1 = *(v0 + 48);
  *(v0 + 80) = sub_26B9AC7F4();
  v3 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B98FB0C, v3, v2);
}

uint64_t sub_26B98FB0C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[5];

  sub_26B9AB294();

  return MEMORY[0x2822009F8](sub_26B905DD8, v3, 0);
}

uint64_t SuggestedParameterQueryDataSource.__deallocating_deinit()
{
  ToolKitQueryDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26B98FBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26B8F40D4;

  return v12(a1, a2, a3);
}

size_t sub_26B98FD20(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427140, &qword_26B9B5778);
  v10 = *(type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_26B98FEF8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427148, &qword_26B9B5780);
  v4 = *(sub_26B9ABFB4() - 8);
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

uint64_t sub_26B98FFF4(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_26B99091C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427130, &unk_26B9B5760);
            v9 = sub_26B928E9C(v13, i, a3);
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
        sub_26B979750();
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

uint64_t sub_26B990174(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_26B9ABFB4();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_26B990418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B99047C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B990500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26B990564()
{
  result = qword_280427128;
  if (!qword_280427128)
  {
    sub_26B9AB914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427128);
  }

  return result;
}

void sub_26B99062C()
{
  sub_26B9ABE84();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ATXParameterSuggestionContext(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t dispatch thunk of SuggestedParameterQueryDataSource.fetchResults(for:sessionPool:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26B990820;

  return v12(a1, a2, a3);
}

uint64_t sub_26B990820(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_26B99091C()
{
  result = qword_280427138;
  if (!qword_280427138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280427130, &unk_26B9B5760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427138);
  }

  return result;
}

uint64_t sub_26B990980(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427150, &qword_26B9B5788) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  if (*a1)
  {
    v4 = *a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427150, &qword_26B9B5788);
  return sub_26B9AC7E4();
}

uint64_t TypedValueResultQuery.typedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B9ABE84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TypedValueResultQuery.typedValue.setter(uint64_t a1)
{
  v3 = sub_26B9ABE84();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TypedValueResultQuery.invocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TypedValueResultQuery() + 20);
  v4 = sub_26B9AB984();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TypedValueResultQuery()
{
  result = qword_280431F70;
  if (!qword_280431F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TypedValueResultQuery.invocation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TypedValueResultQuery() + 20);
  v4 = sub_26B9AB984();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double TypedValueResultQuery.platterBehavior.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_26B90585C();
  v3 = sub_26B906128();
  static ResultPlatterBehavior.userAdjustable(range:preferredHeight:canPersist:includeFilterBarHeight:animated:)(0x4084000000000000, 0, v2 & 1, v3 & 1, v6, 0.0, 5000.0);
  BYTE3(v7) = 1;
  v4 = v6[1];
  *a1 = v6[0];
  a1[1] = v4;
  result = *&v7;
  a1[2] = v7;
  return result;
}

uint64_t TypedValueResultQuery.init(typedValue:invocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26B9ABE84();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for TypedValueResultQuery() + 20);
  v8 = sub_26B9AB984();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

double sub_26B990E44@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_26B90585C();
  v3 = sub_26B906128();
  static ResultPlatterBehavior.userAdjustable(range:preferredHeight:canPersist:includeFilterBarHeight:animated:)(0x4084000000000000, 0, v2 & 1, v3 & 1, v6, 0.0, 5000.0);
  BYTE3(v7) = 1;
  v4 = v6[1];
  *a1 = v6[0];
  a1[1] = v4;
  result = *&v7;
  a1[2] = v7;
  return result;
}

uint64_t sub_26B990EBC(uint64_t a1)
{
  result = sub_26B99128C(&qword_280427160, type metadata accessor for TypedValueResultQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B990F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B99128C(&qword_280427170, type metadata accessor for TypedValueResultQuery);
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}