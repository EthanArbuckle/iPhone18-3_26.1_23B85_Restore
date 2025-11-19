id sub_26F38EDC4()
{
  v0 = sub_26F396F88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v38[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TranslationStoreCoreData();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_26F397138();
  v9 = sub_26F397138();
  v10 = [v7 URLForResource:v8 withExtension:v9];

  if (v10)
  {
    sub_26F396F78();

    v11 = objc_allocWithZone(MEMORY[0x277CBE450]);
    v12 = sub_26F396F68();
    v13 = [v11 initWithContentsOfURL_];

    if (v13)
    {
      v38[3] = &type metadata for TranslationPersistenceFeatures;
      v38[4] = sub_26F37C73C();
      v14 = sub_26F3970C8();
      __swift_destroy_boxed_opaque_existential_1(v38);
      if (v14)
      {
        if (qword_281592BD0 != -1)
        {
          swift_once();
        }

        v15 = sub_26F3970F8();
        __swift_project_value_buffer(v15, qword_281592EA0);
        v16 = sub_26F3970D8();
        v17 = sub_26F397208();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_26F37A000, v16, v17, "Persistant container type: CloudKit", v18, 2u);
          MEMORY[0x27438E430](v18, -1, -1);
        }

        v19 = objc_allocWithZone(MEMORY[0x277CBE470]);
        v20 = v13;
        v21 = sub_26F397138();
        v22 = [v19 initWithName:v21 managedObjectModel:v20];

        v23 = v22;
        sub_26F38F2D8();
      }

      else
      {
        if (qword_281592BD0 != -1)
        {
          swift_once();
        }

        v30 = sub_26F3970F8();
        __swift_project_value_buffer(v30, qword_281592EA0);
        v31 = sub_26F3970D8();
        v32 = sub_26F397208();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_26F37A000, v31, v32, "Persistant container type: Local", v33, 2u);
          MEMORY[0x27438E430](v33, -1, -1);
        }

        v34 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
        v35 = sub_26F397138();
        v23 = [v34 initWithName:v35 managedObjectModel:v13];
      }

      (*(v1 + 8))(v5, v0);
      return v23;
    }

    (*(v1 + 8))(v5, v0);
  }

  if (qword_281592BD0 != -1)
  {
    swift_once();
  }

  v24 = sub_26F3970F8();
  __swift_project_value_buffer(v24, qword_281592EA0);
  v25 = sub_26F3970D8();
  v26 = sub_26F397228();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_26F37A000, v25, v26, "Failed to load core data model from bundle", v27, 2u);
    MEMORY[0x27438E430](v27, -1, -1);
  }

  v28 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v29 = sub_26F397138();
  v23 = [v28 initWithName_];

  return v23;
}

void sub_26F38F2D8()
{
  v1 = v0;
  if (qword_281592BD0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v2 = sub_26F3970F8();
    __swift_project_value_buffer(v2, qword_281592EA0);
    v3 = sub_26F3970D8();
    v4 = sub_26F397208();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26F37A000, v3, v4, "Enable E2E encryption for persistent stores", v5, 2u);
      MEMORY[0x27438E430](v5, -1, -1);
    }

    v6 = [v1 persistentStoreDescriptions];
    sub_26F38500C(0, &qword_281592BA0, 0x277CBE4E0);
    v7 = sub_26F3971C8();

    v8 = v7 >> 62 ? sub_26F397368() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v8)
    {
      break;
    }

    v9 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
    [v9 setUseZoneWidePCS_];
    v10 = [objc_allocWithZone(MEMORY[0x277CBE3A0]) init];
    [v10 setUseDeviceToDeviceEncryption_];
    v20 = v9;
    [v10 setCkContainerOptions_];
    oslog = [objc_allocWithZone(MEMORY[0x277CBE398]) initWithOptions_];
    v11 = [v1 persistentStoreDescriptions];
    v12 = sub_26F3971C8();

    if (v12 >> 62)
    {
      v13 = sub_26F397368();
      if (!v13)
      {
LABEL_24:

        sub_26F392298(1);

        goto LABEL_25;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    v14 = 0;
    v1 = *MEMORY[0x277CBE250];
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x27438DCA0](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      [v15 setOption:oslog forMirroringKey:v1];

      ++v14;
      if (v17 == v13)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  oslog = sub_26F3970D8();
  v18 = sub_26F397228();
  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26F37A000, oslog, v18, "Failed to enable E2E encryption due to no persistent store descriptions", v19, 2u);
    MEMORY[0x27438E430](v19, -1, -1);
  }

LABEL_25:
}

uint64_t TranslationStoreCoreData.__allocating_init(inMemoryOnly:)(char a1)
{
  v2 = swift_allocObject();
  TranslationStoreCoreData.init(inMemoryOnly:)(a1);
  return v2;
}

uint64_t TranslationStoreCoreData.init(inMemoryOnly:)(char a1)
{
  *(v1 + 16) = sub_26F38EDC4();
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(type metadata accessor for SourceInputValueTransformer()) init];
  if (qword_281592BE0 != -1)
  {
    swift_once();
  }

  [v3 setValueTransformer:v4 forName:qword_281592EC0];

  v5 = [objc_allocWithZone(type metadata accessor for TargetResultValueTransformer()) init];
  if (qword_281592BD8 != -1)
  {
    swift_once();
  }

  [v3 setValueTransformer:v5 forName:qword_281592EB8];

  sub_26F38F7E0(a1 & 1);
  return v1;
}

void sub_26F38F7E0(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CBE4E0]) init];
    [v3 setType_];
    v4 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAF8, &unk_26F3995E0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26F3994D0;
    *(v5 + 32) = v3;
    sub_26F38500C(0, &qword_281592BA0, 0x277CBE4E0);
    v6 = v3;
    v7 = sub_26F3971B8();

    [v4 setPersistentStoreDescriptions_];
  }

  v8 = *(v2 + 16);
  v9 = [v8 persistentStoreDescriptions];
  sub_26F38500C(0, &qword_281592BA0, 0x277CBE4E0);
  v10 = sub_26F3971C8();

  if (v10 >> 62)
  {
    if (sub_26F397368())
    {
      goto LABEL_5;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x27438DCA0](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_31;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  sub_26F38500C(0, &qword_281592B98, 0x277CCABB0);
  v13 = sub_26F397298();
  [v12 setOption:v13 forKey:*MEMORY[0x277CBE210]];

LABEL_11:
  v14 = [v8 persistentStoreDescriptions];
  v15 = sub_26F3971C8();

  if (v15 >> 62)
  {
    if (sub_26F397368())
    {
      goto LABEL_13;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x27438DCA0](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;

  sub_26F38500C(0, &qword_281592B98, 0x277CCABB0);
  v18 = sub_26F397298();
  [v17 setOption:v18 forKey:*MEMORY[0x277CBE1D8]];

LABEL_19:
  v19 = [v8 persistentStoreDescriptions];
  v10 = sub_26F3971C8();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

LABEL_26:

    goto LABEL_27;
  }

  if (!sub_26F397368())
  {
    goto LABEL_26;
  }

LABEL_21:
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v20 = MEMORY[0x27438DCA0](0, v10);
    goto LABEL_24;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v10 + 32);
LABEL_24:
    v21 = v20;

    sub_26F38500C(0, &qword_281592B98, 0x277CCABB0);
    v22 = sub_26F397298();
    [v21 setOption:v22 forKey:*MEMORY[0x277CBE178]];

LABEL_27:
    v24[4] = sub_26F396D48;
    v24[5] = v2;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 1107296256;
    v24[2] = sub_26F390380;
    v24[3] = &block_descriptor_85;
    v23 = _Block_copy(v24);

    [v8 loadPersistentStoresWithCompletionHandler_];
    _Block_release(v23);
    return;
  }

LABEL_33:
  __break(1u);
}

