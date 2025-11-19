uint64_t sub_1DAD991C8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DAD99210()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);

  return swift_deallocObject();
}

uint64_t sub_1DAD99258()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1DAD99298()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1DAD992E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

char *sub_1DAD99324()
{
  v1 = v0;
  v2 = sub_1DAED208C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1DAED20DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAED0A3C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v17[0] = sub_1DAD84C40();
  sub_1DAED0A2C();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8098], v4);
  v17[1] = MEMORY[0x1E69E7CC0];
  sub_1DAD94CC0(&qword_1EE00AA50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3F0, &qword_1DAED6480);
  sub_1DAD94C6C(&unk_1EE00AA90, &unk_1ECC0A3F0, &qword_1DAED6480);
  sub_1DAED23CC();
  *(v0 + 2) = sub_1DAED210C();
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = MEMORY[0x1E69E7CC8];
  *(v1 + 3) = v11;
  *(v1 + 4) = v13;
  *(v1 + 5) = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v14 = OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_prewarmRequest;
  v15 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
  (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  v1[OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_processQueueEnqueued] = 0;
  return v1;
}

uint64_t sub_1DAD99664()
{
  v1 = *(*__swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40)) + 16);
}

void sub_1DAD996A0(void *a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (a1)
  {
    if (v5)
    {
      sub_1DAD674D4(0, &qword_1EE005540, 0x1E69943A0);
      v6 = v5;
      v7 = a1;
      v8 = sub_1DAED228C();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!v5)
  {
    return;
  }

  v9 = sub_1DAECEDCC();
  v10 = sub_1DAED200C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v17);
    *(v11 + 12) = 2082;
    v16 = *(v2 + v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A648, &qword_1DAEDE7F8);
    v13 = sub_1DAED232C();
    v15 = sub_1DAD6482C(v13, v14, &v17);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] displayProperties changed (%{public}s)", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v12, -1, -1);
    MEMORY[0x1E127F100](v11, -1, -1);
  }

  LOBYTE(v17) = 6;
  sub_1DAD8EC1C(&v17);
}

uint64_t sub_1DAD998A4()
{
  v1 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v21 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v12, v11, &unk_1ECC07D30, &unk_1DAED57E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1DADB62CC(v11, v5, type metadata accessor for DefaultWidgetLiveViewEntry);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v15 = *v5;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
        v17 = *(v16 + 48);
        sub_1DAD64398(v5 + *(v16 + 64), &qword_1ECC088D8, &qword_1DAED72D0);
        sub_1DADB6334(v5 + v17, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
        return v15;
      }

      sub_1DADB6334(v5, type metadata accessor for DefaultWidgetLiveViewEntry);
    }

    else
    {
      sub_1DAD64398(v11, &unk_1ECC07D30, &unk_1DAED57E0);
    }
  }

  else
  {
    sub_1DADB62CC(v11, v7, type metadata accessor for DefaultWidgetLiveViewEntry);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v18 = *v7;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
      v20 = *(v19 + 48);
      sub_1DAD64398(v7 + *(v19 + 64), &qword_1ECC088D8, &qword_1DAED72D0);
      sub_1DADB6334(v7 + v20, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      return v18;
    }

    sub_1DADB6334(v7, type metadata accessor for DefaultWidgetLiveViewEntry);
  }

  return 0;
}

void sub_1DAD99B74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECF0AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v8 = *(*(v34 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v34);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC089C8, &qword_1DAED7468);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  BSDispatchQueueAssertMain();
  v18 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme;
  swift_beginAccess();
  v19 = *(v14 + 56);
  sub_1DAD6495C(a1, v17, &qword_1ECC08370, &unk_1DAED6580);
  v32 = v18;
  sub_1DAD6495C(v2 + v18, &v17[v19], &qword_1ECC08370, &unk_1DAED6580);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1DAD64398(v17, &qword_1ECC08370, &unk_1DAED6580);
      return;
    }
  }

  else
  {
    sub_1DAD6495C(v17, v12, &qword_1ECC08370, &unk_1DAED6580);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      v28 = v31;
      (*(v5 + 32))(v31, &v17[v19], v4);
      sub_1DAD900EC(&qword_1EE00ABA8, MEMORY[0x1E697DBD0]);
      v29 = sub_1DAED1CAC();
      v30 = *(v5 + 8);
      v30(v28, v4);
      v30(v12, v4);
      sub_1DAD64398(v17, &qword_1ECC08370, &unk_1DAED6580);
      if (v29)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v12, v4);
  }

  sub_1DAD64398(v17, &qword_1ECC089C8, &qword_1DAED7468);
LABEL_7:
  sub_1DAD94FD8();

  v21 = sub_1DAECEDCC();
  v22 = sub_1DAED203C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = v24;
    *v23 = 136446466;
    *(v23 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v35);
    *(v23 + 12) = 2082;
    sub_1DAD6495C(v2 + v32, v33, &qword_1ECC08370, &unk_1DAED6580);
    v25 = sub_1DAED1D4C();
    v27 = sub_1DAD6482C(v25, v26, &v35);

    *(v23 + 14) = v27;
    _os_log_impl(&dword_1DAD61000, v21, v22, "[%{public}s] preferred color scheme changed %{public}s)", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v24, -1, -1);
    MEMORY[0x1E127F100](v23, -1, -1);
  }

  LOBYTE(v35) = 6;
  sub_1DAD8EC1C(&v35);
}

void sub_1DAD9A058()
{
  v1 = v0;
  BSDispatchQueueAssertMain();
  v2 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v3 = *(v0 + v2);
  sub_1DAD674D4(0, &unk_1EE005598, 0x1E6994420);
  v4 = v3;
  v5 = sub_1DAED228C();

  if ((v5 & 1) == 0)
  {

    v6 = sub_1DAECEDCC();
    v7 = sub_1DAED203C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v15);
      *(v8 + 12) = 2082;
      v10 = [*(v1 + v2) description];
      v11 = sub_1DAED1CEC();
      v13 = v12;

      v14 = sub_1DAD6482C(v11, v13, &v15);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_1DAD61000, v6, v7, "[%{public}s] renderScheme changed to (%{public}s)", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v9, -1, -1);
      MEMORY[0x1E127F100](v8, -1, -1);
    }

    sub_1DAD94D08();
    LOBYTE(v15) = 19;
    sub_1DAD8EC1C(&v15);
  }
}

void sub_1DAD9A254(uint64_t a1)
{
  v3 = sub_1DAED16FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08368, &unk_1DAEDE2B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A638, &qword_1DAEDE7F0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  BSDispatchQueueAssertMain();
  v16 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
  swift_beginAccess();
  v17 = *(v12 + 56);
  sub_1DAD6495C(a1, v15, &qword_1ECC08368, &unk_1DAEDE2B0);
  sub_1DAD6495C(v1 + v16, &v15[v17], &qword_1ECC08368, &unk_1DAEDE2B0);
  v18 = *(v4 + 48);
  if (v18(v15, 1, v3) == 1)
  {
    if (v18(&v15[v17], 1, v3) == 1)
    {
      sub_1DAD64398(v15, &qword_1ECC08368, &unk_1DAEDE2B0);
      return;
    }

    goto LABEL_6;
  }

  sub_1DAD6495C(v15, v10, &qword_1ECC08368, &unk_1DAEDE2B0);
  if (v18(&v15[v17], 1, v3) == 1)
  {
    (*(v4 + 8))(v10, v3);
LABEL_6:
    sub_1DAD64398(v15, &qword_1ECC0A638, &qword_1DAEDE7F0);
LABEL_7:
    v24 = 22;
    sub_1DAD8EC1C(&v24);
    return;
  }

  v19 = v23;
  (*(v4 + 32))(v23, &v15[v17], v3);
  sub_1DAD900EC(&qword_1ECC0A640, MEMORY[0x1E6985868]);
  v20 = sub_1DAED1CAC();
  v21 = *(v4 + 8);
  v21(v19, v3);
  v21(v10, v3);
  sub_1DAD64398(v15, &qword_1ECC08368, &unk_1DAEDE2B0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_1DAD9A5B0(uint64_t a1)
{
  v39 = a1;
  v2 = sub_1DAECDA5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A650, &qword_1DAEDE848);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  BSDispatchQueueAssertMain();
  v17 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  swift_beginAccess();
  v18 = *(v13 + 56);
  sub_1DAD6495C(v39, v16, &qword_1ECC08360, &unk_1DAED6570);
  v39 = v17;
  v19 = v1 + v17;
  v20 = v1;
  sub_1DAD6495C(v19, &v16[v18], &qword_1ECC08360, &unk_1DAED6570);
  v21 = *(v3 + 48);
  if (v21(v16, 1, v2) == 1)
  {
    if (v21(&v16[v18], 1, v2) == 1)
    {
      return sub_1DAD64398(v16, &qword_1ECC08360, &unk_1DAED6570);
    }
  }

  else
  {
    sub_1DAD6495C(v16, v11, &qword_1ECC08360, &unk_1DAED6570);
    if (v21(&v16[v18], 1, v2) != 1)
    {
      v33 = v37;
      (*(v3 + 32))(v37, &v16[v18], v2);
      sub_1DAD900EC(&qword_1ECC0A658, MEMORY[0x1E6968278]);
      v34 = sub_1DAED1CAC();
      v35 = *(v3 + 8);
      v35(v33, v2);
      v35(v11, v2);
      result = sub_1DAD64398(v16, &qword_1ECC08360, &unk_1DAED6570);
      if (v34)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v3 + 8))(v11, v2);
  }

  sub_1DAD64398(v16, &qword_1ECC0A650, &qword_1DAEDE848);
LABEL_7:

  v23 = sub_1DAECEDCC();
  v24 = sub_1DAED203C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v25 = 136446466;
    *(v25 + 4) = sub_1DAD6482C(*(v20 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v20 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v40);
    *(v25 + 12) = 2082;
    v26 = v38;
    sub_1DAD6495C(v20 + v39, v38, &qword_1ECC08360, &unk_1DAED6570);
    v27 = v21(v26, 1, v2);
    sub_1DAD64398(v26, &qword_1ECC08360, &unk_1DAED6570);
    if (v27 == 1)
    {
      v28 = 7104878;
    }

    else
    {
      v28 = 0x74616420656D6F73;
    }

    if (v27 == 1)
    {
      v29 = 0xE300000000000000;
    }

    else
    {
      v29 = 0xE900000000000065;
    }

    v30 = sub_1DAD6482C(v28, v29, &v40);

    *(v25 + 14) = v30;
    _os_log_impl(&dword_1DAD61000, v23, v24, "[%{public}s] idealizedDateComponents changed to (%{public}s)", v25, 0x16u);
    v31 = v37;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v31, -1, -1);
    MEMORY[0x1E127F100](v25, -1, -1);
  }

  LOBYTE(v40) = 14;
  sub_1DAD8EC1C(&v40);
  v32 = *(v20 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__idealizedDateComponentsDidChangePublisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0);
  sub_1DAECEEEC();
}

uint64_t sub_1DAD9AB3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v91 - v7;
  v9 = sub_1DAECDCEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v91 - v16;
  v18 = sub_1DAED10DC();
  v101 = *(v18 - 8);
  v102 = v18;
  v19 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DAECE20C();
  v23 = *(*(v22 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v22);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) & 1) == 0)
  {
    v95 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started;
    v100 = v25;
    v98 = v10;
    v97 = v6;
    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v28 = sub_1DAECEDEC();
    v29 = __swift_project_value_buffer(v28, qword_1EE0117D8);

    v93 = v29;
    v30 = sub_1DAECEDCC();
    v31 = sub_1DAED203C();

    v32 = os_log_type_enabled(v30, v31);
    v99 = v9;
    v94 = v13;
    v96 = v8;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v103[0] = v92;
      *v33 = 136446210;
      v35 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v34 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

      v36 = sub_1DAD6482C(v35, v34, v103);

      *(v33 + 4) = v36;
      _os_log_impl(&dword_1DAD61000, v30, v31, "[%{public}s] Subscribing", v33, 0xCu);
      v37 = v92;
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      MEMORY[0x1E127F100](v37, -1, -1);
      MEMORY[0x1E127F100](v33, -1, -1);
    }

    v38 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID;
    v39 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
    v40 = *(v1 + 48);
    v41 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_taskPriority;
    swift_beginAccess();
    (*(v100 + 16))(v27, v1 + v41, v22);
    v42 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_environmentModifiers;
    swift_beginAccess();
    (*(v101 + 16))(v21, v1 + v42, v102);
    v43 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_visibility;
    swift_beginAccess();
    sub_1DAD6495C(v1 + v43, v17, &qword_1ECC07CD0, &qword_1DAED6560);
    v44 = sub_1DAECE55C();
    LODWORD(v43) = (*(*(v44 - 8) + 48))(v17, 1, v44);
    v45 = v39;
    if (v43)
    {
      LOBYTE(v46) = 0;
    }

    else
    {
      v46 = sub_1DAECE53C();
    }

    sub_1DAD64398(v17, &qword_1ECC07CD0, &qword_1DAED6560);
    v47 = type metadata accessor for WidgetRendererSessionSubscriptionRequest();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    v50 = swift_allocObject();
    *(v50 + 16) = v45;
    *(v50 + 24) = v40;
    (*(v100 + 32))(v50 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority, v27, v22);
    (*(v101 + 32))(v50 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers, v21, v102);
    *(v50 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled) = v46 & 1;
    *(v1 + v95) = 1;
    v51 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client;
    sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v103);
    v52 = v104;
    v53 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    v54 = *(v53 + 32);

    v54(v50, sub_1DADAFE94, v1, v52, v53);

    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    v55 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReasonDate;
    swift_beginAccess();
    v56 = v96;
    sub_1DAD6495C(v1 + v55, v96, &qword_1ECC07CE8, &qword_1DAED6F60);
    v57 = v98;
    v58 = v99;
    v59 = &unk_1EE008000;
    if ((*(v98 + 48))(v56, 1, v99) == 1)
    {

      sub_1DAD64398(v56, &qword_1ECC07CE8, &qword_1DAED6F60);
    }

    else
    {
      v60 = v94;
      (*(v57 + 32))(v94, v56, v58);
      if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReason + 8) == 1)
      {
        (*(v57 + 8))(v60, v58);
      }

      else
      {
        v101 = v38;
        v61 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReason);
        sub_1DAECDC8C();
        v63 = v62;

        v64 = sub_1DAECEDCC();
        v65 = sub_1DAED203C();

        LODWORD(v102) = v65;
        v66 = v65;
        v67 = v64;
        v68 = os_log_type_enabled(v64, v66);
        if (v63 >= 15.0)
        {
          if (v68)
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v103[0] = v84;
            *v83 = 136446210;
            v85 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
            v86 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

            v87 = sub_1DAD6482C(v85, v86, v103);

            *(v83 + 4) = v87;
            v57 = v98;
            _os_log_impl(&dword_1DAD61000, v64, v102, "[%{public}s] Pending catastrophic reload ignored because it's been more than 15s since the reload was requested from the widget activating.", v83, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v84);
            v88 = v84;
            v58 = v99;
            MEMORY[0x1E127F100](v88, -1, -1);
            MEMORY[0x1E127F100](v83, -1, -1);
          }

          else
          {
          }

          (*(v57 + 8))(v94, v58);
        }

        else
        {
          v100 = v61;
          if (v68)
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v103[0] = v70;
            *v69 = 136446466;
            v71 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
            v72 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

            v73 = sub_1DAD6482C(v71, v72, v103);

            *(v69 + 4) = v73;
            *(v69 + 12) = 2080;
            v74 = NSStringFromWRReloadReason(v100);
            v75 = sub_1DAED1CEC();
            v77 = v76;

            v78 = sub_1DAD6482C(v75, v77, v103);
            v59 = &unk_1EE008000;

            *(v69 + 14) = v78;
            _os_log_impl(&dword_1DAD61000, v67, v102, "[%{public}s] Reloading for pending catastrophic reload failure: %s", v69, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E127F100](v70, -1, -1);
            MEMORY[0x1E127F100](v69, -1, -1);
          }

          v79 = v101;
          sub_1DAD648F8(v1 + v51, v103);
          v80 = v105;
          __swift_project_boxed_opaque_existential_1(v103, v104);
          v81 = *(v80 + 112);
          v82 = *(v1 + v79);
          v81();

          v57 = v98;
          v58 = v99;
          (*(v98 + 8))(v94, v99);
          __swift_destroy_boxed_opaque_existential_1Tm(v103);
        }
      }
    }

    v89 = v97;
    v90 = v1 + v59[37];
    *v90 = 0;
    *(v90 + 8) = 1;
    (*(v57 + 56))(v89, 1, 1, v58);
    swift_beginAccess();
    sub_1DAD94438(v89, v1 + v55, &qword_1ECC07CE8, &qword_1DAED6F60);
    return swift_endAccess();
  }

  return result;
}

uint64_t type metadata accessor for WidgetRendererSessionSubscriptionRequest()
{
  result = qword_1EE00B598;
  if (!qword_1EE00B598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAD9B67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DAED09DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DAED0A3C();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v3[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = sub_1DADA5B20;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_205;
  v17 = _Block_copy(aBlock);
  v18 = v3;

  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_1DAD9B970()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

void sub_1DAD9B9DC(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
  swift_beginAccess();
  if (*(v2 + v4) != v3)
  {

    v5 = sub_1DAECEDCC();
    v6 = sub_1DAED200C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v9);
      *(v7 + 12) = 1026;
      *(v7 + 14) = *(v2 + v4);

      _os_log_impl(&dword_1DAD61000, v5, v6, "[%{public}s] isForeground changed (%{BOOL,public}d)", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E127F100](v8, -1, -1);
      MEMORY[0x1E127F100](v7, -1, -1);
    }

    else
    {
    }

    if (*(v2 + v4) == 1)
    {
      LOBYTE(v9) = 2;
      sub_1DAD8EC1C(&v9);
    }
  }
}

uint64_t sub_1DAD9BB74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);

  sub_1DADA4A88(a1);
}

uint64_t sub_1DAD9BBC0(char a1, void *a2, char **a3, char a4, char a5, char a6)
{
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  v13 = (*(v12 + 64))(v11, v12);
  if ((a1 & 1) == 0)
  {
LABEL_8:
    v16 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v16;
    if (a4)
    {
      if (a5)
      {
        if (a6)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v16 = sub_1DAD9BF68(0, *(v16 + 2) + 1, 1, v16);
            *a3 = v16;
          }

          v23 = *(v16 + 2);
          v22 = *(v16 + 3);
          v24 = v23 + 1;
          if (v23 >= v22 >> 1)
          {
            v16 = sub_1DAD9BF68((v22 > 1), v23 + 1, 1, v16);
            *a3 = v16;
          }

          v25 = 0x80000001DAEE62D0;
          v15 = 0xD000000000000036;
          result = 1;
        }

        else
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v16 = sub_1DAD9BF68(0, *(v16 + 2) + 1, 1, v16);
            *a3 = v16;
          }

          v23 = *(v16 + 2);
          v30 = *(v16 + 3);
          v24 = v23 + 1;
          if (v23 >= v30 >> 1)
          {
            v16 = sub_1DAD9BF68((v30 > 1), v23 + 1, 1, v16);
            *a3 = v16;
          }

          result = 0;
          v25 = 0x80000001DAEE6290;
          v15 = 0xD00000000000003BLL;
        }
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_1DAD9BF68(0, *(v16 + 2) + 1, 1, v16);
          *a3 = v16;
        }

        v23 = *(v16 + 2);
        v29 = *(v16 + 3);
        v24 = v23 + 1;
        if (v23 >= v29 >> 1)
        {
          v16 = sub_1DAD9BF68((v29 > 1), v23 + 1, 1, v16);
          *a3 = v16;
        }

        result = 0;
        v25 = 0x80000001DAEE6210;
        v15 = 0xD000000000000072;
      }
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_1DAD9BF68(0, *(v16 + 2) + 1, 1, v16);
        *a3 = v16;
      }

      v25 = 0xEF64656B636F6C6ELL;
      v15 = 0x752067616279654BLL;
      v23 = *(v16 + 2);
      v27 = *(v16 + 3);
      v24 = v23 + 1;
      if (v23 >= v27 >> 1)
      {
        v16 = sub_1DAD9BF68((v27 > 1), v23 + 1, 1, v16);
        result = 1;
        *a3 = v16;
      }

      else
      {
        result = 1;
      }
    }

    goto LABEL_35;
  }

  v14 = v13;
  v15 = 0xD00000000000002DLL;
  v16 = *a3;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v16;
  if (v14)
  {
    if ((v17 & 1) == 0)
    {
      v16 = sub_1DAD9BF68(0, *(v16 + 2) + 1, 1, v16);
      *a3 = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1DAD9BF68((v18 > 1), v19 + 1, 1, v16);
      *a3 = v16;
    }

    *(v16 + 2) = v19 + 1;
    v20 = &v16[16 * v19];
    *(v20 + 4) = 0xD00000000000002ELL;
    *(v20 + 5) = 0x80000001DAEE6340;
    goto LABEL_8;
  }

  if ((v17 & 1) == 0)
  {
    v16 = sub_1DAD9BF68(0, *(v16 + 2) + 1, 1, v16);
    *a3 = v16;
  }

  v23 = *(v16 + 2);
  v28 = *(v16 + 3);
  v24 = v23 + 1;
  if (v23 >= v28 >> 1)
  {
    v16 = sub_1DAD9BF68((v28 > 1), v23 + 1, 1, v16);
    *a3 = v16;
  }

  result = 0;
  v25 = 0x80000001DAEE6310;
LABEL_35:
  *(v16 + 2) = v24;
  v31 = &v16[16 * v23];
  *(v31 + 4) = v15;
  *(v31 + 5) = v25;
  return result;
}

char *sub_1DAD9BF68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08778, &qword_1DAED71B8);
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

