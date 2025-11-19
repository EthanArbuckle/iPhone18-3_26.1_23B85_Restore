void sub_21B68D5D8(uint64_t a1)
{
  v19 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = [v1 collectionView];
  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5;
  v7 = [v5 preparedCells];

  if (v7)
  {
    sub_21B61785C(0, &unk_28120B2A8);
    v8 = sub_21B6C8E84();

    if (v8 >> 62)
    {
      v9 = sub_21B6C9454();
      if (v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_5:
        if (v9 >= 1)
        {
          for (i = 0; i != v9; ++i)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x21CEF66E0](i, v8);
            }

            else
            {
              v11 = *(v8 + 8 * i + 32);
            }

            v12 = v11;
            swift_getObjectType();
            v13 = swift_conformsToProtocol2();
            if (v13)
            {
              if (v12)
              {
                v14 = v13;
                ObjectType = swift_getObjectType();
                v16 = sub_21B6C8854();
                v17 = *(v16 - 8);
                (*(v17 + 16))(v4, v19, v16);
                (*(v17 + 56))(v4, 0, 1, v16);
                (*(v14 + 16))(v4, ObjectType, v14);
              }
            }
          }

LABEL_18:

          return;
        }

        __break(1u);
        goto LABEL_20;
      }
    }

    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_21B68D878()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94298);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  result = BSDispatchQueueAssertMain();
  v6 = OBJC_IVAR___PBFPosterRackCollectionViewController_focusUpdateSubscription;
  if (!*(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_focusUpdateSubscription))
  {
    if (qword_28120B390 != -1)
    {
      swift_once();
    }

    v7 = sub_21B6C8AB4();
    __swift_project_value_buffer(v7, qword_28120CD78);
    v8 = sub_21B6C9044();
    v9 = sub_21B6C8A94();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21B526000, v9, v8, "beginWatchingFocusUpdates", v10, 2u);
      MEMORY[0x21CEF8150](v10, -1, -1);
    }

    v11 = sub_21B6C8F14();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21B6C8EF4();

    v13 = sub_21B6C8EE4();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;

    *(v1 + v6) = sub_21B68F1FC(0, 0, v4, &unk_21B6D9D00, v14);
  }

  return result;
}

uint64_t sub_21B68DAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[39] = a4;
  v4[40] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD942A0);
  v4[41] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD942A8);
  v4[42] = v5;
  v4[43] = *(v5 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD942B0);
  v4[46] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD942B8);
  v4[47] = v6;
  v4[48] = *(v6 - 8);
  v4[49] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD942C0);
  v4[50] = v7;
  v4[51] = *(v7 - 8);
  v4[52] = swift_task_alloc();
  v4[53] = sub_21B6C8EF4();
  v4[54] = sub_21B6C8EE4();
  v8 = sub_21B6C8EB4();
  v4[55] = v8;
  v4[56] = v9;

  return MEMORY[0x2822009F8](sub_21B68DCF0, v8);
}

uint64_t sub_21B68DCF0()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  v4 = v0[44];
  v6 = v0[42];
  v5 = v0[43];
  v7 = sub_21B6C8D74();
  v8 = [objc_opt_self() serviceForClientIdentifier_];
  v0[57] = v8;

  *v4 = 1;
  (*(v5 + 104))(v4, *MEMORY[0x277D85898], v6);
  *(swift_task_alloc() + 16) = v8;
  sub_21B6C8F74();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21B62AA24(&qword_28120B338, &qword_27CD942B0);
  sub_21B6C96D4();
  MEMORY[0x21CEF6800](v3);
  sub_21B6C8F34();
  sub_21B6C96A4();
  (*(v2 + 8))(v1, v3);
  sub_21B6C96B4();
  v9 = sub_21B6C8EE4();
  v0[58] = v9;
  if (v9)
  {
    swift_getObjectType();
    v10 = sub_21B6C8EB4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v0[59] = v10;
  v0[60] = v12;

  return MEMORY[0x2822009F8](sub_21B68DF98, v10);
}

uint64_t sub_21B68DF98()
{
  if (sub_21B6C9684())
  {

    v1 = v0[55];

    return MEMORY[0x2822009F8](sub_21B68E218, v1);
  }

  else
  {
    v2 = v0[58];
    v0[61] = sub_21B6C9674();
    v3 = sub_21B62AA24(&qword_28120B340, &qword_27CD942A0);
    v4 = swift_task_alloc();
    v0[62] = v4;
    *v4 = v0;
    v4[1] = sub_21B68E0F0;
    v5 = v0[40];
    v6 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 553, v2, v6, v0 + 36, v5, v3);
  }
}

uint64_t sub_21B68E0F0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 472);
    v4 = sub_21B68EB18;
  }

  else
  {
    (*(v2 + 488))();
    v3 = *(v2 + 472);
    v4 = sub_21B68E9D4;
  }

  return MEMORY[0x2822009F8](v4, v3);
}

uint64_t sub_21B68E218()
{
  v1 = v0[57];
  (*(v0[51] + 8))(v0[52], v0[50]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_21B68E2DC()
{

  *(v0 + 554) = *(v0 + 552);
  v1 = *(v0 + 440);

  return MEMORY[0x2822009F8](sub_21B68E348, v1);
}

uint64_t sub_21B68E348()
{
  if (*(v0 + 554) == 2)
  {
    v1 = *(v0 + 456);
    (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21B68E454, 0);
  }
}

uint64_t sub_21B68E454()
{
  *(v0 + 504) = sub_21B6C8EE4();
  v1 = sub_21B6C8EB4();

  return MEMORY[0x2822009F8](sub_21B68E4E0, v1);
}

uint64_t sub_21B68E4E0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 554);
    *(Strong + OBJC_IVAR___PBFPosterRackCollectionViewController_isFocusSetup) = v3 & 1;
    v37 = Strong;
    if (v3)
    {
LABEL_16:
      v13 = *(v2 + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore);
      v14 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
      swift_beginAccess();
      v15 = *(v13 + v14);
      if (v15 >> 62)
      {
        goto LABEL_43;
      }

      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:
      v17 = v16 > 1;
      v11 = (v2 + OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells);
      v18 = *(v2 + OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells);
      *(v2 + OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells) = v17;
      if (((v17 ^ v18) & 1) == 0)
      {
LABEL_15:

        goto LABEL_51;
      }
    }

    else
    {
      v4 = *(Strong + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore);
      v5 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
      swift_beginAccess();
      v6 = *(v4 + v5);
      if (v6 >> 62)
      {
        v7 = sub_21B6C9454();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v2 = 0;
      while (v7 != v2)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x21CEF66E0](v2, v6);
        }

        else
        {
          if (v2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v8 = *(v6 + 8 * v2 + 32);
        }

        v9 = v8;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_41;
        }

        v10 = [*&v8[OBJC_IVAR___PBFPosterPair_configuredProperties] focusConfiguration];

        ++v2;
        if (v10)
        {

          v2 = v37;
          goto LABEL_16;
        }
      }

      v2 = v37;
      v11 = v37 + OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells;
      v12 = *(v37 + OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells);
      *(v37 + OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells) = 0;
      if ((v12 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v19 = [v2 collectionView];
    if (v19)
    {
      v21 = v19;
      v22 = [v19 preparedCells];

      if (v22)
      {
        sub_21B61785C(0, &unk_28120B2A8);
        v23 = sub_21B6C8E84();

        if (v23 >> 62)
        {
          v24 = sub_21B6C9454();
          v36 = v11;
          if (v24)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v36 = v11;
          if (v24)
          {
LABEL_23:
            v25 = 0;
            v2 = MEMORY[0x277D84F90];
            while (1)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v26 = MEMORY[0x21CEF66E0](v25, v23);
                v27 = v25 + 1;
                if (__OFADD__(v25, 1))
                {
                  goto LABEL_39;
                }
              }

              else
              {
                if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_40;
                }

                v26 = *(v23 + 8 * v25 + 32);
                v27 = v25 + 1;
                if (__OFADD__(v25, 1))
                {
LABEL_39:
                  __break(1u);
LABEL_40:
                  __break(1u);
LABEL_41:
                  __break(1u);
LABEL_42:
                  __break(1u);
LABEL_43:
                  v16 = sub_21B6C9454();
                  goto LABEL_18;
                }
              }

              *(v0 + 304) = v26;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD941C0);
              if (swift_dynamicCast())
              {
                if (*(v0 + 80))
                {
                  sub_21B69C678((v0 + 56), v0 + 16);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v2 = sub_21B6A2F30(0, *(v2 + 16) + 1, 1, v2);
                  }

                  v29 = *(v2 + 16);
                  v28 = *(v2 + 24);
                  if (v29 >= v28 >> 1)
                  {
                    v2 = sub_21B6A2F30((v28 > 1), v29 + 1, 1, v2);
                  }

                  *(v2 + 16) = v29 + 1;
                  sub_21B69C678((v0 + 16), v2 + 40 * v29 + 32);
                  goto LABEL_26;
                }
              }

              else
              {
                *(v0 + 88) = 0;
                *(v0 + 72) = 0u;
                *(v0 + 56) = 0u;
              }

              sub_21B62AA8C(v0 + 56, &qword_27CD941C8);
LABEL_26:
              ++v25;
              if (v27 == v24)
              {
                goto LABEL_47;
              }
            }
          }
        }

        v2 = MEMORY[0x277D84F90];
LABEL_47:

        v30 = *(v2 + 16);
        if (v30)
        {
          v31 = v2 + 32;
          do
          {
            sub_21B69C690(v31, v0 + 96);
            v32 = *v36;
            v33 = *(v0 + 120);
            v34 = *(v0 + 128);
            __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, v33);
            (*(v34 + 16))(v32, v33, v34);
            __swift_destroy_boxed_opaque_existential_0(v0 + 96);
            v31 += 40;
            --v30;
          }

          while (v30);
        }

        goto LABEL_51;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x2822009F8](v19, v20);
  }

LABEL_51:
  v20 = *(v0 + 440);
  v19 = sub_21B68EF98;

  return MEMORY[0x2822009F8](v19, v20);
}

uint64_t sub_21B68E9D4()
{
  if (*(v0 + 553))
  {

    v1 = *(v0 + 440);

    return MEMORY[0x2822009F8](sub_21B68E218, v1);
  }

  else
  {
    v2 = sub_21B6C96A4();
    *(v0 + 512) = v3;
    v6 = (v2 + *v2);
    v4 = swift_task_alloc();
    *(v0 + 520) = v4;
    *v4 = v0;
    v4[1] = sub_21B68EBDC;

    return v6(v0 + 552);
  }
}

uint64_t sub_21B68EB18()
{
  v1 = v0[61];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD942C8);
  v2 = swift_allocError();
  *v3 = v0[36];
  v1(v0 + 17, 1);

  v0[67] = v2;
  v4 = v0[55];

  return MEMORY[0x2822009F8](sub_21B68EDC0, v4);
}

uint64_t sub_21B68EBDC()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  v3 = *(v2 + 472);
  if (v0)
  {
    v4 = sub_21B68ED30;
  }

  else
  {
    v4 = sub_21B68E2DC;
  }

  return MEMORY[0x2822009F8](v4, v3);
}

uint64_t sub_21B68ED30()
{
  sub_21B6C9694();
  swift_willThrow();

  v0[67] = v0[66];
  v1 = v0[55];

  return MEMORY[0x2822009F8](sub_21B68EDC0, v1);
}

uint64_t sub_21B68EDC0()
{
  v16 = v0;
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 400);

  (*(v2 + 8))(v1, v3);
  if (qword_27CD925B0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 536);
  v5 = sub_21B6C8AB4();
  __swift_project_value_buffer(v5, qword_27CD94D78);
  v6 = v4;
  v7 = sub_21B6C8A94();
  v8 = sub_21B6C9024();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_21B6C9744();
    v13 = sub_21B656178(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21B526000, v7, v8, "Error thrown by DNDModeConfigurationService: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x21CEF8150](v10, -1, -1);
    MEMORY[0x21CEF8150](v9, -1, -1);
  }

  return MEMORY[0x2822009F8](sub_21B68F030, 0);
}

uint64_t sub_21B68EF98()
{
  v1 = sub_21B6C8EE4();
  v0[58] = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_21B6C8EB4();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[59] = v2;
  v0[60] = v4;

  return MEMORY[0x2822009F8](sub_21B68DF98, v2);
}

uint64_t sub_21B68F030()
{
  *(v0 + 544) = sub_21B6C8EE4();
  v1 = sub_21B6C8EB4();

  return MEMORY[0x2822009F8](sub_21B68F0BC, v1);
}

uint64_t sub_21B68F0BC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_21B68F4FC();
  }

  v3 = *(v0 + 440);

  return MEMORY[0x2822009F8](sub_21B68F150, v3);
}

uint64_t sub_21B68F150()
{
  v1 = *(v0 + 536);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21B68F1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94298);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21B63D2BC(a3, v25 - v10, &qword_27CD94298);
  v12 = sub_21B6C8F14();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21B62AA8C(v11, &qword_27CD94298);
  }

  else
  {
    sub_21B6C8F04();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21B6C8EB4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21B6C8DC4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21B62AA8C(a3, &qword_27CD94298);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21B62AA8C(a3, &qword_27CD94298);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21B68F4FC()
{
  v1 = v0;
  BSDispatchQueueAssertMain();
  if (qword_28120B390 != -1)
  {
    swift_once();
  }

  v2 = sub_21B6C8AB4();
  __swift_project_value_buffer(v2, qword_28120CD78);
  v3 = sub_21B6C9044();
  v4 = sub_21B6C8A94();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21B526000, v4, v3, "endWatchingFocusUpdates", v5, 2u);
    MEMORY[0x21CEF8150](v5, -1, -1);
  }

  v6 = OBJC_IVAR___PBFPosterRackCollectionViewController_focusUpdateSubscription;
  if (*(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_focusUpdateSubscription))
  {

    sub_21B6C8F24();
  }

  *(v1 + v6) = 0;
}

void sub_21B68F638()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_30;
  }

  v3 = v2;
  v4 = [v2 preparedCells];

  if (!v4)
  {
LABEL_30:
    __break(1u);
    return;
  }

  sub_21B61785C(0, &unk_28120B2A8);
  v5 = sub_21B6C8E84();

  if (v5 >> 62)
  {
    goto LABEL_23;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v6; i = v1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v1 = &qword_27CD941C0;
    while ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CEF66E0](v7, v5);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

LABEL_12:
      *&v23 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD941C0);
      if (swift_dynamicCast())
      {
        if (*(&v21 + 1))
        {
          sub_21B69C678(&v20, &v23);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_21B6A2F30(0, v8[2] + 1, 1, v8);
          }

          v12 = v8[2];
          v11 = v8[3];
          if (v12 >= v11 >> 1)
          {
            v8 = sub_21B6A2F30((v11 > 1), v12 + 1, 1, v8);
          }

          v8[2] = v12 + 1;
          sub_21B69C678(&v23, &v8[5 * v12 + 4]);
          v1 = &qword_27CD941C0;
          goto LABEL_8;
        }
      }

      else
      {
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
      }

      sub_21B62AA8C(&v20, &qword_27CD941C8);
LABEL_8:
      ++v7;
      if (v10 == v6)
      {
        goto LABEL_25;
      }
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    v9 = *(v5 + 8 * v7 + 32);
    v10 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_12;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v6 = sub_21B6C9454();
  }

  v8 = MEMORY[0x277D84F90];
LABEL_25:

  v13 = v8[2];
  if (v13)
  {
    v14 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells;
    v15 = (v8 + 4);
    do
    {
      sub_21B69C690(v15, &v23);
      v16 = *(i + v14);
      v17 = v24;
      v18 = v25;
      __swift_mutable_project_boxed_opaque_existential_1(&v23, v24);
      (*(v18 + 16))(v16, v17, v18);
      __swift_destroy_boxed_opaque_existential_0(&v23);
      v15 += 40;
      --v13;
    }

    while (v13);
  }
}

void sub_21B68F91C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair);
  if (v2)
  {
    v3 = v1;
    v26 = v2;
    if (sub_21B620A90(v26))
    {
      if (qword_28120B390 != -1)
      {
        swift_once();
      }

      v4 = sub_21B6C8AB4();
      __swift_project_value_buffer(v4, qword_28120CD78);
      v5 = sub_21B6C9044();
      v6 = sub_21B6C8A94();
      if (os_log_type_enabled(v6, v5))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_21B526000, v6, v5, "PosterStore cannot set focus on last non focus associated Poster", v7, 2u);
        MEMORY[0x21CEF8150](v7, -1, -1);
      }

      v8 = sub_21B6C8D74();
      v9 = PBFLocalizedString(v8);

      if (!v9)
      {
        sub_21B6C8DA4();
        v9 = sub_21B6C8D74();
      }

      v10 = sub_21B6C8D74();
      v11 = PBFLocalizedString(v10);

      if (!v11)
      {
        sub_21B6C8DA4();
        v11 = sub_21B6C8D74();
      }

      v12 = [objc_opt_self() alertControllerWithTitle:v9 message:v11 preferredStyle:1];

      v13 = sub_21B6C8D74();
      v14 = PBFLocalizedString(v13);

      if (!v14)
      {
        sub_21B6C8DA4();
        v14 = sub_21B6C8D74();
      }

      v15 = [objc_opt_self() actionWithTitle:v14 style:0 handler:0];

      [v12 addAction_];
      [v3 presentViewController:v12 animated:1 completion:0];
    }

    else
    {
      v16 = [*&v26[OBJC_IVAR___PBFPosterPair_configuredProperties] focusConfiguration];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 activityIdentifier];

        if (!v18)
        {
          sub_21B6C8DA4();
          v18 = sub_21B6C8D74();
        }
      }

      else
      {
        v18 = 0;
      }

      v19 = sub_21B6C8D74();
      v20 = PBFLocalizedString(v19);

      if (!v20)
      {
        sub_21B6C8DA4();
        v20 = sub_21B6C8D74();
      }

      v21 = [objc_opt_self() selectionControllerWithSelectedActivityIdentifier:v18 title:0 subtitle:v20];

      if (!v21)
      {
        __break(1u);
        return;
      }

      [v21 setDelegate_];
      swift_unknownObjectWeakAssign();
      v12 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      v22 = [v12 sheetPresentationController];
      if (v22)
      {
        v23 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_21B6D81D0;
        *(v24 + 32) = [objc_opt_self() mediumDetent];
        sub_21B61785C(0, &qword_27CD93438);
        v25 = sub_21B6C8E74();

        [v23 setDetents_];

        PRSheetCornerRadius();
        sub_21B6C90E4();
      }

      [v3 presentViewController:v12 animated:1 completion:0];
    }
  }
}

uint64_t sub_21B68FE30()
{
  v1 = v0;
  v2 = sub_21B6C8A04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_21B698B34(MEMORY[0x277D84F90]);
  v6 = &selRef__prepareAttributesForIngestionForPoster_existingAttributes_incomingAttributes_proposedAttributesToDelete_proposedAttributesToUpdate_storage_currentCollection_error_;
  v7 = [v0 collectionView];
  if (!v7)
  {
    goto LABEL_36;
  }

  v8 = v7;
  v9 = [v7 indexPathsForVisibleItems];

  v10 = sub_21B6C8E84();
  v51 = *(v10 + 16);
  if (!v51)
  {
LABEL_29:

    return v48;
  }

  v11 = 0;
  v49 = (v3 + 8);
  v50 = v3 + 16;
  v46 = v10;
  v47 = v5;
  while (v11 < *(v10 + 16))
  {
    (*(v3 + 16))(v5, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v2);
    v12 = [v1 v6[511]];
    if (!v12)
    {
      goto LABEL_33;
    }

    v13 = v12;
    v14 = sub_21B6C8974();
    v15 = [v13 cellForItemAtIndexPath_];

    if (!v15)
    {
      goto LABEL_5;
    }

    type metadata accessor for LockScreenPosterCollectionViewCell();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {

LABEL_5:
      (*v49)(v5, v2);
      goto LABEL_6;
    }

    v17 = v16;
    v18 = sub_21B6C89F4();
    v19 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView;
    v20 = *(v17 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView);
    if (!v20)
    {
      goto LABEL_34;
    }

    [v20 bounds];
    v22 = v21 * *(v17 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_maximumVerticalRevealFraction);
    v23 = 0.0;
    if (v22 > 0.0)
    {
      v24 = *(v17 + v19);
      if (!v24)
      {
        goto LABEL_35;
      }

      [v24 contentOffset];
      v26 = v25 / v22;
      if (v25 / v22 <= 0.0)
      {
        v26 = 0.0;
      }

      v23 = 1.0;
      if (v26 <= 1.0)
      {
        v23 = v26;
      }
    }

    v27 = v3;
    v28 = v2;
    v29 = v1;
    v30 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v30;
    v33 = sub_21B695EF4(v18);
    v34 = *(v30 + 16);
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_31;
    }

    v37 = v32;
    if (*(v30 + 24) >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21B697C30();
      }
    }

    else
    {
      sub_21B697420(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_21B695EF4(v18);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_37;
      }

      v33 = v38;
    }

    v40 = v52;
    v48 = v52;
    if (v37)
    {
      *(v52[7] + 8 * v33) = v23;

      v5 = v47;
      v2 = v28;
      (*v49)(v47, v28);
    }

    else
    {
      v52[(v33 >> 6) + 8] |= 1 << v33;
      *(v40[6] + 8 * v33) = v18;
      *(v40[7] + 8 * v33) = v23;

      v5 = v47;
      v2 = v28;
      (*v49)(v47, v28);
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_32;
      }

      v40[2] = v43;
    }

    v1 = v29;
    v3 = v27;
    v6 = &selRef__prepareAttributesForIngestionForPoster_existingAttributes_incomingAttributes_proposedAttributesToDelete_proposedAttributesToUpdate_storage_currentCollection_error_;
    v10 = v46;