void sub_26F38FC58(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v14 = sub_26F3970F8();
    __swift_project_value_buffer(v14, qword_281592EA0);
    v15 = a1;
    v16 = sub_26F3970D8();
    v17 = sub_26F397208();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138477827;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_26F37A000, v16, v17, "Successfully loaded persistent store: %{private}@", v18, 0xCu);
      sub_26F37DE50(v19, &qword_2806DB720, &unk_26F3995D0);
      MEMORY[0x27438E430](v19, -1, -1);
      MEMORY[0x27438E430](v18, -1, -1);
    }

    v21 = *(a3 + 16);
    v22 = [v21 viewContext];
    [v22 setAutomaticallyMergesChangesFromParent_];

    v23 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v24 = sub_26F397138();
    oslog = [v23 initWithEntityName_];

    sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
    v25 = sub_26F3971F8();
    [oslog setPredicate:v25];

    v26 = sub_26F3970D8();
    v27 = sub_26F397208();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26F37A000, v26, v27, "Attempt to delete invalid data", v28, 2u);
      MEMORY[0x27438E430](v28, -1, -1);
    }

    v29 = [v21 viewContext];
    type metadata accessor for PersistedTranslation();
    v30 = sub_26F397288();

    v31 = v30 >> 62;
    if (v30 >> 62)
    {
      if (sub_26F397368() >= 1)
      {
LABEL_16:

        v32 = sub_26F3970D8();
        v33 = sub_26F397238();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 134217984;
          if (v31)
          {
            v35 = sub_26F397368();
          }

          else
          {
            v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v34 + 4) = v35;

          _os_log_impl(&dword_26F37A000, v32, v33, "Found %ld translations with invalid source or target", v34, 0xCu);
          MEMORY[0x27438E430](v34, -1, -1);

          v36 = v30 & 0xFFFFFFFFFFFFFF8;
          if (!v31)
          {
LABEL_24:
            v37 = *(v36 + 16);
            if (v37)
            {
              goto LABEL_25;
            }

            goto LABEL_31;
          }
        }

        else
        {

          v36 = v30 & 0xFFFFFFFFFFFFFF8;
          if (!v31)
          {
            goto LABEL_24;
          }
        }

        v37 = sub_26F397368();
        if (v37)
        {
LABEL_25:
          if (v37 < 1)
          {
            __break(1u);
            return;
          }

          v38 = 0;
          do
          {
            if ((v30 & 0xC000000000000001) != 0)
            {
              v39 = MEMORY[0x27438DCA0](v38, v30);
            }

            else
            {
              v39 = *(v30 + 8 * v38 + 32);
            }

            v40 = v39;
            ++v38;
            v41 = [v21 viewContext];
            [v41 deleteObject_];
          }

          while (v37 != v38);
        }

LABEL_31:

        sub_26F390444();
        goto LABEL_34;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  v4 = sub_26F396F38();
  if (qword_281592BD0 != -1)
  {
    swift_once();
  }

  v5 = sub_26F3970F8();
  __swift_project_value_buffer(v5, qword_281592EA0);
  v6 = a1;
  v7 = v4;
  oslog = sub_26F3970D8();
  v8 = sub_26F397238();

  if (!os_log_type_enabled(oslog, v8))
  {

LABEL_34:
    v12 = oslog;
    goto LABEL_35;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  *v9 = 138478083;
  *(v9 + 4) = v6;
  *(v9 + 12) = 2112;
  *(v9 + 14) = v7;
  *v10 = v6;
  v10[1] = v7;
  v11 = v6;
  log = v7;
  _os_log_impl(&dword_26F37A000, oslog, v8, "Failed to load persistent store: %{private}@. Error: %@", v9, 0x16u);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB720, &unk_26F3995D0);
  swift_arrayDestroy();
  MEMORY[0x27438E430](v10, -1, -1);
  MEMORY[0x27438E430](v9, -1, -1);

  v12 = log;
LABEL_35:
}

void sub_26F390380(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

id _s22TranslationPersistence0A13StoreCoreDataC3mocSo22NSManagedObjectContextCvg_0()
{
  v1 = [*(v0 + 16) viewContext];

  return v1;
}

void sub_26F390444()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = [*(v0 + 16) viewContext];
  if ([v13 hasChanges])
  {
    v14[0] = 0;
    if ([v13 save_])
    {
      v1 = v14[0];
    }

    else
    {
      v3 = v14[0];
      v4 = sub_26F396F48();

      swift_willThrow();
      if (qword_281592BD0 != -1)
      {
        swift_once();
      }

      v5 = sub_26F3970F8();
      __swift_project_value_buffer(v5, qword_281592EA0);
      v6 = v4;
      v7 = sub_26F3970D8();
      v8 = sub_26F397228();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        v11 = sub_26F396F38();
        *(v9 + 4) = v11;
        *v10 = v11;
        _os_log_impl(&dword_26F37A000, v7, v8, "Failed to save view context: %@", v9, 0xCu);
        sub_26F37DE50(v10, &qword_2806DB720, &unk_26F3995D0);
        MEMORY[0x27438E430](v10, -1, -1);
        MEMORY[0x27438E430](v9, -1, -1);
      }

      else
      {
      }
    }

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v2 = *MEMORY[0x277D85DE8];
  }
}

uint64_t TranslationStoreCoreData.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t TranslationStoreCoreData.totalCount.getter()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_26F397138();
  v3 = [v1 initWithEntityName_];

  v4 = [*(v0 + 16) viewContext];
  type metadata accessor for PersistedTranslation();
  v5 = sub_26F397278();

  return v5;
}

uint64_t TranslationStoreCoreData.favoriteCount.getter()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_26F397138();
  v4 = [v2 initWithEntityName_];

  sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
  v5 = sub_26F3971F8();
  [v4 setPredicate_];

  v6 = [*(v1 + 16) viewContext];
  type metadata accessor for PersistedTranslation();
  v7 = sub_26F397278();

  return v7;
}

uint64_t TranslationStoreCoreData.getAllFavorites()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_26F397138();
  v4 = [v2 initWithEntityName_];

  sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
  v5 = sub_26F3971F8();
  [v4 setPredicate_];

  v6 = [*(v1 + 16) viewContext];
  type metadata accessor for PersistedTranslation();
  v7 = sub_26F397288();

  return v7;
}

void sub_26F390E50(void *a1)
{
  v3 = *v1;
  v4 = *(v3 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v8[4] = sub_26F396EA0;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26F393328;
  v8[3] = &block_descriptor_82;
  v6 = _Block_copy(v8);
  v7 = a1;

  [v4 performBackgroundTask_];
  _Block_release(v6);
}

void TranslationStoreCoreData.toggleFavoriteBackground(_:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v7[4] = sub_26F395B50;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_26F393328;
  v7[3] = &block_descriptor;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v3 performBackgroundTask_];
  _Block_release(v5);
}