uint64_t sub_1DAD9C074()
{
  v1 = *(*v0 + 16);
  v2 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1DAD9C0C0()
{
  v1 = *(*v0 + 16);
  v2 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersPlaceholderContent;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1DAD9C130()
{
  v1 = sub_1DAECE21C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 16);
  sub_1DAD648F8(v6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__dataProtectionMonitor, v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v7 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_keybagLockPolicy;
  swift_beginAccess();
  (*(v2 + 16))(v5, v6 + v7, v1);
  sub_1DAED128C();
  (*(v2 + 8))(v5, v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t sub_1DAD9C28C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DAED18CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAD648F8(*v1 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_innerProtectionMonitor, v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1DAED128C();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  sub_1DAD669E8(v7, a1);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1DAD9C3C0()
{
  sub_1DAD648F8(*(*v0 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v3 = *(v2 + 16);

  v4 = v3(v1, v2);
  sub_1DAED0B9C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_1DAD9C494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A7F8, &qword_1DAEDEBA8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DAD6495C(a1, v9, &qword_1ECC0A7F8, &qword_1DAEDEBA8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1DAD64398(v9, &qword_1ECC0A7F8, &qword_1DAEDEBA8);
  }

  else
  {
    sub_1DADB23E8(v9, v14, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
    swift_beginAccess();
    v15 = *(a2 + 32);
    if (*(v15 + 16))
    {

      v16 = sub_1DADB9EB8(v14);
      if (v17)
      {
        v18 = v16;
        v19 = *(v15 + 56);
        v20 = sub_1DAED19AC();
        v21 = *(v20 - 8);
        (*(v21 + 16))(a3, v19 + *(v21 + 72) * v18, v20);
        sub_1DADB2450(v14, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);

        return (*(v21 + 56))(a3, 0, 1, v20);
      }
    }

    sub_1DADB2450(v14, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
  }

  v23 = sub_1DAED19AC();
  return (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
}

void sub_1DAD9C7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *&v3[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  BSDispatchQueueAssert();
  v9 = *(a1 + 16);
  v10 = *&v3[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v10 + 16));
  v11 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v12 = *&v3[v11];
  if ((v12 & 0xC000000000000001) == 0)
  {
    v15 = *&v3[v11];

LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *&v4[v11];
    sub_1DADA5B4C(a1, v9, isUniquelyReferenced_nonNull_native);
    *&v4[v11] = v36;
    swift_endAccess();
    os_unfair_lock_unlock(*(v10 + 16));
    v17 = sub_1DAECDAFC();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_1DAECDAEC();
    v35[0] = a1;
    type metadata accessor for WidgetRendererSessionSubscriptionRequest();
    sub_1DAD649C4(&unk_1EE0081F8, 255, type metadata accessor for WidgetRendererSessionSubscriptionRequest);
    v11 = sub_1DAECDADC();
    v10 = v20;

    if (qword_1EE005E90 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (v12 < 0)
  {
    v13 = *&v3[v11];
  }

  else
  {
    v13 = v12 & 0xFFFFFFFFFFFFFF8;
  }

  v14 = sub_1DAED247C();
  if (!__OFADD__(v14, 1))
  {
    *&v4[v11] = sub_1DAEB99AC(v13, v14 + 1);
    goto LABEL_8;
  }

  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v21 = sub_1DAECEDEC();
  __swift_project_value_buffer(v21, qword_1EE0117F0);
  v22 = v9;
  v23 = sub_1DAECEDCC();
  v24 = sub_1DAED203C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138543362;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_1DAD61000, v23, v24, "Subscribing to session: %{public}@", v25, 0xCu);
    sub_1DAD64398(v26, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v26, -1, -1);
    MEMORY[0x1E127F100](v25, -1, -1);
  }

  v28 = sub_1DAD6F45C();
  if (v28)
  {
    v29 = v28;
    v30 = sub_1DAECDC0C();
    v31 = swift_allocObject();
    v31[2] = v4;
    v31[3] = v22;
    v31[4] = a2;
    v31[5] = a3;
    v35[4] = sub_1DADAF564;
    v35[5] = v31;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 1107296256;
    v35[2] = sub_1DADAF8A8;
    v35[3] = &block_descriptor_199_0;
    v32 = _Block_copy(v35);
    v33 = v22;
    v34 = v4;

    [v29 subscribe:v30 completion:v32];
    sub_1DAD70BB4(v11, v10);
    swift_unknownObjectRelease();
    _Block_release(v32);
  }

  else
  {
    sub_1DAD70BB4(v11, v10);
  }
}

uint64_t sub_1DAD9CC40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
  v5 = sub_1DAECEDEC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DAD9CCC0@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v5 = *v2;
  BSDispatchQueueAssertMain();
  sub_1DAD648F8(*(v5 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v7);
  sub_1DAD9CD3C(v7, a1, a2);
  return sub_1DAD64398(v7, &unk_1ECC07D90, &unk_1DAED5840);
}

uint64_t sub_1DAD9CD3C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v324 = a2;
  v330 = sub_1DAECEDEC();
  v329 = *(v330 - 8);
  v6 = *(v329 + 64);
  v7 = MEMORY[0x1EEE9AC00](v330);
  v311 = &v302 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v310 = &v302 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v318 = &v302 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v303 = &v302 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v309 = &v302 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v308 = &v302 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v319 = &v302 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v304 = &v302 - v21;
  v314 = sub_1DAED157C();
  v315 = *(v314 - 8);
  v22 = *(v315 + 64);
  v23 = MEMORY[0x1EEE9AC00](v314);
  v306 = &v302 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v307 = &v302 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D8, &qword_1DAED72D0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = &v302 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v302 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v302 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v305 = &v302 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v302 - v39;
  v326 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  v325 = *(v326 - 1);
  v41 = *(v325 + 64);
  v42 = MEMORY[0x1EEE9AC00](v326);
  v313 = &v302 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v317 = &v302 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v312 = &v302 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v316 = &v302 - v48;
  v49 = sub_1DAED167C();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v322 = &v302 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = sub_1DAED15DC();
  v334 = *(v333 - 8);
  v52 = *(v334 + 64);
  v53 = MEMORY[0x1EEE9AC00](v333);
  v55 = &v302 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v53);
  v58 = &v302 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v302 - v59;
  v327 = sub_1DAECF8EC();
  v328 = *(v327 - 8);
  v61 = *(v328 + 64);
  v62 = MEMORY[0x1EEE9AC00](v327);
  v331 = &v302 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v323 = &v302 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v332 = &v302 - v66;
  sub_1DAD6495C(a1, &v337, &unk_1ECC07D90, &unk_1DAED5840);
  if (!v338)
  {
    sub_1DAD64398(&v337, &unk_1ECC07D90, &unk_1DAED5840);
    v75 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
    return (*(*(v75 - 8) + 56))(a3, 1, 1, v75);
  }

  v320 = a3;
  sub_1DAD657D8(&v337, &v339);
  v67 = *(v3 + 16);
  v68 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v69 = [*(v67 + v68) renderingMode];
  v321 = v3;
  v70 = *(v3 + 16);
  v71 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  if ((v69 - 1) > 1)
  {
    swift_beginAccess();
    v77 = *(v70 + v71);
    v78 = v330;
    if (v77)
    {

      v79 = v77;
      v80 = sub_1DAD998A4();

      v81 = v321;
      if (v80)
      {
        v332 = v80;
      }

      else
      {
        v174 = type metadata accessor for TintedWidgetViewModel();
        v175 = *(v174 + 48);
        v176 = *(v174 + 52);
        v177 = swift_allocObject();
        swift_beginAccess();
        v336 = v79;
        sub_1DAD674D4(0, &qword_1EE00AA18, 0x1E6994428);
        v178 = v79;
        v332 = v177;
        sub_1DAECEEFC();
        swift_endAccess();
      }

      v179 = v331;
      (*(v328 + 16))(v331, v324, v327);
      sub_1DAED166C();
      v180 = *(v81 + 16);
      v181 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
      swift_beginAccess();
      [*(v180 + v181) backgroundViewPolicy];
      sub_1DAED15BC();
      sub_1DAECF72C();
      sub_1DAD9F338(&v339, v179, v33);
      v182 = (*(v325 + 48))(v33, 1, v326);
      v323 = v79;
      if (v182 == 1)
      {
        sub_1DAD64398(v33, &qword_1ECC088D8, &qword_1DAED72D0);
      }

      else
      {
        v183 = v317;
        sub_1DADB62CC(v33, v317, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
        v184 = v340;
        v185 = v341;
        __swift_project_boxed_opaque_existential_1(&v339, v340);
        v186 = (*(v185 + 16))(v184, v185);
        sub_1DAED0C5C();

        v187 = v338;
        if (v338)
        {
          v188 = v78;
          v189 = __swift_project_boxed_opaque_existential_1(&v337, v338);
          v190 = *(v187 - 8);
          v191 = *(v190 + 64);
          MEMORY[0x1EEE9AC00](v189);
          v193 = &v302 - ((v192 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v190 + 16))(v193);
          sub_1DAD64398(&v337, &unk_1ECC08880, &unk_1DAED6F50);
          v194 = v306;
          sub_1DAED19FC();
          (*(v190 + 8))(v193, v187);
          swift_getKeyPath();
          v195 = sub_1DAED150C();

          result = (*(v315 + 8))(v194, v314);
          if (v195)
          {
            v324 = &v302;
            v196 = 0;
            v197 = *(v195 + 16);
            do
            {
              if (v197 == v196)
              {

                sub_1DADB6334(v317, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
                v78 = v330;
                goto LABEL_60;
              }

              if (v196 >= *(v195 + 16))
              {
LABEL_76:
                __break(1u);
                return result;
              }

              v198 = v334;
              v199 = v333;
              (*(v334 + 16))(v55, v195 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v196++, v333);
              sub_1DAECF71C();
              v200 = sub_1DAED15CC();
              v201 = *(v198 + 8);
              v201(v60, v199);
              result = (v201)(v55, v199);
            }

            while ((v200 & 1) == 0);

            v202 = v321;
            v203 = v329;
            v204 = v303;
            v205 = v330;
            (*(v329 + 16))(v303, *(v321 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v330);

            v206 = sub_1DAECEDCC();
            v207 = sub_1DAED200C();

            if (os_log_type_enabled(v206, v207))
            {
              v208 = swift_slowAlloc();
              v209 = swift_slowAlloc();
              v210 = swift_slowAlloc();
              v335 = v210;
              *v208 = 136446466;
              v211 = (*(v202 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
              v212 = *v211;
              v213 = v211[1];

              v214 = sub_1DAD6482C(v212, v213, &v335);

              *(v208 + 4) = v214;
              *(v208 + 12) = 2114;
              v215 = *(v202 + 16);
              v216 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
              swift_beginAccess();
              v217 = *(v215 + v216);
              *(v208 + 14) = v217;
              *v209 = v217;
              v218 = v217;
              _os_log_impl(&dword_1DAD61000, v206, v207, "[%{public}s] SELECTING tinted fullColor (%{public}@)", v208, 0x16u);
              sub_1DAD64398(v209, &qword_1ECC07CF0, &qword_1DAED57A0);
              MEMORY[0x1E127F100](v209, -1, -1);
              __swift_destroy_boxed_opaque_existential_1Tm(v210);
              MEMORY[0x1E127F100](v210, -1, -1);
              MEMORY[0x1E127F100](v208, -1, -1);

              (*(v203 + 8))(v303, v205);
            }

            else
            {

              (*(v203 + 8))(v204, v205);
            }

            (*(v328 + 8))(v331, v327);
            v293 = v320;
            v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
            v299 = *(v298 + 48);
            v300 = *(v298 + 64);
            *v293 = v332;
            v301 = v317;
            sub_1DADB6264(v317, &v293[v299], type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
            sub_1DADB62CC(v301, &v293[v300], type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
            (*(v325 + 56))(&v293[v300], 0, 1, v326);
LABEL_71:
            v253 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
            swift_storeEnumTagMultiPayload();
            v251 = *(*(v253 - 8) + 56);
            v252 = v293;
            goto LABEL_72;
          }

          sub_1DADB6334(v183, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
          v81 = v321;
          v78 = v188;
        }

        else
        {
          sub_1DADB6334(v183, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
          sub_1DAD64398(&v337, &unk_1ECC08880, &unk_1DAED6F50);
LABEL_60:
          v81 = v321;
        }
      }

      v273 = v318;
      (*(v329 + 16))(v318, *(v81 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v78);

      v274 = sub_1DAECEDCC();
      v275 = v78;
      v276 = sub_1DAED200C();

      if (os_log_type_enabled(v274, v276))
      {
        v277 = swift_slowAlloc();
        v278 = swift_slowAlloc();
        v279 = v329;
        v280 = v278;
        v281 = swift_slowAlloc();
        v335 = v281;
        *v277 = 136446466;
        v282 = (*(v81 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
        v283 = *v282;
        v284 = v282[1];

        v285 = sub_1DAD6482C(v283, v284, &v335);

        *(v277 + 4) = v285;
        *(v277 + 12) = 2114;
        v286 = *(v81 + 16);
        v287 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
        swift_beginAccess();
        v288 = *(v286 + v287);
        *(v277 + 14) = v288;
        *v280 = v288;
        v289 = v288;
        _os_log_impl(&dword_1DAD61000, v274, v276, "[%{public}s] SELECTING tinted fullColor - NIL (%{public}@)", v277, 0x16u);
        sub_1DAD64398(v280, &qword_1ECC07CF0, &qword_1DAED57A0);
        MEMORY[0x1E127F100](v280, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v281);
        MEMORY[0x1E127F100](v281, -1, -1);
        MEMORY[0x1E127F100](v277, -1, -1);

        (*(v279 + 8))(v273, v330);
      }

      else
      {

        (*(v329 + 8))(v273, v275);
      }

      (*(v328 + 8))(v331, v327);
      goto LABEL_65;
    }

    v102 = v321;
    sub_1DAD9F338(&v339, v324, v30);
    v103 = (*(v325 + 48))(v30, 1, v326);
    v104 = v329;
    v105 = (v329 + 16);
    v106 = v320;
    if (v103 == 1)
    {
      sub_1DAD64398(v30, &qword_1ECC088D8, &qword_1DAED72D0);
      v107 = v311;
      (*v105)(v311, *(v102 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v78);

      v108 = sub_1DAECEDCC();
      v109 = v78;
      v110 = sub_1DAED200C();

      if (os_log_type_enabled(v108, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v336 = v113;
        *v111 = 136446466;
        v114 = (*(v102 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
        v115 = *v114;
        v116 = v114[1];

        v117 = sub_1DAD6482C(v115, v116, &v336);

        *(v111 + 4) = v117;
        *(v111 + 12) = 2114;
        v118 = *(v102 + 16);
        v119 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
        swift_beginAccess();
        v120 = *(v118 + v119);
        *(v111 + 14) = v120;
        *v112 = v120;
        v121 = v120;
        _os_log_impl(&dword_1DAD61000, v108, v110, "[%{public}s] SELECTING raw - NIL (%{public}@)", v111, 0x16u);
        sub_1DAD64398(v112, &qword_1ECC07CF0, &qword_1DAED57A0);
        v122 = v112;
        v106 = v320;
        MEMORY[0x1E127F100](v122, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v113);
        MEMORY[0x1E127F100](v113, -1, -1);
        MEMORY[0x1E127F100](v111, -1, -1);

        (*(v104 + 8))(v311, v109);
      }

      else
      {

        (*(v104 + 8))(v107, v109);
      }

      v250 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
      v251 = *(*(v250 - 8) + 56);
      v252 = v106;
      goto LABEL_66;
    }

    sub_1DADB62CC(v30, v313, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v234 = v310;
    (*v105)(v310, *(v102 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v78);

    v235 = sub_1DAECEDCC();
    v236 = v78;
    v237 = sub_1DAED200C();

    if (os_log_type_enabled(v235, v237))
    {
      v238 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      v336 = v240;
      *v238 = 136446466;
      v241 = (*(v102 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v242 = *v241;
      v243 = v241[1];

      v244 = sub_1DAD6482C(v242, v243, &v336);

      *(v238 + 4) = v244;
      *(v238 + 12) = 2114;
      v245 = *(v102 + 16);
      v246 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
      swift_beginAccess();
      v247 = *(v245 + v246);
      *(v238 + 14) = v247;
      *v239 = v247;
      v248 = v247;
      _os_log_impl(&dword_1DAD61000, v235, v237, "[%{public}s] SELECTING raw (%{public}@)", v238, 0x16u);
      sub_1DAD64398(v239, &qword_1ECC07CF0, &qword_1DAED57A0);
      v249 = v239;
      v106 = v320;
      MEMORY[0x1E127F100](v249, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v240);
      MEMORY[0x1E127F100](v240, -1, -1);
      MEMORY[0x1E127F100](v238, -1, -1);

      (*(v104 + 8))(v310, v236);
    }

    else
    {

      (*(v104 + 8))(v234, v236);
    }

    sub_1DADB62CC(v313, v106, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v253 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
    swift_storeEnumTagMultiPayload();
    v251 = *(*(v253 - 8) + 56);
    v252 = v106;
LABEL_72:
    v291 = 0;
    v250 = v253;
    goto LABEL_73;
  }

  swift_beginAccess();
  v72 = *(v70 + v71);
  if (!v72)
  {
    v82 = v321;
    sub_1DAD9F338(&v339, v324, v36);
    v83 = (*(v325 + 48))(v36, 1, v326);
    v84 = v329;
    v85 = (v329 + 16);
    v86 = v320;
    if (v83 == 1)
    {
      sub_1DAD64398(v36, &qword_1ECC088D8, &qword_1DAED72D0);
      v87 = v309;
      v88 = v330;
      (*v85)(v309, *(v82 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v330);

      v89 = sub_1DAECEDCC();
      v90 = sub_1DAED200C();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v336 = v93;
        *v91 = 136446466;
        v94 = (*(v82 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
        v95 = *v94;
        v96 = v94[1];

        v97 = sub_1DAD6482C(v95, v96, &v336);

        *(v91 + 4) = v97;
        *(v91 + 12) = 2114;
        v98 = *(v82 + 16);
        v99 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
        swift_beginAccess();
        v100 = *(v98 + v99);
        *(v91 + 14) = v100;
        *v92 = v100;
        v101 = v100;
        _os_log_impl(&dword_1DAD61000, v89, v90, "[%{public}s] SELECTING raw - NIL (%{public}@)", v91, 0x16u);
        sub_1DAD64398(v92, &qword_1ECC07CF0, &qword_1DAED57A0);
        MEMORY[0x1E127F100](v92, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        MEMORY[0x1E127F100](v93, -1, -1);
        MEMORY[0x1E127F100](v91, -1, -1);

        (*(v84 + 8))(v309, v330);
      }

      else
      {

        (*(v84 + 8))(v87, v88);
      }

      v250 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
      v251 = *(*(v250 - 8) + 56);
      v252 = v86;
      goto LABEL_66;
    }

    sub_1DADB62CC(v36, v312, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v219 = v308;
    v220 = v330;
    (*v85)(v308, *(v82 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v330);

    v221 = sub_1DAECEDCC();
    v222 = sub_1DAED200C();

    if (os_log_type_enabled(v221, v222))
    {
      v223 = swift_slowAlloc();
      v224 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v336 = v225;
      *v223 = 136446466;
      v226 = (*(v82 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v227 = *v226;
      v228 = v226[1];

      v229 = sub_1DAD6482C(v227, v228, &v336);

      *(v223 + 4) = v229;
      *(v223 + 12) = 2114;
      v230 = *(v82 + 16);
      v231 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
      swift_beginAccess();
      v232 = *(v230 + v231);
      *(v223 + 14) = v232;
      *v224 = v232;
      v233 = v232;
      _os_log_impl(&dword_1DAD61000, v221, v222, "[%{public}s] SELECTING raw (%{public}@)", v223, 0x16u);
      sub_1DAD64398(v224, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v224, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v225);
      MEMORY[0x1E127F100](v225, -1, -1);
      MEMORY[0x1E127F100](v223, -1, -1);

      (*(v84 + 8))(v308, v330);
    }

    else
    {

      (*(v84 + 8))(v219, v220);
    }

    sub_1DADB62CC(v312, v86, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v253 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
    swift_storeEnumTagMultiPayload();
    v251 = *(*(v253 - 8) + 56);
    v252 = v86;
    goto LABEL_72;
  }

  v73 = v72;
  v74 = sub_1DAD998A4();

  if (v74)
  {
    v331 = v74;
  }

  else
  {
    v123 = type metadata accessor for TintedWidgetViewModel();
    v124 = *(v123 + 48);
    v125 = *(v123 + 52);
    v126 = swift_allocObject();
    swift_beginAccess();
    v336 = v73;
    sub_1DAD674D4(0, &qword_1EE00AA18, 0x1E6994428);
    v127 = v73;
    v331 = v126;
    sub_1DAECEEFC();
    swift_endAccess();
  }

  v128 = *(v328 + 16);
  v129 = v332;
  v130 = v324;
  v131 = v327;
  v128(v332, v324, v327);
  v318 = v73;
  [v73 accentedAlternateBackground];
  sub_1DAECF82C();
  v128(v323, v130, v131);
  sub_1DAED166C();
  v132 = v321;
  v133 = *(v321 + 16);
  v134 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  [*(v133 + v134) backgroundViewPolicy];
  sub_1DAED15BC();
  v135 = v132;
  sub_1DAECF72C();
  sub_1DAD9F338(&v339, v129, v40);
  if ((*(v325 + 48))(v40, 1, v326) != 1)
  {
    v136 = v316;
    sub_1DADB62CC(v40, v316, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v137 = v340;
    v138 = v341;
    __swift_project_boxed_opaque_existential_1(&v339, v340);
    v139 = (*(v138 + 16))(v137, v138);
    sub_1DAED0C5C();

    v140 = v338;
    if (!v338)
    {
      sub_1DADB6334(v136, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      sub_1DAD64398(&v337, &unk_1ECC08880, &unk_1DAED6F50);
      goto LABEL_55;
    }

    v141 = __swift_project_boxed_opaque_existential_1(&v337, v338);
    v142 = *(v140 - 8);
    v143 = *(v142 + 64);
    MEMORY[0x1EEE9AC00](v141);
    v145 = &v302 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v142 + 16))(v145);
    sub_1DAD64398(&v337, &unk_1ECC08880, &unk_1DAED6F50);
    v146 = v307;
    sub_1DAED19FC();
    (*(v142 + 8))(v145, v140);
    swift_getKeyPath();
    v147 = sub_1DAED150C();

    result = (*(v315 + 8))(v146, v314);
    if (!v147)
    {
      sub_1DADB6334(v136, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      goto LABEL_55;
    }

    v326 = &v302;
    v148 = 0;
    v149 = *(v147 + 16);
    do
    {
      if (v149 == v148)
      {

        sub_1DADB6334(v316, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
        v135 = v321;
        goto LABEL_55;
      }

      if (v148 >= *(v147 + 16))
      {
        __break(1u);
        goto LABEL_76;
      }

      v150 = v334;
      v151 = v333;
      (*(v334 + 16))(v58, v147 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v148++, v333);
      sub_1DAECF71C();
      v152 = sub_1DAED15CC();
      v153 = *(v150 + 8);
      v153(v60, v151);
      result = (v153)(v58, v151);
    }

    while ((v152 & 1) == 0);

    v154 = v323;
    v155 = v321;
    sub_1DAD9F338(&v339, v323, v305);
    v156 = v329;
    v157 = v304;
    v158 = v330;
    (*(v329 + 16))(v304, *(v155 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v330);

    v159 = sub_1DAECEDCC();
    v160 = sub_1DAED200C();

    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v335 = v163;
      *v161 = 136446466;
      v164 = (*(v155 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v165 = *v164;
      v166 = v164[1];

      v167 = sub_1DAD6482C(v165, v166, &v335);

      *(v161 + 4) = v167;
      *(v161 + 12) = 2114;
      v168 = *(v155 + 16);
      v169 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
      swift_beginAccess();
      v170 = *(v168 + v169);
      *(v161 + 14) = v170;
      *v162 = v170;
      v171 = v170;
      _os_log_impl(&dword_1DAD61000, v159, v160, "[%{public}s] SELECTING tinted (%{public}@)", v161, 0x16u);
      sub_1DAD64398(v162, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v162, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v163);
      MEMORY[0x1E127F100](v163, -1, -1);
      MEMORY[0x1E127F100](v161, -1, -1);

      (*(v156 + 8))(v304, v158);
      v172 = *(v328 + 8);
      v173 = v323;
    }

    else
    {

      (*(v156 + 8))(v157, v158);
      v172 = *(v328 + 8);
      v173 = v154;
    }

    v292 = v327;
    v172(v173, v327);
    v172(v332, v292);
    v293 = v320;
    v294 = v316;
    v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v296 = *(v295 + 48);
    v297 = *(v295 + 64);
    *v293 = v331;
    sub_1DADB62CC(v294, &v293[v296], type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DAD7C48C(v305, &v293[v297], &qword_1ECC088D8, &qword_1DAED72D0);
    goto LABEL_71;
  }

  sub_1DAD64398(v40, &qword_1ECC088D8, &qword_1DAED72D0);
LABEL_55:
  v254 = v329;
  v255 = v319;
  v256 = v330;
  (*(v329 + 16))(v319, *(v135 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v330);

  v257 = sub_1DAECEDCC();
  v258 = sub_1DAED200C();

  if (os_log_type_enabled(v257, v258))
  {
    v259 = swift_slowAlloc();
    v260 = swift_slowAlloc();
    v261 = swift_slowAlloc();
    v335 = v261;
    *v259 = 136446466;
    v262 = (*(v135 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
    v263 = v135;
    v264 = *v262;
    v265 = v262[1];

    v266 = sub_1DAD6482C(v264, v265, &v335);

    *(v259 + 4) = v266;
    *(v259 + 12) = 2114;
    v267 = *(v263 + 16);
    v268 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
    swift_beginAccess();
    v269 = *(v267 + v268);
    *(v259 + 14) = v269;
    *v260 = v269;
    v270 = v269;
    _os_log_impl(&dword_1DAD61000, v257, v258, "[%{public}s] SELECTING tinted - NIL (%{public}@)", v259, 0x16u);
    sub_1DAD64398(v260, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v260, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v261);
    MEMORY[0x1E127F100](v261, -1, -1);
    MEMORY[0x1E127F100](v259, -1, -1);

    (*(v254 + 8))(v319, v256);
  }

  else
  {

    (*(v254 + 8))(v255, v256);
  }

  v271 = *(v328 + 8);
  v272 = v327;
  v271(v323, v327);
  v271(v332, v272);
LABEL_65:
  v290 = v320;
  v250 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  v251 = *(*(v250 - 8) + 56);
  v252 = v290;
LABEL_66:
  v291 = 1;
LABEL_73:
  v251(v252, v291, 1, v250);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v339);
}

uint64_t sub_1DAD9F338@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v164 = a1;
  v166 = a3;
  v160 = sub_1DAED0DDC();
  v159 = *(v160 - 8);
  v4 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A628, &unk_1DAEDE770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v144 = &v138 - v8;
  v143 = type metadata accessor for InlineTextView(0);
  v9 = *(*(v143 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v143);
  v142 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v147 = &v138 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D0, &qword_1DAEDE260);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v141 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v148 = &v138 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v149 = &v138 - v20;
  v152 = sub_1DAECFF0C();
  v151 = *(v152 - 8);
  v21 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v146 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_1DAED149C();
  v156 = *(v157 - 8);
  v23 = *(v156 + 64);
  v24 = MEMORY[0x1EEE9AC00](v157);
  v155 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v154 = &v138 - v26;
  v165 = sub_1DAED19AC();
  v169 = *(v165 - 8);
  v27 = *(v169 + 64);
  v28 = MEMORY[0x1EEE9AC00](v165);
  v162 = &v138 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v138 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080B0, &qword_1DAEDE780);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v163 = &v138 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v140 = &v138 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v138 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v171 = &v138 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v46 = &v138 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = &v138 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v138 - v50;
  v52 = sub_1DAECDCEC();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  v55 = MEMORY[0x1EEE9AC00](v52);
  v145 = &v138 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v153 = &v138 - v57;
  v58 = sub_1DAECF8EC();
  v168 = *(v58 - 8);
  v59 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v138 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1DAECF4BC();
  v63 = &_serverStartupToken[892];
  v64 = &unk_1EE009000;
  v167 = a2;
  v161 = v58;
  if (v62)
  {
    v139 = v40;
    v138 = v49;
    v150 = v31;
    v65 = v168;
    (*(v168 + 16))(v61, a2, v58);
    sub_1DAECF4CC();
    v66 = *(v170 + 16);
    v67 = v58;
    v68 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
    swift_beginAccess();
    sub_1DAD6495C(v66 + v68, v51, &qword_1ECC07CE8, &qword_1DAED6F60);
    if ((*(v53 + 48))(v51, 1, v52) == 1)
    {
      (*(v65 + 8))(v61, v67);
      sub_1DAD64398(v51, &qword_1ECC07CE8, &qword_1DAED6F60);
      v31 = v150;
      v63 = _serverStartupToken + 3568;
      v40 = v139;
      v64 = &unk_1EE009000;
    }

    else
    {
      v69 = v153;
      (*(v53 + 32))(v153, v51, v52);
      v71 = *(v164 + 3);
      v70 = *(v164 + 4);
      __swift_project_boxed_opaque_existential_1(v164, v71);
      v72 = (*(v70 + 16))(v71, v70);
      (*(v53 + 16))(v46, v69, v52);
      v73 = *(v53 + 56);
      v73(v46, 0, 1, v52);
      sub_1DAED0B5C();

      sub_1DAD64398(v46, &qword_1ECC07CE8, &qword_1DAED6F60);
      if (v175)
      {
        __swift_project_boxed_opaque_existential_1(&v174, v175);
        v74 = v138;
        sub_1DAED177C();
        v73(v74, 0, 1, v52);
        __swift_destroy_boxed_opaque_existential_1Tm(&v174);
      }

      else
      {
        sub_1DAD64398(&v174, &unk_1ECC07DE0, &qword_1DAEDBED0);
        v74 = v138;
        v73(v138, 1, 1, v52);
      }

      v31 = v150;
      v40 = v139;
      v75 = *(*(v170 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewableEntryCache);

      sub_1DAEAFEE8(v164, v61, v74);

      sub_1DAD64398(v74, &qword_1ECC07CE8, &qword_1DAED6F60);
      (*(v53 + 8))(v153, v52);
      (*(v168 + 8))(v61, v161);
      v64 = &unk_1EE009000;
      v63 = &_serverStartupToken[892];
    }
  }

  v76 = v170;
  v77 = *(v170 + 16);
  v78 = *(v77 + v64[490]);
  v79 = *(v63 + 347);
  swift_beginAccess();
  v80 = v77 + v79;
  v81 = v167;
  sub_1DAD6495C(v80, v46, &qword_1ECC07CE8, &qword_1DAED6F60);

  v82 = v171;
  sub_1DADA06DC(v164, v81, v46, v171);

  sub_1DAD64398(v46, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAD6495C(v82, v40, &qword_1ECC080B0, &qword_1DAEDE780);
  v83 = v169;
  v84 = *(v169 + 48);
  v85 = v165;
  if ((v84)(v40, 1, v165) == 1)
  {
    sub_1DAD64398(v40, &qword_1ECC080B0, &qword_1DAEDE780);
    v86 = v171;
    v87 = v163;
    v88 = v168;
    goto LABEL_19;
  }

  v164 = v84;
  (*(v83 + 32))(v31, v40, v85);
  sub_1DAD648F8(*(v76 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v174);
  v89 = v83;
  v90 = v175;
  v91 = v176;
  __swift_project_boxed_opaque_existential_1(&v174, v175);
  v92 = (*(v91 + 16))(v90, v91);
  v93 = v154;
  sub_1DAED0C4C();

  v94 = v156;
  v95 = v155;
  v96 = v157;
  (*(v156 + 104))(v155, *MEMORY[0x1E69856B8], v157);
  sub_1DAD900EC(&qword_1EE005748, MEMORY[0x1E69856C0]);
  sub_1DAED1E4C();
  sub_1DAED1E4C();
  v97 = *(v94 + 8);
  v97(v95, v96);
  v97(v93, v96);
  v98 = v172;
  v99 = v173;
  __swift_destroy_boxed_opaque_existential_1Tm(&v174);
  v87 = v163;
  if (v98 == v99)
  {
    v100 = v148;
    sub_1DAED194C();
    v101 = sub_1DAED165C();
    v102 = *(v101 - 8);
    if ((*(v102 + 48))(v100, 1, v101) == 1)
    {
      v83 = v169;
      (*(v169 + 8))(v31, v85);
      sub_1DAD64398(v100, &qword_1ECC088D0, &qword_1DAEDE260);
      v103 = v149;
      (*(v151 + 56))(v149, 1, 1, v152);
      v76 = v170;
      v86 = v171;
      v88 = v168;
    }

    else
    {
      v150 = v31;
      v104 = v100;
      v103 = v149;
      sub_1DAED160C();
      (*(v102 + 8))(v104, v101);
      v105 = v151;
      v106 = v152;
      v107 = (*(v151 + 48))(v103, 1, v152);
      v76 = v170;
      v86 = v171;
      if (v107 != 1)
      {
        (*(v105 + 32))(v146, v103, v106);
        v108 = v147;
        (*(v105 + 16))();
        v109 = *(v76 + 16);
        v110 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters;
        swift_beginAccess();
        v111 = *(v109 + v110);
        v112 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
        v113 = v143;
        v114 = *(v143 + 24);
        v115 = sub_1DAECEDEC();
        (*(*(v115 - 8) + 16))(v108 + v114, v109 + v112, v115);
        *(v108 + *(v113 + 20)) = v111;
        v116 = v111;
        v117 = v150;
        sub_1DAED195C();
        sub_1DADB6264(v108, v142, type metadata accessor for InlineTextView);
        sub_1DAD900EC(&qword_1EE007CF0, type metadata accessor for InlineTextView);
        sub_1DAED087C();
        sub_1DAED199C();
        sub_1DAED194C();
        v118 = v140;
        sub_1DAED196C();
        v87 = v163;
        sub_1DADB6334(v147, type metadata accessor for InlineTextView);
        (*(v151 + 8))(v146, v152);
        v83 = v169;
        (*(v169 + 8))(v117, v85);
        sub_1DAD64398(v86, &qword_1ECC080B0, &qword_1DAEDE780);
        (*(v83 + 56))(v118, 0, 1, v85);
        sub_1DAD7C48C(v118, v86, &qword_1ECC080B0, &qword_1DAEDE780);
        v88 = v168;
        goto LABEL_18;
      }

      v83 = v169;
      (*(v169 + 8))(v150, v85);
      v88 = v168;
    }

    sub_1DAD64398(v103, &unk_1ECC0A680, &unk_1DAED72C0);
  }

  else
  {
    (*(v89 + 8))(v31, v85);
    v83 = v89;
    v76 = v170;
    v86 = v171;
    v88 = v168;
  }

LABEL_18:
  v84 = v164;
LABEL_19:
  sub_1DAD6495C(v86, v87, &qword_1ECC080B0, &qword_1DAEDE780);
  if ((v84)(v87, 1, v85) == 1)
  {
    sub_1DAD64398(v86, &qword_1ECC080B0, &qword_1DAEDE780);
    sub_1DAD64398(v87, &qword_1ECC080B0, &qword_1DAEDE780);
    v119 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
    return (*(*(v119 - 8) + 56))(v166, 1, 1, v119);
  }

  else
  {
    v121 = v162;
    (*(v83 + 32))(v162, v87, v85);
    v122 = v166;
    (*(v88 + 16))();
    v170 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
    (*(v83 + 16))(v122 + *(v170 + 20), v121, v85);
    sub_1DAD648F8(*(v76 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v174);
    v123 = v175;
    v124 = v176;
    __swift_project_boxed_opaque_existential_1(&v174, v175);
    v125 = v76;
    v126 = *(v124 + 16);

    v127 = v126(v123, v124);
    v128 = v158;
    sub_1DAED0C3C();

    v168 = sub_1DAED0DBC();

    v129 = *(v159 + 8);
    v130 = v160;
    v129(v128, v160);
    __swift_destroy_boxed_opaque_existential_1Tm(&v174);
    sub_1DAD648F8(*(v125 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v174);
    v131 = v175;
    v132 = v176;
    __swift_project_boxed_opaque_existential_1(&v174, v175);
    v133 = *(v132 + 16);

    v134 = v133(v131, v132);
    sub_1DAED0C3C();

    v135 = sub_1DAED0DCC();

    v129(v128, v130);
    (*(v169 + 8))(v162, v165);
    sub_1DAD64398(v171, &qword_1ECC080B0, &qword_1DAEDE780);
    __swift_destroy_boxed_opaque_existential_1Tm(&v174);
    v136 = v170;
    v137 = v166;
    *(v166 + *(v170 + 24)) = v168;
    *(v137 + *(v136 + 28)) = v135;
    return (*(*(v136 - 8) + 56))(v137, 0, 1, v136);
  }
}

uint64_t sub_1DADA06DC@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a4;
  v94 = a3;
  v6 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v97 = *(v6 - 8);
  v98 = v6;
  v7 = *(v97 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v82 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v83 = &v79 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v80 = (&v79 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080B0, &qword_1DAEDE780);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v81 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v89 = &v79 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v91 = &v79 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v95 = &v79 - v21;
  v22 = sub_1DAECF8EC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v85 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v79 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A990, &qword_1DAEDE2D0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v79 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A7F8, &qword_1DAEDEBA8);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v87 = &v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v86 = &v79 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v96 = &v79 - v42;
  v43 = *(v23 + 16);
  v88 = a2;
  v84 = v43;
  v43(v35, a2, v22);
  (*(v23 + 56))(v35, 0, 1, v22);
  v44 = a1[3];
  v45 = a1[4];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  v46 = (*(v45 + 16))(v44, v45);
  sub_1DAED0B5C();

  if (!v100)
  {
    sub_1DAD64398(v35, &unk_1ECC0A990, &qword_1DAEDE2D0);
    sub_1DAD64398(&v99, &unk_1ECC07DE0, &qword_1DAEDBED0);
    goto LABEL_5;
  }

  sub_1DAD657D8(&v99, v101);
  sub_1DAD6495C(v35, v33, &unk_1ECC0A990, &qword_1DAEDE2D0);
  if ((*(v23 + 48))(v33, 1, v22) == 1)
  {
    sub_1DAD64398(v35, &unk_1ECC0A990, &qword_1DAEDE2D0);
    sub_1DAD64398(v33, &unk_1ECC0A990, &qword_1DAEDE2D0);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
LABEL_5:
    v47 = v95;
    v48 = v96;
    v49 = v97;
    (*(v97 + 56))(v96, 1, 1, v98);
    v50 = v92;
    goto LABEL_7;
  }

  (*(v23 + 32))(v28, v33, v22);
  v48 = v96;
  sub_1DAD648F8(v90, v96);
  __swift_project_boxed_opaque_existential_1(v101, v102);
  v51 = v98;
  v52 = v48 + *(v98 + 20);
  sub_1DAED177C();
  v84(v85, v28, v22);
  v53 = v48 + *(v51 + 24);
  sub_1DAED156C();
  (*(v23 + 8))(v28, v22);
  sub_1DAD64398(v35, &unk_1ECC0A990, &qword_1DAEDE2D0);
  v49 = v97;
  (*(v97 + 56))(v48, 0, 1, v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v101);
  v50 = v92;
  v47 = v95;
LABEL_7:
  v54 = v91;
  v55 = *(v50 + 24);
  os_unfair_lock_lock(*(v55 + 16));
  sub_1DAD9C494(v48, v50, v47);
  os_unfair_lock_unlock(*(v55 + 16));
  sub_1DAD6495C(v47, v54, &qword_1ECC080B0, &qword_1DAEDE780);
  v56 = sub_1DAED19AC();
  v57 = *(v56 - 8);
  if ((*(v57 + 48))(v54, 1, v56) == 1)
  {
    sub_1DAD64398(v54, &qword_1ECC080B0, &qword_1DAEDE780);
    v58 = v86;
    sub_1DAD6495C(v48, v86, &qword_1ECC0A7F8, &qword_1DAEDEBA8);
    v59 = *(v49 + 48);
    v60 = v59(v58, 1, v98);
    v97 = v49 + 48;
    if (v60 == 1)
    {
      sub_1DAD64398(v58, &qword_1ECC0A7F8, &qword_1DAEDEBA8);
    }

    else
    {
      v62 = v58;
      v63 = v80;
      sub_1DADB23E8(v62, v80, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
      os_unfair_lock_lock(*(v55 + 16));
      sub_1DADAD760(v50, v63);
      os_unfair_lock_unlock(*(v55 + 16));
      sub_1DADB2450(v63, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
    }

    v64 = v90;
    v65 = v90[3];
    v66 = v90[4];
    __swift_project_boxed_opaque_existential_1(v90, v65);
    (*(v66 + 32))(v101, v65, v66);
    v67 = v102;
    v68 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v69 = v64[3];
    v70 = v64[4];
    __swift_project_boxed_opaque_existential_1(v64, v69);
    v71 = (*(v70 + 16))(v69, v70);
    v72 = v89;
    (*(v68 + 8))(v71, v94, v88, v67, v68);

    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    v48 = v96;
    v73 = v87;
    sub_1DAD6495C(v96, v87, &qword_1ECC0A7F8, &qword_1DAEDEBA8);
    if (v59(v73, 1, v98) == 1)
    {
      sub_1DAD64398(v95, &qword_1ECC080B0, &qword_1DAEDE780);
      sub_1DAD64398(v73, &qword_1ECC0A7F8, &qword_1DAEDEBA8);
    }

    else
    {
      v74 = v83;
      sub_1DADB23E8(v73, v83, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
      os_unfair_lock_lock(*(v55 + 16));
      v75 = v82;
      sub_1DADBA01C(v74, v82, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
      v76 = v81;
      sub_1DAD6495C(v72, v81, &qword_1ECC080B0, &qword_1DAEDE780);
      swift_beginAccess();
      v77 = v75;
      v48 = v96;
      sub_1DADB9CEC(v76, v77);
      swift_endAccess();
      os_unfair_lock_unlock(*(v55 + 16));
      sub_1DAD64398(v95, &qword_1ECC080B0, &qword_1DAEDE780);
      sub_1DADB2450(v74, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
    }

    sub_1DAD7C48C(v72, v93, &qword_1ECC080B0, &qword_1DAEDE780);
  }

  else
  {
    sub_1DAD64398(v47, &qword_1ECC080B0, &qword_1DAEDE780);
    v61 = v93;
    (*(v57 + 32))(v93, v54, v56);
    (*(v57 + 56))(v61, 0, 1, v56);
  }

  return sub_1DAD64398(v48, &qword_1ECC0A7F8, &qword_1DAEDEBA8);
}

uint64_t sub_1DADA1144(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DAECDCEC();
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
      v13 = sub_1DAED157C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1DADA1268@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v183 = a2;
  v3 = sub_1DAED0B7C();
  v176 = *(v3 - 8);
  v177 = v3;
  v4 = *(v176 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v166 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v167 = &v163 - v7;
  v171 = sub_1DAED18CC();
  v170 = *(v171 - 1);
  v8 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v169 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DAECEDEC();
  v178 = *(v10 - 8);
  v179 = v10;
  v11 = *(v178 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v165 = &v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v172 = &v163 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v175 = (&v163 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v164 = &v163 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v168 = &v163 - v20;
  v21 = sub_1DAED19AC();
  v180 = *(v21 - 1);
  v181 = v21;
  v22 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C48, &unk_1DAEDBE58);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v163 - v27);
  v29 = sub_1DAED0DDC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v163 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAED0C3C();
  v34 = sub_1DAED0DBC();
  v35 = *(v30 + 8);
  v174 = v29;
  v173 = v35;
  v35(v33, v29);
  v36 = [v34 extensionIdentity];

  v182 = v36;
  LODWORD(v34) = [v36 isRemote];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v37 = swift_allocObject();
  if (v34)
  {
    *(v37 + 16) = xmmword_1DAEDBE10;
    *(v37 + 32) = swift_getKeyPath();
    *(v37 + 40) = swift_getKeyPath();
    *(v37 + 48) = swift_getKeyPath();
    *(v37 + 56) = swift_getKeyPath();
    *(v37 + 64) = swift_getKeyPath();
    *(v37 + 72) = swift_getKeyPath();
    *(v37 + 80) = swift_getKeyPath();
    *(v37 + 88) = swift_getKeyPath();
    v38 = (v37 + 96);
  }

  else
  {
    *(v37 + 16) = xmmword_1DAEDBE00;
    *(v37 + 32) = swift_getKeyPath();
    v38 = (v37 + 40);
  }

  *v38 = swift_getKeyPath();

  sub_1DAED28AC();
  sub_1DAED239C();

  sub_1DAED0B3C();

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v49 = v180;
    v48 = v181;
    v50 = *(v180 + 32);
    v50(v24, v28, v181);
    v51 = v184[13];
    v52 = *(*v51 + *MEMORY[0x1E69E6B68] + 16);
    v53 = (*(*v51 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v51 + v53));
    sub_1DAD64398(v51 + v52, &qword_1ECC07DF0, &qword_1DAED5870);
    v54 = sub_1DAED157C();
    (*(*(v54 - 8) + 56))(v51 + v52, 1, 1, v54);
    os_unfair_lock_unlock((v51 + v53));

    v55 = v183;
    v50(v183, v24, v48);
    return (*(v49 + 56))(v55, 0, 1, v48);
  }

  v40 = v176;
  v39 = v177;
  v41 = (*(v176 + 88))(v28, v177);
  v42 = v184;
  if (v41 == *MEMORY[0x1E6993D10])
  {
    (*(v40 + 96))(v28, v39);
    v43 = v28[1];
    v44 = v178;
    if (v43)
    {
      v45 = *v28;
      v187 = 2108704;
      v188 = 0xE300000000000000;
      MEMORY[0x1E127DA50](v45, v43);

      v47 = v187;
      v46 = v188;
    }

    else
    {
      v47 = 0;
      v46 = 0xE000000000000000;
    }

    v92 = v175;
    v93 = __swift_project_boxed_opaque_existential_1(v42 + 2, v42[5]);
    v94 = v179;
    (*(v44 + 16))(v92, *v93 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v179);
    v95 = a1;

    v96 = sub_1DAECEDCC();
    v97 = sub_1DAED203C();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v184 = v47;
      v100 = v99;
      v187 = v99;
      *v98 = 136446722;
      sub_1DAED0C3C();
      v101 = sub_1DAED0DBC();
      v173(v33, v174);
      v102 = [v101 _loggingIdentifierWithoutMetrics];

      v103 = sub_1DAED1CEC();
      v105 = v104;

      v106 = sub_1DAD6482C(v103, v105, &v187);

      *(v98 + 4) = v106;
      *(v98 + 12) = 2082;
      v107 = sub_1DAD6482C(v184, v46, &v187);

      *(v98 + 14) = v107;
      *(v98 + 22) = 2082;
      v108 = v169;
      sub_1DAED0B9C();
      sub_1DADA6F60(&unk_1EE00AAD0, MEMORY[0x1E69859A8]);
      v109 = v171;
      v110 = sub_1DAED287C();
      v112 = v111;
      (*(v170 + 8))(v108, v109);
      v113 = sub_1DAD6482C(v110, v112, &v187);

      *(v98 + 24) = v113;
      _os_log_impl(&dword_1DAD61000, v96, v97, "%{public}s currentViewableEntry: No content%{public}s, (entry protected by: %{public}s)", v98, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v100, -1, -1);
      MEMORY[0x1E127F100](v98, -1, -1);

      (*(v178 + 8))(v175, v179);
    }

    else
    {

      (*(v44 + 8))(v92, v94);
    }

    return (*(v180 + 56))(v183, 1, 1, v181);
  }

  v57 = v178;
  if (v41 == *MEMORY[0x1E6993D18])
  {
    (*(v40 + 96))(v28, v39);
    v58 = v28[5];
    v59 = __swift_project_boxed_opaque_existential_1(v42 + 2, v42[5]);
    v60 = v172;
    v61 = v179;
    (*(v57 + 16))(v172, *v59 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v179);
    v62 = a1;
    v63 = v58;
    v64 = sub_1DAECEDCC();
    v65 = sub_1DAED201C();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v187 = v181;
      *v66 = 136446467;
      sub_1DAED0C3C();
      v67 = sub_1DAED0DBC();
      v173(v33, v174);
      v68 = [v67 _loggingIdentifierWithoutMetrics];

      v69 = sub_1DAED1CEC();
      v71 = v70;

      v72 = sub_1DAD6482C(v69, v71, &v187);

      *(v66 + 4) = v72;
      *(v66 + 12) = 2113;
      v73 = v58;
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 14) = v74;
      v75 = v180;
      *v180 = v74;
      _os_log_impl(&dword_1DAD61000, v64, v65, "%{public}s reload: could not decode view: %{private}@", v66, 0x16u);
      sub_1DAD64398(v75, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v75, -1, -1);
      v76 = v181;
      __swift_destroy_boxed_opaque_existential_1Tm(v181);
      MEMORY[0x1E127F100](v76, -1, -1);
      MEMORY[0x1E127F100](v66, -1, -1);

      (*(v57 + 8))(v172, v179);
    }

    else
    {

      (*(v57 + 8))(v60, v61);
    }

    v114 = *__swift_project_boxed_opaque_existential_1(v184 + 7, v184[10]);
    sub_1DADC551C(2);
    sub_1DAED0B2C();

    return sub_1DAD64398(v28, &unk_1ECC07DE0, &qword_1DAEDBED0);
  }

  if (v41 != *MEMORY[0x1E6993D08])
  {
    if (v41 != *MEMORY[0x1E6993D20])
    {
      v133 = v167;
      (*(v40 + 32))(v167, v28, v39);
      v134 = __swift_project_boxed_opaque_existential_1(v42 + 2, v42[5]);
      v135 = v165;
      (*(v57 + 16))(v165, *v134 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v179);
      v136 = v40;
      v184 = *(v40 + 16);
      (v184)(v166, v133, v39);
      v137 = v135;
      v138 = a1;
      v139 = v39;
      v140 = sub_1DAECEDCC();
      v141 = sub_1DAED201C();

      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        LODWORD(v172) = v141;
        v143 = v142;
        v171 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v187 = v175;
        *v143 = 136446467;
        sub_1DAED0C3C();
        v144 = sub_1DAED0DBC();
        v173(v33, v174);
        v145 = [v144 _loggingIdentifierWithoutMetrics];

        v146 = sub_1DAED1CEC();
        v147 = v57;
        v149 = v148;

        v150 = sub_1DAD6482C(v146, v149, &v187);

        *(v143 + 4) = v150;
        *(v143 + 12) = 2113;
        sub_1DADA6F60(&qword_1ECC09C50, MEMORY[0x1E6993D28]);
        swift_allocError();
        v151 = v166;
        (v184)(v152, v166, v139);
        v153 = _swift_stdlib_bridgeErrorToNSError();
        v154 = *(v136 + 8);
        v154(v151, v139);
        *(v143 + 14) = v153;
        v155 = v171;
        *v171 = v153;
        _os_log_impl(&dword_1DAD61000, v140, v172, "%{public}s reload error: %{private}@", v143, 0x16u);
        sub_1DAD64398(v155, &qword_1ECC07CF0, &qword_1DAED57A0);
        MEMORY[0x1E127F100](v155, -1, -1);
        v156 = v175;
        __swift_destroy_boxed_opaque_existential_1Tm(v175);
        MEMORY[0x1E127F100](v156, -1, -1);
        MEMORY[0x1E127F100](v143, -1, -1);

        (*(v147 + 8))(v165, v179);
        v154(v167, v139);
      }

      else
      {

        v162 = *(v136 + 8);
        v162(v166, v139);
        (*(v57 + 8))(v137, v179);
        v162(v167, v139);
      }

      return (*(v180 + 56))(v183, 1, 1, v181);
    }

    (*(v40 + 96))(v28, v39);
    v115 = v28[6];
    v181 = v28[5];
    v116 = __swift_project_boxed_opaque_existential_1(v42 + 2, v42[5]);
    v117 = v164;
    (*(v57 + 16))(v164, *v116 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v179);
    v118 = a1;

    v119 = sub_1DAECEDCC();
    v120 = sub_1DAED203C();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v187 = v122;
      *v121 = 136446466;
      LODWORD(v180) = v120;
      sub_1DAED0C3C();
      v123 = sub_1DAED0DBC();
      v173(v33, v174);
      v124 = [v123 _loggingIdentifierWithoutMetrics];

      v125 = sub_1DAED1CEC();
      v126 = v117;
      v128 = v127;

      v129 = sub_1DAD6482C(v125, v128, &v187);

      *(v121 + 4) = v129;
      *(v121 + 12) = 2082;
      v130 = sub_1DAD6482C(v181, v115, &v187);

      *(v121 + 14) = v130;
      _os_log_impl(&dword_1DAD61000, v119, v180, "%{public}s currentViewableEntry: no matching environment - mismatches: %{public}s", v121, 0x16u);
      swift_arrayDestroy();
      v131 = v122;
      v42 = v184;
      MEMORY[0x1E127F100](v131, -1, -1);
      MEMORY[0x1E127F100](v121, -1, -1);

      (*(v178 + 8))(v126, v179);
    }

    else
    {

      (*(v57 + 8))(v117, v179);
    }

    sub_1DAED0C5C();
    if (v186)
    {
      v157 = sub_1DAD657D8(&v185, &v187);
      v158 = v42[13];
      MEMORY[0x1EEE9AC00](v157);
      *(&v163 - 2) = &v187;
      v159 = *(*v158 + *MEMORY[0x1E69E6B68] + 16);
      v160 = (*(*v158 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v158 + v160));
      sub_1DADC18C4(v158 + v159, &v185);
      os_unfair_lock_unlock((v158 + v160));
      LODWORD(v159) = v185;

      if (v159 == 1)
      {
        v161 = *__swift_project_boxed_opaque_existential_1(v42 + 7, v42[10]);
        sub_1DADC551C(3);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v187);
    }

    else
    {
      sub_1DAD64398(&v185, &unk_1ECC08880, &unk_1DAED6F50);
    }

    sub_1DAED0B2C();

    return sub_1DAD64398(v28, &unk_1ECC07DE0, &qword_1DAEDBED0);
  }

  (*(v40 + 96))(v28, v39);
  v77 = __swift_project_boxed_opaque_existential_1(v42 + 2, v42[5]);
  v78 = v168;
  v79 = v179;
  (*(v57 + 16))(v168, *v77 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v179);
  v80 = a1;
  v81 = sub_1DAECEDCC();
  v82 = sub_1DAED203C();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v187 = v84;
    *v83 = 136446210;
    sub_1DAED0C3C();
    v85 = sub_1DAED0DBC();
    v173(v33, v174);
    v86 = [v85 _loggingIdentifierWithoutMetrics];

    v87 = sub_1DAED1CEC();
    v88 = v57;
    v90 = v89;

    v91 = sub_1DAD6482C(v87, v90, &v187);

    *(v83 + 4) = v91;
    _os_log_impl(&dword_1DAD61000, v81, v82, "%{public}s currentViewableEntry: no entry", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    MEMORY[0x1E127F100](v84, -1, -1);
    MEMORY[0x1E127F100](v83, -1, -1);

    (*(v88 + 8))(v168, v179);
  }

  else
  {

    (*(v57 + 8))(v78, v79);
  }

  (*(v180 + 56))(v183, 1, 1, v181);
  v132 = sub_1DAECDCEC();
  return (*(*(v132 - 8) + 8))(v28, v132);
}

char *LiveWidgetContentViewController.init(widget:metrics:viewModel:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v87 = sub_1DAECFBAC();
  v85 = *(v87 - 8);
  v8 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A600, &unk_1DAEDE250);
  v106 = *(v104 - 8);
  v10 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v84 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAE8, &qword_1DAEDFB68);
  v13 = *(v12 - 8);
  v107 = v12;
  v108 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v84 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v96 = &v84 - v18;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v94 = *(v93 - 1);
  v19 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v84 - v20;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAF0, &qword_1DAEDFB70);
  v97 = *(v95 - 8);
  v21 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v91 = &v84 - v22;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAF8, &qword_1DAEDFB78);
  v99 = *(v98 - 8);
  v23 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v92 = &v84 - v24;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09AE8, &qword_1DAEDFB80);
  v25 = *(*(v89 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v89);
  v109 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&v84 - v28);
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__isSnapshotting) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_animationsPausedCancellable) = 0;
  v30 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__animationsDisabledPreferenceObserver;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__animationsDisabledPreferenceObserver) = 0;
  v105 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__cachedAnimationsDisabledPreference;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__cachedAnimationsDisabledPreference) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__renderingScaleObserver) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_widget) = a1;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_metrics) = a2;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel) = a3;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = a1;
  v32 = a2;

  sub_1DAECEF3C();

  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_areAnimationsPaused) = v110;
  v33 = type metadata accessor for _RootContentViewModel();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  *(v36 + 24) = v32;
  swift_beginAccess();
  LOBYTE(v111) = 1;
  v37 = v31;
  v101 = v32;
  sub_1DAECEEFC();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v111) = 0;
  sub_1DAECEEFC();
  swift_endAccess();
  v38 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__rootViewModel;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__rootViewModel) = v36;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  LOBYTE(v36) = sub_1DAECE07C();

  *(v105 + v4) = v36 & 1;
  v39 = *(v4 + v30);
  *(v4 + v30) = 0;

  v100 = v37;
  LODWORD(v88) = sub_1DAE9BAB0([v37 family]);
  v40 = *(v4 + v38);
  v41 = v29 + *(v89 + 36);
  v111 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09AF0, &unk_1DAED7740);
  sub_1DAED076C();
  *(v41 + 1) = v110;
  v111 = 0;
  sub_1DAED076C();
  *(v41 + 2) = v110;
  v41[48] = 0;
  *(v41 + 7) = 0;
  v42 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
  v43 = *(type metadata accessor for LiveWidgetEntryView() + 36);
  v44 = sub_1DAECEDEC();
  (*(*(v44 - 8) + 16))(&v41[v43], a3 + v42, v44);
  type metadata accessor for LiveWidgetEntryViewModel(0);
  sub_1DAD730A4(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel);
  *v41 = sub_1DAECF21C();
  *(v41 + 1) = v45;
  sub_1DAD730A4(&qword_1EE006B90, type metadata accessor for _RootContentViewModel);
  *v29 = sub_1DAECF21C();
  v29[1] = v46;
  v105 = v29;
  sub_1DADA5A60(v29, v109);
  sub_1DAD64B94(qword_1EE0078A8, &qword_1ECC09AE8, &qword_1DAEDFB80);
  v47 = sub_1DAED087C();
  v48 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
  swift_beginAccess();
  v109 = a3;
  sub_1DADA5544(v47, v88 & 1, *(a3 + v48), 1);
  v50 = v49;

  v51 = v50;
  sub_1DAECE1AC();
  v52 = sub_1DAECE08C();

  *&v110 = v52;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08898, &qword_1DAED8240);
  sub_1DAD64B94(&qword_1EE00AC00, &qword_1ECC08898, &qword_1DAED8240);
  v53 = sub_1DAECF00C();

  v54 = *&v51[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__animationsDisabledPreferenceObserver];
  *&v51[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__animationsDisabledPreferenceObserver] = v53;

  v88 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel;
  v55 = *&v51[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v56 = v90;
  sub_1DAECEF0C();
  swift_endAccess();

  v89 = MEMORY[0x1E695C068];
  sub_1DAD64B94(&qword_1EE00ABC0, &unk_1ECC0A540, &unk_1DAED7D70);
  v57 = v91;
  v58 = v93;
  sub_1DAECEFFC();
  (*(v94 + 8))(v56, v58);
  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v59 = sub_1DAED20EC();
  *&v110 = v59;
  v60 = sub_1DAED20AC();
  v61 = *(v60 - 8);
  v93 = *(v61 + 56);
  v94 = v61 + 56;
  v62 = v96;
  (v93)(v96, 1, 1, v60);
  sub_1DAD64B94(&unk_1EE005DA0, &qword_1ECC0AAF0, &qword_1DAEDFB70);
  sub_1DAD88828();
  v63 = v92;
  v64 = v95;
  v65 = v57;
  sub_1DAECEFBC();
  v66 = v62;
  sub_1DAD64398(v62, &unk_1ECC07D20, &unk_1DAED57D0);

  (*(v97 + 8))(v65, v64);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1DAD64B94(&qword_1EE005CF8, &qword_1ECC0AAF8, &qword_1DAEDFB78);
  v67 = v98;
  v68 = sub_1DAECF00C();

  (*(v99 + 8))(v63, v67);
  v69 = *&v51[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_animationsPausedCancellable];
  *&v51[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_animationsPausedCancellable] = v68;

  v70 = *&v51[v88];
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D40, &unk_1DAED57F0);
  v71 = v102;
  sub_1DAECEF0C();
  swift_endAccess();

  v72 = sub_1DAED20EC();
  *&v110 = v72;
  (v93)(v66, 1, 1, v60);
  sub_1DAD64B94(&unk_1EE005BE8, &qword_1ECC0A600, &unk_1DAEDE250);
  v73 = v103;
  v74 = v66;
  v75 = v104;
  sub_1DAECEFBC();
  sub_1DAD64398(v74, &unk_1ECC07D20, &unk_1DAED57D0);

  (*(v106 + 8))(v71, v75);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1DAD64B94(&qword_1EE005D08, &qword_1ECC0AAE8, &qword_1DAEDFB68);
  v76 = v107;
  v77 = sub_1DAECF00C();

  (*(v108 + 8))(v73, v76);
  v78 = *&v51[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__renderingScaleObserver];
  *&v51[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__renderingScaleObserver] = v77;

  if (v51[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController__renderEngine] == 1)
  {
    v79 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
    swift_beginAccess();
    v80 = *&v51[v79];
    (*(v85 + 104))(v86, *MEMORY[0x1E697FFA0], v87);
    v81 = v80;
    v82 = sub_1DAECFA7C();
    sub_1DAECFC6C();
    v82(&v110, 0);
  }

  else
  {
  }

  sub_1DAD64398(v105, &qword_1ECC09AE8, &qword_1DAEDFB80);
  return v51;
}

uint64_t sub_1DADA3870()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

char *sub_1DADA38A8(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D18, &qword_1DAED7D68);
  v6 = *(v5 - 8);
  v80 = v5;
  v81 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v79 = v63 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v74 = *(v73 - 8);
  v9 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v71 = v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D20, &unk_1DAEDD960);
  v12 = *(v11 - 8);
  v76 = v11;
  v77 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v72 = v63 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D28, &unk_1DAED7D80);
  v70 = *(v69 - 8);
  v15 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v63 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  v67 = *(v66 - 8);
  v21 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v23 = v63 - v22;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_shouldVisibleEntrySnapshot) = 1;
  v24 = v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_lifetimeAssertion;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_metricsAggregator) = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_invalidated) = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__cancellables) = MEMORY[0x1E69E7CD0];
  v25 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__alwaysOnOverrideDate;
  v26 = sub_1DAECDCEC();
  v27 = *(*(v26 - 8) + 56);
  v27(v2 + v25, 1, 1, v26);
  v27(v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__overrideDatePreferenceValue, 1, 1, v26);
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene) = a1;
  v28 = a1;
  v29 = sub_1DAD8CE78(v28);
  v30 = (v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier);
  *v30 = v29;
  v30[1] = v31;
  v78 = v28;
  v32 = [v28 widget];
  v33 = [v28 metrics];
  v75 = a2;

  v85 = LiveWidgetContentViewController.init(widget:metrics:viewModel:)(v32, v33, a2);
  v86 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel;
  v34 = v85;
  sub_1DAD648F8(*&v85[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel] + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v90);
  v35 = v91;
  v36 = v92;
  __swift_project_boxed_opaque_existential_1(v90, v91);
  v37 = *(v36 + 16);
  v38 = v34;

  v39 = v37(v35, v36);
  v40 = sub_1DAED0BFC();

  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  v90[0] = v40;
  v41 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v42 = sub_1DAED20EC();
  v89 = v42;
  v43 = sub_1DAED20AC();
  v44 = *(v43 - 8);
  v88 = *(v44 + 56);
  v83 = v44 + 56;
  v84 = v43;
  v88(v20, 1, 1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  v87 = MEMORY[0x1E695BED8];
  sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850);
  v82 = sub_1DAD88828();
  sub_1DAECEFBC();
  sub_1DAD64398(v20, &unk_1ECC07D20, &unk_1DAED57D0);

  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1DADC4450;
  *(v46 + 24) = v45;
  v65 = MEMORY[0x1E695BE98];
  sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0);
  v47 = v66;
  sub_1DAECF00C();

  (*(v67 + 8))(v23, v47);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v90[0] = *(*&v85[v86] + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher);

  v48 = sub_1DAED20EC();
  v89 = v48;
  v64 = v20;
  v88(v20, 1, 1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC083D0, qword_1DAED6780);
  sub_1DAD64B94(&qword_1EE005C88, &unk_1ECC083D0, qword_1DAED6780);
  v49 = v68;
  sub_1DAECEFBC();
  sub_1DAD64398(v20, &unk_1ECC07D20, &unk_1DAED57D0);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1DAD64B94(&qword_1EE005D20, &qword_1ECC08D28, &unk_1DAED7D80);
  v50 = v69;
  sub_1DAECF00C();

  (*(v70 + 8))(v49, v50);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v51 = *&v85[v86];

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v52 = v71;
  sub_1DAECEF0C();
  swift_endAccess();

  v63[1] = v41;
  v53 = sub_1DAED20EC();
  v90[0] = v53;
  v54 = v64;
  v88(v64, 1, 1, v84);
  sub_1DAD64B94(&qword_1EE00ABC0, &unk_1ECC0A540, &unk_1DAED7D70);
  v55 = v72;
  v56 = v73;
  sub_1DAECEFBC();
  sub_1DAD64398(v54, &unk_1ECC07D20, &unk_1DAED57D0);

  (*(v74 + 8))(v52, v56);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1DAD64B94(&unk_1EE00AC20, &qword_1ECC08D20, &unk_1DAEDD960);
  v57 = v76;
  sub_1DAECF00C();

  (*(v77 + 8))(v55, v57);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v58 = sub_1DAECE01C();

  v90[0] = v58;
  v59 = sub_1DAED20EC();
  v89 = v59;
  v88(v54, 1, 1, v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D30, &qword_1DAED7D90);
  sub_1DAD64B94(&qword_1EE005C80, &qword_1ECC08D30, &qword_1DAED7D90);
  v60 = v79;
  sub_1DAECEFBC();
  sub_1DAD64398(v54, &unk_1ECC07D20, &unk_1DAED57D0);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1DAD64B94(&qword_1EE005D18, &qword_1ECC08D18, &qword_1DAED7D68);
  v61 = v80;
  sub_1DAECF00C();

  (*(v81 + 8))(v60, v61);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  return v38;
}

uint64_t sub_1DADA4584()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADA45BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for WidgetSceneContentViewController()
{
  result = qword_1EE00BFD0;
  if (!qword_1EE00BFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DADA4678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAECF8EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1DAED19AC();
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

uint64_t sub_1DADA4798(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DAECF8EC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1DAED19AC();
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

uint64_t sub_1DADA48A0()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 16);
  v7 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 != 2 && (v8 & 1) != 0)
  {
    return 0;
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
  swift_beginAccess();
  if (*(v6 + v10))
  {
    return 1;
  }

  v11 = v0;
  v12 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
  swift_beginAccess();
  (*(v2 + 16))(v5, v6 + v12, v1);
  LOBYTE(v12) = sub_1DAECF60C();
  (*(v2 + 8))(v5, v1);
  if (v12)
  {
    return 1;
  }

  v13 = *(v11 + 16);
  v14 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference;
  swift_beginAccess();
  return *(v13 + v14);
}

uint64_t sub_1DADA4A3C()
{
  v1 = *(*v0 + 16);
  v2 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1DADA4A88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DAED176C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08368, &unk_1DAEDE2B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = &v69 - v9;
  v86 = sub_1DAED16FC();
  v85 = *(v86 - 8);
  v10 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v70 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1DAECF32C();
  v69 = *(v83 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1DAECE21C();
  v79 = *(v81 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1DAECE23C();
  v78 = *(v80 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DAED15DC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v75 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1DAECF0AC();
  v73 = *(v74 - 8);
  v21 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DAED0DDC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1DAED149C();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
  swift_beginAccess();
  v31 = sub_1DAECF8EC();
  (*(*(v31 - 8) + 16))(a1, v2 + v30, v31);
  v32 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
  sub_1DAD648F8(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v88);
  v34 = v89;
  v33 = v90;
  __swift_project_boxed_opaque_existential_1(&v88, v89);
  v35 = (*(v33 + 16))(v34, v33);
  sub_1DAED0C3C();

  v36 = sub_1DAED0DBC();
  v37 = *(v24 + 8);
  v37(v27, v23);
  [v36 family];

  sub_1DAED14AC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v88);
  sub_1DAECF62C();
  sub_1DAD648F8(v2 + v32, &v88);
  v38 = v89;
  v39 = v90;
  __swift_project_boxed_opaque_existential_1(&v88, v89);
  v40 = (*(v39 + 16))(v38, v39);
  sub_1DAED0C3C();

  sub_1DAED0DCC();
  v37(v27, v23);
  sub_1DAECF66C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v88);
  v41 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
  swift_beginAccess();
  (*(v73 + 16))(v72, v2 + v41, v74);
  sub_1DAECF3AC();
  v42 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment;
  swift_beginAccess();
  v43 = *(v2 + v42);
  sub_1DAECF4CC();
  v44 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_showsWidgetLabel;
  swift_beginAccess();
  v45 = *(v2 + v44);
  sub_1DAECF5FC();
  v46 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v47 = *(v2 + v46);
  sub_1DAED15EC();
  sub_1DAECF72C();
  v48 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent;
  swift_beginAccess();
  v49 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider + 32);
  v50 = *(v2 + v48);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider + 24));
  v51 = v76;
  sub_1DAECE29C();
  v52 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_keybagLockPolicy;
  swift_beginAccess();
  v53 = v79;
  v54 = v77;
  v55 = v81;
  (*(v79 + 16))(v77, v2 + v52, v81);
  LOBYTE(v52) = sub_1DAECE22C();
  (*(v53 + 8))(v54, v55);
  (*(v78 + 8))(v51, v80);
  if (v52 & 1) != 0 || (v50)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09038, &unk_1DAED85C0);
    v56 = *(v69 + 72);
    v57 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1DAED6200;
    sub_1DAECF31C();
    v87 = v58;
  }

  else
  {
    v87 = MEMORY[0x1E69E7CC0];
  }

  sub_1DAD900EC(&qword_1EE00BE58, MEMORY[0x1E697EA58]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
  sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0);
  sub_1DAED23CC();
  sub_1DAECF47C();
  v59 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
  swift_beginAccess();
  v60 = *(v2 + v59);
  v61 = v86;
  if (v60)
  {
    v62 = v60;
    sub_1DAECF7AC();
  }

  v63 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
  swift_beginAccess();
  v64 = v2 + v63;
  v65 = v84;
  sub_1DAD6495C(v64, v84, &qword_1ECC08368, &unk_1DAEDE2B0);
  v66 = v85;
  if ((*(v85 + 48))(v65, 1, v61) == 1)
  {
    return sub_1DAD64398(v65, &qword_1ECC08368, &unk_1DAEDE2B0);
  }

  v68 = v70;
  (*(v66 + 32))(v70, v65, v61);
  sub_1DAED16EC();
  sub_1DAECF63C();
  return (*(v66 + 8))(v68, v61);
}

uint64_t sub_1DADA54D0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for AbstractArchiveWidgetEntrySource();
  a1[4] = &off_1F56B6788;
  *a1 = v3;
}

void sub_1DADA5544(uint64_t a1, char a2, char a3, char a4)
{
  v5 = v4;
  *&v5[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape] = 0;
  v9 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
  v5[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent] = 0;
  *&v5[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer] = 0;
  *&v5[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay] = 0;
  v5[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController__renderEngine] = a2 & 1;
  objc_allocWithZone(type metadata accessor for SecureHostingController());
  v34 = a1;

  *&v5[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController] = sub_1DAECFA9C();
  swift_beginAccess();
  v5[v9] = a3;
  v33.receiver = v5;
  v33.super_class = type metadata accessor for BaseWidgetContentViewController();
  v10 = objc_msgSendSuper2(&v33, sel_initWithNibName_bundle_, 0, 0);
  v11 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v12 = *&v10[v11];
  v13 = v10;
  v14 = [v12 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v16 clearColor];
  [v15 setBackgroundColor_];

  v18 = [v13 view];
  if (!v18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = [v16 clearColor];
  [v18 setBackgroundColor_];

  if ((a2 & 1) == 0)
  {
    v23 = *&v10[v11];
    v24 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
    swift_beginAccess();
    LOBYTE(v24) = v13[v24];
    v22 = v23;
    sub_1DADB25F8(a4 & 1, (v24 & 1) == 0);
LABEL_7:

    v25 = *&v10[v11];
    v26 = v13;
    [v26 addChildViewController_];
    v27 = [v26 view];
    if (v27)
    {
      v28 = v27;
      v29 = [*&v10[v11] view];
      if (v29)
      {
        v30 = v29;
        [v28 addSubview_];

        v31 = *&v10[v11];
        [v31 didMoveToParentViewController_];

        return;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = [v13 view];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 layer];

    [v22 setHitTestsAsOpaque_];
    goto LABEL_7;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1DADA586C()
{
  result = sub_1DAECEDEC();
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

uint64_t sub_1DADA5920(uint64_t a1)
{
  result = sub_1DAD722E0(qword_1EE008420, type metadata accessor for WidgetArchiveEntryAssertion);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DADA5978()
{
  result = qword_1EE008208[0];
  if (!qword_1EE008208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE008208);
  }

  return result;
}

void sub_1DADA59CC()
{
  if (!qword_1EE00ABB8)
  {
    v0 = sub_1DAECEF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE00ABB8);
    }
  }
}

uint64_t sub_1DADA5A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09AE8, &qword_1DAEDFB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DADA5AD0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DAED227C();
  return sub_1DAD6A49C(a1, v5, &qword_1EE00AA10, &off_1E85E9AE8);
}

void sub_1DADA5B20()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  sub_1DAD9C7D8(v1, v2, v3);
}

id sub_1DADA5B4C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1DADA5AD0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1DADA5CF4(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1DADA5AD0(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
        result = sub_1DAED28FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1DADDC6D8();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

uint64_t sub_1DADA5CF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9B0, &unk_1DAEDF140);
  result = sub_1DAED277C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_1DAED227C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DADA5F64(void *a1)
{
  v2 = v1;
  v50[3] = *MEMORY[0x1E69E9840];
  v4 = sub_1DAED10DC();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAECE20C();
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099A0, &qword_1DAEDACF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DADA64C4();
  sub_1DAED29BC();
  v17 = objc_opt_self();
  v18 = *(v2 + 16);
  v50[0] = 0;
  v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:v50];
  v20 = v50[0];
  if (v19)
  {
    v41 = v7;
    v21 = sub_1DAECDC1C();
    v23 = v22;

    v50[0] = v21;
    v50[1] = v23;
    v49 = 0;
    sub_1DADA7F5C();
    v24 = v46;
    sub_1DAED284C();
    if (v24)
    {
      (*(v12 + 8))(v15, v11);
      v25 = v21;
      v26 = v23;
    }

    else
    {
      v40 = v21;
      v46 = v23;
      v29 = *(v2 + 24);
      LOBYTE(v50[0]) = 1;
      sub_1DAED283C();
      v31 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority;
      swift_beginAccess();
      v32 = v45;
      v33 = v41;
      (*(v45 + 16))(v10, v2 + v31, v41);
      v49 = 2;
      sub_1DADA7FB0(&qword_1EE00BCE0, MEMORY[0x1E6993FA8]);
      sub_1DAED284C();
      (*(v32 + 8))(v10, v33);
      v34 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers;
      swift_beginAccess();
      v35 = v42;
      v36 = v43;
      v37 = v44;
      (*(v43 + 16))(v42, v2 + v34, v44);
      v48 = 3;
      sub_1DADA7FB0(&qword_1EE005790, MEMORY[0x1E6993E88]);
      sub_1DAED284C();
      (*(v36 + 8))(v35, v37);
      v38 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled;
      swift_beginAccess();
      v39 = *(v2 + v38);
      v47 = 4;
      sub_1DAED282C();
      (*(v12 + 8))(v15, v11);
      v25 = v40;
      v26 = v46;
    }

    result = sub_1DAD70BB4(v25, v26);
  }

  else
  {
    v27 = v20;
    sub_1DAECDB1C();

    swift_willThrow();
    result = (*(v12 + 8))(v15, v11);
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1DADA64C4()
{
  result = qword_1EE00B5B8;
  if (!qword_1EE00B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B5B8);
  }

  return result;
}

void sub_1DADA6518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DADA657C()
{
  result = qword_1EE00AA18;
  if (!qword_1EE00AA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE00AA18);
  }

  return result;
}

uint64_t sub_1DADA65C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1DAED252C();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_1DAED227C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

void sub_1DADA67D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1DAECEF5C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DADA6828()
{
  if (!qword_1EE00BBE0)
  {
    type metadata accessor for TintedWidgetViewModel();
    type metadata accessor for EnvironmentWrappedViewableTimelineEntry(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC088D8, &qword_1DAED72D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE00BBE0);
    }
  }
}

uint64_t sub_1DADA68BC()
{
  result = sub_1DAECF8EC();
  if (v1 <= 0x3F)
  {
    result = sub_1DAED19AC();
    if (v2 <= 0x3F)
    {
      result = sub_1DAD674D4(319, &unk_1EE00A860, 0x1E6994370);
      if (v3 <= 0x3F)
      {
        result = sub_1DAD674D4(319, &qword_1EE00AA60, 0x1E69943F0);
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

uint64_t sub_1DADA6998(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DADA6A08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DAED233C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DADA6A5C()
{
  sub_1DADA8A78();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DADA6B20()
{
  result = sub_1DAECF8EC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DADA6BA4()
{
  result = sub_1DADA6C40();
  if (v1 <= 0x3F)
  {
    result = sub_1DAECDCEC();
    if (v2 <= 0x3F)
    {
      result = sub_1DAED157C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1DADA6C40()
{
  result = qword_1EE008C40;
  if (!qword_1EE008C40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE008C40);
  }

  return result;
}

uint64_t sub_1DADA6CA4()
{
  result = sub_1DAECE20C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DAED10DC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1DADA6DA8()
{
  result = qword_1EE00B5A8;
  if (!qword_1EE00B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B5A8);
  }

  return result;
}

unint64_t sub_1DADA6E00()
{
  result = qword_1EE00B5B0;
  if (!qword_1EE00B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B5B0);
  }

  return result;
}

void sub_1DADA6E5C()
{
  sub_1DAECFF0C();
  if (v0 <= 0x3F)
  {
    sub_1DADA6EF8();
    if (v1 <= 0x3F)
    {
      sub_1DAECEDEC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DADA6EF8()
{
  if (!qword_1EE005570)
  {
    sub_1DAD674D4(255, &unk_1EE005578, 0x1E69942B8);
    v0 = sub_1DAED233C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE005570);
    }
  }
}

uint64_t sub_1DADA6F60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DADA6FA8@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v5 = *v2;
  BSDispatchQueueAssertMain();
  v6 = *(v5 + 16);
  v7 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__placeholderSource;
  swift_beginAccess();
  sub_1DAD6495C(v6 + v7, v9, &unk_1ECC07D90, &unk_1DAED5840);
  sub_1DAD9CD3C(v9, a1, a2);
  return sub_1DAD64398(v9, &unk_1ECC07D90, &unk_1DAED5840);
}

uint64_t sub_1DADA7058()
{
  v1 = (*(*v0 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1DADA709C()
{
  v1 = sub_1DAECF0AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v6 = *(v0 + 16);
  v7 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
  swift_beginAccess();
  if (*(v6 + v7) == 1)
  {
    v8 = sub_1DAED064C();
  }

  else
  {
    v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
    swift_beginAccess();
    (*(v2 + 16))(v5, v6 + v9, v1);
    v10 = (*(v2 + 88))(v5, v1);
    if (v10 == *MEMORY[0x1E697DBB8])
    {
      v8 = sub_1DAED066C();
    }

    else if (v10 == *MEMORY[0x1E697DBA8])
    {
      v8 = sub_1DAED063C();
    }

    else
    {
      v11 = sub_1DAED060C();
      (*(v2 + 8))(v5, v1);
      v8 = v11;
    }
  }

  v13[1] = v8;
  return sub_1DAED087C();
}

void sub_1DADA7250()
{
  sub_1DADAABE4();
  if (v0 <= 0x3F)
  {
    sub_1DADAAC78();
    if (v1 <= 0x3F)
    {
      sub_1DADA7FF8(319, &qword_1EE00AB78, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1DADA7FF8(319, &qword_1EE005800, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1DAECEDEC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DADA7380(uint64_t a1, NSObject *a2)
{
  v4 = sub_1DAED0DDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated) == 1)
  {
    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v10 = sub_1DAECEDEC();
    __swift_project_value_buffer(v10, qword_1EE0117D8);

    v48 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();

    if (os_log_type_enabled(v48, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v49 = v13;
      *v12 = 136446210;
      v14 = a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier;
      v15 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v16 = *(v14 + 8);

      v17 = sub_1DAD6482C(v15, v16, &v49);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1DAD61000, v48, v11, "[%{public}s] Ignoring subscription result; we were invalidated while subscribing.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);

      return;
    }

    v32 = v48;

LABEL_13:

    return;
  }

  if (a2)
  {
    *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) = 0;
    v18 = a2;
    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v19 = sub_1DAECEDEC();
    __swift_project_value_buffer(v19, qword_1EE0117D8);

    v20 = a2;
    v21 = sub_1DAECEDCC();
    v22 = sub_1DAED201C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49 = v25;
      *v23 = 136446466;
      v26 = a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier;
      v27 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v28 = *(v26 + 8);

      v29 = sub_1DAD6482C(v27, v28, &v49);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2114;
      v30 = a2;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v31;
      *v24 = v31;
      _os_log_impl(&dword_1DAD61000, v21, v22, "[%{public}s] Error subscribing to session: %{public}@", v23, 0x16u);
      sub_1DAD64398(v24, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E127F100](v25, -1, -1);
      MEMORY[0x1E127F100](v23, -1, -1);

      return;
    }

    v32 = a2;

    goto LABEL_13;
  }

  v33 = v7;
  v34 = *(a1 + 40);
  v35 = *(a1 + 32);
  v36 = v34;
  sub_1DAED0DAC();
  v37 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__archiveService);
  v38 = *(a1 + 48);

  sub_1DADAE53C(v9, v38);

  if (qword_1EE005E88 != -1)
  {
    swift_once();
  }

  v39 = sub_1DAECEDEC();
  __swift_project_value_buffer(v39, qword_1EE0117D8);

  v40 = sub_1DAECEDCC();
  v41 = sub_1DAED203C();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49 = v43;
    *v42 = 136446210;
    v44 = a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier;
    v45 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
    v46 = *(v44 + 8);

    v47 = sub_1DAD6482C(v45, v46, &v49);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_1DAD61000, v40, v41, "[%{public}s] Subscribed", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x1E127F100](v43, -1, -1);
    MEMORY[0x1E127F100](v42, -1, -1);
  }

  (*(v5 + 8))(v9, v33);
}

uint64_t sub_1DADA7954(uint64_t a1, char *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    if (qword_1EE005E48 != -1)
    {
      goto LABEL_28;
    }

    goto LABEL_5;
  }

  v5 = v4;
  v34 = MEMORY[0x1E69E7CD0];
  v32 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = a2;

    sub_1DAED242C();
    sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
    sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0);
    sub_1DAED1F9C();
    a1 = v35[0];
    v7 = v35[1];
    v8 = v35[2];
    a2 = v35[3];
    v9 = v35[4];
  }

  else
  {
    v21 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v9 = v23 & *(a1 + 56);
    v24 = a2;

    a2 = 0;
  }

  while (a1 < 0)
  {
    if (!sub_1DAED24BC() || (sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0), swift_dynamicCast(), v29 = v33, v27 = a2, v28 = v9, !v33))
    {
LABEL_25:
      sub_1DAD70B20();

      return v34;
    }

LABEL_23:
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      sub_1DADAE690(v5, v30);
    }

    else
    {
      sub_1DAE87D18(&v33, v29);
    }

    a2 = v27;
    v9 = v28;
  }

  v25 = a2;
  v26 = v9;
  v27 = a2;
  if (v9)
  {
LABEL_19:
    v28 = (v26 - 1) & v26;
    v29 = *(*(a1 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v29)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v27 = (v25 + 1);
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= ((v8 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v26 = *(v7 + 8 * v27);
    ++v25;
    if (v26)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_5:
  v10 = sub_1DAECEDEC();
  __swift_project_value_buffer(v10, qword_1EE011748);
  v11 = a2;
  v12 = sub_1DAECEDCC();
  v13 = sub_1DAED202C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35[0] = v15;
    *v14 = 136446210;
    v16 = [v11 description];
    v17 = sub_1DAED1CEC();
    v19 = v18;

    v20 = sub_1DAD6482C(v17, v19, v35);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1DAD61000, v12, v13, "Ignoring actions received; unexpected scene type: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1E127F100](v15, -1, -1);
    MEMORY[0x1E127F100](v14, -1, -1);
  }

  return a1;
}

void sub_1DADA7D44(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1E127E110](a1, a2, v11);
      sub_1DAD674D4(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1DAD674D4(0, a5, a6);
    if (sub_1DAED245C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1DAED246C();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_1DAED227C();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_1DAED228C();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

unint64_t sub_1DADA7F5C()
{
  result = qword_1EE00BD00;
  if (!qword_1EE00BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BD00);
  }

  return result;
}

uint64_t sub_1DADA7FB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DADA7FF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DADA8060()
{
  if (!qword_1EE005B50)
  {
    type metadata accessor for _RootContentViewModel();
    sub_1DAD730A4(&qword_1EE006B90, type metadata accessor for _RootContentViewModel);
    v0 = sub_1DAECF24C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE005B50);
    }
  }
}

void sub_1DADA80F4(uint64_t a1)
{
  sub_1DADA8060();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DADA817C()
{
  sub_1DADA59CC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DADA8288()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE011730);
  __swift_project_value_buffer(v0, qword_1EE011730);
  return sub_1DAECEDDC();
}

void sub_1DADA8304()
{
  sub_1DADA59CC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1DADA67D4(319, &qword_1EE005BC8, &qword_1ECC07D68, &unk_1DAEDE610);
    if (v4 <= 0x3F)
    {
      v31 = *(v3 - 8) + 64;
      sub_1DADA67D4(319, &qword_1EE005BC0, &qword_1ECC07D70, &unk_1DAED5820);
      if (v6 <= 0x3F)
      {
        v32 = *(v5 - 8) + 64;
        sub_1DADA67D4(319, &qword_1EE005BD8, &qword_1ECC07D78, &unk_1DAEDE620);
        if (v8 <= 0x3F)
        {
          v33 = *(v7 - 8) + 64;
          sub_1DADA67D4(319, &qword_1EE005BE0, &unk_1ECC07D80, &unk_1DAED5830);
          if (v10 <= 0x3F)
          {
            v34 = *(v9 - 8) + 64;
            sub_1DADA88B0();
            if (v12 <= 0x3F)
            {
              v35 = *(v11 - 8) + 64;
              v13 = sub_1DAECF8EC();
              if (v14 <= 0x3F)
              {
                v36 = *(v13 - 8) + 64;
                v15 = sub_1DAECF0AC();
                if (v16 <= 0x3F)
                {
                  v37 = *(v15 - 8) + 64;
                  sub_1DADA6A08(319, &qword_1EE00ABA0, MEMORY[0x1E697DBD0]);
                  if (v18 <= 0x3F)
                  {
                    v38 = *(v17 - 8) + 64;
                    v19 = sub_1DAECE21C();
                    if (v20 <= 0x3F)
                    {
                      v39 = *(v19 - 8) + 64;
                      sub_1DADA6A08(319, &qword_1EE00C278, MEMORY[0x1E6969530]);
                      if (v22 <= 0x3F)
                      {
                        v40 = *(v21 - 8) + 64;
                        sub_1DADA6A08(319, &unk_1EE00A710, MEMORY[0x1E6968278]);
                        if (v24 <= 0x3F)
                        {
                          v41 = *(v23 - 8) + 64;
                          sub_1DADA6A08(319, &qword_1EE0056F8, MEMORY[0x1E6985868]);
                          if (v26 <= 0x3F)
                          {
                            v42 = *(v25 - 8) + 64;
                            sub_1DADA6A08(319, &qword_1EE00BD08, MEMORY[0x1E6968FB0]);
                            if (v28 <= 0x3F)
                            {
                              v43 = *(v27 - 8) + 64;
                              v29 = sub_1DAECEDEC();
                              if (v30 <= 0x3F)
                              {
                                v44 = *(v29 - 8) + 64;
                                swift_updateClassMetadata2();
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1DADA88B0()
{
  if (!qword_1EE0082D8[0])
  {
    type metadata accessor for DefaultWidgetLiveViewEntry(255);
    sub_1DAD900EC(&qword_1EE008CE0, type metadata accessor for DefaultWidgetLiveViewEntry);
    v0 = type metadata accessor for WidgetViewSecurityPolicyResult();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0082D8);
    }
  }
}

void sub_1DADA8944()
{
  sub_1DADA6828();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentWrappedViewableTimelineEntry(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DADA89B8()
{
  sub_1DADA6518(319, &qword_1EE00ABB0, sub_1DADA657C, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DADA8A78()
{
  if (!qword_1EE0091A8[0])
  {
    type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(255);
    v0 = sub_1DAED233C();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0091A8);
    }
  }
}

uint64_t TintedWidgetViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer21TintedWidgetViewModel__tintParameters;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DADA8B78@<X0>(void *a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v233 = a1;
  v239 = a3;
  v229 = sub_1DAED0B7C();
  v228 = *(v229 - 8);
  v4 = *(v228 + 64);
  v5 = MEMORY[0x1EEE9AC00](v229);
  v213 = &v210 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v216 = &v210 - v7;
  v221 = sub_1DAED18CC();
  v220 = *(v221 - 8);
  v8 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v219 = &v210 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_1DAECDCEC();
  v240 = *(v234 - 8);
  v10 = v240[8];
  MEMORY[0x1EEE9AC00](v234);
  v212 = &v210 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_1DAECEDEC();
  v230 = *(v231 - 8);
  v12 = *(v230 + 64);
  v13 = MEMORY[0x1EEE9AC00](v231);
  v215 = &v210 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v218 = &v210 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v226 = &v210 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v214 = &v210 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v217 = &v210 - v21;
  v22 = sub_1DAED19AC();
  v237 = *(v22 - 8);
  v238 = v22;
  v23 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v227 = &v210 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v210 - v27;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C48, &unk_1DAEDBE58);
  v29 = *(*(v232 - 8) + 64);
  MEMORY[0x1EEE9AC00](v232);
  v31 = (&v210 - v30);
  v32 = sub_1DAED0DDC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v210 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1DAECF32C();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v39 = sub_1DAECF8EC();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v210 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = v43;
  v236 = v44;
  (*(v44 + 16))(v42, a2);
  v244 = MEMORY[0x1E69E7CC0];
  sub_1DAD9017C(&qword_1EE00BE58, MEMORY[0x1E697EA58]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
  sub_1DADAAA84();
  v45 = v42;
  sub_1DAED23CC();
  sub_1DAECF47C();
  v46 = v233;
  sub_1DAED0C3C();
  v47 = sub_1DAED0DBC();
  v48 = *(v33 + 8);
  v223 = v36;
  v225 = v32;
  v224 = v33 + 8;
  v222 = v48;
  v48(v36, v32);
  v49 = [v47 extensionIdentity];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1DAEDBE10;
  *(v50 + 32) = swift_getKeyPath();
  *(v50 + 40) = swift_getKeyPath();
  *(v50 + 48) = swift_getKeyPath();
  *(v50 + 56) = swift_getKeyPath();
  *(v50 + 64) = swift_getKeyPath();
  *(v50 + 72) = swift_getKeyPath();
  *(v50 + 80) = swift_getKeyPath();
  *(v50 + 88) = swift_getKeyPath();
  *(v50 + 96) = swift_getKeyPath();
  v51 = v234;
  (v240[7])(v28, 1, 1);
  v52 = v46;
  sub_1DAED0B3C();

  sub_1DAD64398(v28, &qword_1ECC07CE8, &qword_1DAED6F60);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v65 = v237;
    v64 = v238;
    v66 = *(v237 + 32);
    v67 = v227;
    v66(v227, v31, v238);
    v68 = *(v241 + 104);
    v69 = *(*v68 + *MEMORY[0x1E69E6B68] + 16);
    v70 = (*(*v68 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v68 + v70));
    sub_1DAD64398(v68 + v69, &qword_1ECC07DF0, &qword_1DAED5870);
    v71 = sub_1DAED157C();
    (*(*(v71 - 8) + 56))(v68 + v69, 1, 1, v71);
    os_unfair_lock_unlock((v68 + v70));

    (*(v236 + 8))(v45, v235);

    v72 = v239;
    v66(v239, v67, v64);
    return (*(v65 + 56))(v72, 0, 1, v64);
  }

  v53 = v228;
  v54 = v229;
  v55 = (*(v228 + 88))(v31, v229);
  v56 = v54;
  if (v55 == *MEMORY[0x1E6993D10])
  {
    v211 = v45;
    (*(v53 + 96))(v31, v54);
    v57 = v31[1];
    v58 = v230;
    v59 = v231;
    v60 = v241;
    v210 = v49;
    if (v57)
    {
      v61 = *v31;
      v244 = 2108704;
      v245 = 0xE300000000000000;
      MEMORY[0x1E127DA50](v61, v57);

      v62 = v244;
      v63 = v245;
    }

    else
    {
      v62 = 0;
      v63 = 0xE000000000000000;
    }

    v128 = __swift_project_boxed_opaque_existential_1((v60 + 16), *(v60 + 40));
    v129 = v226;
    (*(v58 + 16))(v226, *v128 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v59);
    v130 = v52;

    v131 = sub_1DAECEDCC();
    v132 = sub_1DAED203C();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      v244 = v241;
      *v133 = 136446722;
      v134 = v62;
      v135 = v223;
      sub_1DAED0C3C();
      v136 = sub_1DAED0DBC();
      v222(v135, v225);
      v137 = [v136 _loggingIdentifierWithoutMetrics];

      v138 = sub_1DAED1CEC();
      v140 = v139;

      v141 = sub_1DAD6482C(v138, v140, &v244);

      *(v133 + 4) = v141;
      *(v133 + 12) = 2082;
      v142 = sub_1DAD6482C(v134, v63, &v244);

      *(v133 + 14) = v142;
      *(v133 + 22) = 2082;
      v143 = v219;
      sub_1DAED0B9C();
      sub_1DAD9017C(&unk_1EE00AAD0, MEMORY[0x1E69859A8]);
      v144 = v221;
      v145 = sub_1DAED287C();
      v147 = v146;
      (*(v220 + 8))(v143, v144);
      v148 = sub_1DAD6482C(v145, v147, &v244);

      *(v133 + 24) = v148;
      _os_log_impl(&dword_1DAD61000, v131, v132, "%{public}s placeholder reload: No content%{public}s, (entry protected by: %{public}s)", v133, 0x20u);
      v149 = v241;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v149, -1, -1);
      MEMORY[0x1E127F100](v133, -1, -1);

      (*(v58 + 8))(v226, v231);
    }

    else
    {

      (*(v58 + 8))(v129, v59);
    }

    goto LABEL_20;
  }

  v74 = v230;
  v75 = v231;
  v76 = v241;
  if (v55 == *MEMORY[0x1E6993D18])
  {
    v210 = v49;
    (*(v53 + 96))(v31, v56);
    v232 = v31;
    v77 = v31[5];
    v78 = __swift_project_boxed_opaque_existential_1(v76 + 2, v76[5]);
    v79 = v218;
    (*(v74 + 16))(v218, *v78 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v75);
    v80 = v79;
    v81 = v46;
    v82 = v77;
    v83 = v74;
    v84 = sub_1DAECEDCC();
    v85 = sub_1DAED201C();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v211 = v45;
      v89 = v88;
      v244 = v88;
      *v86 = 136446467;
      v90 = v223;
      v91 = v85;
      sub_1DAED0C3C();
      v92 = sub_1DAED0DBC();
      v222(v90, v225);
      v93 = [v92 _loggingIdentifierWithoutMetrics];

      v94 = sub_1DAED1CEC();
      v96 = v95;

      v97 = sub_1DAD6482C(v94, v96, &v244);

      *(v86 + 4) = v97;
      *(v86 + 12) = 2113;
      v98 = v77;
      v99 = _swift_stdlib_bridgeErrorToNSError();
      *(v86 + 14) = v99;
      *v87 = v99;
      _os_log_impl(&dword_1DAD61000, v84, v91, "%{public}s placeholder reload: could not decode view: %{private}@", v86, 0x16u);
      sub_1DAD64398(v87, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v87, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      v100 = v89;
      v45 = v211;
      MEMORY[0x1E127F100](v100, -1, -1);
      v76 = v241;
      MEMORY[0x1E127F100](v86, -1, -1);

      (*(v230 + 8))(v80, v231);
    }

    else
    {

      (*(v83 + 8))(v80, v75);
    }

    v151 = v236;
    v150 = v237;
    v152 = v235;
    v153 = *__swift_project_boxed_opaque_existential_1(v76 + 7, v76[10]);
    sub_1DADC551C(2);

    (*(v151 + 8))(v45, v152);
    (*(v150 + 56))(v239, 1, 1, v238);
    v154 = v232;
    return sub_1DAD64398(v154, &unk_1ECC07DE0, &qword_1DAEDBED0);
  }

  v101 = v55 == *MEMORY[0x1E6993D08];
  v211 = v45;
  if (!v101)
  {
    if (v55 != *MEMORY[0x1E6993D20])
    {
      v210 = v49;
      v174 = v216;
      v175 = v230;
      v176 = v56;
      (*(v53 + 32))(v216, v31, v56);
      v177 = __swift_project_boxed_opaque_existential_1(v76 + 2, v76[5]);
      (*(v175 + 16))(v215, *v177 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v75);
      v178 = v213;
      v241 = *(v53 + 16);
      (v241)(v213, v174, v176);
      v179 = v52;
      v180 = v53;
      v181 = sub_1DAECEDCC();
      v182 = sub_1DAED201C();

      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        v240 = swift_slowAlloc();
        v244 = v240;
        *v183 = 136446466;
        v185 = v223;
        sub_1DAED0C3C();
        v186 = sub_1DAED0DBC();
        v222(v185, v225);
        v187 = [v186 _loggingIdentifierWithoutMetrics];

        v188 = sub_1DAED1CEC();
        v190 = v189;

        v191 = sub_1DAD6482C(v188, v190, &v244);

        *(v183 + 4) = v191;
        *(v183 + 12) = 2114;
        sub_1DAD9017C(&qword_1ECC09C50, MEMORY[0x1E6993D28]);
        v192 = v229;
        swift_allocError();
        (v241)(v193, v178, v192);
        v194 = _swift_stdlib_bridgeErrorToNSError();
        v195 = *(v180 + 8);
        v195(v178, v192);
        *(v183 + 14) = v194;
        *v184 = v194;
        _os_log_impl(&dword_1DAD61000, v181, v182, "%{public}s placeholder reload error: %{public}@", v183, 0x16u);
        sub_1DAD64398(v184, &qword_1ECC07CF0, &qword_1DAED57A0);
        MEMORY[0x1E127F100](v184, -1, -1);
        v196 = v240;
        __swift_destroy_boxed_opaque_existential_1Tm(v240);
        MEMORY[0x1E127F100](v196, -1, -1);
        MEMORY[0x1E127F100](v183, -1, -1);

        (*(v230 + 8))(v215, v231);
        v195(v216, v192);
      }

      else
      {

        v205 = *(v180 + 8);
        v205(v178, v176);
        (*(v230 + 8))(v215, v75);
        v205(v216, v176);
      }

LABEL_20:
      (*(v236 + 8))(v211, v235);
      return (*(v237 + 56))(v239, 1, 1, v238);
    }

    (*(v53 + 96))(v31, v56);
    v156 = v31[5];
    v155 = v31[6];
    v232 = v31;
    v157 = __swift_project_boxed_opaque_existential_1(v76 + 2, v76[5]);
    v158 = v214;
    (*(v74 + 16))(v214, *v157 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v75);
    v159 = v52;

    v160 = v74;
    v161 = sub_1DAECEDCC();
    v162 = sub_1DAED203C();

    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      v240 = v156;
      v164 = v163;
      v165 = swift_slowAlloc();
      v244 = v165;
      *v164 = 136446466;
      v166 = v223;
      LODWORD(v234) = v162;
      sub_1DAED0C3C();
      v167 = sub_1DAED0DBC();
      v222(v166, v225);
      v168 = [v167 _loggingIdentifierWithoutMetrics];

      v169 = sub_1DAED1CEC();
      v171 = v170;

      v172 = sub_1DAD6482C(v169, v171, &v244);
      v76 = v241;

      *(v164 + 4) = v172;
      *(v164 + 12) = 2082;
      v173 = sub_1DAD6482C(v240, v155, &v244);

      *(v164 + 14) = v173;
      _os_log_impl(&dword_1DAD61000, v161, v234, "%{public}s placeholder reload: no matching environment - mismatches: %{public}s", v164, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v165, -1, -1);
      MEMORY[0x1E127F100](v164, -1, -1);

      (*(v160 + 8))(v214, v231);
    }

    else
    {

      (*(v160 + 8))(v158, v75);
    }

    v198 = v236;
    v197 = v237;
    sub_1DAED0C5C();
    if (v243)
    {
      v199 = sub_1DAD657D8(&v242, &v244);
      v200 = v76[13];
      MEMORY[0x1EEE9AC00](v199);
      *(&v210 - 2) = &v244;
      v201 = *(*v200 + *MEMORY[0x1E69E6B68] + 16);
      v202 = (*(*v200 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v200 + v202));
      sub_1DAEBC5A0(v200 + v201, &v242);
      os_unfair_lock_unlock((v200 + v202));
      v203 = v242;

      if (v203 == 1)
      {
        v204 = *__swift_project_boxed_opaque_existential_1(v76 + 7, v76[10]);
        sub_1DADC551C(3);

        (*(v198 + 8))(v211, v235);
      }

      else
      {
        (*(v198 + 8))(v211, v235);
      }

      v208 = v238;
      v207 = v239;
      v209 = v232;
      __swift_destroy_boxed_opaque_existential_1Tm(&v244);
    }

    else
    {
      (*(v198 + 8))(v211, v235);

      sub_1DAD64398(&v242, &unk_1ECC08880, &unk_1DAED6F50);
      v208 = v238;
      v207 = v239;
      v209 = v232;
    }

    (*(v197 + 56))(v207, 1, 1, v208);
    v154 = v209;
    return sub_1DAD64398(v154, &unk_1ECC07DE0, &qword_1DAEDBED0);
  }

  v102 = v230;
  (*(v53 + 96))(v31, v56);
  v103 = __swift_project_boxed_opaque_existential_1(v76 + 2, v76[5]);
  v104 = *(v74 + 16);
  v105 = v217;
  v104(v217, *v103 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v75);
  v106 = v52;
  v107 = sub_1DAECEDCC();
  v108 = sub_1DAED203C();

  if (os_log_type_enabled(v107, v108))
  {
    v232 = v31;
    v210 = v49;
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *&v242 = v110;
    *v109 = 136446466;
    v111 = v223;
    sub_1DAED0C3C();
    v112 = sub_1DAED0DBC();
    v222(v111, v225);
    v113 = [v112 _loggingIdentifierWithoutMetrics];

    v114 = sub_1DAED1CEC();
    v116 = v115;

    v117 = sub_1DAD6482C(v114, v116, &v242);

    *(v109 + 4) = v117;
    *(v109 + 12) = 2082;
    sub_1DAED0B4C();
    if (v246)
    {
      __swift_project_boxed_opaque_existential_1(&v244, v246);
      v118 = v212;
      sub_1DAED177C();
      v119 = v240;
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v120 = qword_1EE00A708;
      v121 = sub_1DAECDC5C();
      v122 = [v120 stringFromDate_];

      v123 = sub_1DAED1CEC();
      v125 = v124;

      (v119[1])(v118, v51);
      __swift_destroy_boxed_opaque_existential_1Tm(&v244);
      v126 = v237;
      v127 = v210;
    }

    else
    {
      sub_1DAD64398(&v244, &unk_1ECC07DE0, &qword_1DAEDBED0);
      v125 = 0xE900000000000064;
      v123 = 0x6E756F6620746F6ELL;
      v126 = v237;
      v127 = v210;
      v119 = v240;
    }

    v206 = sub_1DAD6482C(v123, v125, &v242);

    *(v109 + 14) = v206;
    _os_log_impl(&dword_1DAD61000, v107, v108, "%{public}s placeholder reload: no entry (currentEntry = %{public}s)", v109, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v110, -1, -1);
    MEMORY[0x1E127F100](v109, -1, -1);

    (*(v230 + 8))(v217, v231);
    (*(v236 + 8))(v211, v235);
    v31 = v232;
  }

  else
  {

    (*(v102 + 8))(v105, v75);
    (*(v236 + 8))(v211, v235);
    v126 = v237;
    v119 = v240;
  }

  (*(v126 + 56))(v239, 1, 1, v238);
  return (v119[1])(v31, v51);
}

uint64_t sub_1DADAA76C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF64C();
  *a1 = result;
  return result;
}

uint64_t sub_1DADAA798(uint64_t *a1)
{
  v1 = *a1;

  return sub_1DAECF65C();
}

uint64_t sub_1DADAA7C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF6FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DADAA834@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF56C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADAA88C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF4EC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADAA8E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF50C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADAA93C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF52C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1DADAAA84()
{
  result = qword_1EE00BE18;
  if (!qword_1EE00BE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09040, &qword_1DAED91C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BE18);
  }

  return result;
}

void sub_1DADAAB0C()
{
  sub_1DAD8C31C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DADAABE4()
{
  if (!qword_1EE005B68)
  {
    type metadata accessor for LiveWidgetEntryViewModel(255);
    sub_1DAD7305C(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel);
    v0 = sub_1DAECF24C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE005B68);
    }
  }
}

void sub_1DADAAC78()
{
  if (!qword_1EE005840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC09AF0, &unk_1DAED7740);
    v0 = sub_1DAED079C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE005840);
    }
  }
}

uint64_t sub_1DADAACDC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080A0, &qword_1DAED6230);
  result = sub_1DAED277C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_1DAED227C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DADAAF4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1DAED252C();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_1DAED227C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_1DADAB16C()
{
  result = qword_1EE005628;
  if (!qword_1EE005628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE005628);
  }

  return result;
}

unint64_t sub_1DADAB1C0(void *a1, uint64_t a2)
{
  v24 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v5 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v2 + 64;
  v25 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v6 + 72);
    do
    {
      sub_1DADAB8DC(*(v25 + 48) + v13 * v11, v8);
      v14 = v8[3];
      v15 = v8[4];
      __swift_project_boxed_opaque_existential_1(v8, v14);
      (*(v15 + 24))(&v26 + 1, v14, v15);
      v16 = BYTE1(v26);
      v17 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v17);
      (*(v18 + 24))(&v26, v17, v18);
      if (v16 == v26 && (v19 = *(v24 + 24), (sub_1DAED155C() & 1) != 0))
      {
        v20 = *(v24 + 20);
        v21 = sub_1DAECDCAC();
        sub_1DADAB9A4(v8);
        if (v21)
        {
          return v11;
        }
      }

      else
      {
        sub_1DADAB9A4(v8);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_1DADAB3B8(uint64_t a1, int a2)
{
  v3 = v2;
  v60 = sub_1DAED19AC();
  v6 = *(v60 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080B8, &qword_1DAED6240);
  v55 = a2;
  v15 = v13;
  result = sub_1DAED277C();
  v17 = result;
  if (*(v13 + 16))
  {
    v49 = v3;
    v18 = 0;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v50 = v6 + 16;
    v51 = v15;
    v52 = v6;
    v56 = (v6 + 32);
    v24 = result + 64;
    while (v22)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v29 = v26 | (v18 << 6);
      v30 = *(v15 + 48);
      v58 = *(v53 + 72);
      v31 = v30 + v58 * v29;
      if (v55)
      {
        sub_1DADAB940(v31, v12);
        v32 = *(v15 + 56);
        v57 = *(v52 + 72);
        (*(v52 + 32))(v59, v32 + v57 * v29, v60);
      }

      else
      {
        sub_1DADAB8DC(v31, v12);
        v33 = *(v15 + 56);
        v57 = *(v52 + 72);
        (*(v52 + 16))(v59, v33 + v57 * v29, v60);
      }

      v34 = *(v17 + 40);
      sub_1DAED294C();
      v35 = v54;
      v36 = *(v54 + 20);
      sub_1DAECDCEC();
      sub_1DAD888A8(&qword_1EE00A6F8, MEMORY[0x1E6969530]);
      sub_1DAED1C6C();
      v37 = *(v35 + 24);
      sub_1DAED157C();
      sub_1DAD888A8(&qword_1EE005720, MEMORY[0x1E6985700]);
      sub_1DAED1C6C();
      v38 = v12[3];
      v39 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v38);
      (*(v39 + 24))(&v61, v38, v39);
      MEMORY[0x1E127E5D0](v61);
      result = sub_1DAED297C();
      v40 = -1 << *(v17 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v24 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        v15 = v51;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v24 + 8 * v42);
          if (v46 != -1)
          {
            v25 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v41) & ~*(v24 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
      v15 = v51;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      sub_1DADAB940(v12, *(v17 + 48) + v58 * v25);
      result = (*v56)(*(v17 + 56) + v57 * v25, v59, v60);
      ++*(v17 + 16);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v28 = v19[v18];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v22 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v55 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_36;
    }

    v47 = 1 << *(v15 + 32);
    v3 = v49;
    if (v47 >= 64)
    {
      bzero(v19, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v47;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v3 = v17;
  return result;
}

uint64_t sub_1DADAB8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADAB940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADAB9A4(uint64_t a1)
{
  v2 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DADABA00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DAED233C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DADABA54()
{
  sub_1DADABA00(319, &qword_1EE0057C0, MEMORY[0x1E6993D98]);
  if (v0 <= 0x3F)
  {
    sub_1DADABA00(319, &qword_1EE00C278, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      sub_1DAD8D644();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1DADABB28()
{
  result = qword_1EE008CE8;
  if (!qword_1EE008CE8)
  {
    type metadata accessor for TintedWidgetViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE008CE8);
  }

  return result;
}

void sub_1DADABB80()
{
  if (!qword_1EE005B60)
  {
    type metadata accessor for TintedWidgetViewModel();
    sub_1DADABB28();
    v0 = sub_1DAECF24C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE005B60);
    }
  }
}

void sub_1DADABBE4(uint64_t a1)
{
  sub_1DADABB80();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_1DAED233C();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      sub_1DAED233C();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DADABC88()
{
  sub_1DADA59CC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1DADABD40()
{
  result = qword_1EE00BE60;
  if (!qword_1EE00BE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC091E8, &qword_1DAED9168);
    sub_1DADABDF8();
    sub_1DAD64B94(&qword_1EE00BE28, &qword_1ECC091D8, &qword_1DAED9128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BE60);
  }

  return result;
}

unint64_t sub_1DADABDF8()
{
  result = qword_1EE00BE70;
  if (!qword_1EE00BE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC091D0, &qword_1DAED9120);
    sub_1DAD64B94(&qword_1EE00BE48, &qword_1ECC091E0, &qword_1DAED9130);
    sub_1DAD64B94(&qword_1EE00BE28, &qword_1ECC091D8, &qword_1DAED9128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BE70);
  }

  return result;
}

uint64_t sub_1DADABEF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09200, &qword_1DAED9180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC091F8, &qword_1DAED9178);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC091F0, &qword_1DAED9170);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09210, &qword_1DAED9190);
  sub_1DAD64B94(&qword_1EE00BE40, &qword_1ECC09210, &qword_1DAED9190);
  swift_getOpaqueTypeConformance2();
  sub_1DAD64B94(&unk_1EE00AB90, &qword_1ECC091F0, &qword_1DAED9170);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t LiveWidgetEntryLaunchHandlingModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09798, &qword_1DAEDA278);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097A0, &qword_1DAEDA280);
  v7 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097A8, &qword_1DAEDA288);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097B0, &qword_1DAEDA290);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v38 = &v36 - v19;
  v20 = *v2;
  v21 = v2[1];
  v22 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canConsumeLaunchRequest;
  v23 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canConsumeLaunchRequest);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = v21;
  if (v23 == 1)
  {
    KeyPath = swift_getKeyPath();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097B8, &qword_1DAEDA298);
    (*(*(v26 - 8) + 16))(v9, v36, v26);
    v36 = v22;
    v27 = &v9[*(v37 + 36)];
    *v27 = sub_1DAE38D84;
    *(v27 + 1) = v21;
    *(v27 + 2) = sub_1DAE38D88;
    *(v27 + 3) = v24;
    *(v27 + 4) = KeyPath;
    *(v27 + 20) = 0;
    sub_1DAD6495C(v9, v6, &qword_1ECC097A0, &qword_1DAEDA280);
    swift_storeEnumTagMultiPayload();
    sub_1DAD71850();
    sub_1DAD64B94(&qword_1EE0058F0, &qword_1ECC097B8, &qword_1DAEDA298);
    swift_retain_n();
    v22 = v36;
    sub_1DAECFB1C();
    sub_1DAD64398(v9, &qword_1ECC097A0, &qword_1DAEDA280);
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097B8, &qword_1DAEDA298);
    (*(*(v28 - 8) + 16))(v6, v36, v28);
    swift_storeEnumTagMultiPayload();
    sub_1DAD71850();
    sub_1DAD64B94(&qword_1EE0058F0, &qword_1ECC097B8, &qword_1DAEDA298);
    swift_retain_n();
    sub_1DAECFB1C();
  }

  sub_1DAD7C48C(v14, v16, &qword_1ECC097A8, &qword_1DAEDA288);
  v29 = *(v21 + v22);

  v30 = v38;
  sub_1DADAC638(v29, sub_1DAE38D90, v21);

  sub_1DAD64398(v16, &qword_1ECC097A8, &qword_1DAEDA288);
  if (*(v21 + v22) == 1 && (sub_1DAD648F8(v21 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v40), v31 = v41, v32 = v42, __swift_project_boxed_opaque_existential_1(v40, v41), (*(v32 + 24))(&v43, v31, v32), __swift_destroy_boxed_opaque_existential_1Tm(v40), v43 != 2))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    v33 = LOBYTE(v40[0]) ^ 1;
  }

  else
  {
    v33 = 0;
  }

  v34 = v39;
  sub_1DAD7C48C(v30, v39, &qword_1ECC097B0, &qword_1DAEDA290);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097C0, &qword_1DAEDA2A0);
  *(v34 + *(result + 36)) = v33 & 1;
  return result;
}

uint64_t sub_1DADAC638(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097D0, &qword_1DAEDA450);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097C8, &qword_1DAEDA448);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  if (a1)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    v17 = *(v12 + 36);

    sub_1DAECF1BC();
    sub_1DAD6495C(v4, v15, &qword_1ECC097A8, &qword_1DAEDA288);
    sub_1DAD6495C(v15, v11, &qword_1ECC097C8, &qword_1DAEDA448);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097A8, &qword_1DAEDA288);
    sub_1DAD716DC();
    sub_1DAD71798();
    sub_1DAECFB1C();
    return sub_1DAD64398(v15, &qword_1ECC097C8, &qword_1DAEDA448);
  }

  else
  {
    sub_1DAD6495C(v4, v11, &qword_1ECC097A8, &qword_1DAEDA288);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097A8, &qword_1DAEDA288);
    sub_1DAD716DC();
    sub_1DAD71798();
    return sub_1DAECFB1C();
  }
}

uint64_t sub_1DADAC890()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t type metadata accessor for WidgetMetricsAggregator()
{
  result = qword_1EE0088D8;
  if (!qword_1EE0088D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DADAC950()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09958, &unk_1DAEDA888);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-v6];
  v8 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configuration);
  if (v8)
  {
    v9 = v8;
    sub_1DAED222C();
    v10 = sub_1DAED11EC();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    v11 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetWidgetViewIdentity;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v11, v5, &qword_1ECC09958, &unk_1DAEDA888);
    swift_beginAccess();
    sub_1DAD901C4(v7, v0 + v11, &qword_1ECC09958, &unk_1DAEDA888);
    swift_endAccess();
    sub_1DADACBD0(v5);
  }

  else
  {
    v12 = sub_1DAED11EC();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetWidgetViewIdentity;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v13, v5, &qword_1ECC09958, &unk_1DAEDA888);
    swift_beginAccess();
    sub_1DAD901C4(v7, v0 + v13, &qword_1ECC09958, &unk_1DAEDA888);
    swift_endAccess();
    sub_1DADACBD0(v5);
  }

  sub_1DAD64398(v5, &qword_1ECC09958, &unk_1DAEDA888);
  return sub_1DAD64398(v7, &qword_1ECC09958, &unk_1DAEDA888);
}

uint64_t sub_1DADACBD0(uint64_t a1)
{
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v53 = &v51[-v4];
  v5 = sub_1DAECDCEC();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1DAED11EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v58 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v51[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09958, &unk_1DAEDA888);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v59 = &v51[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v51[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09960, &qword_1DAEDA898);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v51[-v23];
  v25 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetWidgetViewIdentity;
  swift_beginAccess();
  v26 = *(v21 + 56);
  v60 = v1;
  v27 = v1 + v25;
  v28 = v62;
  sub_1DAD6495C(v27, v24, &qword_1ECC09958, &unk_1DAEDA888);
  sub_1DAD6495C(v28, &v24[v26], &qword_1ECC09958, &unk_1DAEDA888);
  v61 = v9;
  v29 = *(v9 + 48);
  if (v29(v24, 1, v8) == 1)
  {
    if (v29(&v24[v26], 1, v8) == 1)
    {
      return sub_1DAD64398(v24, &qword_1ECC09958, &unk_1DAEDA888);
    }

    goto LABEL_6;
  }

  sub_1DAD6495C(v24, v19, &qword_1ECC09958, &unk_1DAEDA888);
  if (v29(&v24[v26], 1, v8) == 1)
  {
    (*(v61 + 8))(v19, v8);
LABEL_6:
    sub_1DAD64398(v24, &qword_1ECC09960, &qword_1DAEDA898);
    goto LABEL_7;
  }

  v45 = v61;
  v46 = v57;
  (*(v61 + 32))(v57, &v24[v26], v8);
  sub_1DAE3B004(&qword_1EE005778, MEMORY[0x1E6993ED0]);
  v52 = sub_1DAED1CAC();
  v47 = *(v45 + 8);
  v47(v46, v8);
  v47(v19, v8);
  v28 = v62;
  result = sub_1DAD64398(v24, &qword_1ECC09958, &unk_1DAEDA888);
  if ((v52 & 1) == 0)
  {
LABEL_7:
    v30 = v29(v28, 1, v8);
    v31 = v60;
    if (v30 != 1)
    {
      sub_1DAD6EAB8();
    }

    v24 = v59;
    sub_1DAD6495C(v31 + v25, v59, &qword_1ECC09958, &unk_1DAEDA888);
    if (v29(v24, 1, v8) == 1)
    {
      return sub_1DAD64398(v24, &qword_1ECC09958, &unk_1DAEDA888);
    }

    v33 = v58;
    (*(v61 + 32))(v58, v24, v8);
    if (*(v31 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession) != 1)
    {
      return (*(v61 + 8))(v33, v8);
    }

    Strong = swift_weakLoadStrong();
    v35 = v54;
    if (Strong)
    {
      sub_1DAD648F8(Strong + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v63);
      v36 = v64;
      v37 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v38 = (*(v37 + 16))(v36, v37);
      sub_1DAED0C5C();

      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      if (v67)
      {
        v39 = v8;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        v40 = v53;
        sub_1DAED1A3C();
        v41 = v40;
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
        v42 = v55;
        v43 = v40;
        v44 = v56;
        if ((*(v55 + 48))(v43, 1, v56) != 1)
        {
          (*(v42 + 32))(v35, v41, v44);
LABEL_23:
          sub_1DAD648F8(v31 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewRecorder, v66);
          __swift_project_boxed_opaque_existential_1(v66, v67);
          v48 = v58;
          v49 = sub_1DAED122C();
          (*(v42 + 8))(v35, v44);
          (*(v61 + 8))(v48, v39);
          v50 = *(v31 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewEntry);
          *(v31 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewEntry) = v49;

          return __swift_destroy_boxed_opaque_existential_1Tm(v66);
        }

LABEL_21:
        sub_1DAECDC3C();
        if ((*(v42 + 48))(v41, 1, v44) != 1)
        {
          sub_1DAD64398(v41, &qword_1ECC07CE8, &qword_1DAED6F60);
        }

        goto LABEL_23;
      }

      sub_1DAD64398(v66, &unk_1ECC08880, &unk_1DAED6F50);
    }

    v39 = v8;
    v42 = v55;
    v44 = v56;
    v41 = v53;
    (*(v55 + 56))(v53, 1, 1, v56);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1DADAD358()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08850, &qword_1DAED7280);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25[-v6];
  v8 = *(v0 + 72);
  if (!v8)
  {
LABEL_10:
    v22 = sub_1DAED12CC();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    v23 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v23, v5, &qword_1ECC08850, &qword_1DAED7280);
    swift_beginAccess();
    sub_1DAD901C4(v7, v0 + v23, &qword_1ECC08850, &qword_1DAED7280);
    swift_endAccess();
    sub_1DADB34A4(v5);
    goto LABEL_11;
  }

  v9 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configuration);
  if (!v9)
  {
    v13 = v0;
    v14 = *(v0 + 64);
    v15 = qword_1EE005E88;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_1DAECEDEC();
    __swift_project_value_buffer(v16, qword_1EE0117D8);

    v17 = sub_1DAECEDCC();
    v18 = sub_1DAED201C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446210;
      v21 = sub_1DAD6482C(v14, v8, &v26);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_1DAD61000, v17, v18, "[MetricsAggregator] No configuration found for configured widget identifier: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E127F100](v20, -1, -1);
      MEMORY[0x1E127F100](v19, -1, -1);
    }

    else
    {
    }

    v0 = v13;
    goto LABEL_10;
  }

  v10 = v9;
  sub_1DAED223C();
  v11 = sub_1DAED12CC();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v12, v5, &qword_1ECC08850, &qword_1DAED7280);
  swift_beginAccess();
  sub_1DAD901C4(v7, v0 + v12, &qword_1ECC08850, &qword_1DAED7280);
  swift_endAccess();
  sub_1DADB34A4(v5);

LABEL_11:
  sub_1DAD64398(v5, &qword_1ECC08850, &qword_1DAED7280);
  return sub_1DAD64398(v7, &qword_1ECC08850, &qword_1DAED7280);
}

uint64_t sub_1DADAD720@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TintedWidgetViewModel();
  result = sub_1DAECEE4C();
  *a1 = result;
  return result;
}

uint64_t sub_1DADAD760(uint64_t a1, void *a2)
{
  v31 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v29 = a1;
  v10 = [*(a1 + 40) array];
  v11 = sub_1DAED1E7C();

  v12 = sub_1DADADA44(v11);

  v13 = *(v12 + 16);
  if (v13)
  {
    v27 = v12;
    v14 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v30 = *(v4 + 72);
    do
    {
      sub_1DADBA01C(v14, v9, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
      v15 = &v9[*(v31 + 20)];
      v16 = *(v15 + 3);
      v17 = *(v15 + 4);
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v17 + 24))(&v32 + 1, v16, v17);
      v18 = BYTE1(v32);
      v19 = a2[3];
      v20 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v19);
      (*(v20 + 24))(&v32, v19, v20);
      if (v18 == v32)
      {
        v21 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
        v22 = *(v21 + 24);
        if (sub_1DAED155C())
        {
          v23 = *(v21 + 20);
          if (sub_1DAECDCAC())
          {
            v24 = *(v29 + 40);
            sub_1DADBA01C(v9, v28, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
            v25 = v24;
            [v25 removeObject_];

            swift_unknownObjectRelease();
          }
        }
      }

      sub_1DADB2450(v9, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
      v14 += v30;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1DADADA44(uint64_t a1)
{
  v2 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1DAE02264(0, v7, 0);
    v8 = v15;
    v9 = a1 + 32;
    do
    {
      sub_1DAD642F8(v9, v14);
      swift_dynamicCast();
      v15 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1DAE02264(v10 > 1, v11 + 1, 1);
        v8 = v15;
      }

      *(v8 + 16) = v11 + 1;
      sub_1DAEAFDA8(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
      v9 += 32;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t TintedWidgetView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = *(a1 + 16);
  sub_1DAED233C();
  sub_1DAECF2AC();
  sub_1DAED233C();
  v4 = *(a1 + 24);
  sub_1DAED233C();
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  sub_1DAED233C();
  swift_getTupleTypeMetadata2();
  sub_1DAED097C();
  swift_getWitnessTable();
  v5 = sub_1DAED086C();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC099D8, &qword_1DAEDB218);
  v9 = sub_1DAECF2AC();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  v29 = v3;
  v30 = v4;
  v31 = *(a1 + 32);
  v16 = v25;
  v32 = v25;
  sub_1DAED091C();
  sub_1DAED085C();
  swift_getKeyPath();
  v17 = *(v16 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1DAECEF3C();

  v18 = v35;
  v19 = [v35 accentedDesaturatedMode];

  v35 = v19;
  WitnessTable = swift_getWitnessTable();
  sub_1DAED040C();

  (*(v26 + 8))(v8, v5);
  v21 = sub_1DAD64B94(&qword_1EE005870, &qword_1ECC099D8, &qword_1DAEDB218);
  v33 = WitnessTable;
  v34 = v21;
  v22 = swift_getWitnessTable();
  sub_1DADB6258(v13, v9, v22);
  v23 = *(v27 + 8);
  v23(v13, v9);
  sub_1DADB6258(v15, v9, v22);
  return (v23)(v15, v9);
}

uint64_t sub_1DADADFFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF7DC();
  *a1 = result;
  return result;
}

uint64_t sub_1DADAE050(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1DADAE064()
{
  result = qword_1EE0081F0;
  if (!qword_1EE0081F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0081F0);
  }

  return result;
}

uint64_t sub_1DADAE0B8(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetURLReaderModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1DAD75350(a1, v4);
}

void sub_1DADAE128(void *a1, const char *a2)
{
  BSDispatchQueueAssertMain();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v21 = a1;
  v7 = [v6 nullableWidget];
  if (v7)
  {

    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v8 = sub_1DAECEDEC();
    __swift_project_value_buffer(v8, qword_1EE011748);
    v9 = v21;
    v10 = v2;
    v21 = sub_1DAECEDCC();
    v11 = sub_1DAED1FFC();

    if (os_log_type_enabled(v21, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136446210;
      v14 = *&v10[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v14)
      {
        v15 = (v14 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v17 = *v15;
        v16 = v15[1];
      }

      else
      {
        v18 = v9;
        v17 = sub_1DAD8CE78(v6);
        v16 = v19;
      }

      v20 = sub_1DAD6482C(v17, v16, &v22);

      *(v12 + 4) = v20;
      _os_log_impl(&dword_1DAD61000, v21, v11, a2, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);

      return;
    }
  }
}

void sub_1DADAE36C(char *a1)
{
  v1 = *a1;
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    isEscapingClosureAtFileLocation = Strong;
    v4 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene;
    if ([*(Strong + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene) wantsBaseContentTouchEvents])
    {
      v5 = [*(isEscapingClosureAtFileLocation + v4) _FBSScene];
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_1DAE102D4;
      *(v7 + 24) = v6;
      aBlock[4] = sub_1DADB8C24;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DADB8220;
      aBlock[3] = &block_descriptor_8;
      v8 = _Block_copy(aBlock);

      [v5 updateClientSettings_];

      _Block_release(v8);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

uint64_t sub_1DADAE53C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DAED0DDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAED0DBC();
  v12 = [v11 widgetByReplacingIntent_];

  v13 = v12;
  sub_1DAED0DCC();
  sub_1DAED0DAC();
  v14 = *(v3 + 72);
  sub_1DAD85CEC(v10);
  if (!a2)
  {
    v15 = 56;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v15 = 64;
LABEL_5:
    v16 = *(v3 + v15);
  }

  sub_1DAD85CEC(a1);

  return (*(v7 + 8))(v10, v6);
}

void sub_1DADAE690(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v89 = &v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083C0, &qword_1DAED6768);
  v88 = *(v8 - 8);
  v9 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v83 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083C8, &unk_1DAED6770);
  v91 = *(v92 - 8);
  v11 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v83 - v12;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v13 = *(*(v96 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v96);
  v93 = (&v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v83 - v16;
  BSDispatchQueueAssertMain();
  aBlock[0] = a2;
  v97 = sub_1DAED29CC();
  v18 = v17;
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v19 = sub_1DAECEDEC();
  __swift_project_value_buffer(v19, qword_1EE011748);
  v20 = a1;
  v21 = v2;

  v22 = sub_1DAECEDCC();
  v23 = sub_1DAED203C();

  if (os_log_type_enabled(v22, v23))
  {
    v94 = v20;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136446466;
    v26 = *&v21[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v26)
    {
      v27 = (v26 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
      v29 = *v27;
      v28 = v27[1];
    }

    else
    {
      v30 = v94;
      v86 = v8;
      v31 = v21;
      v32 = a2;
      v33 = v18;
      v34 = v30;
      v29 = sub_1DAD8CE78(v30);
      v28 = v35;

      v18 = v33;
      a2 = v32;
      v21 = v31;
      v8 = v86;
    }

    v36 = sub_1DAD6482C(v29, v28, aBlock);

    *(v24 + 4) = v36;
    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_1DAD6482C(v97, v18, aBlock);
    _os_log_impl(&dword_1DAD61000, v22, v23, "[%{public}s] Received content confirmation action %{public}s): waiting for live scene content", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v25, -1, -1);
    MEMORY[0x1E127F100](v24, -1, -1);

    v20 = v94;
  }

  else
  {
  }

  if (!*&v21[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene])
  {
    sub_1DAD674D4(0, &unk_1EE005490, 0x1E696ABC0);
    v53 = 0;
    goto LABEL_24;
  }

  v37 = *&v21[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (!v37 || (v38 = *(v37 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController)) == 0)
  {
    sub_1DAD674D4(0, &unk_1EE005490, 0x1E696ABC0);
    v53 = 1;
LABEL_24:
    v54 = sub_1DADD7B94(v53, 0, 2, 0, 0);
    BSDispatchQueueAssertMain();
    sub_1DADC5B84(a2, v21, v20, v97, v18, v54);

    return;
  }

  v39 = v20;
  v94 = v18;
  v40 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel;
  v41 = *&v38[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
  v42 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  v43 = v41 + v42;
  v44 = v95;
  sub_1DAD6495C(v43, v95, &unk_1ECC07D30, &unk_1DAED57E0);
  LODWORD(v42) = swift_getEnumCaseMultiPayload();
  v85 = v38;
  sub_1DAD64398(v44, &unk_1ECC07D30, &unk_1DAED57E0);
  if (v42 == 1 && [v20 contentType] == 2)
  {
    goto LABEL_26;
  }

  v86 = v8;
  v45 = *&v38[v40];
  v46 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  v47 = v45 + v46;
  v48 = v93;
  sub_1DAD6495C(v47, v93, &unk_1ECC07D30, &unk_1DAED57E0);
  LODWORD(v45) = swift_getEnumCaseMultiPayload();
  sub_1DAD64398(v48, &unk_1ECC07D30, &unk_1DAED57E0);
  if (v45)
  {
    goto LABEL_16;
  }

  if ([v20 contentType] != 2)
  {
LABEL_26:
    v82 = v85;

    sub_1DADB0000(0, a2, v21, v20, v97, v94);
  }

  else
  {
LABEL_16:
    if (qword_1EE008AD8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC08188 == 1 && (v49 = [v20 widget], v50 = objc_msgSend(v49, sel_extensionIdentity), v49, LODWORD(v49) = objc_msgSend(v50, sel_isRemote), v50, v49) && objc_msgSend(v39, sel_contentType) == 2)
    {
      v51 = v85;

      v52 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69941E8] code:4001 userInfo:0];
      BSDispatchQueueAssertMain();
      sub_1DADC5B84(a2, v21, v39, v97, v94, v52);
    }

    else
    {
      v55 = swift_allocObject();
      v96 = v55;
      v84 = a2;
      *(v55 + 16) = 0;
      v93 = (v55 + 16);
      v56 = *&v38[v40];

      v57 = v85;

      v58 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher);

      aBlock[0] = v58;
      v59 = swift_allocObject();
      *(v59 + 16) = v39;
      *(v59 + 24) = v57;
      v60 = v39;
      v95 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC083D0, qword_1DAED6780);
      sub_1DAD64B94(&qword_1EE005C88, &unk_1ECC083D0, qword_1DAED6780);
      v61 = v87;
      sub_1DAECEF9C();

      sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
      v62 = sub_1DAED20EC();
      aBlock[0] = v62;
      v63 = sub_1DAED20AC();
      v64 = v89;
      (*(*(v63 - 8) + 56))(v89, 1, 1, v63);
      sub_1DAD64B94(&qword_1EE005DB0, &qword_1ECC083C0, &qword_1DAED6768);
      sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610);
      v65 = v90;
      v66 = v86;
      sub_1DAECEFBC();
      sub_1DAD64398(v64, &unk_1ECC07D20, &unk_1DAED57D0);

      (*(v88 + 8))(v61, v66);
      v67 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v68 = swift_allocObject();
      v69 = v84;
      v68[2] = v67;
      v68[3] = v69;
      v68[4] = v21;
      v68[5] = v60;
      v70 = v96;
      v71 = v97;
      v72 = v94;
      v68[6] = v97;
      v68[7] = v72;
      v68[8] = v70;
      sub_1DAD64B94(&qword_1EE005D00, &qword_1ECC083C8, &unk_1DAED6770);
      v73 = v60;
      v21;

      v89 = v69;

      v74 = v92;
      v75 = sub_1DAECF00C();

      (*(v91 + 8))(v65, v74);
      v76 = v93;
      swift_beginAccess();
      v77 = *v76;
      *v76 = v75;

      v78 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v79 = swift_allocObject();
      v79[2] = v78;
      v79[3] = v73;
      v79[4] = v71;
      v79[5] = v72;
      v79[6] = v75;
      aBlock[4] = sub_1DADE6398;
      aBlock[5] = v79;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DAD751C0;
      aBlock[3] = &block_descriptor_152;
      v80 = _Block_copy(aBlock);
      swift_retain_n();
      v81 = v73;

      [v89 setNullificationHandler_];
      _Block_release(v80);
      swift_beginAccess();

      sub_1DADC3638(&v98, v75);
      swift_endAccess();
    }
  }
}

uint64_t sub_1DADAF310()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADAF348()
{

  return swift_deallocObject();
}

uint64_t sub_1DADAF388()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1DADAF3F0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1DAED241C();
    v5 = v4;
    v6 = sub_1DAED24DC();
    v8 = v7;
    v9 = MEMORY[0x1E127E0C0](v3, v5, v6, v7);
    sub_1DADAE050(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1DADAE050(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_1DAED23DC();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1DADA7D44(v3, v5, v2 != 0, a1, &unk_1EE00A880, 0x1E698E5F0);
  v13 = v12;
  sub_1DADAE050(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_1DADAF570(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09990, &qword_1DAEDAB08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DADB2F58();
  sub_1DAED29AC();
  if (!v1)
  {
    (*(v4 + 8))(v7, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DADAF698(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DAD70BB4(a1, a2);
  }

  return a1;
}

uint64_t sub_1DADAF81C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_1DADAF8A8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_1DAECDC1C();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_1DADAF698(v4, v9);
}

void sub_1DADAF954(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(char *, void *))
{
  v11 = *(a4 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue);
  BSDispatchQueueAssert();
  if (a2 >> 60 == 15)
  {
    if (!a3)
    {
      if (qword_1EE005E90 != -1)
      {
        swift_once();
      }

      v12 = sub_1DAECEDEC();
      __swift_project_value_buffer(v12, qword_1EE0117F0);
      v13 = a5;
      v14 = sub_1DAECEDCC();
      v15 = sub_1DAED201C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138543362;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&dword_1DAD61000, v14, v15, "Error subscribing to session %{public}@: unknown response", v16, 0xCu);
        sub_1DAD64398(v17, &qword_1ECC07CF0, &qword_1DAED57A0);
        MEMORY[0x1E127F100](v17, -1, -1);
        MEMORY[0x1E127F100](v16, -1, -1);
      }

      v45 = 1;
      a6(&v45, 0);
      return;
    }

    goto LABEL_9;
  }

  if (a3)
  {
LABEL_9:
    v19 = a3;
    v20 = a3;
    v21 = a3;
    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v22 = sub_1DAECEDEC();
    __swift_project_value_buffer(v22, qword_1EE0117F0);
    v23 = a5;
    v24 = a3;
    v25 = sub_1DAECEDCC();
    v26 = sub_1DAED201C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543618;
      *(v27 + 4) = v23;
      *v28 = v23;
      *(v27 + 12) = 2114;
      v29 = v23;
      v30 = v19;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v31;
      v28[1] = v31;
      _os_log_impl(&dword_1DAD61000, v25, v26, "Error subscribing to session %{public}@: %{public}@", v27, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CF0, &qword_1DAED57A0);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v28, -1, -1);
      MEMORY[0x1E127F100](v27, -1, -1);
    }

    v44 = 1;
    v32 = v19;
    a6(&v44, v19);

    return;
  }

  v33 = sub_1DAECDACC();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_1DADAFE40(a1, a2);
  sub_1DAECDABC();
  sub_1DADAE064();
  sub_1DAECDAAC();

  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v36 = sub_1DAECEDEC();
  __swift_project_value_buffer(v36, qword_1EE0117F0);
  v37 = a5;
  v38 = sub_1DAECEDCC();
  v39 = sub_1DAED200C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138543362;
    *(v40 + 4) = v37;
    *v41 = v37;
    v42 = v37;
    _os_log_impl(&dword_1DAD61000, v38, v39, "Successfully subscribed to session: %{public}@", v40, 0xCu);
    sub_1DAD64398(v41, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v41, -1, -1);
    MEMORY[0x1E127F100](v40, -1, -1);
  }

  v43[0] = 0;
  a6(v43, 0);
  sub_1DADAF698(a1, a2);
}

uint64_t sub_1DADAFE40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1DADAFE9C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a2;
  v8[4] = sub_1DADA7378;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DAD751C0;
  v8[3] = &block_descriptor_87;
  v6 = _Block_copy(v8);

  v7 = a2;

  BSDispatchMain();
  _Block_release(v6);
}

uint64_t sub_1DADAFF78()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t objectdestroy_195Tm()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

void sub_1DADB0000(void *a1, void *a2, char *a3, void *a4, uint64_t a5, unint64_t a6)
{
  BSDispatchQueueAssertMain();
  if (a1)
  {

    sub_1DADC5B84(a2, a3, a4, a5, a6, a1);
    return;
  }

  v12 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection;
  v13 = *&a3[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
    if (v14)
    {
      v15 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
      swift_beginAccess();
      v16 = *&v14[v15];
      type metadata accessor for SecureHostingController();
      sub_1DAD8E1BC(qword_1EE00AFA0, type metadata accessor for SecureHostingController);
      v17 = v14;
      v18 = v16;
      if (sub_1DAECF9AC())
      {
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (!v19)
        {

          swift_unknownObjectRelease();
          goto LABEL_13;
        }

        [v19 setNeedsSynchronousUpdate_];
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_13:
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v20 = sub_1DAECEDEC();
  __swift_project_value_buffer(v20, qword_1EE011748);
  v21 = a4;
  v22 = a3;
  v23 = sub_1DAECEDCC();
  v24 = sub_1DAED203C();

  if (os_log_type_enabled(v23, v24))
  {
    v39 = a6;
    v40 = a5;
    v38 = v14;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v41 = v26;
    *v25 = 136446210;
    v27 = *&a3[v12];
    if (v27)
    {
      v28 = (v27 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
      v29 = *v28;
      v30 = v28[1];
    }

    else
    {
      v31 = v21;
      v29 = sub_1DAD8CE78(v31);
      v30 = v32;
    }

    v33 = sub_1DAD6482C(v29, v30, &v41);

    *(v25 + 4) = v33;
    _os_log_impl(&dword_1DAD61000, v23, v24, "[%{public}s] Waiting on SwiftUI layout", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1E127F100](v26, -1, -1);
    MEMORY[0x1E127F100](v25, -1, -1);

    v14 = v38;
    a6 = v39;
    a5 = v40;
  }

  else
  {
  }

  sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  v34 = swift_allocObject();
  v34[2] = v22;
  v34[3] = v21;
  v34[4] = a2;
  v34[5] = a5;
  v34[6] = a6;
  v34[7] = 0;
  v35 = v21;
  v36 = v22;
  v37 = a2;

  sub_1DAED22FC();
}

uint64_t sub_1DADB03C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099E0, &qword_1DAEDB3D8);
  v5 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099E8, &qword_1DAEDB3E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099F0, &qword_1DAEDB3E8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099F8, &qword_1DAEDB3F0);
  v16 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A00, &qword_1DAEDB3F8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  v23 = [a2 filterStyle];
  if ((v23 - 3) < 4)
  {
    goto LABEL_2;
  }

  if (v23 == 7)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A08, &qword_1DAEDB400);
    (*(*(v29 - 8) + 16))(v15, a1, v29);
    swift_storeEnumTagMultiPayload();
    sub_1DAD64B94(qword_1EE008E08, &qword_1ECC09A00, &qword_1DAEDB3F8);
    sub_1DAD64B94(&qword_1EE0058E8, &qword_1ECC09A08, &qword_1DAEDB400);
    sub_1DAECFB1C();
    v27 = &qword_1ECC099F8;
    v28 = &qword_1DAEDB3F0;
    sub_1DAD6495C(v18, v11, &qword_1ECC099F8, &qword_1DAEDB3F0);
    swift_storeEnumTagMultiPayload();
    sub_1DADB0964();
    sub_1DAD64B94(qword_1EE008D80, &qword_1ECC099E0, &qword_1DAEDB3D8);
    sub_1DAECFB1C();
    v24 = v18;
    goto LABEL_7;
  }

  if (v23)
  {
    sub_1DAE46454(a1, a2, v7);
    v27 = &qword_1ECC099E0;
    v28 = &qword_1DAEDB3D8;
    sub_1DAD6495C(v7, v11, &qword_1ECC099E0, &qword_1DAEDB3D8);
    swift_storeEnumTagMultiPayload();
    sub_1DADB0964();
    sub_1DAD64B94(qword_1EE008D80, &qword_1ECC099E0, &qword_1DAEDB3D8);
    sub_1DAECFB1C();
    v24 = v7;
LABEL_7:
    v25 = v27;
    v26 = v28;
    return sub_1DAD64398(v24, v25, v26);
  }

LABEL_2:
  v31 = v8;
  sub_1DAE46804(a1, a2, v22);
  sub_1DAD6495C(v22, v15, &qword_1ECC09A00, &qword_1DAEDB3F8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A08, &qword_1DAEDB400);
  sub_1DAD64B94(qword_1EE008E08, &qword_1ECC09A00, &qword_1DAEDB3F8);
  sub_1DAD64B94(&qword_1EE0058E8, &qword_1ECC09A08, &qword_1DAEDB400);
  sub_1DAECFB1C();
  sub_1DAD6495C(v18, v11, &qword_1ECC099F8, &qword_1DAEDB3F0);
  swift_storeEnumTagMultiPayload();
  sub_1DADB0964();
  sub_1DAD64B94(qword_1EE008D80, &qword_1ECC099E0, &qword_1DAEDB3D8);
  sub_1DAECFB1C();
  sub_1DAD64398(v18, &qword_1ECC099F8, &qword_1DAEDB3F0);
  v24 = v22;
  v25 = &qword_1ECC09A00;
  v26 = &qword_1DAEDB3F8;
  return sub_1DAD64398(v24, v25, v26);
}

unint64_t sub_1DADB0964()
{
  result = qword_1EE0059C0;
  if (!qword_1EE0059C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC099F8, &qword_1DAEDB3F0);
    sub_1DAD64B94(qword_1EE008E08, &qword_1ECC09A00, &qword_1DAEDB3F8);
    sub_1DAD64B94(&qword_1EE0058E8, &qword_1ECC09A08, &qword_1DAEDB400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0059C0);
  }

  return result;
}

uint64_t sub_1DADB0A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1DADB0CE0(v7, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1DADB0D44(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09218, &qword_1DAED9198);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09220, &qword_1DAED91A0);
  v12 = (a3 + *(result + 36));
  *v12 = sub_1DADAE0B8;
  v12[1] = v9;
  return result;
}

