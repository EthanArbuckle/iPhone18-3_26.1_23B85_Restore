id sub_1D90AE3E4(void *a1, void *a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      sub_1D8D5055C(a2, a3, 2);
      if (qword_1ECAB0D90 != -1)
      {
        swift_once();
      }

      v14 = sub_1D917744C();
      __swift_project_value_buffer(v14, qword_1ECAB0D98);
      sub_1D8D5055C(a2, a3, 2);
      v15 = sub_1D917741C();
      v16 = sub_1D9178CDC();
      sub_1D8FE1298(a2, a3, 2);
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v49 = v18;
        *v17 = 136315394;
        v19 = sub_1D9179FEC();
        v21 = sub_1D8CFA924(v19, v20, &v49);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_1D8CFA924(a2, a3, &v49);
        _os_log_impl(&dword_1D8CEC000, v15, v16, "[%s] Trying to find podcast with UUID %s.", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v18, -1, -1);
        MEMORY[0x1DA72CB90](v17, -1, -1);
      }

      v22 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v23 = [a1 podcastForUuid_];

      if (v23)
      {
        sub_1D8FE1298(a2, a3, 2);
        return v23;
      }

      sub_1D8D5055C(a2, a3, 2);
      v38 = sub_1D917741C();
      v39 = sub_1D9178D1C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v49 = v41;
        *v40 = 136315394;
        v42 = sub_1D9179FEC();
        v44 = sub_1D8CFA924(v42, v43, &v49);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2080;
        v45 = a3;
        v46 = sub_1D8CFA924(a2, a3, &v49);
        sub_1D8FE1298(a2, a3, 2);
        *(v40 + 14) = v46;
        _os_log_impl(&dword_1D8CEC000, v38, v39, "[%s] Failed to find podcast with UUID: %s.", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v41, -1, -1);
        MEMORY[0x1DA72CB90](v40, -1, -1);
      }

      else
      {

        v45 = a3;
        sub_1D8FE1298(a2, a3, 2);
      }

      sub_1D8FE1298(a2, v45, 2);
      return 0;
    }

    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v33 = sub_1D917744C();
    __swift_project_value_buffer(v33, qword_1ECAB0D98);
    v7 = sub_1D917741C();
    v34 = sub_1D9178D1C();
    if (!os_log_type_enabled(v7, v34))
    {
LABEL_24:

      return 0;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49 = v10;
    *v9 = 136315394;
    v35 = sub_1D9179FEC();
    v37 = sub_1D8CFA924(v35, v36, &v49);

    *(v9 + 4) = v37;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1D8CFA924(0xD00000000000001ELL, 0x80000001D91D5670, &v49);
    _os_log_impl(&dword_1D8CEC000, v7, v34, "[%s] [%s] Cannot get podcast since no ContentID was provided.", v9, 0x16u);
    swift_arrayDestroy();
LABEL_23:
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
    goto LABEL_24;
  }

  if (!a4)
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1ECAB0D98);
    v7 = sub_1D917741C();
    v8 = sub_1D9178CFC();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_24;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49 = v10;
    *v9 = 136315138;
    v11 = sub_1D9179FEC();
    v13 = sub_1D8CFA924(v11, v12, &v49);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "[%s] Fetching podcast by adam id is unexpected.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    goto LABEL_23;
  }

  sub_1D8D5055C(a2, a3, 1);
  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v25 = sub_1D917744C();
  __swift_project_value_buffer(v25, qword_1ECAB0D98);
  v26 = sub_1D917741C();
  v27 = sub_1D9178CDC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v49 = v29;
    *v28 = 136315138;
    v30 = sub_1D9179FEC();
    v32 = sub_1D8CFA924(v30, v31, &v49);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1D8CEC000, v26, v27, "[%s] Trying to find podcast with managed object ID.", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1DA72CB90](v29, -1, -1);
    MEMORY[0x1DA72CB90](v28, -1, -1);
  }

  v47 = NSManagedObjectContext.unsafeShow(for:sortDescriptors:)(a2, 0, 1, MEMORY[0x1E69E7CC0]);
  sub_1D8FE1298(a2, a3, 1);
  return v47;
}

void static PlayerPerShowSettingsHelper.postPerShowSettingsChangedNotification(podcast:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - v6;
  sub_1D90AB6FC(a1, &v32);
  v8 = v34;
  if (v34)
  {
    v10 = v32;
    v9 = v33;
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v11 = sub_1D917744C();
    __swift_project_value_buffer(v11, qword_1ECAB0D98);

    v12 = sub_1D917741C();
    v13 = sub_1D9178D1C();

    v14 = HIDWORD(v10);
    if (os_log_type_enabled(v12, v13))
    {
      v15 = swift_slowAlloc();
      v30 = v10;
      v10 = v15;
      v16 = swift_slowAlloc();
      v29 = v14;
      v14 = v16;
      v31 = v16;
      *v10 = 136315394;
      v17 = sub_1D9179FEC();
      v19 = sub_1D8CFA924(v17, v18, &v31);

      *(v10 + 4) = v19;
      *(v10 + 12) = 2080;
      BYTE4(v32) = v29;
      LODWORD(v32) = v30;
      v33 = v9;
      v34 = v8;

      v20 = sub_1D917826C();
      v22 = sub_1D8CFA924(v20, v21, &v31);

      *(v10 + 14) = v22;
      _os_log_impl(&dword_1D8CEC000, v12, v13, "[%s] Sending notification for per show settings: %s.", v10, 0x16u);
      swift_arrayDestroy();
      v23 = v14;
      LOBYTE(v14) = v29;
      MEMORY[0x1DA72CB90](v23, -1, -1);
      v24 = v10;
      LODWORD(v10) = v30;
      MEMORY[0x1DA72CB90](v24, -1, -1);
    }

    v25 = sub_1D917886C();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    sub_1D91787EC();
    v26 = sub_1D91787DC();
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E85E0];
    *(v27 + 16) = v26;
    *(v27 + 24) = v28;
    *(v27 + 32) = v2;
    *(v27 + 44) = v14;
    *(v27 + 40) = v10;
    *(v27 + 48) = v9;
    *(v27 + 56) = v8;
    sub_1D8E91268(0, 0, v7, &unk_1D91B37C0, v27);
  }
}

void sub_1D90AEFAC(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 playbackContext];

  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = v6;
  v17[4] = a5;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D8CF5F60;
  v17[3] = a6;
  v15 = _Block_copy(v17);
  v16 = v13;
  sub_1D8FE1240(a1, a2, a3);

  [v16 performBlock_];
  _Block_release(v15);
}

void sub_1D90AF0F8(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v9 = sub_1D90AE3E4(a2, a3, a4, a5);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 advancedPlaybackSettings];
    if (v11)
    {
      v12 = v11;
      [v11 setHasCustomSettings_];
    }

    [a2 saveInCurrentBlock];
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1ECAB0D98);
    v37 = v10;
    v14 = sub_1D917741C();
    v15 = sub_1D9178D1C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v38[0] = v17;
      *v16 = 136315907;
      v18 = sub_1D9179FEC();
      v20 = sub_1D8CFA924(v18, v19, v38);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56C0, v38);
      *(v16 + 22) = 2160;
      *(v16 + 24) = 1752392040;
      *(v16 + 32) = 2081;
      v21 = [v37 title];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1D917820C();
        v25 = v24;
      }

      else
      {
        v25 = 0xEA00000000002965;
        v23 = 0x6C746974206F6E28;
      }

      v36 = sub_1D8CFA924(v23, v25, v38);

      *(v16 + 34) = v36;
      _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] [%s] Set podcast: %{private,mask.hash}s to global settings", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    static PlayerPerShowSettingsHelper.postPerShowSettingsChangedNotification(podcast:)(v37);
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917744C();
    __swift_project_value_buffer(v26, qword_1ECAB0D98);
    sub_1D8FE1240(a3, a4, a5);
    v37 = sub_1D917741C();
    v27 = sub_1D9178CFC();
    sub_1D8FE1298(a3, a4, a5);
    if (os_log_type_enabled(v37, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136315650;
      v30 = sub_1D9179FEC();
      v32 = sub_1D8CFA924(v30, v31, &v40);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D56C0, &v40);
      *(v28 + 22) = 2080;
      v38[0] = a3;
      v38[1] = a4;
      v39 = a5;
      sub_1D8FE1240(a3, a4, a5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88D8, &unk_1D91A45D0);
      v33 = sub_1D917826C();
      v35 = sub_1D8CFA924(v33, v34, &v40);

      *(v28 + 24) = v35;
      _os_log_impl(&dword_1D8CEC000, v37, v27, "[%s] [%s] Failed to find podcast for contentID: %s, did not reset show settings", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v29, -1, -1);
      MEMORY[0x1DA72CB90](v28, -1, -1);

      return;
    }
  }
}

void static PlayerPerShowSettingsHelper.saveSettingsAdjustedCount(_:contentID:)(int a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  if ([objc_opt_self() supportsLocalLibrary])
  {
    v10 = [objc_opt_self() sharedInstance];
    v11 = [v10 mainQueueContext];

    v12 = swift_allocObject();
    *(v12 + 16) = v5;
    *(v12 + 24) = v11;
    *(v12 + 32) = a2;
    *(v12 + 40) = a3;
    *(v12 + 48) = a4;
    *(v12 + 52) = a1;
    *(v12 + 56) = v5;
    aBlock[4] = sub_1D90B1AB0;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_16_0;
    v13 = _Block_copy(aBlock);
    v14 = v11;
    sub_1D8FE1240(a2, a3, a4);

    [v14 performBlockAndWaitWithSave_];
    _Block_release(v13);
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1ECAB0D98);
    oslog = sub_1D917741C();
    v16 = sub_1D9178D1C();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      v19 = sub_1D9179FEC();
      v21 = sub_1D8CFA924(v19, v20, aBlock);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1D8CEC000, oslog, v16, "[%s] Custom settings are not supported on this device. Skipping save operation.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1DA72CB90](v18, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1D90AF85C(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = sub_1D90AE3E4(a2, a3, a4, a5);
  if (!v10)
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1ECAB0D98);
    sub_1D8FE1240(a3, a4, a5);
    oslog = sub_1D917741C();
    v22 = sub_1D9178D1C();
    sub_1D8FE1298(a3, a4, a5);
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136315650;
      v25 = sub_1D9179FEC();
      v27 = sub_1D8CFA924(v25, v26, &v36);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1D8CFA924(0xD000000000000027, 0x80000001D91D5690, &v36);
      *(v23 + 22) = 2080;
      v34[0] = a3;
      v34[1] = a4;
      v35 = a5;
      sub_1D8FE1240(a3, a4, a5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88D8, &unk_1D91A45D0);
      v28 = sub_1D917826C();
      v30 = sub_1D8CFA924(v28, v29, &v36);

      *(v23 + 24) = v30;
      _os_log_impl(&dword_1D8CEC000, oslog, v22, "[%s] [%s] No podcast found for contentID: %s. Skipping save operation.", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v24, -1, -1);
      MEMORY[0x1DA72CB90](v23, -1, -1);

      return;
    }

    goto LABEL_15;
  }

  oslog = v10;
  v11 = [v10 advancedPlaybackSettings];
  if (!v11)
  {
    sub_1D90AFC9C(oslog, a6);
LABEL_15:
    v31 = oslog;
    goto LABEL_18;
  }

  v32 = v11;
  if (sub_1D90B04E4(oslog, v11))
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v12 = sub_1D917744C();
    __swift_project_value_buffer(v12, qword_1ECAB0D98);
    v13 = sub_1D917741C();
    v14 = sub_1D9178D1C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34[0] = v16;
      *v15 = 136315650;
      v17 = sub_1D9179FEC();
      v19 = sub_1D8CFA924(v17, v18, v34);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1D8CFA924(0xD000000000000027, 0x80000001D91D5690, v34);
      *(v15 + 22) = 1024;
      *(v15 + 24) = a6;
      _os_log_impl(&dword_1D8CEC000, v13, v14, "[%s] [%s] Updating settings adjusted count to %d", v15, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v16, -1, -1);
      MEMORY[0x1DA72CB90](v15, -1, -1);
    }

    v20 = [v32 settingsAdjustedCount];
    if (__OFADD__(v20, a6))
    {
      __break(1u);
      return;
    }

    [v32 setSettingsAdjustedCount:v20 + a6];
  }

  else
  {
    sub_1D90B00B8(oslog, v32);
  }

  v31 = v32;
LABEL_18:
}

void sub_1D90AFC9C(void *a1, uint64_t a2)
{
  v4 = a1;
  PodcastStateModel.init(podcast:)(a1, v27);
  if (v30)
  {
    v5 = v31 | (v32 << 16);
    sub_1D90B1ADC(v27[0], v27[1], v28, v29, v30);
    if ((v5 & 0x100) != 0)
    {
      if ((v5 & 0x10000) == 0 && (v5 & 1) == 0)
      {

LABEL_10:
        if (qword_1ECAB0D90 != -1)
        {
          swift_once();
        }

        v7 = sub_1D917744C();
        __swift_project_value_buffer(v7, qword_1ECAB0D98);
        v8 = sub_1D917741C();
        v9 = sub_1D9178D1C();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v27[0] = v11;
          *v10 = 136315394;
          v12 = sub_1D9179FEC();
          v14 = sub_1D8CFA924(v12, v13, v27);

          *(v10 + 4) = v14;
          *(v10 + 12) = 1024;
          *(v10 + 14) = a2;
          _os_log_impl(&dword_1D8CEC000, v8, v9, "[%s] Creating MTAdvancedPlaybackSettings with setting adjusted count = %d", v10, 0x12u);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          MEMORY[0x1DA72CB90](v11, -1, -1);
          MEMORY[0x1DA72CB90](v10, -1, -1);
        }

        v15 = [objc_opt_self() insertNewAdvancedPlaybackSettingsOnPodcast:v4 settingsAdjustedCount:a2];
        goto LABEL_20;
      }
    }

    else if ((v5 & 0x10000) == 0 || (v5 & 1) == 0)
    {
      v6 = sub_1D9179ACC();

      if (v6)
      {
        goto LABEL_10;
      }
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v16 = sub_1D917744C();
  __swift_project_value_buffer(v16, qword_1ECAB0D98);
  v26 = v4;
  oslog = sub_1D917741C();
  v17 = sub_1D9178D1C();
  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27[0] = v19;
    *v18 = 136315650;
    v20 = sub_1D9179FEC();
    v22 = sub_1D8CFA924(v20, v21, v27);

    *(v18 + 4) = v22;
    *(v18 + 12) = 1024;
    v23 = [v26 subscribed];

    *(v18 + 14) = v23;
    *(v18 + 18) = 1024;
    v24 = [v26 hidden];

    *(v18 + 20) = v24;
    _os_log_impl(&dword_1D8CEC000, oslog, v17, "[%s] Not eligible to set settings adjusted count. Subscribed: %{BOOL}d, hidden: %{BOOL}d", v18, 0x18u);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1DA72CB90](v19, -1, -1);
    MEMORY[0x1DA72CB90](v18, -1, -1);
    v15 = oslog;
  }

  else
  {

    v15 = v26;
  }

LABEL_20:
}

id sub_1D90B00B8(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v41 - v8;
  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v10 = sub_1D917744C();
  v11 = __swift_project_value_buffer(v10, qword_1ECAB0D98);
  v12 = a1;
  v13 = a2;
  v14 = v12;
  v15 = v13;
  v16 = sub_1D917741C();
  v17 = sub_1D9178D1C();
  if (os_log_type_enabled(v16, v17))
  {
    v41[1] = v11;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 136316162;
    v41[2] = v3;
    v42 = v19;
    v20 = sub_1D9179FEC();
    v22 = sub_1D8CFA924(v20, v21, &v42);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = [v15 tipLastShownDate];
    if (v23)
    {
      v24 = v23;
      sub_1D9176DFC();

      v25 = sub_1D9176E3C();
      (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
    }

    else
    {
      v26 = sub_1D9176E3C();
      (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    }

    v27 = sub_1D917826C();
    v29 = sub_1D8CFA924(v27, v28, &v42);

    *(v18 + 14) = v29;
    *(v18 + 22) = 1024;
    v30 = [v15 hasCustomSettings];

    *(v18 + 24) = v30;
    *(v18 + 28) = 1024;
    v31 = [v14 subscribed];

    *(v18 + 30) = v31;
    *(v18 + 34) = 1024;
    v32 = [v14 hidden];

    *(v18 + 36) = v32;
    _os_log_impl(&dword_1D8CEC000, v16, v17, "[%s] Not eligible anymore to set settings adjusted count. Tip last shown date: %s, hasCustomSettings: %{BOOL}d, subscribed: %{BOOL}d, hidden: %{BOOL}d", v18, 0x28u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v19, -1, -1);
    MEMORY[0x1DA72CB90](v18, -1, -1);
  }

  else
  {
  }

  v33 = sub_1D917741C();
  v34 = sub_1D9178D1C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v35 = 136315138;
    v37 = sub_1D9179FEC();
    v39 = sub_1D8CFA924(v37, v38, &v42);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_1D8CEC000, v33, v34, "[%s] Wiping stale settings adjusted count, setting settings adjusted count = 0.", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1DA72CB90](v36, -1, -1);
    MEMORY[0x1DA72CB90](v35, -1, -1);
  }

  return [v15 setSettingsAdjustedCount_];
}