void sub_26F39102C(void *a1)
{
  v3 = *(*v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v7[4] = sub_26F396EA4;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_26F393328;
  v7[3] = &block_descriptor_75;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v3 performBackgroundTask_];
  _Block_release(v5);
}

void TranslationStoreCoreData.updateDisambiguation(for:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v7[4] = sub_26F395B70;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_26F393328;
  v7[3] = &block_descriptor_6;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v3 performBackgroundTask_];
  _Block_release(v5);
}

void *sub_26F3911E8(void *a1, void *a2, int a3)
{
  v7 = [*(*v3 + 16) viewContext];
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  v11 = a2[3];
  v12 = a2[4];
  v13 = __swift_project_boxed_opaque_existential_1Tm(a2, v11);
  v14 = sub_26F395BB4(v10, v13, v7, a3, v8, v11, v9, v12);

  return v14;
}

void *TranslationStoreCoreData.insert(speech:translationResult:isFavorite:)(void *a1, void *a2, int a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1Tm(a1, v6);
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_project_boxed_opaque_existential_1Tm(a2, v9);

  return sub_26F395298(v8, v11, a3, v3, v6, v9, v7, v10);
}

void TranslationStoreCoreData.deleteBackground(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 identifier];
  v7 = sub_26F397148();
  v9 = v8;

  v10 = *(v3 + 16);
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v9;
  v11[4] = v3;
  v11[5] = a2;
  v11[6] = a3;
  v13[4] = sub_26F395B78;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_26F393328;
  v13[3] = &block_descriptor_12;
  v12 = _Block_copy(v13);

  [v10 performBackgroundTask_];
  _Block_release(v12);
}

void sub_26F391470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(v9 + 16);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v9;
  v11[5] = a3;
  v11[6] = a4;
  v13[4] = sub_26F396E98;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_26F393328;
  v13[3] = &block_descriptor_68;
  v12 = _Block_copy(v13);

  [v10 performBackgroundTask_];
  _Block_release(v12);
}

void TranslationStoreCoreData.deleteBackground(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 16);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v5;
  v11[5] = a3;
  v11[6] = a4;
  v13[4] = sub_26F396E98;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_26F393328;
  v13[3] = &block_descriptor_19;
  v12 = _Block_copy(v13);

  [v10 performBackgroundTask_];
  _Block_release(v12);
}

Swift::Void __swiftcall TranslationStoreCoreData.save()()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 16) viewContext];
  v16[0] = 0;
  v2 = [v1 save_];

  v3 = v16[0];
  if (v2)
  {
    v4 = *MEMORY[0x277D85DE8];

    v5 = v3;
  }

  else
  {
    v6 = v16[0];
    v7 = sub_26F396F48();

    swift_willThrow();
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v8 = sub_26F3970F8();
    __swift_project_value_buffer(v8, qword_281592EA0);
    v9 = v7;
    v10 = sub_26F3970D8();
    v11 = sub_26F397228();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = sub_26F396F38();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&dword_26F37A000, v10, v11, "Failed to save: %@", v12, 0xCu);
      sub_26F37DE50(v13, &qword_2806DB720, &unk_26F3995D0);
      MEMORY[0x27438E430](v13, -1, -1);
      MEMORY[0x27438E430](v12, -1, -1);
    }

    else
    {
    }

    v15 = *MEMORY[0x277D85DE8];
  }
}

uint64_t TranslationStoreCoreData.translations(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v7 = sub_26F397138();
  v8 = [v6 initWithEntityName_];

  sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBB00, &unk_26F3994E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26F398960;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_26F38E534();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_26F3971F8();
  [v8 setPredicate_];

  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = sub_26F397138();
  v13 = [v11 initWithKey:v12 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAF8, &unk_26F3995E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26F3994D0;
  *(v14 + 32) = v13;
  sub_26F38500C(0, &qword_281592BA8, 0x277CCAC98);
  v15 = v13;
  v16 = sub_26F3971B8();

  [v8 setSortDescriptors_];

  v17 = [*(v3 + 16) viewContext];
  type metadata accessor for PersistedTranslation();
  v18 = sub_26F397288();

  return v18;
}

void sub_26F391B94(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v7[5] = a1;
  v7[6] = a2;
  v9[4] = sub_26F396E9C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26F393328;
  v9[3] = &block_descriptor_61;
  v8 = _Block_copy(v9);

  [v6 performBackgroundTask_];
  _Block_release(v8);
}

void TranslationStoreCoreData.clearHistory(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v6[5] = a1;
  v6[6] = a2;
  v8[4] = sub_26F395B90;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26F393328;
  v8[3] = &block_descriptor_25;
  v7 = _Block_copy(v8);

  [v5 performBackgroundTask_];
  _Block_release(v7);
}

void sub_26F391D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(v9 + 16);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v9;
  v11[5] = a3;
  v11[6] = a4;
  v13[4] = sub_26F396E9C;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_26F393328;
  v13[3] = &block_descriptor_54;
  v12 = _Block_copy(v13);

  [v10 performBackgroundTask_];
  _Block_release(v12);
}

void TranslationStoreCoreData.clearHistory(sessionID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 16);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v5;
  v11[5] = a3;
  v11[6] = a4;
  v13[4] = sub_26F396E9C;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_26F393328;
  v13[3] = &block_descriptor_32;
  v12 = _Block_copy(v13);

  [v10 performBackgroundTask_];
  _Block_release(v12);
}

void sub_26F391FB0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v9[4] = sub_26F396E5C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26F393328;
  v9[3] = &block_descriptor_47;
  v8 = _Block_copy(v9);

  [v6 performBackgroundTask_];
  _Block_release(v8);
}

void TranslationStoreCoreData.clear(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v8[4] = sub_26F395BA8;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26F393328;
  v8[3] = &block_descriptor_38;
  v7 = _Block_copy(v8);

  [v5 performBackgroundTask_];
  _Block_release(v7);
}

void sub_26F3921A4(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26F397368())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x27438DCA0](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_26F3924A4(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_26F392298(char a1)
{
  v2 = v1;
  v4 = sub_26F396F28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281592BD0 != -1)
  {
    swift_once();
  }

  v10 = sub_26F3970F8();
  __swift_project_value_buffer(v10, qword_281592EA0);
  v11 = sub_26F3970D8();
  v12 = sub_26F397208();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_26F37A000, v11, v12, "Exclude persistent stores from iCloud Backup: %{BOOL}d", v13, 8u);
    MEMORY[0x27438E430](v13, -1, -1);
  }

  sub_26F396F18();
  sub_26F396F08();
  v14 = [v2 persistentStoreDescriptions];
  sub_26F38500C(0, &qword_281592BA0, 0x277CBE4E0);
  v15 = sub_26F3971C8();

  sub_26F3921A4(v15, v9);

  return (*(v5 + 8))(v9, v4);
}