uint64_t sub_1DADB0BA0()
{
  v1 = *(type metadata accessor for WidgetURLReaderModifier(0) - 8);
  v2 = *(v1 + 64);
  v3 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v4 = *v3;

  v5 = *(v3 + 1);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091C0, &qword_1DAED8E80) + 32);
  v7 = sub_1DAECDBFC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&v3[v6], 1, v7))
  {
    (*(v8 + 8))(&v3[v6], v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1DADB0CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetURLReaderModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADB0D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetURLReaderModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DADB0DA8()
{
  v1 = v0;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v2 = sub_1DAECE0AC();

  if ((v2 & 1) != 0 && v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshotting] == 1)
  {
    v3 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshottingView;
    v4 = *&v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshottingView];
    if (!v4)
    {
      sub_1DAED060C();
      sub_1DAED067C();

      v5 = [objc_allocWithZone(type metadata accessor for TouchPassThroughView()) init];
      [v0 bounds];
      [v5 setFrame_];
      sub_1DAEB2B7C();

      v6 = sub_1DAED226C();
      [v5 setBackgroundColor_];

      v7 = *&v1[v3];
      *&v1[v3] = v5;
      v8 = v5;

      [v1 addSubview_];
      v4 = *&v1[v3];
      if (!v4)
      {
        goto LABEL_60;
      }
    }

    v9 = v4;
    [v1 bounds];
    [v9 setFrame_];

    if (!*&v1[v3])
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    [v1 bringSubviewToFront_];
  }

  else
  {
    v10 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshottingView;
    v11 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshottingView];
    if (v11)
    {
      [v11 removeFromSuperview];
      v12 = *&v1[v10];
    }

    else
    {
      v12 = 0;
    }

    *&v1[v10] = 0;
  }

  sub_1DAECE1AC();
  v13 = sub_1DAECE0BC();

  if ((v13 & 1) != 0 && v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplay] == 1)
  {
    v14 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplayView;
    v15 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplayView];
    if (v15)
    {
      goto LABEL_65;
    }

    sub_1DAED065C();
    sub_1DAED067C();

    v16 = [objc_allocWithZone(type metadata accessor for TouchPassThroughView()) init];
    [v1 bounds];
    [v16 setFrame_];
    sub_1DAEB2B7C();

    v17 = sub_1DAED226C();
    [v16 setBackgroundColor_];

    v18 = *&v1[v14];
    *&v1[v14] = v16;
    v19 = v16;

    [v1 addSubview_];
    v15 = *&v1[v14];
    if (v15)
    {
LABEL_65:
      v20 = v15;
      [v1 bounds];
      [v20 setFrame_];

      if (*&v1[v14])
      {
        [v1 bringSubviewToFront_];
        goto LABEL_21;
      }
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v21 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplayView;
  v22 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplayView];
  if (v22)
  {
    [v22 removeFromSuperview];
    v23 = *&v1[v21];
  }

  else
  {
    v23 = 0;
  }

  *&v1[v21] = 0;