LABEL_6:
    if (v51 == ++v11)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_21B6C9734();
  __break(1u);
  return result;
}

void sub_21B690260(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = sub_21B6C8A04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v4 collectionView];
  if (!v12)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  MEMORY[0x21CEF5B60](0, a1);
  v14 = sub_21B6C8974();
  (*(v9 + 8))(v11, v8);
  v15 = [v13 layoutAttributesForItemAtIndexPath_];

  if (!v15)
  {
    return;
  }

  [v15 frame];
  MinX = CGRectGetMinX(v24);
  sub_21B632ED0(0, MinX);
  v18 = v17;
  v20 = v19;
  v21 = [v4 collectionView];
  v22 = v21;
  if ((a2 & 1) == 0 || (a3 & 1) == 0)
  {
    if (v21)
    {
      [v21 setContentOffset:a2 & 1 animated:{v18, v20}];

      if ((a2 & 1) == 0)
      {
        sub_21B67BCBC(0, 1);
      }

      v22 = v15;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (!v21)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v21 _setContentOffsetWithDecelerationAnimation_];

LABEL_11:
}

void __swiftcall PosterRackCollectionViewController.topButtonLayout(for:)(PREditingSceneViewControllerTopButtonLayout *__return_ptr retstr, PREditingSceneViewController *a2)
{
  [(PREditingSceneViewController *)a2 addObserver:v2];
  v4 = v2 + OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonFrame;
  swift_beginAccess();
  v5 = v2 + OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonFrame;
  v7 = *(v4 + 16);
  v8 = *v4;
  swift_beginAccess();
  retstr->leadingTopButtonFrame.origin = v8;
  retstr->leadingTopButtonFrame.size = v7;
  v6 = *(v5 + 16);
  retstr->trailingTopButtonFrame.origin = *v5;
  retstr->trailingTopButtonFrame.size = v6;
}

void PosterRackCollectionViewController.editingSceneViewController(_:userDidDismissWith:updatedConfiguration:updatedConfiguredProperties:completion:)(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v250 = a6;
  v248 = a4;
  v249 = a5;
  v252 = a1;
  v8 = sub_21B6C8854();
  v247 = *(v8 - 8);
  v9 = v247[8];
  MEMORY[0x28223BE20](v8);
  v241 = &v220 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v246 = &v220 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v12 - 8);
  v238 = &v220 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v237 = &v220 - v15;
  MEMORY[0x28223BE20](v16);
  v240 = &v220 - v17;
  MEMORY[0x28223BE20](v18);
  v239 = &v220 - v19;
  MEMORY[0x28223BE20](v20);
  v242 = &v220 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v220 - v23;
  v245 = sub_21B6C88C4();
  v244 = *(v245 - 8);
  v25 = *(v244 + 64);
  MEMORY[0x28223BE20](v245);
  MEMORY[0x28223BE20](v26);
  v28 = &v220 - v27;
  MEMORY[0x28223BE20](v29);
  v243 = &v220 - v30;
  *&v32 = MEMORY[0x28223BE20](v31).n128_u64[0];
  v34 = &v220 - v33;
  if (a2 != 1)
  {
    goto LABEL_8;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  v35 = v248;
  if (!v248)
  {
    goto LABEL_8;
  }

  v236 = v8;
  v36 = a3;
  [v35 mutableCopy];
  sub_21B6C93E4();
  swift_unknownObjectRelease();
  sub_21B61785C(0, &qword_28120B1B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_8:
    v38 = v252;
    if ([v252 userInfo])
    {
      sub_21B6C93E4();
      swift_unknownObjectRelease();
    }

    else
    {
      v258 = 0u;
      v259 = 0u;
    }

    aBlock = v258;
    v255 = v259;
    if (*(&v259 + 1))
    {
      type metadata accessor for PosterRackCollectionViewController.HomeScreenConfigurationInfo();
      if (swift_dynamicCast())
      {
        v39 = v253;
        if (*(v253 + 3))
        {
          [swift_unknownObjectRetain() invalidate];
          v40 = *(v39 + 2);
          if (v40)
          {
            v41 = v40;
            v42 = [v41 _path];
            v43 = [v42 serverIdentity];

            if (!v43)
            {
              __break(1u);
              goto LABEL_126;
            }

            v44 = [v43 posterUUID];

            v45 = v243;
            sub_21B6C88A4();

            v46 = sub_21B6C8874();
            v48 = v47;
            (*(v244 + 8))(v45, v245);
            v49 = sub_21B61F5F8(v46, v48);

            if (v49)
            {
              v50 = OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration;
              v51 = *&v49[OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration];
              if (v51 && ([v51 mutableCopy], sub_21B6C93E4(), swift_unknownObjectRelease(), sub_21B61785C(0, &unk_28120B188), (swift_dynamicCast() & 1) != 0))
              {
                v52 = v258;
                if (v39[40])
                {
                  v53 = 0;
                }

                else
                {
                  v53 = *(v39 + 4);
                }

                [v258 setSelectedAppearanceType_];
                v54 = *&v49[v50];
                *&v49[v50] = v52;
                v55 = v52;
                sub_21B6A2434(v54);

                swift_unknownObjectRelease();
              }

              else
              {

                swift_unknownObjectRelease();
              }

              goto LABEL_55;
            }
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }

    else
    {
      sub_21B62AA8C(&aBlock, &qword_27CD936C0);
    }

LABEL_55:
    v125 = v251;
    v126 = OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper;
    if (*&v251[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper])
    {
      if (qword_27CD925D8 != -1)
      {
        swift_once();
      }

      v127 = sub_21B6C8AB4();
      __swift_project_value_buffer(v127, qword_27CD94DC0);
      v128 = sub_21B6C8A94();
      v129 = sub_21B6C9004();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&dword_21B526000, v128, v129, "Legacy migration cancelled, clearing migration info", v130, 2u);
        MEMORY[0x21CEF8150](v130, -1, -1);
      }

      v131 = *&v125[v126];
      *&v125[v126] = 0;
    }

    v132 = 0;
    goto LABEL_62;
  }

  v234 = v36;
  v37 = v258;
  if ([v252 userInfo])
  {
    sub_21B6C93E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v258 = 0u;
    v259 = 0u;
  }

  aBlock = v258;
  v255 = v259;
  v235 = v37;
  if (*(&v259 + 1))
  {
    type metadata accessor for PosterRackCollectionViewController.HomeScreenConfigurationInfo();
    if (swift_dynamicCast())
    {
      v56 = v253;
      v57 = *(v253 + 2);
      if (!v57)
      {
LABEL_128:
        sub_21B6C95D4();
        __break(1u);
        return;
      }

      v58 = v57;
      v59 = v234;
      v60 = [v234 _path];
      v61 = v252;
      v248 = [v252 contentsIdentity];
      if (v248)
      {
        v62 = [v58 _path];
        v63 = [v62 serverIdentity];

        if (v63)
        {
          v246 = v56;
          v247 = v58;
          v64 = [v63 posterUUID];

          sub_21B6C88A4();
          if ([v61 destination] == 2)
          {
            v65 = v60;
            v66 = v60;
            v67 = v248;
            v68 = [v248 posterUUID];
            v69 = v37;
            v70 = v243;
            sub_21B6C88A4();

            v71 = objc_allocWithZone(MEMORY[0x277D3ECE0]);
            v72 = v67;
            v73 = v69;
            v74 = sub_21B6C8884();
            v75 = sub_21B6C8884();
            v76 = [v71 initWithUpdatedPath:v66 updatedPosterUUID:v74 parentPosterUUID:v75 sourceIdentity:v72 configuredProperties:v73 attributes:0];

            v59 = v234;
            (*(v244 + 8))(v70, v245);
          }

          else
          {
            v148 = objc_allocWithZone(MEMORY[0x277D3ECE0]);
            v65 = v60;
            v149 = v37;
            v150 = v60;
            v151 = v248;
            v152 = v149;
            v153 = sub_21B6C8884();
            v76 = [v148 initWithNewPath:v150 destinationPosterUUID:0 parentPosterUUID:v153 sourceIdentity:v151 configuredProperties:v152 attributes:0];
          }

          v154 = v76;
          v155 = v247;
          sub_21B6255EC(v154, v247);

          v156 = *(v246 + 3);
          if (v156)
          {
            [v156 invalidate];
          }

          else
          {

            v154 = v65;
            v155 = v59;
          }

          v38 = v252;

          (*(v244 + 8))(v34, v245);
          v132 = 1;
          v125 = v251;
LABEL_62:
          v133 = [v38 parentViewController];
          if (v133 && (v134 = v133, sub_21B61785C(0, &unk_28120B310), v135 = v125, v136 = sub_21B6C91A4(), v135, v134, (v136 & 1) != 0))
          {
            v137 = swift_allocObject();
            v137[2] = v249;
            v137[3] = v250;

            PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(1, 1, 0, sub_21B69C278, v137);
          }

          else if (v132)
          {
            v138 = swift_allocObject();
            v139 = v250;
            *(v138 + 16) = v249;
            *(v138 + 24) = v139;
            v256 = sub_21B69F934;
            v257 = v138;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v255 = sub_21B63863C;
            *(&v255 + 1) = &block_descriptor_141_0;
            v140 = _Block_copy(&aBlock);

            [v125 dismissPresentedViewControllersAnimated:1 dismissHandler:0 completion:v140];
            _Block_release(v140);
          }

          else
          {
            v141 = [v125 presentedViewController];
            if (v141)
            {
              v142 = v141;
              objc_opt_self();
              v143 = swift_dynamicCastObjCClass();
              if (!v143)
              {
              }
            }

            else
            {
              v143 = 0;
            }

            v144 = swift_allocObject();
            *(v144 + 16) = v38;
            v256 = sub_21B69C268;
            v257 = v144;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v255 = sub_21B63863C;
            *(&v255 + 1) = &block_descriptor_135_0;
            v145 = _Block_copy(&aBlock);
            v146 = v38;

            [v146 dismissViewControllerAnimated:1 completion:v145];
            _Block_release(v145);
            v249(0);
          }

          return;
        }

        goto LABEL_127;
      }

LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }
  }

  else
  {
    sub_21B62AA8C(&aBlock, &qword_27CD936C0);
  }

  v77 = [v37 suggestionMetadata];
  v78 = v251;
  if (!v77 || (v79 = v77, v80 = [v77 metadataBySettingLastModifiedDateToNow], v79, !v80))
  {
    sub_21B698F80(MEMORY[0x277D84F90]);
    sub_21B6C8844();
    v81 = v247;
    v82 = v236;
    (v247[7])(v24, 0, 1, v236);
    sub_21B61785C(0, &qword_27CD93E18);
    v83 = sub_21B6C8D14();

    v84 = 0;
    if ((v81[6])(v24, 1, v82) != 1)
    {
      v84 = sub_21B6C87F4();
      (v247[1])(v24, v236);
    }

    v80 = [objc_allocWithZone(MEMORY[0x277D3EE20]) initWithSuggestedGalleryItem:0 suggestedComplicationsByIdentifier:v83 lastModifiedDate:v84];
  }

  [v235 setSuggestionMetadata_];
  v85 = *&v78[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
  v86 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v227 = v85;
  v87 = *(v85 + v86);
  v226 = v86;
  if (v87 >> 62)
  {
    v233 = sub_21B6C9454();
  }

  else
  {
    v233 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v88 = [objc_allocWithZone(type metadata accessor for PosterEditingIngestionManager()) init];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v89 = [v78 presentedViewController];
  if (v89)
  {
    v90 = v89;
    objc_opt_self();
    v91 = swift_dynamicCastObjCClass();
    if (!v91)
    {
    }
  }

  else
  {
    v91 = 0;
  }

  sub_21B6C8824();
  v228 = v88;
  PosterEditingIngestionManager.ingestConfiguration(_:updatedConfiguredProperties:editingViewController:galleryViewController:showEditingConfirmation:)(v234, v235, v252, v91, v91 != 0);
  v93 = v92;
  v229 = OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper;
  v94 = *&v78[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper];
  v231 = v80;
  v232 = v91;
  v230 = v92;
  if (!v94)
  {
    goto LABEL_83;
  }

  if (!v92)
  {
    v147 = v94;
    goto LABEL_79;
  }

  v95 = *&v92[OBJC_IVAR___PBFPosterPair_configuration];
  v96 = v92;
  v225 = v94;
  v97 = [v95 _path];
  v98 = [v97 serverIdentity];

  if (!v98)
  {

LABEL_79:
    v25 = v252;
    if (qword_27CD925D8 == -1)
    {
      goto LABEL_80;
    }

    goto LABEL_121;
  }

  v94 = v236;
  v99 = [v98 posterUUID];

  sub_21B6C88A4();
  v100 = *(v244 + 32);
  v223 = v244 + 32;
  v222 = v100;
  v100(v28, &v220 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v245);
  if (qword_27CD925D8 != -1)
  {
LABEL_124:
    swift_once();
  }

  v224 = v96;
  v101 = sub_21B6C8AB4();
  __swift_project_value_buffer(v101, qword_27CD94DC0);
  v102 = sub_21B6C8A94();
  v103 = sub_21B6C9044();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&dword_21B526000, v102, v103, "Legacy migration adding save activity indicator", v104, 2u);
    MEMORY[0x21CEF8150](v104, -1, -1);
  }

  [v252 addLongSaveOperationIndicator];
  v221 = sub_21B6C8884();
  v220 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = v247;
  (v247[2])(v241, v246, v94);
  v106 = v244;
  (*(v244 + 16))(v243, v28, v245);
  v107 = (*(v105 + 80) + 24) & ~*(v105 + 80);
  v108 = (v9 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
  v109 = (*(v106 + 80) + v108 + 8) & ~*(v106 + 80);
  v110 = (v25 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
  v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
  v112 = swift_allocObject();
  v113 = v252;
  *(v112 + 16) = v252;
  (v105[4])(v112 + v107, v241, v236);
  v114 = v225;
  *(v112 + v108) = v225;
  v222(v112 + v109, v243, v245);
  *(v112 + v110) = v220;
  v115 = v232;
  *(v112 + v111) = v232;
  v116 = (v112 + ((v111 + 15) & 0xFFFFFFFFFFFFFFF8));
  v117 = v250;
  *v116 = v249;
  v116[1] = v117;
  v256 = sub_21B69C2CC;
  v257 = v112;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v255 = sub_21B66FFFC;
  *(&v255 + 1) = &block_descriptor_166;
  v118 = _Block_copy(&aBlock);
  v119 = v115;

  v120 = v114;
  v121 = v113;

  v122 = v221;
  [v120 migrateHomePosterAndAssociateToConfiguration:v221 completion:v118];
  _Block_release(v118);

  (*(v244 + 8))(v28, v245);
  v123 = v248;
  v124 = v224;
  while (1)
  {
    v177 = [v123 suggestionMetadata];
    v178 = v242;
    v179 = v239;
    if (v177)
    {
      v180 = v177;
      v181 = [v177 lastModifiedDate];

      v182 = v236;
      v25 = v247;
      if (v181)
      {
        sub_21B6C8814();

        v183 = 0;
      }

      else
      {
        v183 = 1;
      }

      v184 = v227;
      v28 = v25[7];
      (v28)(v179, v183, 1, v182);
      sub_21B69F13C(v179, v178, &qword_27CD93190);
    }

    else
    {
      v25 = v247;
      v28 = v247[7];
      (v28)(v242, 1, 1, v236);
      v184 = v227;
    }

    v185 = *(v184 + v226);
    if (v185 >> 62)
    {
      v186 = sub_21B6C9454();
    }

    else
    {
      v186 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v187 = [v113 modifications];
    v188 = *&v124[OBJC_IVAR___PBFPosterPair_id + 8];
    v245 = *&v124[OBJC_IVAR___PBFPosterPair_id];
    v244 = v188;
    v252 = v186;
    if (v233 >= v186)
    {
      v94 = 0x7265686374697773;
    }

    else
    {
      v94 = 0x7972656C6C6167;
    }

    v189 = v178;
    v190 = v240;
    sub_21B63D2BC(v189, v240, &qword_27CD93190);
    v9 = v25[6];
    v96 = v236;
    v191 = v9(v190, 1, v236);
    v248 = v94;
    if (v191 == 1)
    {
      sub_21B62AA8C(v190, &qword_27CD93190);
      v192 = -0.0;
      v193 = v238;
      goto LABEL_103;
    }

    sub_21B6C8804();
    v195 = v194;
    v196 = v194;
    (v25[1])(v190, v96);
    if ((*&v196 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    if (v195 >= 9.22337204e18)
    {
      __break(1u);
      goto LABEL_118;
    }

    v193 = v238;
    if (v195 > -9.22337204e18)
    {
      break;
    }

LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    swift_once();
LABEL_80:
    v157 = sub_21B6C8AB4();
    __swift_project_value_buffer(v157, qword_27CD94DC0);
    v158 = sub_21B6C8A94();
    v159 = sub_21B6C9024();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      *v160 = 0;
      _os_log_impl(&dword_21B526000, v158, v159, "Legacy migration failed to persist lock poster, reverting back to previous configuration", v160, 2u);
      MEMORY[0x21CEF8150](v160, -1, -1);
    }

    v161 = v241;
    sub_21B6C8824();
    sub_21B6C87E4();
    v163 = v162;
    v164 = [v94 migrationInfo];
    v165 = sub_21B6C8D74();
    v166 = swift_allocObject();
    *(v166 + 16) = v164;
    *(v166 + 24) = v163;
    *(v166 + 32) = xmmword_21B6D9890;
    v256 = sub_21B65A790;
    v257 = v166;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v255 = sub_21B65A4F8;
    *(&v255 + 1) = &block_descriptor_153;
    v167 = _Block_copy(&aBlock);
    v168 = v164;

    AnalyticsSendEventLazy();
    _Block_release(v167);

    [v25 setShowsContentWhenReady_];
    [v25 setAllowsTransparentContent_];
    [v25 setForcesSceneForeground_];
    v169 = swift_allocObject();
    v170 = v232;
    v171 = v251;
    v169[2] = v232;
    v169[3] = v171;
    v169[4] = v25;
    v169[5] = 1;
    v169[6] = 0;
    v169[7] = 0;
    v256 = sub_21B69C2C8;
    v257 = v169;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v91 = v170;
    *&v255 = sub_21B63863C;
    *(&v255 + 1) = &block_descriptor_159;
    v172 = _Block_copy(&aBlock);
    v173 = v91;
    v174 = v171;
    v175 = v25;

    [v175 dismissViewControllerAnimated:0 completion:v172];
    _Block_release(v172);
    sub_21B681098();
    v176 = *&v171[v229];
    *&v171[v229] = 0;

    v249(0);
    (v247[1])(v161, v236);
    v80 = v231;
    v93 = v230;
LABEL_83:
    v123 = v248;
    if (!v93)
    {
      (v247[1])(v246, v236);

      v132 = 0;
      v125 = v251;
      v38 = v252;
      goto LABEL_62;
    }

    v124 = v93;
    v113 = v252;
  }

  v192 = -v195;
LABEL_103:
  v25 = [v187 colorModified];
  v197 = [v187 fontModified];
  v94 = [v187 numberingSystemModified];
  LODWORD(v240) = [v187 posterContentModified];
  LODWORD(v239) = [v187 widgetsModified];
  LODWORD(v238) = [v187 containedWidgetsBeforeEdit];
  v198 = [v187 startDate];
  LODWORD(v243) = v197;
  if (v198)
  {
    v199 = v198;
    sub_21B6C8814();

    v200 = 0;
  }

  else
  {
    v200 = 1;
  }

  v201 = v247;
  v202 = v193;
  v203 = v193;
  v96 = v236;
  (v28)(v202, v200, 1, v236);
  v204 = v203;
  v205 = v237;
  sub_21B69F13C(v204, v237, &qword_27CD93190);
  if (v9(v205, 1, v96))
  {
    sub_21B62AA8C(v205, &qword_27CD93190);
    v206 = -0.0;
    goto LABEL_112;
  }

  v28 = v241;
  (v201[2])(v241, v205, v96);
  sub_21B62AA8C(v205, &qword_27CD93190);
  sub_21B6C8804();
  v208 = v207;
  v209 = v207;
  (v201[1])(v28, v96);
  if ((*&v209 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_123;
  }

  if (v208 >= 9.22337204e18)
  {
    goto LABEL_119;
  }

  if (v208 <= -9.22337204e18)
  {
    goto LABEL_120;
  }

  v206 = -v208;
LABEL_112:
  v210 = v233 < v252;
  v211 = v206;
  v212 = objc_allocWithZone(MEMORY[0x277CEB7B8]);
  v213 = sub_21B6C8D74();
  v214 = sub_21B6C8D74();

  v215 = sub_21B6C8D74();
  BYTE4(v219) = v238;
  BYTE3(v219) = v239;
  BYTE2(v219) = v240;
  BYTE1(v219) = v94;
  LOBYTE(v219) = v243;
  v216 = [v212 initWithLockscreenId:v213 entryPoint:v214 newlyCreated:v210 secondsSinceLastEdit:v192 outcome:v215 userChangedColor:v25 userChangedFont:v219 userChangedNumberingSystem:v211 userChangedPosterContent:? userChangedWidgets:? didLockscreenHaveWidgetsBeforeEdit:? duration:?];

  v217 = [objc_opt_self() sharedInstance];
  v256 = sub_21B692E64;
  v257 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v255 = sub_21B693014;
  *(&v255 + 1) = &block_descriptor_147_0;
  v218 = _Block_copy(&aBlock);
  [v217 logPosterEdit:v216 completion:v218];
  _Block_release(v218);

  if (!*&v251[v229])
  {
    v249(0);
  }

  sub_21B62AA8C(v242, &qword_27CD93190);
  (v247[1])(v246, v236);
}

uint64_t sub_21B69254C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void (*a9)(void), uint64_t a10)
{
  v72 = a8;
  v73 = a6;
  v76 = a7;
  v13 = sub_21B6C8854();
  v77 = *(v13 - 8);
  v78 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v72 - v18;
  [a3 removeLongSaveOperationIndicator];
  if (qword_27CD925D8 != -1)
  {
    swift_once();
  }

  v74 = a10;
  v75 = a9;
  v20 = sub_21B6C8AB4();
  __swift_project_value_buffer(v20, qword_27CD94DC0);
  v21 = sub_21B6C8A94();
  v22 = sub_21B6C9044();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_21B526000, v21, v22, "Legacy migration removing save activity indicator", v23, 2u);
    MEMORY[0x21CEF8150](v23, -1, -1);
  }

  if (a2)
  {
    v24 = a2;
    v25 = sub_21B6C8A94();
    v26 = sub_21B6C9024();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21B526000, v25, v26, "Legacy migration failed to migrate home poster, reverting back to previous configuration", v27, 2u);
      MEMORY[0x21CEF8150](v27, -1, -1);
    }

    sub_21B6C8824();
    sub_21B6C87E4();
    v29 = v28;
    v30 = [a5 migrationInfo];
    v31 = sub_21B6C8754();
    v32 = [v31 code];

    v33 = sub_21B6C8D74();
    v34 = swift_allocObject();
    v34[2] = v30;
    v34[3] = v29;
    v34[4] = 4;
    v34[5] = v32;
    v83 = sub_21B65A898;
    v84 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v81 = sub_21B65A4F8;
    v82 = &block_descriptor_591;
    v35 = _Block_copy(&aBlock);
    v36 = v30;

    AnalyticsSendEventLazy();
    _Block_release(v35);

    v37 = sub_21B6C8884();
    [a5 revertMigrationWithMigratedConfigurationUUID_];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v39 = Strong;
      [a3 setShowsContentWhenReady_];
      [a3 setAllowsTransparentContent_];
      [a3 setForcesSceneForeground_];
      v40 = swift_allocObject();
      v41 = v72;
      v40[2] = v72;
      v40[3] = v39;
      v40[4] = a3;
      v40[5] = 1;
      v40[6] = 0;
      v40[7] = 0;
      v83 = sub_21B69F920;
      v84 = v40;
      aBlock = MEMORY[0x277D85DD0];
      v80 = 1107296256;
      v81 = sub_21B63863C;
      v82 = &block_descriptor_598;
      v42 = _Block_copy(&aBlock);
      v43 = v41;
      v44 = v39;
      v45 = a3;

      [v45 dismissViewControllerAnimated:0 completion:v42];
      _Block_release(v42);
    }

    swift_beginAccess();
    v46 = swift_unknownObjectWeakLoadStrong();
    if (v46)
    {
      v47 = v46;
      sub_21B681098();
    }

    v75(0);
  }

  else
  {
    v48 = sub_21B6C8884();
    [a5 finalizeMigrationWithMigratedConfigurationUUID_];

    v49 = sub_21B6C8A94();
    v50 = sub_21B6C9044();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_21B526000, v49, v50, "Legacy migration successful", v51, 2u);
      MEMORY[0x21CEF8150](v51, -1, -1);
    }

    sub_21B6C8824();
    v19 = v15;
    sub_21B6C87E4();
    v53 = v52;
    if (([a5 canMigrateLegacyPoster] & 1) != 0 || !objc_msgSend(a5, sel_canMigrateLegacyLockPoster))
    {
      v54 = [a5 migrationInfo];
      v55 = sub_21B6C8D74();
      v58 = swift_allocObject();
      v58[2] = v54;
      v58[3] = v53;
      v58[4] = 0;
      v58[5] = 0;
      v83 = sub_21B65A898;
      v84 = v58;
      aBlock = MEMORY[0x277D85DD0];
      v80 = 1107296256;
      v57 = &block_descriptor_570;
    }

    else
    {
      v54 = [a5 migrationInfo];
      v55 = sub_21B6C8D74();
      v56 = swift_allocObject();
      *(v56 + 16) = v54;
      *(v56 + 24) = v53;
      *(v56 + 32) = xmmword_21B6D98A0;
      v83 = sub_21B65A898;
      v84 = v56;
      aBlock = MEMORY[0x277D85DD0];
      v80 = 1107296256;
      v57 = &block_descriptor_584;
    }

    v81 = sub_21B65A4F8;
    v82 = v57;
    v59 = _Block_copy(&aBlock);
    v60 = v54;

    AnalyticsSendEventLazy();
    _Block_release(v59);

    swift_beginAccess();
    v61 = swift_unknownObjectWeakLoadStrong();
    if (v61)
    {
      v62 = v61;
      [a3 setShowsContentWhenReady_];
      [a3 setAllowsTransparentContent_];
      [a3 setForcesSceneForeground_];
      v63 = swift_allocObject();
      v64 = v72;
      v63[2] = v72;
      v63[3] = v62;
      v63[4] = a3;
      v63[5] = 1;
      v63[6] = 0;
      v63[7] = 0;
      v83 = sub_21B69F920;
      v84 = v63;
      aBlock = MEMORY[0x277D85DD0];
      v80 = 1107296256;
      v81 = sub_21B63863C;
      v82 = &block_descriptor_577;
      v65 = _Block_copy(&aBlock);
      v66 = v64;
      v67 = a3;
      v68 = v62;

      [v67 dismissViewControllerAnimated:0 completion:v65];
      _Block_release(v65);
    }

    swift_beginAccess();
    v69 = swift_unknownObjectWeakLoadStrong();
    if (v69)
    {
      v70 = *&v69[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper];
      *&v69[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper] = 0;
    }

    v75(0);
  }

  return (*(v77 + 8))(v19, v78);
}

