id _sSo14MPMediaLibraryC10PodcastsUIE05totalC14AssetsFileSizeSivg_0()
{
  v0 = *MEMORY[0x277CD5790];
  v1 = sub_21B4CA668();
  v2 = [objc_opt_self() predicateWithValue:v1 forProperty:v0];
  swift_unknownObjectRelease();

  v3 = [objc_opt_self() podcastsQuery];
  [v3 setFilterPropertyPredicate_];
  v4 = [v3 items];
  if (v4)
  {
    sub_21B3F12CC(0, &qword_2811FCD98);
    v5 = sub_21B4C9928();

    v4 = _sSo14MPMediaLibraryC10PodcastsUIE4size2ofSiSaySo0A4ItemCG_tF_0(v5);
  }

  else
  {
  }

  return v4;
}

uint64_t sub_21B451C08()
{
  v0 = sub_21B4C7558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isPodcastsApp] & 1) != 0 || (objc_msgSend(objc_opt_self(), sel_canExtensionOpenDatabase))
  {
    return 1;
  }

  sub_21B4C7528();
  v5 = sub_21B4C7538();
  v6 = sub_21B4C9CE8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21B365000, v5, v6, "Cannot open Podcasts database, outstanding questions are undefined", v7, 2u);
    MEMORY[0x21CEF5710](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_21B451D80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21B40998C;

  return sub_21B450EE8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21B451E74()
{
  v1 = v0[88];
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 privateQueueContext];
  v0[89] = v3;

  v4 = swift_allocObject();
  v0[90] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87958);
  swift_asyncLet_begin();
  v0[91] = [objc_opt_self() defaultMediaLibrary];

  return MEMORY[0x282200930](v0 + 2, v0 + 87, sub_21B451FB0, v0 + 82);
}

uint64_t sub_21B451FB0()
{
  *(v1 + 736) = v0;
  if (v0)
  {
    v2 = sub_21B452220;
  }

  else
  {
    v2 = sub_21B451FE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B451FE4()
{
  v1 = *(v0 + 696);
  v2 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  v4 = *(v0 + 728);

  if (v3)
  {
    v9 = 0;
    do
    {
      v10 = v9;
      while (1)
      {
        if (v10 >= *(v1 + 16))
        {
          __break(1u);
          return MEMORY[0x282200920](v5, v6, v7, v8);
        }

        v11 = *(v1 + 32 + 8 * v10);
        v5 = [*(v0 + 728) itemExistsWithPersistentID_];
        if (v5)
        {
          v5 = [*(v0 + 728) itemWithPersistentID_];
          if (v5)
          {
            break;
          }
        }

        if (v3 == ++v10)
        {
          goto LABEL_11;
        }
      }

      MEMORY[0x21CEF3050]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B4C9948();
      }

      v9 = v10 + 1;
      v5 = sub_21B4C9988();
      v2 = v14;
    }

    while (v3 - 1 != v10);
  }

LABEL_11:
  v12 = *(v0 + 728);

  *(v0 + 744) = _sSo14MPMediaLibraryC10PodcastsUIE4size2ofSiSaySo0A4ItemCG_tF_0(v2);

  v7 = sub_21B452190;
  v5 = (v0 + 16);
  v6 = v0 + 696;
  v8 = v0 + 656;

  return MEMORY[0x282200920](v5, v6, v7, v8);
}

uint64_t sub_21B4521AC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 744);

  return v1(v2);
}

uint64_t sub_21B452220()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 696, sub_21B45228C, v0 + 656);
}

uint64_t sub_21B4522A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B452348(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21B40998C;

  return sub_21B451748(a1, v5, v4);
}

uint64_t OSSignposter.init(subsystem:category:)(uint64_t a1)
{
  sub_21B4C9488();
  sub_21B4C73D8();
  v2 = sub_21B4C9498();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t OSSignposter.init(subsystem:category:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B4CA158();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C9488();
  (*(v5 + 16))(v7, a2, v4);
  sub_21B4C73E8();
  (*(v5 + 8))(a2, v4);
  v8 = sub_21B4C9498();
  return (*(*(v8 - 8) + 8))(a1, v8);
}

uint64_t static MediaSpaceCalculator.spaceOccupied(by:managedObjectContext:mediaLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_21B45263C, 0, 0);
}

uint64_t sub_21B45263C()
{
  if ([objc_opt_self() isRunningOnDesktop])
  {
    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    *v1 = v0;
    v1[1] = sub_21B452780;
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    v4 = *(v0 + 16);

    return sub_21B452A14(v4, v2, v3);
  }

  else
  {
    v6 = (*(v0 + 40))();
    *(v0 + 72) = v6;
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_21B452874;
    v8 = *(v0 + 24);
    v9 = *(v0 + 32);
    v10 = *(v0 + 16);

    return sub_21B453350(v10, v8, v9, v6);
  }
}

uint64_t sub_21B452780()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21B452874()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21B4529B0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21B4529B0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B452A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_21B4C7558();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_21B4C6188();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_21B4C5748();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v7 = sub_21B4C9F88();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B452BF8, 0, 0);
}

uint64_t sub_21B452BF8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_allocObject();
  v0[20] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v7 = v5;

  v8 = swift_task_alloc();
  v0[21] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87970);
  *v8 = v0;
  v8[1] = sub_21B452D38;
  v10 = v0[19];

  return MEMORY[0x28210EE50](v0 + 2, v10, sub_21B4540C0, v6, v9);
}

uint64_t sub_21B452D38()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  (*(v2[18] + 8))(v2[19], v2[17]);

  if (v0)
  {
    v3 = sub_21B4532B8;
  }

  else
  {
    v3 = sub_21B452EBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_21B452EBC()
{
  v43 = v0;
  v1 = v0[2];
  v40 = *(v1 + 16);
  if (v40)
  {
    v2 = 0;
    v39 = v0[14];
    v36 = (v0[8] + 8);
    v32 = (v0[11] + 8);
    v3 = v0[22];
    v38 = (v39 + 8);
    v37 = 0;
    v31 = v0[2];
    while (v2 < *(v1 + 16))
    {
      v5 = *(v39 + 16);
      v5(v0[16], v1 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v2, v0[13]);
      sub_21B4C5628();
      if (v3)
      {
        v6 = v0[15];
        v7 = v0[16];
        v8 = v0[13];
        sub_21B4C7528();
        v5(v6, v7, v8);
        v9 = v3;
        v10 = sub_21B4C7538();
        v11 = sub_21B4C9CE8();

        v12 = os_log_type_enabled(v10, v11);
        v13 = v0[15];
        v41 = v0[13];
        v14 = v0[9];
        v15 = v0[7];
        if (v12)
        {
          v16 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v42[0] = v34;
          *v16 = 136315394;
          v0[3] = v3;
          v17 = v3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970);
          v18 = sub_21B4C9758();
          v35 = v14;
          v33 = v15;
          v20 = sub_21B36CF74(v18, v19, v42);

          *(v16 + 4) = v20;
          *(v16 + 12) = 2080;
          v21 = sub_21B4C5658();
          v23 = v22;
          v4 = *v38;
          (*v38)(v13, v41);
          v24 = sub_21B36CF74(v21, v23, v42);

          *(v16 + 14) = v24;
          _os_log_impl(&dword_21B365000, v10, v11, "Failed to compute file size of file (%s: '%s'", v16, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CEF5710](v34, -1, -1);
          v25 = v16;
          v1 = v31;
          MEMORY[0x21CEF5710](v25, -1, -1);

          (*v36)(v35, v33);
        }

        else
        {

          v4 = *v38;
          (*v38)(v13, v41);
          (*v36)(v14, v15);
        }
      }

      else
      {
        v26 = v0[12];
        v27 = v0[10];
        v28 = sub_21B4C6168();
        (*v32)(v26, v27);
        v29 = __CFADD__(v37, v28);
        v37 += v28;
        if (v29)
        {
          goto LABEL_15;
        }

        v4 = *v38;
      }

      ++v2;
      v4(v0[16], v0[13]);
      v3 = 0;
      if (v40 == v2)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_11:

    sub_21B4C6158();

    v30 = v0[1];

    v30();
  }
}

uint64_t sub_21B4532B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B453350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_21B4C9F88();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B453414, 0, 0);
}

uint64_t sub_21B453414()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v7 = v5;

  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87978);
  *v8 = v0;
  v8[1] = sub_21B453554;
  v10 = v0[9];

  return MEMORY[0x28210EE50](v0 + 2, v10, sub_21B4540DC, v6, v9);
}

uint64_t sub_21B453554()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_21B4539E0;
  }

  else
  {
    v5 = sub_21B4536E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21B4536E8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v6 = *v3++;
      v5 = v6;
      if ((v6 & 0x8000000000000000) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_21B3F22F4(0, *(v4 + 2) + 1, 1, v4);
        }

        v8 = *(v4 + 2);
        v7 = *(v4 + 3);
        if (v8 >= v7 >> 1)
        {
          v4 = sub_21B3F22F4((v7 > 1), v8 + 1, 1, v4);
        }

        *(v4 + 2) = v8 + 1;
        *&v4[8 * v8 + 32] = v5;
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v9 = *(v0 + 48);

  v10 = *(v4 + 2);
  result = v9;
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  while (v10 != v12)
  {
    if (v12 >= *(v4 + 2))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    v15 = *&v4[8 * v12++ + 32];
    result = [*(v0 + 48) itemExistsWithPersistentID_];
    if (result)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B3F2EB4(0, *(v14 + 16) + 1, 1);
      }

      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_21B3F2EB4((v16 > 1), v17 + 1, 1);
      }

      *(v14 + 16) = v17 + 1;
      *(v14 + 8 * v17 + 32) = v15;
      v13 = MEMORY[0x277D84F90];
    }
  }

  v18 = *(v0 + 48);

  v25 = v13;
  v19 = *(v14 + 16);
  result = v18;
  v20 = 0;
  while (v19 != v20)
  {
    if (v20 >= *(v14 + 16))
    {
      goto LABEL_32;
    }

    v21 = v20 + 1;
    result = [*(v0 + 48) itemWithPersistentID_];
    v20 = v21;
    if (result)
    {
      MEMORY[0x21CEF3050]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B4C9948();
      }

      result = sub_21B4C9988();
      v13 = v25;
      v20 = v21;
    }
  }

  v22 = *(v0 + 48);

  v23 = _sSo14MPMediaLibraryC10PodcastsUIE4size2ofSiSaySo0A4ItemCG_tF_0(v13);

  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  sub_21B4C6158();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_21B4539E0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_21B453A44@<X0>(void *a1@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  result = sub_21B4C9F78();
  if (v1)
  {
    return result;
  }

  v5 = result;
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_17:

    *a1 = MEMORY[0x277D84F90];
    return result;
  }

  v6 = sub_21B4CA4B8();
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_4:
  result = sub_21B3F2EE4(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v3;
    if ((v5 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        v9 = [MEMORY[0x21CEF3AB0](i v5)];
        swift_unknownObjectRelease();
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_21B3F2EE4((v10 > 1), v11 + 1, 1);
        }

        *(v7 + 16) = v11 + 1;
        *(v7 + 8 * v11 + 32) = v9;
      }
    }

    else
    {
      v12 = 32;
      do
      {
        v13 = [*(v5 + v12) persistentID];
        v18 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          v16 = a1;
          v17 = v13;
          sub_21B3F2EE4((v14 > 1), v15 + 1, 1);
          v13 = v17;
          a1 = v16;
          v7 = v18;
        }

        *(v7 + 16) = v15 + 1;
        *(v7 + 8 * v15 + 32) = v13;
        v12 += 8;
        --v6;
      }

      while (v6);
    }

    *a1 = v7;
  }

  return result;
}

unint64_t sub_21B453C40@<X0>(void *a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v38 - v3;
  v5 = sub_21B4C5748();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v38 - v10;
  result = sub_21B4C9F78();
  if (!v1)
  {
    v13 = result;
    v40 = v11;
    v38[1] = 0;
    v42 = v5;
    if (result >> 62)
    {
      goto LABEL_40;
    }

    v44 = result & 0xFFFFFFFFFFFFFF8;
    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21B4CA4B8())
    {
      v43 = v8;
      v41 = v6;
      if (i)
      {
        v6 = 0;
        v8 = (v13 & 0xC000000000000001);
        v45 = MEMORY[0x277D84F90];
        v15 = v42;
        do
        {
          v16 = v6;
          while (1)
          {
            if (v8)
            {
              v17 = MEMORY[0x21CEF3AB0](v16, v13);
              v6 = (v16 + 1);
              if (__OFADD__(v16, 1))
              {
                goto LABEL_37;
              }
            }

            else
            {
              if (v16 >= *(v44 + 16))
              {
                goto LABEL_38;
              }

              v17 = *(v13 + 8 * v16 + 32);
              v6 = (v16 + 1);
              if (__OFADD__(v16, 1))
              {
LABEL_37:
                __break(1u);
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }
            }

            v18 = v17;
            v19 = [v18 assetURL];
            if (v19)
            {
              break;
            }

            ++v16;
            if (v6 == i)
            {
              goto LABEL_23;
            }
          }

          v20 = v19;
          v21 = sub_21B4C9708();
          v23 = v22;

          v24 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_21B36CCAC(0, *(v45 + 2) + 1, 1, v45);
          }

          v26 = *(v45 + 2);
          v25 = *(v45 + 3);
          if (v26 >= v25 >> 1)
          {
            v45 = sub_21B36CCAC((v25 > 1), v26 + 1, 1, v45);
          }

          v27 = v45;
          *(v45 + 2) = v26 + 1;
          v28 = &v27[16 * v26];
          *(v28 + 4) = v21;
          *(v28 + 5) = v24;
          v15 = v42;
        }

        while (v6 != i);
      }

      else
      {
        v45 = MEMORY[0x277D84F90];
        v15 = v42;
      }

LABEL_23:

      v29 = v45;
      v30 = *(v45 + 2);
      if (!v30)
      {
        break;
      }

      v31 = 0;
      v6 = v41 + 6;
      v8 = (v41 + 4);
      v13 = (v45 + 40);
      v32 = MEMORY[0x277D84F90];
      v44 = *(v45 + 2);
      while (v31 < *(v29 + 2))
      {

        sub_21B4C5718();

        if ((*v6)(v4, 1, v15) == 1)
        {
          sub_21B40C1F4(v4);
        }

        else
        {
          v33 = *v8;
          v34 = v40;
          (*v8)(v40, v4, v15);
          v33(v43, v34, v15);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_21B3F23F8(0, v32[2] + 1, 1, v32);
          }

          v36 = v32[2];
          v35 = v32[3];
          if (v36 >= v35 >> 1)
          {
            v32 = sub_21B3F23F8(v35 > 1, v36 + 1, 1, v32);
          }

          v32[2] = v36 + 1;
          v37 = v32 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + v41[9] * v36;
          v15 = v42;
          v33(v37, v43, v42);
          v30 = v44;
        }

        ++v31;
        v13 += 16;
        v29 = v45;
        if (v30 == v31)
        {
          goto LABEL_35;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      v44 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v32 = MEMORY[0x277D84F90];
LABEL_35:

    *v39 = v32;
  }

  return result;
}

double MTPodcastEpisodeLimit.jsRepresentation(in:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = a1;
  v3 = MEMORY[0x277D225A0];
  *(a2 + 24) = MEMORY[0x277D839F8];
  *(a2 + 32) = v3;
  *a2 = a1;
  return result;
}

double sub_21B454118@<D0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D225A0];
  result = *v1;
  *(a1 + 24) = MEMORY[0x277D839F8];
  *(a1 + 32) = v2;
  *a1 = result;
  return result;
}