void sub_26F3924A4(id *a1, uint64_t a2)
{
  v37 = a2;
  v38 = sub_26F396F28();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v38, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DBB40, &unk_26F399680);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v36 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v36 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v36 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v36 - v22;
  v39 = *a1;
  v24 = [v39 URL];
  if (v24)
  {
    v25 = v24;
    sub_26F396F78();

    v26 = sub_26F396F88();
    (*(*(v26 - 8) + 56))(v20, 0, 1, v26);
  }

  else
  {
    v26 = sub_26F396F88();
    (*(*(v26 - 8) + 56))(v20, 1, 1, v26);
  }

  sub_26F396D50(v20, v23);
  sub_26F396F88();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(v23, 1, v26))
  {
    sub_26F396DC0(v23, v16, &unk_2806DBB40, &unk_26F399680);
    if (v28(v16, 1, v26) == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = sub_26F396F68();
      (*(v27 + 8))(v16, v26);
    }

    [v39 setURL_];

    sub_26F37DE50(v23, &unk_2806DBB40, &unk_26F399680);
  }

  else
  {
    v30 = v38;
    (*(v3 + 16))(v7, v37, v38);
    v31 = v40;
    sub_26F396F58();
    if (v31)
    {

      (*(v3 + 8))(v7, v30);
      v32 = v36;
      sub_26F396DC0(v23, v36, &unk_2806DBB40, &unk_26F399680);
      v33 = v28(v32, 1, v26);
      v34 = 0;
      if (v33 != 1)
      {
        v34 = sub_26F396F68();
        (*(v27 + 8))(v32, v26);
      }

      [v39 setURL_];

      sub_26F37DE50(v23, &unk_2806DBB40, &unk_26F399680);
    }

    else
    {
      v40 = 0;
      (*(v3 + 8))(v7, v30);
      if (v28(v23, 1, v26) == 1)
      {
        v35 = 0;
      }

      else
      {
        v35 = sub_26F396F68();
        (*(v27 + 8))(v23, v26);
      }

      [v39 setURL_];
    }
  }
}

void sub_26F392938(void *a1, void *a2)
{
  [v2 deleteObject_];
  if ((sub_26F38A584() & 1) == 0)
  {
    return;
  }

  v5 = [a1 requestID];
  v6 = sub_26F397148();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return;
  }

  v10 = [a1 interactedIndices];
  if (!v10)
  {
    return;
  }

  v46 = a2;
  v11 = v10;
  v12 = sub_26F3971C8();

  v13 = [objc_allocWithZone(MEMORY[0x277CE1C28]) init];
  v14 = [a1 sessionID];
  [v13 setConversationID_];

  v15 = [a1 requestID];
  [v13 setRequestID_];

  sub_26F389F14(v49);
  v16 = v50;
  v17 = v51;
  __swift_project_boxed_opaque_existential_1Tm(v49, v50);
  v18 = (*(v17 + 24))(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v49);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x277D84F90];
  v47 = v13;
  if (v19)
  {
    v45 = v12;
    v48 = MEMORY[0x277D84F90];
    sub_26F387758(0, v19, 0);
    v21 = 0;
    v22 = v18 + 32;
    while (v21 < *(v18 + 16))
    {
      sub_26F37CC58(v22, v49);
      v23 = sub_26F392D94(v49);
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(v49);
      v27 = *(v48 + 16);
      v26 = *(v48 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_26F387758((v26 > 1), v27 + 1, 1);
      }

      ++v21;
      *(v48 + 16) = v27 + 1;
      v28 = v48 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v22 += 40;
      if (v19 == v21)
      {

        v13 = v47;
        v12 = v45;
        v20 = MEMORY[0x277D84F90];
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_14:
  v29 = sub_26F3971B8();

  [v13 setSenses_];

  v30 = *(v12 + 16);
  if (v30)
  {
    sub_26F387758(0, v30, 0);
    v31 = 32;
    v32 = v20;
    while (1)
    {
      v33 = v12;
      v34 = *(v12 + v31);
      sub_26F389F14(v49);
      v35 = v50;
      v36 = v51;
      __swift_project_boxed_opaque_existential_1Tm(v49, v50);
      v37 = (*(v36 + 24))(v35, v36);
      __swift_destroy_boxed_opaque_existential_1(v49);
      if ((v34 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v34 >= *(v37 + 16))
      {
        goto LABEL_27;
      }

      sub_26F37CC58(v37 + 40 * v34 + 32, v49);

      v38 = sub_26F392D94(v49);
      v40 = v39;
      __swift_destroy_boxed_opaque_existential_1(v49);
      v42 = *(v32 + 16);
      v41 = *(v32 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_26F387758((v41 > 1), v42 + 1, 1);
      }

      *(v32 + 16) = v42 + 1;
      v43 = v32 + 16 * v42;
      *(v43 + 32) = v38;
      *(v43 + 40) = v40;
      v31 += 8;
      --v30;
      v12 = v33;
      if (!v30)
      {

        v13 = v47;
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

LABEL_23:
  v44 = sub_26F3971B8();

  [v13 setUserInteractedSenses_];

  [v46 log_];
}

uint64_t sub_26F392D94(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v1);
  v3 = (*(v2 + 40))(v1, v2);
  if (*(v3 + 16))
  {
    sub_26F37CC58(v3 + 32, v21);
  }

  else
  {

    v22 = 0;
    memset(v21, 0, sizeof(v21));
  }

  sub_26F396DC0(v21, &v16, &qword_2806DBB10, &qword_26F399660);
  if (v17)
  {
    sub_26F37C0CC(&v16, v18);
    v4 = v19;
    v5 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v6 = (*(v5 + 56))(v4, v5);
    if (v6)
    {
      v7 = 0x747365626ELL;
    }

    else
    {
      v7 = 0x6769626D61736964;
    }

    if (v6)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v7 = 7104878;
    sub_26F37DE50(&v16, &qword_2806DBB10, &qword_26F399660);
    v8 = 0xE300000000000000;
  }

  sub_26F396DC0(v21, v18, &qword_2806DBB10, &qword_26F399660);
  v9 = v19;
  if (v19)
  {
    v10 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v11 = (*(v10 + 16))(v9, v10);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v11 = 7104878;
    sub_26F37DE50(v18, &qword_2806DBB10, &qword_26F399660);
    v13 = 0xE300000000000000;
  }

  v18[0] = v7;
  v18[1] = v8;
  MEMORY[0x27438DB20](64, 0xE100000000000000);
  MEMORY[0x27438DB20](v11, v13);

  v14 = v18[0];
  sub_26F37DE50(v21, &qword_2806DBB10, &qword_26F399660);
  return v14;
}

void *TranslationStoreCoreData.insert(speech:translationResult:context:isFavorite:)(void *a1, void *a2, uint64_t a3, int a4)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1Tm(a1, v7);
  v10 = a2[3];
  v11 = a2[4];
  v12 = __swift_project_boxed_opaque_existential_1Tm(a2, v10);

  return sub_26F395BB4(v9, v12, a3, a4, v7, v10, v8, v11);
}

uint64_t sub_26F393054(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v26[2] = *MEMORY[0x277D85DE8];
  v8 = _s22TranslationPersistence09PersistedA0C12fetchRequest10identifierSo07NSFetchE0CyACGSS_tFZ_0(a2, a3);
  type metadata accessor for PersistedTranslation();
  v9 = sub_26F397288();
  if (v9 >> 62)
  {
    v22 = v9;
    v23 = sub_26F397368();
    v9 = v22;
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x27438DCA0](0);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v17 = *(v9 + 32);
  }

  v18 = v17;

  sub_26F392938(v18, *(a4 + 24));
  v26[0] = 0;
  if ([a1 save_])
  {
    v19 = v26[0];
  }

  else
  {
    v20 = v26[0];
    v21 = sub_26F396F48();

    swift_willThrow();
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v10 = sub_26F3970F8();
    __swift_project_value_buffer(v10, qword_281592EA0);
    v11 = v21;
    v12 = sub_26F3970D8();
    v13 = sub_26F397228();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = sub_26F396F38();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_26F37A000, v12, v13, "Failed to delete translation: %@", v14, 0xCu);
      sub_26F37DE50(v15, &qword_2806DB720, &unk_26F3995D0);
      MEMORY[0x27438E430](v15, -1, -1);
      MEMORY[0x27438E430](v14, -1, -1);
    }

    else
    {
    }
  }

LABEL_17:
  result = a5();
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26F393328(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_26F393390(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void))
{
  v60[1] = *MEMORY[0x277D85DE8];
  v9 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v10 = sub_26F397138();
  v11 = [v9 initWithEntityName_];

  sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
  v12 = sub_26F3971F8();
  [v11 setPredicate_];

  v13 = 0x281592000uLL;
  if (a3 && (v14 = [v11 predicate]) != 0)
  {
    v15 = v14;
    v59 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBB00, &unk_26F3994E0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_26F398960;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_26F38E534();
    *(v16 + 32) = a2;
    *(v16 + 40) = a3;

    v17 = sub_26F3971F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAF8, &unk_26F3995E0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26F3994C0;
    *(v18 + 32) = v15;
    *(v18 + 40) = v17;
    v19 = v15;
    v20 = v17;
    v21 = sub_26F3971B8();
    v13 = 0x281592000uLL;

    v22 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v11 setPredicate_];
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v23 = sub_26F3970F8();
    __swift_project_value_buffer(v23, qword_281592EA0);

    v24 = sub_26F3970D8();
    v25 = sub_26F397248();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v60[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_26F38B99C(a2, a3, v60);
      _os_log_impl(&dword_26F37A000, v24, v25, "Attempt to delete session (id: %s) history", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x27438E430](v27, -1, -1);
      v28 = v26;
      v13 = 0x281592000;
      MEMORY[0x27438E430](v28, -1, -1);
    }

    a5 = v59;
  }

  else
  {
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v29 = sub_26F3970F8();
    __swift_project_value_buffer(v29, qword_281592EA0);
    v30 = sub_26F3970D8();
    v31 = sub_26F397248();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26F37A000, v30, v31, "Attempt to delete history", v32, 2u);
      MEMORY[0x27438E430](v32, -1, -1);
    }
  }

  type metadata accessor for PersistedTranslation();
  v33 = sub_26F397288();
  v34 = v33;
  v57 = v33 >> 62;
  if (v33 >> 62)
  {
    v35 = sub_26F397368();
    if (!v35)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
      goto LABEL_22;
    }
  }

  if (v35 < 1)
  {
    __break(1u);
LABEL_37:
    swift_once();
LABEL_24:
    v42 = sub_26F3970F8();
    __swift_project_value_buffer(v42, qword_281592EA0);

    v43 = sub_26F3970D8();
    v44 = sub_26F397248();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      if (v57)
      {
        v46 = sub_26F397368();
      }

      else
      {
        v46 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v45 + 4) = v46;

      _os_log_impl(&dword_26F37A000, v43, v44, "Deleted %ld old translations", v45, 0xCu);
      MEMORY[0x27438E430](v45, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_32;
  }

  v36 = 0;
  v37 = *(a4 + 24);
  do
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x27438DCA0](v36, v34);
    }

    else
    {
      v38 = *(v34 + 8 * v36 + 32);
    }

    v39 = v38;
    ++v36;
    sub_26F392938(v38, v37);
  }

  while (v35 != v36);