uint64_t sub_1D90B04E4(void *a1, void *a2)
{
  v92 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v4 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v78 - v7;
  v9 = sub_1D9176E3C();
  v82 = *(v9 - 8);
  v91 = v82;
  v10 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78 - v14;
  v16 = sub_1D9176FDC();
  v85 = *(v16 - 8);
  v86 = v16;
  v17 = *(v85 + 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1D91768DC();
  v88 = *(v90 - 8);
  v20 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v89 = &v78 - v23;
  v81 = v2;
  LODWORD(v79) = static PlayerPerShowSettingsHelper.isCustomSettingsSupported(podcast:)(a1);
  sub_1D9176F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB72F0, qword_1D9196C50);
  v24 = sub_1D9176FBC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D9189080;
  (*(v25 + 104))(v28 + v27, *MEMORY[0x1E6969A48], v24);
  sub_1D8FB208C(v28);
  swift_setDeallocating();
  (*(v25 + 8))(v28 + v27, v24);
  swift_deallocClassInstance();
  v29 = [v92 tipLastShownDate];
  if (v29)
  {
    v30 = v29;
    sub_1D9176DFC();

    v31 = v91;
    v32 = *(v91 + 32);
    v32(v8, v12, v9);
    v80 = *(v31 + 56);
    v80(v8, 0, 1, v9);
    v32(v15, v8, v9);
    v33 = v9;
    v34 = v31;
    v35 = v12;
  }

  else
  {
    v35 = v12;
    v36 = v91;
    v80 = *(v91 + 56);
    v80(v8, 1, 1, v9);
    sub_1D9176CEC();
    v37 = (*(v36 + 48))(v8, 1, v9);
    v33 = v9;
    v34 = v36;
    if (v37 != 1)
    {
      sub_1D8D08A50(v8, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  v38 = v90;
  v39 = v87;
  sub_1D9176E0C();
  v40 = v89;
  sub_1D9176F5C();

  v43 = *(v34 + 8);
  v41 = v34 + 8;
  v42 = v43;
  v43(v35, v33);
  v43(v15, v33);
  (*(v85 + 1))(v19, v86);
  v44 = sub_1D917685C();
  if (v45)
  {
    v87 = v33;
    v46 = v88;
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v47 = sub_1D917744C();
    __swift_project_value_buffer(v47, qword_1ECAB0D98);
    (*(v46 + 16))(v39, v40, v38);
    v48 = v92;
    v49 = sub_1D917741C();
    v50 = sub_1D9178CFC();

    LODWORD(v86) = v50;
    v51 = os_log_type_enabled(v49, v50);
    v92 = v48;
    if (v51)
    {
      v79 = v49;
      v85 = v35;
      v91 = v41;
      v52 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v93 = v78;
      *v52 = 136315650;
      v53 = sub_1D9179FEC();
      v55 = v38;
      v56 = sub_1D8CFA924(v53, v54, &v93);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      sub_1D90B1BB4();
      v57 = sub_1D9179A4C();
      v59 = v58;
      v60 = v39;
      v61 = *(v46 + 8);
      v61(v60, v55);
      v62 = sub_1D8CFA924(v57, v59, &v93);

      *(v52 + 14) = v62;
      *(v52 + 22) = 2080;
      v63 = [v48 tipLastShownDate];
      v64 = v87;
      if (v63)
      {
        v65 = v83;
        v66 = v63;
        sub_1D9176DFC();

        v67 = 0;
      }

      else
      {
        v67 = 1;
        v65 = v83;
      }

      v80(v65, v67, 1, v64);
      v72 = sub_1D917826C();
      v74 = sub_1D8CFA924(v72, v73, &v93);

      *(v52 + 24) = v74;
      v75 = v79;
      _os_log_impl(&dword_1D8CEC000, v79, v86, "[%s] Failed to get number of days from tip durationSinceTipLastShown = %s, advancedPlaybackSettings.tipLastShownDate = %s. Will reset tipLastShownDate to today", v52, 0x20u);
      v76 = v78;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v76, -1, -1);
      MEMORY[0x1DA72CB90](v52, -1, -1);

      v38 = v90;
      v35 = v85;
      v40 = v89;
    }

    else
    {

      v71 = v39;
      v61 = *(v46 + 8);
      v61(v71, v38);
      v64 = v87;
    }

    sub_1D9176E0C();
    v77 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v42(v35, v64);
    [v92 setTipLastShownDate_];

    v61(v40, v38);
  }

  else
  {
    v68 = v44;
    v69 = [v92 hasCustomSettings];
    (*(v88 + 8))(v40, v38);
    if ((v69 & 1) == 0)
    {
      return v79 & (v68 > 30);
    }
  }

  return 0;
}

id static PlayerPerShowSettingsHelper.shouldShowCustomSettingsPlayerPrompt(_:)(void *a1)
{
  result = [a1 advancedPlaybackSettings];
  if (result)
  {
    v3 = result;
    if (sub_1D90B04E4(a1, result))
    {
      v4 = [v3 settingsAdjustedCount];

      return (v4 > 1);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t static PlayerPerShowSettingsHelper.isCustomSettingsSupported(contentID:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if ([objc_opt_self() supportsLocalLibrary])
  {
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 mainQueueContext];

    MEMORY[0x1EEE9AC00](v10);
    v21[2] = v4;
    v21[3] = v9;
    v21[4] = a1;
    v21[5] = a2;
    v22 = a3;
    v23 = v4;
    v11 = sub_1D90AD108(sub_1D90B1AC8, v21);
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v12 = sub_1D917744C();
    __swift_project_value_buffer(v12, qword_1ECAB0D98);
    v13 = sub_1D917741C();
    v14 = sub_1D9178D1C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315394;
      v17 = sub_1D9179FEC();
      v19 = sub_1D8CFA924(v17, v18, &v24);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1D8CFA924(0xD000000000000025, 0x80000001D91D55D0, &v24);
      _os_log_impl(&dword_1D8CEC000, v13, v14, "[%s] [%s] Custom settings are not supported on this device.", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v16, -1, -1);
      MEMORY[0x1DA72CB90](v15, -1, -1);
    }

    v11 = 0;
  }

  return v11 & 1;
}

void sub_1D90B1030(void *a1@<X1>, void *a2@<X2>, unint64_t a3@<X3>, char a4@<W4>, _BYTE *a5@<X8>)
{
  v9 = sub_1D90AE3E4(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v9;
    v11 = static PlayerPerShowSettingsHelper.isCustomSettingsSupported(podcast:)(v9);

    v12 = v11 & 1;
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1ECAB0D98);
    sub_1D8FE1240(a2, a3, a4);
    v14 = sub_1D917741C();
    v15 = sub_1D9178CFC();
    sub_1D8FE1298(a2, a3, a4);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315650;
      v18 = sub_1D9179FEC();
      v20 = sub_1D8CFA924(v18, v19, &v24);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D8CFA924(0xD000000000000025, 0x80000001D91D55D0, &v24);
      *(v16 + 22) = 2080;
      sub_1D8FE1240(a2, a3, a4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB88D8, &unk_1D91A45D0);
      v21 = sub_1D917826C();
      v23 = sub_1D8CFA924(v21, v22, &v24);

      *(v16 + 24) = v23;
      _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] [%s] Failed to find podcast for contentID: %s, show settings are not supported", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    v12 = 0;
  }

  *a5 = v12;
}

uint64_t static PlayerPerShowSettingsHelper.isCustomSettingsSupported(podcast:)(void *a1)
{
  if ([objc_opt_self() supportsLocalLibrary])
  {
    v2 = a1;
    PodcastStateModel.init(podcast:)(a1, v29);
    if (v32)
    {
      v3 = v33 | (v34 << 16);
      sub_1D90B1ADC(v29[0], v29[1], v30, v31, v32);
      if ((v3 & 0x100) != 0)
      {
        if ((v3 & 0x10000) == 0 && (v3 & 1) == 0)
        {

          v12 = 1;
LABEL_17:
          if (qword_1ECAB0D90 != -1)
          {
            swift_once();
          }

          v13 = sub_1D917744C();
          __swift_project_value_buffer(v13, qword_1ECAB0D98);
          v14 = v2;
          v15 = sub_1D917741C();
          v16 = sub_1D9178D1C();

          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v29[0] = v18;
            *v17 = 136316163;
            v19 = sub_1D9179FEC();
            v21 = sub_1D8CFA924(v19, v20, v29);

            *(v17 + 4) = v21;
            *(v17 + 12) = 2080;
            *(v17 + 14) = sub_1D8CFA924(0xD000000000000023, 0x80000001D91D5600, v29);
            *(v17 + 22) = 2160;
            *(v17 + 24) = 1752392040;
            *(v17 + 32) = 2081;
            v22 = [v14 title];
            if (v22)
            {
              v23 = v22;
              v24 = sub_1D917820C();
              v26 = v25;
            }

            else
            {
              v26 = 0xEA00000000002965;
              v24 = 0x6C746974206F6E28;
            }

            v27 = sub_1D8CFA924(v24, v26, v29);

            *(v17 + 34) = v27;
            *(v17 + 42) = 1024;
            *(v17 + 44) = v12 & 1;
            _os_log_impl(&dword_1D8CEC000, v15, v16, "[%s] [%s] Custom settings for podcast: %{private,mask.hash}s, supported: %{BOOL}d.", v17, 0x30u);
            swift_arrayDestroy();
            MEMORY[0x1DA72CB90](v18, -1, -1);
            MEMORY[0x1DA72CB90](v17, -1, -1);
          }

          return v12 & 1;
        }
      }

      else if ((v3 & 0x10000) == 0 || (v3 & 1) == 0)
      {
        v12 = sub_1D9179ACC();

        goto LABEL_17;
      }
    }

    v12 = 0;
    goto LABEL_17;
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1ECAB0D98);
  v5 = sub_1D917741C();
  v6 = sub_1D9178D1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29[0] = v8;
    *v7 = 136315138;
    v9 = sub_1D9179FEC();
    v11 = sub_1D8CFA924(v9, v10, v29);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "[%s] Custom settings are not supported on this device.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1DA72CB90](v8, -1, -1);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1D90B16D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[17] = a5;
  sub_1D91787EC();
  v7[20] = sub_1D91787DC();
  v9 = sub_1D917874C();

  return MEMORY[0x1EEE6DFA0](sub_1D90B1774, v9, v8);
}

uint64_t sub_1D90B1774()
{
  v1 = *(v0 + 160);

  if (qword_1ECAB3700 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECABA218;
  if (qword_1ECAAFD20 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v6 = qword_1ECAAFD28;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5C00, &qword_1D91913F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  strcpy((v0 + 120), "perShowSetting");
  *(v0 + 135) = -18;
  sub_1D91793EC();
  *(inited + 88) = v3;
  *(inited + 96) = &type metadata for PerShowSettingNotificationData;
  *(inited + 76) = BYTE4(v5);
  *(inited + 72) = v5;
  *(inited + 80) = v4;

  sub_1D8D653BC(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &unk_1ECAB6C80, &unk_1D91949C0);
  v8 = sub_1D917802C();

  [v2 postNotificationName:v6 object:0 userInfo:v8];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D90B199C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 44) << 32);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D58924;

  return sub_1D90B16D8(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1D90B1AC8(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 56);
  sub_1D90B1030(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), a1);
}

uint64_t sub_1D90B1ADC(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1D90B1B1C(result, a2, a3);
  }

  return result;
}

uint64_t sub_1D90B1B1C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

void *sub_1D90B1B74()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  result = v1(&v5);
  *v2 = v5;
  return result;
}

unint64_t sub_1D90B1BB4()
{
  result = qword_1ECABA228;
  if (!qword_1ECABA228)
  {
    sub_1D91768DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA228);
  }

  return result;
}

uint64_t sub_1D90B1C10()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v1(&v6);
  v4 = *v2;
  *v2 = v6;
}

uint64_t static PodcastsPlaybackSettingsHelper.enhanceDialogueEnabled(for:defaultsProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();

  return sub_1D90B4E68(a1, a2, a3, v3);
}

id PodcastsPlaybackSettingsHelper.PodcastPlaybackSettingsKeys.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t static PodcastsPlaybackSettingsHelper.settings(for:defaultsProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();

  return sub_1D90B4FFC(a1, a2, a3, v3);
}

void sub_1D90B1E48(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [a1 podcastForUuid_];

  if (v5)
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1ECAB0D98);
    v7 = sub_1D917741C();
    v8 = sub_1D9178CDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = v10;
      *v9 = 136315138;
      v11 = sub_1D9179FEC();
      v13 = sub_1D8CFA924(v11, v12, &v28);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1D8CEC000, v7, v8, "[%s] Retrieving resolved playback settings", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D918A530;
    *(inited + 32) = 0x6B63616279616C70;
    *(inited + 40) = 0xEF79654B65746152;
    sub_1D90B2210();
    v16 = _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(v15);
    v17 = MEMORY[0x1E69E6448];
    *(inited + 48) = v16;
    *(inited + 72) = v17;
    *(inited + 80) = 0xD000000000000019;
    *(inited + 88) = 0x80000001D91D5720;
    v18 = sub_1D90B25B8();
    *(inited + 120) = MEMORY[0x1E69E6370];
    *(inited + 96) = v18 & 1;
    v19 = sub_1D8E2696C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E8, &qword_1D9193650);
    swift_arrayDestroy();
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1ECAB0D98);
    v21 = sub_1D917741C();
    v22 = sub_1D9178CDC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      v25 = sub_1D9179FEC();
      v27 = sub_1D8CFA924(v25, v26, &v28);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1D8CEC000, v21, v22, "[%s] Retrieving global playback settings", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1DA72CB90](v24, -1, -1);
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }

    if (qword_1ECAB1988 != -1)
    {
      swift_once();
    }

    v5 = qword_1ECAB1990;
    v19 = sub_1D90B52F0(v5);
  }

  *a2 = v19;
}

void sub_1D90B2210()
{
  swift_getObjectType();
  if ([v0 subscribed])
  {
    v1 = [v0 hidden];
  }

  else
  {
    v1 = 1;
  }

  v2 = [v0 advancedPlaybackSettings];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  if (v1 & 1 | (([v2 hasCustomSettings] & 1) == 0))
  {

LABEL_7:
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB0D98);
    v5 = sub_1D917741C();
    v6 = sub_1D9178CDC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 136315394;
      v9 = sub_1D9179FEC();
      v11 = sub_1D8CFA924(v9, v10, &v22);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2048;
      if (qword_1ECAB1988 != -1)
      {
        swift_once();
      }

      *(v7 + 14) = PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
      _os_log_impl(&dword_1D8CEC000, v5, v6, "[%s] Resolved setter setting global playback rate of %f", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1DA72CB90](v8, -1, -1);
      MEMORY[0x1DA72CB90](v7, -1, -1);
    }

    if (qword_1ECAB1988 != -1)
    {
      swift_once();
    }

    PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
    return;
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1ECAB0D98);
  v13 = v3;
  v14 = sub_1D917741C();
  v15 = sub_1D9178CDC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315394;
    v18 = sub_1D9179FEC();
    v20 = sub_1D8CFA924(v18, v19, &v22);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2048;
    [v13 playbackRate];
    *&v21 = v21;
    *(v16 + 14) = *&v21;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] Resolved setter setting custom playback rate of %f", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1DA72CB90](v17, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  [v13 playbackRate];
}

unint64_t sub_1D90B25B8()
{
  swift_getObjectType();
  if ([v0 subscribed])
  {
    v1 = [v0 hidden];
  }

  else
  {
    v1 = 1;
  }

  v2 = [v0 advancedPlaybackSettings];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  if (v1 & 1 | (([v2 hasCustomSettings] & 1) == 0))
  {

LABEL_7:
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB0D98);
    v5 = sub_1D917741C();
    v6 = sub_1D9178CDC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 136315394;
      v9 = sub_1D9179FEC();
      v11 = sub_1D8CFA924(v9, v10, &v22);

      *(v7 + 4) = v11;
      *(v7 + 12) = 1024;
      if (qword_1ECAB1988 != -1)
      {
        swift_once();
      }

      *(v7 + 14) = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter() & 1;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "[%s] Resolved getter getting global playback rate = %{BOOL}d", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1DA72CB90](v8, -1, -1);
      MEMORY[0x1DA72CB90](v7, -1, -1);
    }

    if (qword_1ECAB1988 != -1)
    {
      swift_once();
    }

    return PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter() & 1;
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v13 = sub_1D917744C();
  __swift_project_value_buffer(v13, qword_1ECAB0D98);
  v14 = sub_1D917741C();
  v15 = sub_1D9178CDC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315394;
    v18 = sub_1D9179FEC();
    v20 = sub_1D8CFA924(v18, v19, &v22);

    *(v16 + 4) = v20;
    *(v16 + 12) = 1024;
    if (qword_1ECAB1988 != -1)
    {
      swift_once();
    }

    *(v16 + 14) = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter() & 1;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] Resolved getter getting custom playback rate = %{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1DA72CB90](v17, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  v21 = [v3 enhanceDialogueEnabled];
  return v21;
}

void static PodcastsPlaybackSettingsHelper.saveSettings(_:podcastUUID:defaultsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v10 = objc_opt_self();

    if ([v10 supportsLocalLibrary])
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 mainQueueContext];

      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = a2;
      v13[4] = a3;
      v13[5] = v5;
      v13[6] = a1;
      v13[7] = v5;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1D90B5938;
      *(v14 + 24) = v13;
      v29[4] = sub_1D8D24508;
      v29[5] = v14;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 1107296256;
      v29[2] = sub_1D8D24488;
      v29[3] = &block_descriptor_77;
      v15 = _Block_copy(v29);
      v16 = v12;

      [v16 performBlockAndWait_];

      _Block_release(v15);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      return;
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v18 = sub_1D917744C();
  __swift_project_value_buffer(v18, qword_1ECAB0D98);

  v19 = sub_1D917741C();
  v20 = sub_1D9178CDC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29[0] = v22;
    *v21 = 136315650;
    v23 = sub_1D9179FEC();
    v25 = sub_1D8CFA924(v23, v24, v29);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    if (a3)
    {
      v26 = 0x6C696E2D6E6F6ELL;
    }

    else
    {
      v26 = 7104878;
    }

    if (a3)
    {
      v27 = 0xE700000000000000;
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    v28 = sub_1D8CFA924(v26, v27, v29);

    *(v21 + 14) = v28;
    *(v21 + 22) = 1024;
    *(v21 + 24) = [objc_opt_self() supportsLocalLibrary];
    _os_log_impl(&dword_1D8CEC000, v19, v20, "[%s] Podcast UUID provided is %s, platform supports custom settings = %{BOOL}d. Will save settings as global settings", v21, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v22, -1, -1);
    MEMORY[0x1DA72CB90](v21, -1, -1);
  }

  swift_getObjectType();

  sub_1D90B5414(a1, a4);
}

void sub_1D90B2E54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_opt_self();
  v8 = @"MTPodcast";
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v10 = [v7 predicateForPodcastUUID_];

  v32 = [a1 objectInEntity:v8 predicate:v10];
  if (v32)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      if (qword_1ECAB0D90 != -1)
      {
        swift_once();
      }

      v13 = sub_1D917744C();
      __swift_project_value_buffer(v13, qword_1ECAB0D98);
      v14 = sub_1D917741C();
      v15 = sub_1D9178CDC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v34 = v17;
        *v16 = 136315138;
        v18 = sub_1D9179FEC();
        v20 = sub_1D8CFA924(v18, v19, &v34);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] Attempting to save using resolved playback settings methods", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x1DA72CB90](v17, -1, -1);
        MEMORY[0x1DA72CB90](v16, -1, -1);
      }

      v21 = sub_1D90B3254(a5);
      if ((v21 & 0x100000000) == 0)
      {
        sub_1D90B349C(*&v21);
      }

      v22 = sub_1D90B3824(a5);
      if (v22 != 2)
      {
        sub_1D90B3A58(v22 & 1);
      }

      v23 = [v12 managedObjectContext];
      [v23 saveInCurrentBlock];

      goto LABEL_20;
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v24 = sub_1D917744C();
  __swift_project_value_buffer(v24, qword_1ECAB0D98);
  v25 = sub_1D917741C();
  v26 = sub_1D9178CDC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34 = v28;
    *v27 = 136315138;
    v29 = sub_1D9179FEC();
    v31 = sub_1D8CFA924(v29, v30, &v34);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_1D8CEC000, v25, v26, "[%s] No podcast found for UUID, will save settings as global settings", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1DA72CB90](v28, -1, -1);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  if (qword_1ECAB1988 != -1)
  {
    swift_once();
  }

  v33 = qword_1ECAB1990;
  sub_1D90B5414(a5, v33);
LABEL_20:
}

unint64_t sub_1D90B3254(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_1D8D33C70(0x6B63616279616C70, 0xEF79654B65746152), (v3 & 1) != 0) && (sub_1D8CFAD1C(*(a1 + 56) + 32 * v2, v20), (swift_dynamicCast() & 1) != 0))
  {
    v4 = _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(v19);
    v5 = 0;
    v6 = LODWORD(v4);
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1ECAB0D98);

    v8 = sub_1D917741C();
    v9 = sub_1D9178CFC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20[0] = v11;
      *v10 = 136315394;
      v12 = sub_1D9179FEC();
      v14 = sub_1D8CFA924(v12, v13, v20);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = sub_1D917806C();
      v17 = sub_1D8CFA924(v15, v16, v20);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "[%s] Invalid or no playback rate value type provided, expected Float. Settings received: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v11, -1, -1);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    v6 = 0;
    v5 = 1;
  }

  return v6 | (v5 << 32);
}