void sub_21B454140(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_21B489488(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t StorageAnalyticsResponder.init(asPartOf:)()
{
  sub_21B4C6AF8();
  sub_21B4C8808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD875B0);
  sub_21B4C8808();
  sub_21B4C6EA8();
}

double StorageSpace.jsRepresentation(in:)@<D0>(uint64_t a1@<X8>)
{
  result = sub_21B4C6168();
  v3 = MEMORY[0x277D225A0];
  *(a1 + 24) = MEMORY[0x277D839F8];
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

double sub_21B454238@<D0>(uint64_t a1@<X8>)
{
  result = sub_21B4C6168();
  v3 = MEMORY[0x277D225A0];
  *(a1 + 24) = MEMORY[0x277D839F8];
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t AdamID.jsRepresentation(in:)@<X0>(uint64_t *a1@<X8>)
{
  sub_21B391890();
  result = sub_21B4CA268();
  v3 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v3;
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21B4542FC@<X0>(uint64_t *a1@<X8>)
{
  sub_21B391890();
  result = sub_21B4CA268();
  v3 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v3;
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AdamID.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  sub_21B4C8508();
  if (v6)
  {
    v7 = sub_21B4C7218();
    if (!v2)
    {
      v3 = v7;

      v12 = sub_21B4C85C8();
      (*(*(v12 - 8) + 8))(a2, v12);
      v13 = sub_21B4C8518();
      (*(*(v13 - 8) + 8))(a1, v13);
      return v3;
    }
  }

  else
  {
    v3 = sub_21B4C94E8();
    sub_21B4107C0();
    swift_allocError();
    v8 = MEMORY[0x277D84F90];
    *v9 = MEMORY[0x277D3D918];
    v9[1] = v8;
    (*(*(v3 - 8) + 104))(v9, *MEMORY[0x277D22538], v3);
    swift_willThrow();
  }

  v10 = sub_21B4C85C8();
  (*(*(v10 - 8) + 8))(a2, v10);
  v11 = sub_21B4C8518();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v3;
}

uint64_t sub_21B45453C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AdamID.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *static ContentID.from(ambiguousID:entityName:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_21B4C7218();
  if (sub_21B4C7228())
  {
    v9 = sub_21B454700(a1, a2, a5);
    if (v9)
    {
      return v9;
    }

    else
    {

      return a1;
    }
  }

  return v8;
}

void sub_21B454620(uint64_t a1, id a2)
{
  v3 = [a2 persistentStoreCoordinator];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21B4C5688();
    v6 = [v4 managedObjectIDForURIRepresentation_];
  }

  else
  {
    v6 = 0;
  }

  swift_beginAccess();
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
}

void sub_21B4546D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21B489DD0(a1, a2);
  if (!v3)
  {
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
  }
}

void *sub_21B454700(uint64_t a1, uint64_t a2, void *a3)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_21B4C5748();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (!a3)
  {
    return 0;
  }

  v14 = a3;
  sub_21B4C5718();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_21B40C1F4(v6);
    return 0;
  }

  v16 = *(v8 + 32);
  v16(v13, v6, v7);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v26 = objc_opt_self();
  v27 = v8;
  (*(v8 + 16))(v10, v13, v7);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v14;
  v16((v19 + v18), v10, v7);
  aBlock[4] = sub_21B454A9C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B36CDB8;
  aBlock[3] = &block_descriptor_6;
  v20 = _Block_copy(aBlock);
  v21 = v14;

  aBlock[0] = 0;
  [v26 perform:v20 error:aBlock];
  _Block_release(v20);
  v22 = aBlock[0];
  if (aBlock[0])
  {
    swift_willThrow();
    v23 = v22;

    (*(v27 + 8))(v13, v7);

    return 0;
  }

  else
  {
    (*(v27 + 8))(v13, v7);

    swift_beginAccess();
    v24 = *(v17 + 16);
    v25 = v24;

    return v24;
  }
}

void sub_21B454A9C()
{
  sub_21B4C5748();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_21B454620(v1, v2);
}

void sub_21B454B00(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_21B48A248(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

void sub_21B454B2C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_21B48A27C(a1, a2);
  if (!v3)
  {
    *a3 = v5 & 1;
  }
}

void sub_21B454B5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21B48A2B0(a1, a2);
  if (!v3)
  {
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = v8;
  }
}

uint64_t sub_21B454B90()
{
  v0 = sub_21B4C67F8();
  __swift_allocate_value_buffer(v0, qword_27CD87980);
  __swift_project_value_buffer(v0, qword_27CD87980);
  sub_21B4555F8(&qword_27CD879A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD879B0);
  sub_21B45563C();
  return sub_21B4CA298();
}

uint64_t static DeviceCapabilitiesEnvironmentKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD864B0 != -1)
  {
    swift_once();
  }

  v2 = sub_21B4C67F8();
  v3 = __swift_project_value_buffer(v2, qword_27CD87980);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DeviceCapabilitiesEnvironmentKey.defaultValue.setter(uint64_t a1)
{
  if (qword_27CD864B0 != -1)
  {
    swift_once();
  }

  v2 = sub_21B4C67F8();
  v3 = __swift_project_value_buffer(v2, qword_27CD87980);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DeviceCapabilitiesEnvironmentKey.defaultValue.modify())()
{
  if (qword_27CD864B0 != -1)
  {
    swift_once();
  }

  v0 = sub_21B4C67F8();
  __swift_project_value_buffer(v0, qword_27CD87980);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21B454E98@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD864B0 != -1)
  {
    swift_once();
  }

  v2 = sub_21B4C67F8();
  v3 = __swift_project_value_buffer(v2, qword_27CD87980);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_21B454F58(uint64_t a1)
{
  if (qword_27CD864B0 != -1)
  {
    swift_once();
  }

  v2 = sub_21B4C67F8();
  v3 = __swift_project_value_buffer(v2, qword_27CD87980);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_21B455020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21B4555F8(&qword_27CD879A0);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.deviceCapabilities.getter()
{
  sub_21B4550E8();

  return sub_21B4C7BC8();
}

unint64_t sub_21B4550E8()
{
  result = qword_27CD87998;
  if (!qword_27CD87998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87998);
  }

  return result;
}

uint64_t sub_21B45513C(uint64_t a1)
{
  v2 = sub_21B4C67F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  sub_21B4550E8();
  sub_21B4C7BD8();
  return (*(v3 + 8))(v9, v2);
}

uint64_t EnvironmentValues.deviceCapabilities.setter(uint64_t a1)
{
  v2 = sub_21B4C67F8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_21B4550E8();
  sub_21B4C7BD8();
  return (*(v3 + 8))(a1, v2);
}

void (*EnvironmentValues.deviceCapabilities.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_21B4C67F8();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  v5[6] = sub_21B4550E8();
  sub_21B4C7BC8();
  return sub_21B4554BC;
}

void sub_21B4554BC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[5];
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[1];
  v9 = v3[2];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_21B4C7BD8();
    v10 = *(v9 + 8);
    v10(v6, v8);
    v10(v5, v8);
  }

  else
  {
    sub_21B4C7BD8();
    (*(v9 + 8))(v5, v8);
  }

  free(v5);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_21B4555F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21B4C67F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B45563C()
{
  result = qword_27CD879B8;
  if (!qword_27CD879B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD879B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD879B8);
  }

  return result;
}

void sub_21B4556A0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_21B48A72C(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

void sub_21B4556CC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_21B48ABE0(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

void sub_21B4556F8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_21B48AC14(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t InterestObserverProvider.init(asPartOf:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D60);
  sub_21B4C8808();
  v0 = [v3 privateQueueContext];
  v1 = sub_21B4C6DA8();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t InterestRepository.init(asPartOf:)()
{
  sub_21B4C6258();
  sub_21B4C8808();
  sub_21B4C6888();
  sub_21B4C8808();
  v0 = sub_21B4C6828();

  return v0;
}

uint64_t InterestStateController.init(asPartOf:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D60);
  sub_21B4C8808();
  sub_21B4C70A8();
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_21B4C7098();

  v0 = sub_21B4C6CC8();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t InterestStore.init(asPartOf:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D60);
  sub_21B4C8808();
  v0 = [v3 privateQueueContext];
  v1 = sub_21B4C6248();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_21B4559C4()
{
  sub_21B455A9C();
  result = sub_21B4C6118();
  qword_2811FD5C8 = result;
  unk_2811FD5D0 = v1;
  return result;
}

uint64_t sub_21B455A40(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

unint64_t sub_21B455A9C()
{
  result = qword_2811FF0B8[0];
  if (!qword_2811FF0B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811FF0B8);
  }

  return result;
}

void sub_21B455AF0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_21B48AC48(a1, a2);
  if (!v3)
  {
    *a3 = v5 & 1;
  }
}

uint64_t static RegexComponent<>.anyCaseOf<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v16[-v9];
  sub_21B4CA348();
  v20 = a2;
  v21 = a3;
  v22 = a4;
  KeyPath = swift_getKeyPath();
  v17 = a3;
  v18 = a4;
  v19 = KeyPath;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_21B37705C(sub_21B455CF8, v16, AssociatedTypeWitness, MEMORY[0x277D835B0], MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v13);

  (*(v8 + 8))(v10, AssociatedTypeWitness);
  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87A80);
  sub_21B455D24();
  sub_21B4C5BC8();
}

unint64_t sub_21B455D24()
{
  result = qword_2811FCDF8;
  if (!qword_2811FCDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD87A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FCDF8);
  }

  return result;
}

uint64_t ChoiceOf<A>.init<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v45 = a3;
  v50 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C70);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v37 - v7;
  v48 = sub_21B4C5BA8();
  v44 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87A88);
  v9 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v37 - v16;
  sub_21B4CA348();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_21B4C9C08();
  if (result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  MEMORY[0x28223BE20](result);
  *(&v37 - 4) = a1;
  *(&v37 - 3) = a2;
  *(&v37 - 2) = v45;
  v41 = v17;
  result = sub_21B37705C(sub_21B4562C8, (&v37 - 6), AssociatedTypeWitness, MEMORY[0x277D837D0], MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v20);
  v21 = *(result + 16);
  v22 = v21 != 0;
  if (v21)
  {
    v38 = v15;
    v39 = AssociatedTypeWitness;
    v23 = *(result + 32);
    v24 = *(result + 40);
    v42 = result;
    v52 = v23;
    v53 = v24;
    v45 = sub_21B381264();
    sub_21B4C5A58();
    v43 = v9;
    v25 = *(v9 + 16);
    v40 = v13;
    result = v25(v50, v13, v51);
    if (v21 == 1)
    {
LABEL_7:

      (*(v43 + 8))(v40, v51);
      return (*(v38 + 8))(v41, v39);
    }

    ++v44;
    v26 = (v43 + 8);
    v27 = (v43 + 32);
    v28 = v21 - v22;
    v29 = (v42 + 16 * v22 + 40);
    v30 = v50;
    while (v28)
    {
      v31 = *v29;
      v52 = *(v29 - 1);
      v53 = v31;

      v32 = v47;
      sub_21B4C5A98();
      sub_21B4562EC();
      v33 = v49;
      v34 = MEMORY[0x277D83E40];
      v35 = v51;
      sub_21B4C5B48();
      (*v44)(v32, v48);
      v36 = v46;
      MEMORY[0x21CEEF230](v33, v34);

      (*v26)(v30, v35);
      result = (*v27)(v30, v36, v35);
      v29 += 2;
      if (!--v28)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_21B456250()
{
  sub_21B4C98C8();
  v2[0] = v2[2];
  v2[1] = v2[3];
  v0 = sub_21B381264();
  MEMORY[0x21CEEF190](v2, MEMORY[0x277D837D0], v0);
}

unint64_t sub_21B4562EC()
{
  result = qword_2811FD6C8;
  if (!qword_2811FD6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD87A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD6C8);
  }

  return result;
}

uint64_t sub_21B456350()
{
  result = sub_21B4C8088();
  qword_27CD87A90 = result;
  return result;
}

uint64_t sub_21B456498(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  a2();
  v4 = sub_21B4C8098();

  *a3 = v4;
  return result;
}

uint64_t sub_21B456514(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_21B456628@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  if (*a1 != -1)
  {
    v9 = a2;
    swift_once();
    a2 = v9;
  }

  v4 = *a2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87AB8) + 36);
  v6 = *MEMORY[0x277CE13B8];
  v7 = sub_21B4C81F8();
  (*(*(v7 - 8) + 104))(&a3[v5], v6, v7);
  *a3 = v4;
}

unint64_t sub_21B4566EC()
{
  result = qword_27CD87AC0;
  if (!qword_27CD87AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD87AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87AC0);
  }

  return result;
}

uint64_t Color.init(_:)()
{
  v0 = sub_21B4C8068();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  return sub_21B4C80B8();
}

uint64_t Color.init(hexString:opacity:)(double a1)
{
  v2 = sub_21B4C8068();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21B4C72C8();
  v7 = a1 * 255.0;
  if (COERCE__INT64(fabs(a1 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 256.0)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
    return sub_21B4C80B8();
  }

LABEL_7:
  __break(1u);
  return result;
}

double EdgeInsets.replacing(_:with:)(double a1, double a2)
{
  v4 = sub_21B4C7DD8();
  sub_21B4C7E08();
  if (sub_21B4C7E08() == v4)
  {
    a2 = a1;
  }

  sub_21B4C7DF8();
  sub_21B4C7E08();
  sub_21B4C7E08();
  sub_21B4C7DE8();
  sub_21B4C7E08();
  sub_21B4C7E08();
  sub_21B4C7E18();
  sub_21B4C7E08();
  sub_21B4C7E08();
  return a2;
}

id NSLayoutAnchor.constraint(equalTo:constant:priority:)(uint64_t a1, double a2, float a3)
{
  v5 = [v3 constraintEqualToAnchor:a1 constant:?];
  *&v6 = a3;
  [v5 setPriority_];
  return v5;
}

id sub_21B456B3C(void *a1, double a2, float a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v10 = NSLayoutAnchor.constraint(equalTo:constant:priority:)(v8, a2, a3);

  return v10;
}

uint64_t UIButton.pui_shouldBeHidden.getter()
{
  v1 = [v0 titleForState_];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21B4C9708();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = [v0 imageForState_];
  if (v8)
  {
  }

  else if (v7)
  {
    return 1;
  }

  return 0;
}

id UIColor.clampedDarkColor.getter()
{
  v7 = v0;
  sub_21B3AA190(v7, v8);
  if (v9)
  {

    return v7;
  }

  else
  {
    v2 = *&v8[3];
    v4 = *v8;
    v3 = *&v8[1];
    v5 = fmin(*&v8[2], 0.7);
    v6 = objc_allocWithZone(MEMORY[0x277D75348]);

    return [v6 initWithHue:v4 saturation:v3 brightness:v5 alpha:v2];
  }
}

id UIColor.clampedLightColor.getter()
{
  sub_21B3AA190(v0, &v3);
  if (v7)
  {
    return 0;
  }

  v2 = v5;
  if (v5 > 0.94 && (v2 = 0.94, v4 < 0.15))
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v3 saturation:fmin(v4 brightness:0.15) alpha:{v2, v6}];
  }
}

uint64_t UIColor.RGBAInterpolator.floatInterpolator.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

int8x16_t UIColor.RGBAInterpolator.init(value1:value2:floatInterpolator:)@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int8x16_t *a5@<X8>)
{
  v10 = objc_opt_self();
  v11 = [v10 traitCollectionWithUserInterfaceStyle_];
  v12 = [v10 traitCollectionWithUserInterfaceStyle_];
  v13 = [a1 resolvedColorWithTraitCollection_];
  UIColor.rgbaComponents.getter(v41);
  v37 = v41[0];
  v39 = v41[1];

  if (v42)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  v15 = vdupq_n_s64(v14);
  v40 = vbslq_s8(v15, xmmword_21B4D1A50, v39);
  v38 = vbicq_s8(v37, v15);
  v16 = [a2 resolvedColorWithTraitCollection_];
  UIColor.rgbaComponents.getter(v43);
  v33 = v43[0];
  v35 = v43[1];

  if (v44)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v18 = vdupq_n_s64(v17);
  v36 = vbslq_s8(v18, xmmword_21B4D1A50, v35);
  v34 = vbicq_s8(v33, v18);
  v19 = [a1 resolvedColorWithTraitCollection_];
  UIColor.rgbaComponents.getter(v45);
  v29 = v45[0];
  v31 = v45[1];

  if (v46)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21 = vdupq_n_s64(v20);
  v32 = vbslq_s8(v21, xmmword_21B4D1A50, v31);
  v30 = vbicq_s8(v29, v21);
  v22 = [a2 resolvedColorWithTraitCollection_];
  UIColor.rgbaComponents.getter(v47);
  v27 = v47[1];
  v28 = v47[0];

  if (v48)
  {
    v23 = -1;
  }

  else
  {
    v23 = 0;
  }

  v24 = vdupq_n_s64(v23);
  v25 = vbicq_s8(v28, v24);
  result = vbslq_s8(v24, xmmword_21B4D1A50, v27);
  *a5 = v38;
  a5[1] = v40;
  a5[2] = v34;
  a5[3] = v36;
  a5[4] = v30;
  a5[5] = v32;
  a5[6] = v25;
  a5[7] = result;
  a5[8].i64[0] = a3;
  a5[8].i64[1] = a4;
  return result;
}