LABEL_22:
  v60[0] = 0;
  if ([a1 save_])
  {
    v40 = *(v13 + 3024);
    v41 = v60[0];
    if (v40 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  v47 = v60[0];

  v48 = sub_26F396F48();

  swift_willThrow();
  if (*(v13 + 3024) != -1)
  {
    swift_once();
  }

  v49 = sub_26F3970F8();
  __swift_project_value_buffer(v49, qword_281592EA0);
  v50 = v48;
  v51 = sub_26F3970D8();
  v52 = sub_26F397228();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    v55 = sub_26F396F38();
    *(v53 + 4) = v55;
    *v54 = v55;
    _os_log_impl(&dword_26F37A000, v51, v52, "Failed to clear history: %@", v53, 0xCu);
    sub_26F37DE50(v54, &qword_2806DB720, &unk_26F3995D0);
    MEMORY[0x27438E430](v54, -1, -1);
    MEMORY[0x27438E430](v53, -1, -1);
  }

  else
  {
  }

LABEL_32:
  a5();

  v56 = *MEMORY[0x277D85DE8];
}

void sub_26F393B34(void *a1, uint64_t a2, void (*a3)(void))
{
  v36[2] = *MEMORY[0x277D85DE8];
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v7 = sub_26F397138();
  v8 = [v6 initWithEntityName_];

  if (qword_281592BD0 != -1)
  {
    swift_once();
  }

  v9 = sub_26F3970F8();
  __swift_project_value_buffer(v9, qword_281592EA0);
  v10 = sub_26F3970D8();
  v11 = sub_26F397248();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26F37A000, v10, v11, "Attempting to delete all data", v12, 2u);
    MEMORY[0x27438E430](v12, -1, -1);
  }

  type metadata accessor for PersistedTranslation();
  v13 = sub_26F397288();
  v14 = v13;
  v34 = v13 >> 62;
  if (v13 >> 62)
  {
    v15 = sub_26F397368();
    if (!v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_14;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
  }

  v16 = 0;
  v17 = *(a2 + 24);
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x27438DCA0](v16, v14);
    }

    else
    {
      v18 = *(v14 + 8 * v16 + 32);
    }

    v19 = v18;
    ++v16;
    sub_26F392938(v18, v17);
  }

  while (v15 != v16);
LABEL_14:
  v36[0] = 0;
  if ([a1 save_])
  {
    v20 = v36[0];

    v21 = sub_26F3970D8();
    v22 = sub_26F397248();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      if (v35)
      {
        v24 = sub_26F397368();
      }

      else
      {
        v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v23 + 4) = v24;

      _os_log_impl(&dword_26F37A000, v21, v22, "Deleted %ld old translations", v23, 0xCu);
      MEMORY[0x27438E430](v23, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    v25 = v36[0];

    v26 = sub_26F396F48();

    swift_willThrow();
    v27 = v26;
    v28 = sub_26F3970D8();
    v29 = sub_26F397228();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = sub_26F396F38();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_26F37A000, v28, v29, "Failed to clear history: %@", v30, 0xCu);
      sub_26F37DE50(v31, &qword_2806DB720, &unk_26F3995D0);
      MEMORY[0x27438E430](v31, -1, -1);
      MEMORY[0x27438E430](v30, -1, -1);
    }

    else
    {
    }
  }

  a3();

  v33 = *MEMORY[0x277D85DE8];
}