void sub_1D90B349C(float a1)
{
  swift_getObjectType();
  if ([v1 subscribed])
  {
    v3 = [v1 hidden];
  }

  else
  {
    v3 = 1;
  }

  v4 = [v1 advancedPlaybackSettings];
  if (!v4)
  {
    goto LABEL_7;
  }

  v22 = v4;
  if (v3 & 1 | (([v4 hasCustomSettings] & 1) == 0))
  {

LABEL_7:
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1ECAB0D98);
    v6 = sub_1D917741C();
    v7 = sub_1D9178CDC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315394;
      v10 = sub_1D9179FEC();
      v12 = sub_1D8CFA924(v10, v11, &v23);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2048;
      *(v8 + 14) = a1;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "[%s] Resolved setter setting global playback rate to %f", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    if (qword_1ECAB1988 != -1)
    {
      swift_once();
    }

    PlaybackSettingsDefaults.playbackRateGlobalValue.setter(a1);
    return;
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v13 = sub_1D917744C();
  __swift_project_value_buffer(v13, qword_1ECAB0D98);
  v14 = sub_1D917741C();
  v15 = sub_1D9178CDC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315394;
    v18 = sub_1D9179FEC();
    v20 = sub_1D8CFA924(v18, v19, &v23);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2048;
    v21 = a1;
    *(v16 + 14) = v21;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] Resolved setter setting custom playback rate to %f", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1DA72CB90](v17, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  else
  {

    v21 = a1;
  }

  [v22 setPlaybackRate_];
}

uint64_t sub_1D90B3824(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_1D8D33C70(0xD000000000000019, 0x80000001D91D5720);
    if (v3)
    {
      sub_1D8CFAD1C(*(a1 + 56) + 32 * v2, v18);
      if (swift_dynamicCast())
      {
        return v17;
      }
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v5 = sub_1D917744C();
  __swift_project_value_buffer(v5, qword_1ECAB0D98);

  v6 = sub_1D917741C();
  v7 = sub_1D9178CFC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315394;
    v10 = sub_1D9179FEC();
    v12 = sub_1D8CFA924(v10, v11, v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_1D917806C();
    v15 = sub_1D8CFA924(v13, v14, v18);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "[%s] Invalid or no enhance dialogue value type provided, expected Bool. Settings received: %s", v8, 0x16u);
    v4 = 2;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  else
  {

    return 2;
  }

  return v4;
}

void sub_1D90B3A58(char a1)
{
  swift_getObjectType();
  if ([v1 subscribed])
  {
    v3 = [v1 hidden];
  }

  else
  {
    v3 = 1;
  }

  v4 = [v1 advancedPlaybackSettings];
  if (!v4)
  {
    goto LABEL_7;
  }

  v21 = v4;
  if (v3 & 1 | (([v4 hasCustomSettings] & 1) == 0))
  {

LABEL_7:
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1ECAB0D98);
    v6 = sub_1D917741C();
    v7 = sub_1D9178CDC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315394;
      v10 = sub_1D9179FEC();
      v12 = sub_1D8CFA924(v10, v11, &v22);

      *(v8 + 4) = v12;
      *(v8 + 12) = 1024;
      *(v8 + 14) = a1 & 1;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "[%s] Resolved setter setting global enhanceDialogueEnabled = %{BOOL}d", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    if (qword_1ECAB1988 != -1)
    {
      swift_once();
    }

    PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.setter(a1 & 1);
    return;
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v13 = sub_1D917744C();
  __swift_project_value_buffer(v13, qword_1ECAB0D98);
  v14 = sub_1D917741C();
  v15 = sub_1D9178CDC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315394;
    v18 = sub_1D9179FEC();
    v20 = sub_1D8CFA924(v18, v19, &v22);

    *(v16 + 4) = v20;
    *(v16 + 12) = 1024;
    *(v16 + 14) = a1 & 1;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] Resolved setter setting global enhanceDialogueEnabled = %{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1DA72CB90](v17, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  [v21 setEnhanceDialogueEnabled_];
}

id static PodcastsPlaybackSettingsHelper.savePlaybackRate(_:for:defaultsProvider:)(uint64_t a1, uint64_t a2, void *a3, float a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = objc_opt_self();

    if ([v10 supportsLocalLibrary])
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 mainQueueContext];

      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = a1;
      *(v13 + 32) = a2;
      *(v13 + 40) = a3;
      *(v13 + 48) = a4;
      *(v13 + 56) = v5;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1D90B5948;
      *(v14 + 24) = v13;
      v31[4] = sub_1D8EDCFE0;
      v31[5] = v14;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 1107296256;
      v31[2] = sub_1D8D24488;
      v31[3] = &block_descriptor_13_3;
      v15 = _Block_copy(v31);
      v16 = v12;
      swift_unknownObjectRetain();

      [v16 performBlockAndWait_];

      _Block_release(v15);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      return result;
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v19 = sub_1D917744C();
  __swift_project_value_buffer(v19, qword_1ECAB0D98);

  v20 = sub_1D917741C();
  v21 = sub_1D9178CDC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31[0] = v23;
    *v22 = 136315650;
    v24 = sub_1D9179FEC();
    v26 = sub_1D8CFA924(v24, v25, v31);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    if (a2)
    {
      v27 = 0x6C696E2D6E6F6ELL;
    }

    else
    {
      v27 = 7104878;
    }

    if (a2)
    {
      v28 = 0xE700000000000000;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_1D8CFA924(v27, v28, v31);

    *(v22 + 14) = v29;
    *(v22 + 22) = 1024;
    *(v22 + 24) = [objc_opt_self() supportsLocalLibrary];
    _os_log_impl(&dword_1D8CEC000, v20, v21, "[%s]  Podcast UUID provided is %s, platform supports custom settings = %{BOOL}d. Will save settings as global settings", v22, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v23, -1, -1);
    MEMORY[0x1DA72CB90](v22, -1, -1);
  }

  *&v30 = a4;

  return [a3 setPlaybackRateGlobalValue_];
}

void sub_1D90B428C(void *a1, float a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = objc_opt_self();
  v9 = @"MTPodcast";
  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v11 = [v8 predicateForPodcastUUID_];

  v33 = [a1 objectInEntity:v9 predicate:v11];
  if (v33)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      if (qword_1ECAB0D90 != -1)
      {
        swift_once();
      }

      v14 = sub_1D917744C();
      __swift_project_value_buffer(v14, qword_1ECAB0D98);
      v15 = sub_1D917741C();
      v16 = sub_1D9178CDC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v34 = v18;
        *v17 = 136315138;
        v19 = sub_1D9179FEC();
        v21 = sub_1D8CFA924(v19, v20, &v34);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_1D8CEC000, v15, v16, "[%s] Attempting to save rate using resolved playback settings methods", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x1DA72CB90](v18, -1, -1);
        MEMORY[0x1DA72CB90](v17, -1, -1);
      }

      v22 = _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(a2);
      sub_1D90B349C(v22);
      v23 = [v13 managedObjectContext];
      [v23 saveInCurrentBlock];

      return;
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v24 = sub_1D917744C();
  __swift_project_value_buffer(v24, qword_1ECAB0D98);
  v25 = sub_1D917741C();
  v26 = sub_1D9178CDC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34 = v28;
    *v27 = 136315138;
    v29 = sub_1D9179FEC();
    v31 = sub_1D8CFA924(v29, v30, &v34);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_1D8CEC000, v25, v26, "[%s]  No podcast found for UUID, will save settings as global settings", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1DA72CB90](v28, -1, -1);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  *&v32 = a2;

  [a5 setPlaybackRateGlobalValue_];
}

id static PodcastsPlaybackSettingsHelper.saveEnhanceDialogueEnabled(_:for:defaultsProvider:)(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v10 = objc_opt_self();

    if ([v10 supportsLocalLibrary])
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 mainQueueContext];

      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = a2;
      *(v13 + 32) = a3;
      *(v13 + 40) = a4;
      *(v13 + 48) = a1 & 1;
      *(v13 + 56) = v5;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1D90B595C;
      *(v14 + 24) = v13;
      v30[4] = sub_1D8EDCFE0;
      v30[5] = v14;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 1107296256;
      v30[2] = sub_1D8D24488;
      v30[3] = &block_descriptor_23_1;
      v15 = _Block_copy(v30);
      v16 = v12;
      swift_unknownObjectRetain();

      [v16 performBlockAndWait_];

      _Block_release(v15);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      return result;
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v19 = sub_1D917744C();
  __swift_project_value_buffer(v19, qword_1ECAB0D98);

  v20 = sub_1D917741C();
  v21 = sub_1D9178CDC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30[0] = v23;
    *v22 = 136315650;
    v24 = sub_1D9179FEC();
    v26 = sub_1D8CFA924(v24, v25, v30);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    if (a3)
    {
      v27 = 0x6C696E2D6E6F6ELL;
    }

    else
    {
      v27 = 7104878;
    }

    if (a3)
    {
      v28 = 0xE700000000000000;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_1D8CFA924(v27, v28, v30);

    *(v22 + 14) = v29;
    *(v22 + 22) = 1024;
    *(v22 + 24) = [objc_opt_self() supportsLocalLibrary];
    _os_log_impl(&dword_1D8CEC000, v20, v21, "[%s]  Podcast UUID provided is %s, platform supports custom settings = %{BOOL}d. Will save settings as global settings", v22, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v23, -1, -1);
    MEMORY[0x1DA72CB90](v22, -1, -1);
  }

  return [a4 setEnhanceDialogueEnabledGlobalValue_];
}

void sub_1D90B4A38(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v8 = objc_opt_self();
  v9 = @"MTPodcast";
  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v11 = [v8 predicateForPodcastUUID_];

  v31 = [a1 objectInEntity:v9 predicate:v11];
  if (v31)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      if (qword_1ECAB0D90 != -1)
      {
        swift_once();
      }

      v14 = sub_1D917744C();
      __swift_project_value_buffer(v14, qword_1ECAB0D98);
      v15 = sub_1D917741C();
      v16 = sub_1D9178CDC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v32 = v18;
        *v17 = 136315138;
        v19 = sub_1D9179FEC();
        v21 = sub_1D8CFA924(v19, v20, &v32);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_1D8CEC000, v15, v16, "[%s] Attempting to save enhance dialogue enabled setting using resolved playback settings methods", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x1DA72CB90](v18, -1, -1);
        MEMORY[0x1DA72CB90](v17, -1, -1);
      }

      sub_1D90B3A58(a5 & 1);
      v22 = [v13 managedObjectContext];
      [v22 saveInCurrentBlock];

      return;
    }
  }

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v23 = sub_1D917744C();
  __swift_project_value_buffer(v23, qword_1ECAB0D98);
  v24 = sub_1D917741C();
  v25 = sub_1D9178CDC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v26 = 136315138;
    v28 = sub_1D9179FEC();
    v30 = sub_1D8CFA924(v28, v29, &v32);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1D8CEC000, v24, v25, "[%s]  No podcast found for UUID, will save settings as global settings", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1DA72CB90](v27, -1, -1);
    MEMORY[0x1DA72CB90](v26, -1, -1);
  }

  [a4 setEnhanceDialogueEnabledGlobalValue_];
}

id _s18PodcastsFoundation0A22PlaybackSettingsHelperC07PodcastcD4KeysCAEycfc_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1D90B4E28(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1D90B4E68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = sub_1D90B4FFC(a1, a2, a3, a4);
  v6 = sub_1D90B3824(v5);

  if (v6 == 2)
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1ECAB0D98);
    v8 = sub_1D917741C();
    v9 = sub_1D9178CFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = sub_1D9179FEC();
      v14 = sub_1D8CFA924(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "[%s] No valid enhance dialogue enabled setting found when retrieving for uuid, will use global value", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1DA72CB90](v11, -1, -1);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    v6 = [a3 enhanceDialogueEnabledGlobalValue];
  }

  return v6 & 1;
}

unint64_t sub_1D90B4FFC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 && [objc_opt_self() supportsLocalLibrary])
  {
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 mainQueueContext];

    MEMORY[0x1EEE9AC00](v10);
    v24[2] = v9;
    v24[3] = a1;
    v24[4] = a2;
    v24[5] = a4;
    v24[6] = a4;
    v11 = sub_1D90ACF98(sub_1D90AC11C, v24);

    return v11;
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1ECAB0D98);

    v14 = sub_1D917741C();
    v15 = sub_1D9178CDC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315650;
      v18 = sub_1D9179FEC();
      v20 = sub_1D8CFA924(v18, v19, &v25);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      if (a2)
      {
        v21 = 0x6C696E2D6E6F6ELL;
      }

      else
      {
        v21 = 7104878;
      }

      if (a2)
      {
        v22 = 0xE700000000000000;
      }

      else
      {
        v22 = 0xE300000000000000;
      }

      v23 = sub_1D8CFA924(v21, v22, &v25);

      *(v16 + 14) = v23;
      *(v16 + 22) = 1024;
      *(v16 + 24) = [objc_opt_self() supportsLocalLibrary];
      _os_log_impl(&dword_1D8CEC000, v14, v15, "[%s] Podcast UUID provided is %s, platform supports custom settings = %{BOOL}d. Will retrieve global settings", v16, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    return sub_1D90B52F0(a3);
  }
}

unint64_t sub_1D90B52F0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D918A530;
  *(inited + 32) = 0x6B63616279616C70;
  *(inited + 40) = 0xEF79654B65746152;
  [a1 playbackRateGlobalValue];
  v4 = _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(v3);
  v5 = MEMORY[0x1E69E6448];
  *(inited + 48) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = 0x80000001D91D5720;
  v6 = [a1 enhanceDialogueEnabledGlobalValue];
  *(inited + 120) = MEMORY[0x1E69E6370];
  *(inited + 96) = v6;
  v7 = sub_1D8E2696C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E8, &qword_1D9193650);
  swift_arrayDestroy();
  return v7;
}

void sub_1D90B5414(uint64_t a1, void *a2)
{
  v4 = sub_1D90B3254(a1);
  if ((v4 & 0x100000000) != 0)
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1ECAB0D98);
    v16 = sub_1D917741C();
    v17 = sub_1D9178CDC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v41 = v19;
      *v18 = 136315138;
      v20 = sub_1D9179FEC();
      v22 = sub_1D8CFA924(v20, v21, &v41);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "[%s  No or invalid rate provided. Not saving global playback rate value", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1DA72CB90](v19, -1, -1);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }
  }

  else
  {
    v5 = v4;
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1ECAB0D98);
    v7 = sub_1D917741C();
    v8 = sub_1D9178CDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v41 = v10;
      *v9 = 136315138;
      v11 = sub_1D9179FEC();
      v13 = sub_1D8CFA924(v11, v12, &v41);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1D8CEC000, v7, v8, "[%s]  Setting global playback rate value", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    LODWORD(v14) = v5;
    [a2 setPlaybackRateGlobalValue_];
  }

  v23 = sub_1D90B3824(a1);
  if (v23 == 2)
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v24 = sub_1D917744C();
    __swift_project_value_buffer(v24, qword_1ECAB0D98);
    oslog = sub_1D917741C();
    v25 = sub_1D9178CDC();
    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41 = v27;
      *v26 = 136315138;
      v28 = sub_1D9179FEC();
      v30 = sub_1D8CFA924(v28, v29, &v41);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1D8CEC000, oslog, v25, "[%s Not saving global enhance dialogue value", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1DA72CB90](v27, -1, -1);
      MEMORY[0x1DA72CB90](v26, -1, -1);
    }
  }

  else
  {
    v31 = v23;
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v32 = sub_1D917744C();
    __swift_project_value_buffer(v32, qword_1ECAB0D98);
    v33 = sub_1D917741C();
    v34 = sub_1D9178CDC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41 = v36;
      *v35 = 136315138;
      v37 = sub_1D9179FEC();
      v39 = sub_1D8CFA924(v37, v38, &v41);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "[%s] Setting global enhance dialogue enabled value", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1DA72CB90](v36, -1, -1);
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }

    [a2 setEnhanceDialogueEnabledGlobalValue_];
  }
}

uint64_t sub_1D90B59D4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  swift_beginAccess();
  sub_1D8D25D6C(v1 + v10, v9);
  v11 = sub_1D917734C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1D8D08A50(v9, &qword_1ECAB6DE0, &qword_1D9195250);
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_1ECAAFC10;

  sub_1D917730C();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_1D8D25E44(v6, v1 + v10);
  return swift_endAccess();
}

id AccountResolver.AccountInfo.primaryAccount.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *AccountResolver.AccountInfo.sharedAccount.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t AccountResolver.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v5 = sub_1D917734C();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v3 + v6) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  return v3;
}

uint64_t AccountResolver.init()()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v2 = sub_1D917734C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  return v0;
}