id UIColor.RGBAInterpolator.value(forInput:)(double a1)
{
  v3 = v1[7];
  v18[6] = v1[6];
  v18[7] = v3;
  v18[8] = v1[8];
  v4 = v1[3];
  v18[2] = v1[2];
  v18[3] = v4;
  v5 = v1[5];
  v18[4] = v1[4];
  v18[5] = v5;
  v6 = v1[1];
  v18[0] = *v1;
  v18[1] = v6;
  v7 = swift_allocObject();
  v8 = v1[7];
  *(v7 + 112) = v1[6];
  *(v7 + 128) = v8;
  *(v7 + 144) = v1[8];
  v9 = v1[3];
  *(v7 + 48) = v1[2];
  *(v7 + 64) = v9;
  v10 = v1[5];
  *(v7 + 80) = v1[4];
  *(v7 + 96) = v10;
  v11 = v1[1];
  *(v7 + 16) = *v1;
  *(v7 + 32) = v11;
  *(v7 + 160) = a1;
  v12 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_21B457300;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B385440;
  aBlock[3] = &block_descriptor_7;
  v13 = _Block_copy(aBlock);
  sub_21B45730C(v18, &v16);
  v14 = [v12 initWithDynamicProvider_];
  _Block_release(v13);

  return v14;
}

id sub_21B457198(void *a1, unint64_t *a2, double a3)
{
  v5 = [a1 userInterfaceStyle];
  v7 = 7;
  v8 = 6;
  v9 = 5;
  v10 = 4;
  v11 = 3;
  v12 = 2;
  v13 = 1;
  v14 = a2 + 8;
  if (v5 != 2)
  {
    v14 = a2;
  }

  v15 = a2[16];
  if (v5 == 2)
  {
    v13 = 9;
    v12 = 10;
    v11 = 11;
    v10 = 12;
    v9 = 13;
    v8 = 14;
    v7 = 15;
  }

  v16 = *&a2[v13];
  v17 = *&a2[v12];
  v18 = *&a2[v11];
  v19 = *&a2[v9];
  v20 = *&a2[v8];
  v21 = *&a2[v7];
  v6.n128_u64[0] = *v14;
  v22 = (v15)(104, 96, 88, v6, *&a2[v10], a3);
  v23 = v15(v16, v19, a3);
  v24 = v15(v17, v20, a3);
  v25 = v15(v18, v21, a3);
  v26 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v26 initWithRed:v22 green:v23 blue:v24 alpha:v25];
}

unint64_t sub_21B457348()
{
  result = qword_27CD87AC8;
  if (!qword_27CD87AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87AC8);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_21B4573C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B457410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double UIColor.contrastRatio(with:)(void *a1)
{
  v3 = [v1 CGColor];
  UISColorLuminance();
  v5 = v4;

  v6 = [a1 CGColor];
  UISColorLuminance();
  v8 = v7;

  if (v5 >= v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  if (v5 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  return (v9 + 0.05) / (v10 + 0.05);
}

id static UIColor.tertiaryBackgroundColor.getter()
{
  v0 = [objc_opt_self() tertiarySystemBackgroundColor];

  return v0;
}

id UIColor.init(_:)(unsigned int a1)
{
  v2 = HIBYTE(a1);
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v3 initWithRed:a1 / 255.0 green:BYTE1(a1) / 255.0 blue:BYTE2(a1) / 255.0 alpha:v2 / 255.0];
}

id UIColor.rgbaComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = 0xBFF0000000000000;
  v11[0] = 0xBFF0000000000000;
  v8 = 0xBFF0000000000000;
  v9 = 0xBFF0000000000000;
  result = [v1 getRed:v11 green:&v10 blue:&v9 alpha:&v8];
  if (result)
  {
    v5 = v10;
    v4 = v11[0];
    v7 = v8;
    v6 = v9;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = result ^ 1;
  return result;
}

id sub_21B457698(void *a1, void *a2, void *a3)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  return v5;
}

double UIColor.relativeLuminance.getter()
{
  v1 = [v0 CGColor];
  UISColorLuminance();
  v3 = v2;

  return v3;
}

double static UIColor.contrastRatio(between:and:)(void *a1, void *a2)
{
  v3 = [a1 CGColor];
  UISColorLuminance();
  v5 = v4;

  v6 = [a2 CGColor];
  UISColorLuminance();
  v8 = v7;

  if (v5 >= v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  if (v5 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  return (v9 + 0.05) / (v10 + 0.05);
}

id UIColor.GrayscaleComponents.color.getter(double a1, double a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v4 initWithWhite:a1 alpha:a2];
}

uint64_t UIColor.GrayscaleComponents.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x21CEF3E70](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x21CEF3E70](*&v3);
}

uint64_t UIColor.GrayscaleComponents.hashValue.getter(double a1, double a2)
{
  sub_21B4CA6E8();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x21CEF3E70](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x21CEF3E70](*&v5);
  return sub_21B4CA738();
}

uint64_t sub_21B457984()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21B4CA6E8();
  UIColor.GrayscaleComponents.hash(into:)(v1, v2);
  return sub_21B4CA738();
}

uint64_t sub_21B4579E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21B4CA6E8();
  UIColor.GrayscaleComponents.hash(into:)(v1, v2);
  return sub_21B4CA738();
}

uint64_t UIColor.grayscaleComponents.getter()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = 0xBFF0000000000000;
  v5[0] = 0xBFF0000000000000;
  v1 = [v0 getWhite:v5 alpha:&v4];
  v2 = v5[0];
  if (!v1)
  {
    return 0;
  }

  return v2;
}

id UIColor.backgroundColorSuitableForWhiteText.getter()
{
  v11 = v0;
  sub_21B3AA190(v11, &v12);
  if (v15)
  {
    v1 = v11;
LABEL_3:

    return v1;
  }

  v1 = v11;
  v4 = v12;
  v3 = v13;
  if (v13 >= 0.4 || v14 <= 0.7)
  {
    if (v14 <= 0.8)
    {
      goto LABEL_3;
    }

    v6 = objc_allocWithZone(MEMORY[0x277D75348]);
    v8 = 1.0;
    v9 = v4;
    v10 = v3;
    v7 = 0.8;
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x277D75348]);
    v7 = 0.7;
    v8 = 1.0;
    v9 = v4;
    v10 = v3;
  }

  return [v6 initWithHue:v9 saturation:v10 brightness:v7 alpha:v8];
}

id UIColor.fadedBackgroundColor.getter()
{
  v13 = v0;
  sub_21B3AA190(v13, &v15);
  if (v19)
  {

    return v13;
  }

  else
  {
    v2 = v18;
    v3 = v15;
    v4 = v16;
    v5 = fmin(v16, 0.08);
    if (v17 > 0.94)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0.94;
    }

    v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v15 saturation:v5 brightness:v6 alpha:v18];
    v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v3 saturation:fmin(v4 brightness:0.4) alpha:{0.12, v2}];
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v10 = objc_allocWithZone(MEMORY[0x277D75348]);
    aBlock[4] = sub_21B4585C8;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B385440;
    aBlock[3] = &block_descriptor_7;
    v11 = _Block_copy(aBlock);
    v12 = [v10 initWithDynamicProvider_];
    _Block_release(v11);

    return v12;
  }
}

id UIColor.addingBrightness(amount:)(double a1)
{
  v9 = v1;
  sub_21B3AA190(v9, v10);
  if (v13)
  {

    return v9;
  }

  else
  {
    v4 = v12;
    v6 = *v10;
    v5 = *&v10[1];
    if (v11 + a1 > 0.0)
    {
      v7 = v11 + a1;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = objc_allocWithZone(MEMORY[0x277D75348]);

    return [v8 initWithHue:v6 saturation:v5 brightness:v7 alpha:v4];
  }
}

id UIColor.clampedBrightness(min:max:)(double a1, double a2)
{
  v11 = v2;
  sub_21B3AA190(v11, v12);
  if (v14)
  {
    result = v11;
LABEL_16:

    return result;
  }

  result = v11;
  if (a1 > a2)
  {
    __break(1u);
    return result;
  }

  v6 = v13;
  if (v13 >= a1 && v13 <= a2)
  {
    goto LABEL_16;
  }

  v8 = *v12;
  v9 = *&v12[1];
  if (v13 > a2)
  {
    v6 = a2;
  }

  if (v6 > a1)
  {
    a1 = v6;
  }

  v10 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v10 initWithHue:v8 saturation:v9 brightness:a1 alpha:1.0];
}

id UIColor.RGBAComponents.color.getter(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v8 initWithRed:a1 green:a2 blue:a3 alpha:a4];
}

BOOL static UIColor.RGBAComponents.== infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

uint64_t UIColor.RGBAComponents.hash(into:)(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x21CEF3E70](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x21CEF3E70](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x21CEF3E70](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x21CEF3E70](*&v9);
}

uint64_t UIColor.RGBAComponents.hashValue.getter(double a1, double a2, double a3, double a4)
{
  sub_21B4CA6E8();
  UIColor.RGBAComponents.hash(into:)(a1, a2, a3, a4);
  return sub_21B4CA738();
}

uint64_t sub_21B458174()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_21B4CA6E8();
  UIColor.RGBAComponents.hash(into:)(v1, v2, v3, v4);
  return sub_21B4CA738();
}

uint64_t sub_21B4581E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_21B4CA6E8();
  UIColor.RGBAComponents.hash(into:)(v1, v2, v3, v4);
  return sub_21B4CA738();
}

id UIColor.hexColor.getter()
{
  result = UIColor.rgbaComponents.getter(&v7);
  v1 = v11;
  if (v11)
  {
    v2 = 0;
LABEL_16:
    LOBYTE(v7) = v1 & 1;
    return (v2 | ((v1 & 1) << 32));
  }

  if (v7 * 255.0 <= -1.0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v7 * 255.0 >= 256.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 * 255.0 <= -1.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v8 * 255.0 >= 256.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9 * 255.0 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v9 * 255.0 >= 256.0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v3 = COERCE_UNSIGNED_INT64(fabs(v9 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL;
  v4 = COERCE_UNSIGNED_INT64(fabs(v8 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL;
  v5 = v10 * 255.0;
  v6 = COERCE_UNSIGNED_INT64(fabs(v10 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE_UNSIGNED_INT64(fabs(v7 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL || v4 || v3 || v6)
  {
    goto LABEL_23;
  }

  if (v5 <= -1.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 < 256.0)
  {
    v2 = sub_21B4C72B8();
    goto LABEL_16;
  }

LABEL_25:
  __break(1u);
  return result;
}

id UIColor.init(hexString:alpha:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_21B4C5428();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[2] = a1;
  v12[3] = a2;
  sub_21B4C53C8();
  sub_21B3A5DF0();
  sub_21B4CA208();
  (*(v7 + 8))(v9, v6);

  result = sub_21B4C72C8();
  v11 = a3 * 255.0;
  if (COERCE__INT64(fabs(a3 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v11 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v11 < 256.0)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:result / 255.0 green:BYTE1(result) / 255.0 blue:BYTE2(result) / 255.0 alpha:v11 / 255.0];
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_21B4585C8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ([a1 userInterfaceStyle] == 2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

unint64_t sub_21B458610()
{
  result = qword_27CD87AD0;
  if (!qword_27CD87AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87AD0);
  }

  return result;
}

unint64_t sub_21B458668()
{
  result = qword_27CD87AD8;
  if (!qword_27CD87AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87AD8);
  }

  return result;
}

uint64_t UIEdgeInsets.Edge.hashValue.getter()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

double UIEdgeInsets.updating(edge:by:)(_BYTE *a1, double a2, double a3)
{
  if (*a1)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2 + a3;
  }

  if (*a1 <= 1u)
  {
    return v3;
  }

  else
  {
    return a3;
  }
}

double UIEdgeInsets.replacing(edge:with:)(_BYTE *a1, double a2, double a3)
{
  if (*a1 <= 1u && !*a1)
  {
    return a2;
  }

  return a3;
}

unint64_t sub_21B458808()
{
  result = qword_27CD87AE0;
  if (!qword_27CD87AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87AE0);
  }

  return result;
}

double UIEdgeInsets.init(top:leading:bottom:trailing:layoutDirection:)(unint64_t a1, double result)
{
  if (a1 > 1)
  {
    v11[4] = v7;
    v11[5] = v6;
    v11[6] = v5;
    v11[7] = v4;
    v11[10] = v2;
    v11[11] = v3;
    v9 = result;
    type metadata accessor for UIUserInterfaceLayoutDirection(0);
    v11[3] = v10;
    v11[0] = a1;
    unrecognizedEnumValueEncountered(_:)(v11);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v9;
  }

  return result;
}

uint64_t UIUserInterfaceStyle.oppositeStyle.getter(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_21B4D6458[a1];
  }
}

Swift::Void __swiftcall UINavigationController.clearBottomPaletteIfNeeded()()
{
  v1 = [v0 topViewController];
  if (v1)
  {
    v6 = v1;
    v2 = [v1 navigationItem];
    v3 = [v2 _bottomPalette];

    if (v3)
    {

      v4 = [v6 navigationItem];
      [v4 _setBottomPalette_];

      v5 = v4;
    }

    else
    {
      v5 = v6;
    }
  }
}

uint64_t UIResponder.responderChain.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87AE8);
  result = swift_allocObject();
  *(result + 16) = sub_21B458B44;
  *(result + 24) = v2;
  *a1 = result;
  return result;
}

uint64_t sub_21B458AA0@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  swift_beginAccess();
  *(v2 + 16) = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87AF0);
  result = swift_allocObject();
  *(result + 16) = sub_21B458DD0;
  *(result + 24) = v2;
  *a1 = result;
  return result;
}

uint64_t UIResponder.firstViewInResponderChain.getter()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v0 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v1 = swift_allocObject();
  swift_beginAccess();
  *(v1 + 16) = swift_unknownObjectWeakLoadStrong();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87AF0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_21B458D64;
  *(inited + 24) = v1;
  sub_21B39A344(v1, &v7);
  for (i = v7; v7; i = v7)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x21CEF3050]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B4C9948();
      }

      sub_21B4C9988();
      v0 = v8;
    }

    else
    {
    }

    sub_21B39A344(v1, &v7);
  }

  if (!(v0 >> 62))
  {
    if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_16:

    return 0;
  }

  result = sub_21B4CA4B8();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v0 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x21CEF3AB0](0, v0);
    goto LABEL_14;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v0 + 32);
LABEL_14:
    v6 = v5;

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_21B458D6C()
{
  result = qword_27CD87AF8;
  if (!qword_27CD87AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD87B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87AF8);
  }

  return result;
}

BOOL UIScrollView.isScrolledToTop.getter()
{
  [v0 contentOffset];
  v2 = v1;
  [v0 adjustedContentInset];
  return v2 + v3 <= 0.001;
}

uint64_t UIView.superviewChain.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B08);
  result = swift_allocObject();
  *(result + 16) = sub_21B459BF0;
  *(result + 24) = v2;
  *a1 = result;
  return result;
}

uint64_t sub_21B458EAC@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  swift_beginAccess();
  *(v2 + 16) = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876E0);
  result = swift_allocObject();
  *(result + 16) = sub_21B459DC0;
  *(result + 24) = v2;
  *a1 = result;
  return result;
}

uint64_t UIView.firstCollectionViewCell.getter()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v0 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v1 = swift_allocObject();
  swift_beginAccess();
  *(v1 + 16) = swift_unknownObjectWeakLoadStrong();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876E0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_21B4358FC;
  *(inited + 24) = v1;
  sub_21B39A3D0(v1, &v7);
  for (i = v7; v7; i = v7)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x21CEF3050]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B4C9948();
      }

      sub_21B4C9988();
      v0 = v8;
    }

    else
    {
    }

    sub_21B39A3D0(v1, &v7);
  }

  if (!(v0 >> 62))
  {
    if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_16:

    return 0;
  }

  result = sub_21B4CA4B8();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v0 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x21CEF3AB0](0, v0);
    goto LABEL_14;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v0 + 32);
