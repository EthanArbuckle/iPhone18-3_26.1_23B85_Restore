id WALogCategoryDeviceStoreHandle()
{
  if (WALogCategoryDeviceStoreHandle_onceTokenDefault != -1)
  {
    dispatch_once(&WALogCategoryDeviceStoreHandle_onceTokenDefault, &__block_literal_global_13);
  }

  v1 = WALogCategoryDeviceStoreHandle_storeHandle;

  return v1;
}

id WALogCategoryDefaultHandle()
{
  if (WALogCategoryDefaultHandle_onceTokenDefault != -1)
  {
    dispatch_once(&WALogCategoryDefaultHandle_onceTokenDefault, &__block_literal_global_2);
  }

  v1 = WALogCategoryDefaultHandle_defaultHandle;

  return v1;
}

void sub_1C84624A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __WALogCategoryDeviceStoreHandle_block_invoke()
{
  WALogCategoryDeviceStoreHandle_storeHandle = os_log_create("com.apple.wifi.analytics", "DeviceStore");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C846370C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8463B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8463C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C8463D18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8463D50()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8463DA8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C84646E0()
{
  sub_1C84822E4(0, &qword_1EDE5CA20, 0x1E69E9BF8);
  result = sub_1C8590E74();
  qword_1EDE5CB90 = result;
  return result;
}

id WANWActivityTransform.init(later:early:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset;
  *&v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset] = 0;
  v6 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_measurement;
  *&v2[v6] = MEMORY[0x1CCA77560](700, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
  v7 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues;
  v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] = 0;
  v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_performPerPeerCalculations] = 0;
  v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_allowSingleFragmentDeltaCalculations] = 0;
  v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_shorthandConstantStats] = 0;
  v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_includeStdDev] = 0;
  v2[v7] = 0;
  *&v2[v5] = 0;
  if (*(a2 + 16))
  {
    if (*(a1 + 16))
    {
      v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment] = 0;
      *&v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early] = a2;
      *&v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later] = a1;
      goto LABEL_7;
    }

    v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment] = 1;

    *&v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early] = a2;
    *&v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later] = a2;
  }

  else
  {
    v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment] = 1;

    *&v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early] = a1;
    *&v2[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later] = a1;
  }

LABEL_7:
  sub_1C8590E34();
  if (qword_1EDE5CA48 != -1)
  {
    swift_once();
  }

  sub_1C8590CA4();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for WANWActivityTransform();
  return objc_msgSendSuper2(&v9, sel_init);
}

id WANWActivityTransform.init(single:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset;
  *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset] = 0;
  v4 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_measurement;
  *&v1[v4] = MEMORY[0x1CCA77560](700, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
  v5 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues;
  v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] = 0;
  v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_performPerPeerCalculations] = 0;
  v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_allowSingleFragmentDeltaCalculations] = 0;
  v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_shorthandConstantStats] = 0;
  v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_includeStdDev] = 0;
  v1[v5] = 0;
  *&v1[v3] = 0;
  *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early] = a1;
  *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later] = a1;
  v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment] = 1;

  sub_1C8590E34();
  if (qword_1EDE5CA48 != -1)
  {
    swift_once();
  }

  sub_1C8590CA4();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for WANWActivityTransform();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1C8464C0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early);
  v26[0] = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
  sub_1C8472F8C(v1, v26, 0, 0xE000000000000000);
  v2 = v26[0];
  *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_performPerPeerCalculations) = 1;
  v3 = *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment);
  p_superclass = &OBJC_METACLASS___PoliciesMO.superclass;
  if (v3 == 1)
  {
    *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_allowSingleFragmentDeltaCalculations) = 1;
    swift_bridgeObjectRetain_n();
    sub_1C8590E64();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    v5 = v2;
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later);

    v26[0] = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
    sub_1C8472F8C(v6, v26, 0, 0xE000000000000000);

    v5 = v26[0];
  }

  v7 = sub_1C846E444(v2, v5);

  v8 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_measurement;
  swift_beginAccess();
  v9 = *(v0 + v8);
  *(v0 + v8) = v7;

  if (v3)
  {

    *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset) = 0;
  }

  else
  {
    swift_beginAccess();
    v10 = sub_1C84665F8((v0 + v8));
    swift_endAccess();
    if (!v10)
    {
      sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      sub_1C8590CA4();
      *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset) = 0;
    }

    v11 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset;
    if (*(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset) < 0.0 || (v18 = *(v5 + 16)) != 0 && (v19 = *(v2 + 16)) != 0 && v19 < v18)
    {
      v12 = sub_1C8590E64();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDE5CB90;
      if (os_log_type_enabled(qword_1EDE5CB90, v12))
      {

        v14 = swift_slowAlloc();
        v15 = *(v0 + v11);
        *v14 = 134218496;
        *(v14 + 4) = v15;
        *(v14 + 12) = 2048;
        *(v14 + 14) = *(v2 + 16);

        *(v14 + 22) = 2048;
        p_superclass = (&OBJC_METACLASS___PoliciesMO + 8);
        *(v14 + 24) = *(v5 + 16);

        _os_log_impl(&dword_1C8460000, v13, v12, "Setting allowSingleFragmentDeltaCalculations true due to negative timeOffset %f or growth in metrics from early %ld to late %ld, rerunning diff", v14, 0x20u);
        MEMORY[0x1CCA78470](v14, -1, -1);
      }

      *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_allowSingleFragmentDeltaCalculations) = 1;
      *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues) = 0;
      v16 = sub_1C846E444(v2, v5);

      v17 = *(v0 + v8);
      *(v0 + v8) = v16;

      *(v0 + v11) = 0;
    }

    else
    {
    }
  }

  swift_beginAccess();
  v20 = sub_1C8468260(v0 + v8);
  swift_endAccess();
  if ((v20 & 1) != 0 || *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues) != 1) && ((swift_beginAccess(), v21 = sub_1C846CE84((v0 + v8)), swift_endAccess(), (v21) || *(v0 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues) != 1))
  {
    swift_beginAccess();
    v23 = sub_1C847ADCC((v0 + v8));
    swift_endAccess();
    if ((v23 & 1) == 0)
    {
      sub_1C8590E44();
      if (p_superclass[329] != -1)
      {
        swift_once();
      }

      sub_1C8590CA4();
    }

    swift_beginAccess();
    v24 = sub_1C847B0A4((v0 + v8));
    swift_endAccess();
    if ((v24 & 1) == 0)
    {
      sub_1C8590E44();
      if (p_superclass[329] != -1)
      {
        swift_once();
      }

      sub_1C8590CA4();
    }

    v25 = *(v0 + v8);
  }

  else
  {
    sub_1C8590E44();
    if (p_superclass[329] != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    return 0;
  }
}

uint64_t sub_1C8465218()
{
  v0[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_shorthandConstantStats] = 1;
  v1 = *&v0[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early];
  v20[0] = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
  sub_1C8472F8C(v1, v20, 0, 0xE000000000000000);
  v2 = v20[0];
  v3 = v0[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment];
  if (v3 == 1)
  {

    v4 = v2;
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later];

    v20[0] = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
    sub_1C8472F8C(v5, v20, 0, 0xE000000000000000);

    v4 = v20[0];
  }

  v6 = sub_1C846E444(v2, v4);

  v7 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_measurement;
  swift_beginAccess();
  v8 = *&v0[v7];
  *&v0[v7] = v6;

  if ((v3 & 1) == 0)
  {
    swift_beginAccess();
    v9 = sub_1C84665F8(&v0[v7]);
    swift_endAccess();
    if (v9)
    {
      goto LABEL_10;
    }

    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
  }

  *&v0[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset] = 0;
LABEL_10:
  swift_beginAccess();
  v10 = sub_1C8468260(&v0[v7]);
  swift_endAccess();
  if ((v10 & 1) != 0 || v0[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] != 1) && ((swift_beginAccess(), v11 = sub_1C846CE84(&v0[v7]), swift_endAccess(), (v11) || v0[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] != 1))
  {
    swift_beginAccess();
    v13 = sub_1C847ADCC(&v0[v7]);
    swift_endAccess();
    if ((v13 & 1) == 0)
    {
      sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      sub_1C8590CA4();
    }

    v14 = sub_1C8590E34();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE5CB90;
    if (os_log_type_enabled(qword_1EDE5CB90, v14))
    {

      v16 = v0;
      v17 = swift_slowAlloc();
      *v17 = 134218496;
      v18 = *(v2 + 16);
      *(v17 + 4) = v18;
      *(v17 + 12) = 2048;

      *(v17 + 14) = v18;

      *(v17 + 22) = 2048;
      *(v17 + 24) = *(*&v0[v7] + 16);

      _os_log_impl(&dword_1C8460000, v15, v14, "For Logging: Early Sample nKeys %ld Late Sample nKeys %ld Final %ld", v17, 0x20u);
      MEMORY[0x1CCA78470](v17, -1, -1);
    }

    else
    {
    }

    v19 = *&v0[v7];
  }

  else
  {

    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    return 0;
  }
}

id sub_1C8465698(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    v6 = sub_1C8590CB4();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1C8465720(int a1)
{
  v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_shorthandConstantStats] = 1;
  v3 = *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early];
  v36[0] = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
  sub_1C8472F8C(v3, v36, 0, 0xE000000000000000);
  v4 = v36[0];
  v5 = v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment];
  if (v5 == 1)
  {
    v6 = sub_1C8590E64();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDE5CB90;
    if (os_log_type_enabled(qword_1EDE5CB90, v6))
    {

      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = *(v4 + 16);

      _os_log_impl(&dword_1C8460000, v7, v6, "WA Telemetry: singleFragment Early Sample nKeys %ld", v8, 0xCu);
      MEMORY[0x1CCA78470](v8, -1, -1);
    }

    v9 = v4;
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later];

    v36[0] = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
    sub_1C8472F8C(v10, v36, 0, 0xE000000000000000);

    v9 = v36[0];
    v11 = sub_1C8590E64();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDE5CB90;
    if (os_log_type_enabled(qword_1EDE5CB90, v11))
    {

      v12 = swift_slowAlloc();
      *v12 = 134218240;
      v13 = *(v4 + 16);
      *(v12 + 4) = v13;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v13;

      _os_log_impl(&dword_1C8460000, v7, v11, "WA Telemetry: doubleFragment Early Sample nKeys %ld Late Sample nKeys %ld", v12, 0x16u);
      MEMORY[0x1CCA78470](v12, -1, -1);
    }
  }

  v14 = sub_1C846E444(v4, v9);

  v15 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_measurement;
  swift_beginAccess();
  v16 = *&v1[v15];
  *&v1[v15] = v14;

  if ((v5 & 1) == 0)
  {
    swift_beginAccess();
    v17 = sub_1C84665F8(&v1[v15]);
    swift_endAccess();
    if (v17)
    {
      goto LABEL_17;
    }

    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
  }

  *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset] = 0;
LABEL_17:
  swift_beginAccess();
  v18 = sub_1C8468260(&v1[v15]);
  swift_endAccess();
  if ((v18 & 1) != 0 || v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] != 1) && ((swift_beginAccess(), v19 = sub_1C846CE84(&v1[v15]), swift_endAccess(), (v19) || v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] != 1))
  {
    if (a1)
    {
    }

    else
    {
      swift_beginAccess();
      v21 = sub_1C8466E3C(&v1[v15], v4, v9);
      swift_endAccess();

      if ((v21 & 1) == 0)
      {
        sub_1C8590E44();
        if (qword_1EDE5CA48 != -1)
        {
          swift_once();
        }

        sub_1C8590CA4();
      }
    }

    swift_beginAccess();
    v22 = sub_1C847ADCC(&v1[v15]);
    swift_endAccess();
    if ((v22 & 1) == 0)
    {
      sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      sub_1C8590CA4();
    }

    v23 = *&v1[v15];

    v25 = sub_1C847B388(v24);

    v26 = *&v1[v15];
    *&v1[v15] = v25;

    v27 = sub_1C8590E64();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v28 = v1;

    v29 = v28;
    if (os_log_type_enabled(v7, v27))
    {

      v30 = v29;
      v31 = swift_slowAlloc();
      *v31 = 134219008;
      *(v31 + 4) = *(v4 + 16);

      *(v31 + 12) = 2048;
      v32 = *(v4 + 16);

      *(v31 + 14) = v32;

      *(v31 + 22) = 1024;

      *(v31 + 24) = v5;
      *(v31 + 28) = 1024;
      v33 = v30[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues];

      *(v31 + 30) = v33;
      *(v31 + 34) = 2048;
      v34 = *(*&v1[v15] + 16);

      *(v31 + 36) = v34;
      _os_log_impl(&dword_1C8460000, v7, v27, "WA Telemetry: Early Sample nKeys %ld Late Sample nKeys %ld wasSingle %{BOOL}d issues %{BOOL}d Final %ld", v31, 0x2Cu);
      MEMORY[0x1CCA78470](v31, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v35 = *&v1[v15];
  }

  else
  {

    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    return 0;
  }
}

uint64_t sub_1C8465E54(int a1)
{
  v3 = *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_early];
  v4 = MEMORY[0x1E69E7CC0];
  v24[0] = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
  sub_1C8472F8C(v3, v24, 0, 0xE000000000000000);
  v5 = v24[0];
  v6 = *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_later];

  v24[0] = sub_1C84778EC(v4);
  sub_1C8472F8C(v6, v24, 0, 0xE000000000000000);

  v7 = v24[0];
  v8 = sub_1C846E444(v5, v24[0]);
  v9 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_measurement;
  swift_beginAccess();
  v10 = *&v1[v9];
  *&v1[v9] = v8;

  if (v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment])
  {
LABEL_6:
    *&v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset] = 0;
    goto LABEL_7;
  }

  swift_beginAccess();
  v11 = sub_1C84665F8(&v1[v9]);
  swift_endAccess();
  if (!v11)
  {
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    goto LABEL_6;
  }

LABEL_7:
  swift_beginAccess();
  v12 = sub_1C8468260(&v1[v9]);
  swift_endAccess();
  if ((v12 & 1) == 0 && v1[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] == 1)
  {

    sub_1C8590E44();
    if (qword_1EDE5CA48 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

  swift_beginAccess();
  v13 = sub_1C847CA30(&v1[v9]);
  swift_endAccess();
  if ((v13 & 1) == 0)
  {
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
  }

  swift_beginAccess();
  v14 = sub_1C8467370(&v1[v9]);
  swift_endAccess();
  if ((v14 & 1) == 0)
  {

    sub_1C8590E44();
    if (qword_1EDE5CA48 == -1)
    {
LABEL_19:
      sub_1C8590CA4();
      return 0;
    }

LABEL_34:
    swift_once();
    goto LABEL_19;
  }

  if (a1)
  {
  }

  else
  {
    swift_beginAccess();
    v16 = sub_1C8466E3C(&v1[v9], v5, v7);
    swift_endAccess();

    if ((v16 & 1) == 0)
    {
      sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      sub_1C8590CA4();
    }
  }

  swift_beginAccess();
  v17 = sub_1C847ADCC(&v1[v9]);
  swift_endAccess();
  if ((v17 & 1) == 0)
  {
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
  }

  v18 = sub_1C8590E34();
  if (qword_1EDE5CA48 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDE5CB90;
  if (os_log_type_enabled(qword_1EDE5CB90, v18))
  {

    v20 = v1;
    v21 = swift_slowAlloc();
    *v21 = 134218496;
    v22 = *(v5 + 16);
    *(v21 + 4) = v22;
    *(v21 + 12) = 2048;

    *(v21 + 14) = v22;

    *(v21 + 22) = 2048;
    *(v21 + 24) = *(*&v1[v9] + 16);

    _os_log_impl(&dword_1C8460000, v19, v18, "Early Sample nKeys %ld Late Sample nKeys %ld Final %ld", v21, 0x20u);
    MEMORY[0x1CCA78470](v21, -1, -1);
  }

  else
  {
  }

  v23 = *&v1[v9];
}

id sub_1C8466464(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a1;
  v7 = a4(a3);

  if (v7)
  {
    v8 = sub_1C8590CB4();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1C8466538(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_1C8590CC4();
  v7 = a1;
  a4(v6);

  v8 = sub_1C8590CB4();

  return v8;
}

BOOL sub_1C84665F8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *a1 + 64;
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v11 = (*(v2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v1 = *v11;
    v12 = v11[1];
    v6 &= v6 - 1;
    v26[0] = *v11;
    v26[1] = v12;
    *&v26[5] = 0x5F69737372;
    v26[6] = -3.24180904e178;
    sub_1C8481E28();

    if (sub_1C8590EE4())
    {
      v27 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C84750E0(0, *(v9 + 16) + 1, 1);
        v9 = v27;
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_1C84750E0((v13 > 1), v14 + 1, 1);
        v15 = v14 + 1;
        v9 = v27;
      }

      *(v9 + 16) = v15;
      v16 = v9 + 16 * v14;
      *(v16 + 32) = v1;
      *(v16 + 40) = v12;
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v10;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  v1 = *(v9 + 16);
  if (v1 == 0.0)
  {

    sub_1C8590E44();
    if (qword_1EDE5CA48 == -1)
    {
LABEL_22:
      sub_1C8590CA4();
      sub_1C8590E54();
      sub_1C8590CA4();
      return *&v1 != 0;
    }

LABEL_25:
    swift_once();
    goto LABEL_22;
  }

  v17 = v24;

  v18 = sub_1C847809C(0, v9, a1, v9);

  v19 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset;
  *&v17[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset] = v18 / 1000.0;
  *&v26[3] = MEMORY[0x1E69E63B0];
  v26[0] = v18 / 1000.0;
  sub_1C8466D6C(v26, 0x7366664F656D6974, 0xEA00000000007465);
  if (*&v17[v19] < 0.0)
  {
    v20 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDE5CB90;
    if (os_log_type_enabled(qword_1EDE5CB90, v20))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = *&v17[v19];
      _os_log_impl(&dword_1C8460000, v21, v20, "Calculated timeOffset between samples is negative %f", v22, 0xCu);
      MEMORY[0x1CCA78470](v22, -1, -1);
    }
  }

  return *&v1 != 0;
}

double sub_1C84669B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1C8474B54(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1C8481CB4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1C8466A1C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = 0;
  v6 = a2 + 40;
  v15 = a2 + 40;
  do
  {
    v16 = result;
    for (i = (v6 + 16 * v5); ; i += 2)
    {
      if (v5 >= v3)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_18;
      }

      v9 = *a3;
      if (*(*a3 + 16))
      {
        break;
      }

LABEL_5:
      ++v5;
      if (v8 == v3)
      {
        return v16;
      }
    }

    v10 = *(i - 1);
    v11 = *i;

    v12 = sub_1C8474B54(v10, v11);
    if ((v13 & 1) == 0 || (sub_1C8481CB4(*(v9 + 56) + 32 * v12, v17), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_5;
    }

    v14 = v18;

    result = v16;
    if (v16 <= v14)
    {
      result = v14;
    }

    ++v5;
    v6 = v15;
  }

  while (v8 != v3);
  return result;
}

uint64_t sub_1C8466B48(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = 0;
    v7 = a2 + 40;
    while (1)
    {
      v8 = (v7 + 16 * v6);
      for (i = v6; ; ++i)
      {
        if (i >= v4)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          return result;
        }

        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_19;
        }

        v10 = *a3;
        if (*(*a3 + 16))
        {
          break;
        }

LABEL_5:
        v8 += 2;
        if (v6 == v4)
        {
          return v3 & 1;
        }
      }

      v11 = *(v8 - 1);
      v12 = *v8;

      v13 = sub_1C8474B54(v11, v12);
      if ((v14 & 1) == 0)
      {
        break;
      }

      sub_1C8481CB4(*(v10 + 56) + 32 * v13, v21);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v15 = v22;
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

      v19 = sub_1C8590E64();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      v16 = qword_1EDE5CB90;
      if (os_log_type_enabled(qword_1EDE5CB90, v19))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v21[0] = v18;
        *v17 = 136315394;
        *(v17 + 4) = sub_1C84741F0(v11, v12, v21);
        *(v17 + 12) = 2048;
        *(v17 + 14) = v15;
        _os_log_impl(&dword_1C8460000, v16, v19, "arrayStat contains negative %s val %ld", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x1CCA78470](v18, -1, -1);
        MEMORY[0x1CCA78470](v17, -1, -1);
      }

      v7 = v20;
      v3 = 1;
      if (v6 == v4)
      {
        return v3 & 1;
      }
    }

    goto LABEL_5;
  }

  return v3 & 1;
}

uint64_t sub_1C8466D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1C8481D10(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1C8475624(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1C8482178(a1, &qword_1EC2AADB8, &qword_1C85A10C0);
    sub_1C84753D0(a2, a3, v10);

    return sub_1C8482178(v10, &qword_1EC2AADB8, &qword_1C85A10C0);
  }

  return result;
}