void sub_1D90B5D9C(uint64_t a1, void (*a2)(id *), uint64_t a3)
{
  v97 = a3;
  v94 = a2;
  v124 = *MEMORY[0x1E69E9840];
  v5 = sub_1D917734C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v83 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v83 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v83 - v13;
  v15 = *a1;
  v102 = *(a1 + 8);
  v16 = *(a1 + 16);
  v101 = *(a1 + 24);
  v17 = *(a1 + 32);
  v104 = *(a1 + 40);
  v103 = *(a1 + 48);
  sub_1D9178F5C();
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  v90 = v7;
  swift_beginAccess();
  v18 = qword_1ECAAFC10;
  v100 = v3;
  sub_1D90B59D4(v14);
  sub_1D91772FC();

  v88 = v6;
  v19 = *(v6 + 8);
  v99 = v5;
  v96 = v6 + 8;
  v95 = v19;
  v19(v14, v5);
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v20 = sub_1D917744C();
  v21 = __swift_project_value_buffer(v20, qword_1ECAB0D50);
  v22 = v103;
  v23 = v103;
  v24 = v15;

  v25 = v104;
  v26 = v15;
  v27 = v104;
  v86 = v21;
  v28 = sub_1D917741C();
  v29 = sub_1D9178D1C();

  v87 = v29;
  v30 = os_log_type_enabled(v28, v29);
  v93 = v26;
  v91 = v17;
  if (!v30)
  {

    v34 = v89;
    v33 = v88;
    goto LABEL_22;
  }

  v84 = v28;
  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  aBlock = v32;
  *v31 = 136446210;
  v113 = v26;
  v114 = v102;
  v85 = v16;
  v115 = v16;
  v116 = v101;
  v117 = v17;
  v118 = v25;
  v119 = v22;
  sub_1D90B82F4(v120);
  if (v121 <= 1u)
  {
    if (v121)
    {
      v68 = 0x6F48656C676E6973;
    }

    else
    {
      v68 = 0x5344656C676E6973;
    }

    if (v121)
    {
      v67 = 0xEC0000004449656DLL;
    }

    else
    {
      v67 = 0xEA00000000004449;
    }

    v16 = v85;
    v34 = v89;
    v33 = v88;
    goto LABEL_20;
  }

  v33 = v88;
  if (v121 == 2)
  {
    v67 = 0xEB00000000444965;
    v68 = 0x6D6F4869746C756DLL;
    v16 = v85;
    v34 = v89;
    goto LABEL_20;
  }

  v34 = v89;
  if (v121 == 3)
  {
    v67 = 0xEE00746E756F6363;
    v68 = 0x417972616D697270;
    v16 = v85;
LABEL_20:
    sub_1D90B7F50(v120);
    goto LABEL_21;
  }

  v67 = 0xE700000000000000;
  v68 = 0x6E776F6E6B6E75;
  v16 = v85;
LABEL_21:
  v35 = sub_1D8CFA924(v68, v67, &aBlock);

  *(v31 + 4) = v35;
  v36 = v84;
  _os_log_impl(&dword_1D8CEC000, v84, v87, "􀉩 AccountInfo: Using %{public}s", v31, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  MEMORY[0x1DA72CB90](v32, -1, -1);
  MEMORY[0x1DA72CB90](v31, -1, -1);

LABEL_22:
  sub_1D90B59D4(v34);
  v37 = *(v33 + 32);
  v38 = v92;
  v39 = v99;
  v37(v92, v34, v99);
  v40 = v98;
  (*(v33 + 16))(v98, v38, v39);
  v41 = (*(v33 + 80) + 49) & ~*(v33 + 80);
  v42 = swift_allocObject();
  v43 = v94;
  v44 = v97;
  *(v42 + 16) = v94;
  *(v42 + 24) = v44;
  *(v42 + 32) = "accounts(for:completion:)";
  *(v42 + 40) = 25;
  *(v42 + 48) = 2;
  v37((v42 + v41), v38, v39);
  v113 = v93;
  v114 = v102;
  v115 = v16;
  v116 = v101;
  v117 = v91;
  v118 = v104;
  v119 = v103;

  sub_1D90B82F4(v122);
  v45 = v122[0];
  if (v123 <= 1u)
  {
    if (!v123)
    {
      v48 = [objc_opt_self() sharedAccountStore];
      aBlock = 0;
      v49 = [v48 storeAccountForDSID:v45 error:&aBlock];

      v50 = aBlock;
      if (v49)
      {
        aBlock = v49;
        v108 = v49;
        LOWORD(v109) = 0;
        v51 = v49;
        v52 = v50;
        v43(&aBlock);
        sub_1D9178F4C();
        v53 = qword_1ECAAFC10;
        sub_1D91772FC();

        sub_1D90B7F50(v122);
      }

      else
      {
        v69 = aBlock;
        v70 = sub_1D9176A6C();

        swift_willThrow();
        v71 = v70;
        v72 = sub_1D917741C();
        v73 = sub_1D9178CFC();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          aBlock = v75;
          *v74 = 136446210;
          v105[0] = v70;
          v76 = v70;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
          v77 = sub_1D917826C();
          v79 = sub_1D8CFA924(v77, v78, &aBlock);

          *(v74 + 4) = v79;
          _os_log_impl(&dword_1D8CEC000, v72, v73, "Unable to resolve DSID: %{public}s", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v75);
          v80 = v75;
          v40 = v98;
          MEMORY[0x1DA72CB90](v80, -1, -1);
          MEMORY[0x1DA72CB90](v74, -1, -1);
        }

        aBlock = v70;
        v108 = 0;
        LOWORD(v109) = 256;
        v43(&aBlock);
        sub_1D9178F4C();
        v81 = qword_1ECAAFC10;
        sub_1D91772FC();
        sub_1D90B7F50(v122);

        v39 = v99;
      }

      goto LABEL_36;
    }

    v95(v40, v39);
    v64 = swift_allocObject();
    *(v64 + 16) = sub_1D90B7EB4;
    *(v64 + 24) = v42;
    v59 = *(v100 + OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection);

    v60 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    sub_1D90B7F50(v122);
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1D90B7F48;
    *(v65 + 24) = v64;
    v111 = sub_1D90B82F0;
    v112 = v65;
    aBlock = MEMORY[0x1E69E9820];
    v108 = 1107296256;
    v62 = &block_descriptor_16_1;
  }

  else
  {
    if (v123 != 2)
    {
      if (v123 == 3)
      {
        v105[0] = v122[0];
        v105[1] = v122[0];
        v106 = 0;
        sub_1D90B7FA4(v122, &aBlock);
        v46 = v45;
        v43(v105);
        sub_1D9178F4C();
        v47 = qword_1ECAAFC10;
        sub_1D91772FC();

        sub_1D90B7F50(v122);
      }

      else
      {
        v108 = 0;
        aBlock = 0;
        LOWORD(v109) = 256;
        v43(&aBlock);
        sub_1D9178F4C();
        v63 = qword_1ECAAFC10;
        sub_1D91772FC();
      }

LABEL_36:
      v95(v40, v39);
      goto LABEL_37;
    }

    v54 = v40;
    v56 = v122[2];
    v55 = v122[3];
    v95(v54, v39);
    v57 = swift_allocObject();
    v58 = v100;
    v57[2] = v100;
    v57[3] = v56;
    v57[4] = v55;
    v57[5] = sub_1D90B7EB4;
    v57[6] = v42;
    v59 = *(v58 + OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection);

    v60 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v61 = swift_allocObject();
    *(v61 + 16) = sub_1D90B7F30;
    *(v61 + 24) = v57;
    v111 = sub_1D90B7F40;
    v112 = v61;
    aBlock = MEMORY[0x1E69E9820];
    v108 = 1107296256;
    v62 = &block_descriptor_78;
  }

  v109 = sub_1D90B7D50;
  v110 = v62;
  v66 = _Block_copy(&aBlock);

  [v59 getHomeUserIdForSharedUserId:v60 completion:v66];
  _Block_release(v66);

LABEL_37:
  v82 = *MEMORY[0x1E69E9840];
}

void sub_1D90B6B18(__int128 *a1, void (*a2)(__int128 *))
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  a2(&v5);
  sub_1D9178F4C();
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_1ECAAFC10;
  sub_1D91772FC();
}

uint64_t sub_1D90B6C0C(void *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D9177E0C();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D9177E9C();
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  sub_1D8CFD888();
  v18 = sub_1D9178E1C();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = v17;
  aBlock[4] = sub_1D90B8210;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_31_3;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  sub_1D90B821C(v17);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBDA8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v16, v12, v20);
  _Block_release(v20);

  (*(v24 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v23);
}

void sub_1D90B6EE8(void *a1, void (*a2)(void **), uint64_t a3, void *a4)
{
  if (a1)
  {
    v7 = a1;
    v8 = a1;
    v9 = 0;
    v5 = a1;
    a2(&v7);
  }

  else
  {
    if (a4 == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4;
    }

    v7 = v6;
    v8 = 0;
    v9 = 256;
    sub_1D90B821C(a4);
    a2(&v7);
  }

  sub_1D90B823C(v7, v8, v9, SHIBYTE(v9));
}

void sub_1D90B6F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a7;
  v12[4] = a8;
  v13 = *(a4 + OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection);
  v14 = a1;

  v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1D90B82A8;
  *(v16 + 24) = v12;
  v18[4] = sub_1D90B82F0;
  v18[5] = v16;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1D90B7D50;
  v18[3] = &block_descriptor_41_2;
  v17 = _Block_copy(v18);

  [v13 getHomeUserIdForSharedUserId:v15 completion:v17];
  _Block_release(v17);
}

uint64_t sub_1D90B70F4(void *a1, char a2, void **a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1D9177E0C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9177E9C();
  v43 = *(v17 - 8);
  v44 = v17;
  v18 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 && a1)
  {
    v42 = v13;
    v21 = a2 & 1;
    sub_1D8CFD888();
    v22 = a1;
    v23 = a4;
    v41 = v16;
    v24 = a6;
    v25 = v12;
    v26 = a5;
    v27 = v23;
    v28 = v22;
    v29 = v27;
    v30 = sub_1D9178E1C();
    v31 = swift_allocObject();
    *(v31 + 16) = v26;
    *(v31 + 24) = v24;
    v12 = v25;
    *(v31 + 32) = a4;
    *(v31 + 40) = a1;
    v32 = v30;
    *(v31 + 48) = v21;
    v49 = sub_1D90B82C0;
    v50 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_1D8CF5F60;
    v48 = &block_descriptor_53;
    v33 = _Block_copy(&aBlock);
    v16 = v41;

    v34 = v29;
    v35 = v28;

    sub_1D9177E4C();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D8CFBDA8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v20, v16, v33);
    v36 = v33;
    v13 = v42;
    _Block_release(v36);
  }

  else
  {
    v37 = *a3;
    sub_1D8CFD888();
    v32 = sub_1D9178E1C();
    v38 = swift_allocObject();
    v38[2] = a5;
    v38[3] = a6;
    v38[4] = v37;
    v49 = sub_1D90B82B4;
    v50 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_1D8CF5F60;
    v48 = &block_descriptor_47_1;
    v39 = _Block_copy(&aBlock);

    sub_1D90B821C(v37);

    sub_1D9177E4C();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D8CFBDA8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v20, v16, v39);
    _Block_release(v39);
  }

  (*(v13 + 8))(v16, v12);
  return (*(v43 + 8))(v20, v44);
}

void sub_1D90B7594(void (*a1)(void **), uint64_t a2, void *a3)
{
  if (a3 == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3;
  }

  v9 = v4;
  v10 = 0;
  v11 = 256;
  sub_1D90B821C(a3);
  a1(&v9);
  v5 = v9;
  v6 = v10;
  v7 = HIBYTE(v11);
  v8 = v11;

  sub_1D90B823C(v5, v6, v8, v7);
}

void sub_1D90B7604(void (*a1)(void **), uint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = 0;
  v7 = a4;
  v8 = a3;
  a1(&v13);
  v9 = v13;
  v10 = v14;
  v11 = v16;
  v12 = v15;

  sub_1D90B823C(v9, v10, v12, v11);
}

void sub_1D90B7678(void *a1, void *a2, void *a3, void (*a4)(id, void, id *))
{
  v62[1] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v56 - v10;
  v12 = sub_1D9176EAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  if (a3)
  {
    v61[0] = a3;
    v20 = a3;
    a4(0, 0, v61);
    sub_1D90B8298(v61[0]);
    goto LABEL_19;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  sub_1D9176E4C();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D8D08A50(v11, &qword_1ECAB71E0, &unk_1D9197360);
LABEL_6:
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1ECAB0D50);

    v22 = sub_1D917741C();
    v23 = sub_1D9178CFC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v61[1] = a2;
      v62[0] = v25;
      *v24 = 136446210;
      v61[0] = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
      v26 = sub_1D917826C();
      v28 = sub_1D8CFA924(v26, v27, v62);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1D8CEC000, v22, v23, "Error resolving user. UserIDString missing. %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1DA72CB90](v25, -1, -1);
      MEMORY[0x1DA72CB90](v24, -1, -1);
    }

    v61[0] = 0;
    a4(0, 0, v61);
    goto LABEL_19;
  }

  (*(v13 + 32))(v19, v11, v12);
  v29 = [objc_opt_self() sharedAccountStore];
  v30 = sub_1D9176E6C();
  v61[0] = 0;
  v31 = [v29 storeAccountForHomeUserIdentifier:v30 error:v61];

  v32 = v61[0];
  if (v31)
  {
    v61[0] = 2;
    v33 = v32;
    v34 = v31;
    a4(v31, 0, v61);

    (*(v13 + 8))(v19, v12);
  }

  else
  {
    v35 = v61[0];
    v36 = sub_1D9176A6C();

    swift_willThrow();
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v37 = sub_1D917744C();
    __swift_project_value_buffer(v37, qword_1ECAB0D50);
    (*(v13 + 16))(v16, v19, v12);
    v38 = v36;
    v39 = sub_1D917741C();
    v40 = sub_1D9178CFC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v56 = v41;
      v59 = swift_slowAlloc();
      v61[0] = v59;
      *v41 = 136446466;
      sub_1D8CFBDA8(&qword_1EDCD5918, MEMORY[0x1E69695A8]);
      v58 = v39;
      v42 = sub_1D9179A4C();
      v60 = v36;
      v44 = v43;
      v57 = v40;
      v45 = *(v13 + 8);
      v45(v16, v12);
      v46 = sub_1D8CFA924(v42, v44, v61);
      v36 = v60;

      v47 = v56;
      *(v56 + 1) = v46;
      *(v47 + 6) = 2082;
      v62[0] = v36;
      v48 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
      v49 = sub_1D917826C();
      v51 = sub_1D8CFA924(v49, v50, v61);

      *(v47 + 14) = v51;
      v52 = v58;
      _os_log_impl(&dword_1D8CEC000, v58, v57, "Error resolving user from home identifier %{public}s - %{public}s", v47, 0x16u);
      v53 = v59;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v53, -1, -1);
      MEMORY[0x1DA72CB90](v47, -1, -1);
    }

    else
    {

      v45 = *(v13 + 8);
      v45(v16, v12);
    }

    v61[0] = v36;
    v54 = v36;
    a4(0, 0, v61);

    sub_1D90B8298(v61[0]);
    v45(v19, v12);
  }