LABEL_14:
    v6 = v5;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t IndexPath.safeSection.getter()
{
  v0 = sub_21B4C5988();
  if (v0 == 2)
  {
    return sub_21B4C5978();
  }

  if (v0 < 1)
  {
    return 0;
  }

  sub_21B4C5998();
  sub_21B459BF8();
  sub_21B4C9BC8();
  sub_21B4C9C18();
  result = 0;
  if (v5[4] != v5[0])
  {
    v2 = sub_21B4C9C38();
    v4 = *v3;
    v2(v5, 0);
    return v4;
  }

  return result;
}

uint64_t UIView.layoutMarginsSubviewConstraints(_:insets:edges:)(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87158);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21B4D64B0;
  v14 = [a1 trailingAnchor];
  if ((a2 & 8) != 0)
  {
    v16 = [v6 layoutMarginsGuide];
    v15 = [v16 trailingAnchor];
  }

  else
  {
    v15 = [v6 trailingAnchor];
  }

  v17 = [v14 constraintEqualToAnchor:v15 constant:-a6];

  *(v13 + 32) = v17;
  v18 = [a1 leadingAnchor];
  if ((a2 & 2) != 0)
  {
    v20 = [v6 layoutMarginsGuide];
    v19 = [v20 leadingAnchor];
  }

  else
  {
    v19 = [v6 leadingAnchor];
  }

  v21 = [v18 constraintEqualToAnchor:v19 constant:a4];

  *(v13 + 40) = v21;
  v22 = [a1 topAnchor];
  if (a2)
  {
    v24 = [v6 layoutMarginsGuide];
    v23 = [v24 topAnchor];
  }

  else
  {
    v23 = [v6 topAnchor];
  }

  v25 = [v22 constraintEqualToAnchor:v23 constant:a3];

  *(v13 + 48) = v25;
  v26 = [a1 bottomAnchor];
  if ((a2 & 4) != 0)
  {
    v28 = [v6 layoutMarginsGuide];
    v27 = [v28 bottomAnchor];
  }

  else
  {
    v27 = [v6 bottomAnchor];
  }

  v29 = [v26 constraintEqualToAnchor:v27 constant:-a5];

  *(v13 + 56) = v29;
  return v13;
}

void sub_21B45956C(void *a1, uint64_t a2, char a3, SEL *a4, double a5, double a6, double a7, double a8)
{
  v10 = v8;
  v18 = [a1 superview];
  if (!v18 || (v19 = v18, sub_21B3F12CC(0, &qword_2811FCAE0), v20 = v8, v21 = sub_21B4CA098(), v19, v20, (v21 & 1) == 0))
  {
    [v10 *a4];
  }

  v22 = [a1 superview];
  if (!v22 || (v23 = v22, sub_21B3F12CC(0, &qword_2811FCAE0), v24 = v10, v25 = sub_21B4CA098(), v23, v24, (v25 & 1) == 0))
  {
    [v10 addSubview_];
  }

  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  if (a3)
  {
    UIView.layoutMarginsSubviewConstraints(_:insets:edges:)(a1, 15, a5, a6, a7, a8);
  }

  else
  {
    UIView.fullSizeSubviewConstraints(_:insets:)(a1, a5, a6, a7, a8);
  }

  v26 = objc_opt_self();
  sub_21B3F12CC(0, &qword_2811FCCB8);
  v27 = sub_21B4C9918();

  [v26 activateConstraints_];
}

uint64_t UIView.constrainSubview(_:insets:respectingSafeArea:respectingKeyboardSafeArea:)(void *a1, char a2, char a3, double a4, double a5, double a6, double a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87158);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21B4D64C0;
  v16 = [a1 topAnchor];
  if (a2)
  {
    v17 = [v7 safeAreaLayoutGuide];
    v18 = [v17 topAnchor];
  }

  else
  {
    v18 = [v7 topAnchor];
  }

  v19 = [v16 constraintEqualToAnchor:v18 constant:a4];

  *(v15 + 32) = v19;
  v20 = [a1 leadingAnchor];
  if (a2)
  {
    v21 = [v7 safeAreaLayoutGuide];
    v22 = [v21 leadingAnchor];
  }

  else
  {
    v22 = [v7 leadingAnchor];
  }

  v23 = [v20 constraintEqualToAnchor:v22 constant:a5];

  *(v15 + 40) = v23;
  v24 = [a1 trailingAnchor];
  if (a2)
  {
    v25 = [v7 safeAreaLayoutGuide];
    v26 = [v25 trailingAnchor];
  }

  else
  {
    v26 = [v7 trailingAnchor];
  }

  v27 = [v24 constraintEqualToAnchor:v26 constant:a7];

  *(v15 + 48) = v27;
  v28 = [a1 bottomAnchor];
  if (a3)
  {
    v29 = [v7 keyboardLayoutGuide];
    v30 = [v29 topAnchor];
LABEL_14:
    v31 = v30;

    goto LABEL_16;
  }

  if (a2)
  {
    v29 = [v7 safeAreaLayoutGuide];
    v30 = [v29 bottomAnchor];
    goto LABEL_14;
  }

  v31 = [v7 bottomAnchor];
LABEL_16:
  v32 = [v28 constraintEqualToAnchor:v31 constant:a6];

  v33 = v32;
  MEMORY[0x21CEF3050]();
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21B4C9948();
  }

  sub_21B4C9988();
  v34 = objc_opt_self();
  sub_21B3F12CC(0, &qword_2811FCCB8);
  v35 = sub_21B4C9918();
  [v34 activateConstraints_];

  return v15;
}

void (*sub_21B459B68(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CEF3AB0](a2, a3);
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
    return sub_21B459BE8;
  }

  __break(1u);
  return result;
}

unint64_t sub_21B459BF8()
{
  result = qword_27CD87B10;
  if (!qword_27CD87B10)
  {
    sub_21B4C5998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87B10);
  }

  return result;
}

unint64_t sub_21B459C50()
{
  result = qword_27CD87B18;
  if (!qword_27CD87B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD87B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87B18);
  }

  return result;
}

uint64_t (*sub_21B459CB4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CEF3AB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_21B459D34;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_21B459D3C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CEF3AB0](a2, a3);
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
    return sub_21B459DBC;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall UIViewController.addAndConstrainChild(_:useLayoutMargins:)(UIViewController *_, Swift::Bool useLayoutMargins)
{
  v3 = v2;
  [v2 addChildViewController_];
  v6 = [v2 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [(UIViewController *)_ view];
  if (!v8)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = MEMORY[0x277D75060];
  v11 = [(UIView *)v8 superview];
  if (!v11 || (v12 = v11, sub_21B3F12CC(0, &qword_2811FCAE0), v13 = v7, v14 = sub_21B4CA098(), v12, v13, (v14 & 1) == 0))
  {
    [v7 addSubview_];
  }

  v16 = *v10;
  v15 = v10[1];
  v18 = v10[2];
  v17 = v10[3];
  [(UIView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (useLayoutMargins)
  {
    UIView.layoutMarginsSubviewConstraints(_:insets:edges:)(v9, 15, v16, v15, v18, v17);
  }

  else
  {
    UIView.fullSizeSubviewConstraints(_:insets:)(v9, v16, v15, v18, v17);
  }

  v19 = objc_opt_self();
  sub_21B3F12CC(0, &qword_2811FCCB8);
  v20 = sub_21B4C9918();

  [v19 activateConstraints_];

  [(UIViewController *)_ didMoveToParentViewController:v3];
}

id sub_21B459FD0(void *a1, uint64_t a2, char a3, SEL *a4)
{
  v6 = v4;
  v9 = a1;
  [v4 addChildViewController_];
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  result = [v9 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = [result superview];
  if (!v13 || (v14 = v13, sub_21B3F12CC(0, &qword_2811FCAE0), v15 = v9, v16 = v4, v17 = a4, v18 = a2, v19 = a3, v20 = v11, v21 = sub_21B4CA098(), v14, v20, a3 = v19, a2 = v18, a4 = v17, v6 = v16, v9 = v15, (v21 & 1) == 0))
  {
    [v11 *a4];
  }

  v22 = MEMORY[0x277D75060];
  v23 = [v12 superview];
  if (!v23 || (v24 = v23, sub_21B3F12CC(0, &qword_2811FCAE0), v25 = v11, v26 = sub_21B4CA098(), v24, v25, (v26 & 1) == 0))
  {
    [v11 addSubview_];
  }

  v28 = *v22;
  v27 = v22[1];
  v30 = v22[2];
  v29 = v22[3];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  if (a3)
  {
    UIView.layoutMarginsSubviewConstraints(_:insets:edges:)(v12, 15, v28, v27, v30, v29);
  }

  else
  {
    UIView.fullSizeSubviewConstraints(_:insets:)(v12, v28, v27, v30, v29);
  }

  v31 = objc_opt_self();
  sub_21B3F12CC(0, &qword_2811FCCB8);
  v32 = sub_21B4C9918();

  [v31 activateConstraints_];

  return [v9 didMoveToParentViewController_];
}

uint64_t sub_21B45A268()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_21B4C7328();
  __swift_allocate_value_buffer(v3, qword_27CD87B28);
  __swift_project_value_buffer(v3, qword_27CD87B28);
  sub_21B4C7318();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return sub_21B4C7308();
}

uint64_t static UTType.jetpack.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD864E8 != -1)
  {
    swift_once();
  }

  v2 = sub_21B4C7328();
  v3 = __swift_project_value_buffer(v2, qword_27CD87B28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_21B45A428()
{
  result = qword_27CD87B48;
  if (!qword_27CD87B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD87B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87B48);
  }

  return result;
}

uint64_t sub_21B45A48C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_21B3982B0(0, v1, 0);
  v2 = v29;
  v3 = a1 + 56;
  result = sub_21B4CA2A8();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v27 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v28 = *(v6 + 36);
    v11 = v6;
    sub_21B391890();
    result = sub_21B4CA268();
    v13 = v2;
    v30 = v2;
    v14 = *(v2 + 16);
    v15 = *(v13 + 24);
    if (v14 >= v15 >> 1)
    {
      v24 = v12;
      v25 = result;
      sub_21B3982B0((v15 > 1), v14 + 1, 1);
      v12 = v24;
      result = v25;
      v13 = v30;
    }

    *(v13 + 16) = v14 + 1;
    v16 = v13 + 16 * v14;
    *(v16 + 32) = result;
    *(v16 + 40) = v12;
    v8 = 1 << *(v11 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v11;
    v2 = v13;
    if (v28 != *(v11 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v27;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 64 + 8 * v10);
      v9 = v27;
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_21B45EBB4(v5, v28, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_21B45EBB4(v5, v28, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21B45A6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B70);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B78);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B88);
  MEMORY[0x28223BE20](v12 - 8);
  v79 = v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B90);
  MEMORY[0x28223BE20](v14 - 8);
  v81 = v64 - v15;
  v16 = sub_21B4C5EA8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21B4C7558();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C74B8();
  v80 = a1;

  v24 = sub_21B4C7538();
  v25 = sub_21B4C9D08();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = *(v80 + 16);

    _os_log_impl(&dword_21B365000, v24, v25, "Fetching state for %ld episodes", v26, 0xCu);
    MEMORY[0x21CEF5710](v26, -1, -1);
  }

  else
  {
  }

  (*(v21 + 8))(v23, v20);
  v27 = *MEMORY[0x277D3D490];
  v28 = *(v17 + 104);
  v74 = v19;
  v28(v19, v27, v16);
  v29 = *MEMORY[0x277D3D4B8];
  v30 = sub_21B4C5EC8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 104);
  v33 = v81;
  v67 = v29;
  v32(v81, v29, v30);
  v68 = v32;
  v69 = v31 + 104;
  v34 = *(v31 + 56);
  v66 = v30;
  v34(v33, 0, 1, v30);
  v35 = sub_21B4C5F48();
  (*(*(v35 - 8) + 56))(v79, 1, 1, v35);
  v36 = sub_21B4C5EE8();
  (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B98);
  v37 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F20) - 8);
  v38 = *v37;
  v70 = *(*v37 + 72);
  v65 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v39 = v65;
  v40 = swift_allocObject();
  v82 = xmmword_21B4D2830;
  *(v40 + 16) = xmmword_21B4D2830;
  v73 = v11;
  v41 = v40 + v39;
  v72 = v37[14];
  v32((v40 + v39), v29, v30);
  v64[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87BA0);
  v42 = sub_21B4C5EF8();
  v64[0] = v42;
  v43 = *(v42 - 8);
  v64[1] = *(v43 + 72);
  v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v82;
  v46 = *(v43 + 104);
  v46(v45 + v44, *MEMORY[0x277D3D4F8], v42);
  *(v41 + v72) = v45;
  v72 = sub_21B40D4B4(v40);
  swift_setDeallocating();
  sub_21B3F2D94(v41, &qword_27CD86F20);
  swift_deallocClassInstance();
  v47 = v65;
  v48 = swift_allocObject();
  *(v48 + 16) = v82;
  v49 = v48 + v47;
  v50 = v37[14];
  v68((v48 + v47), v67, v66);
  v51 = swift_allocObject();
  *(v51 + 16) = v82;
  v46(v51 + v44, *MEMORY[0x277D3D500], v64[0]);
  *(v49 + v50) = v51;
  *&v82 = sub_21B40D4B4(v48);
  swift_setDeallocating();
  sub_21B3F2D94(v49, &qword_27CD86F20);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87BA8);
  v52 = sub_21B4C5F08();
  v53 = *(v52 - 8);
  v54 = *(v53 + 72);
  v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v56 = swift_allocObject();
  v71 = v56;
  *(v56 + 16) = xmmword_21B4D1CD0;
  v57 = v56 + v55;
  v58 = *(v53 + 104);
  v58(v57, *MEMORY[0x277D3D510], v52);
  v58(v57 + v54, *MEMORY[0x277D3D520], v52);
  v58(v57 + 2 * v54, *MEMORY[0x277D3D518], v52);
  v58(v57 + 3 * v54, *MEMORY[0x277D3D508], v52);
  v58(v57 + 4 * v54, *MEMORY[0x277D3D528], v52);
  v80 = sub_21B45A48C(v80);
  v59 = sub_21B4C5ED8();
  (*(*(v59 - 8) + 56))(v75, 1, 1, v59);
  v60 = sub_21B4C5F38();
  (*(*(v60 - 8) + 56))(v76, 1, 1, v60);
  v61 = sub_21B4C5748();
  (*(*(v61 - 8) + 56))(v77, 1, 1, v61);
  v62 = MEMORY[0x277D84F90];
  v70 = sub_21B45DB40(MEMORY[0x277D84F90]);
  sub_21B45DB40(v62);
  sub_21B45DD28(v62);
  sub_21B45DF10(v62);
  sub_21B45E014(v62);
  sub_21B45E1FC(v62);
  sub_21B45E3E4(v62);
  sub_21B45E5CC(v62);
  return sub_21B4C5F28();
}

uint64_t sub_21B45B1D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_21B4C6E68();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  sub_21B4C6B28();
  v11 = sub_21B4C7248();
  if (v12)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A78);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  v27 = v11;
  v15 = sub_21B4C6B18();
  v28 = a1;
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = v15;
  v17 = sub_21B4C6F48();

  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = sub_21B4C70F8();

  if (v18 >> 62)
  {
    result = sub_21B4CA4B8();
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_12:

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

LABEL_7:
  if ((v18 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CEF3AB0](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v19 = sub_21B4C6F58();

LABEL_14:
  sub_21B4C6B08();
  v20 = sub_21B4C6DF8();

  sub_21B4C6B08();
  sub_21B4C6DE8();

  if (v19 || v20 != 2)
  {

    EpisodePlayState.init(playbackData:duration:)(v22, v4);
    sub_21B4C6E58();

    v23 = *(v29 + 32);
    v23(v10, v7, v5);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A78);
    v25 = *(v24 + 48);
    v26 = v28;
    *v28 = v27;
    v23(v26 + v25, v10, v5);
    return (*(*(v24 - 8) + 56))(v26, 0, 1, v24);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A78);
    return (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  }
}

uint64_t sub_21B45B5CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B45E7B4();
  *a1 = result;
  return result;
}