void sub_21B692E64(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27CD925C8 != -1)
    {
      swift_once();
    }

    v3 = sub_21B6C8AB4();
    __swift_project_value_buffer(v3, qword_27CD94DA8);
    v4 = a1;
    oslog = sub_21B6C8A94();
    v5 = sub_21B6C9024();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_21B526000, oslog, v5, "PosterRackCollectionViewController: error logging poster edit: %@", v6, 0xCu);
      sub_21B62AA8C(v7, &qword_27CD92EF0);
      MEMORY[0x21CEF8150](v7, -1, -1);
      MEMORY[0x21CEF8150](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

void sub_21B693014(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_21B69314C(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a4;
  v11 = sub_21B6C8A04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v50 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47 = &v46 - v15;
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v46 - v18;
  if (a1)
  {
    v20 = a1;
    v21 = [v20 sheetPresentationController];
    if (v21)
    {
      v22 = v21;
      [v21 _setHidden_];
    }

    v23 = [v20 view];

    if (!v23)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    [v23 setHidden_];

    [v20 dismissViewControllerAnimated:0 completion:0];
    sub_21B694118(v20);
  }

  v24 = [a2 traitCollection];
  v25 = [v24 userInterfaceIdiom];

  if (v25 == 1)
  {
LABEL_9:
    sub_21B67C8E0(0);
    if ([a3 userInfo])
    {
      sub_21B6C93E4();
      swift_unknownObjectRelease();
    }

    else
    {
      v54 = 0u;
      v55 = 0u;
    }

    v48 = a3;
    v49 = a5;
    v56 = v54;
    v57 = v55;
    v28 = a6;
    if (*(&v55 + 1))
    {
      if (swift_dynamicCast())
      {
        v29 = sub_21B61F85C(v52, v53);
        v31 = v30;

        if ((v31 & 1) == 0)
        {
          v32 = v47;
          MEMORY[0x21CEF5B40](0, v29);
          (*(v12 + 32))(v19, v32, v11);
LABEL_20:
          v36 = sub_21B6C89F4();
          sub_21B690260(v36, 0, 0);
          v37 = v50;
          (*(v12 + 16))(v50, v19, v11);
          v38 = (*(v12 + 80) + 40) & ~*(v12 + 80);
          v39 = (v13 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
          v40 = swift_allocObject();
          v41 = v48;
          *(v40 + 2) = a2;
          *(v40 + 3) = v41;
          *(v40 + 4) = v51;
          (*(v12 + 32))(&v40[v38], v37, v11);
          v42 = &v40[v39];
          v43 = v49;
          *v42 = v49;
          v42[1] = v28;
          v44 = a2;
          v45 = v41;
          sub_21B529CD0(v43);
          PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(5, 0, 0, sub_21B69EFEC, v40);

          (*(v12 + 8))(v19, v11);
          return;
        }
      }
    }

    else
    {
      sub_21B62AA8C(&v56, &qword_27CD936C0);
    }

    v33 = *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
    v34 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
    swift_beginAccess();
    v35 = *(v33 + v34);
    if (v35 >> 62)
    {
      if (!__OFSUB__(sub_21B6C9454(), 1))
      {
        goto LABEL_19;
      }
    }

    else if (!__OFSUB__(*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
    {
LABEL_19:
      MEMORY[0x21CEF5B40](0);
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_24;
  }

  v26 = [a2 collectionView];
  if (v26)
  {
    v27 = v26;
    v56 = 0x3FF0000000000000uLL;
    *&v57 = 0;
    *(&v57 + 1) = 0x3FF0000000000000;
    v58 = 0;
    v59 = 0;
    [v26 setTransform_];

    goto LABEL_9;
  }

LABEL_25:
  __break(1u);
}

id sub_21B693604(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a2;
  v33 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_21B6C8A04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  sub_21B68C3A0(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21B62AA8C(v12, &qword_27CD93500);
    if (a3 != 4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v31 = a5;
    v20 = a6;
    v21 = a3;
    (*(v14 + 32))(v19, v12, v13);
    result = [a1 collectionView];
    if (!result)
    {
      __break(1u);
      goto LABEL_14;
    }

    v23 = result;
    v24 = sub_21B6C8974();
    v25 = [v23 cellForItemAtIndexPath_];

    a3 = v21;
    a6 = v20;
    a5 = v31;
    if (v25)
    {
      type metadata accessor for LockScreenPosterCollectionViewCell();
      if (swift_dynamicCastClass())
      {
        sub_21B660F64(v32, a1);
      }
    }

    (*(v14 + 8))(v19, v13);
    if (a3 != 4)
    {
      goto LABEL_12;
    }
  }

  v26 = sub_21B6C89F4();
  MEMORY[0x21CEF5B40](1, v26);
  result = [a1 collectionView];
  if (result)
  {
    v27 = result;
    v28 = sub_21B6C8974();
    [v27 selectItemAtIndexPath:v28 animated:0 scrollPosition:0];

    (*(v14 + 8))(v16, v13);
LABEL_12:
    v29 = swift_allocObject();
    v29[2] = a5;
    v29[3] = a6;
    sub_21B529CD0(a5);
    PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(a3, 1, 0, sub_21B69F084, v29);
  }

LABEL_14:
  __break(1u);
  return result;
}

id PosterRackCollectionViewController.galleryViewController(_:didSelect:from:)(void *a1, id a2, uint64_t a3)
{
  v6 = [objc_msgSend(a2 posterDescriptorLookupInfo)];
  swift_unknownObjectRelease();

  return [a1 presentPreview:a2 withMode:2 fromView:a3];
}

void PosterRackCollectionViewController.editingIngestionManager(_:didAccept:userChoice:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_21B6C88C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v3[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper])
  {
    return;
  }

  v13 = v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    [v3 dismissPresentedViewControllersAnimated:1 dismissHandler:0 completion:0];
    return;
  }

  v52 = a3;
  v53 = Strong;
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (qword_28120B5D0 != -1)
  {
    swift_once();
  }

  v16 = sub_21B61F3A0();
  v18 = v17;

  if (v18)
  {
    v51 = v15;
    v19 = [a2 pbf_posterUUID];
    sub_21B6C88A4();

    v20 = sub_21B6C8874();
    v22 = v21;
    (*(v9 + 8))(v12, v13);
    if (v20 == v16 && v18 == v22)
    {

      v15 = v51;
    }

    else
    {
      v24 = sub_21B6C96E4();

      v15 = v51;
      if ((v24 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v25 = [v4 interfaceOrientation];
    v26 = _s11PosterBoard0A4PairC034fetchConfiguredPropertiesOrDefaultF03forSo08PRPostereF0CSo0J13ConfigurationC_tFZ_0(a2);
    v27 = [v26 titleStyleConfiguration];
    if (!v27)
    {
      v28 = v26;
LABEL_26:

      goto LABEL_27;
    }

    v28 = v27;
    v29 = [v26 complicationLayout];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 complications];
      if (v31 && ((v32 = v31, sub_21B61785C(0, &qword_28120B0F0), v33 = sub_21B6C8E84(), v32, v33 >> 62) ? (v34 = sub_21B6C9454()) : (v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v15 = v51, v34 >= 1))
      {
        v35 = [v30 complicationsUseBottomLayout];

        if ((v35 & 1) == 0)
        {
          v36 = &v4[OBJC_IVAR___PBFPosterRackCollectionViewController_adaptiveTimeConfiguration];
          swift_beginAccess();
          v37 = *v36;
          v38 = *(v36 + 1);
          *v36 = 0;
          v36[1] = 0;
LABEL_25:
          sub_21B678F88(v37, v38);

          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    [objc_opt_self() pr:v25 calculateAdaptiveTimeHeightForInterfaceOrientation:v28 titleStyleConfiguration:?];
    v40 = v39;
    v41 = &v4[OBJC_IVAR___PBFPosterRackCollectionViewController_adaptiveTimeConfiguration];
    swift_beginAccess();
    v37 = *v41;
    v38 = *(v41 + 1);
    *v41 = v25;
    v41[1] = v40;
    goto LABEL_25;
  }

LABEL_27:
  v42 = *(a1 + OBJC_IVAR___PBFPosterEditingIngestionManager_editingConfirmationViewController);
  if (v42)
  {
    [v42 dismissViewControllerAnimated:1 completion:0];
  }

  v43 = v53;
  if (v52 == 1)
  {
    v44 = 4;
  }

  else
  {
    v44 = 1;
  }

  [v53 setShowsContentWhenReady_];
  [v43 setAllowsTransparentContent_];
  [v43 setForcesSceneForeground_];
  v45 = swift_allocObject();
  v45[2] = v15;
  v45[3] = v4;
  v45[4] = v43;
  v45[5] = v44;
  v45[6] = 0;
  v45[7] = 0;
  aBlock[4] = sub_21B69F920;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B63863C;
  aBlock[3] = &block_descriptor_173_0;
  v46 = _Block_copy(aBlock);
  v47 = v15;
  v48 = v4;
  v49 = v43;

  [v49 dismissViewControllerAnimated:0 completion:v46];
  _Block_release(v46);
}

void sub_21B694118(void *a1)
{
  v2 = [*(*(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore) + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
  v3 = [v2 currentGalleryConfiguration];

  v4 = &selRef_removedAssocPosters;
  if (!v3)
  {
    goto LABEL_58;
  }

  v5 = [v3 suggestedLayout];

  if (!v5)
  {
    goto LABEL_58;
  }

  v6 = MEMORY[0x277D84F90];
  v7 = sub_21B698D50(MEMORY[0x277D84F90]);
  v65 = v5;
  v8 = [v5 sections];
  sub_21B61785C(0, &unk_27CD94230);
  v9 = sub_21B6C8E84();

  v10 = sub_21B694964(v9);

  if (v10 >> 62)
  {
    goto LABEL_54;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    goto LABEL_5;
  }

  while (2)
  {

    v16 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_56;
    }

LABEL_12:
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
LABEL_57:

      v61 = [objc_opt_self() sharedInstance];
      sub_21B61785C(0, &qword_27CD93418);
      sub_21B61E3A8(&qword_27CD94240, &qword_27CD93418);
      v62 = sub_21B6C8D14();
      v4 = &selRef_removedAssocPosters;

      aBlock[4] = sub_21B694CF8;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21B693014;
      aBlock[3] = &block_descriptor_621;
      v63 = _Block_copy(aBlock);
      [v61 logFaceGalleryItemsSeenInGalleryWithOutcomes:v62 completion:v63];

      _Block_release(v63);
LABEL_58:
      v64 = [objc_opt_self() v4[473]];
      [v64 logFaceGalleryDidDisappear];

      return;
    }

LABEL_13:
    v18 = 0;
    v68 = v17;
    v69 = v16 & 0xC000000000000001;
    v66 = v16 + 32;
    v67 = v16 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v69)
      {
        v19 = MEMORY[0x21CEF66E0](v18, v16);
      }

      else
      {
        if (v18 >= *(v67 + 16))
        {
          goto LABEL_52;
        }

        v19 = *(v66 + 8 * v18);
      }

      v20 = v19;
      v21 = __OFADD__(v18++, 1);
      if (v21)
      {
        break;
      }

      v22 = [v19 identifier];
      v23 = sub_21B6C8DA4();
      v25 = v24;

      v26 = [a1 addedPreviewIdentifier];
      if (!v26)
      {

LABEL_32:
        v39 = v16;
        v40 = [a1 tappedPreviewIdentifiers];
        v41 = sub_21B6C8F94();

        v42 = [v20 identifier];
        v43 = sub_21B6C8DA4();
        v45 = v44;

        if (*(v41 + 16) && (sub_21B6C97A4(), sub_21B6C8DD4(), v46 = sub_21B6C97C4(), v47 = -1 << *(v41 + 32), v10 = v46 & ~v47, ((*(v41 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
        {
          v48 = ~v47;
          while (1)
          {
            v49 = (*(v41 + 48) + 16 * v10);
            v50 = *v49 == v43 && v49[1] == v45;
            if (v50 || (sub_21B6C96E4() & 1) != 0)
            {
              break;
            }

            v10 = (v10 + 1) & v48;
            if (((*(v41 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v7;
          v6 = aBlock;
          sub_21B645AF0(0x646570706174, 0xE600000000000000, v20, isUniquelyReferenced_nonNull_native);

          v7 = aBlock[0];
          v16 = v39;
        }

        else
        {
LABEL_41:

          v51 = [a1 displayedPreviewIdentifiers];
          v6 = sub_21B6C8F94();

          v52 = [v20 identifier];
          v10 = sub_21B6C8DA4();
          v54 = v53;

          LOBYTE(v52) = sub_21B66FE1C(v10, v54, v6);

          v16 = v39;
          if (v52)
          {
            v55 = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v7;
            v6 = aBlock;
            sub_21B645AF0(0x646577656976, 0xE600000000000000, v20, v55);

            v7 = aBlock[0];
          }

          else
          {
          }
        }

        v17 = v68;
        goto LABEL_16;
      }

      v10 = v26;
      v27 = sub_21B6C8DA4();
      v29 = v28;

      if (v23 == v27 && v25 == v29)
      {
      }

      else
      {
        v30 = sub_21B6C96E4();

        if ((v30 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v31 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v7;
      v6 = v7;
      v32 = sub_21B695F7C(v20);
      v34 = v7[2];
      v35 = (v33 & 1) == 0;
      v21 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v21)
      {
        goto LABEL_51;
      }

      v37 = v33;
      if (v7[3] < v36)
      {
        sub_21B69719C(v36, v31);
        v6 = aBlock[0];
        v32 = sub_21B695F7C(v20);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_60;
        }

LABEL_44:
        v7 = aBlock[0];
        if (v37)
        {
          goto LABEL_45;
        }

        goto LABEL_48;
      }

      if (v31)
      {
        goto LABEL_44;
      }

      v6 = aBlock;
      v10 = v32;
      sub_21B697AC0();
      v32 = v10;
      v7 = aBlock[0];
      if (v37)
      {
LABEL_45:
        v56 = (v7[7] + 16 * v32);
        *v56 = 0x6465646461;
        v56[1] = 0xE500000000000000;

        goto LABEL_16;
      }

LABEL_48:
      v7[(v32 >> 6) + 8] |= 1 << v32;
      *(v7[6] + 8 * v32) = v20;
      v58 = (v7[7] + 16 * v32);
      *v58 = 0x6465646461;
      v58[1] = 0xE500000000000000;
      v59 = v7[2];
      v21 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v21)
      {
        goto LABEL_53;
      }

      v7[2] = v60;
LABEL_16:
      if (v18 == v17)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    v11 = sub_21B6C9454();
    if (!v11)
    {
      continue;
    }

    break;
  }

LABEL_5:
  aBlock[0] = v6;
  sub_21B6C9594();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x21CEF66E0](v12, v10);
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = [v13 proactiveRepresentation];

      sub_21B6C9574();
      sub_21B6C95A4();
      sub_21B6C95B4();
      v6 = aBlock;
      sub_21B6C9584();
    }

    while (v11 != v12);

    v16 = aBlock[0];
    if (!(aBlock[0] >> 62))
    {
      goto LABEL_12;
    }

LABEL_56:
    v17 = sub_21B6C9454();
    if (!v17)
    {
      goto LABEL_57;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_60:
  sub_21B61785C(0, &qword_27CD93418);
  sub_21B6C9734();
  __break(1u);
}

unint64_t sub_21B694964(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x21CEF66E0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject items];
      sub_21B61785C(0, &qword_27CD94250);
      v8 = sub_21B6C8E84();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_21B6C9454();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_21B6C9454();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_21B6C9454();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_21B6C9554();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_21B6C9454();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_21B62AA24(&qword_27CD94260, &qword_27CD94258);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94258);
              v19 = sub_21B698108(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_21B6C9454();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

void sub_21B694CF8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27CD925C8 != -1)
    {
      swift_once();
    }

    v3 = sub_21B6C8AB4();
    __swift_project_value_buffer(v3, qword_27CD94DA8);
    v4 = a1;
    v5 = sub_21B6C8A94();
    v6 = sub_21B6C9024();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_21B6C9744();
      v11 = sub_21B656178(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_21B526000, v5, v6, "Error logging face gallery items seen: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x21CEF8150](v8, -1, -1);
      MEMORY[0x21CEF8150](v7, -1, -1);
    }

    else
    {
    }
  }
}

void PosterRackCollectionViewController.focusSelectionViewController(_:hasSelected:activity:)(void *a1, char a2, void *a3)
{
  v4 = v3;
  v48 = a3;
  v7 = sub_21B6C88C4();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  v13 = sub_21B6C8A04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  sub_21B61785C(0, &qword_27CD93E20);
  v19 = a1;
  v20 = sub_21B6C91A4();

  if ((v20 & 1) == 0)
  {
    return;
  }

  sub_21B68C3A0(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21B62AA8C(v12, &qword_27CD93500);
    return;
  }

  (*(v14 + 32))(v16, v12, v13);
  v21 = *(v4 + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore);
  v22 = sub_21B6C89F4();
  v23 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v24 = *(v21 + v23);
  if ((v24 & 0xC000000000000001) == 0)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v25 = *(v24 + 8 * v22 + 32);
      goto LABEL_9;
    }

    __break(1u);
    return;
  }

  v25 = MEMORY[0x21CEF66E0](v22, v24);

LABEL_9:
  (*(v14 + 8))(v16, v13);
  if ((a2 & 1) == 0)
  {
    v38 = 0;
LABEL_23:
    sub_21B624EA0(v38, v25);

    return;
  }

  v26 = [*&v25[OBJC_IVAR___PBFPosterPair_configuredProperties] focusConfiguration];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 activityUUID];

    sub_21B6C88A4();
    v29 = sub_21B6C8874();
    v31 = v30;
    v32 = v47;
    v33 = *(v46 + 8);
    v33(v9, v47);
    v34 = [v48 activityUniqueIdentifier];
    sub_21B6C88A4();

    v35 = sub_21B6C8874();
    v37 = v36;
    v33(v9, v32);
    if (v29 == v35 && v31 == v37)
    {
    }

    else
    {
      v41 = sub_21B6C96E4();

      if ((v41 & 1) == 0)
      {
        v39 = 1;
        goto LABEL_19;
      }
    }

    v39 = 0;
LABEL_19:
    v40 = v48;
    goto LABEL_20;
  }

  v39 = 1;
  v40 = v48;
LABEL_20:
  v42 = [v40 activityIdentifier];
  if (!v42)
  {
    sub_21B6C8DA4();
    v42 = sub_21B6C8D74();
  }

  v43 = [v40 activityUniqueIdentifier];
  sub_21B6C88A4();

  v44 = objc_allocWithZone(MEMORY[0x277D3ED98]);
  v45 = sub_21B6C8884();
  v38 = [v44 initWithActivityIdentifier:v42 activityUUID:v45];

  (*(v46 + 8))(v9, v47);
  if (v39)
  {
    goto LABEL_23;
  }
}

id PosterRackCollectionViewController.homeScreenServiceLayoutDidChange(_:)()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = v2;
    sub_21B67EC90(1, sub_21B69C2D0, v3);
  }

  return result;
}

uint64_t sub_21B69550C(void *a1)
{
  v1 = [a1 visibleCells];
  sub_21B61785C(0, &unk_28120B2A8);
  v2 = sub_21B6C8E84();

  v19[0] = MEMORY[0x277D84F90];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_21B6C9454();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CEF66E0](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for HomeScreenPosterCollectionViewCell();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x21CEF6000]();
    if (*((v19[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    sub_21B6C8EA4();
    v5 = v19[0];
  }

  while (v4 != v3);
LABEL_21:

  if (v5 >> 62)
  {
    v9 = sub_21B6C9454();
    if (v9)
    {
LABEL_23:
      result = objc_opt_self();
      if (v9 < 1)
      {
        __break(1u);
      }

      else
      {
        v11 = result;
        v12 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x21CEF66E0](v12, v5);
          }

          else
          {
            v16 = *(v5 + 8 * v12 + 32);
          }

          v17 = v16;
          v18 = *&v16[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView];
          if (v18)
          {
            [v18 setAlpha_];
          }

          ++v12;
          v13 = swift_allocObject();
          *(v13 + 16) = v17;
          v19[4] = sub_21B69EF58;
          v19[5] = v13;
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 1107296256;
          v19[2] = sub_21B63863C;
          v19[3] = &block_descriptor_563;
          v14 = _Block_copy(v19);
          v15 = v17;

          [v11 animateWithDuration:v14 animations:0.3];
          _Block_release(v14);
        }

        while (v9 != v12);
      }

      return result;
    }
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_23;
    }
  }
}

id PosterRackCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id PosterRackCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21B6C8D74();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_21B695AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v13 + 8) + 8))(a1, a2, a3, a4, a5, a6, ObjectType);
}

uint64_t sub_21B695B40(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_21B695B78(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_21B695BA8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21B695CA0;

  return v6(a1);
}

uint64_t sub_21B695CA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_21B695D98(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_21B695DB8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_21B695DE8(uint64_t a1, uint64_t a2)
{
  sub_21B6C97A4();
  sub_21B6C8DD4();
  v4 = sub_21B6C97C4();

  return sub_21B695FC0(a1, a2, v4);
}

unint64_t sub_21B695E60(uint64_t a1)
{
  sub_21B6C8DA4();
  sub_21B6C97A4();
  sub_21B6C8DD4();
  v2 = sub_21B6C97C4();

  return sub_21B696078(a1, v2);
}

unint64_t sub_21B695EF4(uint64_t a1)
{
  v2 = sub_21B6C9794();

  return sub_21B69617C(a1, v2);
}

unint64_t sub_21B695F38(uint64_t a1)
{
  v2 = sub_21B6C9494();

  return sub_21B6961E8(a1, v2);
}

unint64_t sub_21B695F7C(uint64_t a1)
{
  v2 = sub_21B6C9194();

  return sub_21B6962B0(a1, v2);
}

unint64_t sub_21B695FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21B6C96E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21B696078(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_21B6C8DA4();
      v8 = v7;
      if (v6 == sub_21B6C8DA4() && v8 == v9)
      {
        break;
      }

      v11 = sub_21B6C96E4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_21B69617C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B6961E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21B69ECF0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x21CEF6640](v9, a1);
      sub_21B69ED4C(v9);
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

unint64_t sub_21B6962B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_21B61785C(0, &qword_27CD93418);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21B6C91A4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_21B696384(char *a1, int64_t a2, char a3)
{
  result = sub_21B69646C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B6963A4(void *a1, int64_t a2, char a3)
{
  result = sub_21B696578(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21B6963C4(size_t a1, int64_t a2, char a3)
{
  result = sub_21B6966A0(a1, a2, a3, *v3, &qword_27CD94300, &unk_21B6D9D78, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

size_t sub_21B696408(size_t a1, int64_t a2, char a3)
{
  result = sub_21B6966A0(a1, a2, a3, *v3, &qword_27CD94208, &unk_21B6D9C98, MEMORY[0x277CC9AF8]);
  *v3 = result;
  return result;
}

char *sub_21B69644C(char *a1, int64_t a2, char a3)
{
  result = sub_21B69687C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B69646C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B696578(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for Identifier(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21B6966A0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_21B69687C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93B20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21B69698C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94220);
  v34 = a2;
  result = sub_21B6C9624();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_21B6C97A4();
      sub_21B6C8DD4();
      result = sub_21B6C97C4();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_21B696C34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94210);
  v36 = a2;
  result = sub_21B6C9624();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_21B6C8DA4();
      sub_21B6C97A4();
      sub_21B6C8DD4();
      v25 = sub_21B6C97C4();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

uint64_t sub_21B696EF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD942F0);
  v35 = a2;
  result = sub_21B6C9624();
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

      sub_21B6C97A4();
      sub_21B6C8DD4();
      result = sub_21B6C97C4();
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

uint64_t sub_21B69719C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94248);
  v35 = a2;
  result = sub_21B6C9624();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
        v25 = v21;
      }

      result = sub_21B6C9194();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
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

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21B697420(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD941B0);
  result = sub_21B6C9624();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_21B6C9794();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_21B697684()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94220);
  v2 = *v0;
  v3 = sub_21B6C9614();
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

        result = swift_unknownObjectRetain();
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

id sub_21B6977F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94210);
  v2 = *v0;
  v3 = sub_21B6C9614();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

id sub_21B697954()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD942F0);
  v2 = *v0;
  v3 = sub_21B6C9614();
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

void *sub_21B697AC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94248);
  v2 = *v0;
  v3 = sub_21B6C9614();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

void *sub_21B697C30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD941B0);
  v2 = *v0;
  v3 = sub_21B6C9614();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_21B697D7C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_21B6C9454();
LABEL_9:
  result = sub_21B6C9554();
  *v1 = result;
  return result;
}

uint64_t sub_21B697E30(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21B6C9454();
  }

  return sub_21B6C9554();
}

uint64_t sub_21B697E94(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21B6C9454();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_21B6C9454();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_21B697D7C(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21B698190(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21B697F84(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_21B6C9554();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93CC8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void (*sub_21B698088(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CEF66E0](a2, a3);
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
    return sub_21B69F940;
  }

  __break(1u);
  return result;
}

void (*sub_21B698108(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CEF66E0](a2, a3);
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
    return sub_21B698188;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B698190(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21B6C9454();
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
      result = sub_21B6C9454();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21B62AA24(&qword_27CD942D8, &qword_27CD942D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD942D0);
            v9 = sub_21B698088(v13, i, a3);
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
        sub_21B61785C(0, &unk_28120B170);
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

char *sub_21B698344(uint64_t a1, _BYTE *a2)
{
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_finishTaskAssertions] = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR___PBFPosterRackCollectionViewController_lockCellsWeakHashMap;
  *&a2[v4] = [objc_opt_self() weakObjectsHashTable];
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR___PBFPosterRackCollectionViewController_dateProvider;
  *&a2[v5] = [objc_allocWithZone(MEMORY[0x277D3ED18]) init];
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_managesLiveWidgetHosting] = 0;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayGalleryAffordance] = 1;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayAddButton] = 1;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_allowsLeavingHomeConfiguringLayout] = 1;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_allowsEnteringFullscreenLayout] = 1;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_enteredPosterRackFromHomeScreen] = 0;
  v6 = &a2[OBJC_IVAR___PBFPosterRackCollectionViewController_lastKnownLayoutOrientation];
  *v6 = 0;
  v6[8] = 1;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenPortalView] = 0;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldTransitionLayoutToConfiguringHomeForFirstPoster] = 0;
  v7 = &a2[OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterOverlayLayerSpecification];
  *v7 = 0;
  *(v7 + 2) = 0;
  v8 = &a2[OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveContentLayerSpecification];
  *v8 = 0;
  *(v8 + 2) = 0;
  v9 = &a2[OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveFloatingLayerSpecification];
  *v9 = 0;
  *(v9 + 2) = 0;
  v10 = &a2[OBJC_IVAR___PBFPosterRackCollectionViewController_portalContainerSpecification];
  *v10 = 0;
  v10[1] = 0;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_isLockPosterFloatingLayerInlined] = 0;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_isLockPosterComplicationRowHidden] = 0;
  v11 = &a2[OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonFrame];
  *v11 = 0u;
  v11[1] = 0u;
  v12 = &a2[OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonFrame];
  *v12 = 0u;
  v12[1] = 0u;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_lockVibrancyConfiguration] = 0;
  v13 = &a2[OBJC_IVAR___PBFPosterRackCollectionViewController_adaptiveTimeConfiguration];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR___PBFPosterRackCollectionViewController_stashedLockscreenSnapshots;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92650);
  (*(*(v15 - 8) + 56))(&a2[v14], 1, 1, v15);
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_displayedComplicationLocationOnLockScreenPosterCells] = 0;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayActionsButton] = 0;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayHomeCardsParallaxedWithLockCardsInAlongsideLayout] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsContainerView] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButton] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonTopAnchorConstraint] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonTrailingAnchorConstraint] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButton] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonTopAnchorConstraint] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonTrailingAnchorConstraint] = 0;
  v16 = &a2[OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets];
  v17 = *(MEMORY[0x277D768C8] + 16);
  *v16 = *MEMORY[0x277D768C8];
  v16[1] = v17;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButton] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButtonMinWidth] = 0x4069000000000000;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_sideButtonTrailingWidth] = 0x4044000000000000;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_addPosterButton] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_actionsMenuButton] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___duplicateAction] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___morphAnimation] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenConfigurationView] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___feedbackGenerator] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_currentPosterSignificantEventsCounter] = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR___PBFPosterRackCollectionViewController_switcherApplicationStateNode;
  v19 = objc_allocWithZone(PBFApplicationStateNode);
  v20 = sub_21B6C8D74();
  v21 = [v19 initWithDescription_];

  *&a2[v18] = v21;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_hasScrolledToSelectionForInitialViewLayout] = 0;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_isScrollingOrSettling] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_pageControlPreferredNumberOfVisibleIndicators] = 12;
  v22 = &a2[OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___initialLayoutModeFromFullscreen];
  *v22 = 0;
  v22[8] = 1;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutTransitionAnimationCount] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_durationForCommittingToAlongsideLayout] = 0x3FE28F5C28F5C28FLL;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_minimumMovementForSignificantPan] = 0x4024000000000000;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_isTransitioningToInitialLayoutModeFromFullscreen] = 0;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_hasCompletedPushbackFromHomeScreen] = 0;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldBeginAlongsideCompactDeflationWhenAppropriate] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_numberOfTrackingTouchesBegunWhileTransitioningToInitialLayoutModeFromFullscreen] = 0;
  v23 = OBJC_IVAR___PBFPosterRackCollectionViewController_layout;
  v24 = objc_allocWithZone(type metadata accessor for PosterRackStackedLayout());
  *&a2[v23] = sub_21B62D4B4(0);
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_transitionPortalView] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_centeredLockPosterOverlayView] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveContentView] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveFloatingView] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenIconContentLayout] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_currentHomeScreenIconContentLayoutFetchRequestID] = 0;
  v25 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenIconContentViewConnector;
  *&a2[v25] = [objc_allocWithZone(type metadata accessor for HomeScreenIconContentReusableViewConnector()) init];
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_headerBottomEdgeSpacing] = 0x4038000000000000;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_isFocusSetup] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_focusUpdateSubscription] = 0;
  a2[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells] = 0;
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper] = 0;
  v26 = OBJC_IVAR___PBFPosterRackCollectionViewController_galleryDataProvider;
  *&a2[v26] = [objc_allocWithZone(PBFGalleryMutableDataProvider) init];
  swift_unknownObjectWeakInit();
  v27 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenService;
  *&a2[v27] = [objc_allocWithZone(MEMORY[0x277D66AB8]) init];
  *&a2[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenLayoutObservationToken] = 0;
  v28 = &a2[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
  *v28 = a1;
  v28[1] = &off_282CCF668;
  v29 = *&a2[v23];
  v36.receiver = a2;
  v36.super_class = type metadata accessor for PosterRackCollectionViewController();
  v30 = objc_msgSendSuper2(&v36, sel_initWithCollectionViewLayout_, v29);
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 sharedInstance];
  v34 = [v33 applicationStateMonitor];

  [v34 pushState_];
  return v32;
}