LABEL_21:
  sub_1DAECE1AC();
  v24 = sub_1DAECE0DC();

  if ((v24 & 1) != 0 && v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPaused] == 1)
  {
    v25 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPausedView;
    v26 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPausedView];
    if (v26)
    {
      goto LABEL_66;
    }

    sub_1DAED061C();
    sub_1DAED067C();

    v27 = [objc_allocWithZone(type metadata accessor for TouchPassThroughView()) init];
    [v1 bounds];
    [v27 setFrame_];
    sub_1DAEB2B7C();

    v28 = sub_1DAED226C();
    [v27 setBackgroundColor_];

    v29 = *&v1[v25];
    *&v1[v25] = v27;
    v30 = v27;

    [v1 addSubview_];
    v26 = *&v1[v25];
    if (v26)
    {
LABEL_66:
      v31 = v26;
      [v1 bounds];
      [v31 setFrame_];

      if (*&v1[v25])
      {
        [v1 bringSubviewToFront_];
        goto LABEL_31;
      }
    }

LABEL_62:
    __break(1u);
    return;
  }

  v32 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPausedView;
  v33 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPausedView];
  if (v33)
  {
    [v33 removeFromSuperview];
    v34 = *&v1[v32];
  }

  else
  {
    v34 = 0;
  }

  *&v1[v32] = 0;