LABEL_19:
  v55 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D90B7D50(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1D917820C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t AccountResolver.deinit()
{
  sub_1D8D08A50(v0 + OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID, &qword_1ECAB6DE0, &qword_1D9195250);

  return v0;
}

uint64_t AccountResolver.__deallocating_deinit()
{
  sub_1D8D08A50(v0 + OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID, &qword_1ECAB6DE0, &qword_1D9195250);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1D90B7EB4(__int128 *a1)
{
  v3 = *(*(sub_1D917734C() - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);

  sub_1D90B6B18(a1, v4);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation15AccountResolverC5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D90B8070(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D90B80C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1D90B8120(void *result, int a2)
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

uint64_t sub_1D90B8150(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D90B81AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_1D90B821C(id result)
{
  if (result != 2)
  {
    return sub_1D90B822C(result);
  }

  return result;
}

id sub_1D90B822C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_1D90B823C(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {

    sub_1D90B8288(a1);
  }

  else
  {
  }
}

void sub_1D90B8288(id a1)
{
  if (a1 >= 2)
  {
  }
}

void sub_1D90B8298(id a1)
{
  if (a1 != 2)
  {
    sub_1D90B8288(a1);
  }
}

id sub_1D90B82F4@<X0>(uint64_t a1@<X8>)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  if (*v1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *v1;
    goto LABEL_15;
  }

  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v8 = *(v1 + 8);
  if (v6)
  {
    if (v8 != v5 || v4 != v6)
    {
      v10 = *(v1 + 8);
      v11 = *(v1 + 16);
      v12 = *(v1 + 24);
      v13 = *(v1 + 32);
      if ((sub_1D9179ACC() & 1) == 0)
      {
        if (sub_1D9179ACC())
        {
          goto LABEL_11;
        }

        if ((sub_1D9179ACC() & 1) == 0)
        {

          v7 = 2;
          goto LABEL_14;
        }

LABEL_19:
        v16 = [objc_opt_self() sharedAccountStore];
        v20[0] = 0;
        v8 = [v16 activeStoreAccountWithError_];

        v17 = v20[0];
        if (v8)
        {
          v4 = 0;
          v5 = 0;
          v6 = 0;
          v7 = 3;
        }

        else
        {
          v18 = v17;
          v19 = sub_1D9176A6C();

          swift_willThrow();
          v8 = 0;
          v4 = 0;
          v5 = 0;
          v6 = 0;
          v7 = 4;
        }

        goto LABEL_14;
      }
    }

LABEL_13:

    v7 = 1;
    v8 = v5;
    v4 = v6;
    v5 = 0;
    v6 = 0;
    goto LABEL_14;
  }

LABEL_11:

  v5 = 0;
  v6 = 0;
  v7 = 1;
LABEL_14:
  v3 = 0;
LABEL_15:
  *a1 = v8;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t sub_1D90B8500(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_1D90B8898(v5, v7) & 1;
}

uint64_t sub_1D90B854C()
{
  v1 = *(v0 + 32);
  v2 = 0x5344656C676E6973;
  v3 = 0x6D6F4869746C756DLL;
  v4 = 0x417972616D697270;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*(v0 + 32))
  {
    v2 = 0x6F48656C676E6973;
  }

  if (*(v0 + 32) <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

id PlaybackUserContext.enqueuerDSID.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t PlaybackUserContext.requesterUserId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PlaybackUserContext.sharedUserId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void *PlaybackUserContext.primaryAccount.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *PlaybackUserContext.sharedAccount.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t PlaybackUserContext.init(enqueuerDSID:requesterUserId:sharedUserId:primaryAccount:sharedAccount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_1D90B86F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D90B8750(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation19PlaybackUserContextV0E4TypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t sub_1D90B87DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D90B8824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D90B886C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1D90B8898(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 32);
  if (v4 <= 1)
  {
    if (*(a1 + 32))
    {
      if (a2[2].i8[0] == 1)
      {
        if (v3 == a2->i64[0] && v2 == a2->i64[1])
        {
          return 1;
        }

        v16 = *a1;
        goto LABEL_27;
      }
    }

    else if (!a2[2].i8[0])
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      if (a2[2].i8[0] != 3)
      {
        return 0;
      }

LABEL_8:
      v5 = a2->i64[0];
      sub_1D8D6F530();
      return sub_1D917914C() & 1;
    }

    if (a2[2].i8[0] != 4)
    {
      return 0;
    }

    v14 = vorrq_s8(*a2, a2[1]);
    return !*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
  }

  if (a2[2].i8[0] != 2)
  {
    return 0;
  }

  v7 = a1[2];
  v8 = a1[3];
  v9 = a2[1].i64[0];
  v10 = a2[1].i64[1];
  if (v3 != a2->i64[0] || v2 != a2->i64[1])
  {
    v12 = *a1;
    v13 = sub_1D9179ACC();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (v7 == v9 && v8 == v10)
  {
    return 1;
  }

LABEL_27:

  return sub_1D9179ACC();
}

uint64_t sub_1D90B8A0C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8F5DED4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1D90B8FF0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D90B8A78()
{
  v1 = 0x62694C6C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x7265666E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x495041616964656DLL;
  }
}

uint64_t MediaRequest.Params.debugDescription.getter()
{
  v1 = sub_1D9179E7C();
  v39 = *(v1 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D8E2696C(MEMORY[0x1E69E7CC0]);
  *(&v46 + 1) = type metadata accessor for MediaRequest.Params();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v45);
  sub_1D8D85B08(v0, boxed_opaque_existential_0);
  sub_1D9179E3C();
  v38 = v4;
  sub_1D9179E6C();
  v7 = sub_1D917962C();

  sub_1D91797CC();
  v46 = v43;
  v47 = v44;
  v45 = v42;
  if (*(&v44 + 1))
  {
    while (1)
    {
      v8 = v45;
      sub_1D8D65618(&v46, &v42);
      if (!*(&v8 + 1))
      {
        goto LABEL_3;
      }

      sub_1D8CFAD1C(&v42, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v5;
      v10 = sub_1D8D33C70(v8, *(&v8 + 1));
      v12 = v5[2];
      v13 = (v11 & 1) == 0;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        goto LABEL_30;
      }

      v16 = v11;
      if (v5[3] < v15)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v20 = v10;
      sub_1D8F86F90();
      v10 = v20;
      if (v16)
      {
LABEL_12:
        v18 = v10;

        v5 = v40;
        v19 = (v40[7] + 32 * v18);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        sub_1D8D65618(v41, v19);
LABEL_3:
        __swift_destroy_boxed_opaque_existential_1Tm(&v42);
        goto LABEL_4;
      }

LABEL_14:
      v5 = v40;
      v40[(v10 >> 6) + 8] |= 1 << v10;
      *(v5[6] + 16 * v10) = v8;
      sub_1D8D65618(v41, (v5[7] + 32 * v10));
      __swift_destroy_boxed_opaque_existential_1Tm(&v42);
      v21 = v5[2];
      v14 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v14)
      {
        goto LABEL_31;
      }

      v5[2] = v22;
LABEL_4:
      sub_1D91797CC();
      v46 = v43;
      v47 = v44;
      v45 = v42;
      if (!*(&v44 + 1))
      {
        goto LABEL_16;
      }
    }

    sub_1D900C074(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_1D8D33C70(v8, *(&v8 + 1));
    if ((v16 & 1) != (v17 & 1))
    {
      goto LABEL_32;
    }

LABEL_11:
    if (v16)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_16:
  v37 = v1;

  v23 = v5[2];
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v25 = sub_1D8F0638C(v5[2], 0);
    v26 = sub_1D8F0C030(&v45, v25 + 2, v23, v5);

    sub_1D8D1B144();
    if (v26 == v23)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  v25 = v24;
LABEL_20:
  *&v45 = v25;
  sub_1D90B8A0C(&v45);
  v27 = v45;
  v28 = *(v45 + 16);
  if (v28)
  {
    v36 = v5;
    *&v41[0] = v24;
    sub_1D8D41BE0(0, v28, 0);
    v29 = 0;
    v30 = v27 + 32;
    v7 = *&v41[0];
    while (v29 < *(v27 + 16))
    {
      sub_1D90BA474(v30, &v45);
      *&v42 = 0;
      *(&v42 + 1) = 0xE000000000000000;
      MEMORY[0x1DA7298F0](v45, *(&v45 + 1));
      MEMORY[0x1DA7298F0](2362, 0xE200000000000000);
      sub_1D917964C();
      v31 = v42;
      sub_1D90BA4E4(&v45);
      *&v41[0] = v7;
      v33 = v7[2];
      v32 = v7[3];
      if (v33 >= v32 >> 1)
      {
        sub_1D8D41BE0((v32 > 1), v33 + 1, 1);
        v7 = *&v41[0];
      }

      ++v29;
      v7[2] = v33 + 1;
      *&v7[2 * v33 + 4] = v31;
      v30 += 48;
      if (v28 == v29)
      {

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    sub_1D9179CFC();
    __break(1u);

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_28:
    *&v45 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8D72B0C();
    v34 = sub_1D917817C();

    (*(v39 + 8))(v38, v37);
    return v34;
  }

  return result;
}

uint64_t sub_1D90B8FF0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D9179A2C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45F8, &qword_1D918A060);
        v5 = sub_1D917867C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D90B921C(v7, v8, a1, v4);
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
    return sub_1D90B90F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D90B90F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3;
    v8 = result - a3;
LABEL_6:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      sub_1D90BA474(v10, v20);
      v11 = v10 - 3;
      sub_1D90BA474((v10 - 3), v19);
      if (v19[0] == v20[0] && v19[1] == v20[1])
      {
        sub_1D90BA4E4(v19);
        result = sub_1D90BA4E4(v20);
LABEL_5:
        ++v4;
        v7 += 48;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v13 = sub_1D9179ACC();
      sub_1D90BA4E4(v19);
      result = sub_1D90BA4E4(v20);
      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v15 = v10[1];
      v14 = v10[2];
      v16 = *v10;
      v17 = *(v10 - 2);
      *v10 = *v11;
      v10[1] = v17;
      v10[2] = *(v10 - 1);
      *v11 = v16;
      *(v10 - 2) = v15;
      v10 -= 3;
      v11[2] = v14;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D90B921C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v7 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v109 = v8;
      v92 = *(v8 + 2);
      if (v92 >= 2)
      {
        while (*a3)
        {
          v93 = *&v8[16 * v92];
          v94 = *&v8[16 * v92 + 24];
          sub_1D90B98E8((*a3 + 48 * v93), (*a3 + 48 * *&v8[16 * v92 + 16]), (*a3 + 48 * v94), v7);
          if (v5)
          {
          }

          if (v94 < v93)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D8F5DE20(v8);
          }

          if (v92 - 2 >= *(v8 + 2))
          {
            goto LABEL_130;
          }

          v95 = &v8[16 * v92];
          *v95 = v93;
          *(v95 + 1) = v94;
          v109 = v8;
          result = sub_1D8F5DD94(v92 - 1);
          v8 = v109;
          v92 = *(v109 + 2);
          if (v92 <= 1)
          {
          }
        }

        goto LABEL_140;
      }
    }

LABEL_136:
    result = sub_1D8F5DE20(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3;
      sub_1D90BA474(*a3 + 48 * v7, &v107);
      sub_1D90BA474(v10 + 48 * v9, &v105);
      v11 = v105 == v107 && v106 == v108;
      v97 = v5;
      if (v11)
      {
        v102 = 0;
      }

      else
      {
        v102 = sub_1D9179ACC();
      }

      sub_1D90BA4E4(&v105);
      result = sub_1D90BA4E4(&v107);
      v12 = v9 + 2;
      v99 = v9;
      v5 = 48 * v9;
      v13 = v10 + 48 * v9 + 96;
      v14 = v5 + 48;
      do
      {
        v16 = v12;
        v17 = v7;
        v18 = v14;
        if (v12 >= v6)
        {
          break;
        }

        sub_1D90BA474(v13, &v107);
        sub_1D90BA474(v13 - 48, &v105);
        v19 = v105 == v107 && v106 == v108;
        v15 = v19 ? 0 : sub_1D9179ACC();
        sub_1D90BA4E4(&v105);
        result = sub_1D90BA4E4(&v107);
        v12 = (v16 + 1);
        v13 += 48;
        ++v7;
        v14 = v18 + 48;
      }

      while (((v102 ^ v15) & 1) == 0);
      if (v102)
      {
        v9 = v99;
        if (v16 < v99)
        {
          goto LABEL_133;
        }

        if (v99 < v16)
        {
          v20 = v99;
          do
          {
            if (v20 != v17)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v23 = (v22 + v5);
              v24 = (v22 + v18);
              v25 = *v23;
              v26 = v23[1];
              v27 = v23[2];
              v29 = v24[1];
              v28 = v24[2];
              *v23 = *v24;
              v23[1] = v29;
              v23[2] = v28;
              v24[1] = v26;
              v24[2] = v27;
              *v24 = v25;
            }

            ++v20;
            v18 -= 48;
            v5 += 48;
          }

          while (v20 < v17--);
        }

        v7 = v16;
        v5 = v97;
      }

      else
      {
        v7 = v16;
        v5 = v97;
        v9 = v99;
      }
    }

    v30 = a3[1];
    if (v7 < v30)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_132;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D8ECC734(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_1D8ECC734((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_141;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_73:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_87:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_94:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_1D90B98E8((*a3 + 48 * v89), (*a3 + 48 * *&v8[16 * v50 + 32]), (*a3 + 48 * v90), v49);
        if (v5)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D8F5DE20(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        v109 = v8;
        result = sub_1D8F5DD94(v50);
        v8 = v109;
        v47 = *(v109 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v31 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_134;
  }

  if (v31 >= v30)
  {
    v31 = a3[1];
  }

  if (v31 < v9)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v7 == v31)
  {
    goto LABEL_53;
  }

  v98 = v5;
  v100 = v9;
  v32 = *a3;
  v33 = *a3 + 48 * v7;
  v34 = v9 - v7;
  v103 = v31;
LABEL_42:
  v35 = v34;
  v36 = v33;
  while (1)
  {
    sub_1D90BA474(v36, &v107);
    v37 = v36 - 3;
    sub_1D90BA474((v36 - 3), &v105);
    if (v105 == v107 && v106 == v108)
    {
      sub_1D90BA4E4(&v105);
      sub_1D90BA4E4(&v107);
LABEL_41:
      ++v7;
      v33 += 48;
      --v34;
      if (v7 == v103)
      {
        v7 = v103;
        v5 = v98;
        v9 = v100;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v39 = sub_1D9179ACC();
    sub_1D90BA4E4(&v105);
    result = sub_1D90BA4E4(&v107);
    if ((v39 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v32)
    {
      break;
    }

    v41 = v36[1];
    v40 = v36[2];
    v42 = *v36;
    v43 = *(v36 - 2);
    *v36 = *v37;
    v36[1] = v43;
    v36[2] = *(v36 - 1);
    *v37 = v42;
    *(v36 - 2) = v41;
    v36 -= 3;
    v37[2] = v40;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_1D90B98E8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[48 * v11] <= a4)
    {
      memmove(a4, __src, 48 * v11);
    }

    v12 = &v4[48 * v11];
    if (v10 < 48 || v6 <= v7)
    {
LABEL_43:
      v18 = v6;
    }

    else
    {
      do
      {
        v18 = v6 - 48;
        v19 = v12 - 48;
        v5 -= 48;
        while (1)
        {
          sub_1D90BA474(v19, &v32);
          sub_1D90BA474((v6 - 48), &v30);
          v22 = v30 == v32 && v31 == v33;
          v23 = v22 ? 0 : sub_1D9179ACC();
          sub_1D90BA4E4(&v30);
          sub_1D90BA4E4(&v32);
          if (v23)
          {
            break;
          }

          if (v5 + 48 != v19 + 48)
          {
            v24 = *v19;
            v25 = *(v19 + 2);
            *(v5 + 1) = *(v19 + 1);
            *(v5 + 2) = v25;
            *v5 = v24;
          }

          v20 = v19 - 48;
          v5 -= 48;
          v21 = v19 > v4;
          v19 -= 48;
          if (!v21)
          {
            v12 = v20 + 48;
            goto LABEL_43;
          }
        }

        if (v5 + 48 != v6)
        {
          v26 = *v18;
          v27 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v27;
          *v5 = v26;
        }

        v12 = v19 + 48;
        if (v19 + 48 <= v4)
        {
          break;
        }

        v6 -= 48;
      }

      while (v18 > v7);
      v12 = v19 + 48;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 >= 48 && v6 < v5)
    {
      while (1)
      {
        sub_1D90BA474(v6, &v32);
        sub_1D90BA474(v4, &v30);
        v13 = v30 == v32 && v31 == v33;
        if (v13)
        {
          break;
        }

        v14 = sub_1D9179ACC();
        sub_1D90BA4E4(&v30);
        sub_1D90BA4E4(&v32);
        if ((v14 & 1) == 0)
        {
          goto LABEL_16;
        }

        v15 = v6;
        v13 = v7 == v6;
        v6 += 48;
        if (!v13)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 48;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      sub_1D90BA4E4(&v30);
      sub_1D90BA4E4(&v32);
LABEL_16:
      v15 = v4;
      v13 = v7 == v4;
      v4 += 48;
      if (v13)
      {
        goto LABEL_18;
      }

LABEL_17:
      v16 = *v15;
      v17 = *(v15 + 2);
      *(v7 + 1) = *(v15 + 1);
      *(v7 + 2) = v17;
      *v7 = v16;
      goto LABEL_18;
    }

LABEL_20:
    v18 = v7;
  }

  v28 = (v12 - v4) / 48;
  if (v18 != v4 || v18 >= &v4[48 * v28])
  {
    memmove(v18, v4, 48 * v28);
  }

  return 1;
}

unint64_t sub_1D90B9BD8(unint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  *(v4 + 25) = *(a2 + 25);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_1D90B9C30(unint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  result = memcpy((a4[6] + 264 * a1), a2, 0x108uLL);
  *(a4[7] + 8 * a1) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1D90B9CAC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1D917653C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1D90B9D58(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D917653C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1D90B9E10(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 72 * result;
  v5 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v5;
  *(v4 + 64) = *(a2 + 64);
  v6 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v6;
  *(a4[7] + 8 * result) = a3;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

uint64_t sub_1D90B9EC8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  result = sub_1D8F86EDC(a2, v11 + *(*(v12 - 8) + 72) * a1, a6);
  *(a4[7] + 8 * a1) = a3;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_1D90B9F74(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1D90BA01C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_1D8F86EDC(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1D90BA0C4(unint64_t result, __int16 a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 2 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1D90BA108(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1D90BA14C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D8D65618(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_1D90BA1B8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1D8D65618(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1D90BA234(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_1D9176E3C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1D90BA2E0(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1D90BA328(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4 & 1;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_1D90BA37C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for EpisodePlayState();
  result = sub_1D8F86EDC(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for EpisodePlayState);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1D90BA424(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_1D90BA474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45F8, &qword_1D918A060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D90BA4E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45F8, &qword_1D918A060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D90BA54C(uint64_t a1)
{
  *(a1 + 8) = sub_1D90BA57C();
  result = sub_1D90BA5D0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D90BA57C()
{
  result = qword_1ECABA230;
  if (!qword_1ECABA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA230);
  }

  return result;
}

unint64_t sub_1D90BA5D0()
{
  result = qword_1ECABA238;
  if (!qword_1ECABA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA238);
  }

  return result;
}

id sub_1D90BA724()
{
  v2.receiver = v0;
  v2.super_class = _s19TaskMetricsDelegateCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D90BA814(void *a1)
{
  v2 = v1;
  v4 = sub_1D917665C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v9 = sub_1D917744C();
  __swift_project_value_buffer(v9, qword_1ECAB0D50);
  v10 = a1;
  v11 = sub_1D917741C();
  v12 = sub_1D9178D1C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = [v10 taskInterval];
    sub_1D917663C();

    sub_1D917664C();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    *(v13 + 4) = v16;
    _os_log_impl(&dword_1D8CEC000, v11, v12, "MAPI request duration: %fs", v13, 0xCu);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  v17 = *(v2 + OBJC_IVAR____TtCC18PodcastsFoundation20PodcastsMediaLibrary19TaskMetricsDelegate_strongRef);
  *(v2 + OBJC_IVAR____TtCC18PodcastsFoundation20PodcastsMediaLibrary19TaskMetricsDelegate_strongRef) = 0;
}

uint64_t PodcastsContentKeySession.__allocating_init(storeTrackAdamID:)(uint64_t a1)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  type metadata accessor for PodcastsContentKeySession();
  swift_allocObject();
  return PodcastsContentKeySession.init(storeTrackAdamID:account:)(a1, v3);
}

uint64_t PodcastsContentKeySession.init(storeTrackAdamID:account:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  v18 = v17[8];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v50 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  if (v26)
  {
    v27 = v26;
    if (a2)
    {
      v28 = [a2 ams_DSID];
      if (v28)
      {
        v60 = v17;
        v29 = v28;
        v30 = objc_opt_self();
        v58 = v29;
        v31 = [v30 specificAccountWithDSID_];
        v32 = objc_allocWithZone(MEMORY[0x1E69E4618]);
        v57 = v31;
        v56 = [v32 initWithIdentity_];
        v59 = [objc_opt_self() sharedInstance];
        if ([v59 syncValueForKey_])
        {
          sub_1D917928C();
          swift_unknownObjectRelease();
        }

        else
        {
          v62 = 0u;
          v63 = 0u;
        }

        v33 = v60;
        v64 = v62;
        v65 = v63;
        if (*(&v63 + 1))
        {
          v34 = swift_dynamicCast();
          v54 = v33[7];
          v55 = v33 + 7;
          v54(v15, v34 ^ 1u, 1, v16);
          v52 = v33[6];
          v53 = v33 + 6;
          if (v52(v15, 1, v16) != 1)
          {
            v36 = v33[4];
            v50 = v33 + 4;
            v51 = v36;
            v36(v25, v15, v16);
            v37 = v59;
            if ([v59 syncValueForKey_])
            {
              sub_1D917928C();
              v33 = v60;
              swift_unknownObjectRelease();
            }

            else
            {
              v62 = 0u;
              v63 = 0u;
            }

            v64 = v62;
            v65 = v63;
            if (*(&v63 + 1))
            {
              v38 = swift_dynamicCast();
              v54(v12, v38 ^ 1u, 1, v16);
              if (v52(v12, 1, v16) != 1)
              {
                v51(v61, v12, v16);
                if ([v37 syncValueForKey_])
                {
                  sub_1D917928C();
                  v33 = v60;
                  swift_unknownObjectRelease();
                }

                else
                {
                  v62 = 0u;
                  v63 = 0u;
                }

                v64 = v62;
                v65 = v63;
                if (*(&v63 + 1))
                {
                  v39 = swift_dynamicCast();
                  v54(v9, v39 ^ 1u, 1, v16);
                  if (v52(v9, 1, v16) != 1)
                  {
                    v51(v20, v9, v16);
                    v43 = objc_allocWithZone(MEMORY[0x1E69E43F8]);
                    v44 = v56;
                    v45 = [v43 initWithRequestContext_];
                    [v45 setAdamID_];
                    v46 = sub_1D9176B1C();
                    [v45 setKeyServerURL_];

                    v47 = sub_1D9176B1C();
                    [v45 setStreamingleaseStopURL_];

                    v48 = sub_1D9176B1C();
                    [v45 setKeyCertificateURL_];

                    [v45 setKeyServerProtocolType_];
                    v49 = v33[1];
                    v49(v20, v16);
                    v49(v61, v16);
                    v49(v25, v16);
                    *(v3 + 16) = v45;
                    return v3;
                  }

                  v40 = v33[1];
                  v40(v61, v16);
                  v40(v25, v16);
                }

                else
                {

                  v41 = v33[1];
                  v41(v61, v16);
                  v41(v25, v16);
                  sub_1D8D08A50(&v64, &qword_1ECAB57F0, &unk_1D9190AA0);
                  v54(v9, 1, 1, v16);
                }

                v35 = v9;
                goto LABEL_31;
              }

              (v33[1])(v25, v16);
            }

            else
            {
              (v33[1])(v25, v16);

              sub_1D8D08A50(&v64, &qword_1ECAB57F0, &unk_1D9190AA0);
              v54(v12, 1, 1, v16);
            }

            v35 = v12;
LABEL_31:
            sub_1D8D08A50(v35, &unk_1ECAB5910, &qword_1D9188C90);
            goto LABEL_32;
          }
        }

        else
        {

          sub_1D8D08A50(&v64, &qword_1ECAB57F0, &unk_1D9190AA0);
          (v33[7])(v15, 1, 1, v16);
        }

        v35 = v15;
        goto LABEL_31;
      }
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_32:
  type metadata accessor for PodcastsContentKeySession();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1D90BB3F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1D90BB744;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D8E8A43C;
  v8[3] = &block_descriptor_79;
  v7 = _Block_copy(v8);

  [v5 stopSessionInvalidatingKeys:1 withCompletion:v7];
  _Block_release(v7);
}

uint64_t sub_1D90BB4D8(id a1, uint64_t (*a2)(id))
{
  if (a1)
  {
    v4 = a1;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1EDCD0F68);
    v6 = a1;
    v7 = sub_1D917741C();
    v8 = sub_1D9178CFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136446210;
      swift_getErrorValue();
      v11 = sub_1D9179D2C();
      v13 = sub_1D8CFA924(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1D8CEC000, v7, v8, "[PodcastsContentKeySession]: Unable to invalidate and stop session with error: %{public}s.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1EDCD0F68);
    v15 = sub_1D917741C();
    v16 = sub_1D9178D1C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "[PodcastsContentKeySession]: Successfully invalidated and stopped session.", v17, 2u);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }
  }

  return a2(a1);
}

id sub_1D90BB774(const char *a1, const char **a2)
{
  v5 = v2;
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F68);
  v7 = sub_1D917741C();
  v8 = sub_1D9178D1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D8CEC000, v7, v8, a1, v9, 2u);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  v10 = *(v5 + 16);
  v11 = *a2;

  return [v10 v11];
}

uint64_t PodcastsContentKeySession.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D90BB988()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = *(v1 + 224);
  if (!v2)
  {
    goto LABEL_12;
  }

  if (v2 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x1DA72AA90](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v4 = *(v2 + 32);
  }

  v5 = *(v4 + 16);
  v6 = *(v4 + 24);

  v7 = sub_1D917980C();

  if (v7 <= 3)
  {
    LOBYTE(v2) = sub_1D8FDDEC0(v7, 2);
    goto LABEL_12;
  }

LABEL_11:
  LOBYTE(v2) = 0;
LABEL_12:
  v8 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *(v8 + 16);
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = *(v9 + 16);
  if (v10 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  if ((v10 & 0xC000000000000001) != 0)
  {

    v11 = MEMORY[0x1DA72AA90](0, v10);

LABEL_19:
    v12 = *&v11[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes];

    v13 = *(v12 + 74);

    if (v13 != 2)
    {
      if ((v2 & 1) == 0)
      {
        v14 = 0;
        return v14 & 1;
      }

      goto LABEL_21;
    }

LABEL_20:
    LOBYTE(v13) = 0;
    v14 = 0;
    if ((v2 & 1) == 0)
    {
      return v14 & 1;
    }

LABEL_21:
    v14 = v13 ^ 1;
    return v14 & 1;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);
    goto LABEL_19;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1D90BBB70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x62694C6C61636F6CLL;
  v4 = 0xEC00000079726172;
  if (v2 != 1)
  {
    v3 = 0x7265666E69;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x495041616964656DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x62694C6C61636F6CLL;
  v8 = 0xEC00000079726172;
  if (*a2 != 1)
  {
    v7 = 0x7265666E69;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x495041616964656DLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D90BBC7C()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D90BBD24()
{
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D90BBDB8()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D90BBE5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D90BC268();
  *a2 = result;
  return result;
}

void sub_1D90BBE8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEC00000079726172;
  v5 = 0x62694C6C61636F6CLL;
  if (v2 != 1)
  {
    v5 = 0x7265666E69;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x495041616964656DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_1D90BBEF0()
{
  qword_1ECABA2C8 = &type metadata for MediaAPIProviderFactory;
  unk_1ECABA2D0 = &off_1F54823A8;
  qword_1ECABA300 = &_s22MAPIRequestTransformerVN;
  unk_1ECABA308 = &off_1F54819B8;
  qword_1ECABA310 = 1;
  qword_1ECABA2D8 = 5;
  byte_1ECABA2E0 = 1;
}

void sub_1D90BBF9C()
{
  qword_1ECAB2BB8 = &type metadata for DefaultProviderFactory;
  unk_1ECAB2BC0 = &off_1F54823C8;
  qword_1ECAB2BF0 = &_s22MAPIRequestTransformerVN;
  unk_1ECAB2BF8 = &off_1F54819B8;
  qword_1ECAB2C00 = 1;
  qword_1ECAB2BC8 = 40;
  byte_1ECAB2BD0 = 0;
}

uint64_t sub_1D90BC008@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_1D90BBF5C(a2, v4);
}

uint64_t static PodcastsMediaLibrary.Configuration.platform.getter@<X0>(uint64_t a1@<X8>)
{
  if ([objc_opt_self() isRunningOnHomepod])
  {
    if (qword_1ECAB3710 != -1)
    {
      swift_once();
    }

    v2 = &unk_1ECABA2B0;
  }

  else
  {
    if (qword_1ECAB2B98 != -1)
    {
      swift_once();
    }

    v2 = &unk_1ECAB2BA0;
  }

  return sub_1D90BBF5C(v2, a1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D90BC150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D90BC198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D90BC214()
{
  result = qword_1ECABA318;
  if (!qword_1ECABA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA318);
  }

  return result;
}

uint64_t sub_1D90BC268()
{
  v0 = sub_1D917980C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t static PodcastsMediaLibrary.Error.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 2)
  {
    if (v2 == 3)
    {
      if (v3 == 3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v2 != 4)
      {
        if (v2 != 5 || v3 != 5)
        {
          goto LABEL_16;
        }

        goto LABEL_20;
      }

      if (v3 == 4)
      {
        goto LABEL_20;
      }
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      if (v2 != 2 || v3 != 2)
      {
        goto LABEL_16;
      }

LABEL_20:
      v6 = 1;
      goto LABEL_21;
    }

    if (v3 == 1)
    {
      goto LABEL_20;
    }
  }

  else if (!v3)
  {
    goto LABEL_20;
  }

LABEL_16:
  v6 = 0;
LABEL_21:
  sub_1D90BC378(*a1);
  sub_1D90BC378(v3);
  sub_1D90BC388(v2);
  sub_1D90BC388(v3);
  return v6;
}

id sub_1D90BC378(id result)
{
  if (result >= 7)
  {
    return result;
  }

  return result;
}

void sub_1D90BC388(id a1)
{
  if (a1 >= 7)
  {
  }
}

uint64_t sub_1D90BC398(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 2)
  {
    if (v2 == 3)
    {
      if (v3 == 3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v2 != 4)
      {
        if (v2 != 5 || v3 != 5)
        {
          goto LABEL_16;
        }

        goto LABEL_20;
      }

      if (v3 == 4)
      {
        goto LABEL_20;
      }
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      if (v2 != 2 || v3 != 2)
      {
        goto LABEL_16;
      }

LABEL_20:
      v6 = 1;
      goto LABEL_21;
    }

    if (v3 == 1)
    {
      goto LABEL_20;
    }
  }

  else if (!v3)
  {
    goto LABEL_20;
  }

LABEL_16:
  v6 = 0;
LABEL_21:
  sub_1D90BC378(*a1);
  sub_1D90BC378(v3);
  sub_1D90BC388(v2);
  sub_1D90BC388(v3);
  return v6;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation0A12MediaLibraryC5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D90BC474(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D90BC4D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_1D90BC534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D90BF3EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D90BC55C(uint64_t a1)
{
  v2 = sub_1D8CFE96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BC598(uint64_t a1)
{
  v2 = sub_1D8CFE96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90BC5E4(uint64_t a1)
{
  v2 = sub_1D90BED20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BC620(uint64_t a1)
{
  v2 = sub_1D90BED20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90BC65C(uint64_t a1)
{
  v2 = sub_1D8CFE9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BC698(uint64_t a1)
{
  v2 = sub_1D8CFE9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90BC6D4(uint64_t a1)
{
  v2 = sub_1D90BECCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BC710(uint64_t a1)
{
  v2 = sub_1D90BECCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90BC758(uint64_t a1)
{
  v2 = sub_1D90BEC78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BC794(uint64_t a1)
{
  v2 = sub_1D90BEC78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D90BC7D0()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_1D90BC818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91D59E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

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

uint64_t sub_1D90BC900(uint64_t a1)
{
  v2 = sub_1D90BEAF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BC93C(uint64_t a1)
{
  v2 = sub_1D90BEAF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90BC978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D90BC9F8(uint64_t a1)
{
  v2 = sub_1D90BED74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BCA34(uint64_t a1)
{
  v2 = sub_1D90BED74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90BCA70(uint64_t a1)
{
  v2 = sub_1D90BEB48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BCAAC(uint64_t a1)
{
  v2 = sub_1D90BEB48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90BCAE8()
{
  if (*v0)
  {
    result = 0x496C616974696E69;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1D90BCB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x496C616974696E69 && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

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

uint64_t sub_1D90BCBF8(uint64_t a1)
{
  v2 = sub_1D90BEC24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BCC34(uint64_t a1)
{
  v2 = sub_1D90BEC24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90BCC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D90BCCF8(uint64_t a1)
{
  v2 = sub_1D90BEA4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BCD34(uint64_t a1)
{
  v2 = sub_1D90BEA4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MediaIdentifier.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = *(v1 + 32);
  if (v11 <= 3)
  {
    if (*(v1 + 32) > 1u)
    {
      if (v11 != 2)
      {
        MEMORY[0x1DA72B390](4, v6);
LABEL_29:

        return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      MEMORY[0x1DA72B390](3, v6);
      result = MEMORY[0x1DA72B390](*(v9 + 16));
      v15 = *(v9 + 16);
      if (v15)
      {
        v16 = (v9 + 40);
        do
        {
          v17 = *(v16 - 1);
          v18 = *v16;

          _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

          v16 += 2;
          --v15;
        }

        while (v15);
      }
    }

    else
    {
      if (!*(v1 + 32))
      {
        MEMORY[0x1DA72B390](1, v6);
        v14 = v9;
        return MEMORY[0x1DA72B3C0](v14);
      }

      MEMORY[0x1DA72B390](2, v6);
      result = MEMORY[0x1DA72B390](*(v9 + 16));
      v23 = *(v9 + 16);
      if (v23)
      {
        v24 = (v9 + 32);
        do
        {
          v25 = *v24++;
          result = MEMORY[0x1DA72B3C0](v25);
          --v23;
        }

        while (v23);
      }
    }
  }

  else
  {
    v12 = *(v1 + 16);
    if (*(v1 + 32) > 5u)
    {
      if (v11 != 6)
      {
        if (v11 != 7)
        {
          return MEMORY[0x1DA72B390](0, v6);
        }

        MEMORY[0x1DA72B390](8, v6);

        return sub_1D8E8874C(a1, v9);
      }

      MEMORY[0x1DA72B390](7, v6);
      MEMORY[0x1DA72B390](*(v9 + 16));
      v20 = *(v9 + 16);
      if (v20)
      {
        v21 = (v9 + 32);
        do
        {
          v22 = *v21++;
          MEMORY[0x1DA72B3C0](v22);
          --v20;
        }

        while (v20);
      }

      if (v12)
      {
        return sub_1D9179DDC();
      }

      sub_1D9179DDC();
      v14 = v10;
      return MEMORY[0x1DA72B3C0](v14);
    }

    if (v11 == 4)
    {
      v19 = *(v1 + 24);
      MEMORY[0x1DA72B390](5, v6);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      if (!v19)
      {
        return sub_1D9179DDC();
      }

      sub_1D9179DDC();
      goto LABEL_29;
    }

    MEMORY[0x1DA72B390](6, v6);
    result = MEMORY[0x1DA72B390](*(v9 + 16));
    v26 = *(v9 + 16);
    if (v26)
    {
      v27 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v28 = *(v4 + 72);
      do
      {
        sub_1D90BEDC8(v27, v8);
        PodcastsMediaLibrary.MediaItemSnapshot.hash(into:)();
        result = sub_1D90BEE2C(v8);
        v27 += v28;
        --v26;
      }

      while (v26);
    }
  }

  return result;
}

uint64_t MediaIdentifier.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1D9179DBC();
  MediaIdentifier.hash(into:)(v4);
  return sub_1D9179E1C();
}

uint64_t MediaIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA3E0, &qword_1D91B3E98);
  v4 = *(v3 - 8);
  v114 = v3;
  v115 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v123 = &v95 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA3E8, &qword_1D91B3EA0);
  v113 = *(v116 - 8);
  v7 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v95 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA3F0, &qword_1D91B3EA8);
  v111 = *(v9 - 8);
  v112 = v9;
  v10 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v122 = &v95 - v11;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA3F8, &qword_1D91B3EB0);
  v109 = *(v110 - 8);
  v12 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v121 = &v95 - v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA400, &qword_1D91B3EB8);
  v108 = *(v103 - 8);
  v14 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v117 = &v95 - v15;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA408, &qword_1D91B3EC0);
  v106 = *(v107 - 8);
  v16 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v120 = &v95 - v17;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA410, &qword_1D91B3EC8);
  v104 = *(v105 - 8);
  v18 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v119 = &v95 - v19;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA418, &qword_1D91B3ED0);
  v101 = *(v102 - 8);
  v20 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v22 = &v95 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA420, &qword_1D91B3ED8);
  v100 = *(v23 - 8);
  v24 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v95 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA428, &unk_1D91B3EE0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v95 - v30;
  v33 = a1[3];
  v32 = a1[4];
  v125 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1D8CFE96C();
  v34 = v126;
  sub_1D9179EEC();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v125);
  }

  v96 = v26;
  v95 = v23;
  v97 = v22;
  v35 = v119;
  v36 = v120;
  v38 = v121;
  v37 = v122;
  v98 = 0;
  v39 = v123;
  v99 = v28;
  v40 = v124;
  v126 = v27;
  v41 = sub_1D917991C();
  v42 = (2 * *(v41 + 16)) | 1;
  v128 = v41;
  v129 = v41 + 32;
  v130 = 0;
  v131 = v42;
  v43 = sub_1D8E89BDC();
  if (v43 == 9 || v130 != v131 >> 1)
  {
    v49 = v31;
    v50 = sub_1D917951C();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50) + 48);
    *v52 = &type metadata for MediaIdentifier;
    v54 = v126;
    sub_1D917983C();
    sub_1D91794FC();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
    swift_willThrow();
    (*(v99 + 8))(v49, v54);
    goto LABEL_12;
  }

  if (v43 > 3u)
  {
    v44 = v126;
    if (v43 > 5u)
    {
      v45 = v40;
      if (v43 == 6)
      {
        LOBYTE(v132) = 6;
        sub_1D90BEB48();
        v67 = v98;
        sub_1D917982C();
        v91 = v67;
        if (!v67)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA3A8, &unk_1D91B3E80);
          sub_1D90BEB9C(&qword_1ECABA448, &qword_1ECAB2C18);
          v68 = v112;
          sub_1D91798FC();
          v98 = 0;
          (*(v111 + 8))(v37, v68);
          (*(v99 + 8))(v31, v44);
          swift_unknownObjectRelease();
          v88 = 0;
          v92 = 0;
          v80 = v132;
          v93 = 5;
          goto LABEL_39;
        }
      }

      else if (v43 == 7)
      {
        LOBYTE(v132) = 7;
        sub_1D90BEAF4();
        v46 = v118;
        v47 = v98;
        sub_1D917982C();
        if (!v47)
        {
          v123 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB87E0, &qword_1D91A3618);
          v127 = 0;
          sub_1D90BEF54(&qword_1ECABA440);
          v48 = v116;
          sub_1D91798FC();
          v80 = v132;
          v127 = 1;
          v81 = sub_1D91798AC();
          v82 = (v99 + 8);
          v98 = 0;
          v88 = v81;
          v90 = v89;
          (*(v113 + 8))(v46, v48);
          (*v82)(v123, v44);
          swift_unknownObjectRelease();
          v91 = 0;
          v92 = v90 & 1;
          v93 = 6;
LABEL_39:
          v76 = v125;
          goto LABEL_41;
        }
      }

      else
      {
        LOBYTE(v132) = 8;
        sub_1D90BEA4C();
        v70 = v39;
        v71 = v98;
        sub_1D917982C();
        v91 = v71;
        if (!v71)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA378, &unk_1D91B3E70);
          sub_1D90BEE88(&qword_1ECABA430, sub_1D90BEF00);
          v72 = v114;
          sub_1D91798FC();
          v98 = 0;
          (*(v115 + 8))(v70, v72);
          (*(v99 + 8))(v31, v44);
          swift_unknownObjectRelease();
          v88 = 0;
          v92 = 0;
          v80 = v132;
          v93 = 7;
          goto LABEL_39;
        }
      }

      goto LABEL_33;
    }

    if (v43 == 4)
    {
      LOBYTE(v132) = 4;
      sub_1D90BEC78();
      v63 = v117;
      v64 = v98;
      sub_1D917982C();
      if (!v64)
      {
        v65 = v31;
        v66 = v103;
        v91 = 0;
        v80 = sub_1D91798BC();
        v88 = v83;
        v98 = 0;
        (*(v108 + 8))(v63, v66);
        (*(v99 + 8))(v65, v44);
        swift_unknownObjectRelease();
        v92 = 0;
        v93 = 3;
        goto LABEL_40;
      }
    }

    else
    {
      LOBYTE(v132) = 5;
      sub_1D90BEC24();
      v73 = v38;
      v74 = v98;
      sub_1D917982C();
      if (!v74)
      {
        v78 = v31;
        LOBYTE(v132) = 0;
        v79 = v110;
        v80 = sub_1D91798BC();
        v88 = v84;
        LOBYTE(v132) = 1;
        v85 = sub_1D917984C();
        v86 = v79;
        v87 = (v99 + 8);
        v98 = 0;
        v92 = v85;
        v91 = v94;
        (*(v109 + 8))(v73, v86);
        (*v87)(v78, v126);
        swift_unknownObjectRelease();
        v93 = 4;
        goto LABEL_40;
      }
    }

LABEL_33:
    (*(v99 + 8))(v31, v44);
    goto LABEL_12;
  }

  if (v43 > 1u)
  {
    v60 = v99;
    v91 = v98;
    if (v43 == 2)
    {
      LOBYTE(v132) = 2;
      sub_1D90BED20();
      v61 = v126;
      sub_1D917982C();
      if (!v91)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
        sub_1D90BF004(&qword_1ECABA450, sub_1D8EF1774);
        v62 = v105;
        sub_1D91798FC();
        v98 = 0;
        (*(v104 + 8))(v35, v62);
        (*(v60 + 8))(v31, v61);
        swift_unknownObjectRelease();
        v88 = 0;
        v92 = 0;
        v80 = v132;
        v93 = 1;
LABEL_40:
        v45 = v124;
        v76 = v125;
        goto LABEL_41;
      }
    }

    else
    {
      LOBYTE(v132) = 3;
      sub_1D90BECCC();
      v61 = v126;
      sub_1D917982C();
      if (!v91)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
        sub_1D90906C8(&qword_1EDCD0A50);
        v77 = v107;
        sub_1D91798FC();
        v98 = 0;
        (*(v106 + 8))(v36, v77);
        (*(v60 + 8))(v31, v61);
        swift_unknownObjectRelease();
        v88 = 0;
        v92 = 0;
        v80 = v132;
        v93 = 2;
        goto LABEL_40;
      }
    }

    (*(v60 + 8))(v31, v61);
LABEL_12:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v125);
  }

  v56 = v31;
  v57 = v98;
  if (v43)
  {
    LOBYTE(v132) = 1;
    sub_1D90BED74();
    v69 = v97;
    v59 = v126;
    sub_1D917982C();
    v91 = v57;
    if (v57)
    {
      goto LABEL_17;
    }

    sub_1D8EF1774();
    v75 = v102;
    sub_1D91798FC();
    (*(v101 + 8))(v69, v75);
    (*(v99 + 8))(v56, v59);
    swift_unknownObjectRelease();
    v98 = 0;
    v88 = 0;
    v92 = 0;
    v93 = 0;
    v80 = v132;
  }

  else
  {
    LOBYTE(v132) = 0;
    sub_1D8CFE9C0();
    v58 = v96;
    v59 = v126;
    sub_1D917982C();
    v91 = v57;
    if (v57)
    {
LABEL_17:
      (*(v99 + 8))(v56, v59);
      goto LABEL_12;
    }

    v98 = 0;
    (*(v100 + 8))(v58, v95);
    (*(v99 + 8))(v56, v59);
    swift_unknownObjectRelease();
    v80 = 0;
    v88 = 0;
    v92 = 0;
    v93 = 8;
  }

  v76 = v125;
  v45 = v40;
LABEL_41:
  *v45 = v80;
  *(v45 + 8) = v88;
  *(v45 + 16) = v92;
  *(v45 + 24) = v91;
  *(v45 + 32) = v93;
  return __swift_destroy_boxed_opaque_existential_1Tm(v76);
}

uint64_t sub_1D90BE3C4()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1D9179DBC();
  MediaIdentifier.hash(into:)(v4);
  return sub_1D9179E1C();
}

uint64_t sub_1D90BE41C()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1D9179DBC();
  MediaIdentifier.hash(into:)(v4);
  return sub_1D9179E1C();
}

BOOL _s18PodcastsFoundation15MediaIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v37[0] = *a1;
  v37[1] = v2;
  v37[2] = v4;
  v37[3] = v5;
  v38 = v6;
  v39 = v7;
  v40 = v8;
  v41 = v10;
  v42 = v9;
  v43 = v11;
  if (v6 <= 3)
  {
    if (v6 <= 1)
    {
      if (!v6)
      {
        if (!v11)
        {
          sub_1D90BF6E8(v37);
          return v3 == v7;
        }

        goto LABEL_53;
      }

      if (v11 != 1)
      {
        goto LABEL_52;
      }

      v23 = *(v3 + 16);
      if (v23 == *(v7 + 16))
      {
        if (!v23 || v3 == v7)
        {
LABEL_41:
          sub_1D8D092C0(v7, v8, v10, v9, 1u);
          sub_1D8D092C0(v3, v2, v4, v5, 1u);
          goto LABEL_48;
        }

        v24 = (v3 + 32);
        v25 = (v7 + 32);
        while (*v24 == *v25)
        {
          ++v24;
          ++v25;
          if (!--v23)
          {
            goto LABEL_41;
          }
        }
      }

      sub_1D8D092C0(v7, v8, v10, v9, 1u);
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      v31 = 1;
      goto LABEL_54;
    }

    if (v6 == 2)
    {
      if (v11 != 2)
      {
        goto LABEL_52;
      }

      v14 = sub_1D8E83CA4(v3, v7);
      sub_1D8D092C0(v7, v8, v10, v9, 2u);
      v15 = v3;
      v16 = v2;
      v17 = v4;
      v18 = v5;
      v19 = 2;
    }

    else
    {
      if (v11 != 3)
      {
        goto LABEL_52;
      }

      if (v3 == v7 && v2 == v8)
      {
        sub_1D8D092C0(v3, v2, v10, v9, 3u);
        sub_1D8D092C0(v3, v2, v4, v5, 3u);
        goto LABEL_48;
      }

      v14 = sub_1D9179ACC();
      sub_1D8D092C0(v7, v8, v10, v9, 3u);
      v15 = v3;
      v16 = v2;
      v17 = v4;
      v18 = v5;
      v19 = 3;
    }

    sub_1D8D092C0(v15, v16, v17, v18, v19);
    sub_1D90BF6E8(v37);
    return v14 & 1;
  }

  if (v6 > 5)
  {
    if (v6 != 6)
    {
      if (v6 == 7)
      {
        if (v11 == 7)
        {
          sub_1D8D092C0(v7, v8, v10, v9, 7u);
          sub_1D8D092C0(v3, v2, v4, v5, 7u);
          v12 = sub_1D8E8477C(v3, v7);
LABEL_51:
          v26 = v12;
          sub_1D90BF6E8(v37);
          return v26 & 1;
        }

        goto LABEL_52;
      }

      if (v11 != 8 || v8 | v7 | v10 | v9)
      {
        goto LABEL_53;
      }

LABEL_48:
      sub_1D90BF6E8(v37);
      return 1;
    }

    if (v11 == 6)
    {
      v20 = *(v3 + 16);
      if (v20 != *(v7 + 16))
      {
LABEL_57:
        sub_1D8D092C0(v7, v8, v10, v9, 6u);
        v27 = v3;
        v28 = v2;
        v29 = v4;
        v30 = v5;
        v31 = 6;
        goto LABEL_54;
      }

      if (v20 && v3 != v7)
      {
        v21 = (v3 + 32);
        v22 = (v7 + 32);
        while (*v21 == *v22)
        {
          ++v21;
          ++v22;
          if (!--v20)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_57;
      }

LABEL_31:
      sub_1D8D092C0(v7, v8, v10, v9, 6u);
      sub_1D8D092C0(v3, v2, v4, v5, 6u);
      sub_1D90BF6E8(v37);
      if (v4)
      {
        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10 & 1 | (v2 != v8))
      {
        return 0;
      }

      return 1;
    }

LABEL_52:

LABEL_53:
    v27 = v7;
    v28 = v8;
    v29 = v10;
    v30 = v9;
    v31 = v11;
LABEL_54:
    sub_1D8D092C0(v27, v28, v29, v30, v31);
    sub_1D90BF6E8(v37);
    return 0;
  }

  if (v6 != 4)
  {
    if (v11 == 5)
    {
      sub_1D8D092C0(v7, v8, v10, v9, 5u);
      sub_1D8D092C0(v3, v2, v4, v5, 5u);
      v12 = sub_1D8E84588(v3, v7);
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  if (v11 != 4)
  {

    goto LABEL_52;
  }

  if ((v3 != v7 || v2 != v8) && (sub_1D9179ACC() & 1) == 0)
  {
    v32 = v7;
    v33 = v8;
    v34 = v10;
    v35 = v9;
    goto LABEL_67;
  }

  if (v5)
  {
    if (v9)
    {
      if (v4 == v10 && v5 == v9)
      {
        sub_1D8D092C0(v7, v8, v4, v5, 4u);
        sub_1D8D092C0(v3, v2, v4, v5, 4u);
        goto LABEL_48;
      }

      v36 = sub_1D9179ACC();
      sub_1D8D092C0(v7, v8, v10, v9, 4u);
      sub_1D8D092C0(v3, v2, v4, v5, 4u);
      sub_1D90BF6E8(v37);
      return (v36 & 1) != 0;
    }

    v32 = v7;
    v33 = v8;
    v34 = v10;
    v35 = 0;
LABEL_67:
    sub_1D8D092C0(v32, v33, v34, v35, 4u);
    v27 = v3;
    v28 = v2;
    v29 = v4;
    v30 = v5;
    v31 = 4;
    goto LABEL_54;
  }

  sub_1D8D092C0(v7, v8, v10, v9, 4u);
  sub_1D8D092C0(v3, v2, v4, 0, 4u);

  sub_1D90BF6E8(v37);
  if (v9)
  {

    return 0;
  }

  return 1;
}

unint64_t sub_1D90BEA4C()
{
  result = qword_1ECABA370;
  if (!qword_1ECABA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA370);
  }

  return result;
}

unint64_t sub_1D90BEAA0()
{
  result = qword_1ECABA388;
  if (!qword_1ECABA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA388);
  }

  return result;
}

unint64_t sub_1D90BEAF4()
{
  result = qword_1ECABA390;
  if (!qword_1ECABA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA390);
  }

  return result;
}

unint64_t sub_1D90BEB48()
{
  result = qword_1ECABA3A0;
  if (!qword_1ECABA3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA3A0);
  }

  return result;
}

uint64_t sub_1D90BEB9C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABA3A8, &unk_1D91B3E80);
    sub_1D90BEFC0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90BEC24()
{
  result = qword_1ECABA3B8;
  if (!qword_1ECABA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA3B8);
  }

  return result;
}

unint64_t sub_1D90BEC78()
{
  result = qword_1ECABA3C0;
  if (!qword_1ECABA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA3C0);
  }

  return result;
}

unint64_t sub_1D90BECCC()
{
  result = qword_1ECABA3C8;
  if (!qword_1ECABA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA3C8);
  }

  return result;
}

unint64_t sub_1D90BED20()
{
  result = qword_1ECABA3D0;
  if (!qword_1ECABA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA3D0);
  }

  return result;
}

unint64_t sub_1D90BED74()
{
  result = qword_1ECAB2308;
  if (!qword_1ECAB2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2308);
  }

  return result;
}

uint64_t sub_1D90BEDC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D90BEE2C(uint64_t a1)
{
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D90BEE88(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABA378, &unk_1D91B3E70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90BEF00()
{
  result = qword_1ECABA438;
  if (!qword_1ECABA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA438);
  }

  return result;
}

uint64_t sub_1D90BEF54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB87E0, &qword_1D91A3618);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D90BEFC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D90BF004(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB47C0, &qword_1D91B3E90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90BF080()
{
  result = qword_1ECABA458;
  if (!qword_1ECABA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA458);
  }

  return result;
}

unint64_t sub_1D90BF0D8()
{
  result = qword_1ECABA460;
  if (!qword_1ECABA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA460);
  }

  return result;
}

unint64_t sub_1D90BF130()
{
  result = qword_1ECABA468;
  if (!qword_1ECABA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA468);
  }

  return result;
}

unint64_t sub_1D90BF188()
{
  result = qword_1ECABA470;
  if (!qword_1ECABA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA470);
  }

  return result;
}

unint64_t sub_1D90BF1E0()
{
  result = qword_1ECABA478;
  if (!qword_1ECABA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA478);
  }

  return result;
}

unint64_t sub_1D90BF238()
{
  result = qword_1ECABA480;
  if (!qword_1ECABA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA480);
  }

  return result;
}

unint64_t sub_1D90BF290()
{
  result = qword_1ECABA488;
  if (!qword_1ECABA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA488);
  }

  return result;
}

unint64_t sub_1D90BF2E8()
{
  result = qword_1ECABA490;
  if (!qword_1ECABA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA490);
  }

  return result;
}

unint64_t sub_1D90BF340()
{
  result = qword_1ECABA498;
  if (!qword_1ECABA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA498);
  }

  return result;
}

unint64_t sub_1D90BF398()
{
  result = qword_1ECABA4A0;
  if (!qword_1ECABA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA4A0);
  }

  return result;
}

uint64_t sub_1D90BF3EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972617262696CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736163646F70 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365646F73697065 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6970456C61636F6CLL && a2 == 0xED00007365646F73 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F506C61636F6CLL && a2 == 0xEC00000074736163 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6974617473 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746F687370616E73 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657551616964656DLL && a2 == 0xEA00000000007972 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D91D59C0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1D90BF6E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA4A8, &unk_1D91B4C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D90BF758(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (v10 << 10) | (16 * v11);
      v13 = *(*(a1 + 56) + v12);
      v14 = *(*(a1 + 56) + v12 + 8);
      if (v14 >> 60 != 15)
      {
        v15 = (*(a1 + 48) + v12);
        v35 = v15[1];
        v36 = *v15;
        v16 = *(v2 + 16);
        v34 = v14;
        v33 = v13;
        v17 = v13;
        if (*(v2 + 24) <= v16)
        {
          v20 = v14;
          sub_1D8DA04B0(v13, v14);
          sub_1D8DA04B0(v17, v20);

          sub_1D90089D0(v16 + 1, 1);
          v2 = v37;
          v19 = v35;
        }

        else
        {
          v18 = v14;
          sub_1D8DA04B0(v13, v14);
          sub_1D8DA04B0(v17, v18);
          v19 = v35;
        }

        v21 = *(v2 + 40);
        sub_1D9179DBC();
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        result = sub_1D9179E1C();
        v22 = v2 + 64;
        v23 = -1 << *(v2 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v2 + 64 + 8 * (v24 >> 6))) == 0)
        {
          v27 = 0;
          v28 = (63 - v23) >> 6;
          v14 = v34;
          v13 = v33;
          while (++v25 != v28 || (v27 & 1) == 0)
          {
            v29 = v25 == v28;
            if (v25 == v28)
            {
              v25 = 0;
            }

            v27 |= v29;
            v30 = *(v22 + 8 * v25);
            if (v30 != -1)
            {
              v26 = __clz(__rbit64(~v30)) + (v25 << 6);
              goto LABEL_25;
            }
          }

LABEL_28:
          __break(1u);
          return result;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v2 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
        v14 = v34;
        v13 = v33;
LABEL_25:
        *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v31 = 16 * v26;
        v32 = (*(v2 + 48) + v31);
        *v32 = v36;
        v32[1] = v19;
        *(*(v2 + 56) + v31) = v13;
        ++*(v2 + 16);
      }

      result = sub_1D8D75668(v13, v14);
      v9 = v10;
      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  return v2;
}

void sub_1D90BFA08(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v176 = &v175 - v7;
  v8 = [a1 title];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D917820C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *a2 = v10;
  *(a2 + 8) = v12;
  v13 = [a1 assetURL];
  if (v13 || (v13 = [a1 enclosureURL]) != 0)
  {
    v14 = v13;
    v15 = sub_1D917820C();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  v18 = [a1 podcast];
  if (v18 && (v19 = v18, v20 = [v18 feedURL], v19, v20))
  {
    v21 = sub_1D917820C();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  *(a2 + 32) = v21;
  *(a2 + 40) = v23;
  v24 = [a1 storeTrackId];
  if (v24)
  {
    v25 = [a1 storeTrackId];
    v26 = v25 & ~(v25 >> 63);
  }

  else
  {
    v26 = 0;
  }

  *(a2 + 48) = v26;
  *(a2 + 56) = v24 == 0;
  v27 = [a1 podcast];
  if (v27)
  {
    v28 = v27;
    if (![objc_opt_self() isEmpty_])
    {
      v31 = [v28 storeCollectionId];

      v30 = 0;
      v29 = v31 & ~(v31 >> 63);
      goto LABEL_19;
    }
  }

  v29 = 0;
  v30 = 1;
LABEL_19:
  *(a2 + 64) = v29;
  *(a2 + 72) = v30;
  v32 = [a1 podcast];
  if (v32 && (v33 = v32, v34 = [v32 title], v33, v34))
  {
    v35 = sub_1D917820C();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v39 = (a2 + v38[13]);
  *v39 = v35;
  v39[1] = v37;
  [a1 duration];
  *(a2 + v38[14]) = v40;
  v41 = [a1 podcast];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 isSerialShowTypeInFeed];
  }

  else
  {
    v43 = 0;
  }

  *(a2 + v38[33]) = v43;
  *(a2 + v38[31]) = [a1 episodeNumber];
  *(a2 + v38[32]) = [a1 seasonNumber];
  v44 = [a1 podcast];
  if (v44 && (v45 = v44, v46 = [v44 imageURL], v45, v46))
  {
    sub_1D917820C();

    v47 = a2 + v38[18];
    sub_1D9176BFC();
  }

  else
  {
    v48 = v38[18];
    v49 = sub_1D9176C2C();
    (*(*(v49 - 8) + 56))(a2 + v48, 1, 1, v49);
  }

  v50 = [a1 podcast];
  if (v50 && (v51 = v50, v52 = [v50 artworkTemplateURL], v51, v52) || (v53 = objc_msgSend(a1, sel_podcast)) != 0 && (v54 = v53, v52 = objc_msgSend(v53, sel_imageURL), v54, v52))
  {
    v55 = &selRef_redirectURLForStoreCollectionId_;
    v56 = sub_1D917820C();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
    v55 = &selRef_redirectURLForStoreCollectionId_;
  }

  v59 = (a2 + v38[34]);
  *v59 = v56;
  v59[1] = v58;
  v60 = [a1 uuid];
  if (v60)
  {
    v61 = v60;
    v62 = sub_1D917820C();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0;
  }

  *(a2 + 80) = v62;
  *(a2 + 88) = v64;
  v65 = [a1 guid];
  if (v65)
  {
    v66 = v65;
    v67 = sub_1D917820C();
    v69 = v68;
  }

  else
  {
    v67 = 0;
    v69 = 0;
  }

  *(a2 + 96) = v67;
  *(a2 + 104) = v69;
  v70 = [objc_opt_self() validatedIdNumberFromStoreId_];
  if (v70)
  {
    v71 = v70;
    v72 = [v70 stringValue];
    v73 = sub_1D917820C();
    v75 = v74;
  }

  else
  {
    v73 = 0;
    v75 = 0;
  }

  *(a2 + 112) = v73;
  *(a2 + 120) = v75;
  [a1 playhead];
  v77 = a2 + v38[15];
  *v77 = v76;
  *(v77 + 8) = 0;
  v78 = type metadata accessor for PodcastsPlaybackSettingsHelper();
  v79 = [a1 podcast];
  if (qword_1ECAB1988 != -1)
  {
    swift_once();
  }

  v80 = qword_1ECAB1990;
  v81 = sub_1D90AB800(v79, v80, v78);

  v82 = a2 + v38[16];
  *v82 = v81;
  *(v82 + 4) = 0;
  v83 = [a1 podcast];
  if (v83 && (v84 = v83, v85 = [v83 advancedPlaybackSettings], v84, v85) && (v86 = objc_msgSend(v85, sel_hasCustomSettings), v85, (v86 & 1) != 0))
  {
    v87 = 0x6D6F74737563;
  }

  else
  {
    v87 = 0x6C61626F6C67;
  }

  v88 = (a2 + v38[17]);
  *v88 = v87;
  v88[1] = 0xE600000000000000;
  *(a2 + v38[21]) = 1;
  v89 = [a1 itemDescriptionWithoutHTML];
  if (v89)
  {
    v90 = v89;
    v91 = sub_1D917820C();
    v93 = v92;
  }

  else
  {
    v91 = 0;
    v93 = 0;
  }

  v94 = (a2 + v38[19]);
  *v94 = v91;
  v94[1] = v93;
  v95 = v38[22];
  [a1 pubDate];
  sub_1D9176CBC();
  v96 = sub_1D9176E3C();
  (*(*(v96 - 8) + 56))(a2 + v95, 0, 1, v96);
  v97 = sub_1D911E490([a1 episodeNumber], objc_msgSend(a1, sel_seasonNumber), v43, a2 + v95);
  v98 = (a2 + v38[23]);
  *v98 = v97;
  v98[1] = v99;
  v100 = [a1 podcast];
  if (v100 && (v101 = v100, v102 = [v100 channel], v101, v102))
  {
    v103 = [v102 subscriptionActive];
  }

  else
  {
    v103 = 0;
  }

  *(a2 + v38[24]) = v103;
  v104 = [a1 isExplicit];
  *(a2 + v38[25]) = v104;
  *(a2 + v38[27]) = [a1 isEntitled] ^ 1;
  v105 = v38[12];
  v106 = [a1 objectID];
  v107 = [v106 URIRepresentation];

  sub_1D9176B9C();
  v108 = sub_1D9176C2C();
  v109 = *(v108 - 8);
  v110 = *(v109 + 56);
  v177 = v109 + 56;
  v178 = v110;
  v110(a2 + v105, 0, 1, v108);
  v111 = 0;
  if (v104)
  {
    if (qword_1ECAB1CC0 != -1)
    {
      swift_once();
    }

    v112 = *(qword_1ECAB1CD0 + OBJC_IVAR___PFRestrictionsController__state);
    os_unfair_lock_lock((v112 + 24));
    v113 = *(v112 + 16);
    os_unfair_lock_unlock((v112 + 24));
    v111 = v113 != 0;
  }

  *(a2 + v38[26]) = v111;
  if ([a1 isAudio])
  {
    v114 = 0;
  }

  else if ([a1 isVideo])
  {
    v114 = 1;
  }

  else if ([a1 isExternalType])
  {
    v114 = 4;
  }

  else
  {
    v114 = 5;
  }

  *(a2 + v38[30]) = v114;
  v115 = [a1 priceType];
  if (v115)
  {
    v116 = v115;
    sub_1D917820C();

    v117 = sub_1D917980C();

    v118 = 4;
    if (v117 < 4)
    {
      v118 = v117;
    }
  }

  else
  {
    v118 = 4;
  }

  *(a2 + v38[29]) = v118;
  *(a2 + v38[28]) = [a1 isDownloaded];
  *(a2 + v38[20]) = 0;
  v119 = [a1 podcastUuid];
  if (v119)
  {
    v120 = v119;
    v121 = sub_1D917820C();
    v123 = v122;
  }

  else
  {
    v121 = 0;
    v123 = 0;
  }

  v124 = (a2 + v38[39]);
  *v124 = v121;
  v124[1] = v123;
  v125 = [a1 podcast];
  if (v125)
  {
    v126 = v125;
    v127 = MTPodcast.episodeSortType.getter();
  }

  else
  {
    v127 = 1;
  }

  *(a2 + v38[41]) = v127;
  *(a2 + v38[35]) = sub_1D90C6854();
  v128 = [a1 podcast];
  if (v128)
  {
    v129 = v128;
    v130 = [v128 hidesPlayedEpisodes];

    LOBYTE(v128) = MTPodcastHidesPlayedEpisodesResolved(v130);
  }

  *(a2 + v38[42]) = v128;
  v131 = [a1 transcriptIdentifier];
  if (v131)
  {
    v132 = v131;
    v133 = sub_1D917820C();
    v135 = v134;
  }

  else
  {
    v133 = 0;
    v135 = 0;
  }

  v136 = (a2 + v38[36]);
  *v136 = v133;
  v136[1] = v135;
  v137 = [a1 podcast];
  if (v137 && (v138 = v137, v139 = [v137 channel], v138, v139))
  {
    v140 = [v139 subscriptionOfferAppType];

    if (v140)
    {
      v141 = sub_1D917820C();
      v143 = v142;

      if (v141 == 1937204590 && v143 == 0xE400000000000000)
      {

        LOBYTE(v140) = 1;
      }

      else
      {
        LOBYTE(v140) = sub_1D9179ACC();
      }
    }
  }

  else
  {
    LOBYTE(v140) = 0;
  }

  *(a2 + v38[43]) = v140 & 1;
  v144 = [a1 podcast];
  if (!v144 || (v145 = v144, v146 = [v144 channel], v145, !v146))
  {
    v152 = 0;
LABEL_102:
    v148 = &selRef_redirectURLForStoreCollectionId_;
    goto LABEL_103;
  }

  v147 = [v146 subscriptionOfferAppType];

  v148 = &selRef_redirectURLForStoreCollectionId_;
  if (v147)
  {
    v149 = sub_1D917820C();
    v151 = v150;

    if (v149 == 0x636973756DLL && v151 == 0xE500000000000000)
    {

      v152 = 1;
    }

    else
    {
      v152 = sub_1D9179ACC();
    }

    goto LABEL_102;
  }

  v152 = 0;
LABEL_103:
  *(a2 + v38[44]) = v152 & 1;
  if (!v103)
  {
    v153 = [a1 freeTranscriptProvider];
    if (v153)
    {
      goto LABEL_105;
    }

LABEL_107:
    v155 = 0;
    v157 = 0;
    goto LABEL_108;
  }

  v153 = [a1 entitledTranscriptProvider];
  if (!v153)
  {
    goto LABEL_107;
  }

LABEL_105:
  v154 = v153;
  v155 = sub_1D917820C();
  v157 = v156;

LABEL_108:
  v158 = (a2 + v38[37]);
  *v158 = v155;
  v158[1] = v157;
  v159 = (a2 + v38[40]);
  *v159 = 0;
  v159[1] = 0;
  *(a2 + v38[45]) = 0;
  *(a2 + v38[46]) = 0;
  v160 = [a1 podcast];
  if (v160 && (v161 = v160, v162 = [v160 storeCollectionId], v161, objc_msgSend(a1, v148[452]) >= 1))
  {
    v163 = [objc_opt_self() productURLForStoreCollectionId:v162 storeTrackId:{objc_msgSend(a1, v148[452])}];
    if (v163)
    {
      v164 = v176;
      v165 = v163;
      sub_1D9176B9C();

      v166 = 0;
    }

    else
    {
      v166 = 1;
      v164 = v176;
    }

    v178(v164, v166, 1, v108);
    sub_1D8D6734C(v164, a2 + v38[38], &unk_1ECAB5910, &qword_1D9188C90);
  }

  else
  {
    v178(a2 + v38[38], 1, 1, v108);
  }

  *(a2 + v38[47]) = [a1 feedDeleted];
  v167 = [a1 podcast];
  if (v167)
  {
    v168 = v167;
    v169 = sub_1D90C6C0C();
  }

  else
  {
    v169 = 4;
  }

  *(a2 + v38[48]) = v169;
  if (qword_1ECAB1FF8 != -1)
  {
    swift_once();
  }

  v170 = PageContextTracker.value.getter();
  v172 = v171;

  if (v172)
  {
    v173 = v170;
  }

  else
  {
    v173 = 0;
  }

  v174 = (a2 + v38[49]);
  *v174 = v173;
  v174[1] = v172;
}

uint64_t URLTrackIdentifier.init(id:playbackContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA4B0, &qword_1D91B4C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 3;
  v9 = inited + 32;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  v10 = sub_1D8E2765C(inited);
  swift_setDeallocating();
  sub_1D8D08A50(v9, &qword_1ECABA4B8, &qword_1D91B4C48);
  v11 = *(a3 + 80);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 ams_DSID];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 stringValue];

      v16 = sub_1D917820C();
      v18 = v17;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D8F50EE4(v16, v18, 16, isUniquelyReferenced_nonNull_native);
    }
  }

  v20 = sub_1D9053F20(v10);

  result = sub_1D90CC1A4(a3, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  *a4 = v20;
  *(a4 + 8) = 4;
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.assetURL.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.storeTrackId.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.podcastStoreId.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.uuid.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.guid.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.externalContentID.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.playhead.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 60));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.itemDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PodcastsMediaLibrary.MediaItem.serverArtwork.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 80));
}