unint64_t sub_21B45B5F4(uint64_t a1)
{
  sub_21B4C5EC8();
  v2 = MEMORY[0x277D3D4C8];
  sub_21B45EBD4(&qword_27CD86C20, MEMORY[0x277D3D4C8]);
  v3 = sub_21B4C9628();
  return sub_21B45B79C(a1, v3, MEMORY[0x277D3D4C8], &qword_27CD86C28, v2, MEMORY[0x277D3D4D8]);
}

unint64_t sub_21B45B6C8(uint64_t a1)
{
  sub_21B4C5F18();
  v2 = MEMORY[0x277D3D530];
  sub_21B45EBD4(&qword_27CD87BD0, MEMORY[0x277D3D530]);
  v3 = sub_21B4C9628();
  return sub_21B45B79C(a1, v3, MEMORY[0x277D3D530], &qword_27CD87BD8, v2, MEMORY[0x277D3D540]);
}

unint64_t sub_21B45B79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_21B45EBD4(v24, v25);
      v20 = sub_21B4C96B8();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_21B45B93C(uint64_t a1)
{
  sub_21B4C5EB8();
  v2 = MEMORY[0x277D3D4A0];
  sub_21B45EBD4(&qword_27CD87C00, MEMORY[0x277D3D4A0]);
  v3 = sub_21B4C9628();
  return sub_21B45B79C(a1, v3, MEMORY[0x277D3D4A0], &qword_27CD87C08, v2, MEMORY[0x277D3D4B0]);
}

unint64_t sub_21B45BA10(uint64_t a1)
{
  sub_21B4C5EE8();
  v2 = MEMORY[0x277D3D4E0];
  sub_21B45EBD4(&qword_27CD87C28, MEMORY[0x277D3D4E0]);
  v3 = sub_21B4C9628();
  return sub_21B45B79C(a1, v3, MEMORY[0x277D3D4E0], &qword_27CD87C30, v2, MEMORY[0x277D3D4F0]);
}

uint64_t sub_21B45BAE4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_21B45BB14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C58);
  v33 = a2;
  result = sub_21B4CA4D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_21B40DA08(v34, *(&v34 + 1));
      }

      sub_21B4CA6E8();
      sub_21B4C9658();
      result = sub_21B4CA738();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21B45BDD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F70);
  result = sub_21B4CA4D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_21B36EE80((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_21B3FB4AC(v23, &v36);
        sub_21B36D428(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_21B4CA2C8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_21B36EE80(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21B45C088(uint64_t a1, int a2)
{
  v3 = v2;
  v41 = sub_21B4C6E68();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B60);
  v39 = a2;
  result = sub_21B4CA4D8();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_21B4CA6E8();
      MEMORY[0x21CEF3E70](v24);
      result = sub_21B4CA738();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_21B45C3EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C48);
  v38 = a2;
  result = sub_21B4CA4D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v40 = *(*(v5 + 48) + 8 * v21);
      v22 = (*(v5 + 56) + 40 * v21);
      v23 = *v22;
      v24 = v22[1];
      v26 = v22[2];
      v25 = v22[3];
      v27 = v22[4];
      if ((v38 & 1) == 0)
      {
        sub_21B45EBC0(v23, v24, v26);
      }

      sub_21B4CA6E8();
      MEMORY[0x21CEF3E70](v40);
      result = sub_21B4CA738();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v16 = v25;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v16 = v25;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v40;
      v17 = (*(v7 + 56) + 40 * v15);
      *v17 = v23;
      v17[1] = v24;
      v17[2] = v26;
      v17[3] = v16;
      v17[4] = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21B45C6D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86FD0);
  v35 = a2;
  result = sub_21B4CA4D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_21B4CA6E8();
      sub_21B4C9658();
      result = sub_21B4CA738();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

char *sub_21B45C97C()
{
  v1 = v0;
  v33 = sub_21B4C5888();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C50);
  v3 = *v0;
  v4 = sub_21B4CA4C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_21B45CBFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F70);
  v2 = *v0;
  v3 = sub_21B4CA4C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        sub_21B3FB4AC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_21B36D428(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_21B36EE80(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21B45CDA0()
{
  v1 = v0;
  v29 = sub_21B4C6E68();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B60);
  v3 = *v0;
  v4 = sub_21B4CA4C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_21B45D008()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C48);
  v2 = *v0;
  v3 = sub_21B4CA4C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 56) + 40 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v24 = (*(v4 + 56) + 40 * v17);
        *v24 = v19;
        v24[1] = v20;
        v24[2] = v21;
        v24[3] = v22;
        v24[4] = v23;
        result = sub_21B45EBC0(v19, v20, v21);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_21B45D184()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86FD0);
  v2 = *v0;
  v3 = sub_21B4CA4C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21B45D2F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86FB0);
  v2 = *v0;
  v3 = sub_21B4CA4C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_21B39E5DC(&v32, &v31);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21B45D490()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86FA8);
  v2 = *v0;
  v3 = sub_21B4CA4C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_21B45D5FC(uint64_t a1, char a2, void *a3)
{
  v7 = sub_21B4C6E68();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A78);
  MEMORY[0x28223BE20](v11);
  v15 = (&v53 - v14);
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_22;
  }

  v55 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v59 = *(v13 + 72);
  v61 = a1;
  v54 = v17;
  sub_21B36C7AC(a1 + v17, &v53 - v14, &qword_27CD86A78);
  v56 = v8;
  v18 = *(v8 + 32);
  v67 = *v15;
  v19 = v67;
  v58 = v16;
  v62 = v7;
  v63 = v10;
  v18(v10, v15 + v16, v7);
  v20 = *a3;
  v21 = sub_21B3FAE48(v19);
  v23 = v20[2];
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v22;
  if (v20[3] < v26)
  {
    sub_21B45C088(v26, a2 & 1);
    v21 = sub_21B3FAE48(v19);
    if ((v27 & 1) != (v28 & 1))
    {
LABEL_5:
      sub_21B4CA688();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v27)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v31 = v21;
  sub_21B45CDA0();
  v21 = v31;
  if (v27)
  {
LABEL_9:
    v29 = swift_allocError();
    swift_willThrow();
    v66 = v29;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v56 + 8))(v63, v62);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = *a3;
  *(*a3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
  *(v32[6] + 8 * v21) = v19;
  v33 = v32[7];
  v57 = *(v56 + 72);
  v34 = v62;
  v18((v33 + v57 * v21), v63, v62);
  v35 = v32[2];
  v25 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (!v25)
  {
    v32[2] = v36;
    v37 = v61;
    if (v60 == 1)
    {
LABEL_22:

      return;
    }

    v38 = v61 + v59 + v54;
    v39 = 1;
    while (v39 < *(v37 + 16))
    {
      sub_21B36C7AC(v38, v15, &qword_27CD86A78);
      v40 = v34;
      v67 = *v15;
      v41 = v67;
      v18(v63, v15 + v58, v40);
      v42 = *a3;
      v43 = sub_21B3FAE48(v41);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v25 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v25)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_21B45C088(v47, 1);
        v43 = sub_21B3FAE48(v41);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      *(v50[6] + 8 * v43) = v41;
      v34 = v62;
      v18((v50[7] + v57 * v43), v63, v62);
      v51 = v50[2];
      v25 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      ++v39;
      v50[2] = v52;
      v38 += v59;
      v37 = v61;
      if (v60 == v39)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_21B4CA338();
  MEMORY[0x21CEF2F30](0xD00000000000001BLL, 0x800000021B4E0490);
  sub_21B4CA478();
  MEMORY[0x21CEF2F30](39, 0xE100000000000000);
  sub_21B4CA488();
  __break(1u);
}

unint64_t sub_21B45DB40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C40);
    v7 = sub_21B4CA4E8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21B36C7AC(v9, v5, &qword_27CD87C38);
      result = sub_21B45BA10(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21B4C5EE8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21B45DD28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C20);
    v7 = sub_21B4CA4E8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21B36C7AC(v9, v5, &qword_27CD87C18);
      result = sub_21B45BA10(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21B4C5EE8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21B45DF10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C10);
    v3 = sub_21B4CA4E8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21B36CEF8(v5, v6);
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

unint64_t sub_21B45E014(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87BF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87BF8);
    v7 = sub_21B4CA4E8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21B36C7AC(v9, v5, &qword_27CD87BF0);
      result = sub_21B45B93C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21B4C5EB8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21B45E1FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87BE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87BE8);
    v7 = sub_21B4CA4E8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21B36C7AC(v9, v5, &qword_27CD87BE0);
      result = sub_21B45B5F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21B4C5EC8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21B45E3E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87BC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87BC8);
    v7 = sub_21B4CA4E8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21B36C7AC(v9, v5, &qword_27CD87BC0);
      result = sub_21B45B6C8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21B4C5F18();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21B45E5CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87BB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87BB8);
    v7 = sub_21B4CA4E8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21B36C7AC(v9, v5, &qword_27CD87BB0);
      result = sub_21B45B5F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21B4C5EC8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_21B45E7B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B58);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v22 - v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A78);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v27 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v23 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B50);
  v7 = sub_21B4C6B58();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21B4CA4B8())
  {
    v10 = 0;
    v25 = v8 & 0xFFFFFFFFFFFFFF8;
    v26 = v8 & 0xC000000000000001;
    v11 = (v24 + 48);
    v12 = MEMORY[0x277D84F90];
    v22 = v3;
    while (1)
    {
      if (v26)
      {
        v13 = MEMORY[0x21CEF3AB0](v10, v8);
      }

      else
      {
        if (v10 >= *(v25 + 16))
        {
          goto LABEL_18;
        }

        v13 = *(v8 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v28 = v13;
      sub_21B45B1D4(v2);

      if ((*v11)(v2, 1, v3) == 1)
      {
        sub_21B3F2D94(v2, &qword_27CD87B58);
      }

      else
      {
        v16 = v23;
        sub_21B45EB44(v2, v23);
        sub_21B45EB44(v16, v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_21B3F2420(0, v12[2] + 1, 1, v12);
        }

        v18 = v12[2];
        v17 = v12[3];
        if (v18 >= v17 >> 1)
        {
          v12 = sub_21B3F2420(v17 > 1, v18 + 1, 1, v12);
        }

        v12[2] = v18 + 1;
        sub_21B45EB44(v27, v12 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18);
        v3 = v22;
      }

      ++v10;
      if (v15 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_21:

  if (v12[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B60);
    v19 = sub_21B4CA4E8();
  }

  else
  {
    v19 = MEMORY[0x277D84F98];
  }

  v28 = v19;

  sub_21B45D5FC(v20, 1, &v28);

  return v28;
}

uint64_t sub_21B45EB44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B45EBB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21B45EBC0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
  }

  return result;
}

uint64_t sub_21B45EBD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t InMemoryEpisodeStateModel.init(playbackData:duration:isBookmarked:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  if (a1 || a2 != 2)
  {

    EpisodePlayState.init(playbackData:duration:)(v12, v8);
    sub_21B4C6E58();

    v13 = sub_21B4C6E68();
    return (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
  }

  else
  {
    v9 = sub_21B4C6E68();
    v10 = *(*(v9 - 8) + 56);

    return v10(a3, 1, 1, v9);
  }
}

void sub_21B45EDA0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_21B48B0FC(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t EpisodePlayState.init(playbackData:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22[-v5];
  v7 = type metadata accessor for LazyDate.State();
  MEMORY[0x28223BE20](v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    sub_21B4C7148();
    sub_21B4C7158();
    v10 = sub_21B4C7138();
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = 0xE000000000000000;
    if (v11)
    {
      v13 = v11;
    }

    *v9 = v12;
    v9[1] = v13;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C60);
    v14 = swift_allocObject();
    v15 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
    *(v14 + v15) = 0;
    v16 = MEMORY[0x277D841D0];
    v17 = *(*v14 + *MEMORY[0x277D841D0] + 16);
    sub_21B45F244(v9, v14 + v17);
    os_unfair_lock_lock((v14 + v15));
    sub_21B375540((v14 + v17), v6);
    os_unfair_lock_unlock((v14 + v15));
    sub_21B4C6698();

    swift_setDeallocating();
    sub_21B37541C(v14 + *(*v14 + *v16 + 16));
    swift_deallocClassInstance();
    v18 = sub_21B4C66A8();
    return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
  }

  else
  {
    v20 = sub_21B4C66A8();
    v21 = *(*(v20 - 8) + 56);

    return v21(a2, 1, 1, v20);
  }
}

uint64_t EpisodeBookmarkState.init(isBookmarked:)(char a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 & 1;
  }
}

uint64_t EpisodePlayState.init(positionInMilliseconds:completed:recordedDate:duration:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v7));
  sub_21B375540((a2 + v6), v5);
  os_unfair_lock_unlock((a2 + v7));
  sub_21B4C6698();
}

uint64_t sub_21B45F244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LazyDate.State();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t InMemoryStateNetworking.init(asPartOf:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD875E0);
  sub_21B4C8808();
}

unint64_t sub_21B45F328()
{
  result = qword_27CD87C68;
  if (!qword_27CD87C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87C68);
  }

  return result;
}

uint64_t sub_21B45F39C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  a4();
  return sub_21B4C70B8();
}

unint64_t sub_21B45F42C()
{
  result = qword_27CD87C70;
  if (!qword_27CD87C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87C70);
  }

  return result;
}

uint64_t sub_21B45F4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  a6();
  return sub_21B4C70B8();
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

uint64_t sub_21B45F584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B70);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B78);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B80);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B88);
  MEMORY[0x28223BE20](v11 - 8);
  v60 = v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v53 - v14;
  v16 = sub_21B4C5EA8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21B4C7558();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C74B8();
  v59 = a1;

  v24 = sub_21B4C7538();
  v25 = sub_21B4C9D08();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = *(v59 + 16);

    _os_log_impl(&dword_21B365000, v24, v25, "Fetching state for %ld podcasts", v26, 0xCu);
    MEMORY[0x21CEF5710](v26, -1, -1);
  }

  else
  {
  }

  (*(v21 + 8))(v23, v20);
  v27 = *MEMORY[0x277D3D498];
  v28 = *(v17 + 104);
  v53[5] = v19;
  v28(v19, v27, v16);
  v29 = *MEMORY[0x277D3D4C0];
  v30 = sub_21B4C5EC8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 104);
  v53[4] = v15;
  v32(v15, v29, v30);
  (*(v31 + 56))(v15, 0, 1, v30);
  v33 = sub_21B4C5F48();
  (*(*(v33 - 8) + 56))(v60, 1, 1, v33);
  v34 = sub_21B4C5EE8();
  (*(*(v34 - 8) + 56))(v61, 1, 1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B98);
  v35 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F20) - 8);
  v36 = (*(*v35 + 80) + 32) & ~*(*v35 + 80);
  v37 = swift_allocObject();
  v58 = xmmword_21B4D2830;
  *(v37 + 16) = xmmword_21B4D2830;
  v38 = v37 + v36;
  v39 = v35[14];
  v32(v38, v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87BA0);
  v40 = sub_21B4C5EF8();
  v41 = *(v40 - 8);
  v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v58;
  (*(v41 + 104))(v43 + v42, *MEMORY[0x277D3D500], v40);
  *(v38 + v39) = v43;
  v53[3] = sub_21B40D4B4(v37);
  swift_setDeallocating();
  sub_21B4607B4(v38);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87BA8);
  v44 = sub_21B4C5F08();
  v45 = *(v44 - 8);
  v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v58;
  (*(v45 + 104))(v47 + v46, *MEMORY[0x277D3D528], v44);
  v59 = sub_21B45A48C(v59);
  v48 = sub_21B4C5ED8();
  (*(*(v48 - 8) + 56))(v55, 1, 1, v48);
  v49 = sub_21B4C5F38();
  (*(*(v49 - 8) + 56))(v56, 1, 1, v49);
  v50 = sub_21B4C5748();
  (*(*(v50 - 8) + 56))(v54, 1, 1, v50);
  v51 = MEMORY[0x277D84F90];
  *&v58 = sub_21B45DB40(MEMORY[0x277D84F90]);
  v53[2] = sub_21B45DB40(v51);
  v53[1] = sub_21B45DD28(v51);
  sub_21B45DF10(v51);
  sub_21B460328(v51);
  sub_21B45E014(v51);
  sub_21B45E1FC(v51);
  sub_21B45E3E4(v51);
  sub_21B45E5CC(v51);
  return sub_21B4C5F28();
}