LABEL_31:
  if (!os_variant_has_internal_ui() || v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationState] != 2 || (sub_1DAECE1AC(), v35 = sub_1DAECE16C(), , (v35 & 1) == 0))
  {
    v47 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationView;
    v48 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationView];
    if (v48)
    {
      [v48 removeFromSuperview];
      v46 = *&v1[v47];
    }

    else
    {
      v46 = 0;
    }

    *&v1[v47] = 0;
    goto LABEL_41;
  }

  v36 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationView;
  v37 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationView];
  if (v37)
  {
    goto LABEL_36;
  }

  v38 = [objc_allocWithZone(type metadata accessor for TouchPassThroughView()) init];
  v39 = *&v1[v36];
  *&v1[v36] = v38;
  v40 = v38;

  v41 = v40;
  [v1 addSubview_];
  [v41 setFrame_];
  v42 = [v41 layer];

  [v42 setCornerRadius_];
  [v1 bringSubviewToFront_];

  v37 = *&v1[v36];
  if (v37)
  {
LABEL_36:
    v43 = objc_opt_self();
    v44 = v37;
    v45 = [v43 redColor];
    v46 = [v45 colorWithAlphaComponent_];

    [v44 setBackgroundColor_];
LABEL_41:
  }

  v49 = &v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugText];
  if (!*&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugText + 8] || (sub_1DAECE1AC(), v50 = sub_1DAECDFDC(), , (v50 & 1) == 0))
  {
    v58 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugTextView;
    v59 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugTextView];
    if (v59)
    {
      [v59 removeFromSuperview];
      v59 = *&v1[v58];
    }

    *&v1[v58] = 0;
    goto LABEL_56;
  }

  v51 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugTextView;
  v52 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugTextView];
  if (v52)
  {
    goto LABEL_67;
  }

  v53 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v54 = [objc_opt_self() systemFontOfSize_];
  [v53 setFont_];

  [v53 setTextAlignment_];
  if (*(v49 + 1))
  {
    v55 = *v49;
    v56 = *(v49 + 1);

    v57 = sub_1DAED1CBC();
  }

  else
  {
    v57 = 0;
  }

  [v53 setText_];

  v60 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.75];
  [v53 setTextColor_];

  v61 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v62 = v53;
  v63 = [v61 initWithWhite:0.9 alpha:0.75];
  [v62 setBackgroundColor_];

  v64 = [v62 layer];
  [v64 setCornerCurve_];

  v65 = [v62 layer];
  [v65 setCornerRadius_];

  [v62 setClipsToBounds_];
  [v62 setAutoresizingMask_];

  v66 = *&v1[v51];
  *&v1[v51] = v62;
  v67 = v62;

  [v1 addSubview_];
  v52 = *&v1[v51];
  if (v52)
  {
LABEL_67:
    if (*(v49 + 1))
    {
      v68 = *v49;
      v69 = v52;

      v70 = sub_1DAED1CBC();
    }

    else
    {
      v71 = v52;
      v70 = 0;
    }

    [v52 setText_];

    v76 = v52;
    [v1 bounds];
    [v76 sizeThatFits_];
    v78.size.width = v74;
    v78.size.height = v75;
    v78.origin.x = 0.0;
    v78.origin.y = 0.0;
    v79 = CGRectInset(v78, -4.0, -4.0);
    [v76 setBounds_];
    [v1 bounds];
    BSRectGetCenter();
    [v76 setCenter_];

    [v1 bringSubviewToFront_];
    v59 = v76;
LABEL_56:
  }
}