uint64_t type metadata accessor for PosterRackCollectionViewController()
{
  result = qword_28120B610;
  if (!qword_28120B610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21B698A30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94220);
    v3 = sub_21B6C9634();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_21B695DE8(v5, v6);
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

unint64_t sub_21B698B34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD941B0);
    v3 = sub_21B6C9634();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_21B695EF4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_21B698C14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD941F8);
    v3 = sub_21B6C9634();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B63D2BC(v4, v13, &unk_27CD933C0);
      result = sub_21B695F38(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_21B69C828(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_21B698D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94248);
    v3 = sub_21B6C9634();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_21B695F7C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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

unint64_t sub_21B698E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94288);
    v3 = sub_21B6C9634();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B63D2BC(v4, &v13, &qword_27CD94280);
      v5 = v13;
      v6 = v14;
      result = sub_21B695DE8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21B69C828(&v15, (v3[7] + 32 * result));
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

unint64_t sub_21B698F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94228);
    v3 = sub_21B6C9634();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21B695DE8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_21B699084(uint64_t a1)
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

uint64_t sub_21B6990BC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21B6C9454())
  {
    v4 = sub_21B61785C(0, &unk_28120B2A8);
    v5 = sub_21B61E3A8(&unk_28120B298, &unk_28120B2A8);
    result = MEMORY[0x21CEF6140](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CEF66E0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_21B619D9C(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_21B6C9454();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21B69928C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21B6992E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93D58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B699368(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_21B6C9454();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CEF66E0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_21B61785C(0, &qword_28120B120);
    v7 = sub_21B67A140();
    v8 = sub_21B6C91A4();

    if (v8)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_21B69948C(unint64_t *a1)
{
  v3 = *a1;
  v4 = sub_21B699368(*a1);
  v6 = v4;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_21B6C9454();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = a1;
  v7 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_21B6C9454())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CEF66E0](v7, v3);
      goto LABEL_16;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v9 = *(v3 + 8 * v7 + 32);
LABEL_16:
    v10 = v9;
    sub_21B61785C(0, &qword_28120B120);
    v11 = sub_21B67A140();
    v12 = sub_21B6C91A4();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x21CEF66E0](v6, v3);
          v14 = MEMORY[0x21CEF66E0](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_46;
          }

          if (v7 >= v15)
          {
            goto LABEL_47;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_21B697E30(v3);
          v18 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v3 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v18)
        {
          v3 = sub_21B697E30(v3);
          v19 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_38:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v7 >= *(v19 + 16))
        {
          goto LABEL_44;
        }

        v21 = v19 + 8 * v7;
        v22 = *(v21 + 32);
        *(v21 + 32) = v13;

        *v24 = v3;
      }

LABEL_8:
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_43;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_21B6C9454();
}

char *sub_21B699714(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
  sub_21B61785C(0, &unk_27CD941D0);
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
    result = sub_21B6C9454();
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
        result = sub_21B6C9454();
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

char *sub_21B699840(uint64_t a1, uint64_t a2, void *a3)
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

  result = sub_21B6C9454();
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
    v12 = sub_21B6C9454();
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

  sub_21B697D7C(result);

  return sub_21B699714(v6, v5, 1, v3);
}