uint64_t sub_1C8466E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment) == 1)
  {
    if (*(a2 + 16))
    {
      v5 = sub_1C8474B54(0x6C69666F72507061, 0xE900000000000065);
      if (v6)
      {
        sub_1C8481CB4(*(a2 + 56) + 32 * v5, &v31);
        v7 = MEMORY[0x1E69E6158];
        if (swift_dynamicCast())
        {
          *(&v32 + 1) = v7;
          v31 = v27;
LABEL_6:
          sub_1C8466D6C(&v31, 0x6C69666F72507061, 0xE900000000000065);
          return 1;
        }
      }
    }

    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C85A0FF0;
    v16 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v17 = sub_1C8481E7C();
    *(v15 + 64) = v17;
    *(v15 + 32) = 0x6C69666F72507061;
    *(v15 + 40) = 0xE900000000000065;
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    if (*(a2 + 16) && (v18 = sub_1C8474B54(0x6C69666F72507061, 0xE900000000000065), (v19 & 1) != 0))
    {
      sub_1C8481CB4(*(a2 + 56) + 32 * v18, &v31);
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    sub_1C8482178(&v31, &qword_1EC2AADB8, &qword_1C85A10C0);
    MEMORY[0x1CCA775F0](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
    *(v15 + 96) = v16;
    *(v15 + 104) = v17;
    *(v15 + 72) = v28;
    sub_1C8590CA4();
  }

  else
  {
    if (*(a3 + 16))
    {
      v10 = sub_1C8474B54(0x6C69666F72507061, 0xE900000000000065);
      if (v11)
      {
        sub_1C8481CB4(*(a3 + 56) + 32 * v10, &v31);
        if (swift_dynamicCast())
        {
          if (*(a2 + 16))
          {
            v12 = sub_1C8474B54(0x6C69666F72507061, 0xE900000000000065);
            if (v13)
            {
              sub_1C8481CB4(*(a2 + 56) + 32 * v12, &v31);
              v14 = MEMORY[0x1E69E6158];
              if (swift_dynamicCast())
              {

                *(&v32 + 1) = v14;
                v31 = v27;
                goto LABEL_6;
              }
            }
          }
        }
      }
    }

    v20 = MEMORY[0x1E69E6158];
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C85A0FE0;
    *(v21 + 56) = v20;
    v22 = sub_1C8481E7C();
    *(v21 + 64) = v22;
    *(v21 + 32) = 0x6C69666F72507061;
    *(v21 + 40) = 0xE900000000000065;
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    if (*(a2 + 16) && (v23 = sub_1C8474B54(0x6C69666F72507061, 0xE900000000000065), (v24 & 1) != 0))
    {
      sub_1C8481CB4(*(a2 + 56) + 32 * v23, &v31);
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    sub_1C8482178(&v31, &qword_1EC2AADB8, &qword_1C85A10C0);
    MEMORY[0x1CCA775F0](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
    *(v21 + 96) = v20;
    *(v21 + 104) = v22;
    *(v21 + 72) = v29;
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    if (*(a3 + 16) && (v25 = sub_1C8474B54(0x6C69666F72507061, 0xE900000000000065), (v26 & 1) != 0))
    {
      sub_1C8481CB4(*(a3 + 56) + 32 * v25, &v31);
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    sub_1C8482178(&v31, &qword_1EC2AADB8, &qword_1C85A10C0);
    MEMORY[0x1CCA775F0](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
    *(v21 + 136) = v20;
    *(v21 + 144) = v22;
    *(v21 + 112) = v30;
    sub_1C8590CA4();
  }

  return 0;
}

uint64_t sub_1C8467370(uint64_t *a1)
{
  v95 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset;
  v2 = *(v1 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_timeOffset);
  if (v2 != 0.0)
  {
    v3 = 0;
LABEL_4:
    v4 = &unk_1F481AD58 + 16 * v3;
    v5 = *(v4 + 4);
    v6 = *(v4 + 5);
    v92 = v3 + 1;
    v7 = *a1;
    v8 = *a1 + 64;
    v9 = 1 << *(*a1 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(*a1 + 64);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v15 = v13;
      if (!v11)
      {
        break;
      }

LABEL_12:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = (v7[6] + ((v13 << 10) | (16 * v16)));
      v19 = *v17;
      v18 = v17[1];

      if (sub_1C8590DC4())
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v99 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C84750E0(0, v14[2] + 1, 1);
          v14 = v99;
        }

        v22 = v14[2];
        v21 = v14[3];
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v25 = v22 + 1;
          v91 = v22;
          sub_1C84750E0((v21 > 1), v22 + 1, 1);
          v23 = v25;
          v22 = v91;
          v14 = v99;
        }

        v14[2] = v23;
        v24 = &v14[2 * v22];
        v24[4] = v19;
        v24[5] = v18;
      }

      else
      {
      }
    }

    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= v12)
      {

        v26 = v14[2];
        if (v26)
        {
          v27 = 0;
          v28 = v14 + 5;
          v93 = v14[2];
          while (1)
          {
            if (v27 >= v14[2])
            {
              goto LABEL_73;
            }

            v29 = *(v28 - 1);
            v30 = *v28;
            v31 = v7[2];

            if (v31)
            {
              v32 = sub_1C8474B54(v29, v30);
              if (v33)
              {
                sub_1C8481CB4(v7[7] + 32 * v32, &v99);
                if (swift_dynamicCast())
                {
                  break;
                }
              }
            }

            if (v7[2])
            {
              v49 = sub_1C8474B54(v29, v30);
              if (v50)
              {
                sub_1C8481CB4(v7[7] + 32 * v49, &v99);
                if (swift_dynamicCast())
                {
                  v51 = *v98 * 1000.0;
                  v52 = *(v96 + v95);
                  if (v52 != 0.0)
                  {
                    *&v99 = v29;
                    *(&v99 + 1) = v30;

                    MEMORY[0x1CCA775F0](0x6365737265705F3ALL, 0xE800000000000000);

                    v73 = v99;
                    v100 = MEMORY[0x1E69E63B0];
                    *&v99 = v51 / v52;
                    sub_1C8481D10(&v99, v98);
                    v74 = *a1;
                    v75 = swift_isUniquelyReferenced_nonNull_native();
                    v76 = *a1;
                    v97 = v76;
                    v65 = sub_1C8474B54(v73, *(&v73 + 1));
                    v78 = v76[2];
                    v79 = (v77 & 1) == 0;
                    v69 = __OFADD__(v78, v79);
                    v80 = v78 + v79;
                    if (v69)
                    {
                      goto LABEL_75;
                    }

                    v81 = v77;
                    if (v76[3] >= v80)
                    {
                      if (v75)
                      {
                        goto LABEL_60;
                      }

                      v88 = v65;
                      sub_1C8474BCC();
                      v65 = v88;
                      if ((v81 & 1) == 0)
                      {
                        goto LABEL_65;
                      }

LABEL_61:
                      v85 = v65;

                      v7 = v97;
                      v86 = (v97[7] + 32 * v85);
                      __swift_destroy_boxed_opaque_existential_0(v86);
                      sub_1C8481D10(v98, v86);
                    }

                    else
                    {
                      sub_1C8474D70(v80, v75);
                      v65 = sub_1C8474B54(v73, *(&v73 + 1));
                      if ((v81 & 1) != (v82 & 1))
                      {
LABEL_79:
                        result = sub_1C8591004();
                        __break(1u);
                        return result;
                      }

LABEL_60:
                      if (v81)
                      {
                        goto LABEL_61;
                      }

LABEL_65:
                      v7 = v76;
                      v76[(v65 >> 6) + 8] |= 1 << v65;
                      *(v76[6] + 16 * v65) = v73;
                      sub_1C8481D10(v98, (v76[7] + 32 * v65));
                      v89 = v76[2];
                      v69 = __OFADD__(v89, 1);
                      v84 = v89 + 1;
                      if (v69)
                      {
                        goto LABEL_77;
                      }

LABEL_66:
                      v7[2] = v84;
                    }

                    *a1 = v7;
                    goto LABEL_22;
                  }

                  v53 = sub_1C8590E44();
                  if (qword_1EDE5CA48 != -1)
                  {
                    swift_once();
                  }

                  v54 = qword_1EDE5CB90;
                  if (os_log_type_enabled(qword_1EDE5CB90, v53))
                  {
                    v55 = swift_slowAlloc();
                    *v55 = 134218240;
                    *(v55 + 4) = v51;
                    *(v55 + 12) = 2048;
                    *(v55 + 14) = v52;
                    _os_log_impl(&dword_1C8460000, v54, v53, "safeDivideCalculation div by zero numerator %f denominator %f", v55, 0x16u);
                    MEMORY[0x1CCA78470](v55, -1, -1);
                  }

                  v56 = sub_1C8590E44();
                  if (!os_log_type_enabled(v54, v56))
                  {
                    goto LABEL_45;
                  }

                  v40 = swift_slowAlloc();
                  v41 = swift_slowAlloc();
                  *&v99 = v41;
                  *v40 = 136315394;
                  v57 = sub_1C84741F0(v29, v30, &v99);

                  *(v40 + 4) = v57;
                  *(v40 + 12) = 2080;
                  v58 = MEMORY[0x1CCA77690](v14, MEMORY[0x1E69E6158]);
                  v60 = sub_1C84741F0(v58, v59, &v99);

                  *(v40 + 14) = v60;
                  v46 = v56;
                  v47 = v54;
                  v48 = "addTimeTransformToDiffAndKPI safeDivideCalculation check: Double key %s keysInArray %s";
LABEL_44:
                  _os_log_impl(&dword_1C8460000, v47, v46, v48, v40, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1CCA78470](v41, -1, -1);
                  MEMORY[0x1CCA78470](v40, -1, -1);
                  v26 = v93;
                  goto LABEL_22;
                }
              }
            }

LABEL_22:
            ++v27;
            v28 += 2;
            if (v26 == v27)
            {
              goto LABEL_3;
            }
          }

          v34 = *&v98[0] * 1000.0;
          v35 = *(v96 + v95);
          if (v35 != 0.0)
          {
            *&v99 = v29;
            *(&v99 + 1) = v30;

            MEMORY[0x1CCA775F0](0x6365737265705F3ALL, 0xE800000000000000);

            v61 = v99;
            v100 = MEMORY[0x1E69E63B0];
            *&v99 = v34 / v35;
            sub_1C8481D10(&v99, v98);
            v62 = *a1;
            v63 = swift_isUniquelyReferenced_nonNull_native();
            v64 = *a1;
            v97 = v64;
            v65 = sub_1C8474B54(v61, *(&v61 + 1));
            v67 = v64[2];
            v68 = (v66 & 1) == 0;
            v69 = __OFADD__(v67, v68);
            v70 = v67 + v68;
            if (v69)
            {
              goto LABEL_74;
            }

            v71 = v66;
            if (v64[3] < v70)
            {
              sub_1C8474D70(v70, v63);
              v65 = sub_1C8474B54(v61, *(&v61 + 1));
              if ((v71 & 1) != (v72 & 1))
              {
                goto LABEL_79;
              }

              goto LABEL_55;
            }

            if (v63)
            {
LABEL_55:
              if (v71)
              {
                goto LABEL_61;
              }
            }

            else
            {
              v87 = v65;
              sub_1C8474BCC();
              v65 = v87;
              if (v71)
              {
                goto LABEL_61;
              }
            }

            v7 = v64;
            v64[(v65 >> 6) + 8] |= 1 << v65;
            *(v64[6] + 16 * v65) = v61;
            sub_1C8481D10(v98, (v64[7] + 32 * v65));
            v83 = v64[2];
            v69 = __OFADD__(v83, 1);
            v84 = v83 + 1;
            if (v69)
            {
              goto LABEL_76;
            }

            goto LABEL_66;
          }

          v36 = sub_1C8590E44();
          if (qword_1EDE5CA48 != -1)
          {
            swift_once();
          }

          v37 = qword_1EDE5CB90;
          if (os_log_type_enabled(qword_1EDE5CB90, v36))
          {
            v38 = swift_slowAlloc();
            *v38 = 134218240;
            *(v38 + 4) = v34;
            *(v38 + 12) = 2048;
            *(v38 + 14) = v35;
            _os_log_impl(&dword_1C8460000, v37, v36, "safeDivideCalculation div by zero numerator %f denominator %f", v38, 0x16u);
            MEMORY[0x1CCA78470](v38, -1, -1);
          }

          v39 = sub_1C8590E44();
          if (!os_log_type_enabled(v37, v39))
          {
LABEL_45:

            v26 = v93;
            goto LABEL_22;
          }

          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v99 = v41;
          *v40 = 136315394;
          v42 = sub_1C84741F0(v29, v30, &v99);

          *(v40 + 4) = v42;
          *(v40 + 12) = 2080;
          v43 = MEMORY[0x1CCA77690](v14, MEMORY[0x1E69E6158]);
          v45 = sub_1C84741F0(v43, v44, &v99);

          *(v40 + 14) = v45;
          v46 = v39;
          v47 = v37;
          v48 = "addTimeTransformToDiffAndKPI safeDivideCalculation check: Int key %s keysInArray %s";
          goto LABEL_44;
        }

LABEL_3:

        v3 = v92;
        if (v92 == 14)
        {
          swift_arrayDestroy();
          return v2 != 0.0;
        }

        goto LABEL_4;
      }

      v11 = *(v8 + 8 * v13);
      ++v15;
      if (v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  sub_1C8590E44();
  if (qword_1EDE5CA48 != -1)
  {
LABEL_78:
    swift_once();
  }

  sub_1C8590CA4();
  return v2 != 0.0;
}

uint64_t sub_1C8467D54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_1C847416C(*(a1 + 16), 0);
    v5 = sub_1C8477780(&v8, v4 + 4, v2, a1);

    result = sub_1C8463D10();
    if (v5 != v2)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v9 = v4;
  sub_1C84757E0(&v9);
  v7 = v9;
  if (v1)
  {
  }

  return v7;
}

uint64_t sub_1C8467E40(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C8590F64();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1C84762B8(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void *sub_1C8468140(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1C847416C(*(a1 + 16), 0);
  v4 = sub_1C8477628(&v6, v3 + 4, v2, a1);
  sub_1C8463D10();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *sub_1C84681D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1C847416C(*(a1 + 16), 0);
  v4 = sub_1C8477780(&v6, v3 + 4, v2, a1);
  sub_1C8463D10();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1C8468260(unint64_t a1)
{
  v3 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE0, &qword_1C85A10E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  *&v469 = &v384 - v5;
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADB0, &qword_1C85A10B8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C85A1000;
  v460 = 0x80000001C85A3B00;
  *(v6 + 40) = 0x80000001C85A3B00;
  *(v6 + 48) = 0xD000000000000029;
  v444 = 0x80000001C85A3B30;
  *(v6 + 56) = 0x80000001C85A3B30;
  *(v6 + 64) = 0xD000000000000029;
  v438 = 0x80000001C85A3B60;
  v439 = 0x80000001C85A3B90;
  *(v6 + 72) = 0x80000001C85A3B60;
  *(v6 + 80) = 0xD000000000000029;
  *(v6 + 88) = 0x80000001C85A3B90;
  *(v6 + 96) = 0xD000000000000028;
  v435 = 0x80000001C85A3BC0;
  v436 = 0x80000001C85A3BF0;
  *(v6 + 104) = 0x80000001C85A3BC0;
  *(v6 + 112) = 0xD000000000000028;
  v437 = 0xD000000000000028;
  *(v6 + 120) = 0x80000001C85A3BF0;
  *(v6 + 128) = 0xD000000000000025;
  v440 = 0xD000000000000025;
  v433 = 0x80000001C85A3C50;
  v434 = 0x80000001C85A3C20;
  *(v6 + 136) = 0x80000001C85A3C20;
  *(v6 + 144) = 0xD000000000000026;
  *(v6 + 152) = 0x80000001C85A3C50;
  *(v6 + 160) = 0xD000000000000026;
  v449 = 0xD000000000000026;
  v431 = 0x80000001C85A3CB0;
  v432 = 0x80000001C85A3C80;
  *(v6 + 168) = 0x80000001C85A3C80;
  *(v6 + 176) = 0xD000000000000029;
  *(v6 + 184) = 0x80000001C85A3CB0;
  *(v6 + 192) = 0xD000000000000029;
  v429 = 0x80000001C85A3D10;
  v430 = 0x80000001C85A3CE0;
  *(v6 + 200) = 0x80000001C85A3CE0;
  *(v6 + 208) = 0xD00000000000002ALL;
  *(v6 + 216) = 0x80000001C85A3D10;
  *(v6 + 224) = 0xD00000000000002ALL;
  v427 = 0xD00000000000001DLL;
  v428 = 0x80000001C85A3D40;
  *(v6 + 232) = 0x80000001C85A3D40;
  *(v6 + 240) = 0xD00000000000001DLL;
  v425 = 0x80000001C85A3D90;
  v426 = 0x80000001C85A3D70;
  *(v6 + 248) = 0x80000001C85A3D70;
  *(v6 + 256) = 0xD00000000000001CLL;
  *(v6 + 264) = 0x80000001C85A3D90;
  *(v6 + 272) = 0xD00000000000001CLL;
  v422 = 0x80000001C85A3DD0;
  v423 = 0x80000001C85A3DB0;
  *(v6 + 280) = 0x80000001C85A3DB0;
  *(v6 + 288) = 0xD000000000000024;
  *(v6 + 296) = 0x80000001C85A3DD0;
  *(v6 + 304) = 0xD000000000000024;
  v419 = 0x80000001C85A3E30;
  v420 = 0x80000001C85A3E00;
  *(v6 + 312) = 0x80000001C85A3E00;
  *(v6 + 320) = 0xD000000000000024;
  *(v6 + 328) = 0x80000001C85A3E30;
  *(v6 + 336) = 0xD000000000000024;
  v421 = 0xD000000000000024;
  v417 = 0x80000001C85A3E90;
  v418 = 0x80000001C85A3E60;
  *(v6 + 344) = 0x80000001C85A3E60;
  *(v6 + 352) = 0xD00000000000001CLL;
  *(v6 + 360) = 0x80000001C85A3E90;
  *(v6 + 368) = 0xD00000000000001CLL;
  *(v6 + 608) = 0xD000000000000030;
  *(v6 + 624) = 0xD000000000000031;
  *(v6 + 640) = 0xD000000000000038;
  *(v6 + 656) = 0xD000000000000039;
  *(v6 + 672) = 0xD000000000000036;
  *(v6 + 688) = 0xD000000000000037;
  v415 = 0x80000001C85A3ED0;
  v416 = 0x80000001C85A3EB0;
  *(v6 + 376) = 0x80000001C85A3EB0;
  *(v6 + 384) = 0xD00000000000001CLL;
  *(v6 + 392) = 0x80000001C85A3ED0;
  *(v6 + 400) = 0xD00000000000001CLL;
  v424 = 0xD00000000000001CLL;
  v413 = 0x80000001C85A3F10;
  v414 = 0x80000001C85A3EF0;
  *(v6 + 408) = 0x80000001C85A3EF0;
  *(v6 + 416) = 0xD00000000000001ALL;
  *(v6 + 424) = 0x80000001C85A3F10;
  *(v6 + 432) = 0xD00000000000001ALL;
  v410 = 0x80000001C85A3F50;
  v411 = 0x80000001C85A3F30;
  *(v6 + 440) = 0x80000001C85A3F30;
  *(v6 + 448) = 0xD00000000000001ALL;
  *(v6 + 456) = 0x80000001C85A3F50;
  *(v6 + 464) = 0xD00000000000001ALL;
  v408 = 0x80000001C85A3F90;
  v409 = 0x80000001C85A3F70;
  *(v6 + 472) = 0x80000001C85A3F70;
  *(v6 + 480) = 0xD00000000000001BLL;
  *(v6 + 488) = 0x80000001C85A3F90;
  *(v6 + 496) = 0xD00000000000001BLL;
  v405 = 0x80000001C85A3FD0;
  v406 = 0x80000001C85A3FB0;
  *(v6 + 504) = 0x80000001C85A3FB0;
  *(v6 + 512) = 0xD00000000000001BLL;
  *(v6 + 520) = 0x80000001C85A3FD0;
  v407 = 0xD00000000000001BLL;
  *(v6 + 528) = 0xD00000000000001BLL;
  v404 = 0x80000001C85A3FF0;
  *(v6 + 536) = 0x80000001C85A3FF0;
  *(v6 + 544) = 0xD00000000000001ALL;
  v403 = 0x80000001C85A4010;
  *(v6 + 552) = 0x80000001C85A4010;
  *(v6 + 560) = 0xD00000000000001ALL;
  v402 = 0x80000001C85A4030;
  *(v6 + 568) = 0x80000001C85A4030;
  *(v6 + 576) = 0xD00000000000001ALL;
  v401 = 0x80000001C85A4050;
  *(v6 + 584) = 0x80000001C85A4050;
  v412 = 0xD00000000000001ALL;
  *(v6 + 592) = 0xD00000000000001ALL;
  v400 = 0x80000001C85A4070;
  *(v6 + 600) = 0x80000001C85A4070;
  v399 = 0x80000001C85A4090;
  *(v6 + 616) = 0x80000001C85A4090;
  v398 = 0x80000001C85A40D0;
  *(v6 + 632) = 0x80000001C85A40D0;
  *(v6 + 648) = 0x80000001C85A4110;
  v396 = 0x80000001C85A4150;
  v397 = 0x80000001C85A4110;
  *(v6 + 664) = 0x80000001C85A4150;
  v395 = 0x80000001C85A4190;
  *(v6 + 680) = 0x80000001C85A4190;
  v394 = 0x80000001C85A41D0;
  *(v6 + 696) = 0x80000001C85A41D0;
  *&v470 = v6;
  *(v6 + 32) = 0xD000000000000029;
  v468 = (v6 + 32);
  v471 = a1;
  v7 = *a1;

  v8 = sub_1C84681D0(v465);
  v9 = MEMORY[0x1E69E7CC0];
  *&v476 = MEMORY[0x1E69E7CC0];
  v463 = v8 + 4;
  i = v8;
  v467 = v8 + 5;
  v442 = MEMORY[0x1E69E7CC0];
  v464 = 0;
  do
  {
LABEL_3:
    if (*(v470 + 16) <= v3)
    {
      goto LABEL_446;
    }

    v10 = &v468[2 * v3];
    v12 = *v10;
    v11 = v10[1];
    ++v3;
    a1 = *(i + 16);

    v13 = -a1;
    v14 = -1;
    v15 = v467;
    do
    {
      if (v13 + v14 == -1)
      {

        if (v3 == 42)
        {
          goto LABEL_11;
        }

        goto LABEL_3;
      }

      if (++v14 >= *(i + 16))
      {
        __break(1u);
LABEL_374:

        LOBYTE(a1) = sub_1C8590E44();
        if (qword_1EDE5CA48 != -1)
        {
          goto LABEL_453;
        }

        goto LABEL_375;
      }

      v16 = v15 + 2;
      v17 = *(v15 - 1);
      a1 = *v15;

      v1 = sub_1C8590DC4();

      v15 = v16;
    }

    while ((v1 & 1) == 0);
    a1 = &v476;
    sub_1C8475120();
    v9 = v476;
    v19 = *(v476 + 16);
    v18 = *(v476 + 24);
    v1 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      sub_1C84750E0((v18 > 1), v19 + 1, 1);
      v9 = v476;
    }

    *(v9 + 16) = v1;
    v20 = v9 + 16 * v19;
    *(v20 + 32) = v12;
    *(v20 + 40) = v11;
  }

  while (v3 != 42);
LABEL_11:

  v21 = v9;
  v1 = "DiffpeerStats_XX:XX:XX:XX:XX:XX_rssi_";
  v457 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_performPerPeerCalculations;
  v22 = v466[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_performPerPeerCalculations];
  v480 = v9;
  a1 = "DiffpeerStats_XX:XX:XX:XX:XX:XX_txLatencyVI_";
  if ((v22 & 1) == 0)
  {
    goto LABEL_37;
  }

  v23 = swift_allocObject();
  v24 = 0;
  *(v23 + 16) = xmmword_1C85A1010;
  *(v23 + 32) = v440;
  *(v23 + 40) = 0x80000001C85A4210;
  v25 = v23 + 40;
  *(v23 + 48) = 0xD00000000000002CLL;
  *(v23 + 56) = 0x80000001C85A4240;
  *(v23 + 64) = 0xD00000000000002CLL;
  *(v23 + 72) = 0x80000001C85A4270;
  *(v23 + 80) = 0xD00000000000002CLL;
  *(v23 + 88) = 0x80000001C85A42A0;
  *(v23 + 96) = 0xD00000000000002CLL;
  *(v23 + 104) = 0x80000001C85A42D0;
  v468 = 0x80000001C85A45E0;
  *&v470 = MEMORY[0x1E69E7CC0];
  v1 = MEMORY[0x1E69E6158];
  v467 = (v23 + 40);
  do
  {
    v26 = (v25 + 16 * v24);
    v27 = v24;
    while (1)
    {
      if (v27 >= *(v23 + 16))
      {
        goto LABEL_448;
      }

      v24 = v27 + 1;
      v28 = *v26;
      *&v476 = *(v26 - 1);
      *(&v476 + 1) = v28;
      *&v475[0] = 0xD000000000000011;
      *(&v475[0] + 1) = v468;
      sub_1C8481E28();

      a1 = &v476;
      v29 = sub_1C8590E94();
      if (v29[2] == 2)
      {
        break;
      }

      v26 += 2;
      ++v27;
      if (v24 == 5)
      {
        goto LABEL_23;
      }
    }

    v30 = v29[5];
    v462 = v29[4];
    v31 = v29[7];
    v461 = v29[6];
    v32 = v30;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      *&v470 = sub_1C8473E28(0, *(v470 + 16) + 1, 1, v470);
    }

    a1 = *(v470 + 16);
    v33 = *(v470 + 24);
    if (a1 >= v33 >> 1)
    {
      *&v470 = sub_1C8473E28((v33 > 1), a1 + 1, 1, v470);
    }

    v34 = v470;
    *(v470 + 16) = a1 + 1;
    v35 = (v34 + 32 * a1);
    v35[4] = v462;
    v35[5] = v32;
    v35[6] = v461;
    v35[7] = v31;
    v25 = v467;
  }

  while (v27 != 4);
LABEL_23:

  v478 = MEMORY[0x1E69E7CD0];
  v467 = *(i + 16);
  if (!v467)
  {
    goto LABEL_36;
  }

  v36 = 0;
  v37 = *(v470 + 16);
  v462 = v470 + 56;
  while (2)
  {
    if (v36 >= *(i + 16))
    {
      goto LABEL_449;
    }

    if (!v37)
    {
      goto LABEL_26;
    }

    v468 = v36;
    v38 = &v463[2 * v36];
    v39 = *v38;
    v40 = v38[1];

    v41 = 0;
    v42 = v462;
    while (1)
    {
      if (v41 >= *(v470 + 16))
      {
        goto LABEL_445;
      }

      v43 = *(v42 - 1);
      v44 = *v42;
      v45 = *(v42 - 3);
      a1 = *(v42 - 2);

      v1 = sub_1C8590DC4();

      if (v1)
      {
        break;
      }

LABEL_31:
      ++v41;
      v42 += 4;
      if (v37 == v41)
      {
        goto LABEL_25;
      }
    }

    *&v476 = v39;
    *(&v476 + 1) = v40;
    *&v475[0] = v43;
    *(&v475[0] + 1) = v44;
    v46 = sub_1C8590C94();
    v47 = v469;
    (*(*(v46 - 8) + 56))(v469, 1, 1, v46);
    sub_1C8481E28();
    sub_1C8590ED4();
    LOBYTE(a1) = v48;
    v1 = v49;
    sub_1C8482178(v47, &qword_1EC2AADE0, &qword_1C85A10E0);

    if (v1)
    {
      goto LABEL_31;
    }

    v50 = sub_1C8590DF4();
    v52 = v51;
    v1 = v53;
    v55 = v54;

    v56 = MEMORY[0x1CCA77590](v50, v52, v1, v55);
    v58 = v57;

    a1 = &v478;
    sub_1C8476CB8(&v476, v56, v58);
LABEL_25:

    v36 = v468;
LABEL_26:
    if (++v36 != v467)
    {
      continue;
    }

    break;
  }

LABEL_36:

  v59 = sub_1C8468140(v478);
  sub_1C846CD90(v59);
  v21 = v480;
  a1 = "DiffpeerStats_XX:XX:XX:XX:XX:XX_txLatencyVI_";
  v1 = "DiffpeerStats_XX:XX:XX:XX:XX:XX_rssi_";
LABEL_37:
  v455 = *(v21 + 16);
  if (!v455)
  {

    v63 = v471;
    v64 = MEMORY[0x1E69E7CC0];
    goto LABEL_379;
  }

  v452 = 0;
  v60 = 0;
  v61 = *(i + 16);
  v454 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues;
  v458 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_includeStdDev;
  v441 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_shorthandConstantStats;
  v456 = v21 + 32;
  v447 = 0x80000001C85A4540;
  v446 = 0x80000001C85A4570;
  v391 = 0x80000001C85A4210;
  v390 = 0x80000001C85A4240;
  v389 = 0x80000001C85A4270;
  v388 = 0x80000001C85A42A0;
  v387 = 0x80000001C85A42D0;
  v386 = 0x80000001C85A4500;
  v385 = 0x80000001C85A4520;
  v459 = i + 40;
  *&v470 = v61;
  v450 = v61 - 1;
  v448 = xmmword_1C85A1020;
  *(&v62 + 1) = 6;
  v451 = xmmword_1C85A0FE0;
  *&v62 = 136315138;
  v443 = v62;
  v445 = xmmword_1C85A0FF0;
  *(&v62 + 1) = 12;
  v393 = xmmword_1C85A1030;
  *&v62 = 136315394;
  v392 = v62;
  v63 = v471;
  v64 = MEMORY[0x1E69E7CC0];
  v453 = v21;
  while (2)
  {
    if (*(v21 + 16) <= v60)
    {
      goto LABEL_450;
    }

    v462 = v60;
    v65 = (v456 + 16 * v60);
    v67 = *v65;
    v66 = v65[1];
    *&v476 = v64;

    if (!v470)
    {
      v1 = v64;
LABEL_57:
      v79 = v464;
      v80 = sub_1C8466B48(0, v1, v63);
      v468 = v1;
      LODWORD(v461) = v80;
      if (v80)
      {
        sub_1C8590E64();
        v1 = v466;
        if (qword_1EDE5CA48 != -1)
        {
          swift_once();
        }

        LOBYTE(a1) = qword_1EDE5CB90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
        v81 = swift_allocObject();
        *(v81 + 16) = v448;
        *(v81 + 56) = MEMORY[0x1E69E6158];
        *(v81 + 64) = sub_1C8481E7C();
        *(v81 + 32) = v67;
        *(v81 + 40) = v66;

        sub_1C8590CA4();

        v82 = v452 + 1;
        if (__OFADD__(v452, 1))
        {
          goto LABEL_451;
        }

        if (v82 >= 11)
        {

          *(v1 + v454) = 1;
          sub_1C8590E44();
          v381 = swift_allocObject();
          *(v381 + 16) = v445;
          v382 = MEMORY[0x1E69E65A8];
          v383 = MEMORY[0x1E69E6530];
          *(v381 + 56) = MEMORY[0x1E69E6530];
          *(v381 + 64) = v382;
          *(v381 + 32) = v82;
          *(v381 + 96) = v383;
          *(v381 + 104) = v382;
          *(v381 + 72) = 10;
          sub_1C8590CA4();

          return 0;
        }

        ++v452;
        v63 = v471;
        v83 = v1;
        v1 = v468;
      }

      else
      {
        v83 = v466;
      }

      v84 = sub_1C8466A1C(0, v1, v63);

      v85 = v83;
      sub_1C84796E4(v1, v63, v84);
      v87 = v86;

      v88 = v85;
      v89 = sub_1C8479888(0, v1, v63, v88);

      if (*(v83 + v454) == 1)
      {
        goto LABEL_374;
      }

      v90 = v88;
      sub_1C8479BF8(v1, v63, 9.22337204e18);
      v92 = v91;

      if (v92 == 9.22337204e18)
      {
        v93 = 0.0;
      }

      else
      {
        v93 = v92;
      }

      v94 = v90;
      sub_1C8479DA4(v1, v63, -9.22337204e18);
      v96 = v95;

      if (v96 == -9.22337204e18)
      {
        v97 = 0.0;
      }

      else
      {
        v97 = v96;
      }

      v98 = v94;
      sub_1C8479F50(v1, v63, 0.0);
      v100 = v99;

      v101 = v89;
      if (v89)
      {
        v102 = v100 / v89;
      }

      else
      {
        v102 = 0.0;
      }

      v479[0] = v102;
      v103 = 0.0;
      if (*(v83 + v458) == 1)
      {

        v104 = v98;
        sub_1C847A10C(v1, v63, 0.0, v67, v66, v479);
        v106 = v105;

        if (v89)
        {
          v107 = sqrt(v106 / v101);
          v103 = sqrt(v107 / v101);
        }
      }

      v108 = swift_allocObject();
      *(v108 + 16) = 0;
      *&v469 = v108 + 16;
      *(v108 + 24) = 0xE000000000000000;
      if (v466[v457] == 1)
      {
        *&v476 = v67;
        *(&v476 + 1) = v66;
        *&v475[0] = v449;
        *(&v475[0] + 1) = v447;
        v473 = 0xD000000000000013;
        v474 = v446;
        sub_1C8481E28();
        v109 = sub_1C8590EC4();
        v111 = v110;
      }

      else
      {

        v109 = v67;
        v111 = v66;
      }

      v463 = v108;
      v464 = v79;
      v467 = v89;
      if (v109 == 0xD000000000000029 && v460 == v111 || (v465 = v109, (sub_1C8590FE4() & 1) != 0))
      {

        v112 = 0x6375535448567852;
        v113 = 0xEC00000073736563;
LABEL_89:
        swift_beginAccess();
        v114 = *(v108 + 24);
        *(v108 + 16) = v112;
        *(v108 + 24) = v113;

        if (v467)
        {
          v115 = 0;
          if (v461)
          {
            goto LABEL_91;
          }

          v197 = 1;
LABEL_125:

          v198 = v466[v441];
          v465 = v115;
          if (v198 == 1 && v93 == v97 && v97 == v102 && v103 == 0.0)
          {
            v199 = MEMORY[0x1E69E63B0];
            if (v115)
            {
              swift_beginAccess();
              v200 = *(v108 + 16);
              v201 = *(v108 + 24);
              *&v476 = 0x6E616964656DLL;
              *(&v476 + 1) = 0xE600000000000000;
              MEMORY[0x1CCA775F0](v200, v201);
              v202 = v476;
              v477 = v199;
              *&v476 = v102;
              sub_1C8466D6C(&v476, v202, *(&v476 + 1));
              v140 = &qword_1EC2AADB8;
              if ((v197 & 1) == 0)
              {
                v465 = 1;
                goto LABEL_103;
              }
            }

            else
            {
              swift_beginAccess();
              v235 = *(v108 + 16);
              v236 = *(v108 + 24);
              *&v476 = 1851876717;
              *(&v476 + 1) = 0xE400000000000000;
              MEMORY[0x1CCA775F0](v235, v236);
              v237 = v476;
              v477 = v199;
              *&v476 = v102;
              sub_1C8466D6C(&v476, v237, *(&v476 + 1));
              v140 = &qword_1EC2AADB8;
              if ((v197 & 1) == 0)
              {
                v465 = 0;
LABEL_103:
                v141 = *(v1 + 16);
                if (v141)
                {
                  v142 = (v1 + 40);
                  do
                  {
                    v143 = *(v142 - 1);
                    v144 = *v142;

                    sub_1C84753D0(v143, v144, &v476);
                    sub_1C8482178(&v476, v140, &qword_1C85A10C0);
                    v145 = sub_1C8590D44();
                    v146 = sub_1C847842C(v145, v143, v144);
                    v148 = v147;
                    v1 = v140;
                    v150 = v149;
                    v152 = v151;

                    v153 = v150;
                    v140 = v1;
                    v154 = MEMORY[0x1CCA77590](v146, v148, v153, v152);
                    v156 = v155;

                    sub_1C84753D0(v154, v156, &v476);

                    sub_1C8482178(&v476, v1, &qword_1C85A10C0);
                    v142 += 2;
                    --v141;
                  }

                  while (v141);
                }

                if (v465)
                {
                  swift_beginAccess();
                  v157 = v463;
                  v158 = v463[2];
                  v159 = v463[3];
                  *&v475[0] = 0x6E616964656DLL;
                  *(&v475[0] + 1) = 0xE600000000000000;
                  MEMORY[0x1CCA775F0](v158, v159);
                  LOBYTE(a1) = BYTE8(v475[0]);
                  v63 = v471;
                  v465 = *v471;
                  sub_1C84669B8(*&v475[0], *(&v475[0] + 1), v465, &v476);

                  v64 = MEMORY[0x1E69E7CC0];
                  if (v477)
                  {
                    if (swift_dynamicCast())
                    {
                      v160 = *&v475[0];
                      if ((~*&v475[0] & 0x7FF0000000000000) == 0 && (*&v475[0] & 0xFFFFFFFFFFFFFLL) != 0)
                      {
                        v1 = sub_1C8590E44();
                        if (qword_1EDE5CA48 != -1)
                        {
                          swift_once();
                        }

                        *&v469 = qword_1EDE5CB90;
                        v161 = swift_allocObject();
                        *(v161 + 16) = v160;
                        v162 = swift_allocObject();
                        *(v162 + 16) = 32;
                        v163 = swift_allocObject();
                        *(v163 + 16) = 8;
                        v164 = swift_allocObject();
                        v165 = v463;
                        *(v164 + 16) = sub_1C8482020;
                        *(v164 + 24) = v165;
                        v166 = swift_allocObject();
                        *(v166 + 16) = sub_1C8482340;
                        *(v166 + 24) = v164;
                        v167 = swift_allocObject();
                        *(v167 + 16) = 0;
                        a1 = swift_allocObject();
                        *(a1 + 16) = 8;
                        v168 = swift_allocObject();
                        *(v168 + 16) = sub_1C8482348;
                        *(v168 + 24) = v161;
                        v169 = swift_allocObject();
                        *(v169 + 16) = sub_1C8482344;
                        *(v169 + 24) = v168;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE8, &qword_1C85A10E8);
                        v170 = swift_allocObject();
                        *(v170 + 16) = v393;
                        *(v170 + 32) = sub_1C848232C;
                        *(v170 + 40) = v162;
                        *(v170 + 48) = sub_1C848232C;
                        *(v170 + 56) = v163;
                        *(v170 + 64) = sub_1C8482330;
                        *(v170 + 72) = v166;
                        *(v170 + 80) = sub_1C848232C;
                        *(v170 + 88) = v167;
                        *(v170 + 96) = sub_1C848232C;
                        *(v170 + 104) = a1;
                        *(v170 + 112) = sub_1C8482334;
                        *(v170 + 120) = v169;
                        swift_retain_n();
                        v171 = v469;

                        if (os_log_type_enabled(v171, v1))
                        {
                          a1 = swift_slowAlloc();
                          v172 = swift_slowAlloc();
                          *&v476 = v172;
                          *a1 = v392;
                          v173 = v165[2];
                          v174 = v165[3];

                          v175 = sub_1C84741F0(v173, v174, &v476);

                          *(a1 + 4) = v175;
                          *(a1 + 12) = 2048;
                          *(a1 + 14) = v160;
                          v176 = v1;
                          v177 = v171;
                          v178 = "median%s isNaN %f";
LABEL_123:
                          _os_log_impl(&dword_1C8460000, v177, v176, v178, a1, 0x16u);
                          __swift_destroy_boxed_opaque_existential_0(v172);
                          MEMORY[0x1CCA78470](v172, -1, -1);
                          MEMORY[0x1CCA78470](a1, -1, -1);

LABEL_164:
                          v63 = v471;
                          v64 = MEMORY[0x1E69E7CC0];
LABEL_40:
                          v60 = v462 + 1;
                          v21 = v453;
                          if (v462 + 1 == v455)
                          {

LABEL_379:

                            sub_1C84669B8(0xD000000000000029, 0x80000001C85A4320, v465, &v476);
                            if (v477)
                            {
                              v319 = MEMORY[0x1E69E6530];
                              if (swift_dynamicCast())
                              {
                                v477 = v319;
                                *&v476 = *&v475[0];
                                sub_1C8466D6C(&v476, 0x43746E6572727563, 0xEC000000304D4C54);
                                sub_1C84753D0(0xD000000000000029, 0x80000001C85A4320, &v476);
                                goto LABEL_382;
                              }
                            }

                            else
                            {
LABEL_382:
                              sub_1C8482178(&v476, &qword_1EC2AADB8, &qword_1C85A10C0);
                            }

                            sub_1C84669B8(0xD000000000000029, 0x80000001C85A4350, *v63, &v476);
                            if (v477)
                            {
                              v320 = MEMORY[0x1E69E6530];
                              if (swift_dynamicCast())
                              {
                                v477 = v320;
                                *&v476 = *&v475[0];
                                sub_1C8466D6C(&v476, 0x43746E6572727563, 0xEC000000314D4C54);
                                sub_1C84753D0(0xD000000000000029, 0x80000001C85A4350, &v476);
                                goto LABEL_386;
                              }
                            }

                            else
                            {
LABEL_386:
                              sub_1C8482178(&v476, &qword_1EC2AADB8, &qword_1C85A10C0);
                            }

                            sub_1C84669B8(0xD000000000000029, 0x80000001C85A4380, *v63, &v476);
                            if (v477)
                            {
                              v321 = MEMORY[0x1E69E6530];
                              if (swift_dynamicCast())
                              {
                                v477 = v321;
                                *&v476 = *&v475[0];
                                sub_1C8466D6C(&v476, 0xD000000000000013, 0x80000001C85A44C0);
                                sub_1C84753D0(0xD000000000000029, 0x80000001C85A4380, &v476);
                                goto LABEL_390;
                              }
                            }

                            else
                            {
LABEL_390:
                              sub_1C8482178(&v476, &qword_1EC2AADB8, &qword_1C85A10C0);
                            }

                            sub_1C84669B8(0xD000000000000029, 0x80000001C85A43B0, *v63, &v476);
                            if (v477)
                            {
                              v322 = MEMORY[0x1E69E6530];
                              if (swift_dynamicCast())
                              {
                                v477 = v322;
                                *&v476 = *&v475[0];
                                sub_1C8466D6C(&v476, 0xD000000000000013, 0x80000001C85A44A0);
                                sub_1C84753D0(0xD000000000000029, 0x80000001C85A43B0, &v476);
                                goto LABEL_394;
                              }
                            }

                            else
                            {
LABEL_394:
                              sub_1C8482178(&v476, &qword_1EC2AADB8, &qword_1C85A10C0);
                            }

                            sub_1C84669B8(0xD000000000000031, 0x80000001C85A43E0, *v63, &v476);
                            if (v477)
                            {
                              v323 = MEMORY[0x1E69E6530];
                              if (swift_dynamicCast())
                              {
                                v477 = v323;
                                *&v476 = *&v475[0];
                                sub_1C8466D6C(&v476, 0xD000000000000019, 0x80000001C85A4480);
                                sub_1C84753D0(0xD000000000000031, 0x80000001C85A43E0, &v476);
                                goto LABEL_398;
                              }
                            }

                            else
                            {
LABEL_398:
                              sub_1C8482178(&v476, &qword_1EC2AADB8, &qword_1C85A10C0);
                            }

                            sub_1C84669B8(0xD000000000000031, 0x80000001C85A4420, *v63, &v476);
                            if (v477)
                            {
                              v324 = MEMORY[0x1E69E6530];
                              if (swift_dynamicCast())
                              {
                                v477 = v324;
                                *&v476 = *&v475[0];
                                sub_1C8466D6C(&v476, 0xD000000000000019, 0x80000001C85A4460);
                                v325 = v63;
                                sub_1C84753D0(0xD000000000000031, 0x80000001C85A4420, &v476);
                                goto LABEL_403;
                              }

                              v325 = v63;
                            }

                            else
                            {
                              v325 = v63;
LABEL_403:
                              sub_1C8482178(&v476, &qword_1EC2AADB8, &qword_1C85A10C0);
                            }

                            v326 = *v325;
                            *&v476 = v64;
                            v327 = 1 << *(v326 + 32);
                            v328 = -1;
                            if (v327 < 64)
                            {
                              v328 = ~(-1 << v327);
                            }

                            v329 = v328 & *(v326 + 64);
                            v330 = (v327 + 63) >> 6;

                            v1 = 0;
                            for (i = 0xD000000000000013; v329; *(v341 + 40) = v334)
                            {
LABEL_413:
                              while (1)
                              {
                                v332 = __clz(__rbit64(v329));
                                v329 &= v329 - 1;
                                v333 = (*(v326 + 48) + ((v1 << 10) | (16 * v332)));
                                v335 = *v333;
                                v334 = v333[1];

                                if (sub_1C8590DC4() & 1) != 0 && (sub_1C8590DD4())
                                {
                                  break;
                                }

                                if (!v329)
                                {
                                  goto LABEL_408;
                                }
                              }

                              v336 = v442;
                              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                              *&v476 = v336;
                              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                              {
                                sub_1C84750E0(0, *(v336 + 16) + 1, 1);
                                v336 = v476;
                              }

                              v339 = *(v336 + 16);
                              v338 = *(v336 + 24);
                              v340 = v339 + 1;
                              if (v339 >= v338 >> 1)
                              {
                                *&v470 = v339 + 1;
                                *&v469 = v339;
                                sub_1C84750E0((v338 > 1), v339 + 1, 1);
                                v340 = v470;
                                v339 = v469;
                                v336 = v476;
                              }

                              *(v336 + 16) = v340;
                              v442 = v336;
                              v341 = v336 + 16 * v339;
                              *(v341 + 32) = v335;
                            }

LABEL_408:
                            a1 = v442;
                            while (1)
                            {
                              v331 = v1 + 1;
                              if (__OFADD__(v1, 1))
                              {
                                goto LABEL_447;
                              }

                              if (v331 >= v330)
                              {
                                break;
                              }

                              v329 = *(v326 + 64 + 8 * v331);
                              ++v1;
                              if (v329)
                              {
                                v1 = v331;
                                goto LABEL_413;
                              }
                            }

                            v342 = *(a1 + 16);
                            if (!v342)
                            {
LABEL_441:

                              return 1;
                            }

                            v343 = (a1 + 40);
                            *(&v344 + 1) = 6;
                            v470 = xmmword_1C85A0FE0;
                            *&v344 = 136315138;
                            v469 = v344;
                            v345 = v471;
                            while (2)
                            {
                              i = v342;
                              v346 = *(v343 - 1);
                              v347 = *v343;

                              v348 = sub_1C8590D44();
                              v349 = sub_1C847A4A4(v348);
                              v351 = v350;
                              v353 = v352;
                              v355 = v354;

                              v356 = MEMORY[0x1CCA77590](v349, v351, v353, v355);
                              v358 = v357;

                              *&v475[0] = v356;
                              *(&v475[0] + 1) = v358;

                              MEMORY[0x1CCA775F0](0x657572745FLL, 0xE500000000000000);
                              v359 = *v345;
                              if (*(*v345 + 16))
                              {
                                v360 = *v345;
                                v361 = sub_1C8474B54(*&v475[0], *(&v475[0] + 1));
                                v363 = v362;

                                if ((v363 & 1) == 0)
                                {
                                  goto LABEL_435;
                                }

                                sub_1C8481CB4(*(v359 + 56) + 32 * v361, &v476);
                                if ((swift_dynamicCast() & 1) == 0)
                                {
                                  goto LABEL_435;
                                }

                                v364 = *&v475[0];
                                *&v475[0] = v356;
                                *(&v475[0] + 1) = v358;

                                MEMORY[0x1CCA775F0](0x65736C61665FLL, 0xE600000000000000);
                                v1 = *(&v475[0] + 1);
                                if (*(v359 + 16))
                                {
                                  a1 = sub_1C8474B54(*&v475[0], *(&v475[0] + 1));
                                  v366 = v365;

                                  if (v366)
                                  {
                                    sub_1C8481CB4(*(v359 + 56) + 32 * a1, &v476);
                                    if (swift_dynamicCast())
                                    {
                                      v367 = v364 + *&v475[0];
                                      if (__OFADD__(v364, *&v475[0]))
                                      {
                                        goto LABEL_452;
                                      }

                                      if (v367 < 1)
                                      {
                                        v371 = sub_1C8590E34();
                                        if (qword_1EDE5CA48 != -1)
                                        {
                                          swift_once();
                                        }

                                        v372 = qword_1EDE5CB90;
                                        v373 = swift_allocObject();
                                        *(v373 + 16) = v356;
                                        *(v373 + 24) = v358;
                                        v374 = swift_allocObject();
                                        *(v374 + 16) = 32;
                                        v375 = swift_allocObject();
                                        *(v375 + 16) = 8;
                                        v376 = swift_allocObject();
                                        *(v376 + 16) = sub_1C848233C;
                                        *(v376 + 24) = v373;
                                        v377 = swift_allocObject();
                                        *(v377 + 16) = sub_1C8482340;
                                        *(v377 + 24) = v376;
                                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE8, &qword_1C85A10E8);
                                        v378 = swift_allocObject();
                                        *(v378 + 16) = v470;
                                        *(v378 + 32) = sub_1C848232C;
                                        *(v378 + 40) = v374;
                                        *(v378 + 48) = sub_1C848232C;
                                        *(v378 + 56) = v375;
                                        *(v378 + 64) = sub_1C8482330;
                                        *(v378 + 72) = v377;

                                        if (os_log_type_enabled(v372, v371))
                                        {
                                          v379 = swift_slowAlloc();
                                          v380 = swift_slowAlloc();
                                          *&v476 = v380;
                                          *v379 = v469;
                                          *(v379 + 4) = sub_1C84741F0(v356, v358, &v476);
                                          _os_log_impl(&dword_1C8460000, v372, v371, "key %s has 0 for _true and _false time values", v379, 0xCu);
                                          __swift_destroy_boxed_opaque_existential_0(v380);
                                          MEMORY[0x1CCA78470](v380, -1, -1);
                                          MEMORY[0x1CCA78470](v379, -1, -1);
                                        }
                                      }

                                      else
                                      {
                                        v477 = MEMORY[0x1E69E63B0];
                                        *&v476 = (v364 / v367);
                                        sub_1C8481D10(&v476, v475);
                                        v368 = v471;
                                        v369 = *v471;
                                        v370 = swift_isUniquelyReferenced_nonNull_native();
                                        v473 = *v368;
                                        *v368 = 0x8000000000000000;
                                        sub_1C8475624(v475, v356, v358, v370);
                                        *v368 = v473;
                                      }
                                    }
                                  }

LABEL_435:
                                  *&v476 = v356;
                                  *(&v476 + 1) = v358;

                                  MEMORY[0x1CCA775F0](0x657572745FLL, 0xE500000000000000);
                                  v345 = v471;
                                  sub_1C84753D0(v476, *(&v476 + 1), &v476);

                                  sub_1C8482178(&v476, &qword_1EC2AADB8, &qword_1C85A10C0);
                                  *&v476 = v356;
                                  *(&v476 + 1) = v358;

                                  MEMORY[0x1CCA775F0](0x65736C61665FLL, 0xE600000000000000);

                                  sub_1C84753D0(v476, *(&v476 + 1), &v476);

                                  sub_1C8482178(&v476, &qword_1EC2AADB8, &qword_1C85A10C0);
                                  v343 += 2;
                                  v342 = i - 1;
                                  if (i == 1)
                                  {
                                    goto LABEL_441;
                                  }

                                  continue;
                                }
                              }

                              break;
                            }

                            goto LABEL_435;
                          }

                          continue;
                        }

                        goto LABEL_163;
                      }

                      goto LABEL_39;
                    }
                  }

                  else
                  {
                    sub_1C8482178(&v476, v140, &qword_1C85A10C0);
                  }

                  v203 = *(v157 + 16);
                  v204 = *(v157 + 24);
                  *&v475[0] = 0x6E616964656DLL;
                  *(&v475[0] + 1) = 0xE600000000000000;
                  MEMORY[0x1CCA775F0](v203, v204);
                  LOBYTE(a1) = BYTE8(v475[0]);
                  sub_1C84669B8(*&v475[0], *(&v475[0] + 1), v465, &v476);

                  if (v477)
                  {
                    if (swift_dynamicCast())
                    {
                      goto LABEL_39;
                    }
                  }

                  else
                  {
                    sub_1C8482178(&v476, v140, &qword_1C85A10C0);
                  }

                  sub_1C8590E34();
                  if (qword_1EDE5CA48 != -1)
                  {
                    swift_once();
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
                  v219 = swift_allocObject();
                  *(v219 + 16) = v445;
                  v1 = v157;
                  v220 = *(v157 + 16);
                  v221 = *(v1 + 24);
                  v222 = MEMORY[0x1E69E6158];
                  *(v219 + 56) = MEMORY[0x1E69E6158];
                  v223 = sub_1C8481E7C();
                  *(v219 + 64) = v223;
                  *(v219 + 32) = v220;
                  *(v219 + 40) = v221;
                  *&v476 = 0x6E616964656DLL;
                  *(&v476 + 1) = 0xE600000000000000;
                  MEMORY[0x1CCA775F0](v220, v221);
                  v224 = *(&v476 + 1);
                  a1 = v476;

                  sub_1C84669B8(a1, v224, v465, &v476);

                  sub_1C8482178(&v476, &qword_1EC2AADB8, &qword_1C85A10C0);
                  *(v219 + 96) = v222;
                  *(v219 + 104) = v223;
                  strcpy((v219 + 72), "Optional<Any>");
                  *(v219 + 86) = -4864;
                }

                else
                {
                  swift_beginAccess();
                  v179 = v463;
                  v180 = v463[2];
                  v181 = v463[3];
                  *&v475[0] = 1851876717;
                  *(&v475[0] + 1) = 0xE400000000000000;
                  MEMORY[0x1CCA775F0](v180, v181);
                  LOBYTE(a1) = BYTE8(v475[0]);
                  v63 = v471;
                  v465 = *v471;
                  sub_1C84669B8(*&v475[0], *(&v475[0] + 1), v465, &v476);

                  v64 = MEMORY[0x1E69E7CC0];
                  if (v477)
                  {
                    if (swift_dynamicCast())
                    {
                      v182 = *&v475[0];
                      if ((~*&v475[0] & 0x7FF0000000000000) == 0 && (*&v475[0] & 0xFFFFFFFFFFFFFLL) != 0)
                      {
                        v1 = sub_1C8590E44();
                        if (qword_1EDE5CA48 != -1)
                        {
                          swift_once();
                        }

                        *&v469 = qword_1EDE5CB90;
                        v183 = swift_allocObject();
                        *(v183 + 16) = v182;
                        v184 = swift_allocObject();
                        *(v184 + 16) = 32;
                        v185 = swift_allocObject();
                        *(v185 + 16) = 8;
                        v186 = swift_allocObject();
                        v187 = v463;
                        *(v186 + 16) = sub_1C8482338;
                        *(v186 + 24) = v187;
                        v188 = swift_allocObject();
                        *(v188 + 16) = sub_1C8482340;
                        *(v188 + 24) = v186;
                        v189 = swift_allocObject();
                        *(v189 + 16) = 0;
                        a1 = swift_allocObject();
                        *(a1 + 16) = 8;
                        v190 = swift_allocObject();
                        *(v190 + 16) = sub_1C8481FEC;
                        *(v190 + 24) = v183;
                        v191 = swift_allocObject();
                        *(v191 + 16) = sub_1C8481FF4;
                        *(v191 + 24) = v190;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE8, &qword_1C85A10E8);
                        v192 = swift_allocObject();
                        *(v192 + 16) = v393;
                        *(v192 + 32) = sub_1C848232C;
                        *(v192 + 40) = v184;
                        *(v192 + 48) = sub_1C848232C;
                        *(v192 + 56) = v185;
                        *(v192 + 64) = sub_1C8482330;
                        *(v192 + 72) = v188;
                        *(v192 + 80) = sub_1C848232C;
                        *(v192 + 88) = v189;
                        *(v192 + 96) = sub_1C848232C;
                        *(v192 + 104) = a1;
                        *(v192 + 112) = sub_1C848201C;
                        *(v192 + 120) = v191;
                        swift_retain_n();
                        v193 = v469;

                        if (os_log_type_enabled(v193, v1))
                        {
                          a1 = swift_slowAlloc();
                          v172 = swift_slowAlloc();
                          *&v476 = v172;
                          *a1 = v392;
                          v194 = v187[2];
                          v195 = v187[3];

                          v196 = sub_1C84741F0(v194, v195, &v476);

                          *(a1 + 4) = v196;
                          *(a1 + 12) = 2048;
                          *(a1 + 14) = v182;
                          v176 = v1;
                          v177 = v193;
                          v178 = "mean%s isNaN %f";
                          goto LABEL_123;
                        }

LABEL_163:

                        goto LABEL_164;
                      }

LABEL_39:

                      goto LABEL_40;
                    }
                  }

                  else
                  {
                    sub_1C8482178(&v476, v140, &qword_1C85A10C0);
                  }

                  v205 = *(v179 + 16);
                  v206 = *(v179 + 24);
                  *&v475[0] = 1851876717;
                  *(&v475[0] + 1) = 0xE400000000000000;
                  MEMORY[0x1CCA775F0](v205, v206);
                  LOBYTE(a1) = BYTE8(v475[0]);
                  sub_1C84669B8(*&v475[0], *(&v475[0] + 1), v465, &v476);

                  if (v477)
                  {
                    if (swift_dynamicCast())
                    {
                      goto LABEL_39;
                    }
                  }

                  else
                  {
                    sub_1C8482178(&v476, v140, &qword_1C85A10C0);
                  }

                  sub_1C8590E34();
                  if (qword_1EDE5CA48 != -1)
                  {
                    swift_once();
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
                  v225 = swift_allocObject();
                  *(v225 + 16) = v445;
                  v1 = v179;
                  v226 = *(v179 + 16);
                  v227 = *(v1 + 24);
                  v228 = MEMORY[0x1E69E6158];
                  *(v225 + 56) = MEMORY[0x1E69E6158];
                  v229 = sub_1C8481E7C();
                  *(v225 + 64) = v229;
                  *(v225 + 32) = v226;
                  *(v225 + 40) = v227;
                  *&v476 = 1851876717;
                  *(&v476 + 1) = 0xE400000000000000;
                  MEMORY[0x1CCA775F0](v226, v227);
                  v230 = *(&v476 + 1);
                  a1 = v476;

                  sub_1C84669B8(a1, v230, v465, &v476);

                  sub_1C8482178(&v476, &qword_1EC2AADB8, &qword_1C85A10C0);
                  *(v225 + 96) = v228;
                  *(v225 + 104) = v229;
                  strcpy((v225 + 72), "Optional<Any>");
                  *(v225 + 86) = -4864;
                }

                sub_1C8590CA4();

                v64 = MEMORY[0x1E69E7CC0];
                v63 = v471;
                goto LABEL_40;
              }
            }
          }

          else
          {
            swift_beginAccess();
            v207 = *(v108 + 16);
            v208 = *(v108 + 24);
            *&v476 = 7235949;
            *(&v476 + 1) = 0xE300000000000000;
            MEMORY[0x1CCA775F0](v207, v208);
            v209 = v476;
            v210 = MEMORY[0x1E69E63B0];
            v477 = MEMORY[0x1E69E63B0];
            *&v476 = v93;
            sub_1C8466D6C(&v476, v209, *(&v476 + 1));
            v211 = *(v108 + 16);
            v212 = *(v108 + 24);
            *&v476 = 7889261;
            *(&v476 + 1) = 0xE300000000000000;
            MEMORY[0x1CCA775F0](v211, v212);
            v213 = v476;
            v477 = v210;
            *&v476 = v97;
            sub_1C8466D6C(&v476, v213, *(&v476 + 1));
            v214 = *(v108 + 16);
            v215 = *(v108 + 24);
            *&v476 = 1701080941;
            *(&v476 + 1) = 0xE400000000000000;
            MEMORY[0x1CCA775F0](v214, v215);
            v216 = v476;
            v477 = v210;
            *&v476 = v87;
            sub_1C8466D6C(&v476, v216, *(&v476 + 1));
            v217 = *(v108 + 16);
            v218 = *(v108 + 24);
            if (v115)
            {
              *&v476 = 0x6E616964656DLL;
              *(&v476 + 1) = 0xE600000000000000;
            }

            else
            {
              *&v476 = 1851876717;
              *(&v476 + 1) = 0xE400000000000000;
            }

            MEMORY[0x1CCA775F0](v217, v218);
            v231 = v476;
            v477 = v210;
            *&v476 = v102;
            sub_1C8466D6C(&v476, v231, *(&v476 + 1));
            v140 = &qword_1EC2AADB8;
            if (v466[v458] == 1)
            {
              v232 = *(v108 + 16);
              v233 = *(v108 + 24);
              *&v476 = 0x766564647473;
              *(&v476 + 1) = 0xE600000000000000;
              MEMORY[0x1CCA775F0](v232, v233);
              v234 = v476;
              v477 = v210;
              *&v476 = v103;
              sub_1C8466D6C(&v476, v234, *(&v476 + 1));
              if (!v197)
              {
                goto LABEL_103;
              }
            }

            else if (!v197)
            {
              goto LABEL_103;
            }
          }

          swift_beginAccess();
          v238 = *(v108 + 16);
          v239 = *(v108 + 24);
          *&v476 = 0x746E756F63;
          *(&v476 + 1) = 0xE500000000000000;
          MEMORY[0x1CCA775F0](v238, v239);
          v240 = v476;
          v477 = MEMORY[0x1E69E6530];
          *&v476 = v467;
          sub_1C8466D6C(&v476, v240, *(&v476 + 1));
          goto LABEL_103;
        }

        v130 = 0;
LABEL_96:
        v465 = v130;
        v131 = sub_1C8590E34();
        if (qword_1EDE5CA48 != -1)
        {
          swift_once();
        }

        v132 = qword_1EDE5CB90;
        v133 = swift_allocObject();
        *(v133 + 16) = v67;
        *(v133 + 24) = v66;
        v134 = swift_allocObject();
        *(v134 + 16) = 32;
        v135 = swift_allocObject();
        *(v135 + 16) = 8;
        v136 = swift_allocObject();
        *(v136 + 16) = sub_1C848233C;
        *(v136 + 24) = v133;
        v137 = swift_allocObject();
        *(v137 + 16) = sub_1C8482340;
        *(v137 + 24) = v136;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE8, &qword_1C85A10E8);
        v138 = swift_allocObject();
        *(v138 + 16) = v451;
        *(v138 + 32) = sub_1C848232C;
        *(v138 + 40) = v134;
        *(v138 + 48) = sub_1C848232C;
        *(v138 + 56) = v135;
        *(v138 + 64) = sub_1C8482330;
        *(v138 + 72) = v137;

        if (os_log_type_enabled(v132, v131))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          *&v476 = v125;
          *v124 = v443;
          v139 = sub_1C84741F0(v67, v66, &v476);

          *(v124 + 4) = v139;
          v127 = v131;
          v128 = v132;
          v129 = "Zero sum stat %s";
          goto LABEL_100;
        }

LABEL_101:

        goto LABEL_102;
      }

      if (v465 == 0xD000000000000029 && v444 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        v112 = 0x6375535448567854;
LABEL_88:
        v113 = 0xEC00000073736563;
        goto LABEL_89;
      }

      if (v465 == 0xD000000000000029 && v439 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        v112 = 0x63755353434D7854;
        goto LABEL_88;
      }

      if (v465 == 0xD000000000000029 && v438 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        v112 = 0x63755353434D7852;
        goto LABEL_88;
      }

      if (v465 == v437 && v436 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        v112 = 0x6363755345487854;
LABEL_174:
        v113 = 0xEB00000000737365;
        goto LABEL_89;
      }

      if (v465 == v437 && v435 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        v112 = 0x6363755345487852;
        goto LABEL_174;
      }

      if (v465 == v440 && v434 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        v113 = 0xE800000000000000;
        v112 = 0x6767417564706D41;
        goto LABEL_89;
      }

      if (v465 == v449 && v433 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        v113 = 0xE900000000000055;
        v112 = 0x537564706D417852;
        goto LABEL_89;
      }

      if (v465 == v449 && v432 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        v112 = 0x537564706D417854;
        v113 = 0xE900000000000055;
        goto LABEL_89;
      }

      if (v465 == 0xD000000000000029 && v431 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        v112 = 0x4F7564706D417852;
LABEL_195:
        v113 = 0xEC000000414D4446;
LABEL_196:
        v108 = v463;
        v1 = v468;
        goto LABEL_89;
      }

      if (v465 == 0xD000000000000029 && v430 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        v112 = 0x4F7564706D417854;
        goto LABEL_195;
      }

      if (v465 == 0xD00000000000002ALL && v429 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        v112 = 0x4D7564706D417852;
LABEL_209:
        v113 = 0xED00004F4D494D55;
        goto LABEL_196;
      }

      if (v465 == 0xD00000000000002ALL && v428 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        v112 = 0x4D7564706D417854;
        goto LABEL_209;
      }

      if (v465 == v427 && v426 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v241 = v463;
        v242 = v463[3];
        v463[2] = 1230197586;
        v241[3] = 0xE400000000000000;

        if (!v467)
        {
          v1 = v468;
          v130 = 1;
          goto LABEL_96;
        }

LABEL_221:
        if ((v461 & 1) == 0)
        {
          v197 = 0;
          v108 = v463;
          v1 = v468;
          v115 = 1;
          goto LABEL_125;
        }

        v1 = v468;
        v115 = 1;
        goto LABEL_91;
      }

      if (v465 == v424 && v425 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        v130 = 1;
        swift_beginAccess();
        v243 = v463;
        v244 = v463[3];
        v245 = 4277059;
LABEL_219:
        v243[2] = v245;
        v246 = 0xE300000000000000;
        goto LABEL_220;
      }

      if (v465 == v424 && v423 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        v130 = 1;
        swift_beginAccess();
        v243 = v463;
        v247 = v463[3];
        v245 = 5394003;
        goto LABEL_219;
      }

      if (v465 == v421 && v422 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v249 = v463[3];
        v463[2] = 0x636E6574614C7854;
        v250 = 4539001;
LABEL_233:
        v251 = v250 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_234:
        v248[3] = v251;
        goto LABEL_235;
      }

      if (v465 == v421 && v420 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v252 = v463[3];
        v463[2] = 0x636E6574614C7854;
        v250 = 4932217;
        goto LABEL_233;
      }

      if (v465 == v421 && v419 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v253 = v463[3];
        v463[2] = 0x636E6574614C7854;
        v250 = 5199481;
        goto LABEL_233;
      }

      if (v465 == v421 && v418 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v254 = v463[3];
        v463[2] = 0x636E6574614C7854;
        v250 = 4806265;
        goto LABEL_233;
      }

      if (v465 == v424 && v417 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v255 = v463[3];
        v463[2] = 0x614C78546C647761;
        v251 = 0xEF454279636E6574;
        goto LABEL_234;
      }

      if (v465 == v424 && v416 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v256 = v463[3];
        v463[2] = 0x614C78546C647761;
        v251 = 0xEF4B4279636E6574;
        goto LABEL_234;
      }

      if (v465 == v424 && v415 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v257 = v463[3];
        v463[2] = 0x614C78546C647761;
        v251 = 0xEF4F5679636E6574;
        goto LABEL_234;
      }

      if (v465 == v424 && v414 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v258 = v463[3];
        v463[2] = 0x614C78546C647761;
        v251 = 0xEF495679636E6574;
        goto LABEL_234;
      }

      if (v465 == v412 && v413 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v259 = v463[3];
        v260 = 0x6574614C78547061;
LABEL_304:
        v248[2] = v260;
        v251 = 0xED0000454279636ELL;
        goto LABEL_234;
      }

      if (v465 == v412 && v411 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v261 = v463[3];
        v262 = 0x6574614C78547061;
LABEL_309:
        v248[2] = v262;
        v251 = 0xED00004B4279636ELL;
        goto LABEL_234;
      }

      if (v465 == v412 && v410 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v263 = v463[3];
        v264 = 0x6574614C78547061;
LABEL_314:
        v248[2] = v264;
        v251 = 0xED00004F5679636ELL;
        goto LABEL_234;
      }

      if (v465 == v412 && v409 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v265 = v463[3];
        v266 = 0x6574614C78547061;
LABEL_319:
        v248[2] = v266;
        v251 = 0xED0000495679636ELL;
        goto LABEL_234;
      }

      if (v465 == v407 && v408 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v267 = v463[3];
        v463[2] = 0x74614C78546E616ELL;
        v251 = 0xEE00454279636E65;
        goto LABEL_234;
      }

      if (v465 == v407 && v406 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v268 = v463[3];
        v463[2] = 0x74614C78546E616ELL;
        v251 = 0xEE004B4279636E65;
        goto LABEL_234;
      }

      if (v465 == v407 && v405 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v269 = v463[3];
        v463[2] = 0x74614C78546E616ELL;
        v251 = 0xEE004F5679636E65;
        goto LABEL_234;
      }

      if (v465 == v407 && v404 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v270 = v463[3];
        v463[2] = 0x74614C78546E616ELL;
        v251 = 0xEE00495679636E65;
        goto LABEL_234;
      }

      if (v465 == v412 && v403 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v271 = v463[3];
        v260 = 0x6574614C78547269;
        goto LABEL_304;
      }

      if (v465 == v412 && v402 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v272 = v463[3];
        v262 = 0x6574614C78547269;
        goto LABEL_309;
      }

      if (v465 == v412 && v401 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v273 = v463[3];
        v264 = 0x6574614C78547269;
        goto LABEL_314;
      }

      if (v465 == v412 && v400 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        swift_beginAccess();
        v248 = v463;
        v274 = v463[3];
        v266 = 0x6574614C78547269;
        goto LABEL_319;
      }

      if (v465 == 0xD000000000000030 && v399 == v111 || (sub_1C8590FE4() & 1) != 0)
      {

        v130 = 1;
        swift_beginAccess();
        v243 = v463;
        v275 = v463[3];
        v276 = 0x304D4C5443;
      }

      else
      {
        if ((v465 != 0xD000000000000031 || v398 != v111) && (sub_1C8590FE4() & 1) == 0)
        {
          if (v465 == 0xD000000000000038 && v397 == v111 || (sub_1C8590FE4() & 1) != 0)
          {

            v130 = 1;
            swift_beginAccess();
            v243 = v463;
            v278 = v463[3];
            v463[2] = 0xD000000000000012;
            v246 = v385;
          }

          else if (v465 == 0xD000000000000039 && v396 == v111 || (sub_1C8590FE4() & 1) != 0)
          {

            v130 = 1;
            swift_beginAccess();
            v243 = v463;
            v279 = v463[3];
            v463[2] = 0xD000000000000012;
            v246 = v386;
          }

          else if (v465 == 0xD000000000000036 && v395 == v111 || (sub_1C8590FE4() & 1) != 0)
          {

            v130 = 1;
            swift_beginAccess();
            v243 = v463;
            v280 = v463[3];
            v463[2] = 0x7943797475447854;
            v246 = 0xEC00000030656C63;
          }

          else
          {
            if ((v465 != 0xD000000000000037 || v394 != v111) && (sub_1C8590FE4() & 1) == 0)
            {
              if (v465 == v440 && v391 == v111 || (sub_1C8590FE4() & 1) != 0)
              {

                v282 = sub_1C847A2D8(v468);
                v284 = v283;
                swift_beginAccess();
                v285 = v463;
                v286 = v463[3];
                v463[2] = v282;
                v285[3] = v284;

                if (!v467)
                {
                  v130 = 1;
                  v1 = v468;
                  goto LABEL_96;
                }

                goto LABEL_221;
              }

              if (v465 == 0xD00000000000002CLL && v390 == v111 || (sub_1C8590FE4() & 1) != 0 || v465 == 0xD00000000000002CLL && v389 == v111 || (sub_1C8590FE4() & 1) != 0 || v465 == 0xD00000000000002CLL && v388 == v111 || (sub_1C8590FE4() & 1) != 0)
              {

                v287 = sub_1C847A2D8(v468);
                v289 = v288;
              }

              else
              {
                if (v465 == 0xD00000000000002CLL && v387 == v111)
                {
                }

                else
                {
                  v290 = sub_1C8590FE4();

                  if ((v290 & 1) == 0)
                  {
                    v294 = sub_1C8590E44();
                    if (qword_1EDE5CA48 != -1)
                    {
                      swift_once();
                    }

                    v295 = qword_1EDE5CB90;
                    v296 = swift_allocObject();
                    *(v296 + 16) = v67;
                    *(v296 + 24) = v66;
                    v297 = swift_allocObject();
                    *(v297 + 16) = 32;
                    v298 = swift_allocObject();
                    *(v298 + 16) = 8;
                    v299 = swift_allocObject();
                    *(v299 + 16) = sub_1C8481F7C;
                    *(v299 + 24) = v296;
                    v300 = swift_allocObject();
                    *(v300 + 16) = sub_1C8481FC0;
                    *(v300 + 24) = v299;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE8, &qword_1C85A10E8);
                    v301 = swift_allocObject();
                    *(v301 + 16) = v451;
                    *(v301 + 32) = sub_1C8481FAC;
                    *(v301 + 40) = v297;
                    *(v301 + 48) = sub_1C848232C;
                    *(v301 + 56) = v298;
                    *(v301 + 64) = sub_1C8481FE8;
                    *(v301 + 72) = v300;

                    if (os_log_type_enabled(v295, v294))
                    {
                      v302 = swift_slowAlloc();
                      v303 = swift_slowAlloc();
                      *&v476 = v303;
                      *v302 = v443;
                      *(v302 + 4) = sub_1C84741F0(v67, v66, &v476);
                      _os_log_impl(&dword_1C8460000, v295, v294, "Unknown stat %s", v302, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v303);
                      MEMORY[0x1CCA78470](v303, -1, -1);
                      MEMORY[0x1CCA78470](v302, -1, -1);
                    }

                    goto LABEL_236;
                  }
                }

                v287 = sub_1C847A2D8(v468);
                v289 = v291;
              }

              swift_beginAccess();
              v292 = v463;
              v293 = v463[3];
              v463[2] = v287;
              v292[3] = v289;
LABEL_235:

LABEL_236:
              if (!v467)
              {
                v130 = 0;
                v1 = v468;
                goto LABEL_96;
              }

              v197 = 0;
              v115 = 0;
              v108 = v463;
              v1 = v468;
              if ((v461 & 1) == 0)
              {
                goto LABEL_125;
              }

LABEL_91:
              v465 = v115;
              v116 = sub_1C8590E44();
              if (qword_1EDE5CA48 != -1)
              {
                swift_once();
              }

              v117 = qword_1EDE5CB90;
              v118 = swift_allocObject();
              *(v118 + 16) = v67;
              *(v118 + 24) = v66;
              v119 = swift_allocObject();
              *(v119 + 16) = 32;
              v120 = swift_allocObject();
              *(v120 + 16) = 8;
              v121 = swift_allocObject();
              *(v121 + 16) = sub_1C848233C;
              *(v121 + 24) = v118;
              v122 = swift_allocObject();
              *(v122 + 16) = sub_1C8482340;
              *(v122 + 24) = v121;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE8, &qword_1C85A10E8);
              v123 = swift_allocObject();
              *(v123 + 16) = v451;
              *(v123 + 32) = sub_1C848232C;
              *(v123 + 40) = v119;
              *(v123 + 48) = sub_1C848232C;
              *(v123 + 56) = v120;
              *(v123 + 64) = sub_1C8482330;
              *(v123 + 72) = v122;

              if (os_log_type_enabled(v117, v116))
              {
                v124 = swift_slowAlloc();
                v125 = swift_slowAlloc();
                *&v476 = v125;
                *v124 = v443;
                v126 = sub_1C84741F0(v67, v66, &v476);

                *(v124 + 4) = v126;
                v127 = v116;
                v128 = v117;
                v129 = "Stat %s has invalid values";
LABEL_100:
                _os_log_impl(&dword_1C8460000, v128, v127, v129, v124, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v125);
                MEMORY[0x1CCA78470](v125, -1, -1);
                MEMORY[0x1CCA78470](v124, -1, -1);
LABEL_102:
                v140 = &qword_1EC2AADB8;
                goto LABEL_103;
              }

              goto LABEL_101;
            }

            v130 = 1;
            swift_beginAccess();
            v243 = v463;
            v281 = v463[3];
            v463[2] = 0x7943797475447854;
            v246 = 0xEC00000031656C63;
          }

LABEL_220:
          v243[3] = v246;

          if (!v467)
          {
            v1 = v468;
            goto LABEL_96;
          }

          goto LABEL_221;
        }

        v130 = 1;
        swift_beginAccess();
        v243 = v463;
        v277 = v463[3];
        v276 = 0x314D4C5443;
      }

      v243[2] = v276;
      v246 = 0xE500000000000000;
      goto LABEL_220;
    }

    break;
  }

  v68 = 0;
  v1 = v64;