uint64_t sub_1DADB17F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DADB1850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DAECF33C();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v2;
  v11 = *(v2 + 8);
  [v10 _effectiveCornerRadius];
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = *(v6 + 28);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1DAECF99C();
  (*(*(v16 - 8) + 104))(v9 + v14, v15, v16);
  *v9 = v13;
  v9[1] = v13;
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09100, &unk_1DAED8760) + 36);
  sub_1DADB1A4C(v9, v17);
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FA8, &qword_1DAED8508) + 36)) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09108, &qword_1DAED8770);
  (*(*(v18 - 8) + 16))(a2, a1, v18);
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09110, &qword_1DAED8778) + 36);
  sub_1DAED169C();
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09118, &unk_1DAED8780) + 36);
  sub_1DADB1AB0(v9, v20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09060, &qword_1DAED85E8);
  *(v20 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1DADB1A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAECF33C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADB1AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAECF33C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADB1B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091D0, &qword_1DAED9120) + 36));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091D8, &qword_1DAED9128);
  v8 = *(v7 + 28);
  v9 = sub_1DAECF1CC();
  v10 = *(*(v9 - 8) + 16);
  v10(v6 + v8, v2, v9);
  *v6 = KeyPath;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091E0, &qword_1DAED9130);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = swift_getKeyPath();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091E8, &qword_1DAED9168) + 36));
  result = (v10)(v13 + *(v7 + 28), v2, v9);
  *v13 = v12;
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DADB1D30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_1DAECF08C();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091F0, &qword_1DAED9170);
  v8 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v39 - v9;
  v10 = sub_1DAECF8EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091F8, &qword_1DAED9178);
  v44 = *(v46 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v17 = &v39 - v16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09200, &qword_1DAED9180);
  v45 = *(v47 - 8);
  v18 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v39 - v19;
  v56 = *(v1 + 40);
  v55 = *(v1 + 32);
  if (HIBYTE(v56) != 1)
  {

    sub_1DAED202C();
    v20 = sub_1DAED001C();
    sub_1DAECECEC();

    sub_1DAECF8DC();
    swift_getAtKeyPath();
    sub_1DAD64398(&v55, &qword_1ECC09208, &qword_1DAED9188);
    (*(v11 + 8))(v14, v10);
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09210, &qword_1DAED9190);
  v39 = sub_1DAD64B94(&qword_1EE00BE40, &qword_1ECC09210, &qword_1DAED9190);
  sub_1DAED042C();
  v21 = v7;
  sub_1DAECF07C();
  v22 = *(v1 + 8);
  v23 = *(v1 + 24);
  v24 = swift_allocObject();
  v25 = v2[1];
  v24[1] = *v2;
  v24[2] = v25;
  *(v24 + 42) = *(v2 + 26);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1DAD93D0C;
  *(v26 + 24) = v24;
  sub_1DAD6495C(&v55, &v51, &qword_1ECC09208, &qword_1DAED9188);

  v27 = v48;
  v28 = v41;
  sub_1DAED08BC();

  (*(v42 + 8))(v21, v28);
  v29 = swift_allocObject();
  v30 = v2[1];
  v29[1] = *v2;
  v29[2] = v30;
  *(v29 + 42) = *(v2 + 26);
  v31 = v49;
  v32 = *(v49 + 52);
  sub_1DAD6495C(&v55, &v51, &qword_1ECC09208, &qword_1DAED9188);

  sub_1DAECF25C();
  sub_1DAECF0CC();
  v51 = v40;
  v52 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_1DAD64B94(&unk_1EE00AB90, &qword_1ECC091F0, &qword_1DAED9170);
  v35 = v43;
  v36 = v46;
  sub_1DAED055C();
  sub_1DAD64398(v27, &qword_1ECC091F0, &qword_1DAED9170);
  (*(v44 + 8))(v17, v36);
  v51 = v36;
  v52 = v31;
  v53 = OpaqueTypeConformance2;
  v54 = v34;
  swift_getOpaqueTypeConformance2();
  v37 = v47;
  sub_1DAED042C();
  return (*(v45 + 8))(v35, v37);
}