unint64_t sub_21B69992C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_21B6C9454();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CEF66E0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_21B61785C(0, &qword_28120B120);
    v7 = sub_21B6C91A4();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_21B699A40(unint64_t *a1)
{
  v3 = *a1;
  result = sub_21B69992C(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_21B6C9454();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &qword_28120B120;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_21B6C9454())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x21CEF66E0](v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_21B61785C(0, v8);
    v12 = sub_21B6C91A4();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x21CEF66E0](v6, v3);
          v14 = MEMORY[0x21CEF66E0](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_21B697E30(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_21B697E30(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_21B6C9454();
}

uint64_t sub_21B699CD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_21B61785C(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
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
  result = sub_21B6C9454();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_21B6C9454();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_21B699DD8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v3;
    v8 = *v3 >> 62;
    if (!v8)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_21B6C9454();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = sub_21B6C9454();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_21B697D7C(result);
    return sub_21B699CD0(v6, v5, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21B699EC8(uint64_t a1)
{
  v2 = sub_21B6C88C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21B69928C(&unk_27CD92DE0, MEMORY[0x277CC95F0]);
  result = MEMORY[0x21CEF6140](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_21B61A1E0(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_21B69A064(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Identifier(0);
  v4 = v3;
  v5 = sub_21B69928C(&qword_27CD92720, type metadata accessor for Identifier);
  result = MEMORY[0x21CEF6140](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_21B61A034(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

void sub_21B69A120()
{
  v1 = v0;
  BSDispatchQueueAssertMain();
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_38;
  }

  v3 = v2;
  [v2 reloadData];

  v4 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenConfigurationView];
  if (!v4)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v5 = *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair];
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair] = 0;
  v6 = v4;
  sub_21B633E70(v5);

  [v1 dismissPresentedViewControllersAnimated:0 dismissHandler:0 completion:0];
  if (*&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode])
  {
    PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(1, 0, 0, 0, 0);
  }

  v7 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
  if ((v7[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex + 8] & 1) == 0)
  {
    sub_21B690260(*&v7[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex], 0, 0);
  }

  v8 = [v1 collectionView];
  if (!v8)
  {
    goto LABEL_39;
  }

  v9 = v8;
  v10 = [v8 numberOfSections];

  v11 = OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl;
  v12 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl];
  if (!v12)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ([v12 numberOfPages] != v10)
  {
    v13 = *&v1[v11];
    if (v13)
    {
      [v13 setNumberOfPages_];
      sub_21B67BCBC(0, 1);
      goto LABEL_12;
    }

LABEL_41:
    __break(1u);
    return;
  }

LABEL_12:
  sub_21B67BCBC(0, 1);
  if (v1[OBJC_IVAR___PBFPosterRackCollectionViewController_isFocusSetup])
  {
LABEL_26:
    v21 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
    swift_beginAccess();
    v22 = *&v7[v21];
    if (v22 >> 62)
    {
LABEL_35:
      v23 = sub_21B6C9454();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v23 > 1;
    v25 = v1[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells];
    v1[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells] = v24;
    if (v24 != v25)
    {
LABEL_29:
      sub_21B68F638();
    }
  }

  else
  {
    v14 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
    swift_beginAccess();
    v15 = *&v7[v14];
    v28 = v7;
    if (v15 >> 62)
    {
      v16 = sub_21B6C9454();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    while (v16 != v17)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x21CEF66E0](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v7 = v18;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v19 = [*&v18[OBJC_IVAR___PBFPosterPair_configuredProperties] focusConfiguration];

      ++v17;
      if (v19)
      {

        v7 = v28;
        goto LABEL_26;
      }
    }

    v20 = v1[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells];
    v1[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells] = 0;
    v7 = v28;
    if (v20)
    {
      goto LABEL_29;
    }
  }

  v26 = [*&v7[OBJC_IVAR____TtC11PosterBoard11PosterStore_glue] dataStore];
  v27 = [v26 currentGalleryConfiguration];

  if (v27)
  {
    [*&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_galleryDataProvider] configureForGallery_];
  }

  sub_21B672440();
}

uint64_t sub_21B69A4F8(uint64_t a1, void (*a2)())
{
  v59 = a1;
  v58 = sub_21B6C8964();
  v4 = *(v58 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v58);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (v55 - v8);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (v55 - v11);
  MEMORY[0x28223BE20](v10);
  v14 = (v55 - v13);
  BSDispatchQueueAssertMain();
  v60 = v2;
  v15 = [v2 presentedViewController];
  if (v15)
  {
    v16 = v15;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17 && [v17 isPresentingPreview])
    {
      v18 = sub_21B6C8934();

      if ((v18 & 1) == 0)
      {
        v19 = a2;
        v57 = 0;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v19 = a2;
  v57 = *&v60[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper] == 0;
LABEL_8:
  v20 = *(v4 + 16);
  v21 = v14;
  v22 = v14;
  v23 = v58;
  v20(v22, v59, v58);
  v20(v12, v19, v23);
  v20(v9, v21, v23);
  v20((v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0)), v12, v23);
  v24 = *(v4 + 80);
  v25 = (v24 + 24) & ~v24;
  v26 = (v5 + v24 + v25) & ~v24;
  v27 = swift_allocObject();
  *(v27 + 16) = v60;
  v56 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v9;
  v28 = *(v4 + 32);
  v28(v27 + v25, v21, v23);
  v28(v27 + v26, v12, v23);
  v29 = v57;
  *(v27 + v26 + v5) = v57;
  v55[1] = v27;
  if (v29)
  {
    v30 = v60;
    v31 = v59;
    v32 = v56;
    sub_21B68B368(v30, v59, v56, 1);
    v33 = *(v4 + 8);
    v33(v32, v23);
    v33(v31, v23);
    v34 = 0;
    v27 = 0;
  }

  else
  {
    v35 = *(v4 + 8);
    v36 = v60;
    v35(v56, v23);
    v35(v59, v23);
    v37 = objc_opt_self();
    v38 = swift_allocObject();
    v34 = sub_21B69EDA0;
    *(v38 + 16) = sub_21B69EDA0;
    *(v38 + 24) = v27;
    aBlock[4] = sub_21B668834;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B647820;
    aBlock[3] = &block_descriptor_541;
    v39 = _Block_copy(aBlock);

    [v37 performWithoutAnimation_];
    _Block_release(v39);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_34;
    }
  }

  v21 = &PBFComplicationLayoutTypeTwoRectangular;
  if (v60[OBJC_IVAR___PBFPosterRackCollectionViewController_isFocusSetup])
  {
LABEL_25:
    v48 = *&v60[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
    v49 = v21[470];
    swift_beginAccess();
    v50 = *(&v49->isa + v48);
    if (v50 >> 62)
    {
LABEL_32:
      v51 = sub_21B6C9454();
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = v51 > 1;
    v53 = v60[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells];
    v60[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells] = v52;
    if (v52 != v53)
    {
LABEL_28:
      sub_21B68F638();
    }

    goto LABEL_29;
  }

  v59 = v34;
  v41 = *&v60[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
  v42 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  isEscapingClosureAtFileLocation = *(v41 + v42);
  v58 = v27;
  v27 = isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8;
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v43 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_14;
  }

LABEL_34:
  v43 = sub_21B6C9454();
LABEL_14:

  v44 = 0;
  while (v43 != v44)
  {
    if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x21CEF66E0](v44, isEscapingClosureAtFileLocation);
    }

    else
    {
      if (v44 >= *(v27 + 16))
      {
        goto LABEL_31;
      }

      v45 = *(isEscapingClosureAtFileLocation + 8 * v44 + 32);
    }

    v34 = v45;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v46 = [*(v45 + OBJC_IVAR___PBFPosterPair_configuredProperties) focusConfiguration];

    ++v44;
    if (v46)
    {

      v34 = v59;
      goto LABEL_25;
    }
  }

  v34 = v59;
  v47 = v60[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells];
  v60[OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells] = 0;
  if (v47)
  {
    goto LABEL_28;
  }

LABEL_29:
  sub_21B67BE34();

  return sub_21B52B410(v34);
}

uint64_t sub_21B69AB24(void *a1, char a2)
{
  v3 = [a1 preferredHomeScreenConfiguration];
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = &selRef_preferredGradientColors;
  if ((a2 & 1) == 0)
  {
    v4 = &selRef_preferredSolidColors;
  }

  v5 = v3;
  v6 = [v3 *v4];

  sub_21B61785C(0, &unk_27CD941E0);
  v7 = sub_21B6C8E84();

  return v7;
}

char *sub_21B69ABCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(0);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_21B6C9454();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_21B6C9454();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
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
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_21B69ACEC(uint64_t a1, uint64_t a2, void *a3)
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

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_21B6C9454();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v12 = sub_21B6C9454();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (!v13)
  {
    sub_21B697D7C(result);
    return sub_21B69ABCC(v6, v5, 1, v3, type metadata accessor for AmbientPosterModel);
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_21B69ADE0(void *a1)
{
  v2 = v1;
  v21 = a1;
  v3 = sub_21B6C8A04();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v7 = [v2 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 indexPathsForVisibleItems];

    v10 = sub_21B6C8E84();
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = 0;
      v22 = v4 + 16;
      while (1)
      {
        if (v12 >= *(v10 + 16))
        {
          __break(1u);
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

        (*(v4 + 16))(v6, v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v3);
        v13 = [v23 collectionView];
        if (!v13)
        {
          goto LABEL_14;
        }

        v14 = v13;
        v15 = sub_21B6C8974();
        v16 = [v14 cellForItemAtIndexPath_];

        (*(v4 + 8))(v6, v3);
        if (v16)
        {

          if (v16 == v21)
          {
            break;
          }
        }

        if (v11 == ++v12)
        {
          goto LABEL_11;
        }
      }

      v17 = *&v23[OBJC_IVAR___PBFPosterRackCollectionViewController_layout];
      v18 = [v17 _invalidationContextForRefreshingVisibleElementAttributes];
      if (!v18)
      {
        goto LABEL_16;
      }

      v19 = v18;
      [v17 invalidateLayoutWithContext_];
    }

    else
    {
LABEL_11:
    }
  }

  else
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void sub_21B69B050()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_finishTaskAssertions) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR___PBFPosterRackCollectionViewController_lockCellsWeakHashMap;
  *(v1 + v2) = [objc_opt_self() weakObjectsHashTable];
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___PBFPosterRackCollectionViewController_dateProvider;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x277D3ED18]) init];
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_managesLiveWidgetHosting) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayGalleryAffordance) = 1;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayAddButton) = 1;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_allowsLeavingHomeConfiguringLayout) = 1;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_allowsEnteringFullscreenLayout) = 1;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_enteredPosterRackFromHomeScreen) = 0;
  v4 = v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_lastKnownLayoutOrientation;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenPortalView) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_shouldTransitionLayoutToConfiguringHomeForFirstPoster) = 0;
  v5 = v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterOverlayLayerSpecification;
  *v5 = 0;
  *(v5 + 8) = 0;
  v6 = v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveContentLayerSpecification;
  *v6 = 0;
  *(v6 + 8) = 0;
  v7 = v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveFloatingLayerSpecification;
  *v7 = 0;
  *(v7 + 8) = 0;
  v8 = (v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_portalContainerSpecification);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_isLockPosterFloatingLayerInlined) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_isLockPosterComplicationRowHidden) = 0;
  v9 = (v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonFrame);
  *v9 = 0u;
  v9[1] = 0u;
  v10 = (v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonFrame);
  *v10 = 0u;
  v10[1] = 0u;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_lockVibrancyConfiguration) = 0;
  v11 = (v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_adaptiveTimeConfiguration);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR___PBFPosterRackCollectionViewController_stashedLockscreenSnapshots;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92650);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_displayedComplicationLocationOnLockScreenPosterCells) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayActionsButton) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayHomeCardsParallaxedWithLockCardsInAlongsideLayout) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsContainerView) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButton) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonTopAnchorConstraint) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_leadingTopButtonTrailingAnchorConstraint) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButton) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonTopAnchorConstraint) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_trailingTopButtonTrailingAnchorConstraint) = 0;
  v14 = (v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_topButtonsEdgeInsets);
  v15 = *(MEMORY[0x277D768C8] + 16);
  *v14 = *MEMORY[0x277D768C8];
  v14[1] = v15;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButton) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButtonMinWidth) = 0x4069000000000000;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_sideButtonTrailingWidth) = 0x4044000000000000;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_addPosterButton) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_actionsMenuButton) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___duplicateAction) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___morphAnimation) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenConfigurationView) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___feedbackGenerator) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_currentPosterSignificantEventsCounter) = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR___PBFPosterRackCollectionViewController_switcherApplicationStateNode;
  v17 = objc_allocWithZone(PBFApplicationStateNode);
  v18 = sub_21B6C8D74();
  v19 = [v17 initWithDescription_];

  *(v1 + v16) = v19;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_hasScrolledToSelectionForInitialViewLayout) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_isScrollingOrSettling) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_pageControlPreferredNumberOfVisibleIndicators) = 12;
  v20 = v1 + OBJC_IVAR___PBFPosterRackCollectionViewController____lazy_storage___initialLayoutModeFromFullscreen;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutTransitionAnimationCount) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_durationForCommittingToAlongsideLayout) = 0x3FE28F5C28F5C28FLL;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_minimumMovementForSignificantPan) = 0x4024000000000000;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_isTransitioningToInitialLayoutModeFromFullscreen) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_hasCompletedPushbackFromHomeScreen) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_shouldBeginAlongsideCompactDeflationWhenAppropriate) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_numberOfTrackingTouchesBegunWhileTransitioningToInitialLayoutModeFromFullscreen) = 0;
  v21 = OBJC_IVAR___PBFPosterRackCollectionViewController_layout;
  v22 = objc_allocWithZone(type metadata accessor for PosterRackStackedLayout());
  *(v1 + v21) = sub_21B62D4B4(0);
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_transitionPortalView) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_centeredLockPosterOverlayView) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveContentView) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveFloatingView) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenIconContentLayout) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_currentHomeScreenIconContentLayoutFetchRequestID) = 0;
  v23 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenIconContentViewConnector;
  *(v1 + v23) = [objc_allocWithZone(type metadata accessor for HomeScreenIconContentReusableViewConnector()) init];
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_headerBottomEdgeSpacing) = 0x4038000000000000;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_isFocusSetup) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_focusUpdateSubscription) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_shouldShowFocusButtonOnLockScreenPosterCells) = 0;
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper) = 0;
  v24 = OBJC_IVAR___PBFPosterRackCollectionViewController_galleryDataProvider;
  *(v1 + v24) = [objc_allocWithZone(PBFGalleryMutableDataProvider) init];
  swift_unknownObjectWeakInit();
  v25 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenService;
  *(v1 + v25) = [objc_allocWithZone(MEMORY[0x277D66AB8]) init];
  *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenLayoutObservationToken) = 0;
  sub_21B6C95D4();
  __break(1u);
}

void sub_21B69B610()
{
  v1 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode);
  if (v1 > 6)
  {
    sub_21B6C9524();

    v2 = sub_21B6C9654();
    MEMORY[0x21CEF5FA0](v2);

    sub_21B6C95D4();
    __break(1u);
  }

  else if (((1 << v1) & 0x67) == 0)
  {

    PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(1, 1, 0, 0, 0);
  }
}

uint64_t sub_21B69B730(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore);
  v4 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a1)
    {
      goto LABEL_3;
    }

    return 1;
  }

  result = sub_21B6C9454();
  if (result <= a1)
  {
    return 1;
  }

LABEL_3:
  v7 = *(v3 + v4);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v8 = *(v7 + 8 * a1 + 32);
      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

  v8 = MEMORY[0x21CEF66E0](a1, v7);

LABEL_7:
  v9 = *&v8[OBJC_IVAR___PBFPosterPair_configuration];

  v10 = [v9 pbf_isLegacy];
  if (v10)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void *sub_21B69B86C()
{
  v1 = *(sub_21B6C8A04() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21B683154(v3, v4, v0 + v2, v5);
}

void sub_21B69B90C(void *a1)
{
  type metadata accessor for LockScreenPosterCollectionViewCell();
  if (swift_dynamicCastClass())
  {
    v2 = a1;
    sub_21B667D08(0);
  }

  else
  {
    type metadata accessor for HomeScreenPosterCollectionViewCell();
    v3 = swift_dynamicCastClass();
    if (!v3)
    {
      return;
    }

    v4 = *(v3 + OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView);
    if (!v4)
    {
      return;
    }

    v5 = v3;
    v6 = *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenIconContentViewConnector);
    v7 = OBJC_IVAR____TtC11PosterBoard42HomeScreenIconContentReusableViewConnector_reusableHomeScreenIconContentViews;
    v8 = *(v6 + OBJC_IVAR____TtC11PosterBoard42HomeScreenIconContentReusableViewConnector_reusableHomeScreenIconContentViews);
    v9 = a1;
    v10 = v4;
    v11 = [v8 keyEnumerator];
    v12 = [v11 allObjects];

    v13 = sub_21B6C8E84();
    v14 = *(v13 + 16);

    if (v14 <= 9)
    {
      v15 = *(v6 + v7);
      v16 = [objc_allocWithZone(MEMORY[0x277CF0D30]) initWithObject_];
      v10 = v10;
      [v15 setObject:v16 forKey:v10];
    }
  }
}

void *sub_21B69BAB0(double *a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_21B6C8A04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B632ED0(*&a2, *a1);
  *a1 = v13;
  a1[1] = v14;
  sub_21B68BCC8(v8, v13, v14);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21B62AA8C(v8, &qword_27CD93500);
  }

  (*(v10 + 32))(v12, v8, v9);
  v16 = sub_21B6C89F4();
  v17 = OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl;
  result = *(v3 + OBJC_IVAR___PBFPosterRackCollectionViewController_pageControl);
  if (result)
  {
    if ([result currentPage] == v16)
    {
      return (*(v10 + 8))(v12, v9);
    }

    result = *(v3 + v17);
    if (result)
    {
      [result setCurrentPage_];
      return (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21B69BCC0()
{
  v1 = *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_isScrollingOrSettling);
  *(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_isScrollingOrSettling) = 0;
  if (v1)
  {
    sub_21B67BCBC(0, 1);
    if (*(v0 + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode) == 2)
    {
      PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(0, 1, 0, 0, 0);
    }

    return sub_21B672440();
  }

  return result;
}

id sub_21B69BD38(id result)
{
  if ((result & 1) == 0)
  {
    v2 = *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_isScrollingOrSettling);
    *(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_isScrollingOrSettling) = 0;
    if (v2 == 1)
    {
      sub_21B67BCBC(0, 1);
      if (*(v1 + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode) == 2)
      {
        PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(0, 1, 0, 0, 0);
      }

      return sub_21B672440();
    }
  }

  return result;
}

void sub_21B69BDB8(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD94268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B6D98B0;
  v4 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_centeredPosterButton];
  *(inited + 32) = v4;
  v5 = *&v1[OBJC_IVAR___PBFPosterRackCollectionViewController_addPosterButton];
  *(inited + 40) = v5;
  v6 = *&v2[OBJC_IVAR___PBFPosterRackCollectionViewController_actionsMenuButton];
  *(inited + 48) = v6;
  v7 = v6;
  v8 = v4;
  v9 = v5;
  v10 = sub_21B67AAE4();
  v11 = sub_21B66F84C(v10, &unk_28120B100);

  sub_21B697F84(v11);
  v12 = [v2 collectionView];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  v14 = [v12 subviews];

  sub_21B61785C(0, &unk_28120B170);
  v15 = sub_21B6C8E84();

  v16 = sub_21B66F84C(v15, &unk_28120B170);

  v40 = inited;
  sub_21B697F84(v16);
  v17 = inited;
  v18 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenConfigurationView;
  v19 = *&v2[OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenConfigurationView];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v19 alpha];
  if (BSFloatIsZero())
  {
LABEL_6:
    v24 = *(v17 + 16);
    if (!v24)
    {
LABEL_15:

      return;
    }

    v25 = 0;
    while (v25 < *(v17 + 16))
    {
      v26 = *(v17 + 32 + 8 * v25);
      if (v26)
      {
        v27 = v26;
        if ([v27 isHidden] & 1) != 0 || (objc_msgSend(v27, sel_alpha), (BSFloatIsZero()))
        {
        }

        else
        {
          [v27 bounds];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          [a1 locationInView_];
          v41.x = v36;
          v41.y = v37;
          v42.origin.x = v29;
          v42.origin.y = v31;
          v42.size.width = v33;
          v42.size.height = v35;
          v38 = CGRectContainsPoint(v42, v41);

          if (v38)
          {
            goto LABEL_15;
          }
        }
      }

      if (v24 == ++v25)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v20 = *&v2[v18];
  if (v20)
  {
    v21 = [v20 subviews];
    v22 = sub_21B6C8E84();

    v23 = sub_21B66F84C(v22, &unk_28120B170);

    sub_21B697F84(v23);
    v17 = v40;
    goto LABEL_6;
  }

LABEL_19:
  __break(1u);
}

void _s11PosterBoard0A28RackCollectionViewControllerC018fontAndColorPickereF0_22didUpdateDesiredDetentySo013PREditingFonthijeF0C_12CoreGraphics7CGFloatVtF_0()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 sheetPresentationController];

    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = sub_21B69F0B4;
      *(v5 + 24) = v4;
      v8[4] = sub_21B668834;
      v8[5] = v5;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = sub_21B647820;
      v8[3] = &block_descriptor_618;
      v6 = _Block_copy(v8);
      v7 = v3;

      [v7 animateChanges_];

      _Block_release(v6);
      LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

      if (v7)
      {
        __break(1u);
      }
    }
  }
}

unint64_t sub_21B69C2DC()
{
  result = qword_27CD93E28;
  if (!qword_27CD93E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD93E28);
  }

  return result;
}

unint64_t sub_21B69C334()
{
  result = qword_27CD93E30;
  if (!qword_27CD93E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD93E30);
  }

  return result;
}

unint64_t sub_21B69C38C()
{
  result = qword_27CD93E38;
  if (!qword_27CD93E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD93E38);
  }

  return result;
}

unint64_t sub_21B69C3E4()
{
  result = qword_27CD93E40;
  if (!qword_27CD93E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD93E40);
  }

  return result;
}