uint64_t sub_21B45FEC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B4604FC();
  *a1 = result;
  return result;
}

void sub_21B45FEE8(void *a1, char a2, void *a3)
{
  v45 = a1[2];
  if (!v45)
  {
    goto LABEL_24;
  }

  LOBYTE(v50) = a2;
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v9 = *a3;
  v10 = sub_21B3FAE48(v4);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  LOBYTE(v15) = v11;
  v49 = v10;
  v16 = v9[3];
  sub_21B45EBC0(v3, v5, v6);
  if (v16 < v14)
  {
    sub_21B45C3EC(v14, v50 & 1);
    v17 = sub_21B3FAE48(v4);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_5:
    sub_21B4CA688();
    __break(1u);
  }

  if (v50)
  {
    v17 = v49;
LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_21B45D008();
  v17 = v49;
  if (v15)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_21B4607A0(v3, v5, v6);

      return;
    }

    goto LABEL_29;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v17 >> 6) + 64) |= 1 << v17;
  *(v21[6] + 8 * v17) = v4;
  v22 = (v21[7] + 40 * v17);
  *v22 = v3;
  v22[1] = v5;
  v22[2] = v6;
  v22[3] = v7;
  v22[4] = v8;
  v23 = v21[2];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    v21[2] = v25;
    if (v45 != 1)
    {
      v4 = a1 + 15;
      v26 = 1;
      while (v26 < a1[2])
      {
        v46 = v26;
        v27 = *(v4 - 4);
        v15 = *(v4 - 3);
        v28 = *(v4 - 2);
        v30 = *(v4 - 1);
        v29 = *v4;
        v31 = *a3;
        v50 = *(v4 - 5);
        v32 = sub_21B3FAE48(v50);
        v34 = v31[2];
        v35 = (v33 & 1) == 0;
        v36 = v34 + v35;
        if (__OFADD__(v34, v35))
        {
          goto LABEL_27;
        }

        v3 = v32;
        v47 = v33;
        v37 = v31[3];
        v48 = v27;
        v49 = v30;
        sub_21B45EBC0(v27, v15, v28);
        if (v37 >= v36)
        {
          v8 = v29;
          v6 = v28;
          v7 = v49;
          v5 = v15;
          v38 = v50;
          if (v47)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_21B45C3EC(v36, 1);
          v38 = v50;
          v39 = sub_21B3FAE48(v50);
          v8 = v29;
          v6 = v28;
          v7 = v49;
          v5 = v15;
          if ((v47 & 1) != (v40 & 1))
          {
            goto LABEL_5;
          }

          v3 = v39;
          if (v47)
          {
LABEL_25:
            v3 = v48;
            goto LABEL_9;
          }
        }

        v41 = *a3;
        *(*a3 + 8 * (v3 >> 6) + 64) |= 1 << v3;
        *(v41[6] + 8 * v3) = v38;
        v42 = (v41[7] + 40 * v3);
        *v42 = v48;
        v42[1] = v5;
        v42[2] = v6;
        v42[3] = v7;
        v42[4] = v8;
        v43 = v41[2];
        v24 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v24)
        {
          goto LABEL_28;
        }

        v26 = v46 + 1;
        v41[2] = v44;
        v4 += 6;
        if (v45 == v46 + 1)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_24:

    return;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  sub_21B4CA338();
  MEMORY[0x21CEF2F30](0xD00000000000001BLL, 0x800000021B4E0490);
  sub_21B4CA478();
  MEMORY[0x21CEF2F30](39, 0xE100000000000000);
  sub_21B4CA488();
  __break(1u);
}

unint64_t sub_21B460328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F28);
    v7 = sub_21B4CA4E8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21B46081C(v9, v5);
      result = sub_21B45B5F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21B4C5EC8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_21B4604FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87B50);
  v0 = sub_21B4C6B58();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v3 = sub_21B4CA4B8();
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F90];
  v27 = v3;
  do
  {
    v26 = v6;
    v7 = v4;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x21CEF3AB0](v7, v1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_22;
        }

        v8 = *(v1 + 8 * v7 + 32);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      sub_21B4C6B28();
      v10 = sub_21B4C7248();
      if ((v11 & 1) == 0)
      {
        v12 = v10;
        sub_21B4C6B08();
        v13 = v12;
        v14 = v5;
        v15 = sub_21B4C6DF8();
        v3 = v27;

        v16 = v15 == 2;
        v5 = v14;
        if (!v16)
        {
          break;
        }
      }

      ++v7;
      if (v4 == v3)
      {
        v6 = v26;
        goto LABEL_25;
      }
    }

    sub_21B4C6148();
    v24 = v30;
    v25 = v29;
    v17 = v31;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_21B3F2610(0, v26[2] + 1, 1, v26);
    }

    v20 = v26[2];
    v19 = v26[3];
    if (v20 >= v19 >> 1)
    {
      v26 = sub_21B3F2610((v19 > 1), v20 + 1, 1, v26);
    }

    v26[2] = v20 + 1;
    v21 = &v26[6 * v20];
    v21[4] = v13;
    *(v21 + 7) = v24;
    *(v21 + 5) = v25;
    v21[9] = v17;
    v6 = v26;
  }

  while (v4 != v27);
LABEL_25:

  if (v6[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C48);
    v22 = sub_21B4CA4E8();
  }

  else
  {
    v22 = MEMORY[0x277D84F98];
  }

  v28 = v22;
  sub_21B45FEE8(v6, 1, &v28);
  return v28;
}

uint64_t sub_21B4607A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
  }

  return result;
}

uint64_t sub_21B4607B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B46081C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B46088C(uint64_t a1, void *a2, void *a3)
{
  v7 = COERCE_DOUBLE(sub_21B4CA018());
  if (v8)
  {
    sub_21B4C9308();
    sub_21B460BF0();
    swift_allocError();
    v9 = a2;
    sub_21B4C92F8();
    return swift_willThrow();
  }

  v11 = v7;
  if (v7 <= 0.0)
  {
    result = [objc_opt_self() valueWithUndefinedInContext_];
    if (!result)
    {
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
    }
  }

  else
  {
    result = sub_21B460C48(a3);
    if (v3)
    {
      return result;
    }

    v12 = [objc_opt_self() prettyShortStringWithDuration:(result & 1) == 0 abbreviated:v11];
    if (v12)
    {
      v13 = v12;
      v14 = sub_21B4C9708();
      v16 = v15;

      v17 = sub_21B4CA668();
      v18 = [objc_opt_self() valueWithObject:v17 inContext:{a1, v14, v16}];
      result = swift_unknownObjectRelease();
      if (v18)
      {

        return v18;
      }

      goto LABEL_14;
    }

    result = [objc_opt_self() valueWithUndefinedInContext_];
    if (!result)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  return result;
}

id sub_21B460B28()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21B460B84()
{
  result = qword_2811FCAA8;
  if (!qword_2811FCAA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811FCAA8);
  }

  return result;
}

unint64_t sub_21B460BF0()
{
  result = qword_27CD87C78;
  if (!qword_27CD87C78)
  {
    sub_21B4C9308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87C78);
  }

  return result;
}

uint64_t sub_21B460C48(void *a1)
{
  if ([a1 isUndefined])
  {
    return 1;
  }

  sub_21B4CA038();
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = sub_21B4CA518();

  if (v4)
  {
    if (v4 == 1)
    {
      return 1;
    }

LABEL_6:
    sub_21B4C9308();
    sub_21B460BF0();
    swift_allocError();
    v5 = a1;
    sub_21B4C92F8();
    return swift_willThrow();
  }

  return 0;
}

uint64_t sub_21B460D2C()
{
  v0 = sub_21B4C8F38();
  __swift_allocate_value_buffer(v0, qword_2811FF928);
  v1 = __swift_project_value_buffer(v0, qword_2811FF928);
  v2 = *MEMORY[0x277D221D0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_21B460DB4(uint64_t a1, id a2, void *a3, uint64_t a4)
{
  v9 = sub_21B4CA038();
  if (!v10)
  {
    sub_21B4C9308();
    sub_21B460BF0();
    swift_allocError();
    v11 = a2;
    sub_21B4C92F8();
    swift_willThrow();
    return a2;
  }

  a2 = v9;
  sub_21B462D10(a3);
  if (v4)
  {

    return a2;
  }

  __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer), *(a4 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer + 24));
  if (qword_2811FF920 != -1)
  {
    swift_once();
  }

  v12 = sub_21B4C8F38();
  __swift_project_value_buffer(v12, qword_2811FF928);
  v16 = sub_21B4C9538();
  v17 = v13;
  v14 = sub_21B4CA668();
  a2 = [objc_opt_self() valueWithObject:v14 inContext:{a1, v16, v17}];
  result = swift_unknownObjectRelease();
  if (a2)
  {

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B46103C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v34 = a6;
  v11 = sub_21B4C8948();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21B4CA028();
  if (!v15)
  {
    sub_21B4C9308();
    sub_21B460BF0();
    swift_allocError();
    v16 = v17;
    v18 = a2;
    sub_21B4C92F8();
    swift_willThrow();
    return v16;
  }

  v32 = v12;
  v33 = a1;
  v38 = v15;
  v16 = [a3 isUndefined];
  if (v16)
  {
    v31 = 0;
  }

  else
  {
    v19 = sub_21B4C9FF8();
    if (v20)
    {
      sub_21B4C9308();
      sub_21B460BF0();
      swift_allocError();
      v16 = v21;
      v22 = a3;
LABEL_11:
      sub_21B4C92F8();
      swift_willThrow();
LABEL_13:

      return v16;
    }

    v31 = v19;
  }

  if (([a4 isUndefined] & 1) == 0)
  {
    sub_21B4C9FF8();
    if (v23)
    {
      sub_21B4C9308();
      sub_21B460BF0();
      swift_allocError();
      v16 = v24;
      v25 = a4;
      goto LABEL_11;
    }
  }

  v26 = v35;
  sub_21B461340(a5, v14);
  if (v26)
  {
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1((v34 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer), *(v34 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer + 24));
  v36 = sub_21B4C9558();
  v37 = v27;
  v28 = sub_21B4CA668();
  v16 = [objc_opt_self() valueWithObject:v28 inContext:v33];
  result = swift_unknownObjectRelease();
  if (v16)
  {
    (*(v32 + 8))(v14, v11);

    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B461340@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87CE8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  if ([a1 isUndefined])
  {
    v8 = *MEMORY[0x277D21E80];
    v9 = sub_21B4C8948();
    return (*(*(v9 - 8) + 104))(a2, v8, v9);
  }

  sub_21B4CA038();
  if (v11)
  {
    sub_21B4C8938();
    v12 = sub_21B4C8948();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v7, 1, v12) != 1)
    {
      return (*(v13 + 32))(a2, v7, v12);
    }
  }

  else
  {
    v14 = sub_21B4C8948();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  sub_21B3F2D94(v7, &qword_27CD87CE8);
  sub_21B4C9308();
  sub_21B460BF0();
  swift_allocError();
  v15 = a1;
  sub_21B4C92F8();
  return swift_willThrow();
}

uint64_t sub_21B461658(uint64_t a1, id a2, void *a3, void *a4, uint64_t a5)
{
  sub_21B4CA038();
  if (!v11)
  {
    sub_21B4C9308();
    sub_21B460BF0();
    swift_allocError();
    v16 = a2;
    goto LABEL_5;
  }

  v12 = sub_21B4C9FF8();
  if (v13)
  {

    sub_21B4C9308();
    sub_21B460BF0();
    swift_allocError();
    a2 = v14;
    v15 = a3;
LABEL_5:
    sub_21B4C92F8();
    swift_willThrow();
    return a2;
  }

  a2 = v12;
  sub_21B462D10(a4);
  if (v5)
  {

    return a2;
  }

  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer), *(a5 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer + 24));
  if (qword_2811FF920 != -1)
  {
    swift_once();
  }

  v18 = sub_21B4C8F38();
  __swift_project_value_buffer(v18, qword_2811FF928);
  v21 = sub_21B4C9548();
  v22 = v19;
  v20 = sub_21B4CA668();
  a2 = [objc_opt_self() valueWithObject:v20 inContext:{a1, v21, v22}];
  result = swift_unknownObjectRelease();
  if (a2)
  {

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B461968(uint64_t a1, void *a2, uint64_t a3)
{
  sub_21B4C9FF8();
  if (v6)
  {
    sub_21B4C9308();
    sub_21B460BF0();
    swift_allocError();
    v7 = a2;
    sub_21B4C92F8();
    return swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer), *(a3 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer + 24));
    v12 = sub_21B4C9528();
    v13 = v9;
    v10 = sub_21B4CA668();
    v11 = [objc_opt_self() valueWithObject:v10 inContext:{a1, v12, v13}];
    swift_unknownObjectRelease();
    result = v11;
    if (!v11)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21B461AB0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_21B4CA018();
  if (v6)
  {
    sub_21B4C9308();
    sub_21B460BF0();
    swift_allocError();
    v7 = a2;
    sub_21B4C92F8();
    return swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer), *(a3 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer + 24));
    v12 = sub_21B4C9568();
    v13 = v9;
    v10 = sub_21B4CA668();
    v11 = [objc_opt_self() valueWithObject:v10 inContext:{a1, v12, v13}];
    swift_unknownObjectRelease();
    result = v11;
    if (!v11)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_21B461BFC(void *a1, uint64_t a2, void *a3)
{
  sub_21B460B84();
  v5 = a3;
  v6 = a1;
  v7 = sub_21B4CA0C8();
  v8 = sub_21B4CA0D8();

  return v8;
}

uint64_t sub_21B461C98(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v32 = a5;
  v33 = a1;
  v38 = a3;
  v8 = sub_21B4C8948();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v14 = sub_21B4C5858();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21B4CA038();
  if (!v19)
  {
    sub_21B4C9308();
    sub_21B460BF0();
    swift_allocError();
    v20 = v23;
    v24 = a2;
    goto LABEL_5;
  }

  v20 = v18;
  sub_21B4CA008();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_21B3F2D94(v13, &qword_27CD87538);
    sub_21B4C9308();
    sub_21B460BF0();
    swift_allocError();
    v20 = v21;
    v22 = v38;
LABEL_5:
    sub_21B4C92F8();
    swift_willThrow();
    return v20;
  }

  (*(v15 + 32))(v17, v13, v14);
  v25 = v35;
  sub_21B461340(a4, v10);
  if (v25)
  {
    (*(v15 + 8))(v17, v14);

    return v20;
  }

  v26 = *(v32 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer + 24);
  v38 = *(v32 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer + 32);
  __swift_project_boxed_opaque_existential_1((v32 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer), v26);
  v36 = sub_21B4C9518();
  v37 = v27;
  v28 = sub_21B4CA668();
  v20 = [objc_opt_self() valueWithObject:v28 inContext:v33];
  result = swift_unknownObjectRelease();
  if (v20)
  {

    (*(v30 + 8))(v10, v31);
    (*(v15 + 8))(v17, v14);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B462138(uint64_t a1, id a2, void *a3, void *a4, uint64_t a5)
{
  v24 = a5;
  v25 = a1;
  v28 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_21B4C5858();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4CA038();
  if (!v14)
  {
    sub_21B4C9308();
    sub_21B460BF0();
    swift_allocError();
    v17 = a2;
    goto LABEL_5;
  }

  sub_21B4CA008();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_21B3F2D94(v9, &qword_27CD87538);
    sub_21B4C9308();
    sub_21B460BF0();
    swift_allocError();
    a2 = v15;
    v16 = a3;
LABEL_5:
    sub_21B4C92F8();
    swift_willThrow();
    return a2;
  }

  (*(v11 + 32))(v13, v9, v10);
  a2 = v28;
  sub_21B4CA038();
  if (!v19)
  {

    sub_21B4C9308();
    sub_21B460BF0();
    swift_allocError();
    v23 = a2;
    sub_21B4C92F8();
    swift_willThrow();
    (*(v11 + 8))(v13, v10);
    return a2;
  }

  v20 = *(v24 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer + 24);
  v28 = *(v24 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer + 32);
  __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer), v20);
  v26 = sub_21B4C9508();
  v27 = v21;
  v22 = sub_21B4CA668();
  a2 = [objc_opt_self() valueWithObject:v22 inContext:v25];
  result = swift_unknownObjectRelease();
  if (a2)
  {
    (*(v11 + 8))(v13, v10);

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B462590(uint64_t a1, id a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  v9 = sub_21B4C5858();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4CA008();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21B3F2D94(v8, &qword_27CD87538);
    sub_21B4C9308();
    sub_21B460BF0();
    swift_allocError();
    v13 = a2;
    sub_21B4C92F8();
    swift_willThrow();
    return a2;
  }

  (*(v10 + 32))(v12, v8, v9);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer), *(a3 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer + 24));
  if (qword_2811FF920 != -1)
  {
    swift_once();
  }

  v14 = sub_21B4C8F38();
  __swift_project_value_buffer(v14, qword_2811FF928);
  v18[0] = sub_21B4C94F8();
  v18[1] = v15;
  v16 = sub_21B4CA668();
  a2 = [objc_opt_self() valueWithObject:v16 inContext:a1];
  result = swift_unknownObjectRelease();
  if (a2)
  {
    (*(v10 + 8))(v12, v9);
    return a2;
  }

  __break(1u);
  return result;
}