uint64_t PodcastsMediaLibrary.MediaItem.album.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 92));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PodcastsMediaLibrary.MediaItem.itemType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  *a1 = *(v1 + *(result + 112));
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.priceType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  *a1 = *(v1 + *(result + 116));
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.mediaKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  *a1 = *(v1 + *(result + 120));
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.ItemType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D917980C();

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

uint64_t PodcastsMediaLibrary.MediaItem.ItemType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x64616F6C6E776F64;
  }

  else
  {
    result = 0x6D6165727473;
  }

  *v0;
  return result;
}

uint64_t sub_1D90C1030(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64616F6C6E776F64;
  }

  else
  {
    v4 = 0x6D6165727473;
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
    v6 = 0x64616F6C6E776F64;
  }

  else
  {
    v6 = 0x6D6165727473;
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
    v9 = sub_1D9179ACC();
  }

  return v9 & 1;
}

uint64_t sub_1D90C10D4()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D90C1154()
{
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D90C11C0()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D90C123C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D917980C();

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

void sub_1D90C129C(uint64_t *a1@<X8>)
{
  v2 = 0x6D6165727473;
  if (*v1)
  {
    v2 = 0x64616F6C6E776F64;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PodcastsMediaLibrary.MediaItem.showArtworkTemplateURL.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 136));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PodcastsMediaLibrary.MediaItem.newsSubscriptionInformation.getter()
{
  v1 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  result = 0;
  if (*(v0 + *(v1 + 172)) == 1)
  {
    if (*(v0 + *(v1 + 96)))
    {
      return 0x2B7377656ELL;
    }

    else
    {
      return 1701736302;
    }
  }

  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.musicSubscriptionInformation.getter()
{
  v1 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  result = 0;
  if (*(v0 + *(v1 + 176)) == 1)
  {
    type metadata accessor for MusicSubscriptionInfoLoader();
    return static MusicSubscriptionInfoLoader.loadIfNeeded()();
  }

  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.artworkResponseDictionary.getter()
{
  if (*(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 80)))
  {
    return sub_1D90C1564();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D90C1564()
{
  v17[4] = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v3 = sub_1D91765CC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1D91765BC();
  sub_1D90CBEE0(&qword_1ECAB26D8, type metadata accessor for ServerArtwork);
  v6 = sub_1D91765AC();
  v8 = v7;

  if (!v1)
  {
    v10 = objc_opt_self();
    v11 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
    v17[0] = 0;
    v12 = [v10 JSONObjectWithData:v11 options:4 error:v17];

    if (v12)
    {
      v13 = v17[0];
      sub_1D917928C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
      if (swift_dynamicCast())
      {
        sub_1D8D7567C(v6, v8);
        result = v16;
        goto LABEL_8;
      }

      [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
    }

    else
    {
      v14 = v17[0];
      sub_1D9176A6C();
    }

    swift_willThrow();
    result = sub_1D8D7567C(v6, v8);
  }

LABEL_8:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.artworkInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 140));
}

uint64_t PodcastsMediaLibrary.MediaItem.transcriptIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 144));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PodcastsMediaLibrary.MediaItem.transcriptSource.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 148));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PodcastsMediaLibrary.MediaItem.podcastUUID.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 156));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PodcastsMediaLibrary.MediaItem.restorationContentItemID.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 160));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PodcastsMediaLibrary.MediaItem.podcastPageContext.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 196));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PodcastsMediaLibrary.MediaItem.init(title:assetURL:feedURL:storeTrackId:podcastStoreId:uuid:guid:externalContentID:author:duration:playhead:preferredPlaybackRate:playbackSettingsSource:artworkURL:itemDescription:serverArtwork:isSubscribable:releaseDate:album:isSubscriptionActive:isExplicit:isRestricted:subscriptionRequired:itemType:priceType:mediaKind:episodeNumber:seasonNumber:podcastIsSerial:showArtworkTemplateURL:artworkInfo:transcriptIdentifier:isAppleNewsEpisode:isAppleMusicEpisode:transcriptSource:shareURL:podcastUUID:restorationContentItemID:isShallow:isFromSidepack:feedDeleted:podcastSubscriptionState:podcastPageContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, char a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, char a35, char a36, char a37, char *a38, char *a39, char *a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, char a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12 & 1;
  *(a9 + 112) = a15;
  *(a9 + 120) = a16;
  v81 = *a38;
  v82 = *a39;
  v83 = *a40;
  *(a9 + 80) = a13;
  *(a9 + 96) = a14;
  v65 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v66 = (a9 + v65[13]);
  *v66 = a17;
  v66[1] = a18;
  *(a9 + v65[14]) = a10;
  v67 = a9 + v65[15];
  *v67 = a19;
  *(v67 + 8) = a20 & 1;
  v68 = a9 + v65[16];
  *v68 = a22;
  *(v68 + 4) = a23 & 1;
  v69 = (a9 + v65[17]);
  *v69 = a24;
  v69[1] = a25;
  sub_1D8D6734C(a26, a9 + v65[18], &unk_1ECAB5910, &qword_1D9188C90);
  v70 = (a9 + v65[19]);
  *v70 = a27;
  v70[1] = a28;
  *(a9 + v65[20]) = a29;
  *(a9 + v65[21]) = a30;
  sub_1D8D6734C(a31, a9 + v65[22], &qword_1ECAB75C0, &unk_1D9188A50);
  v71 = (a9 + v65[23]);
  *v71 = a32;
  v71[1] = a33;
  *(a9 + v65[24]) = a34;
  *(a9 + v65[25]) = a35;
  *(a9 + v65[26]) = a36;
  *(a9 + v65[27]) = a37;
  *(a9 + v65[28]) = v81;
  *(a9 + v65[29]) = v82;
  *(a9 + v65[30]) = v83;
  *(a9 + v65[31]) = a41;
  *(a9 + v65[32]) = a42;
  *(a9 + v65[33]) = a43;
  v72 = (a9 + v65[34]);
  *v72 = a44;
  v72[1] = a45;
  v73 = (a9 + v65[39]);
  *v73 = a54;
  v73[1] = a55;
  *(a9 + v65[41]) = 1;
  *(a9 + v65[35]) = a46;
  *(a9 + v65[42]) = 0;
  v74 = (a9 + v65[36]);
  *v74 = a47;
  v74[1] = a48;
  *(a9 + v65[43]) = a49;
  *(a9 + v65[44]) = a50;
  v75 = (a9 + v65[37]);
  *v75 = a51;
  v75[1] = a52;
  v76 = v65[12];
  v77 = sub_1D9176C2C();
  (*(*(v77 - 8) + 56))(a9 + v76, 1, 1, v77);
  result = sub_1D8D6734C(a53, a9 + v65[38], &unk_1ECAB5910, &qword_1D9188C90);
  v79 = (a9 + v65[40]);
  *v79 = a56;
  v79[1] = a57;
  *(a9 + v65[45]) = a58;
  *(a9 + v65[46]) = a59;
  *(a9 + v65[47]) = a60;
  *(a9 + v65[48]) = a61;
  v80 = (a9 + v65[49]);
  *v80 = a62;
  v80[1] = a63;
  return result;
}