LABEL_44:
  v69 = v63;
  a1 = v459 + 16 * v68;
  v70 = v68;
  while (v70 < *(i + 16))
  {
    v72 = *(a1 - 8);
    v71 = *a1;
    v68 = v70 + 1;

    if (sub_1C8590DC4())
    {
      v73 = swift_isUniquelyReferenced_nonNull_native();
      *&v476 = v1;
      if ((v73 & 1) == 0)
      {
        sub_1C84750E0(0, *(v1 + 16) + 1, 1);
        v1 = v476;
      }

      v74 = v1;
      v75 = *(v1 + 16);
      v76 = *(v74 + 24);
      if (v75 >= v76 >> 1)
      {
        sub_1C84750E0((v76 > 1), v75 + 1, 1);
        v74 = v476;
      }

      *(v74 + 16) = v75 + 1;
      v77 = v74 + 16 * v75;
      *(v77 + 32) = v72;
      *(v77 + 40) = v71;
      v78 = v450 == v70;
      v63 = v471;
      v1 = v74;
      if (v78)
      {
        goto LABEL_57;
      }

      goto LABEL_44;
    }

    a1 += 16;
    ++v70;
    if (v470 == v68)
    {
      v63 = v69;
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_445:
  __break(1u);
LABEL_446:
  __break(1u);
LABEL_447:
  __break(1u);
LABEL_448:
  __break(1u);
LABEL_449:
  __break(1u);
LABEL_450:
  __break(1u);
LABEL_451:
  __break(1u);
LABEL_452:
  __break(1u);
LABEL_453:
  swift_once();
LABEL_375:
  v304 = qword_1EDE5CB90;
  v305 = swift_allocObject();
  *(v305 + 16) = v1;
  v306 = swift_allocObject();
  *(v306 + 16) = sub_1C84820A8;
  *(v306 + 24) = v305;
  v307 = swift_allocObject();
  *(v307 + 16) = 32;
  v308 = swift_allocObject();
  *(v308 + 16) = 8;
  v309 = swift_allocObject();
  *(v309 + 16) = sub_1C84820B4;
  *(v309 + 24) = v306;
  v310 = swift_allocObject();
  *(v310 + 16) = sub_1C8482340;
  *(v310 + 24) = v309;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADE8, &qword_1C85A10E8);
  v311 = swift_allocObject();
  *(v311 + 16) = v451;
  *(v311 + 32) = sub_1C848232C;
  *(v311 + 40) = v307;
  *(v311 + 48) = sub_1C848232C;
  *(v311 + 56) = v308;
  *(v311 + 64) = sub_1C8482330;
  *(v311 + 72) = v310;

  if (os_log_type_enabled(v304, a1))
  {
    v312 = swift_slowAlloc();
    v313 = swift_slowAlloc();
    *&v476 = v313;
    *v312 = v443;
    v314 = MEMORY[0x1CCA77690](v1, MEMORY[0x1E69E6158]);
    v316 = v315;

    v317 = sub_1C84741F0(v314, v316, &v476);

    *(v312 + 4) = v317;
    _os_log_impl(&dword_1C8460000, v304, a1, "Fatal issues encountered: self.issues = true on foundKeysToReduce %s", v312, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v313);
    MEMORY[0x1CCA78470](v313, -1, -1);
    MEMORY[0x1CCA78470](v312, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1C846CD90(uint64_t result)
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

  result = sub_1C8473F5C(result, v11, 1, v3);
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

uint64_t sub_1C846CE84(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v174 = *a1;
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1C847416C(v2, 0);
  v4 = sub_1C8477780(&v183, v3 + 4, v2, v1);

  sub_1C8463D10();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v5 = 0;
  v6 = v3 + 5;
  v7 = MEMORY[0x1E69E7CC0];
  v180 = v3;
  do
  {
    if (v5 <= 0xD)
    {
      v8 = 13;
    }

    else
    {
      v8 = v5;
    }

    v165 = v7;
LABEL_10:
    if (v5 == v8)
    {
      goto LABEL_154;
    }

    v9 = &unk_1F481AAB8 + 16 * v5;
    v11 = *(v9 + 4);
    v10 = *(v9 + 5);
    ++v5;
    v12 = v3[2];

    v13 = -v12;
    v14 = -1;
    v15 = v6;
    do
    {
      if (v13 + v14 == -1)
      {

        v7 = v165;
        v19 = v174;
        if (v5 == 13)
        {
          v23 = *(v165 + 16);
          if (v23)
          {
            goto LABEL_25;
          }

LABEL_145:

          v148 = 0;
LABEL_146:
          swift_arrayDestroy();

          *(&v184 + 1) = MEMORY[0x1E69E6530];
          *&v183 = v148;
          sub_1C8466D6C(&v183, 0x657669746167656ELL, 0xED00007366666944);
          return 1;
        }

        goto LABEL_10;
      }

      if (++v14 >= v3[2])
      {
        __break(1u);
        goto LABEL_145;
      }

      v16 = v15 + 2;
      v18 = *(v15 - 1);
      v17 = *v15;

      LOBYTE(v18) = sub_1C8590DC4();

      v15 = v16;
      v3 = v180;
    }

    while ((v18 & 1) == 0);
    v7 = v165;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = v165;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C84750E0(0, *(v165 + 16) + 1, 1);
      v7 = v183;
    }

    v19 = v174;
    v22 = *(v7 + 16);
    v21 = *(v7 + 24);
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      sub_1C84750E0((v21 > 1), v22 + 1, 1);
      v7 = v183;
    }

    *(v7 + 16) = v23;
    v24 = v7 + 16 * v22;
    *(v24 + 32) = v11;
    *(v24 + 40) = v10;
  }

  while (v5 != 13);
LABEL_25:
  v25 = 0;
  v158 = 0;
  v159 = v7 + 32;
  v162 = v3 + 5;
  v169 = v3[2];
  v166 = v7;
  v161 = v23;
  while (2)
  {
    if (v25 >= *(v7 + 16))
    {
      goto LABEL_155;
    }

    v164 = v25;
    v28 = (v159 + 16 * v25);
    v172 = *v28;
    v173 = v28[1];

    v175 = v19;
    if (!v169)
    {
      v30 = MEMORY[0x1E69E7CC0];
      goto LABEL_44;
    }

    v29 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    do
    {
      v31 = &v162[2 * v29];
      v32 = v29;
      while (1)
      {
        if (v32 >= v3[2])
        {
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        v34 = *(v31 - 1);
        v33 = *v31;
        v29 = v32 + 1;

        if (sub_1C8590DC4())
        {
          break;
        }

        v31 += 2;
        ++v32;
        if (v169 == v29)
        {
          goto LABEL_44;
        }
      }

      v35 = swift_isUniquelyReferenced_nonNull_native();
      *&v183 = v30;
      if ((v35 & 1) == 0)
      {
        sub_1C84750E0(0, *(v30 + 16) + 1, 1);
        v30 = v183;
      }

      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1C84750E0((v36 > 1), v37 + 1, 1);
        v30 = v183;
      }

      *(v30 + 16) = v37 + 1;
      v38 = v30 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v33;
      v19 = v175;
    }

    while (v169 - 1 != v32);
LABEL_44:
    v39 = *(v30 + 16);

    v177 = v30;
    if (v39)
    {
      v163 = 0;
      v40 = 0;
      v41 = v30 + 40;
      v168 = v39;
      v157 = v30 + 40;
LABEL_46:
      v42 = (v41 + 16 * v40);
      do
      {
        if (v40 >= v39)
        {
          goto LABEL_150;
        }

        v44 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_151;
        }

        v46 = *(v42 - 1);
        v45 = *v42;
        v47 = v19[2];

        if (v47 && (v48 = sub_1C8474B54(v46, v45), (v49 & 1) != 0) && (sub_1C8481CB4(v19[7] + 32 * v48, &v183), swift_dynamicCast()))
        {
          v50 = *&v182[0];
          if ((*&v182[0] & 0x8000000000000000) != 0)
          {
            v171 = v40 + 1;
            v67 = sub_1C8590E44();
            if (qword_1EDE5CA48 != -1)
            {
              swift_once();
            }

            v68 = qword_1EDE5CB90;
            if (os_log_type_enabled(qword_1EDE5CB90, v67))
            {
              v69 = v46;
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              *&v183 = v71;
              *v70 = 136315394;
              *(v70 + 4) = sub_1C84741F0(v69, v45, &v183);
              *(v70 + 12) = 2048;
              *(v70 + 14) = v50;
              _os_log_impl(&dword_1C8460000, v68, v67, "containsNegativeValue check: arrayStat contains negative %s val %ld", v70, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v71);
              MEMORY[0x1CCA78470](v71, -1, -1);
              MEMORY[0x1CCA78470](v70, -1, -1);
            }

            v19 = v175;
            v41 = v157;
            v163 = 1;
            v40 = v171;
            if (v171 == v39)
            {
              v147 = 1;
              goto LABEL_78;
            }

            goto LABEL_46;
          }
        }

        else
        {
          v51 = sub_1C8590E44();
          if (qword_1EDE5CA48 != -1)
          {
            swift_once();
          }

          v178 = qword_1EDE5CB90;
          if (os_log_type_enabled(qword_1EDE5CB90, v51))
          {
            v52 = swift_slowAlloc();
            v53 = v46;
            v54 = swift_slowAlloc();
            *&v183 = v54;
            *v52 = 136315138;
            *(v52 + 4) = sub_1C84741F0(v172, v173, &v183);
            _os_log_impl(&dword_1C8460000, v178, v51, "containsNegativeValue check: arrayStat %s", v52, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v54);
            v55 = v54;
            v46 = v53;
            MEMORY[0x1CCA78470](v55, -1, -1);
            MEMORY[0x1CCA78470](v52, -1, -1);
          }

          sub_1C8590E44();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_1C85A0FE0;
          *(v56 + 56) = MEMORY[0x1E69E6158];
          v57 = sub_1C8481E7C();
          *(v56 + 64) = v57;
          *(v56 + 32) = v46;
          *(v56 + 40) = v45;
          *&v182[0] = 0;
          *(&v182[0] + 1) = 0xE000000000000000;
          v170 = v46;
          if (v19[2])
          {

            v58 = sub_1C8474B54(v46, v45);
            if (v59)
            {
              sub_1C8481CB4(v19[7] + 32 * v58, &v183);
            }

            else
            {
              v183 = 0u;
              v184 = 0u;
            }
          }

          else
          {
            v183 = 0u;
            v184 = 0u;
          }

          sub_1C8482178(&v183, &qword_1EC2AADB8, &qword_1C85A10C0);
          MEMORY[0x1CCA775F0](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
          v60 = v182[0];
          v61 = MEMORY[0x1E69E6158];
          *(v56 + 96) = MEMORY[0x1E69E6158];
          *(v56 + 104) = v57;
          *(v56 + 72) = v60;
          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADD0, &qword_1C85A10D8);
          *(v56 + 136) = v62;
          v63 = sub_1C8481ED0();
          *(v56 + 144) = v63;
          *(v56 + 112) = v177;

          sub_1C8590CA4();

          sub_1C8590E54();
          v64 = swift_allocObject();
          *(v64 + 16) = xmmword_1C85A0FE0;
          *(v64 + 56) = v61;
          *(v64 + 64) = v57;
          *(v64 + 32) = v170;
          *(v64 + 40) = v45;
          *&v182[0] = 0;
          *(&v182[0] + 1) = 0xE000000000000000;
          if (v175[2])
          {

            v65 = sub_1C8474B54(v170, v45);
            if (v66)
            {
              sub_1C8481CB4(v175[7] + 32 * v65, &v183);
            }

            else
            {
              v183 = 0u;
              v184 = 0u;
            }
          }

          else
          {
            v183 = 0u;
            v184 = 0u;
          }

          v30 = v177;
          sub_1C8482178(&v183, &qword_1EC2AADB8, &qword_1C85A10C0);
          MEMORY[0x1CCA775F0](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
          v43 = v182[0];
          *(v64 + 96) = MEMORY[0x1E69E6158];
          *(v64 + 104) = v57;
          *(v64 + 72) = v43;
          *(v64 + 136) = v62;
          *(v64 + 144) = v63;
          *(v64 + 112) = v177;

          sub_1C8590CA4();

          v3 = v180;
          v39 = v168;
          v44 = v40 + 1;
        }

        ++v40;
        v42 += 2;
        v19 = v175;
      }

      while (v44 != v39);
      v147 = v163;
    }

    else
    {
      v147 = 0;
    }

LABEL_78:

    v72 = a1;
    if (v147)
    {
      v73 = sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      v74 = qword_1EDE5CB90;
      if (os_log_type_enabled(qword_1EDE5CB90, v73))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v183 = v76;
        *v75 = 136315138;
        *(v75 + 4) = sub_1C84741F0(v172, v173, &v183);
        _os_log_impl(&dword_1C8460000, v74, v73, "arrayStat contains negative %s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x1CCA78470](v76, -1, -1);
        MEMORY[0x1CCA78470](v75, -1, -1);
      }

      v77 = v158 + 1;
      if (__OFADD__(v158, 1))
      {
        goto LABEL_157;
      }

      if (v77 < 11)
      {
        ++v158;
        goto LABEL_86;
      }

      swift_arrayDestroy();
      v160[OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues] = 1;
      v150 = sub_1C8590E44();
      if (os_log_type_enabled(v74, v150))
      {
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        *&v183 = v152;
        *v151 = 134218498;
        *(v151 + 4) = v77;
        *(v151 + 12) = 2048;
        *(v151 + 14) = 10;
        *(v151 + 22) = 2080;
        v153 = MEMORY[0x1CCA77690](v30, MEMORY[0x1E69E6158]);
        v155 = v154;

        v156 = sub_1C84741F0(v153, v155, &v183);

        *(v151 + 24) = v156;
        _os_log_impl(&dword_1C8460000, v74, v150, "seenNegativeDifferentials %ld > maxNegativeDifferentials %ld foundKeysToReduce %s", v151, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v152);
        MEMORY[0x1CCA78470](v152, -1, -1);
        MEMORY[0x1CCA78470](v151, -1, -1);
        return 0;
      }

LABEL_152:

      return 0;
    }

LABEL_86:

    v78 = v160;
    v79 = sub_1C847A540(0, v30, a1, v30, v172, v173);

    v176 = v79;
    if (v79 <= 0)
    {
      v135 = sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      v136 = qword_1EDE5CB90;
      if (os_log_type_enabled(qword_1EDE5CB90, v135))
      {
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        *&v183 = v138;
        *v137 = 134218242;
        *(v137 + 4) = v176;
        *(v137 + 12) = 2080;
        v139 = sub_1C84741F0(v172, v173, &v183);

        *(v137 + 14) = v139;
        _os_log_impl(&dword_1C8460000, v136, v135, "sum check: sum %ld arrayStat %s", v137, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v138);
        MEMORY[0x1CCA78470](v138, -1, -1);
        MEMORY[0x1CCA78470](v137, -1, -1);
      }

      else
      {
      }

      v140 = sub_1C8590E44();
      if (os_log_type_enabled(v136, v140))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        *&v183 = v142;
        *v141 = 136315138;
        v143 = MEMORY[0x1CCA77690](v30, MEMORY[0x1E69E6158]);
        v145 = v144;

        v146 = sub_1C84741F0(v143, v145, &v183);

        *(v141 + 4) = v146;
        _os_log_impl(&dword_1C8460000, v136, v140, "sum check: foundKeysToReduce %s", v141, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v142);
        MEMORY[0x1CCA78470](v142, -1, -1);
        MEMORY[0x1CCA78470](v141, -1, -1);
      }

      else
      {
      }

      v26 = v164;
      v7 = v166;
      v27 = v161;
      if (v176)
      {
        goto LABEL_28;
      }

      sub_1C8590E54();
      sub_1C8590CA4();
LABEL_27:
      v26 = v164;
      v7 = v166;
      v27 = v161;
LABEL_28:
      v25 = v26 + 1;
      if (v25 != v27)
      {
        continue;
      }

      v148 = v158;
      goto LABEL_146;
    }

    break;
  }

  v179 = *(v30 + 16);
  if (!v179)
  {
LABEL_26:

    v3 = v180;
    goto LABEL_27;
  }

  v80 = 0;
  v81 = (v30 + 40);
  while (v80 < *(v177 + 16))
  {
    v83 = *(v81 - 1);
    v82 = *v81;
    v84 = v19[2];

    if (!v84 || (v85 = sub_1C8474B54(v83, v82), (v86 & 1) == 0) || (sub_1C8481CB4(v19[7] + 32 * v85, &v183), (swift_dynamicCast() & 1) == 0))
    {
      v94 = sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      v95 = v19;
      v96 = qword_1EDE5CB90;
      if (os_log_type_enabled(qword_1EDE5CB90, v94))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&v183 = v98;
        *v97 = 136315138;
        *(v97 + 4) = sub_1C84741F0(v172, v173, &v183);
        _os_log_impl(&dword_1C8460000, v96, v94, "reduceNonNumericStatesAndHistogramsToPct pct conversion: arrayStat %s", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v98);
        MEMORY[0x1CCA78470](v98, -1, -1);
        MEMORY[0x1CCA78470](v97, -1, -1);
      }

      sub_1C8590E54();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_1C85A0FF0;
      *(v99 + 56) = MEMORY[0x1E69E6158];
      v100 = sub_1C8481E7C();
      *(v99 + 64) = v100;
      *(v99 + 32) = v83;
      *(v99 + 40) = v82;
      *&v182[0] = 0;
      *(&v182[0] + 1) = 0xE000000000000000;
      if (v95[2])
      {

        v101 = sub_1C8474B54(v83, v82);
        if (v102)
        {
          sub_1C8481CB4(v95[7] + 32 * v101, &v183);
        }

        else
        {
          v183 = 0u;
          v184 = 0u;
        }
      }

      else
      {
        v183 = 0u;
        v184 = 0u;
      }

      sub_1C8482178(&v183, &qword_1EC2AADB8, &qword_1C85A10C0);
      MEMORY[0x1CCA775F0](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
      v103 = v182[0];
      *(v99 + 96) = MEMORY[0x1E69E6158];
      *(v99 + 104) = v100;
      *(v99 + 72) = v103;
      sub_1C8590CA4();

      v19 = v95;
      v104 = sub_1C8474B54(v83, v82);
      v106 = v105;

      if (v106)
      {
        v72 = a1;
        goto LABEL_113;
      }

      v183 = 0u;
      v184 = 0u;
      v72 = a1;
LABEL_90:
      sub_1C8482178(&v183, &qword_1EC2AADB8, &qword_1C85A10C0);
      goto LABEL_91;
    }

    if (!*&v182[0])
    {
      v104 = sub_1C8474B54(v83, v82);
      v111 = v110;

      if (v111)
      {
LABEL_113:
        v107 = *v72;
        v108 = swift_isUniquelyReferenced_nonNull_native();
        v19 = *v72;
        *&v182[0] = *v72;
        if (!v108)
        {
          sub_1C8474BCC();
          v19 = *&v182[0];
        }

        v109 = *(v19[6] + 16 * v104 + 8);

        sub_1C8481D10((v19[7] + 32 * v104), &v183);
        sub_1C8475474(v104, v19);
        *v72 = v19;
      }

      else
      {
        v183 = 0u;
        v184 = 0u;
      }

      goto LABEL_90;
    }

    v87 = sub_1C847AC04(*&v182[0], v176);
    if (v88)
    {
      v89 = sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      v90 = qword_1EDE5CB90;
      if (os_log_type_enabled(qword_1EDE5CB90, v89))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *&v183 = v92;
        *v91 = 136315650;
        v93 = sub_1C84741F0(v83, v82, &v183);

        *(v91 + 4) = v93;
        *(v91 + 12) = 2048;
        *(v91 + 14) = v176;
        *(v91 + 22) = 2080;
        *(v91 + 24) = sub_1C84741F0(v172, v173, &v183);
        _os_log_impl(&dword_1C8460000, v90, v89, "reduceNonNumericStatesAndHistogramsToPct safePercentCalculation check: key %s sum %ld arrayStat %s", v91, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1CCA78470](v92, -1, -1);
        MEMORY[0x1CCA78470](v91, -1, -1);
      }

      else
      {
      }

      v123 = sub_1C8590E44();
      if (os_log_type_enabled(v90, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *&v183 = v125;
        *v124 = 136315138;
        v126 = MEMORY[0x1CCA77690](v177, MEMORY[0x1E69E6158]);
        v128 = sub_1C84741F0(v126, v127, &v183);

        *(v124 + 4) = v128;
        _os_log_impl(&dword_1C8460000, v90, v123, "reduceNonNumericStatesAndHistogramsToPct safePercentCalculation check: foundKeysToReduce %s", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v125);
        MEMORY[0x1CCA78470](v125, -1, -1);
        MEMORY[0x1CCA78470](v124, -1, -1);
      }

      v72 = a1;
      goto LABEL_91;
    }

    *(&v184 + 1) = MEMORY[0x1E69E6530];
    *&v183 = v87;
    sub_1C8481D10(&v183, v182);
    v112 = *v72;
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v114 = *v72;
    v181 = *v72;
    v115 = sub_1C8474B54(v83, v82);
    v117 = *(v114 + 16);
    v118 = (v116 & 1) == 0;
    v119 = __OFADD__(v117, v118);
    v120 = v117 + v118;
    if (v119)
    {
      goto LABEL_156;
    }

    v121 = v116;
    if (*(v114 + 24) >= v120)
    {
      if ((v113 & 1) == 0)
      {
        v131 = v115;
        sub_1C8474BCC();
        v115 = v131;
        if (v121)
        {
LABEL_128:
          v129 = v115;

          v19 = v181;
          v130 = (v181[7] + 32 * v129);
          __swift_destroy_boxed_opaque_existential_0(v130);
          sub_1C8481D10(v182, v130);
          *v72 = v181;
          goto LABEL_91;
        }

        goto LABEL_130;
      }
    }

    else
    {
      sub_1C8474D70(v120, v113);
      v115 = sub_1C8474B54(v83, v82);
      if ((v121 & 1) != (v122 & 1))
      {
        goto LABEL_159;
      }
    }

    if (v121)
    {
      goto LABEL_128;
    }

LABEL_130:
    v19 = v181;
    v181[(v115 >> 6) + 8] |= 1 << v115;
    v132 = (v181[6] + 16 * v115);
    *v132 = v83;
    v132[1] = v82;
    sub_1C8481D10(v182, (v181[7] + 32 * v115));
    v133 = v181[2];
    v119 = __OFADD__(v133, 1);
    v134 = v133 + 1;
    if (v119)
    {
      goto LABEL_158;
    }

    v181[2] = v134;
    *v72 = v181;
LABEL_91:
    ++v80;
    v81 += 2;
    if (v179 == v80)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  result = sub_1C8591004();
  __break(1u);
  return result;
}

uint64_t sub_1C846E444(uint64_t a1, int64_t a2)
{
  v5 = 0xD00000000000001DLL;
  v6 = sub_1C84778EC(MEMORY[0x1E69E7CC0]);
  v7 = v6;
  p_superclass = &OBJC_METACLASS___PoliciesMO.superclass;
  v9 = &OBJC_METACLASS___PoliciesMO.superclass;
  v10 = &OBJC_IVAR___WiFiAnalyticsAWDWASymptomsDnsStats__netscoreAtStudyStart;
  LODWORD(v167) = *(v2 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_singleFragment);
  v172 = a2;
  if (v167 == 1 && *(v2 + OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_allowSingleFragmentDeltaCalculations) != 1)
  {
    v174 = 0;
    v175 = 0;
    v178 = 0;
    v179 = 0;
    v176 = 0;
    v177 = 0;
    v173 = 0;
    v166 = 0;
    v168 = 0;
    v180 = 0;
    goto LABEL_156;
  }

  v171 = v6;
  v164 = v2;
  v11 = *(a2 + 16);
  v165 = a1;
  if (!v11 || (v12 = sub_1C8474B54(0xD00000000000001FLL, 0x80000001C85A4650), (v13 & 1) == 0))
  {
    v189 = 0u;
    v190[0] = 0u;
LABEL_12:
    sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_13;
  }

  sub_1C8481CB4(*(a2 + 56) + 32 * v12, &v189);
  sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
  sub_1C84669B8(0xD00000000000001FLL, 0x80000001C85A4650, a1, &v189);
  v14 = *(&v190[0] + 1);
  sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
  if (!v14)
  {
    goto LABEL_248;
  }

  sub_1C84669B8(0xD00000000000001FLL, 0x80000001C85A4650, a2, &v189);
  if (!*(&v190[0] + 1))
  {
    goto LABEL_247;
  }

  a1 = v165;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1C84669B8(0xD00000000000001FLL, 0x80000001C85A4650, v165, &v189);
  if (!*(&v190[0] + 1))
  {
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v177 = 0;
    goto LABEL_14;
  }

  v177 = 0;
  while (1)
  {
LABEL_14:
    sub_1C84669B8(0xD00000000000001DLL, 0x80000001C85A4670, a2, &v189);
    v15 = *(&v190[0] + 1);
    sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (!v15)
    {
      goto LABEL_23;
    }

    sub_1C84669B8(0xD00000000000001DLL, 0x80000001C85A4670, a1, &v189);
    v16 = *(&v190[0] + 1);
    sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (!v16)
    {
      goto LABEL_23;
    }

    sub_1C84669B8(0xD00000000000001DLL, 0x80000001C85A4670, a2, &v189);
    if (!*(&v190[0] + 1))
    {
      goto LABEL_22;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v17 = v186;
    sub_1C84669B8(0xD00000000000001DLL, 0x80000001C85A4670, a1, &v189);
    if (!*(&v190[0] + 1))
    {
LABEL_22:
      sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
LABEL_23:
      v176 = 0;
      goto LABEL_24;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v176 = v186 != v17;
LABEL_24:
    sub_1C84669B8(v5 + 1, 0x80000001C85A4690, a2, &v189);
    v18 = *(&v190[0] + 1);
    sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (!v18)
    {
      goto LABEL_32;
    }

    sub_1C84669B8(v5 + 1, 0x80000001C85A4690, a1, &v189);
    v19 = *(&v190[0] + 1);
    sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (!v19)
    {
      goto LABEL_32;
    }

    sub_1C84669B8(v5 + 1, 0x80000001C85A4690, a2, &v189);
    if (!*(&v190[0] + 1))
    {
LABEL_31:
      sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
      goto LABEL_32;
    }

    if (swift_dynamicCast())
    {
      v20 = v186;
      sub_1C84669B8(v5 + 1, 0x80000001C85A4690, a1, &v189);
      if (!*(&v190[0] + 1))
      {
        goto LABEL_31;
      }

      if (swift_dynamicCast())
      {
        v179 = v186 != v20;
        goto LABEL_33;
      }
    }

LABEL_32:
    v179 = 0;
LABEL_33:
    sub_1C84669B8(0xD00000000000001DLL, 0x80000001C85A46B0, a2, &v189);
    v21 = *(&v190[0] + 1);
    sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (!v21)
    {
      goto LABEL_41;
    }

    sub_1C84669B8(0xD00000000000001DLL, 0x80000001C85A46B0, a1, &v189);
    v22 = *(&v190[0] + 1);
    sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (!v22)
    {
      goto LABEL_41;
    }

    sub_1C84669B8(0xD00000000000001DLL, 0x80000001C85A46B0, a2, &v189);
    if (!*(&v190[0] + 1))
    {
      goto LABEL_40;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_41;
    }

    v23 = v186;
    sub_1C84669B8(0xD00000000000001DLL, 0x80000001C85A46B0, a1, &v189);
    if (!*(&v190[0] + 1))
    {
LABEL_40:
      sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
LABEL_41:
      v178 = 0;
      goto LABEL_42;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_41;
    }

    v178 = v186 != v23;
LABEL_42:
    sub_1C84669B8(v5 + 5, 0x80000001C85A46D0, a2, &v189);
    v24 = *(&v190[0] + 1);
    sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (!v24 || (sub_1C84669B8(v5 + 5, 0x80000001C85A46D0, a1, &v189), v25 = *(&v190[0] + 1), sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0), !v25))
    {
      sub_1C8590E64();
      if (*(p_superclass + 2632) != -1)
      {
        swift_once();
      }

      v27 = *(v9 + 370);
      sub_1C8590CA4();
      goto LABEL_53;
    }

    sub_1C84669B8(v5 + 5, 0x80000001C85A46D0, a2, &v189);
    if (!*(&v190[0] + 1))
    {
LABEL_52:
      sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
      goto LABEL_53;
    }

    if (swift_dynamicCast())
    {
      v26 = v186;
      sub_1C84669B8(v5 + 5, 0x80000001C85A46D0, a1, &v189);
      if (!*(&v190[0] + 1))
      {
        goto LABEL_52;
      }

      if (swift_dynamicCast())
      {
        v175 = v186 != v26;
        goto LABEL_54;
      }
    }

LABEL_53:
    v175 = 0;
LABEL_54:
    sub_1C84669B8(v5 - 2, 0x80000001C85A4740, a2, &v189);
    if (!*(&v190[0] + 1))
    {
      goto LABEL_64;
    }

    if (swift_dynamicCast())
    {
      v28 = v186;
      sub_1C84669B8(v5 - 2, 0x80000001C85A4740, a1, &v189);
      if (!*(&v190[0] + 1))
      {
LABEL_64:
        sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
        goto LABEL_65;
      }

      if (swift_dynamicCast())
      {
        v29 = v186;
        v9 = "early %@ late %@";
        sub_1C84669B8(v5 + 1, 0x80000001C85A4880, a2, &v189);
        if (*(&v190[0] + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_250:
            a1 = v165;
            goto LABEL_65;
          }

          v30 = v186;
          sub_1C84669B8(v5 + 1, 0x80000001C85A4880, v165, &v189);
          if (*(&v190[0] + 1))
          {
            if (swift_dynamicCast())
            {
              if (v28 == v29)
              {
                v31 = v30 != v186;
              }

              else
              {
LABEL_254:
                v31 = 1;
              }

              goto LABEL_72;
            }

            goto LABEL_250;
          }
        }

        sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
        goto LABEL_250;
      }
    }

LABEL_65:
    sub_1C84669B8(v5 - 2, 0x80000001C85A4740, a2, &v189);
    if (!*(&v190[0] + 1))
    {
      goto LABEL_70;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_71;
    }

    v32 = v186;
    sub_1C84669B8(v5 - 2, 0x80000001C85A4740, a1, &v189);
    if (!*(&v190[0] + 1))
    {
LABEL_70:
      sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
LABEL_71:
      v31 = 0;
      goto LABEL_72;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_71;
    }

    v31 = v32 != v186;
LABEL_72:
    v33 = a2 + 64;
    v34 = 1 << *(a2 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    a2 = v35 & *(a2 + 64);
    v163 = *(v10 + 426);
    v162 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues;
    p_superclass = (v34 + 63) >> 6;
    v174 = v31;
    v10 = (v177 & v176 & (v179 && v178) & (v175 && v31));

    v36 = 0;
    v166 = 0;
    v168 = 0;
    v37 = 0;
    v5 = 0;
    *&v38 = 136315138;
    v161 = v38;
    *(&v38 + 1) = 6;
    v158 = xmmword_1C85A0FE0;
    *&v38 = 134218240;
    v160 = v38;
    *&v38 = 136315650;
    v159 = v38;
LABEL_75:
    v170 = v36;
    v173 = v36;
    v169 = v37;
    v180 = v37;
    v39 = v5;
    if (a2)
    {
      break;
    }

LABEL_77:
    if (p_superclass <= (v39 + 1))
    {
      v41 = v39 + 1;
    }

    else
    {
      v41 = p_superclass;
    }

    v5 = v41 - 1;
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= p_superclass)
      {
        a2 = 0;
        v187 = 0u;
        v188 = 0u;
        v186 = 0u;
        goto LABEL_85;
      }

      a2 = *(v33 + 8 * v40);
      ++v39;
      if (a2)
      {
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_247:
    sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
LABEL_248:
    v177 = 0;
    a1 = v165;
  }

  while (1)
  {
    v40 = v39;
LABEL_84:
    v42 = __clz(__rbit64(a2));
    a2 &= a2 - 1;
    v43 = v42 | (v40 << 6);
    v44 = (v172[6] + 16 * v43);
    v45 = *v44;
    v46 = v44[1];
    sub_1C8481CB4(v172[7] + 32 * v43, &v184);
    *&v186 = v45;
    *(&v186 + 1) = v46;
    sub_1C8481D10(&v184, &v187);

    v5 = v40;
LABEL_85:
    v189 = v186;
    v190[0] = v187;
    v190[1] = v188;
    v47 = *(&v186 + 1);
    if (!*(&v186 + 1))
    {
      break;
    }

    v9 = v189;
    sub_1C8481D10(v190, &v186);
    if (v10)
    {
      goto LABEL_93;
    }

    if (sub_1C84779FC(v9, v47, v177, v176, v179, v178, v175, v174))
    {
      v170 = v173;
      v169 = v180;
LABEL_93:
      if (__OFADD__(v168, 1))
      {
        goto LABEL_256;
      }

      ++v168;
      if ((v167 & 1) == 0)
      {
        sub_1C8481CB4(&v186, &v184);
        if (swift_dynamicCast())
        {
          v48 = v165;
          if (*(v165 + 16))
          {
            v49 = v182;
            v50 = sub_1C8474B54(v9, v47);
            if (v51)
            {
              sub_1C8481CB4(*(v48 + 56) + 32 * v50, &v184);
              if (swift_dynamicCast())
              {
                v52 = v49 - v182;
                if (v49 == v182)
                {
                  *&v184 = 1717987652;
                  *(&v184 + 1) = 0xE400000000000000;
                  MEMORY[0x1CCA775F0](v9, v47);
                  LODWORD(v180) = sub_1C8477E94();

                  if (v180)
                  {
                    *&v184 = 1717987652;
                    *(&v184 + 1) = 0xE400000000000000;
                    MEMORY[0x1CCA775F0](v9, v47);

                    v9 = *(&v184 + 1);
                    v53 = v184;
                    *(&v185 + 1) = MEMORY[0x1E69E6530];
                    *&v184 = 0;
                    sub_1C8481D10(&v184, &v182);
                    v54 = v171;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v181 = v54;
                    sub_1C8475624(&v182, v53, v9, isUniquelyReferenced_nonNull_native);

                    v171 = v181;
                    goto LABEL_134;
                  }

                  __swift_destroy_boxed_opaque_existential_0(&v186);

                  v100 = __OFADD__(v166++, 1);
                  if (v100)
                  {
                    __break(1u);
                    return result;
                  }

LABEL_149:
                  v36 = v170;
                  v37 = v169;
                  goto LABEL_75;
                }

                if (!__OFSUB__(v49, v182))
                {
                  *&v184 = 1717987652;
                  *(&v184 + 1) = 0xE400000000000000;
                  MEMORY[0x1CCA775F0](v9, v47);

                  v9 = *(&v184 + 1);
                  v58 = v184;
                  *(&v185 + 1) = MEMORY[0x1E69E6530];
                  *&v184 = v52;
                  sub_1C8481D10(&v184, &v182);
                  v56 = v171;
                  goto LABEL_107;
                }

                v173 = v182;
                v79 = sub_1C8590E44();
                if (qword_1EDE5CA48 != -1)
                {
                  swift_once();
                }

                v180 = qword_1EDE5CB90;
                if (os_log_type_enabled(qword_1EDE5CB90, v79))
                {
                  v80 = swift_slowAlloc();
                  *v80 = v160;
                  *(v80 + 4) = v49;
                  *(v80 + 12) = 2048;
                  *(v80 + 14) = v173;
                  _os_log_impl(&dword_1C8460000, v180, v79, "safeSubtractionCalculation overflowed subtracting a %ld b %ld", v80, 0x16u);
                  MEMORY[0x1CCA78470](v80, -1, -1);
                }

                v81 = sub_1C8590E44();
                if (os_log_type_enabled(v180, v81))
                {
                  v71 = swift_slowAlloc();
                  v157 = swift_slowAlloc();
                  *&v184 = v157;
                  *v71 = v159;
                  v9 = sub_1C84741F0(v9, v47, &v184);

                  *(v71 + 4) = v9;
                  *(v71 + 12) = 2048;
                  *(v71 + 14) = v173;
                  *(v71 + 22) = 2048;
                  *(v71 + 24) = v49;
                  _os_log_impl(&dword_1C8460000, v180, v81, "computeDiffAndAddLateAbsoluteValues diff key %s eval %ld lval %ld", v71, 0x20u);
                  v72 = &v184 + 8;
LABEL_119:
                  v73 = *(v72 - 32);
                  __swift_destroy_boxed_opaque_existential_0(v73);
                  v74 = v73;
LABEL_124:
                  MEMORY[0x1CCA78470](v74, -1, -1);
                  MEMORY[0x1CCA78470](v71, -1, -1);
LABEL_134:
                  __swift_destroy_boxed_opaque_existential_0(&v186);
                  goto LABEL_149;
                }

LABEL_133:

                goto LABEL_134;
              }
            }
          }
        }
      }

      sub_1C8481CB4(&v186, &v184);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(&v186);
      }

      else
      {
        if ((v167 | *(v164 + v163)))
        {
          v56 = v171;
          sub_1C8481CB4(&v186, &v184);
          v57 = MEMORY[0x1E69E6530];
          if (swift_dynamicCast())
          {
            v180 = v182;
            *&v184 = 1717987652;
            *(&v184 + 1) = 0xE400000000000000;
            MEMORY[0x1CCA775F0](v9, v47);

            v9 = *(&v184 + 1);
            v58 = v184;
            *(&v185 + 1) = v57;
            *&v184 = v180;
            sub_1C8481D10(&v184, &v182);
LABEL_107:
            v59 = swift_isUniquelyReferenced_nonNull_native();
            v181 = v56;
            sub_1C8475624(&v182, v58, v9, v59);

            __swift_destroy_boxed_opaque_existential_0(&v186);
            v171 = v181;
            goto LABEL_149;
          }
        }

        else
        {
          *(v164 + v162) = 1;
          v60 = v165;
          if (!*(v165 + 16) || (v61 = sub_1C8474B54(v9, v47), (v62 & 1) == 0))
          {
            v184 = 0u;
            v185 = 0u;
            sub_1C8482178(&v184, &qword_1EC2AADB8, &qword_1C85A10C0);
            v69 = sub_1C8590E64();
            if (qword_1EDE5CA48 != -1)
            {
              swift_once();
            }

            v70 = qword_1EDE5CB90;
            if (os_log_type_enabled(qword_1EDE5CB90, v69))
            {
              v71 = swift_slowAlloc();
              v180 = swift_slowAlloc();
              *&v184 = v180;
              *v71 = v161;
              v9 = sub_1C84741F0(v9, v47, &v184);

              *(v71 + 4) = v9;
              _os_log_impl(&dword_1C8460000, v70, v69, "Failed to compute diff: key %s not found in early", v71, 0xCu);
              v72 = &v191;
              goto LABEL_119;
            }

            goto LABEL_133;
          }

          sub_1C8481CB4(*(v60 + 56) + 32 * v61, &v184);
          sub_1C8482178(&v184, &qword_1EC2AADB8, &qword_1C85A10C0);
          v63 = v172;
          if (!v172[2] || (v64 = sub_1C8474B54(v9, v47), (v65 & 1) == 0))
          {
            v184 = 0u;
            v185 = 0u;
            sub_1C8482178(&v184, &qword_1EC2AADB8, &qword_1C85A10C0);
            v75 = sub_1C8590E64();
            if (qword_1EDE5CA48 != -1)
            {
              swift_once();
            }

            v76 = qword_1EDE5CB90;
            if (os_log_type_enabled(qword_1EDE5CB90, v75))
            {
              v77 = swift_slowAlloc();
              v180 = v76;
              v71 = v77;
              v78 = swift_slowAlloc();
              *&v184 = v78;
              *v71 = v161;
              v9 = sub_1C84741F0(v9, v47, &v184);

              *(v71 + 4) = v9;
              _os_log_impl(&dword_1C8460000, v180, v75, "Failed to compute diff: key %s not found in late", v71, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v78);
              v74 = v78;
              goto LABEL_124;
            }

            goto LABEL_133;
          }

          sub_1C8481CB4(v63[7] + 32 * v64, &v184);
          sub_1C8482178(&v184, &qword_1EC2AADB8, &qword_1C85A10C0);
          v66 = v165;
          if (*(v165 + 16) && (v67 = sub_1C8474B54(v9, v47), (v68 & 1) != 0))
          {
            sub_1C8481CB4(*(v66 + 56) + 32 * v67, &v184);
          }

          else
          {
            v184 = 0u;
            v185 = 0u;
          }

          sub_1C8482178(&v184, &qword_1EC2AADB8, &qword_1C85A10C0);
          v82 = v172;
          if (v172[2] && (v83 = sub_1C8474B54(v9, v47), (v84 & 1) != 0))
          {
            sub_1C8481CB4(v82[7] + 32 * v83, &v184);
          }

          else
          {
            v184 = 0u;
            v185 = 0u;
          }

          sub_1C8482178(&v184, &qword_1EC2AADB8, &qword_1C85A10C0);
          v85 = v165;
          if (*(v165 + 16))
          {
            v86 = sub_1C8474B54(v9, v47);
            if (v87)
            {
              sub_1C8481CB4(*(v85 + 56) + 32 * v86, &v184);
              v88 = v172;
              if (v172[2] && (v89 = sub_1C8474B54(v9, v47), (v90 & 1) != 0))
              {
                sub_1C8481CB4(v88[7] + 32 * v89, &v182);
                LODWORD(v180) = sub_1C8590E44();
                if (qword_1EDE5CA48 != -1)
                {
                  swift_once();
                }

                v173 = qword_1EDE5CB90;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
                v91 = swift_allocObject();
                *(v91 + 16) = v158;
                v92 = MEMORY[0x1E69E6158];
                *(v91 + 56) = MEMORY[0x1E69E6158];
                v93 = v92;
                v94 = sub_1C8481E7C();
                *(v91 + 64) = v94;
                *(v91 + 32) = v9;
                *(v91 + 40) = v47;
                __swift_project_boxed_opaque_existential_0(&v184, *(&v185 + 1));
                swift_getDynamicType();
                v95 = sub_1C8591034();
                *(v91 + 96) = v93;
                *(v91 + 104) = v94;
                *(v91 + 72) = v95;
                *(v91 + 80) = v96;
                __swift_project_boxed_opaque_existential_0(&v182, v183);
                swift_getDynamicType();
                v97 = sub_1C8591034();
                *(v91 + 136) = v93;
                *(v91 + 144) = v94;
                *(v91 + 112) = v97;
                *(v91 + 120) = v98;
                sub_1C8590CA4();

                __swift_destroy_boxed_opaque_existential_0(&v182);
              }

              else
              {
              }

              __swift_destroy_boxed_opaque_existential_0(&v184);
              goto LABEL_134;
            }
          }
        }

        __swift_destroy_boxed_opaque_existential_0(&v186);
      }

      goto LABEL_149;
    }

    __swift_destroy_boxed_opaque_existential_0(&v186);

    if (__OFADD__(v180, 1))
    {
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
      goto LABEL_254;
    }

    v173 = ++v180;
    v39 = v5;
    if (!a2)
    {
      goto LABEL_77;
    }
  }

  a2 = v172;

  v7 = v171;
LABEL_156:
  v101 = (a2 + 64);
  v102 = 1 << *(a2 + 32);
  v103 = -1;
  if (v102 < 64)
  {
    v103 = ~(-1 << v102);
  }

  v104 = v103 & *(a2 + 64);
  v105 = (v102 + 63) >> 6;

  v170 = MEMORY[0x1E69E7CC0];
  v169 = (a2 + 64);
  v171 = v7;
  v106 = 0;
  if (v104)
  {
    while (1)
    {
      a2 = v106;
LABEL_163:
      v107 = __clz(__rbit64(v104));
      v104 &= v104 - 1;
      v108 = v172[6] + ((a2 << 10) | (16 * v107));
      v9 = *v108;
      v10 = *(v108 + 8);

      v109 = 24;
      v110 = &off_1F481A4B0;
      do
      {
        if (!--v109)
        {
          break;
        }

        v111 = v110 + 2;
        v113 = *(v110 - 1);
        v112 = *v110;

        LOBYTE(v113) = sub_1C8590DC4();

        v110 = v111;
      }

      while ((v113 & 1) == 0);
      v114 = 60;
      v115 = &unk_1F481A640;
      while (--v114)
      {
        v116 = v115 + 2;
        v118 = *(v115 - 1);
        v117 = *v115;

        LOBYTE(v118) = sub_1C8590DD4();

        v115 = v116;
        if (v118)
        {
          goto LABEL_173;
        }
      }

      if (v109)
      {
LABEL_173:
        v119 = v170;
        v120 = swift_isUniquelyReferenced_nonNull_native();
        *&v189 = v119;
        if (v120)
        {
          v121 = v119;
        }

        else
        {
          sub_1C84750E0(0, *(v119 + 2) + 1, 1);
          v121 = v189;
        }

        v123 = *(v121 + 2);
        v122 = *(v121 + 3);
        if (v123 >= v122 >> 1)
        {
          sub_1C84750E0((v122 > 1), v123 + 1, 1);
          v121 = v189;
        }

        *(v121 + 2) = v123 + 1;
        v170 = v121;
        v124 = &v121[16 * v123];
        *(v124 + 4) = v9;
        *(v124 + 5) = v10;
        v101 = v169;
        v106 = a2;
        if (!v104)
        {
          goto LABEL_160;
        }
      }

      else
      {

        v106 = a2;
        v101 = v169;
        if (!v104)
        {
          goto LABEL_160;
        }
      }
    }
  }

  while (1)
  {
LABEL_160:
    a2 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      __break(1u);
      goto LABEL_252;
    }

    if (a2 >= v105)
    {
      break;
    }

    v104 = *&v101[8 * a2];
    ++v106;
    if (v104)
    {
      goto LABEL_163;
    }
  }

  swift_arrayDestroy();
  swift_arrayDestroy();

  a2 = *(v170 + 2);
  if (!a2)
  {
    v33 = 0;
LABEL_244:

    sub_1C8590E34();
    if (qword_1EDE5CA48 != -1)
    {
      goto LABEL_257;
    }

    goto LABEL_245;
  }

  v33 = 0;
  v10 = 0;
  v169 = "interfaceStats_phymode_11AX";
  v167 = "eer_acCompletions";
  v126 = (v170 + 40);
  while (2)
  {
    v127 = *(v126 - 1);
    v9 = *v126;
    if (!v177)
    {
      *&v189 = *(v126 - 1);
      *(&v189 + 1) = v9;
      MEMORY[0x1EEE9AC00](v125);
      v156 = &v189;

      v130 = sub_1C847757C(sub_1C84821D8, v155, &unk_1F481A9E8);
      v129 = swift_arrayDestroy();
      if (v130)
      {
        if (!v176)
        {
          goto LABEL_204;
        }
      }

      else
      {
        v129 = sub_1C8590DC4();
        if (v129)
        {
          if (v176)
          {
LABEL_207:
            if (v179)
            {
LABEL_212:
              if (v178)
              {
LABEL_219:
                if (v175)
                {
LABEL_228:
                  if (!v174)
                  {
                    goto LABEL_232;
                  }

                  v131 = 1;
LABEL_230:
                  if ((sub_1C8590DC4() & 1) == 0)
                  {
LABEL_231:
                    if ((v131 & 1) == 0)
                    {
                      goto LABEL_234;
                    }
                  }

LABEL_232:

                  if (__OFADD__(v180, 1))
                  {
                    goto LABEL_253;
                  }

                  v173 = ++v180;
                  goto LABEL_185;
                }

                v131 = 1;
LABEL_225:
                if (sub_1C8590DC4() & 1) != 0 || (sub_1C8590DC4() & 1) != 0 || (sub_1C8590DC4())
                {
                  goto LABEL_228;
                }

LABEL_222:
                if (!v174)
                {
                  goto LABEL_231;
                }

                goto LABEL_230;
              }

              v131 = 1;
              goto LABEL_217;
            }

            v131 = 1;
            goto LABEL_210;
          }

          v131 = 1;
LABEL_205:
          *&v189 = v127;
          *(&v189 + 1) = v9;
          MEMORY[0x1EEE9AC00](v129);
          v156 = &v189;
          v132 = sub_1C847757C(sub_1C848234C, v155, &unk_1F481AA88);
          v129 = sub_1C84821F4(&unk_1F481AAA8);
          if ((v132 & 1) != 0 || (v129 = sub_1C8590DC4(), (v129 & 1) == 0))
          {
            if (v179)
            {
              goto LABEL_214;
            }

            goto LABEL_210;
          }

          goto LABEL_207;
        }

        if (!v176)
        {
LABEL_204:
          v131 = 0;
          goto LABEL_205;
        }
      }

      if (v179)
      {
        if (v178)
        {
          if (!v175)
          {
            goto LABEL_224;
          }

          if (!v174)
          {
            goto LABEL_234;
          }

          v131 = 0;
          goto LABEL_230;
        }

        goto LABEL_216;
      }

      goto LABEL_202;
    }

    v128 = *v126;

    if (!v176)
    {
      goto LABEL_204;
    }

    if (!v179)
    {
LABEL_202:
      v131 = 0;
LABEL_210:
      *&v189 = v127;
      *(&v189 + 1) = v9;
      MEMORY[0x1EEE9AC00](v129);
      v156 = &v189;
      v133 = sub_1C847757C(sub_1C848234C, v155, &unk_1F481AA58);
      v129 = sub_1C84821F4(&unk_1F481AA78);
      if ((v133 & 1) == 0)
      {
        v129 = sub_1C8590DC4();
        if (v129)
        {
          goto LABEL_212;
        }
      }

LABEL_214:
      if (v178)
      {
        goto LABEL_221;
      }

      goto LABEL_217;
    }

    if (!v178)
    {
LABEL_216:
      v131 = 0;
LABEL_217:
      *&v189 = v127;
      *(&v189 + 1) = v9;
      MEMORY[0x1EEE9AC00](v129);
      v156 = &v189;
      v134 = sub_1C847757C(sub_1C848234C, v155, &unk_1F481AA28);
      sub_1C84821F4(&unk_1F481AA48);
      if (v134 & 1) == 0 && (sub_1C8590DC4())
      {
        goto LABEL_219;
      }

LABEL_221:
      if (v175)
      {
        goto LABEL_222;
      }

      goto LABEL_225;
    }

    if (!v175)
    {
LABEL_224:
      v131 = 0;
      goto LABEL_225;
    }

LABEL_234:
    v135 = v172;
    if (v172[2])
    {
      v136 = sub_1C8474B54(v127, v9);
      if (v137)
      {
        sub_1C8481CB4(v135[7] + 32 * v136, &v189);
        v138 = v171;
        v139 = swift_isUniquelyReferenced_nonNull_native();
        *&v186 = v138;
        sub_1C8475624(&v189, v127, v9, v139);

        v140 = v186;
        v100 = __OFADD__(v33++, 1);
        if (v100)
        {
          goto LABEL_255;
        }

LABEL_184:
        v171 = v140;
LABEL_185:
        v126 += 2;
        if (!--a2)
        {
          goto LABEL_244;
        }

        continue;
      }
    }

    break;
  }

  v140 = v171;
  v141 = sub_1C8474B54(v127, v9);
  v143 = v142;

  if (v143)
  {
    v144 = swift_isUniquelyReferenced_nonNull_native();
    *&v186 = v140;
    if (!v144)
    {
      sub_1C8474BCC();
      v140 = v186;
    }

    v145 = *(*(v140 + 48) + 16 * v141 + 8);

    sub_1C8481D10((*(v140 + 56) + 32 * v141), &v189);
    sub_1C8475474(v141, v140);
  }

  else
  {
    v189 = 0u;
    v190[0] = 0u;
  }

  v125 = sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
  v100 = __OFADD__(v33++, 1);
  if (!v100)
  {
    goto LABEL_184;
  }

LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  swift_once();
LABEL_245:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_1C85A1040;
  v147 = MEMORY[0x1E69E65A8];
  v148 = MEMORY[0x1E69E6530];
  *(v146 + 56) = MEMORY[0x1E69E6530];
  *(v146 + 64) = v147;
  *(v146 + 32) = v168;
  *(v146 + 96) = v148;
  *(v146 + 104) = v147;
  *(v146 + 72) = v166;
  *(v146 + 136) = v148;
  *(v146 + 144) = v147;
  *(v146 + 112) = v173;
  *(v146 + 176) = v148;
  *(v146 + 184) = v147;
  *(v146 + 152) = v33;
  v149 = v177;
  *(v146 + 216) = v148;
  *(v146 + 224) = v147;
  *(v146 + 192) = v149;
  v150 = v176;
  *(v146 + 256) = v148;
  *(v146 + 264) = v147;
  *(v146 + 232) = v150;
  v151 = v179;
  *(v146 + 296) = v148;
  *(v146 + 304) = v147;
  *(v146 + 272) = v151;
  v152 = v178;
  *(v146 + 336) = v148;
  *(v146 + 344) = v147;
  *(v146 + 312) = v152;
  v153 = v175;
  *(v146 + 376) = v148;
  *(v146 + 384) = v147;
  *(v146 + 352) = v153;
  v154 = v174;
  *(v146 + 416) = v148;
  *(v146 + 424) = v147;
  *(v146 + 392) = v154;
  sub_1C8590CA4();

  return v171;
}

uint64_t sub_1C8470540(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1C8590C84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3;
  v19 = a4;
  sub_1C8590C74();
  sub_1C8481E28();
  v13 = sub_1C8590EB4();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v18 = a1;
  v19 = a2;
  if (v16)
  {

    MEMORY[0x1CCA775F0](95, 0xE100000000000000);

    MEMORY[0x1CCA775F0](v13, v15);
  }

  else
  {

    MEMORY[0x1CCA775F0](v13, v15);
  }

  return v18;
}

uint64_t sub_1C84706C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C8590C84();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 2)
  {
    return 0;
  }

  v13 = v10;
  v14 = sub_1C8474B54(0x65756C6176, 0xE500000000000000);
  if (v15 & 1) != 0 && (sub_1C8481CB4(*(a1 + 56) + 32 * v14, &v105), sub_1C8482178(&v105, &qword_1EC2AADB8, &qword_1C85A10C0), *(a1 + 16)) && (v16 = sub_1C8474B54(0x63696666617274, 0xE700000000000000), (v17))
  {
    sub_1C8481CB4(*(a1 + 56) + 32 * v16, &v105);
    sub_1C8482178(&v105, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (*(a1 + 16))
    {
      v18 = sub_1C8474B54(0x63696666617274, 0xE700000000000000);
      if (v19)
      {
        sub_1C8481CB4(*(a1 + 56) + 32 * v18, &v105);
        if (swift_dynamicCast())
        {
          if (*(a1 + 16))
          {
            v101 = v103;
            v20 = sub_1C8474B54(0x65756C6176, 0xE500000000000000);
            if (v21)
            {
              sub_1C8481CB4(*(a1 + 56) + 32 * v20, &v105);
              sub_1C84822E4(0, &qword_1EDE5CA28, 0x1E696AD98);
              if (swift_dynamicCast())
              {
LABEL_11:
                v100 = v103;
                *&v105 = a3;
                *(&v105 + 1) = a4;

                MEMORY[0x1CCA775F0](95, 0xE100000000000000);
                v22 = *(&v105 + 1);
                v23 = v105;
                v105 = v101;
                sub_1C8590C74();
                sub_1C8481E28();
                v24 = sub_1C8590EB4();
                v26 = v25;
                (*(v8 + 8))(v12, v13);

                v105 = __PAIR128__(v22, v23);

                MEMORY[0x1CCA775F0](v24, v26);

                v28 = *(&v105 + 1);
                v27 = v105;
                v29 = v100;
LABEL_23:
                v45 = sub_1C8590E24();
                *(&v106 + 1) = MEMORY[0x1E69E6530];
                *&v105 = v45;
                sub_1C8466D6C(&v105, v27, v28);

                return 1;
              }
            }
          }
        }
      }
    }

    if (*(a1 + 16))
    {
      v55 = sub_1C8474B54(0x63696666617274, 0xE700000000000000);
      if (v56)
      {
        sub_1C8481CB4(*(a1 + 56) + 32 * v55, &v105);
        if (swift_dynamicCast())
        {
          if (*(a1 + 16))
          {
            v101 = v103;
            v57 = sub_1C8474B54(0x65756C6176, 0xE500000000000000);
            if (v58)
            {
              sub_1C8481CB4(*(a1 + 56) + 32 * v57, &v105);
              if (swift_dynamicCast())
              {
LABEL_43:
                v100 = v103;
                *&v105 = a3;
                *(&v105 + 1) = a4;

                MEMORY[0x1CCA775F0](95, 0xE100000000000000);
                v59 = v105;
                v105 = v101;
                sub_1C8590C74();
                sub_1C8481E28();
                v60 = sub_1C8590EB4();
                v62 = v61;
                (*(v8 + 8))(v12, v13);

                v105 = v59;

                MEMORY[0x1CCA775F0](v60, v62);

                v64 = *(&v105 + 1);
                v63 = v105;
                *(&v106 + 1) = MEMORY[0x1E69E6530];
                v65 = v100;
LABEL_59:
                *&v105 = v65;
                sub_1C8466D6C(&v105, v63, v64);
                return 1;
              }
            }
          }
        }
      }
    }

    if (*(a1 + 16))
    {
      v66 = sub_1C8474B54(0x65756C6176, 0xE500000000000000);
      if (v67)
      {
        sub_1C8481CB4(*(a1 + 56) + 32 * v66, &v103);
        sub_1C8481D10(&v103, &v105);
        if (!*(a1 + 16))
        {
          goto LABEL_67;
        }

        v68 = sub_1C8474B54(0x63696666617274, 0xE700000000000000);
        if ((v69 & 1) == 0)
        {
          goto LABEL_67;
        }

        sub_1C8481CB4(*(a1 + 56) + 32 * v68, v102);
        sub_1C8481D10(v102, &v103);
        sub_1C8590E44();
        if (qword_1EDE5CA48 == -1)
        {
LABEL_66:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_1C85A0FE0;
          v85 = MEMORY[0x1E69E6158];
          *(v84 + 56) = MEMORY[0x1E69E6158];
          v86 = sub_1C8481E7C();
          *(v84 + 64) = v86;
          *(v84 + 32) = a3;
          *(v84 + 40) = a4;
          __swift_project_boxed_opaque_existential_0(&v105, *(&v106 + 1));
          swift_getDynamicType();

          v87 = sub_1C8591034();
          *(v84 + 96) = v85;
          *(v84 + 104) = v86;
          *(v84 + 72) = v87;
          *(v84 + 80) = v88;
          __swift_project_boxed_opaque_existential_0(&v103, v104);
          swift_getDynamicType();
          v89 = sub_1C8591034();
          *(v84 + 136) = v85;
          *(v84 + 144) = v86;
          *(v84 + 112) = v89;
          *(v84 + 120) = v90;
          sub_1C8590CA4();

          __swift_destroy_boxed_opaque_existential_0(&v103);
LABEL_67:
          __swift_destroy_boxed_opaque_existential_0(&v105);
          return 0;
        }

LABEL_85:
        swift_once();
        goto LABEL_66;
      }
    }
  }

  else
  {
    v105 = 0u;
    v106 = 0u;
    sub_1C8482178(&v105, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (*(a1 + 16) == 2)
    {
      v30 = sub_1C8474B54(7235938, 0xE300000000000000);
      if (v31 & 1) != 0 && (sub_1C8481CB4(*(a1 + 56) + 32 * v30, &v105), sub_1C8482178(&v105, &qword_1EC2AADB8, &qword_1C85A10C0), *(a1 + 16)) && (v32 = sub_1C8474B54(1937009000, 0xE400000000000000), (v33))
      {
        sub_1C8481CB4(*(a1 + 56) + 32 * v32, &v105);
        sub_1C8482178(&v105, &qword_1EC2AADB8, &qword_1C85A10C0);
        if (*(a1 + 16))
        {
          v34 = sub_1C8474B54(7235938, 0xE300000000000000);
          if (v35)
          {
            sub_1C8481CB4(*(a1 + 56) + 32 * v34, &v105);
            if (swift_dynamicCast())
            {
              v36 = *(&v103 + 1);
              if (*(a1 + 16))
              {
                v37 = v103;
                v38 = sub_1C8474B54(1937009000, 0xE400000000000000);
                if (v39)
                {
                  sub_1C8481CB4(*(a1 + 56) + 32 * v38, &v105);
                  sub_1C84822E4(0, &qword_1EDE5CA28, 0x1E696AD98);
                  if (swift_dynamicCast())
                  {
                    *(&v101 + 1) = v103;
                    *&v105 = a3;
                    *(&v105 + 1) = a4;

                    MEMORY[0x1CCA775F0](95, 0xE100000000000000);
                    v40 = *(&v105 + 1);
                    v41 = v105;
                    *&v105 = v37;
                    *(&v105 + 1) = v36;
                    sub_1C8590C74();
                    sub_1C8481E28();
                    v42 = sub_1C8590EB4();
                    v44 = v43;
                    (*(v8 + 8))(v12, v13);

                    v105 = __PAIR128__(v40, v41);

                    MEMORY[0x1CCA775F0](v42, v44);

                    v28 = *(&v105 + 1);
                    v27 = v105;
                    v29 = *(&v101 + 1);
                    goto LABEL_23;
                  }
                }
              }
            }
          }
        }

        if (*(a1 + 16))
        {
          v70 = sub_1C8474B54(7235938, 0xE300000000000000);
          if (v71)
          {
            sub_1C8481CB4(*(a1 + 56) + 32 * v70, &v105);
            if (swift_dynamicCast())
            {
              v72 = *(&v103 + 1);
              if (*(a1 + 16))
              {
                v73 = v103;
                v74 = sub_1C8474B54(1937009000, 0xE400000000000000);
                if (v75)
                {
                  sub_1C8481CB4(*(a1 + 56) + 32 * v74, &v105);
                  if (swift_dynamicCast())
                  {
                    *(&v101 + 1) = v103;
                    *&v105 = a3;
                    *(&v105 + 1) = a4;

                    MEMORY[0x1CCA775F0](95, 0xE100000000000000);
                    v76 = v105;
                    *&v105 = v73;
                    *(&v105 + 1) = v72;
                    sub_1C8590C74();
                    sub_1C8481E28();
                    v77 = sub_1C8590EB4();
                    v79 = v78;
                    (*(v8 + 8))(v12, v13);

                    v105 = v76;

                    MEMORY[0x1CCA775F0](v77, v79);

                    v64 = *(&v105 + 1);
                    v63 = v105;
                    *(&v106 + 1) = MEMORY[0x1E69E6530];
                    v65 = *(&v101 + 1);
                    goto LABEL_59;
                  }
                }
              }
            }
          }
        }

        if (*(a1 + 16))
        {
          v80 = sub_1C8474B54(1937009000, 0xE400000000000000);
          if (v81)
          {
            sub_1C8481CB4(*(a1 + 56) + 32 * v80, &v103);
            sub_1C8481D10(&v103, &v105);
            if (!*(a1 + 16))
            {
              goto LABEL_67;
            }

            v82 = sub_1C8474B54(7235938, 0xE300000000000000);
            if ((v83 & 1) == 0)
            {
              goto LABEL_67;
            }

            sub_1C8481CB4(*(a1 + 56) + 32 * v82, v102);
            sub_1C8481D10(v102, &v103);
            sub_1C8590E44();
            if (qword_1EDE5CA48 == -1)
            {
              goto LABEL_66;
            }

            goto LABEL_85;
          }
        }
      }

      else
      {
        v105 = 0u;
        v106 = 0u;
        sub_1C8482178(&v105, &qword_1EC2AADB8, &qword_1C85A10C0);
        if (*(a1 + 16) == 2)
        {
          v47 = sub_1C8474B54(0x6574617473, 0xE500000000000000);
          if (v48 & 1) != 0 && (sub_1C8481CB4(*(a1 + 56) + 32 * v47, &v105), sub_1C8482178(&v105, &qword_1EC2AADB8, &qword_1C85A10C0), *(a1 + 16)) && (v49 = sub_1C8474B54(0x746E656469736572, 0xEC000000656D6954), (v50))
          {
            sub_1C8481CB4(*(a1 + 56) + 32 * v49, &v105);
            sub_1C8482178(&v105, &qword_1EC2AADB8, &qword_1C85A10C0);
            if (*(a1 + 16))
            {
              v51 = sub_1C8474B54(0x6574617473, 0xE500000000000000);
              if (v52)
              {
                sub_1C8481CB4(*(a1 + 56) + 32 * v51, &v105);
                if (swift_dynamicCast())
                {
                  if (*(a1 + 16))
                  {
                    v101 = v103;
                    v53 = sub_1C8474B54(0x746E656469736572, 0xEC000000656D6954);
                    if (v54)
                    {
                      sub_1C8481CB4(*(a1 + 56) + 32 * v53, &v105);
                      sub_1C84822E4(0, &qword_1EDE5CA28, 0x1E696AD98);
                      if (swift_dynamicCast())
                      {
                        goto LABEL_11;
                      }
                    }
                  }
                }
              }
            }

            if (*(a1 + 16))
            {
              v91 = sub_1C8474B54(0x6574617473, 0xE500000000000000);
              if (v92)
              {
                sub_1C8481CB4(*(a1 + 56) + 32 * v91, &v105);
                if (swift_dynamicCast())
                {
                  if (*(a1 + 16))
                  {
                    v101 = v103;
                    v93 = sub_1C8474B54(0x746E656469736572, 0xEC000000656D6954);
                    if (v94)
                    {
                      sub_1C8481CB4(*(a1 + 56) + 32 * v93, &v105);
                      if (swift_dynamicCast())
                      {
                        goto LABEL_43;
                      }
                    }
                  }
                }
              }
            }

            if (*(a1 + 16))
            {
              v95 = sub_1C8474B54(0x6574617473, 0xE500000000000000);
              if (v96)
              {
                sub_1C8481CB4(*(a1 + 56) + 32 * v95, &v103);
                sub_1C8481D10(&v103, &v105);
                if (!*(a1 + 16))
                {
                  goto LABEL_67;
                }

                v97 = sub_1C8474B54(0x746E656469736572, 0xEC000000656D6954);
                if ((v98 & 1) == 0)
                {
                  goto LABEL_67;
                }

                sub_1C8481CB4(*(a1 + 56) + 32 * v97, v102);
                sub_1C8481D10(v102, &v103);
                sub_1C8590E44();
                if (qword_1EDE5CA48 == -1)
                {
                  goto LABEL_66;
                }

                goto LABEL_85;
              }
            }
          }

          else
          {
            v105 = 0u;
            v106 = 0u;
            sub_1C8482178(&v105, &qword_1EC2AADB8, &qword_1C85A10C0);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1C84715F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(&v184 + 1) = a4;
  *&v184 = a3;
  v182 = sub_1C8590C84();
  v6 = *(*(v182 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v182);
  v181 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = *(a1 + 16);
  if (v185)
  {
    v11 = 0;
    v12 = a1 + 32;
    v180 = (v8 + 8);
    v13 = HIBYTE(*(&v184 + 1)) & 0xFLL;
    if ((*(&v184 + 1) & 0x2000000000000000) == 0)
    {
      v13 = v184 & 0xFFFFFFFFFFFFLL;
    }

    v179 = v13;
    v175 = 0x80000001C85A49F0;
    v174 = 0x80000001C85A49D0;
    *&v9 = 136315394;
    v178 = v9;
    *&v9 = 136315138;
    v177 = v9;
    v176 = xmmword_1C85A0FF0;
    v183 = a2;
    do
    {
      *&v191 = v11;
      result = sub_1C8481CB4(v12, &v191 + 8);
      v194[0] = v191;
      v194[1] = v192;
      v195 = v193;
      if (!v193)
      {
        return result;
      }

      v186 = v191;
      sub_1C8481D10((v194 + 8), &v191);
      sub_1C8481CB4(&v191, &v189);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAE08, &qword_1C85A1108);
      if (!swift_dynamicCast())
      {
        sub_1C8481CB4(&v191, &v189);
        if (swift_dynamicCast())
        {
          v24 = v188[0];
          *&v189 = v186;
          *&v189 = sub_1C8590FD4();
          *(&v189 + 1) = v25;
          v26 = v181;
          sub_1C8590C74();
          sub_1C8481E28();
          v27 = sub_1C8590EB4();
          v29 = v28;
          (*v180)(v26, v182);

          v189 = v184;
          if (v179)
          {

            MEMORY[0x1CCA775F0](95, 0xE100000000000000);

            MEMORY[0x1CCA775F0](v27, v29);
          }

          else
          {

            MEMORY[0x1CCA775F0](v27, v29);
          }

          v62 = v189;
          v63 = *v183;
          if (*(*v183 + 16) && (v64 = sub_1C8474B54(v189, *(&v189 + 1)), (v65 & 1) != 0))
          {
            sub_1C8481CB4(*(v63 + 56) + 32 * v64, &v189);
            sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
            v66 = sub_1C8590E54();
            if (qword_1EDE5CA48 != -1)
            {
              swift_once();
            }

            v67 = qword_1EDE5CB90;
            if (os_log_type_enabled(qword_1EDE5CB90, v66))
            {
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              *&v189 = v69;
              *v68 = v177;
              *(v68 + 4) = sub_1C84741F0(v62, *(&v62 + 1), &v189);
              _os_log_impl(&dword_1C8460000, v67, v66, "From Array: Key unexpectedly present when flattening: %s", v68, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v69);
              MEMORY[0x1CCA78470](v69, -1, -1);
              MEMORY[0x1CCA78470](v68, -1, -1);
            }
          }

          else
          {
            v189 = 0u;
            v190 = 0u;
            sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
          }

          *(&v190 + 1) = MEMORY[0x1E69E6530];
          *&v189 = v24;
          sub_1C8481D10(&v189, v188);
          a2 = v183;
          v70 = *v183;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v187 = *a2;
          v72 = v187;
          v73 = sub_1C8474B54(v62, *(&v62 + 1));
          v75 = v72[2];
          v76 = (v74 & 1) == 0;
          v77 = __OFADD__(v75, v76);
          v78 = v75 + v76;
          if (v77)
          {
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            result = sub_1C8591004();
            __break(1u);
            return result;
          }

          v79 = v74;
          if (v72[3] >= v78)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v171 = v73;
              sub_1C8474BCC();
              v73 = v171;
            }
          }

          else
          {
            sub_1C8474D70(v78, isUniquelyReferenced_nonNull_native);
            v73 = sub_1C8474B54(v62, *(&v62 + 1));
            if ((v79 & 1) != (v80 & 1))
            {
              goto LABEL_149;
            }
          }

          if ((v79 & 1) == 0)
          {
            v81 = v187;
            v187[(v73 >> 6) + 8] |= 1 << v73;
            *(v81[6] + 16 * v73) = v62;
            sub_1C8481D10(v188, (v81[7] + 32 * v73));
            result = __swift_destroy_boxed_opaque_existential_0(&v191);
            v82 = v81[2];
            v77 = __OFADD__(v82, 1);
            v83 = v82 + 1;
            if (v77)
            {
              goto LABEL_145;
            }

LABEL_113:
            v81[2] = v83;
            *a2 = v81;
            goto LABEL_6;
          }

          goto LABEL_91;
        }

        sub_1C8481CB4(&v191, &v189);
        if (swift_dynamicCast())
        {
          v30 = *v188;
          *&v189 = v186;
          *&v189 = sub_1C8590FD4();
          *(&v189 + 1) = v31;
          v32 = v181;
          sub_1C8590C74();
          sub_1C8481E28();
          v33 = sub_1C8590EB4();
          v35 = v34;
          (*v180)(v32, v182);

          v189 = v184;
          if (v179)
          {

            MEMORY[0x1CCA775F0](95, 0xE100000000000000);

            MEMORY[0x1CCA775F0](v33, v35);
          }

          else
          {

            MEMORY[0x1CCA775F0](v33, v35);
          }

          v100 = v189;
          v101 = *v183;
          if (*(*v183 + 16) && (v102 = sub_1C8474B54(v189, *(&v189 + 1)), (v103 & 1) != 0))
          {
            sub_1C8481CB4(*(v101 + 56) + 32 * v102, &v189);
            sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
            v104 = sub_1C8590E54();
            if (qword_1EDE5CA48 != -1)
            {
              swift_once();
            }

            v105 = qword_1EDE5CB90;
            if (os_log_type_enabled(qword_1EDE5CB90, v104))
            {
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              *&v189 = v107;
              *v106 = v177;
              *(v106 + 4) = sub_1C84741F0(v100, *(&v100 + 1), &v189);
              _os_log_impl(&dword_1C8460000, v105, v104, "From Array: Key unexpectedly present when flattening: %s", v106, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v107);
              MEMORY[0x1CCA78470](v107, -1, -1);
              MEMORY[0x1CCA78470](v106, -1, -1);
            }
          }

          else
          {
            v189 = 0u;
            v190 = 0u;
            sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
          }

          *(&v190 + 1) = MEMORY[0x1E69E6158];
          v189 = v30;
          sub_1C8481D10(&v189, v188);
          a2 = v183;
          v108 = *v183;
          v109 = swift_isUniquelyReferenced_nonNull_native();
          v187 = *a2;
          v110 = v187;
          v73 = sub_1C8474B54(v100, *(&v100 + 1));
          v112 = v110[2];
          v113 = (v111 & 1) == 0;
          v77 = __OFADD__(v112, v113);
          v114 = v112 + v113;
          if (v77)
          {
            goto LABEL_144;
          }

          v115 = v111;
          if (v110[3] >= v114)
          {
            if ((v109 & 1) == 0)
            {
              v172 = v73;
              sub_1C8474BCC();
              v73 = v172;
            }
          }

          else
          {
            sub_1C8474D70(v114, v109);
            v73 = sub_1C8474B54(v100, *(&v100 + 1));
            if ((v115 & 1) != (v116 & 1))
            {
              goto LABEL_149;
            }
          }

          if ((v115 & 1) == 0)
          {
            v81 = v187;
            v187[(v73 >> 6) + 8] |= 1 << v73;
            *(v81[6] + 16 * v73) = v100;
            sub_1C8481D10(v188, (v81[7] + 32 * v73));
            result = __swift_destroy_boxed_opaque_existential_0(&v191);
            v120 = v81[2];
            v77 = __OFADD__(v120, 1);
            v83 = v120 + 1;
            if (v77)
            {
              goto LABEL_147;
            }

            goto LABEL_113;
          }

LABEL_91:
          v117 = v73;

          v118 = v187;
          v119 = (v187[7] + 32 * v117);
          __swift_destroy_boxed_opaque_existential_0(v119);
          sub_1C8481D10(v188, v119);
        }

        else
        {
          sub_1C8481CB4(&v191, &v189);
          sub_1C84822E4(0, &qword_1EDE5CA28, 0x1E696AD98);
          if (!swift_dynamicCast())
          {
            *&v189 = v186;
            *&v189 = sub_1C8590FD4();
            *(&v189 + 1) = v89;
            v90 = v181;
            sub_1C8590C74();
            sub_1C8481E28();
            v91 = sub_1C8590EB4();
            v93 = v92;
            (*v180)(v90, v182);

            v189 = v184;
            if (v179)
            {

              MEMORY[0x1CCA775F0](95, 0xE100000000000000);

              MEMORY[0x1CCA775F0](v91, v93);
            }

            else
            {

              MEMORY[0x1CCA775F0](v91, v93);
            }

            v143 = v189;
            sub_1C8590E54();
            v144 = MEMORY[0x1E69E6158];
            if (qword_1EDE5CA48 != -1)
            {
              swift_once();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
            v145 = swift_allocObject();
            *(v145 + 16) = v176;
            *(v145 + 56) = v144;
            v146 = sub_1C8481E7C();
            *(v145 + 64) = v146;
            *(v145 + 32) = v143;
            __swift_project_boxed_opaque_existential_0(&v191, *(&v192 + 1));
            swift_getDynamicType();
            v147 = sub_1C8591034();
            *(v145 + 96) = MEMORY[0x1E69E6158];
            *(v145 + 104) = v146;
            *(v145 + 72) = v147;
            *(v145 + 80) = v148;
            sub_1C8590CA4();

            result = __swift_destroy_boxed_opaque_existential_0(&v191);
            a2 = v183;
            goto LABEL_6;
          }

          v54 = v188[0];
          *&v189 = v186;
          *&v189 = sub_1C8590FD4();
          *(&v189 + 1) = v55;
          v56 = v181;
          sub_1C8590C74();
          sub_1C8481E28();
          v57 = sub_1C8590EB4();
          v59 = v58;
          (*v180)(v56, v182);

          v189 = v184;
          if (v179)
          {

            MEMORY[0x1CCA775F0](95, 0xE100000000000000);

            MEMORY[0x1CCA775F0](v57, v59);
          }

          else
          {

            MEMORY[0x1CCA775F0](v57, v59);
          }

          v121 = v189;
          v122 = *a2;
          if (*(*a2 + 16) && (v123 = sub_1C8474B54(v189, *(&v189 + 1)), (v124 & 1) != 0))
          {
            sub_1C8481CB4(v122[7] + 32 * v123, &v189);
            sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
            v125 = sub_1C8590E54();
            if (qword_1EDE5CA48 != -1)
            {
              swift_once();
            }

            v126 = qword_1EDE5CB90;
            if (os_log_type_enabled(qword_1EDE5CB90, v125))
            {
              v127 = swift_slowAlloc();
              v128 = swift_slowAlloc();
              *&v189 = v128;
              *v127 = v177;
              *(v127 + 4) = sub_1C84741F0(v121, *(&v121 + 1), &v189);
              _os_log_impl(&dword_1C8460000, v126, v125, "From Array: Key unexpectedly present when flattening: %s", v127, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v128);
              MEMORY[0x1CCA78470](v128, -1, -1);
              MEMORY[0x1CCA78470](v127, -1, -1);
            }
          }

          else
          {
            v189 = 0u;
            v190 = 0u;
            sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
          }

          v129 = sub_1C8590E24();
          *(&v190 + 1) = MEMORY[0x1E69E6530];
          *&v189 = v129;
          sub_1C8481D10(&v189, v188);
          v130 = *a2;
          v131 = swift_isUniquelyReferenced_nonNull_native();
          v187 = *a2;
          v132 = v187;
          v133 = sub_1C8474B54(v121, *(&v121 + 1));
          v135 = v132[2];
          v136 = (v134 & 1) == 0;
          v77 = __OFADD__(v135, v136);
          v137 = v135 + v136;
          if (v77)
          {
            goto LABEL_146;
          }

          v138 = v134;
          if (v132[3] >= v137)
          {
            if ((v131 & 1) == 0)
            {
              v173 = v133;
              sub_1C8474BCC();
              v133 = v173;
            }
          }

          else
          {
            sub_1C8474D70(v137, v131);
            v133 = sub_1C8474B54(v121, *(&v121 + 1));
            if ((v138 & 1) != (v139 & 1))
            {
              goto LABEL_149;
            }
          }

          if ((v138 & 1) == 0)
          {
            v81 = v187;
            v187[(v133 >> 6) + 8] |= 1 << v133;
            *(v81[6] + 16 * v133) = v121;
            sub_1C8481D10(v188, (v81[7] + 32 * v133));

            result = __swift_destroy_boxed_opaque_existential_0(&v191);
            v142 = v81[2];
            v77 = __OFADD__(v142, 1);
            v83 = v142 + 1;
            if (v77)
            {
              goto LABEL_148;
            }

            goto LABEL_113;
          }

          v140 = v133;

          v118 = v187;
          v141 = (v187[7] + 32 * v140);
          __swift_destroy_boxed_opaque_existential_0(v141);
          sub_1C8481D10(v188, v141);
        }

        result = __swift_destroy_boxed_opaque_existential_0(&v191);
        *a2 = v118;
        goto LABEL_6;
      }

      v14 = v188[0];
      v15 = *(v188[0] + 16);
      if (v15 == 2)
      {
        if (sub_1C84706C4(v188[0], a2, v184, *(&v184 + 1)))
        {
          goto LABEL_5;
        }

        v15 = *(v14 + 16);
      }

      else if (!v15)
      {
        v16 = sub_1C8590E64();
        if (qword_1EDE5CA48 != -1)
        {
          swift_once();
        }

        v17 = qword_1EDE5CB90;
        if (!os_log_type_enabled(qword_1EDE5CB90, v16))
        {
          goto LABEL_74;
        }

        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&v189 = v19;
        *v18 = v178;
        v20 = sub_1C8590CE4();
        v22 = v21;

        v23 = sub_1C84741F0(v20, v22, &v189);

        *(v18 + 4) = v23;
        *(v18 + 12) = 2048;
        *(v18 + 14) = v186;
        _os_log_impl(&dword_1C8460000, v17, v16, "From Array: empty or zero dict: %s index %ld", v18, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x1CCA78470](v19, -1, -1);
        MEMORY[0x1CCA78470](v18, -1, -1);
        goto LABEL_75;
      }

      if (v15)
      {
        v36 = sub_1C8474B54(25441, 0xE200000000000000);
        if (v37)
        {
          sub_1C8481CB4(*(v14 + 56) + 32 * v36, &v189);
          sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
          if (!*(v14 + 16))
          {
            goto LABEL_74;
          }

          v38 = sub_1C8474B54(25441, 0xE200000000000000);
          if ((v39 & 1) == 0)
          {
            goto LABEL_74;
          }

          sub_1C8481CB4(*(v14 + 56) + 32 * v38, &v189);
          if (swift_dynamicCast())
          {
            v189 = *v188;
            v40 = v181;
            sub_1C8590C74();
            sub_1C8481E28();
            v41 = sub_1C8590EB4();
            v43 = v42;
            (*v180)(v40, v182);

            v44 = sub_1C8470540(v184, *(&v184 + 1), v41, v43);
            v46 = v45;

            sub_1C8472F8C(v14, a2, v44, v46);

            goto LABEL_74;
          }

          goto LABEL_5;
        }
      }

      v189 = 0u;
      v190 = 0u;
      sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
      if (!*(v14 + 16) || (v47 = sub_1C8474B54(0x444968736168, 0xE600000000000000), (v48 & 1) == 0))
      {
        v189 = 0u;
        v190 = 0u;
        sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
        goto LABEL_45;
      }

      sub_1C8481CB4(*(v14 + 56) + 32 * v47, &v189);
      sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
      if (*(v14 + 16))
      {
        v49 = sub_1C8474B54(0x444968736168, 0xE600000000000000);
        if (v50)
        {
          sub_1C8481CB4(*(v14 + 56) + 32 * v49, &v189);
          if (swift_dynamicCast())
          {
            if (__PAIR128__(v175, 0xD000000000000011) == *v188)
            {
              goto LABEL_40;
            }

            v51 = sub_1C8590FE4();

            if (v51)
            {
              goto LABEL_45;
            }
          }
        }
      }

      if (*(v14 + 16))
      {
        v52 = sub_1C8474B54(0x444968736168, 0xE600000000000000);
        if (v53)
        {
          sub_1C8481CB4(*(v14 + 56) + 32 * v52, &v189);
          if (swift_dynamicCast())
          {
            if (__PAIR128__(v174, 0xD000000000000011) == *v188)
            {
LABEL_40:

LABEL_45:
              if (*(v14 + 16) && (v60 = sub_1C8474B54(1701605234, 0xE400000000000000), (v61 & 1) != 0))
              {
                sub_1C8481CB4(*(v14 + 56) + 32 * v60, &v189);
                sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
                sub_1C8472F8C(v14, a2, v184, *(&v184 + 1));
              }

              else
              {
                v189 = 0u;
                v190 = 0u;
                sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
                if (!*(v14 + 16) || (v84 = sub_1C8474B54(0x6F43524F50617874, 0xEB00000000746E75), (v85 & 1) == 0))
                {
                  v189 = 0u;
                  v190 = 0u;
                  sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
                  *&v189 = v186;
                  v94 = sub_1C8590FD4();
                  v96 = v95;
                  goto LABEL_73;
                }

                sub_1C8481CB4(*(v14 + 56) + 32 * v84, &v189);
                sub_1C8482178(&v189, &qword_1EC2AADB8, &qword_1C85A10C0);
                *&v189 = v186;
                v86 = sub_1C8590FD4();
                v88 = v87;
                v189 = v184;

                MEMORY[0x1CCA775F0](v86, v88);

                sub_1C8472F8C(v14, a2, v189, *(&v189 + 1));
              }

LABEL_74:

LABEL_75:
              result = __swift_destroy_boxed_opaque_existential_0(&v191);
              goto LABEL_6;
            }

            v149 = sub_1C8590FE4();

            if (v149)
            {
              goto LABEL_45;
            }
          }
        }
      }

      if (*(v14 + 16))
      {
        v150 = sub_1C8474B54(1701605234, 0xE400000000000000);
        if (v151)
        {
          sub_1C8481CB4(*(v14 + 56) + 32 * v150, &v189);
          if (swift_dynamicCast())
          {
            if (*v188 == __PAIR128__(0xE300000000000000, 5128526))
            {

              goto LABEL_137;
            }

            v152 = sub_1C8590FE4();

            if (v152)
            {
              goto LABEL_137;
            }
          }
        }
      }

      v153 = sub_1C8590E44();
      if (qword_1EDE5CA48 != -1)
      {
        swift_once();
      }

      v154 = qword_1EDE5CB90;
      if (os_log_type_enabled(qword_1EDE5CB90, v153))
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v188[0] = v156;
        *v155 = v178;
        v157 = *(v14 + 16);
        *&v186 = v156;
        if (v157 && (v158 = sub_1C8474B54(0x444968736168, 0xE600000000000000), (v159 & 1) != 0))
        {
          sub_1C8481CB4(*(v14 + 56) + 32 * v158, &v189);
        }

        else
        {
          v189 = 0u;
          v190 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADB8, &qword_1C85A10C0);
        v160 = sub_1C8590CF4();
        v162 = sub_1C84741F0(v160, v161, v188);

        *(v155 + 4) = v162;
        *(v155 + 12) = 2080;
        if (*(v14 + 16) && (v163 = sub_1C8474B54(1701605234, 0xE400000000000000), (v164 & 1) != 0))
        {
          sub_1C8481CB4(*(v14 + 56) + 32 * v163, &v189);
        }

        else
        {
          v189 = 0u;
          v190 = 0u;
        }

        v165 = sub_1C8590CF4();
        v167 = sub_1C84741F0(v165, v166, v188);

        *(v155 + 14) = v167;
        _os_log_impl(&dword_1C8460000, v154, v153, "From Array: hashID is %s role is %s", v155, 0x16u);
        v168 = v186;
        swift_arrayDestroy();
        MEMORY[0x1CCA78470](v168, -1, -1);
        MEMORY[0x1CCA78470](v155, -1, -1);
      }

LABEL_137:
      if (!*(v14 + 16) || (v169 = sub_1C8474B54(0x444968736168, 0xE600000000000000), (v170 & 1) == 0))
      {

        result = __swift_destroy_boxed_opaque_existential_0(&v191);
        goto LABEL_6;
      }

      sub_1C8481CB4(*(v14 + 56) + 32 * v169, &v189);
      if (swift_dynamicCast())
      {
        v96 = v188[1];
        v94 = v188[0];
LABEL_73:
        v97 = sub_1C8470540(v184, *(&v184 + 1), v94, v96);
        v99 = v98;

        sub_1C8472F8C(v14, a2, v97, v99);

        goto LABEL_74;
      }

LABEL_5:
      __swift_destroy_boxed_opaque_existential_0(&v191);

LABEL_6:
      ++v11;
      v12 += 32;
    }

    while (v185 != v11);
  }

  return result;
}

uint64_t sub_1C8472F8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  for (i = 0; v10; result = sub_1C8482178(v21, &qword_1EC2AAD80, &qword_1C85A1088))
  {
    v14 = i;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    sub_1C8481CB4(*(a1 + 56) + 32 * v16, v22);
    v21[0] = v18;
    v21[1] = v19;

    sub_1C84730C8(v18, v19, v22, a3, a4, a2);
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 8 * v14);
    ++i;
    if (v10)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1C84730C8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v112 = a4;
  v113 = a5;
  v10 = sub_1C8590C84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || !sub_1C8590D44())
  {
    v16 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDE5CB90;
    if (os_log_type_enabled(qword_1EDE5CB90, v16))
    {
      v18 = swift_slowAlloc();
      v111 = a6;
      v19 = v18;
      v20 = swift_slowAlloc();
      v110 = a2;
      v21 = a3;
      v22 = v14;
      v23 = a1;
      v24 = v11;
      v25 = v10;
      v26 = v20;
      *&v116 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1C84741F0(v112, v113, &v116);
      _os_log_impl(&dword_1C8460000, v17, v16, "From Dict: Invalid Key at base %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      v27 = v26;
      v10 = v25;
      v11 = v24;
      a1 = v23;
      v14 = v22;
      a3 = v21;
      a2 = v110;
      MEMORY[0x1CCA78470](v27, -1, -1);
      v28 = v19;
      a6 = v111;
      MEMORY[0x1CCA78470](v28, -1, -1);
    }
  }

  sub_1C8481CB4(a3, &v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAE08, &qword_1C85A1108);
  if (swift_dynamicCast())
  {
    v29 = v114;
    if (v15 && v114[2] && sub_1C8590D44())
    {
      if (*(v29 + 16) == 2 && (sub_1C84706C4(v29, a6, v112, v113) & 1) != 0)
      {
        goto LABEL_25;
      }

      v30 = sub_1C8470540(v112, v113, a1, a2);
      sub_1C8472F8C(v29, a6, v30, v31);
LABEL_20:

LABEL_25:

      return;
    }

    v35 = sub_1C8590E64();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v36 = qword_1EDE5CB90;
    if (!os_log_type_enabled(qword_1EDE5CB90, v35))
    {
      goto LABEL_25;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v116 = v38;
    *v37 = 136315394;
    v39 = sub_1C8590CE4();
    v41 = v40;

    v42 = sub_1C84741F0(v39, v41, &v116);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v43 = sub_1C8590D14();
    v45 = sub_1C84741F0(v43, v44, &v116);

    *(v37 + 14) = v45;
    _os_log_impl(&dword_1C8460000, v36, v35, "From Dict: empty or zero val: %s or empy or zero key: %s", v37, 0x16u);
    swift_arrayDestroy();
    v46 = v38;
    goto LABEL_44;
  }

  sub_1C8481CB4(a3, &v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAE10, &qword_1C85A1110);
  if (swift_dynamicCast())
  {
    v32 = v114;
    v33 = sub_1C8470540(v112, v113, a1, a2);
    if (*(v32 + 16))
    {
      sub_1C84715F4(v32, a6, v33, v34);
      goto LABEL_20;
    }

    v80 = sub_1C8590E64();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v81 = qword_1EDE5CB90;
    if (os_log_type_enabled(qword_1EDE5CB90, v80))
    {
      v37 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v116 = v82;
      *v37 = 136315138;
      *(v37 + 4) = sub_1C84741F0(a1, a2, &v116);
      _os_log_impl(&dword_1C8460000, v81, v80, "From Dict: zero sized array with key: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      v46 = v82;
LABEL_44:
      MEMORY[0x1CCA78470](v46, -1, -1);
      MEMORY[0x1CCA78470](v37, -1, -1);
    }
  }

  else
  {
    sub_1C8481CB4(a3, &v116);
    v47 = MEMORY[0x1E69E6530];
    if (swift_dynamicCast())
    {
      v48 = v114;
      v49 = sub_1C8470540(v112, v113, a1, a2);
      v51 = v49;
      v52 = v50;
      v53 = *a6;
      if (*(*a6 + 16) && (v54 = sub_1C8474B54(v49, v50), (v55 & 1) != 0))
      {
        sub_1C8481CB4(*(v53 + 56) + 32 * v54, &v116);
        sub_1C8482178(&v116, &qword_1EC2AADB8, &qword_1C85A10C0);
        v56 = sub_1C8590E54();
        if (qword_1EDE5CA48 != -1)
        {
          swift_once();
        }

        v57 = qword_1EDE5CB90;
        if (os_log_type_enabled(qword_1EDE5CB90, v56))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *&v116 = v59;
          *v58 = 136315138;
          *(v58 + 4) = sub_1C84741F0(v51, v52, &v116);
          _os_log_impl(&dword_1C8460000, v57, v56, "From Dict: Key unexpectedly present when flattening Int: %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v59);
          MEMORY[0x1CCA78470](v59, -1, -1);
          MEMORY[0x1CCA78470](v58, -1, -1);
        }
      }

      else
      {
        v116 = 0u;
        v117 = 0u;
        sub_1C8482178(&v116, &qword_1EC2AADB8, &qword_1C85A10C0);
      }

      *(&v117 + 1) = v47;
      *&v116 = v48;
      sub_1C8466D6C(&v116, v51, v52);
    }

    else
    {
      sub_1C8481CB4(a3, &v116);
      v60 = MEMORY[0x1E69E6158];
      if (swift_dynamicCast())
      {
        v111 = v14;
        v62 = v114;
        v61 = v115;
        v63 = sub_1C8470540(v112, v113, a1, a2);
        v65 = v63;
        v66 = v64;
        v67 = *a6;
        if (*(*a6 + 16) && (v68 = sub_1C8474B54(v63, v64), (v69 & 1) != 0))
        {
          v70 = v60;
          sub_1C8481CB4(*(v67 + 56) + 32 * v68, &v116);
          sub_1C8482178(&v116, &qword_1EC2AADB8, &qword_1C85A10C0);
          v71 = sub_1C8590E54();
          if (qword_1EDE5CA48 != -1)
          {
            v109 = v71;
            swift_once();
            v71 = v109;
          }

          v72 = qword_1EDE5CB90;
          v73 = v71;
          if (os_log_type_enabled(qword_1EDE5CB90, v71))
          {
            v74 = swift_slowAlloc();
            LODWORD(v112) = v73;
            v75 = v74;
            v76 = swift_slowAlloc();
            v113 = v11;
            v77 = v10;
            v78 = v76;
            *&v116 = v76;
            *v75 = 136315138;
            *(v75 + 4) = sub_1C84741F0(v65, v66, &v116);
            _os_log_impl(&dword_1C8460000, v72, v112, "From Dict: Key unexpectedly present when flattening String: %s", v75, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v78);
            v79 = v78;
            v10 = v77;
            v11 = v113;
            MEMORY[0x1CCA78470](v79, -1, -1);
            MEMORY[0x1CCA78470](v75, -1, -1);
          }
        }

        else
        {
          v70 = v60;
          v116 = 0u;
          v117 = 0u;
          sub_1C8482178(&v116, &qword_1EC2AADB8, &qword_1C85A10C0);
        }

        *&v116 = v62;
        *(&v116 + 1) = v61;
        v95 = v111;
        sub_1C8590C74();
        sub_1C8481E28();
        v96 = sub_1C8590EB4();
        v98 = v97;
        (*(v11 + 8))(v95, v10);

        *(&v117 + 1) = v70;
        *&v116 = v96;
        *(&v116 + 1) = v98;
        sub_1C8466D6C(&v116, v65, v66);
      }

      else
      {
        sub_1C8481CB4(a3, &v116);
        sub_1C84822E4(0, &qword_1EDE5CA28, 0x1E696AD98);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v99 = v60;
          v100 = sub_1C8470540(v112, v113, a1, a2);
          v102 = v101;
          sub_1C8590E54();
          if (qword_1EDE5CA48 != -1)
          {
            swift_once();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_1C85A0FF0;
          v104 = v99;
          *(v103 + 56) = v99;
          v105 = sub_1C8481E7C();
          *(v103 + 64) = v105;
          *(v103 + 32) = v100;
          *(v103 + 40) = v102;
          __swift_project_boxed_opaque_existential_0(a3, a3[3]);
          swift_getDynamicType();
          v106 = sub_1C8591034();
          *(v103 + 96) = v104;
          *(v103 + 104) = v105;
          *(v103 + 72) = v106;
          *(v103 + 80) = v107;
          sub_1C8590CA4();
          goto LABEL_25;
        }

        v83 = v114;
        v84 = sub_1C8470540(v112, v113, a1, a2);
        v86 = v84;
        v87 = v85;
        v88 = *a6;
        if (*(*a6 + 16) && (v89 = sub_1C8474B54(v84, v85), (v90 & 1) != 0))
        {
          sub_1C8481CB4(*(v88 + 56) + 32 * v89, &v116);
          sub_1C8482178(&v116, &qword_1EC2AADB8, &qword_1C85A10C0);
          v91 = sub_1C8590E54();
          if (qword_1EDE5CA48 != -1)
          {
            swift_once();
          }

          v92 = qword_1EDE5CB90;
          if (os_log_type_enabled(qword_1EDE5CB90, v91))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            *&v116 = v94;
            *v93 = 136315138;
            *(v93 + 4) = sub_1C84741F0(v86, v87, &v116);
            _os_log_impl(&dword_1C8460000, v92, v91, "From Dict: Key unexpectedly present when flattening NSNumber: %s", v93, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v94);
            MEMORY[0x1CCA78470](v94, -1, -1);
            MEMORY[0x1CCA78470](v93, -1, -1);
          }
        }

        else
        {
          v116 = 0u;
          v117 = 0u;
          sub_1C8482178(&v116, &qword_1EC2AADB8, &qword_1C85A10C0);
        }

        v108 = sub_1C8590E24();
        *(&v117 + 1) = v47;
        *&v116 = v108;
        sub_1C8466D6C(&v116, v86, v87);
      }
    }
  }
}

id WANWActivityTransform.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WANWActivityTransform.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WANWActivityTransform();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C8473E28(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADF8, &qword_1C85A10F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAE00, &qword_1C85A1100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C8473F5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADB0, &qword_1C85A10B8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C8474068(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC8, &qword_1C85A10D0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1C847416C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADB0, &qword_1C85A10B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1C84741F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C84742BC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1C8481CB4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C84742BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C84743C8(a5, a6);
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
    result = sub_1C8590F64();
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

uint64_t sub_1C84743C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C8474414(a1, a2);
  sub_1C8474544(&unk_1F481A390);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1C8474414(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C8474630(v5, 0);
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

  result = sub_1C8590F64();
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
        v10 = sub_1C8590D74();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C8474630(v10, 0);
        result = sub_1C8590F44();
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

uint64_t sub_1C8474544(uint64_t result)
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

  result = sub_1C84746A4(result, v12, 1, v3);
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

void *sub_1C8474630(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADA8, &qword_1C85A10B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C84746A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADA8, &qword_1C85A10B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1C8474798(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_1C8481D68(a1 + 32, &v46);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_1C8481D10(v48, v43);
  v9 = *a3;
  v10 = sub_1C8474B54(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C8474D70(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_1C8474B54(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_1C8591004();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_1C8474BCC();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAD98, &qword_1C85A10A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v43);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_1C8481D10(v43, (v22[7] + 32 * v10));
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v26 = a1 + 80;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_1C8481D68(v26, &v46);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      sub_1C8481D10(v48, v43);
      v30 = *a3;
      v31 = sub_1C8474B54(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_1C8474D70(v35, 1);
        v37 = *a3;
        v31 = sub_1C8474B54(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_1C8481D10(v43, (v39[7] + 32 * v31));
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 48;
      if (v4 == v27)
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
  sub_1C8590F54();
  MEMORY[0x1CCA775F0](0xD00000000000001BLL, 0x80000001C85A26F0);
  sub_1C8590F74();
  MEMORY[0x1CCA775F0](39, 0xE100000000000000);
  sub_1C8590F84();
  __break(1u);
}

unint64_t sub_1C8474B54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C8591014();
  sub_1C8590D34();
  v6 = sub_1C8591024();

  return sub_1C8475028(a1, a2, v6);
}

void *sub_1C8474BCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAD88, &qword_1C85A1090);
  v2 = *v0;
  v3 = sub_1C8590F94();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1C8481CB4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1C8481D10(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C8474D70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAD88, &qword_1C85A1090);
  v36 = a2;
  result = sub_1C8590FA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1C8481D10(v25, v37);
      }

      else
      {
        sub_1C8481CB4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1C8591014();
      sub_1C8590D34();
      result = sub_1C8591024();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1C8481D10(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_1C8475028(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C8590FE4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_1C84750E0(char *a1, int64_t a2, char a3)
{
  result = sub_1C847517C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C8475100(void *a1, int64_t a2, char a3)
{
  result = sub_1C8475288(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C8475120()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if ((result & 1) == 0)
  {
    v3 = *(v1 + 16) + 1;

    return sub_1C84750E0(0, v3, 1);
  }

  return result;
}

char *sub_1C847517C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADB0, &qword_1C85A10B8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C8475288(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADA0, &qword_1C85A10A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAD90, &qword_1C85A1098);
    swift_arrayInitWithCopy();
  }

  return v10;
}