void sub_26F393F90(void *a1, id a2)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v4 = [a2 identifier];
  v5 = sub_26F397148();
  v7 = v6;

  v40 = _s22TranslationPersistence09PersistedA0C12fetchRequest10identifierSo07NSFetchE0CyACGSS_tFZ_0(v5, v7);

  type metadata accessor for PersistedTranslation();
  v8 = sub_26F397288();
  if (v8 >> 62)
  {
    v30 = v8;
    v31 = sub_26F397368();
    v8 = v30;
    if (v31)
    {
      goto LABEL_8;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x27438DCA0](0);
      goto LABEL_11;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v8 + 32);
LABEL_11:
      v17 = v16;

      _s22TranslationPersistence0A13StoreCoreDataC14toggleFavoriteyyAA09PersistedA0CF_0(v17);
      v41[0] = 0;
      if ([a1 save_])
      {
        v18 = qword_281592BD0;
        v19 = v41[0];
        if (v18 != -1)
        {
          swift_once();
        }

        v20 = sub_26F3970F8();
        __swift_project_value_buffer(v20, qword_281592EA0);
        v21 = v17;
        v22 = sub_26F3970D8();
        v23 = sub_26F397208();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138739971;
          *(v24 + 4) = v21;
          *v25 = v21;
          v26 = v21;
          _os_log_impl(&dword_26F37A000, v22, v23, "Favorited translation: %{sensitive}@", v24, 0xCu);
          sub_26F37DE50(v25, &qword_2806DB720, &unk_26F3995D0);
          MEMORY[0x27438E430](v25, -1, -1);
          MEMORY[0x27438E430](v24, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        v28 = v41[0];
        v29 = sub_26F396F48();

        swift_willThrow();
        if (qword_281592BD0 != -1)
        {
          swift_once();
        }

        v9 = sub_26F3970F8();
        __swift_project_value_buffer(v9, qword_281592EA0);
        v10 = v29;
        v11 = sub_26F3970D8();
        v12 = sub_26F397228();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138412290;
          v15 = sub_26F396F38();
          *(v13 + 4) = v15;
          *v14 = v15;
          _os_log_impl(&dword_26F37A000, v11, v12, "Failed to favorite translation: %@", v13, 0xCu);
          sub_26F37DE50(v14, &qword_2806DB720, &unk_26F3995D0);
          MEMORY[0x27438E430](v14, -1, -1);
          MEMORY[0x27438E430](v13, -1, -1);
        }

        else
        {
        }
      }

      v27 = *MEMORY[0x277D85DE8];
      return;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (qword_281592BD0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v32 = sub_26F3970F8();
  __swift_project_value_buffer(v32, qword_281592EA0);
  v33 = a2;
  v34 = sub_26F3970D8();
  v35 = sub_26F397228();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138739971;
    *(v36 + 4) = v33;
    *v37 = v33;
    v38 = v33;
    _os_log_impl(&dword_26F37A000, v34, v35, "Failed to find translation in store: %{sensitive}@", v36, 0xCu);
    sub_26F37DE50(v37, &qword_2806DB720, &unk_26F3995D0);
    MEMORY[0x27438E430](v37, -1, -1);
    MEMORY[0x27438E430](v36, -1, -1);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void sub_26F3944F0(void *a1, id a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [a2 identifier];
  v4 = sub_26F397148();
  v6 = v5;

  v34 = _s22TranslationPersistence09PersistedA0C12fetchRequest10identifierSo07NSFetchE0CyACGSS_tFZ_0(v4, v6);

  type metadata accessor for PersistedTranslation();
  v7 = sub_26F397288();
  if (v7 >> 62)
  {
    v3 = v7;
    v32 = sub_26F397368();
    v7 = v3;
    if (v32)
    {
LABEL_8:
      if ((v7 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x27438DCA0](0);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_25;
        }

        v15 = *(v7 + 32);
      }

      v3 = v15;

      sub_26F389F14(v35);
      v16 = v36;
      v17 = v37;
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      v19 = *(*(v16 - 8) + 64);
      MEMORY[0x28223BE20](v18, v18);
      v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v21);
      sub_26F38CCAC(v21, v3, v16, v17);
      __swift_destroy_boxed_opaque_existential_1(v35);
      v35[0] = 0;
      if (![a1 save_])
      {
        v30 = v35[0];
        v31 = sub_26F396F48();

        swift_willThrow();
        if (qword_281592BD0 != -1)
        {
          swift_once();
        }

        v8 = sub_26F3970F8();
        __swift_project_value_buffer(v8, qword_281592EA0);
        v9 = v31;
        v10 = sub_26F3970D8();
        v11 = sub_26F397228();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *v12 = 138412290;
          v14 = sub_26F396F38();
          *(v12 + 4) = v14;
          *v13 = v14;
          _os_log_impl(&dword_26F37A000, v10, v11, "Failed to update disambiguation selection for translation: %@", v12, 0xCu);
          sub_26F37DE50(v13, &qword_2806DB720, &unk_26F3995D0);
          MEMORY[0x27438E430](v13, -1, -1);
          MEMORY[0x27438E430](v12, -1, -1);
        }

        else
        {
        }

        goto LABEL_17;
      }

      v23 = qword_281592BD0;
      v24 = v35[0];
      if (v23 == -1)
      {
LABEL_13:
        v25 = sub_26F3970F8();
        __swift_project_value_buffer(v25, qword_281592EA0);
        v26 = sub_26F3970D8();
        v27 = sub_26F397208();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_26F37A000, v26, v27, "Updated disambiguation selection for translation", v28, 2u);
          MEMORY[0x27438E430](v28, -1, -1);
        }

LABEL_17:
        v29 = *MEMORY[0x277D85DE8];
        return;
      }