uint64_t sub_1D90C1DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v84 = *v3;
  v92 = v3[3];
  v93 = v3[1];
  v81 = v3[4];
  v82 = v3[2];
  v91 = v3[5];
  v80 = v3[6];
  v79 = *(v3 + 56);
  v78 = v3[8];
  v77 = *(v3 + 72);
  v76 = v3[10];
  v87 = v3[11];
  v75 = v3[12];
  v88 = v3[13];
  v83 = v3[14];
  v90 = v3[15];
  v6 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v7 = (v4 + v6[13]);
  v74 = *v7;
  v89 = v7[1];
  v8 = *(v4 + v6[14]);
  v9 = (v4 + v6[15]);
  v71 = *v9;
  v70 = *(v9 + 8);
  v10 = (v4 + v6[16]);
  v72 = *(v10 + 4);
  v73 = *v10;
  v11 = (v4 + v6[17]);
  v12 = v11[1];
  v69 = *v11;
  sub_1D8D088B4(v4 + v6[18], a3 + v6[18], &unk_1ECAB5910, &qword_1D9188C90);
  v13 = (v4 + v6[19]);
  v14 = v13[1];
  v68 = *v13;
  v15 = *(v4 + v6[20]);
  v67 = *(v4 + v6[21]);
  sub_1D8D088B4(v4 + v6[22], a3 + v6[22], &qword_1ECAB75C0, &unk_1D9188A50);
  v16 = (v4 + v6[23]);
  v17 = v16[1];
  v60 = *v16;
  v62 = *(v4 + v6[24]);
  v58 = *(v4 + v6[25]);
  v59 = *(v4 + v6[26]);
  v56 = *(v4 + v6[27]);
  v57 = *(v4 + v6[28]);
  v54 = *(v4 + v6[29]);
  v55 = *(v4 + v6[30]);
  v18 = v6[34];
  v50 = *(v4 + v6[33]);
  v19 = *(v4 + v18 + 8);
  v52 = *(v4 + v18);
  v53 = *(v4 + v6[32]);
  v51 = *(v4 + v6[31]);
  v20 = *(v4 + v6[35]);
  v21 = (v4 + v6[36]);
  v64 = *(v4 + v6[43]);
  v66 = *(v4 + v6[44]);
  v22 = v21[1];
  v61 = *v21;
  v23 = (v4 + v6[37]);
  v63 = *v23;
  v65 = v23[1];
  sub_1D8D088B4(v4 + v6[38], a3 + v6[38], &unk_1ECAB5910, &qword_1D9188C90);
  v24 = v6[39];
  v25 = v6[45];
  v26 = v6[47];
  v27 = v6[48];
  v28 = v6[49];
  *(a3 + 48) = v80;
  *(a3 + 56) = v79;
  *(a3 + 64) = v78;
  *(a3 + 72) = v77;
  *(a3 + 80) = v76;
  *(a3 + 96) = v75;
  *a3 = v84;
  *(a3 + 8) = v93;
  *(a3 + 16) = v82;
  *(a3 + 24) = v92;
  *(a3 + 32) = v81;
  *(a3 + 40) = v91;
  *(a3 + 88) = v87;
  *(a3 + 104) = v88;
  *(a3 + 112) = v83;
  *(a3 + 120) = v90;
  v29 = (a3 + v6[13]);
  *v29 = v74;
  v29[1] = v89;
  *(a3 + v6[14]) = v8;
  v30 = a3 + v6[15];
  *v30 = v71;
  *(v30 + 8) = v70;
  v31 = a3 + v6[16];
  *v31 = v73;
  *(v31 + 4) = v72;
  v32 = (a3 + v6[17]);
  *v32 = v69;
  v32[1] = v12;
  v33 = (a3 + v6[19]);
  *v33 = v68;
  v33[1] = v14;
  *(a3 + v6[20]) = v15;
  *(a3 + v6[21]) = v67;
  v34 = (a3 + v6[23]);
  *v34 = v60;
  v34[1] = v17;
  *(a3 + v6[24]) = v62;
  *(a3 + v6[25]) = v58;
  *(a3 + v6[26]) = v59;
  *(a3 + v6[27]) = v56;
  *(a3 + v6[28]) = v57;
  *(a3 + v6[29]) = v54;
  *(a3 + v6[30]) = v55;
  *(a3 + v6[31]) = v51;
  *(a3 + v6[32]) = v53;
  *(a3 + v6[33]) = v50;
  v35 = (v4 + v24);
  v36 = (a3 + v6[34]);
  *v36 = v52;
  v36[1] = v19;
  v37 = *v35;
  v38 = v35[1];
  v39 = (a3 + v6[39]);
  *v39 = v37;
  v39[1] = v38;
  *(a3 + v6[41]) = 1;
  *(a3 + v6[35]) = v20;
  *(a3 + v6[42]) = 0;
  v40 = (a3 + v6[36]);
  *v40 = v61;
  v40[1] = v22;
  *(a3 + v6[43]) = v64;
  *(a3 + v6[44]) = v66;
  LOBYTE(v17) = *(v4 + v25);
  LOBYTE(v19) = *(v4 + v26);
  LOBYTE(v15) = *(v4 + v27);
  v41 = v4 + v28;
  v42 = (a3 + v6[37]);
  v44 = *(v4 + v28);
  v43 = *(v41 + 8);
  *v42 = v63;
  v42[1] = v65;
  v45 = v6[12];
  v46 = sub_1D9176C2C();
  (*(*(v46 - 8) + 56))(a3 + v45, 1, 1, v46);
  v47 = (a3 + v6[40]);
  *v47 = a1;
  v47[1] = a2;
  *(a3 + v6[45]) = v17;
  *(a3 + v6[46]) = 0;
  *(a3 + v6[47]) = v19;
  *(a3 + v6[48]) = v15;
  v48 = (a3 + v6[49]);
  *v48 = v44;
  v48[1] = v43;
}