void sub_21B69C440()
{
  sub_21B69C604();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21B69C604()
{
  if (!qword_28120BB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD92650);
    v0 = sub_21B6C93B4();
    if (!v1)
    {
      atomic_store(v0, &qword_28120BB20);
    }
  }
}

uint64_t sub_21B69C678(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21B69C690(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

_OWORD *sub_21B69C828(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_21B69C838()
{
  result = qword_27CD941F0;
  if (!qword_27CD941F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD941F0);
  }

  return result;
}

uint64_t sub_21B69C8F0(uint64_t a1)
{
  v3 = *(sub_21B6C8A04() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_21B679C98(a1, v8, v1 + v4, v6, v7);
}

void sub_21B69C99C(char *a1, uint64_t a2, void *a3, void *a4, char *a5, const void *a6)
{
  v255 = a5;
  v256 = a1;
  v253 = a4;
  v9 = sub_21B6C8854();
  v251 = *(v9 - 8);
  v10 = *(v251 + 8);
  MEMORY[0x28223BE20](v9);
  v245 = &v224 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v248 = &v224 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v13 - 8);
  v243 = &v224 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v242 = &v224 - v16;
  MEMORY[0x28223BE20](v17);
  v244 = &v224 - v18;
  MEMORY[0x28223BE20](v19);
  v241 = &v224 - v20;
  MEMORY[0x28223BE20](v21);
  v246 = &v224 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v224 - v24;
  v250 = sub_21B6C88C4();
  v249 = *(v250 - 8);
  v26 = *(v249 + 64);
  MEMORY[0x28223BE20](v250);
  MEMORY[0x28223BE20](v27);
  v29 = &v224 - v28;
  MEMORY[0x28223BE20](v30);
  v247 = &v224 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v224 - v33;
  v254 = swift_allocObject();
  *(v254 + 16) = a6;
  v252 = a6;
  if (a2 == 1 && a3 && (v35 = v253) != 0)
  {
    v240 = v9;
    _Block_copy(a6);
    v36 = a3;
    [v35 mutableCopy];
    sub_21B6C93E4();
    swift_unknownObjectRelease();
    sub_21B61785C(0, &qword_28120B1B0);
    if (swift_dynamicCast())
    {
      v238 = v36;
      v239 = v262;
      if ([v256 userInfo])
      {
        sub_21B6C93E4();
        swift_unknownObjectRelease();
      }

      else
      {
        v262 = 0u;
        v263 = 0u;
      }

      v79 = v251;
      aBlock = v262;
      v259 = v263;
      if (*(&v263 + 1))
      {
        type metadata accessor for PosterRackCollectionViewController.HomeScreenConfigurationInfo();
        if (swift_dynamicCast())
        {
          v37 = v256;
          v80 = v257;
          v81 = v257[2];
          if (!v81)
          {
LABEL_130:

            _Block_release(v252);
            sub_21B6C95D4();
            __break(1u);
            return;
          }

          v82 = v81;
          v83 = [v238 _path];
          v84 = [v37 contentsIdentity];
          if (v84)
          {
            v85 = v84;
            v86 = [v82 _path];
            v87 = [v86 serverIdentity];

            if (v87)
            {
              v253 = v80;
              v88 = [v87 posterUUID];

              sub_21B6C88A4();
              v89 = [v37 destination];
              v251 = v83;
              v248 = v85;
              if (v89 == 2)
              {
                v90 = v83;
                v91 = [v85 posterUUID];
                v92 = v85;
                v93 = v82;
                v94 = v247;
                sub_21B6C88A4();

                v95 = objc_allocWithZone(MEMORY[0x277D3ECE0]);
                v96 = v92;
                v97 = v239;
                v98 = sub_21B6C8884();
                v99 = sub_21B6C8884();
                v100 = [v95 initWithUpdatedPath:v90 updatedPosterUUID:v98 parentPosterUUID:v99 sourceIdentity:v96 configuredProperties:v97 attributes:0];

                v37 = v256;
                v101 = v94;
                v82 = v93;
                (*(v249 + 8))(v101, v250);
              }

              else
              {
                v156 = objc_allocWithZone(MEMORY[0x277D3ECE0]);
                v157 = v83;
                v158 = v85;
                v159 = v239;
                v160 = sub_21B6C8884();
                v100 = [v156 initWithNewPath:v157 destinationPosterUUID:0 parentPosterUUID:v160 sourceIdentity:v158 configuredProperties:v159 attributes:0];
              }

              v161 = v100;
              sub_21B6255EC(v161, v82);

              v162 = v253[3];
              if (v162)
              {
                [v162 invalidate];
              }

              else
              {

                v82 = v238;
                v161 = v251;
              }

              (*(v249 + 8))(v34, v250);
              v63 = 1;
LABEL_91:
              v39 = v255;
              goto LABEL_36;
            }

            goto LABEL_129;
          }

LABEL_128:
          _Block_release(v252);
          __break(1u);
LABEL_129:
          _Block_release(v252);
          __break(1u);
          goto LABEL_130;
        }
      }

      else
      {
        sub_21B62AA8C(&aBlock, &qword_27CD936C0);
      }

      v102 = [v239 suggestionMetadata];
      v103 = v255;
      if (!v102 || (v104 = v102, v105 = [v102 metadataBySettingLastModifiedDateToNow], v104, (v106 = v105) == 0))
      {
        sub_21B698F80(MEMORY[0x277D84F90]);
        sub_21B6C8844();
        v107 = v240;
        (*(v79 + 7))(v25, 0, 1, v240);
        sub_21B61785C(0, &qword_27CD93E18);
        v108 = sub_21B6C8D14();

        v109 = 0;
        if ((*(v79 + 6))(v25, 1, v107) != 1)
        {
          v109 = sub_21B6C87F4();
          (*(v79 + 1))(v25, v240);
        }

        v110 = [objc_allocWithZone(MEMORY[0x277D3EE20]) initWithSuggestedGalleryItem:0 suggestedComplicationsByIdentifier:v108 lastModifiedDate:v109];

        v106 = v110;
      }

      v233 = v106;
      [v239 setSuggestionMetadata_];
      v111 = *&v103[OBJC_IVAR___PBFPosterRackCollectionViewController_posterStore];
      v112 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
      swift_beginAccess();
      v231 = v111;
      v230 = v112;
      v113 = *(v111 + v112);
      v37 = v256;
      if (v113 >> 62)
      {
        v236 = sub_21B6C9454();
      }

      else
      {
        v236 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v114 = [objc_allocWithZone(type metadata accessor for PosterEditingIngestionManager()) init];
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v115 = [v103 presentedViewController];
      if (v115)
      {
        objc_opt_self();
        v116 = swift_dynamicCastObjCClass();
        if (v116)
        {
          v115 = v116;
        }

        else
        {

          v115 = 0;
        }
      }

      sub_21B6C8824();
      v237 = v115;
      v232 = v114;
      PosterEditingIngestionManager.ingestConfiguration(_:updatedConfiguredProperties:editingViewController:galleryViewController:showEditingConfirmation:)(v238, v239, v37, v115, v115 != 0);
      v118 = v117;
      v234 = OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper;
      v119 = *&v103[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper];
      v235 = v117;
      if (!v119)
      {
        goto LABEL_85;
      }

      if (v117)
      {
        v120 = *&v117[OBJC_IVAR___PBFPosterPair_configuration];
        v121 = v117;
        v229 = v119;
        v122 = v121;
        v123 = [v120 _path];
        v124 = [v123 serverIdentity];

        if (v124)
        {
          v125 = [v124 posterUUID];

          sub_21B6C88A4();
          v228 = v122;

          v126 = *(v249 + 32);
          v227 = v249 + 32;
          v226 = v126;
          v126(v29, &v224 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v250);
          if (qword_27CD925D8 != -1)
          {
LABEL_126:
            swift_once();
          }

          v127 = sub_21B6C8AB4();
          __swift_project_value_buffer(v127, qword_27CD94DC0);
          v128 = sub_21B6C8A94();
          v129 = sub_21B6C9044();
          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            *v130 = 0;
            _os_log_impl(&dword_21B526000, v128, v129, "Legacy migration adding save activity indicator", v130, 2u);
            MEMORY[0x21CEF8150](v130, -1, -1);
          }

          [v37 addLongSaveOperationIndicator];
          v225 = sub_21B6C8884();
          v224 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v131 = *(v79 + 2);
          v132 = v240;
          v131(v245, v248, v240);
          v133 = v249;
          v134 = v247;
          (*(v249 + 16))(v247, v29, v250);
          v135 = (v251[80] + 24) & ~v251[80];
          v136 = &v10[v135 + 7] & 0xFFFFFFFFFFFFFFF8;
          v137 = (*(v133 + 80) + v136 + 8) & ~*(v133 + 80);
          v138 = (v26 + v137 + 7) & 0xFFFFFFFFFFFFFFF8;
          v139 = (v138 + 15) & 0xFFFFFFFFFFFFFFF8;
          v140 = swift_allocObject();
          *(v140 + 16) = v256;
          (*(v251 + 4))(v140 + v135, v245, v132);
          v141 = v229;
          *(v140 + v136) = v229;
          v142 = v140 + v137;
          v143 = v250;
          v226(v142, v134, v250);
          *(v140 + v138) = v224;
          v37 = v256;
          v144 = v237;
          *(v140 + v139) = v237;
          v145 = (v140 + ((v139 + 15) & 0xFFFFFFFFFFFFFFF8));
          v146 = v254;
          *v145 = sub_21B657924;
          v145[1] = v146;
          v260 = sub_21B69FA64;
          v261 = v140;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v259 = sub_21B66FFFC;
          *(&v259 + 1) = &block_descriptor_510;
          v147 = _Block_copy(&aBlock);
          v148 = v144;

          v149 = v37;
          v150 = v141;
          v79 = v251;
          v151 = v150;

          v152 = v225;
          [v151 migrateHomePosterAndAssociateToConfiguration:v225 completion:v147];
          _Block_release(v147);

          (*(v249 + 8))(v29, v143);
          v153 = v253;
          for (i = v228; ; i = v118)
          {
            v182 = [v153 suggestionMetadata];
            v183 = v246;
            if (v182)
            {
              v184 = v182;
              v185 = [v182 lastModifiedDate];

              if (v185)
              {
                v186 = v241;
                sub_21B6C8814();

                v187 = 0;
              }

              else
              {
                v187 = 1;
                v186 = v241;
              }

              v10 = *(v79 + 7);
              (v10)(v186, v187, 1, v240);
              sub_21B69F13C(v186, v183, &qword_27CD93190);
            }

            else
            {
              v10 = *(v79 + 7);
              (v10)(v246, 1, 1, v240);
            }

            v188 = *(v231 + v230);
            if (v188 >> 62)
            {
              v29 = sub_21B6C9454();
            }

            else
            {
              v29 = *((v188 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v26 = [v37 modifications];
            v189 = *&i[OBJC_IVAR___PBFPosterPair_id + 8];
            v250 = *&i[OBJC_IVAR___PBFPosterPair_id];
            v249 = v189;
            v190 = 0x7265686374697773;
            if (v236 < v29)
            {
              v190 = 0x7972656C6C6167;
            }

            v253 = v190;
            v191 = v183;
            v192 = v244;
            sub_21B63D2BC(v191, v244, &qword_27CD93190);
            v37 = v79;
            v193 = *(v79 + 6);
            v79 += 48;
            v119 = v193;
            v194 = v240;
            v195 = v193(v192, 1, v240);
            v256 = v29;
            if (v195 == 1)
            {
              sub_21B62AA8C(v192, &qword_27CD93190);
              v196 = -0.0;
              v197 = v243;
            }

            else
            {
              sub_21B6C8804();
              v199 = v198;
              v200 = v198;
              (*(v37 + 1))(v192, v194);
              if ((*&v200 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                __break(1u);
LABEL_125:
                __break(1u);
                goto LABEL_126;
              }

              if (v199 >= 9.22337204e18)
              {
                __break(1u);
LABEL_120:
                __break(1u);
LABEL_121:
                __break(1u);
                goto LABEL_122;
              }

              v197 = v243;
              if (v199 <= -9.22337204e18)
              {
                goto LABEL_120;
              }

              v196 = -v199;
            }

            LODWORD(v247) = [v26 colorModified];
            LODWORD(v244) = [v26 fontModified];
            LODWORD(v243) = [v26 numberingSystemModified];
            LODWORD(v241) = [v26 posterContentModified];
            v37 = [v26 widgetsModified];
            v29 = [v26 containedWidgetsBeforeEdit];
            v201 = [v26 startDate];
            if (v201)
            {
              v202 = v201;
              sub_21B6C8814();

              v203 = 0;
            }

            else
            {
              v203 = 1;
            }

            v204 = v251;
            v205 = v197;
            v206 = v197;
            v207 = v240;
            (v10)(v205, v203, 1, v240);
            v208 = v206;
            v209 = v242;
            sub_21B69F13C(v208, v242, &qword_27CD93190);
            if ((v119)(v209, 1, v207))
            {
              sub_21B62AA8C(v209, &qword_27CD93190);
              v210 = -0.0;
              goto LABEL_114;
            }

            v10 = v245;
            (*(v204 + 2))(v245, v209, v207);
            sub_21B62AA8C(v209, &qword_27CD93190);
            sub_21B6C8804();
            v212 = v211;
            v213 = v211;
            (*(v204 + 1))(v10, v207);
            if ((*&v213 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_125;
            }

            if (v212 >= 9.22337204e18)
            {
              goto LABEL_121;
            }

            if (v212 > -9.22337204e18)
            {
              v210 = -v212;
LABEL_114:
              v214 = v236 < v256;
              v215 = v210;
              v216 = objc_allocWithZone(MEMORY[0x277CEB7B8]);
              v217 = sub_21B6C8D74();
              v218 = sub_21B6C8D74();

              v219 = sub_21B6C8D74();
              BYTE4(v223) = v29;
              BYTE3(v223) = v37;
              BYTE2(v223) = v241;
              BYTE1(v223) = v243;
              LOBYTE(v223) = v244;
              v220 = [v216 initWithLockscreenId:v217 entryPoint:v218 newlyCreated:v214 secondsSinceLastEdit:v196 outcome:v219 userChangedColor:v247 userChangedFont:v223 userChangedNumberingSystem:v215 userChangedPosterContent:? userChangedWidgets:? didLockscreenHaveWidgetsBeforeEdit:? duration:?];

              v221 = [objc_opt_self() sharedInstance];
              v260 = sub_21B692E64;
              v261 = 0;
              *&aBlock = MEMORY[0x277D85DD0];
              *(&aBlock + 1) = 1107296256;
              *&v259 = sub_21B693014;
              *(&v259 + 1) = &block_descriptor_488;
              v222 = _Block_copy(&aBlock);
              [v221 logPosterEdit:v220 completion:v222];
              _Block_release(v222);

              if (!*&v255[v234])
              {
                (*(v252 + 2))(v252, 0);
              }

              sub_21B62AA8C(v246, &qword_27CD93190);
              (*(v251 + 1))(v248, v240);
LABEL_41:

              return;
            }

LABEL_122:
            __break(1u);
LABEL_123:
            swift_once();
LABEL_82:
            v163 = sub_21B6C8AB4();
            __swift_project_value_buffer(v163, qword_27CD94DC0);
            v164 = sub_21B6C8A94();
            v165 = sub_21B6C9024();
            if (os_log_type_enabled(v164, v165))
            {
              v166 = swift_slowAlloc();
              *v166 = 0;
              _os_log_impl(&dword_21B526000, v164, v165, "Legacy migration failed to persist lock poster, reverting back to previous configuration", v166, 2u);
              MEMORY[0x21CEF8150](v166, -1, -1);
            }

            v167 = v245;
            sub_21B6C8824();
            sub_21B6C87E4();
            v169 = v168;
            v170 = [v119 migrationInfo];
            v171 = sub_21B6C8D74();
            v172 = swift_allocObject();
            *(v172 + 16) = v170;
            *(v172 + 24) = v169;
            *(v172 + 32) = xmmword_21B6D9890;
            v260 = sub_21B65A898;
            v261 = v172;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v259 = sub_21B65A4F8;
            *(&v259 + 1) = &block_descriptor_495;
            v173 = _Block_copy(&aBlock);
            v174 = v170;

            AnalyticsSendEventLazy();
            _Block_release(v173);

            [v37 setShowsContentWhenReady_];
            [v37 setAllowsTransparentContent_];
            [v37 setForcesSceneForeground_];
            v175 = swift_allocObject();
            v176 = v237;
            v177 = v255;
            v175[2] = v237;
            v175[3] = v177;
            v175[4] = v37;
            v175[5] = 1;
            v175[6] = 0;
            v175[7] = 0;
            v260 = sub_21B69F920;
            v261 = v175;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v259 = sub_21B63863C;
            *(&v259 + 1) = &block_descriptor_502;
            v178 = _Block_copy(&aBlock);
            v179 = v176;
            v177;
            v180 = v37;

            [v180 dismissViewControllerAnimated:0 completion:v178];
            _Block_release(v178);
            sub_21B681098();
            v181 = *&v177[v234];
            *&v177[v234] = 0;

            (*(v252 + 2))(v252, 0);
            v79 = v251;
            (*(v251 + 1))(v167, v240);
            v118 = v235;
LABEL_85:
            v153 = v253;
            if (!v118)
            {
              (*(v79 + 1))(v248, v240);

              v63 = 0;
              goto LABEL_91;
            }
          }
        }
      }

      else
      {
        v155 = v119;
      }

      if (qword_27CD925D8 == -1)
      {
        goto LABEL_82;
      }

      goto LABEL_123;
    }
  }

  else
  {
    _Block_copy(a6);
  }

  v37 = v256;
  v38 = [v256 userInfo];
  v39 = v255;
  if (v38)
  {
    sub_21B6C93E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v262 = 0u;
    v263 = 0u;
  }

  aBlock = v262;
  v259 = v263;
  if (*(&v263 + 1))
  {
    type metadata accessor for PosterRackCollectionViewController.HomeScreenConfigurationInfo();
    if (swift_dynamicCast())
    {
      v40 = v257;
      if (v257[3])
      {
        [swift_unknownObjectRetain() invalidate];
        v41 = *(v40 + 2);
        if (v41)
        {
          v42 = v41;
          v43 = [v42 _path];
          v44 = [v43 serverIdentity];

          if (!v44)
          {
            _Block_release(v252);
            __break(1u);
            goto LABEL_128;
          }

          v45 = [v44 posterUUID];

          v46 = v247;
          sub_21B6C88A4();

          v47 = sub_21B6C8874();
          v49 = v48;
          (*(v249 + 8))(v46, v250);
          v50 = sub_21B61F5F8(v47, v49);

          if (v50)
          {
            v51 = OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration;
            v52 = *&v50[OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration];
            v37 = v256;
            if (v52 && ([v52 mutableCopy], sub_21B6C93E4(), swift_unknownObjectRelease(), sub_21B61785C(0, &unk_28120B188), (swift_dynamicCast() & 1) != 0))
            {
              v53 = v262;
              if (v40[40])
              {
                v54 = 0;
              }

              else
              {
                v54 = *(v40 + 4);
              }

              [v262 setSelectedAppearanceType_];
              v55 = *&v50[v51];
              *&v50[v51] = v53;
              v56 = v53;
              sub_21B6A2434(v55);

              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }
          }

          else
          {

            swift_unknownObjectRelease();
            v37 = v256;
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_21B62AA8C(&aBlock, &qword_27CD936C0);
  }

  v57 = OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper;
  if (*&v39[OBJC_IVAR___PBFPosterRackCollectionViewController_legacyMigrationHelper])
  {
    if (qword_27CD925D8 != -1)
    {
      swift_once();
    }

    v58 = sub_21B6C8AB4();
    __swift_project_value_buffer(v58, qword_27CD94DC0);
    v59 = sub_21B6C8A94();
    v60 = sub_21B6C9004();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_21B526000, v59, v60, "Legacy migration cancelled, clearing migration info", v61, 2u);
      MEMORY[0x21CEF8150](v61, -1, -1);
    }

    v62 = *&v39[v57];
    *&v39[v57] = 0;
  }

  v63 = 0;
LABEL_36:
  v64 = [v37 parentViewController];
  if (v64)
  {
    v65 = v64;
    sub_21B61785C(0, &unk_28120B310);
    v66 = v39;
    v67 = sub_21B6C91A4();

    if (v67)
    {
      v68 = swift_allocObject();
      v69 = v254;
      v68[2] = sub_21B657924;
      v68[3] = v69;

      PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(1, 1, 0, sub_21B69F934, v68);

      goto LABEL_41;
    }
  }

  if (v63)
  {
    v70 = swift_allocObject();
    v71 = v254;
    *(v70 + 16) = sub_21B657924;
    *(v70 + 24) = v71;
    v260 = sub_21B69F934;
    v261 = v70;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v259 = sub_21B63863C;
    *(&v259 + 1) = &block_descriptor_481;
    v72 = _Block_copy(&aBlock);

    [v39 dismissPresentedViewControllersAnimated:1 dismissHandler:0 completion:v72];
    _Block_release(v72);
    goto LABEL_41;
  }

  v73 = [v39 presentedViewController];
  if (v73)
  {
    v74 = v73;
    objc_opt_self();
    v75 = swift_dynamicCastObjCClass();
    if (!v75)
    {
    }
  }

  else
  {
    v75 = 0;
  }

  v76 = swift_allocObject();
  *(v76 + 16) = v37;
  v260 = sub_21B69F93C;
  v261 = v76;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v259 = sub_21B63863C;
  *(&v259 + 1) = &block_descriptor_474;
  v77 = _Block_copy(&aBlock);
  v78 = v37;

  [v78 dismissViewControllerAnimated:1 completion:v77];
  _Block_release(v77);
  (*(v252 + 2))(v252, 0);
}

uint64_t objectdestroy_162Tm()
{
  v12 = sub_21B6C8854();
  v1 = *(v12 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_21B6C88C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 8) & ~v7;
  v11 = v2 | v7;
  v9 = (((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v1 + 8))(v0 + v3, v12);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v11 | 7);
}

uint64_t sub_21B69EB8C(uint64_t a1, void *a2)
{
  v5 = *(sub_21B6C8854() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_21B6C88C4() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_21B69254C(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), v2 + v9, *(v2 + v10), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_21B69EDA0()
{
  v1 = *(sub_21B6C8964() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + v2 + v4) & ~v2);
  v7 = *(v6 + v3);

  sub_21B68B368(v5, v0 + v4, v6, v7);
}

void sub_21B69EE34()
{
  sub_21B6C8964();
  v1 = *(v0 + 16);

  sub_21B68B6E0(v1);
}

id sub_21B69EEC4(int a1)
{
  v3 = *(sub_21B6C8964() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v6 = *(v5 + *(v3 + 64));

  return sub_21B68B7E4(a1, v4, v5, v6);
}

id sub_21B69EF58()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

uint64_t objectdestroy_155Tm()
{
  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_21B69EFEC()
{
  v1 = *(sub_21B6C8A04() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_21B693604(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t sub_21B69F084()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void *sub_21B69F0C4()
{
  v1 = *(v0 + 16);
  v2 = v1;
  if (!v1)
  {
    v2 = *(v0 + 24);
    if (v2)
    {
      v3 = v2;
    }
  }

  v4 = v1;
  return v2;
}

uint64_t sub_21B69F13C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_21B69F1A4(void *a1, void *a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  result = [a1 pruis:v4 setSwitcherLayoutMode:?];
  if (v5)
  {
    result = [a2 setAnimationSettings_];
  }

  if (v6)
  {

    return [a2 setAnimationFence_];
  }

  return result;
}

uint64_t objectdestroy_392Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t sub_21B69F2B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21B69F36C;

  return sub_21B68DAA4(a1, v4, v5, v6);
}

uint64_t sub_21B69F36C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21B69F460(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B69F948;

  return sub_21B695BA8(a1, v4);
}

uint64_t sub_21B69F520(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21B69F36C;

  return sub_21B65E668(a1, a2, v2);
}

uint64_t objectdestroy_705Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B69F650(uint64_t a1, int a2)
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

uint64_t sub_21B69F698(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PosterRackCollectionViewController.PosterRackHomeScreenEditingError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PosterRackCollectionViewController.PosterRackHomeScreenEditingError(_WORD *result, int a2, int a3)
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

unint64_t sub_21B69F7D0()
{
  result = qword_27CD94308;
  if (!qword_27CD94308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD94308);
  }

  return result;
}

id sub_21B69FA6C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void sub_21B69FABC(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC11PosterBoard42HomeScreenIconContentReusableViewConnector_homeScreenIconContentLayout);
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

LABEL_6:
    v7 = *(v2 + OBJC_IVAR____TtC11PosterBoard42HomeScreenIconContentReusableViewConnector_reusableHomeScreenIconContentViews);
    v8 = [v7 objectEnumerator];
    v9 = MEMORY[0x277D84F70];
    if (v8)
    {
      v10 = v8;
      v11 = [v8 allObjects];

      v12 = sub_21B6C8E84();
      v13 = *(v12 + 16);
      if (v13)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      v13 = *(MEMORY[0x277D84F90] + 16);
      if (v13)
      {
LABEL_8:
        v31 = v7;
        v14 = v12 + 32;
        v15 = &selRef_newAssertionForBundleIdentifier_withReason_level_;
        v30 = *MEMORY[0x277CDA7A8];
        v29 = *MEMORY[0x277CDA928];
        do
        {
          sub_21B657AA0(v14, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94448);
          if (swift_dynamicCast())
          {
            v16 = [v32 v15[30]];

            if (v16)
            {
              v17 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView;
              v18 = *&v16[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView];
              *&v16[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView] = 0;
              if (v18)
              {
                v19 = v9;
                v20 = v15;
                BSDispatchQueueAssertMain();
                v21 = [v18 superview];
                v22 = [v16 contentView];

                if (v21)
                {

                  if (v21 == v22)
                  {
                    [v18 removeFromSuperview];
                  }
                }

                v15 = v20;
                if (*&v16[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenPortalView] || (v23 = *&v16[v17]) == 0)
                {
                }

                else
                {
                  v24 = v23;
                  v25 = [v16 contentView];
                  [v25 addSubview_];

                  [v16 bounds];
                  [v24 setFrame_];
                  [v24 _setContinuousCornerRadius_];
                  if ([objc_opt_self() areAnimationsEnabled])
                  {
                    v26 = [objc_allocWithZone(MEMORY[0x277CDA000]) init];
                    [v26 setDuration_];
                    v27 = [objc_opt_self() functionWithName_];
                    [v26 setTimingFunction_];

                    [v26 setType_];
                    v28 = [v24 layer];
                    [v28 addAnimation:v26 forKey:0];
                  }

                  else
                  {
                  }

                  v15 = v20;
                }

                v9 = v19;
              }

              else
              {
              }
            }
          }

          v14 += 32;
          --v13;
        }

        while (v13);

        v7 = v31;
        goto LABEL_28;
      }
    }

LABEL_28:
    [v7 removeAllObjects];
    return;
  }

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = a1;
  sub_21B61785C(0, &unk_28120B1F0);
  v5 = v3;
  v6 = v4;
  LOBYTE(v4) = sub_21B6C91A4();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_21B69FEF0(char *a1)
{
  v3 = sub_21B6C88C4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC11PosterBoard42HomeScreenIconContentReusableViewConnector_homeScreenIconContentLayout);
  if (!v8)
  {
    return;
  }

  v9 = OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView;
  if (!*&a1[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView])
  {
    v11 = v5;
    v12 = *(v1 + OBJC_IVAR____TtC11PosterBoard42HomeScreenIconContentReusableViewConnector_reusableHomeScreenIconContentViews);
    v40 = v8;
    v13 = [v12 keyEnumerator];
    v14 = [v13 allObjects];

    v15 = sub_21B6C8E84();
    if (*(v15 + 16))
    {
      sub_21B657AA0(v15 + 32, &aBlock);

      sub_21B61785C(0, &unk_28120B170);
      if (swift_dynamicCast())
      {
        v16 = v47;
        v17 = [v12 objectForKey_];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 object];
          if (v19)
          {
            v20 = v19;
            v21 = *&v19[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView];
            *&v19[OBJC_IVAR____TtC11PosterBoard34HomeScreenPosterCollectionViewCell_homeScreenIconContentView] = 0;
            sub_21B66C998(v21);

            v18 = v21;
          }
        }

        [v12 removeObjectForKey_];
        goto LABEL_17;
      }
    }

    else
    {
    }

    v22 = [a1 pbf_displayContext];
    if (v22)
    {
      v23 = v22;
      [swift_unknownObjectRetain() pbf_frame];
      [v23 pbf_scale];
      BSSizeRoundForScale();
      v25 = v24;
      v27 = v26;
      sub_21B6C88B4();
      v28 = sub_21B6C8874();
      v30 = v29;
      (*(v4 + 8))(v7, v11);
      v31 = objc_allocWithZone(MEMORY[0x277D67B80]);
      v32 = [v31 initWithSilhouetteLayout:v40 viewSize:{v25, v27}];
      [v32 setIncludesDock_];
      v33 = swift_allocObject();
      v33[2] = v28;
      v33[3] = v30;
      v33[4] = 0x3FF0000000000000;
      v45 = sub_21B66C3B0;
      v46 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v42 = 1107296256;
      v43 = sub_21B69FA6C;
      v44 = &block_descriptor_13;
      v34 = _Block_copy(&aBlock);

      [v32 setIconViewBuilder_];
      _Block_release(v34);
      v35 = swift_allocObject();
      v35[2] = v28;
      v35[3] = v30;
      v35[4] = 0x3FF0000000000000;
      v45 = sub_21B66C3D4;
      v46 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v42 = 1107296256;
      v43 = sub_21B69FA6C;
      v44 = &block_descriptor_11;
      v36 = _Block_copy(&aBlock);

      [v32 setDockViewBuilder_];
      _Block_release(v36);
      v16 = [v32 buildView];
      [v16 setClipsToBounds_];

      swift_unknownObjectRelease_n();
    }

    else
    {
      v16 = 0;
    }

LABEL_17:
    v37 = v16;
    v38 = *&a1[v9];
    *&a1[v9] = v16;
    v39 = v37;
    sub_21B66C998(v38);

    return;
  }

  v10 = *(v1 + OBJC_IVAR____TtC11PosterBoard42HomeScreenIconContentReusableViewConnector_reusableHomeScreenIconContentViews);

  [v10 removeObjectForKey_];
}

id sub_21B6A0478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeScreenIconContentReusableViewConnector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static UIButton.Configuration.ambientEdit()()
{
  v0 = sub_21B6C9264();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_21B6C9204();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_21B6C92F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21B6C9354();
  (*(v9 + 104))(v11, *MEMORY[0x277D75020], v8);
  sub_21B6C91F4();
  (*(v5 + 104))(v7, *MEMORY[0x277D74FD8], v4);
  sub_21B6C9224();
  (*(v1 + 104))(v3, *MEMORY[0x277D74FF0], v0);
  sub_21B6C9284();
  v12 = objc_opt_self();
  v13 = [v12 labelColor];
  sub_21B6C92C4();
  v14 = [v12 clearColor];
  sub_21B6C92B4();
  v15 = [objc_opt_self() effectWithStyle_];
  v16 = sub_21B6C91D4();
  sub_21B6C8B34();
  v16(v20, 0);
  v17 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() configurationWithFont:v17 scale:3];
    sub_21B6C91C4();
    sub_21B6C9234();
  }

  else
  {
    __break(1u);
  }
}

char *sub_21B6A08AC(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93B30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v60 - v10;
  v12 = sub_21B6C9364();
  v13 = *(v12 - 8);
  v61 = v12;
  v62 = v13;
  MEMORY[0x28223BE20](v12);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyleCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyleItemView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyle] = 0;
  v15 = [objc_opt_self() effectWithStyle_];
  v16 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v17 = OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_outerRing;
  *&v4[OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_outerRing] = v16;
  v18 = [v16 layer];
  [v18 setCornerRadius_];

  [*&v4[v17] setClipsToBounds_];
  [*&v4[v17] setUserInteractionEnabled_];
  [*&v4[v17] setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v20 = OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_innerRing;
  *&v4[OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_innerRing] = v19;
  v21 = objc_opt_self();
  v22 = v19;
  v23 = [v21 whiteColor];
  [v22 setBackgroundColor_];

  v24 = [*&v4[v20] layer];
  [v24 setCornerRadius_];

  [*&v4[v20] setUserInteractionEnabled_];
  [*&v4[v20] setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = type metadata accessor for AmbientEditButton();
  v65.receiver = v4;
  v65.super_class = v25;
  v26 = objc_msgSendSuper2(&v65, sel_initWithFrame_, a1, a2, a3, a4);
  v27 = v63;
  sub_21B6C9314();
  v28 = [v21 clearColor];
  v29 = sub_21B6C91D4();
  sub_21B6C8B44();
  v29(v64, 0);
  v30 = v61;
  v31 = v62;
  (*(v62 + 16))(v11, v27, v61);
  (*(v31 + 56))(v11, 0, 1, v30);
  v32 = v26;
  sub_21B6C9394();

  v33 = [v32 layer];
  [v33 setHitTestsAsOpaque_];

  v34 = OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_outerRing;
  [v32 addSubview_];
  v35 = [*&v32[v34] contentView];
  v36 = OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_innerRing;
  [v35 addSubview_];

  v60 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_21B6D9EE0;
  v38 = [*&v32[v34] centerXAnchor];
  v39 = [v32 centerXAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v37 + 32) = v40;
  v41 = [*&v32[v34] centerYAnchor];
  v42 = [v32 centerYAnchor];
  v43 = [v41 &selRef_homeProvider + 5];

  *(v37 + 40) = v43;
  v44 = [*&v32[v34] widthAnchor];
  v45 = [v44 constraintEqualToConstant_];

  *(v37 + 48) = v45;
  v46 = [*&v32[v34] heightAnchor];
  v47 = [v46 constraintEqualToConstant_];

  *(v37 + 56) = v47;
  v48 = [*&v32[v36] centerXAnchor];
  v49 = [v32 centerXAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v37 + 64) = v50;
  v51 = [*&v32[v36] centerYAnchor];
  v52 = [v32 centerYAnchor];

  v53 = [v51 constraintEqualToAnchor_];
  *(v37 + 72) = v53;
  v54 = [*&v32[v36] widthAnchor];
  v55 = [v54 constraintEqualToConstant_];

  *(v37 + 80) = v55;
  v56 = [*&v32[v36] heightAnchor];
  v57 = [v56 constraintEqualToConstant_];

  *(v37 + 88) = v57;
  sub_21B6A1640();
  v58 = sub_21B6C8E74();

  [v60 activateConstraints_];

  (*(v62 + 8))(v63, v61);
  return v32;
}

void sub_21B6A10C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyleCoordinator);
  if (v1)
  {
    v1 = [v1 itemView];
  }

  v3 = *(v0 + OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyleItemView);
  *(v0 + OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyleItemView) = v1;
  v2 = v1;
  sub_21B6A1148(v3);
}

void sub_21B6A1148(void *a1)
{
  [a1 removeFromSuperview];
  v2 = *(v1 + OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyleItemView);
  if (v2)
  {
    v3 = v2;
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = [v3 layer];
    [v4 setCornerRadius_];

    [v3 setClipsToBounds_];
    [v3 setUserInteractionEnabled_];
    v5 = *(v1 + OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_innerRing);
    [v5 addSubview_];
    [v5 setBackgroundColor_];
    v6 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_21B6D7FF0;
    v8 = [v3 leadingAnchor];
    v9 = [v5 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor_];

    *(v7 + 32) = v10;
    v11 = [v3 trailingAnchor];
    v12 = [v5 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v7 + 40) = v13;
    v14 = [v3 topAnchor];
    v15 = [v5 topAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(v7 + 48) = v16;
    v17 = [v3 bottomAnchor];
    v18 = [v5 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    *(v7 + 56) = v19;
    sub_21B6A1640();
    v21 = sub_21B6C8E74();

    [v6 activateConstraints_];
  }

  else
  {
    v20 = *(v1 + OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_innerRing);
    v21 = [objc_opt_self() whiteColor];
    [v20 setBackgroundColor_];
  }
}

void sub_21B6A148C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyle);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x277D3ECB8]);
    swift_unknownObjectRetain();
    v3 = [v2 initWithInitialStyle:v1 suggested:0];
    v4 = *(v0 + OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyleCoordinator);
    *(v0 + OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyleCoordinator) = v3;
    v6 = v3;

    sub_21B6A10C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyleCoordinator);
    *(v0 + OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyleCoordinator) = 0;

    sub_21B6A10C4();
  }
}

id sub_21B6A156C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientEditButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21B6A1640()
{
  result = qword_28120B2D0;
  if (!qword_28120B2D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28120B2D0);
  }

  return result;
}

uint64_t PosterPair.__allocating_init(configuration:associatedConfiguration:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  sub_21B6A3A58(a1, a2);
  v7 = v6;

  return v7;
}

uint64_t PosterPair.init(configuration:associatedConfiguration:)(void *a1, void *a2)
{
  sub_21B6A3A58(a1, a2);
  v5 = v4;

  return v5;
}

uint64_t PosterPair.id.getter()
{
  v1 = *(v0 + OBJC_IVAR___PBFPosterPair_id);

  return v1;
}

uint64_t PosterPair.configurationUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR___PBFPosterPair_configuration) _path];
  v4 = [v3 serverIdentity];

  if (v4)
  {
    v5 = [v4 posterUUID];

    sub_21B6C88A4();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_21B6C88C4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, 1, v7);
}