unint64_t sub_21B4628F4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F90);
    v2 = sub_21B4CA4E8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_21B3FB4AC(*(v1 + 48) + 40 * v15, v28);
    sub_21B36D428(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_21B3FB4AC(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_21B3F2D94(v25, &qword_27CD87CF0);

      goto LABEL_22;
    }

    sub_21B36D428(v26 + 8, v24);
    sub_21B3F2D94(v25, &qword_27CD87CF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_21B36CEF8(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_21B462D10(void *a1)
{
  if ([a1 _pui_isNull] & 1) != 0 || (objc_msgSend(a1, sel_isUndefined))
  {
    return 0;
  }

  v3 = [a1 toDictionary];
  if (!v3 || (v4 = v3, v5 = sub_21B4C9588(), v4, v6 = sub_21B4628F4(v5), , (result = v6) == 0))
  {
    sub_21B4C9308();
    sub_21B460BF0();
    swift_allocError();
    v7 = a1;
    sub_21B4C92F8();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21B4632B4()
{
  v22 = sub_21B4C6EF8();
  v0 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21B4C6ED8();
  v4 = *(v3 + 16);
  if (v4)
  {
    v23 = MEMORY[0x277D84F90];
    sub_21B3982B0(0, v4, 0);
    v5 = v23;
    v7 = *(v0 + 16);
    v6 = v0 + 16;
    v8 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v20 = *(v6 + 56);
    v21 = v7;
    v18 = v3;
    v19 = (v6 - 8);
    do
    {
      v9 = v22;
      v10 = v6;
      v21(v2, v8, v22);
      v11 = sub_21B4C6EE8();
      v13 = v12;
      (*v19)(v2, v9);
      v23 = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21B3982B0((v14 > 1), v15 + 1, 1);
        v5 = v23;
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v8 += v20;
      --v4;
      v6 = v10;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

void sub_21B46348C(uint64_t a1, uint64_t a2)
{
  v6 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  if (a1 == 7104878 && a2 == 0xE300000000000000 || (sub_21B4CA608() & 1) != 0)
  {
    v4 = sub_21B4C96C8();
    [v6 setURL:0 forKey:v4];
  }

  else
  {
    v5 = sub_21B4C96C8();
    v4 = sub_21B4C96C8();
    [v6 setObject:v5 forKey:v4];
  }
}

id sub_21B463844(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtCO10PodcastsUI6Legacy17JSLocalizerObject_dateIntervalFormatters;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16) && (v8 = sub_21B36CEF8(a1, a2), (v9 & 1) != 0))
  {
    v15 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();

    return v15;
  }

  else
  {
    swift_endAccess();
    v11 = [objc_allocWithZone(MEMORY[0x277CCA978]) init];
    v12 = sub_21B4C96C8();
    [v11 setDateTemplate_];

    swift_beginAccess();

    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    sub_21B42BD7C(v13, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + v6) = v16;
    swift_endAccess();
    return v13;
  }
}

uint64_t sub_21B463B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a2;
  v32 = a4;
  v33 = a1;
  v9 = sub_21B4C5968();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B4C5928();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v32 - v19;
  (*(v14 + 104))(&v32 - v19, *MEMORY[0x277CC9828], v13, v18);
  sub_21B4C5958();
  sub_21B4C5948();
  (*(v10 + 8))(v12, v9);
  sub_21B4640C4();
  v21 = sub_21B4C96B8();
  v22 = *(v14 + 8);
  v22(v16, v13);
  v22(v20, v13);
  v23 = a6 != 0;
  if ((v21 & v23) != 0)
  {
    v24 = a5;
  }

  else
  {
    v24 = a3;
  }

  if ((v21 & v23) != 0)
  {
    v25 = a6;
  }

  else
  {
    v25 = v32;
  }

  v26 = sub_21B463844(v24, v25);
  v27 = sub_21B4C5818();
  v28 = sub_21B4C5818();
  v29 = [v26 stringFromDate:v27 toDate:{v28, v32, v33}];

  v30 = sub_21B4C9708();
  return v30;
}

unint64_t sub_21B4640C4()
{
  result = qword_281200318;
  if (!qword_281200318)
  {
    sub_21B4C5928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281200318);
  }

  return result;
}

uint64_t sub_21B46411C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_21B46421C()
{
  if (*(v0 + OBJC_IVAR____TtCO10PodcastsUI6Legacy12JSUserObject_isPersonalizationEnabled) != 1)
  {
    return 0;
  }

  result = [*(v0 + OBJC_IVAR____TtCO10PodcastsUI6Legacy12JSUserObject_accountStore) ams_activeiTunesAccount];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result ams_DSID];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 stringValue];

  v5 = sub_21B4C9708();
  return v5;
}

id sub_21B4642F0(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_21B464394(a3);
  v6 = v5;

  if (v6)
  {
    v7 = sub_21B4C96C8();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_21B464394(SEL *a1)
{
  if (*(v1 + OBJC_IVAR____TtCO10PodcastsUI6Legacy12JSUserObject_isPersonalizationEnabled) != 1)
  {
    return 0;
  }

  result = [*(v1 + OBJC_IVAR____TtCO10PodcastsUI6Legacy12JSUserObject_accountStore) ams_activeiTunesAccount];
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = [result *a1];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_21B4C9708();

  return v6;
}

uint64_t JSPackage.init(source:localizedStrings:location:version:buildType:buildDate:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a4;
  v13 = *(a4 + 4);
  v14 = *(a4 + 10);
  sub_21B36D484(a1, a7);
  sub_21B36D484(a2, a7 + 40);
  v15 = type metadata accessor for JSPackage();
  sub_21B464538(a3, a7 + v15[6]);
  v16 = a7 + v15[7];
  *v16 = v12;
  *(v16 + 10) = v14;
  *(v16 + 8) = v13;
  *(a7 + v15[8]) = a5;
  v17 = a7 + v15[9];

  return sub_21B39EB6C(a6, v17);
}

uint64_t sub_21B464538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSPackageSourceLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B46459C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x21CEF5710);
  }

  return result;
}

uint64_t sub_21B464694@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_21B4C8468();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t JSPackage.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JSPackage() + 24);

  return sub_21B39F340(v3, a1);
}

uint64_t JSPackage.version.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for JSPackage();
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  v6 = *(v4 + 4);
  LOBYTE(v4) = *(v4 + 10);
  *a1 = v5;
  *(a1 + 10) = v4;
  *(a1 + 8) = v6;
  return result;
}

uint64_t JSPackage.buildDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JSPackage() + 36);

  return sub_21B46411C(v3, a1);
}

uint64_t sub_21B464870(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7972726163;
  if (v2 != 1)
  {
    v5 = 0x69746375646F7270;
    v4 = 0xEA00000000006E6FLL;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6775626564;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x7972726163;
  if (*a2 != 1)
  {
    v8 = 0x69746375646F7270;
    v3 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6775626564;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21B4CA608();
  }

  return v11 & 1;
}

uint64_t sub_21B46496C@<X0>(_BYTE *a1@<X8>)
{
  result = _s10PodcastsUI18JSPackageBuildTypeO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_21B46499C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7972726163;
  if (v2 != 1)
  {
    v5 = 0x69746375646F7270;
    v4 = 0xEA00000000006E6FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6775626564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21B464A08()
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

uint64_t sub_21B464AA8()
{
  sub_21B4C9658();
}

uint64_t sub_21B464B34()
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

unint64_t JSPackageBuildType.debugDescription.getter(unsigned __int8 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x7972726163;
    }

    else
    {
      v2 = 0x69746375646F7270;
    }

    if (v1 == 1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xEA00000000006E6FLL;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v2 = 0x6775626564;
  }

  MEMORY[0x21CEF2F30](v2, v3);

  return 0xD000000000000013;
}

unint64_t sub_21B464C78()
{
  v1 = 0xE500000000000000;
  v2 = 0x7972726163;
  if (*v0 != 1)
  {
    v2 = 0x69746375646F7270;
    v1 = 0xEA00000000006E6FLL;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x6775626564;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x21CEF2F30](v3, v4);

  return 0xD000000000000013;
}

uint64_t JSPackageBuildType.description.getter(char a1)
{
  if (!a1)
  {
    return 0x6775626564;
  }

  if (a1 == 1)
  {
    return 0x7972726163;
  }

  return 0x69746375646F7270;
}

uint64_t sub_21B464D78()
{
  v1 = 0x7972726163;
  if (*v0 != 1)
  {
    v1 = 0x69746375646F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6775626564;
  }
}

uint64_t _s10PodcastsUI18JSPackageBuildTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_21B4CA518();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21B464E20()
{
  result = qword_2811FCE30;
  if (!qword_2811FCE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD87D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FCE30);
  }

  return result;
}

unint64_t sub_21B464E88()
{
  result = qword_27CD87D48;
  if (!qword_27CD87D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87D48);
  }

  return result;
}

uint64_t static JSPackageError.fileNotFound(_:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_21B4C8458();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 3;
  return result;
}

uint64_t static JSPackageError.invalidFileEncoding(_:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_21B4C8458();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 4;
  return result;
}

uint64_t sub_21B464F60@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21B4C75F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  (*(v7 + 16))(v9, a1, v6, v11);
  sub_21B4C75B8();
  v14 = sub_21B4C75D8();
  v16 = v15;
  result = (*(v7 + 8))(v13, v6);
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = a2;
  return result;
}

uint64_t static JSPackageError.invalidFilePath(_:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_21B4C8458();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 5;
  return result;
}

uint64_t sub_21B4650CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B465114(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B465158(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t JSPackageLoader.__allocating_init(asPartOf:)()
{
  v0 = sub_21B38AFE8();

  return v0;
}

uint64_t JSPackageLoader.deinit()
{
  v1 = OBJC_IVAR____TtC10PodcastsUI15JSPackageLoader_bag;
  v2 = sub_21B4C9208();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10PodcastsUI15JSPackageLoader_loader;
  v4 = sub_21B4C82C8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t JSPackageLoader.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10PodcastsUI15JSPackageLoader_bag;
  v2 = sub_21B4C9208();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10PodcastsUI15JSPackageLoader_loader;
  v4 = sub_21B4C82C8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_21B465390()
{
  v2 = *v1;
  v2[60] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21B465EEC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[61] = v3;
    *v3 = v2;
    v3[1] = sub_21B465508;
    v4 = v2[50];

    return MEMORY[0x28217E740](v4);
  }
}

uint64_t sub_21B465508()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_21B466060;
  }

  else
  {
    v2 = sub_21B3A00E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B46561C()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_21B4661F0;
  }

  else
  {
    v2 = sub_21B465730;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B465730()
{
  v1 = v0[44];
  v2 = v0[22];
  (*(v0[36] + 16))(v1, v0[40], v0[35]);
  swift_storeEnumTagMultiPayload();
  JSPackage.init(bundle:location:)(v0 + 12, v1, v2);
  v3 = v0[40];
  v4 = v0[35];
  v5 = v0[36];
  (*(v0[31] + 8))(v0[34], v0[30]);
  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21B46590C()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_21B46638C;
  }

  else
  {
    v2 = sub_21B465A20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B465A20()
{
  v1 = v0[43];
  v2 = v0[22];
  (*(v0[36] + 16))(v1, v0[37], v0[35]);
  swift_storeEnumTagMultiPayload();
  JSPackage.init(bundle:location:)(v0 + 7, v1, v2);
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  (*(v0[31] + 8))(v0[33], v0[30]);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21B465C00()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_21B466528;
  }

  else
  {
    v2 = sub_21B465D14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B465D14()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 176);
  (*(v0 + 536))(v1, *(v0 + 392), *(v0 + 368));
  swift_storeEnumTagMultiPayload();
  JSPackage.init(bundle:location:)((v0 + 16), v1, v2);
  v3 = *(v0 + 392);
  v4 = *(v0 + 368);
  v5 = *(v0 + 376);
  (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
  (*(v5 + 8))(v3, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21B465EEC()
{
  (*(v0[55] + 8))(v0[56], v0[54]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21B466060()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  (*(v0[52] + 8))(v0[53], v0[51]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21B4661F0()
{
  v1 = v0[40];
  v2 = v0[35];
  v3 = v0[36];
  (*(v0[31] + 8))(v0[34], v0[30]);
  (*(v3 + 8))(v1, v2);
  __swift_deallocate_boxed_opaque_existential_1((v0 + 12));

  v4 = v0[1];

  return v4();
}

uint64_t sub_21B46638C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[31] + 8))(v0[33], v0[30]);
  (*(v2 + 8))(v1, v3);
  __swift_deallocate_boxed_opaque_existential_1((v0 + 7));

  v4 = v0[1];

  return v4();
}

uint64_t sub_21B466528()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[47];
  (*(v0[31] + 8))(v0[32], v0[30]);
  (*(v3 + 8))(v1, v2);
  __swift_deallocate_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t JSPackageLoader.load<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  sub_21B4C8588();
  v5[23] = swift_task_alloc();
  v7 = type metadata accessor for JSPackageLocation();
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87D58);
  v5[27] = swift_task_alloc();
  v5[28] = *(a3 - 8);
  v5[29] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[30] = AssociatedTypeWitness;
  v5[31] = *(AssociatedTypeWitness - 8);
  v5[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B4668C8, 0, 0);
}

uint64_t sub_21B4668C8()
{
  (*(*(v0 + 224) + 16))(*(v0 + 232), *(v0 + 152), *(v0 + 160));
  sub_21B4C9898();
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  swift_getAssociatedConformanceWitness();
  sub_21B4CA1D8();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
    if (qword_2811FCF08 != -1)
    {
      swift_once();
    }

    v4 = sub_21B4C94B8();
    __swift_project_value_buffer(v4, qword_2811FCF10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
    sub_21B4C85A8();
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C8538();
    sub_21B4C92A8();

    sub_21B3A2BB4();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 7;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    sub_21B468B4C(*(v0 + 216), *(v0 + 208), type metadata accessor for JSPackageLocation);
    if (qword_2811FCF08 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 192);
    v10 = sub_21B4C94B8();
    *(v0 + 264) = v10;
    *(v0 + 272) = __swift_project_value_buffer(v10, qword_2811FCF10);
    *(v0 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
    v11 = *(sub_21B4C85A8() - 8);
    *(v0 + 288) = *(v11 + 72);
    *(v0 + 312) = *(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C8578();
    sub_21B4C8568();
    *(v0 + 40) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_21B38C458(v8, boxed_opaque_existential_1, type metadata accessor for JSPackageLocation);
    sub_21B4C8548();
    sub_21B3F2D94(v0 + 16, &qword_27CD86E70);
    sub_21B4C8568();
    sub_21B4C8598();
    sub_21B4C9288();

    v13 = swift_task_alloc();
    *(v0 + 296) = v13;
    *v13 = v0;
    v13[1] = sub_21B466DC4;
    v14 = *(v0 + 208);
    v15 = *(v0 + 144);

    return JSPackageLoader.load(from:)(v15, v14);
  }
}

uint64_t sub_21B466DC4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_21B466FB8;
  }

  else
  {
    v2 = sub_21B466ED8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B466ED8()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  sub_21B38CA90(v0[26], type metadata accessor for JSPackageLocation);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21B466FB8()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  *(swift_allocObject() + 16) = xmmword_21B4D2830;
  sub_21B4C8578();
  sub_21B4C8568();
  *(v0 + 72) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
  sub_21B38C458(v2, boxed_opaque_existential_1, type metadata accessor for JSPackageLocation);
  sub_21B4C8548();
  sub_21B3F2D94(v0 + 48, &qword_27CD86E70);
  sub_21B4C8568();
  swift_getErrorValue();
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  *(v0 + 104) = v5;
  v7 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
  (*(*(v5 - 8) + 16))(v7, v6, v5);
  sub_21B4C8548();
  sub_21B3F2D94(v0 + 80, &qword_27CD86E70);
  sub_21B4C8568();
  sub_21B4C8598();
  sub_21B4C92A8();

  sub_21B38CA90(v2, type metadata accessor for JSPackageLocation);
  v8 = *(v0 + 216);
  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  swift_getAssociatedConformanceWitness();
  sub_21B4CA1D8();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
    if (qword_2811FCF08 != -1)
    {
      swift_once();
    }

    v11 = sub_21B4C94B8();
    __swift_project_value_buffer(v11, qword_2811FCF10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
    sub_21B4C85A8();
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C8538();
    sub_21B4C92A8();

    sub_21B3A2BB4();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 7;
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    sub_21B468B4C(*(v0 + 216), *(v0 + 208), type metadata accessor for JSPackageLocation);
    if (qword_2811FCF08 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 208);
    v16 = *(v0 + 192);
    v17 = sub_21B4C94B8();
    *(v0 + 264) = v17;
    *(v0 + 272) = __swift_project_value_buffer(v17, qword_2811FCF10);
    *(v0 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
    v18 = *(sub_21B4C85A8() - 8);
    *(v0 + 288) = *(v18 + 72);
    *(v0 + 312) = *(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C8578();
    sub_21B4C8568();
    *(v0 + 40) = v16;
    v19 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_21B38C458(v15, v19, type metadata accessor for JSPackageLocation);
    sub_21B4C8548();
    sub_21B3F2D94(v0 + 16, &qword_27CD86E70);
    sub_21B4C8568();
    sub_21B4C8598();
    sub_21B4C9288();

    v20 = swift_task_alloc();
    *(v0 + 296) = v20;
    *v20 = v0;
    v20[1] = sub_21B466DC4;
    v21 = *(v0 + 208);
    v22 = *(v0 + 144);

    return JSPackageLoader.load(from:)(v22, v21);
  }
}

uint64_t JSPackageLoader.load()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_21B467624, 0, 0);
}

uint64_t sub_21B467624()
{
  if ([objc_opt_self() isRunningOnInternalOS])
  {
    if (qword_2811FD530 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87D60);
    sub_21B38B8DC();
    sub_21B4C9D68();
    v1 = v0[2];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD88030);
    type metadata accessor for JSPackageLocation();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_21B4D2830;
    swift_storeEnumTagMultiPayload();
  }

  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_21B467840;
  v3 = v0[3];

  return sub_21B38BE68(v3, v1);
}

uint64_t sub_21B467840()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static JSPackageLoader.defaultLoadOrder.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD88030);
  type metadata accessor for JSPackageLocation();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21B4D38F0;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  return v0;
}

uint64_t sub_21B467A30()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {

    v3 = sub_21B467C88;
  }

  else
  {
    v5 = v2[16];
    v4 = v2[17];
    v6 = v2[15];

    (*(v5 + 8))(v4, v6);
    v3 = sub_21B467B88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21B467B88()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  sub_21B4C8348();

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21B467C88()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];

  (*(v2 + 8))(v1, v3);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21B467D70(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_21B4C82C8();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87D68);
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v6 = sub_21B4C8368();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  sub_21B4C8398();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B467F30, 0, 0);
}