Swift::Bool __swiftcall PodcastsMediaLibrary.MediaItem.isTransferable(deviceCanUseGuidIdentifiers:)(Swift::Bool deviceCanUseGuidIdentifiers)
{
  result = 0;
  if ((*(v1 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 188)) & 1) == 0)
  {
    if ((*(v1 + 56) & 1) == 0)
    {
      v3 = *(v1 + 48);
      if (v3 != 1000000000000 && v3 != 0)
      {
        return 1;
      }
    }

    if (deviceCanUseGuidIdentifiers && *(v1 + 104) && *(v1 + 40))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D90C23C8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v31 = (v5 + 63) >> 6;
  v32 = result;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v34 = (v7 - 1) & v7;
LABEL_14:
    v11 = v8 | (v3 << 6);
    v12 = (*(result + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(result + 56) + 32 * v11);
    v17 = *v15;
    v16 = v15[1];
    v19 = v15[2];
    v18 = v15[3];
    v33 = v13 == 0;

    if (!v13)
    {
      return 1;
    }

    v20 = sub_1D8D33C70(v14, v13);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
LABEL_34:

      return 0;
    }

    v23 = (*(a2 + 56) + 32 * v20);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    if (v24)
    {
      if (!v16)
      {
        goto LABEL_34;
      }

      v27 = *v23 == v17 && v24 == v16;
      if (!v27 && (sub_1D9179ACC() & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (v16)
    {
      goto LABEL_34;
    }

    if (v25 == v19 && v18 == v26)
    {

      result = v32;
      v7 = v34;
    }

    else
    {
      v29 = sub_1D9179ACC();

      result = v32;
      v7 = v34;
      v30 = v33;
      if ((v29 & 1) == 0)
      {
        return v30;
      }
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v31)
    {
      return 1;
    }

    v10 = *(v4 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}