void sub_21B6A1AA4()
{
  v1 = v0;
  v2 = OBJC_IVAR___PBFPosterPair_configuration;
  v3 = *(v0 + OBJC_IVAR___PBFPosterPair_configuration);
  v4 = _s11PosterBoard0A4PairC034fetchConfiguredPropertiesOrDefaultF03forSo08PRPostereF0CSo0J13ConfigurationC_tFZ_0(v3);

  v5 = *(v1 + OBJC_IVAR___PBFPosterPair_configuredProperties);
  *(v1 + OBJC_IVAR___PBFPosterPair_configuredProperties) = v4;
  v6 = v4;
  sub_21B6A1CC4(v5);

  v7 = *(v1 + v2);
  sub_21B61785C(0, &qword_28120B290);
  v8 = v7;
  LOBYTE(v3) = sub_21B6C91A4();

  if (v3)
  {
    return;
  }

  v9 = [*(v1 + OBJC_IVAR___PBFPosterPair_observers) allObjects];
  v10 = sub_21B6C8E84();

  if (v10 >> 62)
  {
    v11 = sub_21B6C9454();
    if (v11)
    {
LABEL_4:
      if (v11 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v11; ++i)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21CEF66E0](i, v10);
          }

          else
          {
            swift_unknownObjectRetain();
          }

          v13 = swift_dynamicCastObjCProtocolConditional();
          if (v13)
          {
            v14 = v13;
            if ([v13 respondsToSelector_])
            {
              [v14 posterPairDidUpdateLockPosterAppearance_];
            }
          }

          swift_unknownObjectRelease();
        }
      }

      return;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }
  }
}

void sub_21B6A1CC4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PBFPosterPair_configuredProperties;
  v5 = *&v1[OBJC_IVAR___PBFPosterPair_configuredProperties];
  sub_21B61785C(0, &qword_28120B208);
  v6 = v5;
  v7 = sub_21B6C91A4();

  if ((v7 & 1) == 0)
  {
    v8 = OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration;
    if (*&v2[OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration])
    {
      if (qword_27CD925A8 != -1)
      {
        swift_once();
      }

      v9 = sub_21B6C8AB4();
      __swift_project_value_buffer(v9, qword_27CD94D60);
      v10 = sub_21B6C9044();
      v11 = v2;
      v12 = sub_21B6C8A94();

      if (os_log_type_enabled(v12, v10))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        *(v13 + 4) = v11;
        *v14 = v11;
        v15 = v11;
        _os_log_impl(&dword_21B526000, v12, v10, "Resetting provisional home screen configuration back to nil due to configured properties update with a new home screen configuration for poster pair: %@", v13, 0xCu);
        sub_21B619CD8(v14);
        MEMORY[0x21CEF8150](v14, -1, -1);
        MEMORY[0x21CEF8150](v13, -1, -1);
      }

      v16 = OBJC_IVAR___PBFPosterPair_ignoreNotifyingForProvisionalHomeScreenConfigurationChange;
      v11[OBJC_IVAR___PBFPosterPair_ignoreNotifyingForProvisionalHomeScreenConfigurationChange] = 1;
      v17 = *&v2[v8];
      *&v2[v8] = 0;
      sub_21B6A2434(v17);

      v11[v16] = 0;
    }

    v18 = [a1 otherMetadata];
    if (v18 && (v19 = v18, v20 = [v18 displayNameLocalizationKey], v19, v20))
    {
      v21 = sub_21B6C8DA4();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = [*&v2[v4] otherMetadata];
    if (v24 && (v25 = v24, v26 = [v24 displayNameLocalizationKey], v25, v26))
    {
      v27 = sub_21B6C8DA4();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    p_opt_class_meths = &OBJC_PROTOCOL___PRDateObserving.opt_class_meths;
    v31 = &selRef__prepareAttributesForIngestionForPoster_existingAttributes_incomingAttributes_proposedAttributesToDelete_proposedAttributesToUpdate_storage_currentCollection_error_;
    if (v23)
    {
      if (v29)
      {
        if (v21 == v27 && v23 == v29)
        {

LABEL_38:

          goto LABEL_39;
        }

        v45 = sub_21B6C96E4();

        if (v45)
        {
LABEL_39:
          v46 = [*(p_opt_class_meths[162] + v2) v31[283]];
          v47 = sub_21B6C8E84();

          if (v47 >> 62)
          {
            v48 = sub_21B6C9454();
            if (v48)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v48)
            {
LABEL_41:
              if (v48 >= 1)
              {
                for (i = 0; i != v48; ++i)
                {
                  if ((v47 & 0xC000000000000001) != 0)
                  {
                    MEMORY[0x21CEF66E0](i, v47);
                  }

                  else
                  {
                    swift_unknownObjectRetain();
                  }

                  v50 = swift_dynamicCastObjCProtocolConditional();
                  if (v50)
                  {
                    v51 = v50;
                    if ([v50 respondsToSelector_])
                    {
                      [v51 posterPairDidUpdateConfiguredProperties_];
                    }
                  }

                  swift_unknownObjectRelease();
                }

                goto LABEL_51;
              }

              __break(1u);
LABEL_54:
              __break(1u);
              return;
            }
          }

LABEL_51:

          return;
        }

LABEL_23:
        v32 = *&v2[v4];
        v33 = *&v2[OBJC_IVAR___PBFPosterPair_configuration];
        v34 = v32;
        v35 = sub_21B6A35E0(v33, v34);
        v37 = v36;

        v38 = &v2[OBJC_IVAR___PBFPosterPair_localizedTitle];
        *v38 = v35;
        v38[1] = v37;

        v39 = [*&v2[OBJC_IVAR___PBFPosterPair_observers] allObjects];
        v40 = sub_21B6C8E84();

        if (v40 >> 62)
        {
          v41 = sub_21B6C9454();
          if (!v41)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v41)
          {
            goto LABEL_38;
          }
        }

        if (v41 < 1)
        {
          goto LABEL_54;
        }

        for (j = 0; j != v41; ++j)
        {
          if ((v40 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21CEF66E0](j, v40);
          }

          else
          {
            swift_unknownObjectRetain();
          }

          v43 = swift_dynamicCastObjCProtocolConditional();
          if (v43)
          {
            v44 = v43;
            if ([v43 respondsToSelector_])
            {
              [v44 posterPairDidUpdateLocalizedTitle_];
            }
          }

          swift_unknownObjectRelease();
        }

        v31 = &selRef__prepareAttributesForIngestionForPoster_existingAttributes_incomingAttributes_proposedAttributesToDelete_proposedAttributesToUpdate_storage_currentCollection_error_;
        p_opt_class_meths = (&OBJC_PROTOCOL___PRDateObserving + 48);
        goto LABEL_39;
      }
    }

    else if (!v29)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }
}