LABEL_25:
      swift_once();
      goto LABEL_13;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26F3949D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v38 = a1;
  v39 = sub_26F3970B8();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v39, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StoredTranslationResult();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v38 - v16;
  v18 = type metadata accessor for StoredSpeechResult();
  v19 = (v18 - 8);
  v20 = *(*(v18 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v38 - v26;
  type metadata accessor for TranslationStoreCoreData();
  v28 = swift_allocObject();
  TranslationStoreCoreData.init(inMemoryOnly:)(1);
  v29 = &v27[v19[8]];
  sub_26F397018();
  v30 = &v27[v19[10]];
  *&v27[v19[13]] = 0;
  *v27 = 1;
  *(v27 + 1) = 1000;
  v27[v19[9]] = 0;
  v31 = &v27[v19[11]];
  *v31 = 0x6F6C6C6548;
  *(v31 + 1) = 0xE500000000000000;
  *v30 = 0;
  *(v30 + 1) = 0;
  v27[v19[12]] = 0;
  sub_26F397018();
  *&v17[v9[9]] = 0;
  v32 = v39;
  (*(v3 + 16))(v17, v7, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB928, &qword_26F3989A8);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_26F398960;
  *(v33 + 32) = 0;
  *(v33 + 56) = 0;
  *(v33 + 64) = 0;
  *(v33 + 88) = 0;
  *(v33 + 96) = 0;
  v34 = v41;
  *(v33 + 40) = v40;
  *(v33 + 48) = v34;
  *(v33 + 72) = 0;
  *(v33 + 80) = 0;
  *(v33 + 104) = MEMORY[0x277D84F90];
  (*(v3 + 8))(v7, v32);
  *&v17[v9[7]] = v33;
  v17[v9[8]] = 1;
  sub_26F39636C(v27, v24, type metadata accessor for StoredSpeechResult);
  sub_26F39636C(v17, v14, type metadata accessor for StoredTranslationResult);
  v35 = [*(v28 + 16) viewContext];
  v36 = sub_26F3963D4(v24, v14, v35, 0);

  sub_26F396B50(v14, type metadata accessor for StoredTranslationResult);
  sub_26F396B50(v24, type metadata accessor for StoredSpeechResult);
  sub_26F396B50(v17, type metadata accessor for StoredTranslationResult);
  result = sub_26F396B50(v27, type metadata accessor for StoredSpeechResult);
  if (v36)
  {

    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static TranslationStoreCoreData.mockTranslationRTL2LTR.getter()
{
  v36 = sub_26F3970B8();
  v0 = *(v36 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v36, v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StoredTranslationResult();
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for StoredSpeechResult();
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v35 - v23;
  type metadata accessor for TranslationStoreCoreData();
  v25 = swift_allocObject();
  TranslationStoreCoreData.init(inMemoryOnly:)(1);
  v26 = &v24[v16[8]];
  sub_26F397018();
  v27 = v16[10];
  *&v24[v16[13]] = 0;
  *v24 = 1;
  *(v24 + 1) = 1000;
  v24[v16[9]] = 0;
  v28 = &v24[v27];
  v29 = &v24[v16[11]];
  *v29 = 0xA8D8ADD8B1D885D9;
  *(v29 + 1) = 0xAA0000000000A7D8;
  *v28 = 0;
  *(v28 + 1) = 0;
  v24[v16[12]] = 0;
  sub_26F397018();
  *&v14[v6[9]] = 0;
  v30 = v36;
  (*(v0 + 16))(v14, v4, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB928, &qword_26F3989A8);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26F398960;
  *(v31 + 32) = 0;
  *(v31 + 56) = 0;
  *(v31 + 64) = 0;
  *(v31 + 88) = 0;
  *(v31 + 96) = 0;
  *(v31 + 40) = 0x6F6C6C6548;
  *(v31 + 48) = 0xE500000000000000;
  *(v31 + 72) = 0;
  *(v31 + 80) = 0;
  *(v31 + 104) = MEMORY[0x277D84F90];
  (*(v0 + 8))(v4, v30);
  *&v14[v6[7]] = v31;
  v14[v6[8]] = 1;
  sub_26F39636C(v24, v21, type metadata accessor for StoredSpeechResult);
  sub_26F39636C(v14, v11, type metadata accessor for StoredTranslationResult);
  v32 = [*(v25 + 16) viewContext];
  v33 = sub_26F3963D4(v21, v11, v32, 0);

  sub_26F396B50(v11, type metadata accessor for StoredTranslationResult);
  sub_26F396B50(v21, type metadata accessor for StoredSpeechResult);
  sub_26F396B50(v14, type metadata accessor for StoredTranslationResult);
  result = sub_26F396B50(v24, type metadata accessor for StoredSpeechResult);
  if (v33)
  {

    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26F395168(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26F3974F8();
  sub_26F397168();
  v6 = sub_26F397518();

  return sub_26F3951E0(a1, a2, v6);
}

unint64_t sub_26F3951E0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26F397488())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_26F395298(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1, a1);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v16, v22);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v24);
  (*(v14 + 16))(v18, a2, a6);
  v25 = [*(a4 + 16) viewContext];
  v26 = sub_26F395BB4(v24, v18, v25, a3, a5, a6, a7, v29);

  (*(v20 + 8))(v24, a5);
  (*(v14 + 8))(v18, a6);
  return v26;
}

uint64_t sub_26F39548C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for StoredSpeechResult();
  v14[3] = v4;
  v14[4] = sub_26F38CEA4(&qword_2806DB6F8, type metadata accessor for StoredSpeechResult);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_26F396CE0(a1, boxed_opaque_existential_1, type metadata accessor for StoredSpeechResult);
  v6 = boxed_opaque_existential_1 + *(v4 + 24);
  sub_26F397028();
  v7 = sub_26F397138();

  [a2 setSourceIdentifier_];

  sub_26F37CC58(v14, v13);
  v8 = type metadata accessor for AnySpeechResult();
  v9 = objc_allocWithZone(v8);
  sub_26F37CC58(v13, v9 + OBJC_IVAR____TtC22TranslationPersistence15AnySpeechResult_value);
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v13);
  [a2 setSourceInput_];

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_26F3955E4(uint64_t a1, void *a2)
{
  v12[3] = type metadata accessor for StoredTranslationResult();
  v12[4] = sub_26F38CEA4(&qword_2806DBA88, type metadata accessor for StoredTranslationResult);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  sub_26F396CE0(a1, boxed_opaque_existential_1, type metadata accessor for StoredTranslationResult);
  sub_26F397028();
  v5 = sub_26F397138();

  [a2 setTargetIdentifier_];

  sub_26F37CC58(v12, v11);
  v6 = type metadata accessor for AnyTranslationResult();
  v7 = objc_allocWithZone(v6);
  sub_26F37CC58(v11, v7 + OBJC_IVAR____TtC22TranslationPersistence20AnyTranslationResult_value);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v11);
  [a2 setTargetResult_];

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

unint64_t sub_26F395734(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBB38, &qword_26F399678);
    v3 = sub_26F397378();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26F395168(v5, v6);
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

void _s22TranslationPersistence0A13StoreCoreDataC14toggleFavoriteyyAA09PersistedA0CF_0(void *a1)
{
  v2 = sub_26F396FD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAB8, &unk_26F399440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v19 - v11;
  v13 = [a1 favoriteDate];
  if (v13)
  {
    v14 = v13;
    sub_26F396FB8();

    (*(v3 + 56))(v12, 0, 1, v2);
    sub_26F37DE50(v12, &qword_2806DBAB8, &unk_26F399440);
    [a1 setFavoriteDate_];
  }

  else
  {
    (*(v3 + 56))(v12, 1, 1, v2);
    sub_26F37DE50(v12, &qword_2806DBAB8, &unk_26F399440);
    sub_26F396FC8();
    v15 = sub_26F396FA8();
    (*(v3 + 8))(v7, v2);
    [a1 setFavoriteDate_];

    v16 = sub_26F397138();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBB18, &qword_26F399668);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26F398960;
    *(inited + 32) = 0x6D614E746E657665;
    *(inited + 40) = 0xE900000000000065;
    sub_26F38500C(0, &qword_2806DBB20, 0x277CCACA8);
    *(inited + 48) = sub_26F3972A8();
    sub_26F395734(inited);
    swift_setDeallocating();
    sub_26F37DE50(inited + 32, &qword_2806DBB28, &qword_26F399670);
    sub_26F38500C(0, &qword_2806DBB30, 0x277D82BB8);
    v18 = sub_26F397118();

    AnalyticsSendEvent();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_26F395BB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = a4;
  v73 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAB8, &unk_26F399440);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v71 = &v66 - v17;
  v70 = sub_26F396FD8();
  v69 = *(v70 - 8);
  v18 = *(v69 + 64);
  MEMORY[0x28223BE20](v70, v19);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26F397008();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79[3] = a5;
  v79[4] = a7;
  v67 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v78[3] = a6;
  v78[4] = a8;
  v68 = a8;
  v29 = __swift_allocate_boxed_opaque_existential_1(v78);
  (*(*(a6 - 8) + 16))(v29, a2, a6);
  v30 = objc_opt_self();
  v31 = sub_26F397138();
  v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v73];

  type metadata accessor for PersistedTranslation();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;
    sub_26F396FF8();
    sub_26F396FE8();
    (*(v23 + 8))(v27, v22);
    v35 = sub_26F397138();

    [v34 setIdentifier_];

    sub_26F396FC8();
    v36 = sub_26F396FA8();
    v37 = v69;
    v38 = v70;
    (*(v69 + 8))(v21, v70);
    [v34 setCreationDate_];

    sub_26F37CC58(v79, v76);
    v39 = v77;
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
    v41 = *(*(v39 - 8) + 64);
    MEMORY[0x28223BE20](v40, v40);
    v43 = &v66 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v44 + 16))(v43);
    sub_26F38CAB4(v43, v34, a5, v67);
    __swift_destroy_boxed_opaque_existential_1(v76);
    sub_26F37CC58(v78, v76);
    v45 = v77;
    v46 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
    v47 = *(*(v45 - 8) + 64);
    MEMORY[0x28223BE20](v46, v46);
    v49 = &v66 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v50 + 16))(v49);
    sub_26F38CCAC(v49, v34, a6, v68);
    __swift_destroy_boxed_opaque_existential_1(v76);
    sub_26F38A8A4();
    v51 = sub_26F3971B8();
    [v34 setInteractedIndices_];

    v52 = [v34 favoriteDate];
    if (v52)
    {
      v53 = v71;
      v54 = v52;
      sub_26F396FB8();

      (*(v37 + 56))(v53, 0, 1, v38);
      sub_26F37DE50(v53, &qword_2806DBAB8, &unk_26F399440);
      if (v72)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v64 = v71;
    (*(v37 + 56))(v71, 1, 1, v38);
    sub_26F37DE50(v64, &qword_2806DBAB8, &unk_26F399440);
    if (v72)
    {
LABEL_10:
      _s22TranslationPersistence0A13StoreCoreDataC14toggleFavoriteyyAA09PersistedA0CF_0(v34);
    }
  }

  else
  {
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v55 = sub_26F3970F8();
    __swift_project_value_buffer(v55, qword_281592EA0);
    sub_26F37CC58(v78, v76);
    v56 = sub_26F3970D8();
    v57 = sub_26F397228();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v75 = v59;
      *v58 = 136642819;
      sub_26F37CC58(v76, v74);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBB08, &qword_26F399658);
      v60 = sub_26F397158();
      v62 = v61;
      __swift_destroy_boxed_opaque_existential_1(v76);
      v63 = sub_26F38B99C(v60, v62, &v75);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_26F37A000, v56, v57, "Failed to insert translation %{sensitive}s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x27438E430](v59, -1, -1);
      MEMORY[0x27438E430](v58, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v76);
    }

    v34 = 0;
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v79);
  __swift_destroy_boxed_opaque_existential_1(v78);
  return v34;
}