uint64_t sub_21B467F30()
{
  v1 = sub_21B4C5CE8();
  v0[5] = v1;
  v0[6] = sub_21B38B990(&qword_2811FD620, MEMORY[0x277D3D3D0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3D3C0], v1);
  LOBYTE(v1) = sub_21B4C5A38();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (v1)
  {
    sub_21B4C8388();
  }

  else
  {
    sub_21B4C83E8();
    sub_21B4C83D8();
    sub_21B4C8378();
  }

  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  sub_21B4C83B8();
  swift_allocObject();
  v0[26] = sub_21B4C83A8();
  v8 = sub_21B4C82E8();
  v0[10] = v8;
  v0[11] = sub_21B38B990(&qword_27CD87D78, MEMORY[0x277D219B0]);
  v9 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(*(v8 - 8) + 16))(v9, v7, v8);

  sub_21B4C9178();
  sub_21B4C8358();
  (*(v4 + 16))(v3, v6 + OBJC_IVAR____TtC10PodcastsUI15JSPackageLoader_loader, v5);
  v10 = swift_task_alloc();
  v0[27] = v10;
  *(v10 + 16) = v3;
  v11 = swift_task_alloc();
  v0[28] = v11;
  v12 = sub_21B4C82D8();
  *v11 = v0;
  v11[1] = sub_21B46829C;
  v13 = v0[20];
  v14 = MEMORY[0x277D21998];

  return MEMORY[0x28217E758](v13, &unk_21B4D6ED8, v10, v12, v14);
}

uint64_t sub_21B46829C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {

    v3 = sub_21B468C94;
  }

  else
  {
    v5 = v2[16];
    v4 = v2[17];
    v6 = v2[15];

    (*(v5 + 8))(v4, v6);
    v3 = sub_21B468C90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21B4683F4()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21B468530, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

id sub_21B468548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87D80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = [objc_opt_self() ams:a3 configurationWithProcessInfo:a1 bag:?];
  swift_unknownObjectRetain();
  sub_21B4C9198();
  v9 = sub_21B4C9208();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = sub_21B4C8438();
  sub_21B3F2D94(v7, &qword_27CD87D80);
  if ([objc_opt_self() isRunningOnInternalOS])
  {
    if (qword_2811FCF08 != -1)
    {
      swift_once();
    }

    v11 = sub_21B4C94B8();
    __swift_project_value_buffer(v11, qword_2811FCF10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
    sub_21B4C85A8();
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C8538();
    sub_21B4C9288();

    [v10 setUrlKnownToBeTrusted_];
  }

  return v8;
}

uint64_t sub_21B4687D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  MEMORY[0x28223BE20](v5 - 8);
  v26 = v23 - v6;
  v7 = sub_21B4C5638();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B4C75F8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  (*(v12 + 16))(v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = sub_21B4C97D8();
  if (v15)
  {
    v16 = *(v8 + 16);
    v23[1] = v14;
    v25 = v7;
    v16(v10, a2, v7);
    v17 = sub_21B4C5748();
    v23[0] = a2;
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v24 = a1;
    v20 = v27;
    v19(v26, 1, 1, v17);
    sub_21B4C5728();
    (*(v8 + 8))(v23[0], v25);
    (*(v12 + 8))(v24, v11);
    return (v19)(v20, 0, 1, v18);
  }

  else
  {
    (*(v8 + 8))(a2, v7);
    (*(v12 + 8))(a1, v11);
    v22 = sub_21B4C5748();
    return (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  }
}

uint64_t static UserDefaultsKey<>.jsPackageLoadOrder.getter()
{
  if (qword_2811FD530 != -1)
  {
    swift_once();
  }

  v0 = qword_2811FD538;

  return v0;
}

uint64_t sub_21B468B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B468BDC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21B40998C;

  return sub_21B392B2C(a1, a2, v6);
}

uint64_t JSPackageLoadingTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for JSPackageLoadingState();
  swift_storeEnumTagMultiPayload();
  sub_21B4C5A08();
  return v0;
}

uint64_t JSPackageLoadingTracker.update(to:priority:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSPackageLoadingState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_21B4C9A58();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a2, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_21B3A1724(a1, v7);
  sub_21B4C9A18();

  v14 = sub_21B4C9A08();
  v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v14;
  v16[3] = v17;
  v16[4] = v13;
  sub_21B4691AC(v7, v16 + v15);

  return sub_21B43614C(0, 0, v10, &unk_21B4D6F28, v16);
}

uint64_t JSPackageLoadingTracker.init()()
{
  type metadata accessor for JSPackageLoadingState();
  swift_storeEnumTagMultiPayload();
  sub_21B4C5A08();
  return v0;
}

uint64_t JSPackageLoadingTracker.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21B3A18AC();
  sub_21B4C59F8();

  v3 = OBJC_IVAR____TtC10PodcastsUI23JSPackageLoadingTracker__state;
  swift_beginAccess();
  return sub_21B3A1724(v5 + v3, a1);
}

uint64_t sub_21B46901C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21B3A18AC();
  sub_21B4C59F8();

  v4 = OBJC_IVAR____TtC10PodcastsUI23JSPackageLoadingTracker__state;
  swift_beginAccess();
  return sub_21B3A1724(v3 + v4, a2);
}

uint64_t sub_21B4690B4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for JSPackageLoadingState();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21B3A1724(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_21B3A18AC();
  sub_21B4C59E8();

  return sub_21B3A1A08(v6);
}

uint64_t sub_21B4691AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSPackageLoadingState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B469210(uint64_t a1)
{
  v4 = *(type metadata accessor for JSPackageLoadingState() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21B40998C;

  return sub_21B3A1568(a1, v6, v7, v8, v1 + v5);
}

uint64_t JSPackageLoadingTracker.deinit()
{
  sub_21B3A1A08(v0 + OBJC_IVAR____TtC10PodcastsUI23JSPackageLoadingTracker__state);
  v1 = OBJC_IVAR____TtC10PodcastsUI23JSPackageLoadingTracker___observationRegistrar;
  v2 = sub_21B4C5A18();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t JSPackageLoadingTracker.__deallocating_deinit()
{
  sub_21B3A1A08(v0 + OBJC_IVAR____TtC10PodcastsUI23JSPackageLoadingTracker__state);
  v1 = OBJC_IVAR____TtC10PodcastsUI23JSPackageLoadingTracker___observationRegistrar;
  v2 = sub_21B4C5A18();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t JSPackageLocation.hash(into:)()
{
  v1 = sub_21B4C5748();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B4C75F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JSPackageLocation();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B38C7C0(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    return MEMORY[0x21CEF3E40](EnumCaseMultiPayload != 2);
  }

  if (EnumCaseMultiPayload)
  {
    (*(v2 + 32))(v4, v11, v1);
    MEMORY[0x21CEF3E40](3);
    sub_21B46AFFC(&qword_27CD87D90, MEMORY[0x277CC9260]);
    sub_21B4C9638();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    MEMORY[0x21CEF3E40](2);
    sub_21B46AFFC(&qword_27CD87D98, MEMORY[0x277D854C0]);
    sub_21B4C9638();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t JSPackageLocation.hashValue.getter()
{
  sub_21B4CA6E8();
  JSPackageLocation.hash(into:)();
  return sub_21B4CA738();
}

uint64_t sub_21B469774()
{
  sub_21B4CA6E8();
  JSPackageLocation.hash(into:)();
  return sub_21B4CA738();
}

uint64_t sub_21B4697B8()
{
  sub_21B4CA6E8();
  JSPackageLocation.hash(into:)();
  return sub_21B4CA738();
}

uint64_t sub_21B4697F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1752457584;
  if (v2 != 1)
  {
    v4 = 7107189;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x646E696B24;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1752457584;
  if (*a2 != 1)
  {
    v8 = 7107189;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x646E696B24;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21B4CA608();
  }

  return v11 & 1;
}

uint64_t sub_21B4698D8()
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

uint64_t sub_21B469968()
{
  sub_21B4C9658();
}

uint64_t sub_21B4699E4()
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

uint64_t sub_21B469A70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B46B15C();
  *a1 = result;
  return result;
}

void sub_21B469AA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1752457584;
  if (v2 != 1)
  {
    v5 = 7107189;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646E696B24;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21B469AEC()
{
  v1 = 1752457584;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646E696B24;
  }
}

uint64_t sub_21B469B34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B46B15C();
  *a1 = result;
  return result;
}

uint64_t sub_21B469B68(uint64_t a1)
{
  v2 = sub_21B46AEB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B469BA4(uint64_t a1)
{
  v2 = sub_21B46AEB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JSPackageLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_21B4CA398();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87DA0);
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v46 - v6;
  v8 = type metadata accessor for JSPackageLocation();
  MEMORY[0x28223BE20](v8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v46 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v46 - v15;
  v17 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_21B46AEB4();
  v18 = v55;
  sub_21B4CA778();
  if (v18)
  {
    v55 = v18;
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v19 = v13;
  v46[1] = v8;
  v21 = v50;
  v20 = v51;
  v22 = v49;
  LOBYTE(v53) = 0;
  v23 = sub_21B4CA528();
  v25 = v24;
  v55 = 0;
  v26 = v5;
  v27 = v23 == 6775138 && v25 == 0xE300000000000000;
  v28 = v22;
  if (v27 || (v29 = v23, v46[0] = v26, v30 = sub_21B4CA608(), v26 = v46[0], (v30 & 1) != 0) || (v29 == 0x656C646E7562 ? (v32 = v25 == 0xE600000000000000) : (v32 = 0), v32 || (v33 = sub_21B4CA608(), v26 = v46[0], (v33 & 1) != 0)))
  {
    (*(v28 + 8))(v7, v26);

    swift_storeEnumTagMultiPayload();
LABEL_9:
    sub_21B46AF08(v16, v20);
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v34 = v29 == 0x6C61636F6CLL && v25 == 0xE500000000000000;
  if (v34 || (sub_21B4CA608() & 1) != 0)
  {

    sub_21B4C75F8();
    LOBYTE(v53) = 1;
    sub_21B46AFFC(&qword_27CD87DB8, MEMORY[0x277D854C0]);
    v35 = v46[0];
    v36 = v55;
    sub_21B4CA538();
    (*(v28 + 8))(v7, v35);
    v55 = v36;
    if (v36)
    {
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    swift_storeEnumTagMultiPayload();
    v37 = v19;
    goto LABEL_24;
  }

  if ((v29 != 0x65746F6D6572 || v25 != 0xE600000000000000) && (sub_21B4CA608() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    sub_21B4CA758();
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_21B4CA338();

    v53 = 0xD000000000000020;
    v54 = 0x800000021B4E11E0;
    MEMORY[0x21CEF2F30](v29, v25);

    sub_21B4CA388();
    v40 = sub_21B4CA3A8();
    v41 = swift_allocError();
    v43 = v42;
    v44 = v47;
    v45 = v48;
    (*(v47 + 16))(v42, v21, v48);
    (*(*(v40 - 8) + 104))(v43, *MEMORY[0x277D84168], v40);
    v55 = v41;
    swift_willThrow();
    (*(v44 + 8))(v21, v45);
    (*(v28 + 8))(v7, v46[0]);
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  sub_21B4C5748();
  LOBYTE(v53) = 2;
  sub_21B46AFFC(&qword_27CD87DB0, MEMORY[0x277CC9260]);
  v38 = v46[0];
  v39 = v55;
  sub_21B4CA538();
  (*(v28 + 8))(v7, v38);
  v55 = v39;
  if (!v39)
  {
    swift_storeEnumTagMultiPayload();
    v37 = v10;
LABEL_24:
    sub_21B46AF08(v37, v16);
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87D58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_21B4C5578();
  swift_allocObject();
  sub_21B4C5568();
  v7 = type metadata accessor for JSPackageLocation();
  v8 = a1;
  v9 = sub_21B4C5788();
  v11 = v10;

  sub_21B46AFFC(&qword_27CD87DD8, type metadata accessor for JSPackageLocation);
  sub_21B4C5558();

  sub_21B36D4F4(v9, v11);
  v12 = *(*(v7 - 8) + 56);
  v12(v6, 0, 1, v7);
  sub_21B46AF08(v6, a2);
  return (v12)(a2, 0, 1, v7);
}