void sub_21B6A223C(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR___PBFPosterPair_associatedConfiguration);
  if (a1)
  {
    if (v3)
    {
      v4 = a1;
      sub_21B61785C(0, &qword_28120B290);
      v5 = v3;
      v6 = v4;
      LOBYTE(v4) = sub_21B6C91A4();

      if (v4)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  v7 = [*(v2 + OBJC_IVAR___PBFPosterPair_observers) allObjects];
  v8 = sub_21B6C8E84();

  if (v8 >> 62)
  {
    v9 = sub_21B6C9454();
    if (v9)
    {
LABEL_8:
      if (v9 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v9; ++i)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21CEF66E0](i, v8);
          }

          else
          {
            swift_unknownObjectRetain();
          }

          v11 = swift_dynamicCastObjCProtocolConditional();
          if (v11)
          {
            v12 = v11;
            if ([v11 respondsToSelector_])
            {
              [v12 posterPairDidUpdateHomePosterAppearance_];
            }
          }

          swift_unknownObjectRelease();
        }
      }

      return;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_8;
    }
  }
}

void sub_21B6A2434(void *a1)
{
  if (*(v1 + OBJC_IVAR___PBFPosterPair_ignoreNotifyingForProvisionalHomeScreenConfigurationChange))
  {
    return;
  }

  v2 = v1;
  v3 = *(v1 + OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration);
  if (a1)
  {
    if (v3)
    {
      sub_21B61785C(0, &unk_28120B1D0);
      v5 = v3;
      v6 = a1;
      v7 = sub_21B6C91A4();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  v8 = [*(v2 + OBJC_IVAR___PBFPosterPair_observers) allObjects];
  v9 = sub_21B6C8E84();

  if (v9 >> 62)
  {
    v10 = sub_21B6C9454();
    if (v10)
    {
LABEL_9:
      if (v10 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v10; ++i)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21CEF66E0](i, v9);
          }

          else
          {
            swift_unknownObjectRetain();
          }

          v12 = swift_dynamicCastObjCProtocolConditional();
          if (v12)
          {
            v13 = v12;
            if ([v12 respondsToSelector_])
            {
              [v13 posterPairDidUpdateConfiguredProperties_];
            }
          }

          swift_unknownObjectRelease();
        }
      }

      return;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_9;
    }
  }
}

void sub_21B6A2638()
{
  v1 = [*(v0 + OBJC_IVAR___PBFPosterPair_observers) allObjects];
  v2 = sub_21B6C8E84();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_14:

    goto LABEL_16;
  }

  v3 = sub_21B6C9454();
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CEF66E0](i, v2);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v5 = swift_dynamicCastObjCProtocolConditional();
      if (v5)
      {
        v6 = v5;
        if ([v5 respondsToSelector_])
        {
          [v6 posterPairDidUpdateLockPosterSnapshots_];
        }
      }

      swift_unknownObjectRelease();
    }

LABEL_16:

    return;
  }

  __break(1u);
}

uint64_t PosterPair.description.getter()
{
  v1 = v0;
  sub_21B6C9524();
  MEMORY[0x21CEF5FA0](0x50726574736F503CLL, 0xED0000203A726961);
  v43 = v0;
  sub_21B6C95C4();
  MEMORY[0x21CEF5FA0](62, 0xE100000000000000);
  v2 = sub_21B6A33A8(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_21B6A33A8((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0;
  *(v5 + 5) = 0xE000000000000000;
  v42 = OBJC_IVAR___PBFPosterPair_configuration;
  v6 = *(v0 + OBJC_IVAR___PBFPosterPair_configuration);
  v7 = [v6 _path];
  v8 = [v7 serverIdentity];

  if (v8)
  {
    v9 = [v8 provider];

    v10 = sub_21B6C8DA4();
    v12 = v11;
  }

  else
  {
    v10 = 0x3E6C696E3CLL;

    v12 = 0xE500000000000000;
  }

  MEMORY[0x21CEF5FA0](v10, v12);

  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_21B6A33A8((v13 > 1), v14 + 1, 1, v2);
  }

  *(v2 + 2) = v14 + 1;
  v15 = &v2[16 * v14];
  *(v15 + 4) = 0x72656469766F7270;
  *(v15 + 5) = 0xEA0000000000203ALL;
  sub_21B6C9524();

  if (*(v1 + OBJC_IVAR___PBFPosterPair_localizedTitle + 8))
  {
    v16 = *(v1 + OBJC_IVAR___PBFPosterPair_localizedTitle);
    v17 = *(v1 + OBJC_IVAR___PBFPosterPair_localizedTitle + 8);
  }

  else
  {
    v16 = 0x3E6C696E3CLL;
    v17 = 0xE500000000000000;
  }

  MEMORY[0x21CEF5FA0](v16, v17);

  MEMORY[0x21CEF5FA0](39, 0xE100000000000000);
  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_21B6A33A8((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0xD000000000000011;
  *(v20 + 5) = 0x800000021B6F31E0;
  sub_21B6C9524();

  v21 = *(v1 + OBJC_IVAR___PBFPosterPair_associatedConfiguration);
  if (v21)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v21)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x21CEF5FA0](v22, v23);

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_21B6A33A8((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0xD00000000000001CLL;
  *(v26 + 5) = 0x800000021B6F3200;
  sub_21B6C9524();

  if (*(v1 + OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration))
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration))
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x21CEF5FA0](v27, v28);

  v30 = *(v2 + 2);
  v29 = *(v2 + 3);
  if (v30 >= v29 >> 1)
  {
    v2 = sub_21B6A33A8((v29 > 1), v30 + 1, 1, v2);
  }

  *(v2 + 2) = v30 + 1;
  v31 = &v2[16 * v30];
  *(v31 + 4) = 0xD000000000000027;
  *(v31 + 5) = 0x800000021B6F3220;
  v32 = [*(v1 + v42) _path];
  v33 = [v32 description];
  v34 = sub_21B6C8DA4();
  v36 = v35;

  MEMORY[0x21CEF5FA0](v34, v36);

  v38 = *(v2 + 2);
  v37 = *(v2 + 3);
  if (v38 >= v37 >> 1)
  {
    v2 = sub_21B6A33A8((v37 > 1), v38 + 1, 1, v2);
  }

  *(v2 + 2) = v38 + 1;
  v39 = &v2[16 * v38];
  *(v39 + 4) = 0x203A68746170;
  *(v39 + 5) = 0xE600000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92F18);
  sub_21B6A3C90();
  v40 = sub_21B6C8D54();

  return v40;
}

id PosterPair.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PosterPair.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterPair();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B6A2F14@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR___PBFPosterPair_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

void *sub_21B6A2F30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD941C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B6A30A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94528);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_21B6A31CC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_21B6A33A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD94218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id _s11PosterBoard0A4PairC034fetchConfiguredPropertiesOrDefaultF03forSo08PRPostereF0CSo0J13ConfigurationC_tFZ_0(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v1 = [a1 loadConfiguredPropertiesWithError_];
  if (v1)
  {
    v2 = v1;
    v3 = v9[0];
  }

  else
  {
    v4 = v9[0];
    v5 = sub_21B6C8764();

    swift_willThrow();
    v6 = [objc_allocWithZone(MEMORY[0x277D3EE30]) init];
    v7 = [objc_allocWithZone(MEMORY[0x277D3EDB0]) init];
    v2 = [objc_allocWithZone(MEMORY[0x277D3ED60]) initWithTitleStyleConfiguration:v6 focusConfiguration:0 complicationLayout:0 renderingConfiguration:0 homeScreenConfiguration:v7 colorVariationsConfiguration:0 quickActionsConfiguration:0 suggestionMetadata:0 otherMetadata:0 userInfo:0];
  }

  return v2;
}

uint64_t sub_21B6A35E0(void *a1, void *a2)
{
  v4 = sub_21B6C8794();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 pbf_isLegacy])
  {
    return 0;
  }

  v8 = [a1 _path];
  v9 = [v8 serverIdentity];

  if (!v9)
  {
    return 0;
  }

  v10 = [v9 provider];

  sub_21B6C8DA4();
  v11 = objc_allocWithZone(MEMORY[0x277CC1E50]);

  v12 = sub_21B667EDC();

  v13 = [a2 otherMetadata];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 displayNameLocalizationKey];

    if (v15)
    {
      v16 = objc_opt_self();
      v17 = [v12 URL];
      sub_21B6C8784();

      v18 = sub_21B6C8774();
      (*(v5 + 8))(v7, v4);
      v19 = [v16 pf:v18 uniqueBundleWithURL:?];

      if (v19)
      {
        v20 = [v19 localizedStringForKey:v15 value:0 table:0];

        v21 = sub_21B6C8DA4();
        return v21;
      }
    }
  }

  v23 = [v12 localizedName];
  v24 = sub_21B6C8DA4();

  return v24;
}

void sub_21B6A3A58(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_21B6C88C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v3[OBJC_IVAR___PBFPosterPair_localizedTitle];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR___PBFPosterPair_associatedConfiguration;
  *&v3[OBJC_IVAR___PBFPosterPair_associatedConfiguration] = 0;
  *&v3[OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration] = 0;
  v12 = OBJC_IVAR___PBFPosterPair_observers;
  *&v3[v12] = [objc_opt_self() weakObjectsHashTable];
  v3[OBJC_IVAR___PBFPosterPair_ignoreNotifyingForProvisionalHomeScreenConfigurationChange] = 0;
  v13 = [a1 _path];
  v14 = [v13 serverIdentity];

  if (v14)
  {
    v15 = [v14 posterUUID];

    sub_21B6C88A4();
    v16 = sub_21B6C8874();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v19 = &v3[OBJC_IVAR___PBFPosterPair_id];
    *v19 = v16;
    v19[1] = v18;
    *&v3[OBJC_IVAR___PBFPosterPair_configuration] = a1;
    v20 = a1;
    v21 = _s11PosterBoard0A4PairC034fetchConfiguredPropertiesOrDefaultF03forSo08PRPostereF0CSo0J13ConfigurationC_tFZ_0(v20);
    *v10 = sub_21B6A35E0(v20, v21);
    v10[1] = v22;

    *&v3[OBJC_IVAR___PBFPosterPair_configuredProperties] = v21;
    v23 = *&v3[v11];
    *&v3[v11] = a2;
    v24 = a2;

    v25 = type metadata accessor for PosterPair();
    v26.receiver = v3;
    v26.super_class = v25;
    objc_msgSendSuper2(&v26, sel_init);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_21B6A3C90()
{
  result = qword_28120B350;
  if (!qword_28120B350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD92F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120B350);
  }

  return result;
}

void __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MobileKeyBagLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBFPosterExtensionDataStore.m" lineNumber:125 description:{@"%s", *a1}];

  __break(1u);
}

void __getDNDModeConfigurationServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getDNDModeConfigurationServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBFPosterGalleryPreviewViewController.m" lineNumber:81 description:{@"Unable to find class %s", "DNDModeConfigurationService"}];

  __break(1u);
}

void __getDNDModeConfigurationServiceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *DoNotDisturbLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBFPosterGalleryPreviewViewController.m" lineNumber:80 description:{@"%s", *a1}];

  __break(1u);
}

void PBFPosterModelStoreCoordinatorSharedInit_cold_1()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL PBFPosterModelStoreCoordinatorSharedInit(__kindof PBFPosterModelStoreCoordinator *__strong)"];
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"[_bs_assert_object isKindOfClass:NSURLClass]", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void PBFPosterModelStoreCoordinatorSharedInit_cold_2()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL PBFPosterModelStoreCoordinatorSharedInit(__kindof PBFPosterModelStoreCoordinator *__strong)"];
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"[_bs_assert_object isKindOfClass:NSStringClass]", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void PBFPosterModelStoreCoordinatorSharedInit_cold_3()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL PBFPosterModelStoreCoordinatorSharedInit(__kindof PBFPosterModelStoreCoordinator *__strong)"];
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void PBFPosterModelStoreCoordinatorSharedInit_cold_5()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL PBFPosterModelStoreCoordinatorSharedInit(__kindof PBFPosterModelStoreCoordinator *__strong)"];
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"type != PFServerPosterTypeNone", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void PBFPosterModelStoreCoordinatorSharedInit_cold_6()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL PBFPosterModelStoreCoordinatorSharedInit(__kindof PBFPosterModelStoreCoordinator *__strong)"];
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"_bs_assert_object != nil", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void PBFPosterModelStoreCoordinatorSharedInit_cold_7()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL PBFPosterModelStoreCoordinatorSharedInit(__kindof PBFPosterModelStoreCoordinator *__strong)"];
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"_bs_assert_object != nil", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void PBFPosterModelStoreCoordinatorSharedInit_cold_8()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL PBFPosterModelStoreCoordinatorSharedInit(__kindof PBFPosterModelStoreCoordinator *__strong)"];
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"_bs_assert_object != nil", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void PBFPosterModelStoreCoordinatorSharedInit_cold_9()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL PBFPosterModelStoreCoordinatorSharedInit(__kindof PBFPosterModelStoreCoordinator *__strong)"];
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"[[self class] type] != PFServerPosterTypeNone", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __providerURLForOptions_cold_1()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSURL *__providerURLForOptions(PBFPosterModelStoreSetupOptions, NSURL *__strong, PFServerPosterIdentity *__strong)"}];
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"nextIdentity", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __providerURLForOptions_cold_2()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSURL *__providerURLForOptions(PBFPosterModelStoreSetupOptions, NSURL *__strong, PFServerPosterIdentity *__strong)"}];
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"baseProviderURL", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __stagedProviderURLForIdentity_cold_1()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSURL *__stagedProviderURLForIdentity(PFServerPosterIdentity *__strong)"];
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"nextIdentity", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __getSBSWallpaperServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSBSWallpaperServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBFModalRootViewController.m" lineNumber:65 description:{@"Unable to find class %s", "SBSWallpaperService"}];

  __break(1u);
}

void __getSBSWallpaperServiceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBFModalRootViewController.m" lineNumber:64 description:{@"%s", *a1}];

  __break(1u);
}

void __getPLLogRegisteredEventSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PowerLogLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBFPowerLogger.m" lineNumber:38 description:{@"%s", *a1}];

  __break(1u);
}

void _PBFPosterRoleCoordinatorSynchronizeAttribute_cold_1()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _PBFPosterRoleCoordinatorSynchronizeAttribute(PRPosterConfiguration *__strong _Nonnull, __strong PRPosterRoleAttributeType _Nonnull, id<PRPosterRoleAttribute>  _Nullable __strong, id<PRPosterRoleAttribute>  _Nullable __strong, id<PRPosterRoleAttribute>  _Nullable __strong, id<PRPosterRoleAttribute>  _Nullable __strong, __strong id<PBFPosterExtensionDataStorageMutating, PBFPosterExtensionDataStorageRetrieving> _Nonnull, NSError *__autoreleasing * _Nullable)"}];
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"[_bs_assert_object isKindOfClass:PRPosterConfigurationClass]", v7, 2u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void _PBFPosterRoleCoordinatorSynchronizeAttribute_cold_2()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _PBFPosterRoleCoordinatorSynchronizeAttribute(PRPosterConfiguration *__strong _Nonnull, __strong PRPosterRoleAttributeType _Nonnull, id<PRPosterRoleAttribute>  _Nullable __strong, id<PRPosterRoleAttribute>  _Nullable __strong, id<PRPosterRoleAttribute>  _Nullable __strong, id<PRPosterRoleAttribute>  _Nullable __strong, __strong id<PBFPosterExtensionDataStorageMutating, PBFPosterExtensionDataStorageRetrieving> _Nonnull, NSError *__autoreleasing * _Nullable)"}];
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"[_bs_assert_object conformsToProtocol:@protocol(PBFPosterExtensionDataStorageMutating)]", v7, 2u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void _PBFPosterRoleCoordinatorSynchronizeAttribute_cold_3()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _PBFPosterRoleCoordinatorSynchronizeAttribute(PRPosterConfiguration *__strong _Nonnull, __strong PRPosterRoleAttributeType _Nonnull, id<PRPosterRoleAttribute>  _Nullable __strong, id<PRPosterRoleAttribute>  _Nullable __strong, id<PRPosterRoleAttribute>  _Nullable __strong, id<PRPosterRoleAttribute>  _Nullable __strong, __strong id<PBFPosterExtensionDataStorageMutating, PBFPosterExtensionDataStorageRetrieving> _Nonnull, NSError *__autoreleasing * _Nullable)"}];
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"[_bs_assert_object conformsToProtocol:@protocol(PBFPosterExtensionDataStorageRetrieving)]", v7, 2u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void _PBFPosterRoleCoordinatorSynchronizeAttribute_cold_4()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _PBFPosterRoleCoordinatorSynchronizeAttribute(PRPosterConfiguration *__strong _Nonnull, __strong PRPosterRoleAttributeType _Nonnull, id<PRPosterRoleAttribute>  _Nullable __strong, id<PRPosterRoleAttribute>  _Nullable __strong, id<PRPosterRoleAttribute>  _Nullable __strong, id<PRPosterRoleAttribute>  _Nullable __strong, __strong id<PBFPosterExtensionDataStorageMutating, PBFPosterExtensionDataStorageRetrieving> _Nonnull, NSError *__autoreleasing * _Nullable)"}];
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"_bs_assert_object != nil", v7, 2u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void _PBFPosterRoleCoordinatorSynchronizeAttribute_cold_5()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _PBFPosterRoleCoordinatorSynchronizeAttribute(PRPosterConfiguration *__strong _Nonnull, __strong PRPosterRoleAttributeType _Nonnull, id<PRPosterRoleAttribute>  _Nullable __strong, id<PRPosterRoleAttribute>  _Nullable __strong, id<PRPosterRoleAttribute>  _Nullable __strong, id<PRPosterRoleAttribute>  _Nullable __strong, __strong id<PBFPosterExtensionDataStorageMutating, PBFPosterExtensionDataStorageRetrieving> _Nonnull, NSError *__autoreleasing * _Nullable)"}];
    OUTLINED_FUNCTION_6(&dword_21B526000, MEMORY[0x277D86220], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"_bs_assert_object != nil", v7, 2u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __getDNDSystemImageNameForModeSemanticTypeSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *DoNotDisturbLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBFGalleryConfiguration.m" lineNumber:52 description:{@"%s", *a1}];

  __break(1u);
}

void PRPosterRoleLookupForExtensionBundleIdentifier_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_fault_impl(&dword_21B526000, log, OS_LOG_TYPE_FAULT, "Unable to find role for extensionBundleIdentifier '%{public}@' / descriptorIdentifier '%{public}@'", &v3, 0x16u);
}

void __getWKDefaultWallpaperManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKDefaultWallpaperManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBFWallpaperKitBridge.m" lineNumber:25 description:{@"Unable to find class %s", "WKDefaultWallpaperManager"}];

  __break(1u);
}

void __getWKDefaultWallpaperManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WallpaperKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBFWallpaperKitBridge.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void __getSBSWallpaperServiceClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSBSWallpaperServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBFSBSWallpaperServiceHelper.m" lineNumber:17 description:{@"Unable to find class %s", "SBSWallpaperService"}];

  __break(1u);
}

void __getSBSWallpaperServiceClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBFSBSWallpaperServiceHelper.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectFromString(NSString *string)
{
  MEMORY[0x2821DE308](string);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}