uint64_t sub_26F39636C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_26F3963D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v59 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAB8, &unk_26F399440);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v58 - v10;
  v58 = sub_26F396FD8();
  v12 = *(v58 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v58, v14);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26F397008();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65[3] = type metadata accessor for StoredSpeechResult();
  v65[4] = sub_26F38CEA4(&qword_2806DB6F8, type metadata accessor for StoredSpeechResult);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
  sub_26F39636C(a1, boxed_opaque_existential_1, type metadata accessor for StoredSpeechResult);
  v64[3] = type metadata accessor for StoredTranslationResult();
  v64[4] = sub_26F38CEA4(&qword_2806DBA88, type metadata accessor for StoredTranslationResult);
  v24 = __swift_allocate_boxed_opaque_existential_1(v64);
  sub_26F39636C(a2, v24, type metadata accessor for StoredTranslationResult);
  v25 = objc_opt_self();
  v26 = sub_26F397138();
  v27 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:a3];

  type metadata accessor for PersistedTranslation();
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = v28;
    sub_26F396FF8();
    sub_26F396FE8();
    (*(v18 + 8))(v22, v17);
    v30 = sub_26F397138();

    [v29 setIdentifier_];

    sub_26F396FC8();
    v31 = sub_26F396FA8();
    v32 = v58;
    (*(v12 + 8))(v16, v58);
    [v29 setCreationDate_];

    sub_26F37CC58(v65, v62);
    v33 = v63;
    v34 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
    v35 = *(*(v33 - 8) + 64);
    MEMORY[0x28223BE20](v34, v34);
    v37 = &v58 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v37);
    sub_26F39548C(v37, v29);
    __swift_destroy_boxed_opaque_existential_1(v62);
    sub_26F37CC58(v64, v62);
    v39 = v63;
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
    v41 = *(*(v39 - 8) + 64);
    MEMORY[0x28223BE20](v40, v40);
    v43 = &v58 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v44 + 16))(v43);
    sub_26F3955E4(v43, v29);
    __swift_destroy_boxed_opaque_existential_1(v62);
    sub_26F38A8A4();
    v45 = sub_26F3971B8();
    [v29 setInteractedIndices_];

    v46 = [v29 favoriteDate];
    if (v46)
    {
      v47 = v46;
      sub_26F396FB8();

      (*(v12 + 56))(v11, 0, 1, v32);
      sub_26F37DE50(v11, &qword_2806DBAB8, &unk_26F399440);
      if (v59)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    (*(v12 + 56))(v11, 1, 1, v32);
    sub_26F37DE50(v11, &qword_2806DBAB8, &unk_26F399440);
    if (v59)
    {
LABEL_10:
      _s22TranslationPersistence0A13StoreCoreDataC14toggleFavoriteyyAA09PersistedA0CF_0(v29);
    }
  }

  else
  {
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v48 = sub_26F3970F8();
    __swift_project_value_buffer(v48, qword_281592EA0);
    sub_26F37CC58(v64, v62);
    v49 = sub_26F3970D8();
    v50 = sub_26F397228();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v61 = v52;
      *v51 = 136642819;
      sub_26F37CC58(v62, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBB08, &qword_26F399658);
      v53 = sub_26F397158();
      v55 = v54;
      __swift_destroy_boxed_opaque_existential_1(v62);
      v56 = sub_26F38B99C(v53, v55, &v61);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_26F37A000, v49, v50, "Failed to insert translation %{sensitive}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x27438E430](v52, -1, -1);
      MEMORY[0x27438E430](v51, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v62);
    }

    v29 = 0;
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return v29;
}

uint64_t sub_26F396B50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_8Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F396CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F396D50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DBB40, &unk_26F399680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F396DC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}