uint64_t sub_1DADB23A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADB23E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DADB2450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DADB24E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09988, &qword_1DAEDAB00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DADB2F58();
  sub_1DAED29BC();
  return (*(v3 + 8))(v6, v2);
}

void sub_1DADB25F8(int a1, int a2)
{
  v58 = a1;
  v59 = a2;
  v3 = sub_1DAECFBAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1DAECFC7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v56[3] = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v56 - v13;
  v60 = sub_1DAECFC4C();
  isa = v60[-1].isa;
  v16 = *(isa + 8);
  v17 = MEMORY[0x1EEE9AC00](v60);
  v57 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v56 - v19;
  v21 = objc_opt_self();
  if ([v21 isSupported])
  {
    v56[0] = v21;
    v22 = type metadata accessor for SecureHostingController();
    sub_1DAD730A4(qword_1EE00AFA0, type metadata accessor for SecureHostingController);
    v56[1] = v22;
    v56[2] = v2;
    sub_1DAECF9CC();
    sub_1DAECFC5C();
    (*(v9 + 8))(v14, v8);
    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x1E697FF98])
    {
      (*(v4 + 96))(v7, v3);
      v23 = *v7;
      v24 = swift_projectBox();
      v25 = isa;
      v26 = v60;
      (*(isa + 2))(v20, v24, v60);

      v27 = sub_1DAECFBFC();
      v28 = sub_1DAECFC1C();
      (*(isa + 1))(v20, v26);
      v30 = v58;
      v29 = v59;
      if ((v27 ^ v58) & 1) != 0 || ((v28 ^ v59))
      {
        goto LABEL_15;
      }
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v26 = v60;
      v25 = isa;
      v30 = v58;
      v29 = v59;
      if (v58 & 1) != 0 || (v59)
      {
LABEL_15:
        v35 = v57;
        sub_1DAECFC3C();
        sub_1DAECFC0C();
        sub_1DAECFC2C();
        if (qword_1EE00BE80 != -1)
        {
          swift_once();
        }

        v36 = sub_1DAECEDEC();
        __swift_project_value_buffer(v36, qword_1EE011C08);
        v37 = sub_1DAECEDCC();
        v38 = sub_1DAED200C();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 67240448;
          *(v39 + 4) = v30 & 1;
          *(v39 + 8) = 1026;
          *(v39 + 10) = v29 & 1;
          _os_log_impl(&dword_1DAD61000, v37, v38, "RenderBox hosting configured - async? %{BOOL,public}d, opaque: %{BOOL,public}d", v39, 0xEu);
          MEMORY[0x1E127F100](v39, -1, -1);
        }

        [v56[0] setAllowsRenderingInBackground_];
        v40 = [objc_opt_self() standardUserDefaults];
        v41 = sub_1DAED1CBC();
        v42 = [v40 objectForKey_];

        if (v42)
        {
          sub_1DAED238C();
          swift_unknownObjectRelease();
        }

        else
        {
          v66 = 0u;
          v67 = 0u;
        }

        aBlock = v66;
        v63 = v67;
        if (*(&v67 + 1))
        {
          sub_1DAD674D4(0, &qword_1EE005470, 0x1E696AD98);
          if (swift_dynamicCast())
          {
            v43 = v61;
            [v61 intValue];

            LOBYTE(aBlock) = 0;
            sub_1DAECFBEC();
          }
        }

        else
        {
          sub_1DAD64398(&aBlock, &qword_1ECC0A3A0, &qword_1DAEDFE30);
        }

        sub_1DAECFBBC();
        sub_1DAECF9DC();
        v44 = sub_1DAECF9BC();
        sub_1DAECFBDC();
        v44(&aBlock, 0);
        if (sub_1DAECF9AC())
        {
          objc_opt_self();
          v45 = swift_dynamicCastObjCClass();
          if (v45)
          {
            v46 = v45;
            [v45 setNeedsSynchronousUpdate_];
            [v46 setNeedsDisplay];
            v47 = [v46 statisticsHandler];
            if (v47)
            {
              v48 = v47;
              swift_unknownObjectRelease();
              _Block_release(v48);
            }

            else
            {
              v52 = sub_1DAECEDCC();
              v53 = sub_1DAED200C();
              if (os_log_type_enabled(v52, v53))
              {
                v54 = swift_slowAlloc();
                *v54 = 0;
                _os_log_impl(&dword_1DAD61000, v52, v53, "Attaching layer statistics handler", v54, 2u);
                MEMORY[0x1E127F100](v54, -1, -1);
              }

              [v46 resetStatistics:11 alpha:0.0];
              v64 = nullsub_1;
              v65 = 0;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              *&v63 = sub_1DADB7C8C;
              *(&v63 + 1) = &block_descriptor_21;
              v55 = _Block_copy(&aBlock);
              [v46 setStatisticsHandler_];
              _Block_release(v55);
              swift_unknownObjectRelease();
            }

LABEL_34:
            (*(v25 + 1))(v35, v26);
            return;
          }

          swift_unknownObjectRelease();
        }

        v49 = sub_1DAECEDCC();
        v50 = sub_1DAED203C();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_1DAD61000, v49, v50, "RenderBox unable to attach layer statistics", v51, 2u);
          MEMORY[0x1E127F100](v51, -1, -1);
        }

        goto LABEL_34;
      }
    }
  }

  else
  {
    if (qword_1EE00BE80 != -1)
    {
      swift_once();
    }

    v31 = sub_1DAECEDEC();
    __swift_project_value_buffer(v31, qword_1EE011C08);
    v60 = sub_1DAECEDCC();
    v32 = sub_1DAED203C();
    if (os_log_type_enabled(v60, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 67240192;
      _os_log_impl(&dword_1DAD61000, v60, v32, "RenderBox hosting disabled (isSupported=%{BOOL,public}d)", v33, 8u);
      MEMORY[0x1E127F100](v33, -1, -1);
    }

    v34 = v60;
  }
}

unint64_t sub_1DADB2F58()
{
  result = qword_1EE00B478[0];
  if (!qword_1EE00B478[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE00B478);
  }

  return result;
}

uint64_t type metadata accessor for SecureHostingController()
{
  result = qword_1EE00BF20;
  if (!qword_1EE00BF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DADB2FF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v30 - v10;
  v12 = *(a1 + 72);
  if (v12)
  {
    v31 = *(a1 + 64);
    v32 = result;
    v13 = (a1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModel);
    v33 = v9;
    sub_1DAD648F8(a1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModel, v35);
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);

    v14 = sub_1DAED11AC();
    sub_1DAE3A88C(v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v15 = v13[3];
    v16 = __swift_project_boxed_opaque_existential_1(v13, v15);
    v30 = &v30;
    v17 = *(v15 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x1EEE9AC00](v16);
    v20 = &v30 - v19;
    (*(v17 + 16))(&v30 - v19);
    v21 = sub_1DAED11CC();
    (*(v17 + 8))(v20, v15);
    v35[0] = v21;
    sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
    v22 = sub_1DAED20EC();
    v34 = v22;
    v23 = sub_1DAED20AC();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
    sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850);
    sub_1DAD88828();
    sub_1DAECEFBC();
    sub_1DAD64398(v5, &unk_1ECC07D20, &unk_1DAED57D0);

    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v26 = v31;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v12;
    sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0);
    v27 = v32;
    v28 = sub_1DAECF00C();

    (*(v33 + 8))(v11, v27);
    v29 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModelSubscriber);
    *(a1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModelSubscriber) = v28;
  }

  return result;
}

uint64_t sub_1DADB342C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADB3464()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DADB34A4(uint64_t a1)
{
  v51 = a1;
  v2 = sub_1DAED12CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v46 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v48 = &v43[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v43[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08850, &qword_1DAED7280);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v43[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09950, &qword_1DAEDA880);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v43[-v22];
  v24 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity;
  swift_beginAccess();
  v25 = *(v20 + 56);
  v50 = v1;
  v47 = v24;
  v26 = v1 + v24;
  v27 = v51;
  sub_1DAD6495C(v26, v23, &qword_1ECC08850, &qword_1DAED7280);
  sub_1DAD6495C(v27, &v23[v25], &qword_1ECC08850, &qword_1DAED7280);
  v52 = v3;
  v28 = *(v3 + 48);
  if (v28(v23, 1, v2) == 1)
  {
    if (v28(&v23[v25], 1, v2) == 1)
    {
      return sub_1DAD64398(v23, &qword_1ECC08850, &qword_1DAED7280);
    }

    goto LABEL_6;
  }

  sub_1DAD6495C(v23, v18, &qword_1ECC08850, &qword_1DAED7280);
  if (v28(&v23[v25], 1, v2) == 1)
  {
    (*(v52 + 8))(v18, v2);
LABEL_6:
    sub_1DAD64398(v23, &qword_1ECC09950, &qword_1DAEDA880);
    goto LABEL_7;
  }

  v34 = v45;
  (*(v52 + 32))(v45, &v23[v25], v2);
  sub_1DAE3B004(&qword_1EE005760, MEMORY[0x1E6993F18]);
  v44 = sub_1DAED1CAC();
  v35 = *(v52 + 8);
  v35(v34, v2);
  v35(v18, v2);
  result = sub_1DAD64398(v23, &qword_1ECC08850, &qword_1DAED7280);
  if ((v44 & 1) == 0)
  {
LABEL_7:
    sub_1DAD6495C(v27, v16, &qword_1ECC08850, &qword_1DAED7280);
    v29 = &unk_1EE008000;
    if (v28(v16, 1, v2) == 1)
    {
      sub_1DAD64398(v16, &qword_1ECC08850, &qword_1DAED7280);
      v30 = v52;
      v31 = v50;
      v23 = v49;
      goto LABEL_19;
    }

    v30 = v52;
    (*(v52 + 32))(v48, v16, v2);
    v31 = v50;
    v32 = v50 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
    swift_beginAccess();
    v23 = v49;
    if (*(v32 + 24))
    {
      sub_1DAD648F8(v32, &v55);
      if (*(&v56 + 1))
      {
LABEL_11:
        sub_1DAD648F8(&v55, v53);
        if (*(&v56 + 1))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v55);
        }

        __swift_project_boxed_opaque_existential_1(v53, v54);
        v33 = v48;
        sub_1DAED115C();
        (*(v30 + 8))(v33, v2);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        v29 = &unk_1EE008000;
        goto LABEL_19;
      }
    }

    else
    {
      v37 = *(v32 + 16);
      v55 = *v32;
      v56 = v37;
      v57 = *(v32 + 32);
      if (*(&v37 + 1))
      {
        goto LABEL_11;
      }
    }

    (*(v30 + 8))(v48, v2);
    if (*(&v56 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v55);
    }

LABEL_19:
    sub_1DAD6495C(v31 + v47, v23, &qword_1ECC08850, &qword_1DAED7280);
    if (v28(v23, 1, v2) == 1)
    {
      return sub_1DAD64398(v23, &qword_1ECC08850, &qword_1DAED7280);
    }

    v38 = v46;
    (*(v30 + 32))(v46, v23, v2);
    v39 = v31 + v29[289];
    swift_beginAccess();
    if (*(v39 + 24))
    {
      sub_1DAD648F8(v39, &v55);
      if (*(&v56 + 1))
      {
LABEL_23:
        sub_1DAD648F8(&v55, v53);
        if (*(&v56 + 1))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v55);
        }

        __swift_project_boxed_opaque_existential_1(v53, v54);
        v40 = *(v31 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession);
        sub_1DAED115C();
        (*(v30 + 8))(v38, v2);
        v41 = v53;
        return __swift_destroy_boxed_opaque_existential_1Tm(v41);
      }
    }

    else
    {
      v42 = *(v39 + 16);
      v55 = *v39;
      v56 = v42;
      v57 = *(v39 + 32);
      if (*(&v42 + 1))
      {
        goto LABEL_23;
      }
    }

    result = (*(v30 + 8))(v38, v2);
    if (!*(&v56 + 1))
    {
      return result;
    }

    v41 = &v55;
    return __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  return result;
}

uint64_t type metadata accessor for VisibilityPolicyController()
{
  result = qword_1EE006758;
  if (!qword_1EE006758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DADB3BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v41 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  v15 = *(v14 - 8);
  v43 = v14;
  v44 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  v19 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__visibility;
  v20 = sub_1DAECE55C();
  (*(*(v20 - 8) + 56))(v5 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__metricsAggregator;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__metricsAggregator) = 0;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__hasBeenVisiblySettledForCurrentVisibilitySession) = 0;
  v42 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__timelineReloadedNotificationCancellable;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__timelineReloadedNotificationCancellable) = 0;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer) = 0;
  swift_weakInit();
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__invalidated) = 0;
  swift_weakAssign();
  v22 = *(v5 + v21);
  *(v5 + v21) = a3;

  v23 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logger;
  v40 = sub_1DAECEDEC();
  v24 = *(v40 - 8);
  (*(v24 + 16))(v5 + v23, a4, v40);
  v25 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
  v26 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);
  v27 = (v5 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
  *v27 = v25;
  v27[1] = v26;
  sub_1DAD648F8(a2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v46);
  v28 = v47;
  v29 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  v30 = *(v29 + 16);

  v31 = v30(v28, v29);
  v32 = sub_1DAED0BFC();

  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  v46[0] = v32;
  sub_1DAD84C40();
  v33 = sub_1DAED20EC();
  v45 = v33;
  v34 = sub_1DAED20AC();
  (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850);
  sub_1DADB40C4(&qword_1EE00AA40, sub_1DAD84C40);
  sub_1DAECEFBC();
  sub_1DAD64398(v13, &unk_1ECC07D20, &unk_1DAED57D0);

  swift_allocObject();
  swift_weakInit();
  sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0);
  v35 = v43;
  v36 = sub_1DAECF00C();

  (*(v44 + 8))(v18, v35);
  v37 = *(v5 + v42);
  *(v5 + v42) = v36;

  sub_1DAD6CF04();
  (*(v24 + 8))(v41, v40);
  return v5;
}

uint64_t sub_1DADB40C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DADB410C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1DAED294C();
  sub_1DAED1D9C();
  v7 = sub_1DAED297C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DAED289C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1DADB4204(char a1)
{
  v1[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__isSnapshotting] = a1;
  v3 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent;
  swift_beginAccess();
  if (v1[v3] == 1)
  {
    v4 = *&v1[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__rootViewModel];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    if (v24 != (a1 & 1))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v24) = a1 & 1;

      sub_1DAECEF4C();
      if (qword_1EE00BE80 != -1)
      {
        swift_once();
      }

      v5 = sub_1DAECEDEC();
      __swift_project_value_buffer(v5, qword_1EE011C08);
      v6 = v1;
      v7 = sub_1DAECEDCC();
      v8 = sub_1DAED203C();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v24 = v10;
        *v9 = 136446722;
        v11 = [v6 description];
        v12 = sub_1DAED1CEC();
        v14 = v13;

        v15 = sub_1DAD6482C(v12, v14, &v24);

        *(v9 + 4) = v15;
        *(v9 + 12) = 2082;
        v16 = [*&v6[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_widget] _loggingIdentifierWithMetrics_];
        v17 = sub_1DAED1CEC();
        v19 = v18;

        v20 = sub_1DAD6482C(v17, v19, &v24);

        *(v9 + 14) = v20;
        *(v9 + 22) = 2082;
        if (a1)
        {
          v21 = 1702195828;
        }

        else
        {
          v21 = 0x65736C6166;
        }

        if (a1)
        {
          v22 = 0xE400000000000000;
        }

        else
        {
          v22 = 0xE500000000000000;
        }

        v23 = sub_1DAD6482C(v21, v22, &v24);

        *(v9 + 24) = v23;
        _os_log_impl(&dword_1DAD61000, v7, v8, "%{public}s - %{public}s - isSnapshotting = %{public}s", v9, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v10, -1, -1);
        MEMORY[0x1E127F100](v9, -1, -1);
      }
    }
  }
}

uint64_t sub_1DADB4574(char a1)
{
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v3 = sub_1DAECEDEC();
  __swift_project_value_buffer(v3, qword_1EE011748);
  v4 = v1;
  v5 = sub_1DAECEDCC();
  v6 = sub_1DAED203C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446466;
    v9 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
    v10 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

    v11 = sub_1DAD6482C(v9, v10, &v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    if (a1)
    {
      v12 = 0x726170736E617274;
    }

    else
    {
      v12 = 0x65757161706FLL;
    }

    if (a1)
    {
      v13 = 0xEB00000000746E65;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    v14 = sub_1DAD6482C(v12, v13, &v21);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1DAD61000, v5, v6, "[%{public}s] Connection transparency did change to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v8, -1, -1);
    MEMORY[0x1E127F100](v7, -1, -1);
  }

  v15 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
  if (v15)
  {
    v16 = v15;
    sub_1DAEC70C4(a1 & 1);
  }

  v17 = &v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *(v17 + 1);
    ObjectType = swift_getObjectType();
    (*(v19 + 16))(v4, a1 & 1, ObjectType, v19);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1DADB47F4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window);
  if (v2)
  {
    if (a1)
    {
      v3 = v2;
      v4 = 0;
    }

    else
    {
      v5 = objc_opt_self();
      v6 = v2;
      v4 = [v5 systemBackgroundColor];
    }

    v7 = v4;
    [v2 setBackgroundColor_];
  }
}

void sub_1DADB48A4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene) canAppearInSecureEnvironment];
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
  if ((v1 & 1) == 0)
  {
    if (!v2)
    {
      return;
    }

    v6 = [v2 view];
    if (v6)
    {
      v4 = v6;
      v5 = 64;
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    return;
  }

  if (!v2)
  {
    return;
  }

  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = 0;
LABEL_8:
  v7 = [v4 layer];

  [v7 setDisableUpdateMask_];
}