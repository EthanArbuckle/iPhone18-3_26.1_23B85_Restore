uint64_t sub_1DAE9E678(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(_BYTE *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v17[-v13];
  v15 = *a4;
  swift_beginAccess();
  sub_1DAD6495C(v5 + v15, v14, a2, a3);
  swift_beginAccess();
  sub_1DAD901C4(a1, v5 + v15, a2, a3);
  swift_endAccess();
  a5(v14);
  sub_1DAD64398(a1, a2, a3);
  return sub_1DAD64398(v14, a2, a3);
}

void (*sub_1DAE9E794(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v9, v8, &qword_1ECC07CE8, &qword_1DAED6F60);
  return sub_1DAE9E8C4;
}

void sub_1DAE9E8EC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void *))
{
  v8 = *a1;
  v9 = *(*a1 + 96);
  v10 = *(*a1 + 104);
  v11 = *(*a1 + 80);
  v12 = *(*a1 + 88);
  v13 = *(*a1 + 72);
  if (a2)
  {
    sub_1DAD6495C(*(*a1 + 96), v12, a3, a4);
    sub_1DAD6495C(v13 + v10, v11, a3, a4);
    swift_beginAccess();
    sub_1DAD901C4(v12, v13 + v10, a3, a4);
    swift_endAccess();
    a5(v11);
    sub_1DAD64398(v11, a3, a4);
  }

  else
  {
    sub_1DAD6495C(v13 + v10, v12, a3, a4);
    swift_beginAccess();
    sub_1DAD901C4(v9, v13 + v10, a3, a4);
    swift_endAccess();
    a5(v12);
  }

  sub_1DAD64398(v12, a3, a4);
  sub_1DAD64398(v9, a3, a4);
  free(v9);
  free(v12);
  free(v11);

  free(v8);
}

void sub_1DAE9EA5C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_1DAD9A058();
}

id sub_1DAE9EAC4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1DAE9EB18(void *a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1DAD9A058();
}

void (*sub_1DAE9EB84(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1DAE9EC20;
}

void sub_1DAE9EC20(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  v11 = v3[4];
  if (a2)
  {
    v12 = v9;
    sub_1DAD9A058();

    v10 = *v5;
  }

  else
  {
    sub_1DAD9A058();
  }

  free(v3);
}

uint64_t sub_1DAE9ECBC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t sub_1DAE9ED2C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1DAE9ED7C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

void (*sub_1DAE9EE7C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v9, v8, &qword_1ECC08360, &unk_1DAED6570);
  return sub_1DAE9EFAC;
}

void *sub_1DAE9EFD4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1DAE9F040(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1DAE9F0DC;
}

uint64_t sub_1DAE9F0F4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersPlaceholderContent;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAE9F150(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersPlaceholderContent;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9F1E4;
}

void *sub_1DAE9F1FC()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1DAE9F268(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1DAE9F304;
}

uint64_t sub_1DAE9F31C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_showsWidgetLabel;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1DAE9F378(char a1, uint64_t *a2, const char *a3, char a4)
{
  v9 = *a2;
  swift_beginAccess();
  v10 = *(v4 + v9);
  *(v4 + v9) = a1;
  sub_1DAD95924(v10, a2, a3, a4);
}

void (*sub_1DAE9F3EC(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_showsWidgetLabel;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAE9F480;
}

void sub_1DAE9F498(uint64_t a1, uint64_t a2, uint64_t *a3, const char *a4, char a5)
{
  v5 = *a1;
  v7 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  v9 = *(v7 + v6);
  *(v7 + v6) = v8;
  sub_1DAD95924(v9, a3, a4, a5);

  free(v5);
}

void sub_1DAE9F4EC(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(void *))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;
  v11 = v7;
  a6(v10);
}

void *sub_1DAE9F560()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DAE9F5CC(void *a1, uint64_t *a2, void (*a3)(void *))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;
  a3(v7);
}

void (*sub_1DAE9F644(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1DAE9F6E0;
}

void sub_1DAE9F6F8(uint64_t a1, char a2, void (*a3)(void *))
{
  v5 = *a1;
  v7 = (*a1 + 24);
  v6 = *v7;
  v9 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  v10 = *(v9 + v8);
  *(v9 + v8) = *v7;
  v11 = v6;
  v12 = v11;
  v13 = v5[4];
  if (a2)
  {
    v14 = v11;
    a3(v10);

    v10 = *v7;
  }

  else
  {
    a3(v10);
  }

  free(v5);
}

void (*sub_1DAE9F7F4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08368, &unk_1DAEDE2B0) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v9, v8, &qword_1ECC08368, &unk_1DAEDE2B0);
  return sub_1DAE9F924;
}

uint64_t sub_1DAE9F94C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAE9F990(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DAE9FA40@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v11, v10, &unk_1ECC07D30, &unk_1DAED57E0);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_1DAD64398(v10, &unk_1ECC07D30, &unk_1DAED57E0);
    v13 = sub_1DAECDBFC();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    sub_1DADB62CC(v10, v6, type metadata accessor for DefaultWidgetLiveViewEntry);
    DefaultWidgetLiveViewEntry.widgetURL.getter(a1);
    return sub_1DADB6334(v6, type metadata accessor for DefaultWidgetLiveViewEntry);
  }
}

uint64_t DefaultWidgetLiveViewEntry.widgetURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D0, &qword_1DAEDE260);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DADB6264(v2, v21, type metadata accessor for DefaultWidgetLiveViewEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DADB62CC(v21, v15, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v22 = &v15[*(v11 + 20)];
    sub_1DAED194C();
    v23 = sub_1DAED165C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v8, 1, v23) == 1)
    {
      sub_1DADB6334(v15, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      sub_1DAD64398(v8, &qword_1ECC088D0, &qword_1DAEDE260);
      v25 = sub_1DAECDBFC();
      return (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
    }

    else
    {
      sub_1DAED164C();
      sub_1DADB6334(v15, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      return (*(v24 + 8))(v8, v23);
    }
  }

  else
  {
    v27 = *v21;

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    sub_1DADB62CC(v21 + *(v28 + 48), v17, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v29 = &v17[*(v11 + 20)];
    sub_1DAED194C();
    v30 = sub_1DAED165C();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v10, 1, v30) == 1)
    {
      sub_1DADB6334(v17, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      sub_1DAD64398(v10, &qword_1ECC088D0, &qword_1DAEDE260);
      v32 = sub_1DAECDBFC();
      (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
    }

    else
    {
      sub_1DAED164C();
      sub_1DADB6334(v17, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      (*(v31 + 8))(v10, v30);
    }

    return sub_1DAD64398(v21 + *(v28 + 64), &qword_1ECC088D8, &qword_1DAED72D0);
  }
}

void sub_1DAEA007C(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsIndependentLayerSeparation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  BSDispatchQueueAssertMain();
  if (v4 != *(v1 + v3))
  {
    v5 = 28;
    sub_1DAD8EC1C(&v5);
  }
}

void (*sub_1DAEA00F0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsIndependentLayerSeparation;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAEA0184;
}

void sub_1DAEA0184(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 40);
  BSDispatchQueueAssertMain();
  v7 = v6 ^ *(v5 + v4);
  if (a2)
  {
    if (((v6 ^ *(v5 + v4)) & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = v3[3];
    v11 = 28;
    v9 = &v11;
  }

  else
  {
    if (((v6 ^ *(v5 + v4)) & 1) == 0)
    {
      goto LABEL_7;
    }

    v10 = v3[3];
    v12 = 28;
    v9 = &v12;
  }

  sub_1DAD8EC1C(v9);
LABEL_7:

  free(v3);
}

uint64_t sub_1DAEA0258(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = *(*(v13 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = a6(a1, v19, a3, a4, a5, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v21;
}

uint64_t sub_1DAEA0380()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = 10;
    sub_1DAD8EC1C(&v1);
  }

  return result;
}

void LiveWidgetEntryViewModel.deinit()
{
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__invalidated) == 1)
  {
    v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__allowsInternalTapTargets;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
    v3 = *(*(v2 - 8) + 8);
    v3(v0 + v1, v2);
    v3(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isInteractionDisabled, v2);
    v3(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__clipToShape, v2);
    v3(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__baseContentTouchedDown, v2);
    v3(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isFocal, v2);
    v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__launchRequestHandler;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D58, &qword_1DAEDE100);
    (*(*(v5 - 8) + 8))(v0 + v4, v5);
    v6 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__interactionHandler;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D50, &unk_1DAED5800);
    (*(*(v7 - 8) + 8))(v0 + v6, v7);
    v3(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isPendingInteractionUpdate, v2);
    v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__backgroundViewBuilder;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D48, &qword_1DAEDE1F0);
    (*(*(v9 - 8) + 8))(v0 + v8, v9);
    v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__renderingScale;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D40, &unk_1DAED57F0);
    (*(*(v11 - 8) + 8))(v0 + v10, v11);
    v12 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewEntryWillChangePublisher);

    v13 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryWillChangePublisher);

    v14 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewEntryDidChangePublisher);

    v15 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher);

    sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry, &unk_1ECC07D30, &unk_1DAED57E0);
    v3(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__animationsPaused, v2);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider));
    v16 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
    v17 = sub_1DAECF8EC();
    (*(*(v17 - 8) + 8))(v0 + v16, v17);
    v18 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__contentTransparencyDidChangePublisher);

    v19 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
    v20 = sub_1DAECF0AC();
    (*(*(v20 - 8) + 8))(v0 + v19, v20);
    sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme, &qword_1ECC08370, &unk_1DAED6580);
    v21 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_keybagLockPolicy;
    v22 = sub_1DAECE21C();
    (*(*(v22 - 8) + 8))(v0 + v21, v22);
    v23 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__overrideDateDidChangePublisher);

    v24 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDateDidChangePublisher);

    sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate, &qword_1ECC07CE8, &qword_1DAED6F60);

    v25 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__idealizedDateComponentsDidChangePublisher);

    v26 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponentsDidChangePublisher);

    sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents, &qword_1ECC08360, &unk_1DAED6570);

    sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity, &qword_1ECC08368, &unk_1DAEDE2B0);
    sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_currentActionURL, &unk_1ECC09EC0, &qword_1DAED7970);
    v27 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

    v28 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
    v29 = sub_1DAECEDEC();
    (*(*(v29 - 8) + 8))(v0 + v28, v29);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource));
    sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__placeholderSource, &unk_1ECC07D90, &unk_1DAED5840);
    v30 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewableEntryCache);

    v31 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__cancellable);

    v32 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityPolicy));
    v33 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__dataProtectionMonitor));
    v34 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__descriptorDidChangeSubscription);

    v35 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__batchedChangeReasons);
  }

  else
  {
    __break(1u);
  }
}

uint64_t LiveWidgetEntryViewModel.__deallocating_deinit()
{
  LiveWidgetEntryViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAEA0A10()
{
  v1 = v0;
  v2 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - v17;
  v19 = sub_1DAECDBFC();
  v54 = *(v19 - 8);
  v20 = *(v54 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v51 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v52 = &v51 - v23;
  v24 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v24, v9, &unk_1ECC07D30, &unk_1DAED57E0);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_1DAD64398(v9, &unk_1ECC07D30, &unk_1DAED57E0);
    v25 = v54;
    (*(v54 + 56))(v18, 1, 1, v19);
  }

  else
  {
    sub_1DADB62CC(v9, v5, type metadata accessor for DefaultWidgetLiveViewEntry);
    DefaultWidgetLiveViewEntry.widgetURL.getter(v18);
    sub_1DADB6334(v5, type metadata accessor for DefaultWidgetLiveViewEntry);
    v25 = v54;
  }

  v26 = *(v25 + 48);
  if (v26(v18, 1, v19) == 1)
  {
    sub_1DAD64398(v18, &unk_1ECC09EC0, &qword_1DAED7970);
    v27 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_currentActionURL;
    swift_beginAccess();
    sub_1DAD6495C(v1 + v27, v14, &unk_1ECC09EC0, &qword_1DAED7970);
    if (v26(v14, 1, v19) == 1)
    {
      sub_1DAD64398(v14, &unk_1ECC09EC0, &qword_1DAED7970);

      v28 = sub_1DAECEDCC();
      v29 = sub_1DAED203C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v55 = v31;
        *v30 = 136446210;
        *(v30 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v55);
        _os_log_impl(&dword_1DAD61000, v28, v29, "[%{public}s] Launching with no widgetURL", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        v32 = v31;
        v25 = v54;
        MEMORY[0x1E127F100](v32, -1, -1);
        MEMORY[0x1E127F100](v30, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1DAECEF3C();

      v34 = v55;
      if (v55)
      {
        LOBYTE(v55) = 0;
        v35 = v53;
        (*(v25 + 56))(v53, 1, 1, v19);
        (v34)(&v55, v35);
        sub_1DAD660D8(v34);
        return sub_1DAD64398(v35, &unk_1ECC09EC0, &qword_1DAED7970);
      }
    }

    else
    {
      v43 = v51;
      (*(v25 + 32))(v51, v14, v19);

      v44 = sub_1DAECEDCC();
      v45 = sub_1DAED203C();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v55 = v47;
        *v46 = 136446210;
        *(v46 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v55);
        _os_log_impl(&dword_1DAD61000, v44, v45, "[%{public}s] Launching from legacy widgetURL", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        v48 = v47;
        v25 = v54;
        MEMORY[0x1E127F100](v48, -1, -1);
        MEMORY[0x1E127F100](v46, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1DAECEF3C();

      v49 = v55;
      if (v55)
      {
        LOBYTE(v55) = 1;
        v50 = v53;
        (*(v25 + 16))(v53, v43, v19);
        (*(v25 + 56))(v50, 0, 1, v19);
        (v49)(&v55, v50);
        sub_1DAD660D8(v49);
        sub_1DAD64398(v50, &unk_1ECC09EC0, &qword_1DAED7970);
      }

      return (*(v25 + 8))(v43, v19);
    }
  }

  else
  {
    v36 = v52;
    (*(v25 + 32))(v52, v18, v19);

    v37 = sub_1DAECEDCC();
    v38 = sub_1DAED203C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v56 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v56);
      _os_log_impl(&dword_1DAD61000, v37, v38, "[%{public}s] Launching from widgetURL", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1E127F100](v40, -1, -1);
      MEMORY[0x1E127F100](v39, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    v41 = v56;
    if (v56)
    {
      LOBYTE(v56) = 1;
      v42 = v53;
      (*(v25 + 16))(v53, v36, v19);
      (*(v25 + 56))(v42, 0, 1, v19);
      (v41)(&v56, v42);
      sub_1DAD660D8(v41);
      sub_1DAD64398(v42, &unk_1ECC09EC0, &qword_1DAED7970);
    }

    return (*(v25 + 8))(v36, v19);
  }

  return result;
}

void sub_1DAEA1304()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__invalidated) = 1;
  v2 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__descriptorDidChangeSubscription;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__descriptorDidChangeSubscription))
  {

    sub_1DAECEE2C();

    v3 = *(v0 + v2);
  }

  *(v0 + v2) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource);
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource) = 0;

  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable))
  {
    v6 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable);

    sub_1DAECEE2C();

    v7 = *(v0 + v5);
  }

  *(v0 + v5) = 0;

  v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__cancellable;
  swift_beginAccess();
  v30 = v8;
  v9 = *(v1 + v8);
  if ((v9 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *(v1 + v8);
    }

    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAECEE3C();
    sub_1DAD900EC(&qword_1EE005C50, MEMORY[0x1E695BF10]);
    sub_1DAED1F9C();
    v12 = v31[5];
    v11 = v31[6];
    v13 = v31[7];
    v14 = v31[8];
    v15 = v31[9];
  }

  else
  {
    v16 = -1 << *(v9 + 32);
    v11 = v9 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v9 + 56);
    swift_bridgeObjectRetain_n();
    v14 = 0;
    v12 = v9;
  }

  v19 = (v13 + 64) >> 6;
  if (v12 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v20 = v14;
    v21 = v15;
    v22 = v14;
    if (!v15)
    {
      break;
    }

LABEL_18:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v12 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));

    if (!v24)
    {
LABEL_24:
      sub_1DAD70B20();

      v25 = *(v1 + v30);
      *(v1 + v30) = MEMORY[0x1E69E7CD0];

      swift_getKeyPath();
      swift_getKeyPath();

      sub_1DAECEF4C();
      swift_getKeyPath();
      swift_getKeyPath();
      v31[0] = 0;
      v31[1] = 0;

      sub_1DAECEF4C();
      BSDispatchQueueAssertMain();

      v26 = sub_1DAECEDCC();
      v27 = sub_1DAED200C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v31[0] = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v31);
        _os_log_impl(&dword_1DAD61000, v26, v27, "[%{public}s] backgroundViewBuilder changed", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x1E127F100](v29, -1, -1);
        MEMORY[0x1E127F100](v28, -1, -1);
      }

      return;
    }

    while (1)
    {
      sub_1DAECEE2C();

      v14 = v22;
      v15 = v23;
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_1DAED24BC())
      {
        sub_1DAECEE3C();
        swift_dynamicCast();
        v22 = v14;
        v23 = v15;
        if (v31[0])
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      goto LABEL_24;
    }

    v21 = *(v11 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1DAEA1740(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    v5[2] = v4;
    v5[3] = a1;
    v5[4] = a2;
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1DADE631C;
    *(v6 + 24) = v5;
    sub_1DADCA8EC(a1);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
  }

  return sub_1DAECEF4C();
}

uint64_t sub_1DAEA1888(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16[-v10];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v13 + v14, v11, &unk_1ECC07D30, &unk_1DAED57E0);
    sub_1DAD7C48C(v11, v9, &unk_1ECC07D30, &unk_1DAED57E0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1DAD64398(v9, &unk_1ECC07D30, &unk_1DAED57E0);
    if (EnumCaseMultiPayload != 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1DAECEF3C();

      if ((v17 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v17 = 1;

        sub_1DAECEF4C();
      }

      a3(a1);
    }
  }

  return result;
}

uint64_t sub_1DAEA1A98(uint64_t (*a1)(uint64_t))
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__inBatch;
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__inBatch) = 1;
  v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__batchedChangeReasons;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + v5) = MEMORY[0x1E69E7CC0];

  result = a1(v8);
  *(v1 + v4) = 0;
  if (*(*(v1 + v5) + 16))
  {

    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v21);
      *(v12 + 12) = 2082;
      v14 = *(v2 + v5);

      v16 = MEMORY[0x1E127DB00](v15, &type metadata for LiveWidgetViewChangeReason);
      v18 = v17;

      v19 = sub_1DAD6482C(v16, v18, &v21);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] Ending batch update with reasons: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);
    }

    LOBYTE(v21) = 21;
    sub_1DAD8EC1C(&v21);
    v20 = *(v2 + v5);
    *(v2 + v5) = v7;
  }

  return result;
}

void sub_1DAEA1C9C(uint64_t a1)
{
  sub_1DAD648F8(a1, v3);
  v2 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityPolicy;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v2));
  sub_1DAD657D8(v3, v1 + v2);
  swift_endAccess();
  LOBYTE(v3[0]) = 27;
  sub_1DAD8EC1C(v3);
}

uint64_t sub_1DAEA1D10(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;

  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED203C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v16);
    _os_log_impl(&dword_1DAD61000, v8, v9, "[%{public}s] Launching from system URL", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E127F100](v11, -1, -1);
    MEMORY[0x1E127F100](v10, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  v12 = v16;
  if (v16)
  {
    LOBYTE(v16) = 2;
    v13 = sub_1DAECDBFC();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v7, a1, v13);
    (*(v14 + 56))(v7, 0, 1, v13);
    (v12)(&v16, v7);
    sub_1DAD660D8(v12);
    sub_1DAD64398(v7, &unk_1ECC09EC0, &qword_1DAED7970);
  }

  return 1;
}

void sub_1DAEA1F7C()
{
  v1 = v0;
  BSDispatchQueueAssertMain();
  v21 = &type metadata for FeatureFlags.Widgets;
  v22 = sub_1DAD7C1DC();
  LOBYTE(v20[0]) = 16;
  v2 = sub_1DAECDF5C();
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
  sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v20);
  v4 = v21;
  v5 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = sub_1DAED0B8C();

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  if (v7)
  {
    v8 = [v7 isBackgroundRemovable];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  sub_1DAD648F8(v1 + v3, v20);
  v10 = v21;
  v11 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v12 = (*(v11 + 16))(v10, v11);
  v13 = sub_1DAED0B8C();

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  if (v13)
  {
    v14 = [v13 spatialSurface];

    LOBYTE(v13) = v14 == 1;
    if (v9 & 1 | ((v2 & 1) == 0))
    {
      v15 = 0;
      goto LABEL_11;
    }

LABEL_8:
    v16 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers;
    swift_beginAccess();
    if (*(v1 + v16) == 1)
    {
      v15 = v13 ^ 1;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_11;
  }

  v15 = 0;
  if (!(v9 & 1 | ((v2 & 1) == 0)))
  {
    goto LABEL_8;
  }

LABEL_11:
  v17 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsIndependentLayerSeparation;
  swift_beginAccess();
  v18 = *(v1 + v17);
  *(v1 + v17) = v15;
  BSDispatchQueueAssertMain();
  if (v18 != *(v1 + v17))
  {
    v19 = 28;
    sub_1DAD8EC1C(&v19);
  }
}

void sub_1DAEA2184(uint64_t a1)
{
  v2[4] = sub_1DAEA8568;
  v2[5] = a1;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1DAD751C0;
  v2[3] = &block_descriptor_18;
  v1 = _Block_copy(v2);

  BSRunLoopPerformAfterCACommit();
  _Block_release(v1);
}

uint64_t sub_1DAEA223C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(a1 + v9, v8, &unk_1ECC07D30, &unk_1DAED57E0);
  sub_1DAD7C48C(v8, v6, &unk_1ECC07D30, &unk_1DAED57E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1DAD64398(v6, &unk_1ECC07D30, &unk_1DAED57E0);
  if (EnumCaseMultiPayload != 2)
  {
    *(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasEverBeenNonEmpty) = 1;
  }

  return result;
}

uint64_t DefaultWidgetLiveViewEntry.containsPrivacyRedactions.getter()
{
  v1 = v0;
  v2 = sub_1DAED19AC();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D0, &qword_1DAEDE260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D8, &qword_1DAED72D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v55 - v26;
  v28 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DADB6264(v1, v31, type metadata accessor for DefaultWidgetLiveViewEntry);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v36 = *v31;

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v38 = *(v37 + 64);
    sub_1DADB62CC(v31 + *(v37 + 48), v27, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DAD7C48C(v31 + v38, v19, &qword_1ECC088D8, &qword_1DAED72D0);
    sub_1DAD6495C(v19, v16, &qword_1ECC088D8, &qword_1DAED72D0);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      v39 = &qword_1ECC088D8;
      v40 = &qword_1DAED72D0;
      v41 = v16;
    }

    else
    {
      v44 = v59;
      v43 = v60;
      v45 = v57;
      (*(v59 + 16))(v57, &v16[*(v20 + 20)], v60);
      sub_1DADB6334(v16, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      v46 = v58;
      sub_1DAED194C();
      (*(v44 + 8))(v45, v43);
      v47 = sub_1DAED165C();
      v48 = *(v47 - 8);
      v49 = *(v48 + 48);
      if (v49(v46, 1, v47) != 1)
      {
        v51 = sub_1DAED162C();
        v52 = *(v48 + 8);
        v52(v46, v47);
        if (v51)
        {
          v53 = &v27[*(v20 + 20)];
          v54 = v56;
          sub_1DAED194C();
          if (v49(v54, 1, v47) != 1)
          {
            v42 = sub_1DAED162C();
            sub_1DAD64398(v19, &qword_1ECC088D8, &qword_1DAED72D0);
            sub_1DADB6334(v27, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
            v52(v54, v47);
            return v42 & 1;
          }

          sub_1DAD64398(v19, &qword_1ECC088D8, &qword_1DAED72D0);
          sub_1DADB6334(v27, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
          v35 = v54;
          goto LABEL_4;
        }

LABEL_11:
        sub_1DAD64398(v19, &qword_1ECC088D8, &qword_1DAED72D0);
        sub_1DADB6334(v27, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
        goto LABEL_12;
      }

      v39 = &qword_1ECC088D0;
      v40 = &qword_1DAEDE260;
      v41 = v46;
    }

    sub_1DAD64398(v41, v39, v40);
    goto LABEL_11;
  }

  sub_1DADB62CC(v31, v24, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
  v32 = &v24[*(v20 + 20)];
  sub_1DAED194C();
  v33 = sub_1DAED165C();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v8, 1, v33) == 1)
  {
    sub_1DADB6334(v24, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v35 = v8;
LABEL_4:
    sub_1DAD64398(v35, &qword_1ECC088D0, &qword_1DAEDE260);
LABEL_12:
    v42 = 0;
    return v42 & 1;
  }

  v42 = sub_1DAED162C();
  sub_1DADB6334(v24, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
  (*(v34 + 8))(v8, v33);
  return v42 & 1;
}

uint64_t DefaultWidgetLiveViewEntry.entryData.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DADB6264(v1, v9, type metadata accessor for DefaultWidgetLiveViewEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DADB62CC(v9, v5, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v10 = &v5[*(v2 + 20)];
    v11 = sub_1DAED198C();
    sub_1DADB6334(v5, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
  }

  else
  {
    v12 = *v9;

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v14 = *(v13 + 64);
    sub_1DADB62CC(v9 + *(v13 + 48), v5, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v15 = &v5[*(v2 + 20)];
    v11 = sub_1DAED198C();
    sub_1DADB6334(v5, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DAD64398(v9 + v14, &qword_1ECC088D8, &qword_1DAED72D0);
  }

  return v11;
}

uint64_t sub_1DAEA2C28(uint64_t a1)
{
  v2 = sub_1DAED15DC();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1DAECF72C();
}

uint64_t ViewableTimelineEntry.containsPrivacyRedactions.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D0, &qword_1DAEDE260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1DAED194C();
  v4 = sub_1DAED165C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1DAD64398(v3, &qword_1ECC088D0, &qword_1DAEDE260);
    v6 = 0;
  }

  else
  {
    v6 = sub_1DAED162C();
    (*(v5 + 8))(v3, v4);
  }

  return v6 & 1;
}

uint64_t sub_1DAEA2E10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAED197C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAEA2E3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D0, &qword_1DAEDE260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1DAED194C();
  v4 = sub_1DAED165C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1DAD64398(v3, &qword_1ECC088D0, &qword_1DAEDE260);
    v6 = 0;
  }

  else
  {
    v6 = sub_1DAED162C();
    (*(v5 + 8))(v3, v4);
  }

  return v6 & 1;
}

uint64_t EnvironmentWrappedViewableTimelineEntry.environmentValues.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DAECF8EC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EnvironmentWrappedViewableTimelineEntry.viewableTimelineEntry.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0) + 20);
  v4 = sub_1DAED19AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DAEA3040@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DAEA3070(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t (**a8)(void))
{
  v14 = *(a7 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - v20;
  (*(v14 + 32))(&v28 - v20, v19);
  v22 = type metadata accessor for LiveWidgetEntryViewModel(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  (*(v14 + 16))(v17, v21, a7);
  v26 = sub_1DAEA32DC(a1, v17, a3, a4, a5, v25, a7, a8);
  (*(v14 + 8))(v21, a7);
  return v26;
}

uint64_t sub_1DAEA31EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DAEA3214()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DAEA323C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1DAEA3274()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_1DAEA32AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1DAEA32DC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t (**a8)(void))
{
  v334 = a5;
  v335 = a4;
  v336 = a3;
  v341 = a1;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CF8, &qword_1DAED57A8);
  v316 = *(v317 - 8);
  v12 = *(v316 + 64);
  MEMORY[0x1EEE9AC00](v317);
  v315 = &v287 - v13;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D00, &unk_1DAED57B0);
  v319 = *(v320 - 8);
  v14 = *(v319 + 64);
  MEMORY[0x1EEE9AC00](v320);
  v318 = &v287 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D08, &qword_1DAEDCB80);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v333 = &v287 - v18;
  v332 = sub_1DAED22EC();
  v340 = *(v332 - 8);
  v19 = *(v340 + 64);
  MEMORY[0x1EEE9AC00](v332);
  v331 = &v287 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D10, &qword_1DAED57C0);
  v310 = *(v311 - 8);
  v21 = *(v310 + 64);
  MEMORY[0x1EEE9AC00](v311);
  v309 = &v287 - v22;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D18, &qword_1DAED57C8);
  v313 = *(v314 - 8);
  v23 = *(v313 + 64);
  MEMORY[0x1EEE9AC00](v314);
  v312 = &v287 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v325 = &v287 - v27;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  v339 = *(v327 - 8);
  v28 = *(v339 + 64);
  MEMORY[0x1EEE9AC00](v327);
  v326 = &v287 - v29;
  v323 = sub_1DAECDCEC();
  v322 = *(v323 - 8);
  v30 = *(v322 + 64);
  MEMORY[0x1EEE9AC00](v323);
  v289 = &v287 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v32 = *(*(v321 - 8) + 64);
  MEMORY[0x1EEE9AC00](v321);
  v299 = (&v287 - v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v302 = &v287 - v36;
  v301 = sub_1DAED0DDC();
  v337 = *(v301 - 8);
  v37 = *(v337 + 64);
  MEMORY[0x1EEE9AC00](v301);
  v300 = &v287 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = sub_1DAECF8EC();
  v329 = *(v330 - 8);
  v39 = *(v329 + 64);
  MEMORY[0x1EEE9AC00](v330);
  v328 = &v287 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D40, &unk_1DAED57F0);
  v305 = *(v306 - 8);
  v41 = *(v305 + 64);
  MEMORY[0x1EEE9AC00](v306);
  v298 = &v287 - v42;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D48, &qword_1DAEDE1F0);
  v295 = *(v296 - 8);
  v43 = *(v295 + 64);
  MEMORY[0x1EEE9AC00](v296);
  v294 = &v287 - v44;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D50, &unk_1DAED5800);
  v292 = *(v293 - 8);
  v45 = *(v292 + 64);
  MEMORY[0x1EEE9AC00](v293);
  v291 = &v287 - v46;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D58, &qword_1DAEDE100);
  v47 = *(v290 - 1);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v290);
  v50 = &v287 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v338 = *(v51 - 8);
  v52 = v338;
  v53 = *(v338 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v287 - v54;
  v349[3] = a7;
  v349[4] = a8;
  v308 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v349);
  v57 = *(*(a7 - 8) + 32);
  v304 = boxed_opaque_existential_1;
  v307 = a7;
  v57(boxed_opaque_existential_1, a2, a7);
  v58 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__allowsInternalTapTargets;
  LOBYTE(v346) = 0;
  sub_1DAECEEFC();
  v59 = *(v52 + 32);
  v303 = v58;
  v59(a6 + v58, v55, v51);
  v60 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isInteractionDisabled;
  LOBYTE(v346) = 0;
  sub_1DAECEEFC();
  v59(a6 + v60, v55, v51);
  v61 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__clipToShape;
  v297 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__clipToShape;
  LOBYTE(v346) = 0;
  sub_1DAECEEFC();
  v59(a6 + v61, v55, v51);
  v62 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__baseContentTouchedDown;
  LOBYTE(v346) = 0;
  sub_1DAECEEFC();
  v59(a6 + v62, v55, v51);
  v63 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isFocal;
  LOBYTE(v346) = 0;
  sub_1DAECEEFC();
  v59(a6 + v63, v55, v51);
  v64 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__launchRequestHandler;
  v346 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D68, &unk_1DAEDE610);
  sub_1DAECEEFC();
  (*(v47 + 32))(a6 + v64, v50, v290);
  v65 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__interactionHandler;
  v346 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D70, &unk_1DAED5820);
  v66 = v291;
  sub_1DAECEEFC();
  (*(v292 + 32))(a6 + v65, v66, v293);
  v67 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isPendingInteractionUpdate;
  LOBYTE(v346) = 0;
  sub_1DAECEEFC();
  v324 = v51;
  v59(a6 + v67, v55, v51);
  v68 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__backgroundViewBuilder;
  v346 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D78, &unk_1DAEDE620);
  v69 = v294;
  sub_1DAECEEFC();
  (*(v295 + 32))(a6 + v68, v69, v296);
  v70 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__renderingScale;
  *&v346 = 0;
  BYTE8(v346) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D80, &unk_1DAED5830);
  v71 = v298;
  sub_1DAECEEFC();
  (*(v305 + 32))(a6 + v70, v71, v306);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber) = 0;
  v72 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__animationsPaused;
  LOBYTE(v346) = 0;
  sub_1DAECEEFC();
  v59(a6 + v72, v55, v51);
  v73 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__contentTransparencyDidChangePublisher;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  v298 = v74;
  swift_allocObject();
  *(a6 + v73) = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_contentFromXcodePreviews) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent) = 2;
  v77 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
  v78 = *MEMORY[0x1E697DBB8];
  v79 = sub_1DAECF0AC();
  v80 = *(v79 - 8);
  (*(v80 + 104))(a6 + v77, v78, v79);
  (*(v80 + 56))(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme, 1, 1, v79);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused) = 1;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment) = 0;
  v81 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_keybagLockPolicy;
  v82 = *MEMORY[0x1E6994040];
  v83 = sub_1DAECE21C();
  (*(*(v83 - 8) + 104))(a6 + v81, v82, v83);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay) = 0;
  v295 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers) = 1;
  (*(v322 + 56))(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate, 1, 1, v323);
  v84 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  v294 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  v292 = sub_1DAECDA5C();
  v85 = *(v292 - 8);
  v291 = *(v85 + 56);
  v293 = v85 + 56;
  (v291)(a6 + v84, 1, 1, v292);
  v86 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersPlaceholderContent) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_showsWidgetLabel) = 0;
  v296 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties) = 0;
  v87 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
  v88 = sub_1DAED16FC();
  (*(*(v88 - 8) + 56))(a6 + v87, 1, 1, v88);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsIndependentLayerSeparation) = 0;
  v89 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_currentActionURL;
  v90 = sub_1DAECDBFC();
  (*(*(v90 - 8) + 56))(a6 + v89, 1, 1, v90);
  v288 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canConsumeLaunchRequest;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canConsumeLaunchRequest) = 1;
  v91 = a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__placeholderSource;
  *v91 = 0u;
  *(v91 + 16) = 0u;
  *(v91 + 32) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasEverBeenNonEmpty) = 0;
  v92 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__initializing;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__initializing) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__invalidated) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasLoadedViewOnce) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__needsViewRebuild) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__cancellable) = MEMORY[0x1E69E7CD0];
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__descriptorDidChangeSubscription) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__inBatch) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__batchedChangeReasons) = MEMORY[0x1E69E7CC0];
  *(a6 + v92) = 1;
  v93 = (a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource);
  v94 = v341;
  sub_1DAD648F8(v341, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource);
  sub_1DAD648F8(v349, &v346);
  swift_beginAccess();
  sub_1DAD94438(&v346, v91, &unk_1ECC07D90, &unk_1DAED5840);
  swift_endAccess();
  v95 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
  v96 = sub_1DAECEDEC();
  v305 = *(v96 - 8);
  v97 = *(v305 + 16);
  v306 = v96;
  v97(a6 + v95, v336);
  sub_1DAD648F8(v335, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider);
  sub_1DAD648F8(v334, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__dataProtectionMonitor);
  v98 = type metadata accessor for LiveWidgetEntryViewableEntryCache(0);
  v99 = *(v98 + 48);
  v100 = *(v98 + 52);
  swift_allocObject();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewableEntryCache) = sub_1DAD99324();
  v101 = v94;
  v102 = v94[3];
  v103 = v101[4];
  v104 = v101;
  __swift_project_boxed_opaque_existential_1(v101, v102);
  v105 = (*(v103 + 16))(v102, v103);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v346, v347);
  v106 = v328;
  sub_1DAED10EC();
  (*(v329 + 32))(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues, v106, v330);
  __swift_destroy_boxed_opaque_existential_1Tm(&v346);
  v107 = v104[3];
  v108 = v104[4];
  __swift_project_boxed_opaque_existential_1(v104, v107);
  v109 = (*(v108 + 16))(v107, v108);
  v110 = v300;
  sub_1DAED0C3C();

  v111 = sub_1DAED0DBC();
  v112 = *(v337 + 8);
  v337 += 8;
  v113 = v301;
  v112(v110, v301);
  v114 = [v111 _loggingIdentifierWithoutMetrics];

  v115 = sub_1DAED1CEC();
  v117 = v116;

  v118 = (a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
  *v118 = v115;
  v118[1] = v117;
  v119 = v297;
  swift_beginAccess();
  v120 = *(v338 + 8);
  v338 += 8;
  v290 = v120;
  v120(a6 + v119, v324);
  v345 = 0;
  sub_1DAECEEFC();
  swift_endAccess();
  v121 = v295;
  swift_beginAccess();
  *(a6 + v121) = 0;
  swift_beginAccess();
  v122 = *(a6 + v86);
  *(a6 + v86) = 0;

  v123 = v302;
  (v291)(v302, 1, 1, v292);
  v124 = v294;
  swift_beginAccess();
  sub_1DAD94438(v123, &v124[a6], &qword_1ECC08360, &unk_1DAED6570);
  swift_endAccess();
  v125 = type metadata accessor for DefaultWidgetViewSecurityPolicy();
  v126 = swift_allocObject();
  v127 = (a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityPolicy);
  v127[3] = v125;
  v127[4] = &protocol witness table for DefaultWidgetViewSecurityPolicy;
  *v127 = v126;
  v128 = [objc_allocWithZone(MEMORY[0x1E6994420]) initWithRenderingMode_];
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme) = v128;
  swift_beginAccess();
  v129 = sub_1DAECF79C();
  swift_endAccess();
  v130 = v296;
  swift_beginAccess();
  v131 = *(a6 + v130);
  *(a6 + v130) = v129;

  v132 = v93[3];
  v133 = v93[4];
  v134 = __swift_project_boxed_opaque_existential_1(v93, v132);
  v135 = *(v132 - 8);
  v136 = *(v135 + 64);
  v137 = MEMORY[0x1EEE9AC00](v134);
  v139 = &v287 - v138;
  (*(v135 + 16))(&v287 - v138, v137);
  v140 = (*(v133 + 16))(v132, v133);
  (*(v135 + 8))(v139, v132);
  sub_1DAED0C3C();

  v141 = sub_1DAED0DBC();
  v112(v110, v113);
  v142 = [v141 family];

  v143 = v93[3];
  v144 = v93[4];
  v145 = __swift_project_boxed_opaque_existential_1(v93, v143);
  v146 = *(v143 - 8);
  v147 = *(v146 + 64);
  v148 = MEMORY[0x1EEE9AC00](v145);
  v150 = &v287 - v149;
  (*(v146 + 16))(&v287 - v149, v148);
  v151 = (*(v144 + 16))(v143, v144);
  (*(v146 + 8))(v150, v143);
  v152 = sub_1DAED0B8C();

  [v152 enablesMultipleTapTargets];
  v347 = &type metadata for FeatureFlags.Widgets;
  v348 = sub_1DAD7C1DC();
  LOBYTE(v346) = 4;
  LOBYTE(v152) = sub_1DAECDF5C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v346);
  if (v152)
  {
    v153 = v303;
    swift_beginAccess();
    v290(a6 + v153, v324);
    LOBYTE(v344) = 1;
  }

  else
  {
    v154 = (v142 != 1) & ~CHSWidgetFamilyIsAccessory();
    v155 = v303;
    swift_beginAccess();
    v290(a6 + v155, v324);
    LOBYTE(v344) = v154;
  }

  sub_1DAECEEFC();
  swift_endAccess();
  v156 = v93[3];
  v157 = v93[4];
  v158 = __swift_project_boxed_opaque_existential_1(v93, v156);
  v159 = *(v156 - 8);
  v160 = *(v159 + 64);
  v161 = MEMORY[0x1EEE9AC00](v158);
  v163 = &v287 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v159 + 16))(v163, v161);
  v164 = (*(v157 + 16))(v156, v157);
  (*(v159 + 8))(v163, v156);
  v165 = sub_1DAED0B8C();

  if (v165)
  {
    v166 = [v165 supportsInteraction];

    if ((v166 & 1) == 0)
    {
      *(a6 + v288) = 0;
    }
  }

  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DA0, &unk_1DAEDE7D0);
  v168 = *(v167 + 48);
  v169 = *(v167 + 52);
  swift_allocObject();
  v170 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewEntryWillChangePublisher) = v170;
  *&v346 = v170;
  sub_1DAD64B94(&qword_1EE005C08, &unk_1ECC07DA0, &unk_1DAEDE7D0);
  v303 = v170;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryWillChangePublisher) = sub_1DAECEF6C();
  v171 = *(v167 + 48);
  v172 = *(v167 + 52);
  swift_allocObject();
  v173 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewEntryDidChangePublisher) = v173;
  *&v346 = v173;
  v302 = v173;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher) = sub_1DAECEF6C();
  v174 = v298;
  v175 = *(v298 + 12);
  v176 = *(v298 + 26);
  swift_allocObject();
  v177 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__overrideDateDidChangePublisher) = v177;
  *&v346 = v177;
  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0);
  v301 = v177;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDateDidChangePublisher) = sub_1DAECEF6C();
  v178 = *(v174 + 12);
  v179 = *(v174 + 26);
  swift_allocObject();
  v180 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__idealizedDateComponentsDidChangePublisher) = v180;
  *&v346 = v180;
  v300 = v180;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponentsDidChangePublisher) = sub_1DAECEF6C();
  *&v346 = sub_1DAED064C();
  v181 = sub_1DAED087C();
  v182 = v299;
  *v299 = v181;
  swift_storeEnumTagMultiPayload();
  sub_1DAD7C48C(v182, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry, &unk_1ECC07D30, &unk_1DAED57E0);
  type metadata accessor for _LiveWidgetEntryViewModelSecurityDataSource();
  v183 = swift_allocObject();
  *(v183 + 16) = a6;
  v184 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource) = v183;

  sub_1DAD94D08();
  sub_1DAEA1F7C();
  sub_1DAD94FD8();

  v185 = sub_1DAECEDCC();
  v186 = sub_1DAED200C();

  if (os_log_type_enabled(v185, v186))
  {
    v187 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v344 = v188;
    *v187 = 136446466;
    v189 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
    v190 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

    v191 = sub_1DAD6482C(v189, v190, &v344);

    *(v187 + 4) = v191;
    *(v187 + 12) = 2082;
    v192 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource + 24);
    v193 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource + 32);
    v194 = __swift_project_boxed_opaque_existential_1((a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource), v192);
    v195 = *(v192 - 8);
    v196 = *(v195 + 64);
    v197 = MEMORY[0x1EEE9AC00](v194);
    v199 = &v287 - v198;
    (*(v195 + 16))(&v287 - v198, v197);
    v200 = (*(v193 + 16))(v192, v193);
    (*(v195 + 8))(v199, v192);
    sub_1DAED0B4C();

    if (v347)
    {
      __swift_project_boxed_opaque_existential_1(&v346, v347);
      v201 = v289;
      sub_1DAED177C();
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v202 = qword_1EE00A708;
      v203 = sub_1DAECDC5C();
      v204 = [v202 stringFromDate_];

      v205 = sub_1DAED1CEC();
      v207 = v206;

      (*(v322 + 8))(v201, v323);
      __swift_destroy_boxed_opaque_existential_1Tm(&v346);
    }

    else
    {
      sub_1DAD64398(&v346, &unk_1ECC07DE0, &qword_1DAEDBED0);
      v207 = 0xE900000000000064;
      v205 = 0x6E756F6620746F6ELL;
    }

    v208 = sub_1DAD6482C(v205, v207, &v344);

    *(v187 + 14) = v208;
    _os_log_impl(&dword_1DAD61000, v185, v186, "[%{public}s] initial entry: %{public}s", v187, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v188, -1, -1);
    MEMORY[0x1E127F100](v187, -1, -1);
  }

  sub_1DAD648F8(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v346);
  v209 = v347;
  v210 = v348;
  __swift_project_boxed_opaque_existential_1(&v346, v347);
  v211 = (*(v210 + 16))(v209, v210);
  v212 = sub_1DAED0C0C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v346);
  *&v346 = v212;
  v293 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v213 = sub_1DAED20EC();
  v344 = v213;
  v338 = sub_1DAED20AC();
  v214 = *(v338 - 8);
  v337 = *(v214 + 56);
  v324 = v214 + 56;
  v215 = v325;
  (v337)(v325, 1, 1, v338);
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  v322 = MEMORY[0x1E695BED8];
  v297 = sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850);
  v323 = sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610);
  v216 = v326;
  sub_1DAECEFBC();
  sub_1DAD64398(v215, &unk_1ECC07D20, &unk_1DAED57D0);

  v217 = swift_allocObject();
  swift_weakInit();
  v218 = swift_allocObject();
  *(v218 + 16) = sub_1DADC4FF8;
  *(v218 + 24) = v217;
  v294 = MEMORY[0x1E695BE98];
  v296 = sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0);

  v219 = v327;
  v220 = sub_1DAECF00C();

  v221 = *(v339 + 8);
  v339 += 8;
  v295 = v221;
  v221(v216, v219);
  v222 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__descriptorDidChangeSubscription);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__descriptorDidChangeSubscription) = v220;

  v223 = swift_allocObject();
  v224 = v341;
  v225 = v341[3];
  v226 = v341[4];
  __swift_project_boxed_opaque_existential_1(v341, v225);
  v227 = (*(v226 + 8))(v225, v226);
  swift_beginAccess();
  LOBYTE(v225) = *(v227 + 24);

  *(v223 + 16) = v225;
  v228 = v224[3];
  v229 = v224[4];
  __swift_project_boxed_opaque_existential_1(v224, v228);
  v230 = (*(v229 + 16))(v228, v229);
  v231 = sub_1DAED0BDC();

  v342 = v231;
  v232 = swift_allocObject();
  swift_weakInit();
  sub_1DAD648F8(v224, &v346);
  v233 = swift_allocObject();
  *(v233 + 16) = v232;
  *(v233 + 24) = v223;
  v299 = v223;
  sub_1DAD657D8(&v346, v233 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DC0, &unk_1DAEDE7E0);
  sub_1DAD64B94(&qword_1EE005CB8, &unk_1ECC07DC0, &unk_1DAEDE7E0);
  sub_1DAECF00C();

  v234 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__cancellable;
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v235 = v308[2](v307);
  v236 = sub_1DAED0BDC();

  v342 = v236;
  v237 = swift_allocObject();
  swift_weakInit();
  sub_1DAD648F8(v349, &v346);
  v238 = swift_allocObject();
  *(v238 + 16) = v237;
  sub_1DAD657D8(&v346, v238 + 24);
  sub_1DAECF00C();

  v321 = v234;
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v239 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider + 32);
  __swift_project_boxed_opaque_existential_1((a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider), *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider + 24));
  v288 = sub_1DAECE2AC();
  *&v346 = v288;
  v240 = v331;
  sub_1DAED22DC();
  v308 = objc_opt_self();
  v241 = [v308 mainRunLoop];
  v342 = v241;
  v304 = sub_1DAED22CC();
  v242 = *(v304 - 8);
  v292 = *(v242 + 56);
  v307 = v242 + 56;
  v243 = v333;
  (v292)(v333, 1, 1, v304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DD0, &unk_1DAED5860);
  v291 = sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  sub_1DAD64B94(&qword_1EE00AC10, &unk_1ECC07DD0, &unk_1DAED5860);
  v290 = sub_1DAD8D6A4(&qword_1EE00A858, &qword_1EE00A850, 0x1E695DFD0);
  v244 = v309;
  sub_1DAECEFCC();
  sub_1DAD64398(v243, &qword_1ECC07D08, &qword_1DAEDCB80);
  v245 = *(v340 + 8);
  v340 += 8;
  v289 = v245;
  (v245)(v240, v332);

  v246 = sub_1DAED20EC();
  *&v346 = v246;
  v247 = v325;
  (v337)(v325, 1, 1, v338);
  v322 = MEMORY[0x1E695BE50];
  sub_1DAD64B94(&qword_1EE00AC40, &qword_1ECC07D10, &qword_1DAED57C0);
  v248 = v312;
  v249 = v311;
  sub_1DAECEFBC();
  sub_1DAD64398(v247, &unk_1ECC07D20, &unk_1DAED57D0);
  (*(v310 + 8))(v244, v249);

  swift_allocObject();
  swift_weakInit();
  sub_1DAD64B94(&qword_1EE00AC18, &qword_1ECC07D18, &qword_1DAED57C8);
  v250 = v314;
  sub_1DAECF00C();

  (*(v313 + 8))(v248, v250);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v313 = swift_allocObject();
  swift_weakInit();

  v251 = swift_allocObject();
  *(v251 + 16) = 0;
  v252 = v341[3];
  v253 = v341[4];
  v254 = v341;
  __swift_project_boxed_opaque_existential_1(v341, v252);
  v255 = (*(v253 + 16))(v252, v253);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v346, v347);
  v342 = sub_1DAED10FC();
  v256 = sub_1DAED20EC();
  v343 = v256;
  (v337)(v247, 1, 1, v338);
  v257 = v326;
  sub_1DAECEFBC();
  sub_1DAD64398(v247, &unk_1ECC07D20, &unk_1DAED57D0);

  __swift_destroy_boxed_opaque_existential_1Tm(&v346);
  v258 = swift_allocObject();
  v314 = v251;
  v258[2] = v251;
  v258[3] = sub_1DADC46D8;
  v259 = v313;
  v258[4] = v313;
  v258[5] = a6;
  v260 = swift_allocObject();
  *(v260 + 16) = sub_1DADC4614;
  *(v260 + 24) = v258;

  v261 = v259;

  v262 = v327;
  v263 = sub_1DAECF00C();

  (v295)(v257, v262);
  v264 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable) = v263;

  v265 = v254;
  v266 = v254[3];
  v267 = v254[4];
  __swift_project_boxed_opaque_existential_1(v265, v266);
  v268 = (*(v267 + 16))(v266, v267);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v346, v347);
  v342 = sub_1DAED10FC();
  v269 = v315;
  sub_1DAECEFEC();

  __swift_destroy_boxed_opaque_existential_1Tm(&v346);
  v270 = v331;
  sub_1DAED22DC();
  v271 = [v308 mainRunLoop];
  *&v346 = v271;
  v272 = v333;
  (v292)(v333, 1, 1, v304);
  sub_1DAD64B94(&qword_1EE005D70, &qword_1ECC07CF8, &qword_1DAED57A8);
  v273 = v318;
  v274 = v317;
  sub_1DAECEFCC();
  sub_1DAD64398(v272, &qword_1ECC07D08, &qword_1DAEDCB80);
  (v289)(v270, v332);
  (*(v316 + 8))(v269, v274);

  v275 = swift_allocObject();
  *(v275 + 16) = sub_1DADC46D8;
  *(v275 + 24) = v261;
  v276 = swift_allocObject();
  *(v276 + 16) = sub_1DAD93D0C;
  *(v276 + 24) = v275;
  sub_1DAD64B94(&qword_1EE005D48, &qword_1ECC07D00, &unk_1DAED57B0);

  v277 = v320;
  sub_1DAECF00C();

  (*(v319 + 8))(v273, v277);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v278 = v341;
  v279 = v341[3];
  v280 = v341[4];
  __swift_project_boxed_opaque_existential_1(v341, v279);
  v281 = (*(v280 + 16))(v279, v280);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v346, v347);
  v282 = v328;
  sub_1DAED10EC();
  v283 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
  swift_beginAccess();
  (*(v329 + 40))(a6 + v283, v282, v330);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v346);
  swift_beginAccess();
  v284 = sub_1DAECF79C();
  swift_endAccess();
  v285 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties) = v284;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__initializing) = 0;
  LOBYTE(v346) = 0;
  sub_1DAD8EC1C(&v346);

  __swift_destroy_boxed_opaque_existential_1Tm(v334);
  __swift_destroy_boxed_opaque_existential_1Tm(v335);
  (*(v305 + 8))(v336, v306);

  __swift_destroy_boxed_opaque_existential_1Tm(v349);
  __swift_destroy_boxed_opaque_existential_1Tm(v278);
  return a6;
}

uint64_t sub_1DAEA630C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_1DAEA633C()
{
  result = qword_1ECC0A618;
  if (!qword_1ECC0A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0A618);
  }

  return result;
}

unint64_t sub_1DAEA6394()
{
  result = qword_1ECC0A620;
  if (!qword_1ECC0A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0A620);
  }

  return result;
}

uint64_t keypath_get_164Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_1DAD6495C(v8 + v9, a5, a3, a4);
}

uint64_t keypath_set_185Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;
  return a6(v10);
}

uint64_t keypath_get_200Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void keypath_set_213Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, const char *a6, char a7)
{
  v10 = *a1;
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  v13 = *(v11 + v12);
  *(v11 + v12) = v10;
  sub_1DAD95924(v13, a5, a6, a7);
}

id keypath_get_210Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t getEnumTagSinglePayload for LiveWidgetViewChangeReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiveWidgetViewChangeReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t WatchComplicationsWidgetViewModel.init(metrics:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel__style;
  v4 = type metadata accessor for WatchComplicationsWidgetViewModel.Style(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_monochromeModel;
  *(v1 + v5) = [objc_allocWithZone(sub_1DAECEC9C()) init];
  v6 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
  v7 = sub_1DAECFF0C();
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v8(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented) = 2;
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters) = 0;
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family) = 0;
  v9 = (v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_contentSize);
  *v9 = 0;
  v9[1] = 0;
  v10 = v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration;
  v12 = sub_1DAECEC2C();
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metrics) = a1;
  return v1;
}

uint64_t sub_1DAEA878C()
{
  sub_1DAEA9F94();

  return sub_1DAEA8A68();
}

uint64_t WatchComplicationsWidgetViewModel.deinit()
{
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel__style, &qword_1ECC088F0, qword_1DAED7330);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata, &unk_1ECC0A680, &unk_1DAED72C0);
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText, &unk_1ECC0A680, &unk_1DAED72C0);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration, &qword_1ECC088F8, &qword_1DAEDE860);
  return v0;
}

uint64_t sub_1DAEA888C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F0, qword_1DAED7330);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel__style;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v10, v9, &qword_1ECC088F0, qword_1DAED7330);
  v11 = type metadata accessor for WatchComplicationsWidgetViewModel.Style(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_1DAEAFDA8(v9, a1, type metadata accessor for WatchComplicationsWidgetViewModel.Style);
  }

  sub_1DAD64398(v9, &qword_1ECC088F0, qword_1DAED7330);
  sub_1DAEA938C(a1);
  sub_1DAEAA114(a1, v7);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1DAEAA178(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t (*sub_1DAEA8AA4(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEAFEE4;
}

uint64_t sub_1DAEA8B40(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_1DAD901C4(a1, v4 + v8, a3, a4);
  swift_endAccess();
  sub_1DAEAB354();
  return sub_1DAD64398(a1, a3, a4);
}

uint64_t (*sub_1DAEA8BC8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEAFEE4;
}

uint64_t sub_1DAEA8C2C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1DAEAB354();
  }

  return result;
}

uint64_t sub_1DAEA8C60()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAEA8CA4(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1DAEAB354();
}

uint64_t (*sub_1DAEA8CF8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEAFEE4;
}

void *sub_1DAEA8D5C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DAEA8DA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DAEA8E60()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAEA8EA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1DAEAB354();
}

uint64_t (*sub_1DAEA8EF8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEAFEE4;
}

double sub_1DAEA8F5C()
{
  v1 = v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_contentSize;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1DAEA8FA4(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_contentSize);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return sub_1DAEAB354();
}

uint64_t (*sub_1DAEA9000(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEA9064;
}

uint64_t sub_1DAEA9068()
{
  v1 = (v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1DAEA90B4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return sub_1DAEAB354();
}

uint64_t (*sub_1DAEA9118(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEAFEE4;
}

uint64_t (*sub_1DAEA91B4(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEAFEE4;
}

uint64_t sub_1DAEA9218()
{
  v1 = (v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter);
  swift_beginAccess();
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t sub_1DAEA9264(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return sub_1DAEAB354();
}

uint64_t (*sub_1DAEA92D4(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEAFEE4;
}

uint64_t sub_1DAEA9338()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metrics) fontStyle];
  if ((v1 - 4) > 8)
  {
    return 0;
  }

  else
  {
    return qword_1DAEDEA00[(v1 - 4)];
  }
}

uint64_t sub_1DAEA938C@<X0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v106 = sub_1DAECEC4C();
  v105 = *(v106 - 8);
  v2 = *(v105 + 64);
  v3 = MEMORY[0x1EEE9AC00](v106);
  v5 = (&v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v97 = &v96 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F8, &qword_1DAEDE860);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v96 - v12;
  v14 = sub_1DAECEC2C();
  v109 = *(v14 - 8);
  v110 = v14;
  v15 = *(v109 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v96 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v98 = &v96 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v104 = &v96 - v24;
  v25 = sub_1DAECEBCC();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v103 = (&v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_1DAECFF0C();
  v107 = *(v28 - 8);
  v108 = v28;
  v29 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v99 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v96 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v96 - v39;
  v102 = sub_1DAECEBEC();
  v101 = *(v102 - 8);
  v41 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v96 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family;
  swift_beginAccess();
  v44 = *(v1 + v43);
  switch(v44)
  {
    case 12:
      v104 = v18;
      v58 = v21;
      v103 = v5;
      v59 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration;
      swift_beginAccess();
      sub_1DAD6495C(v1 + v59, v11, &qword_1ECC088F8, &qword_1DAEDE860);
      v61 = v109;
      v60 = v110;
      if ((*(v109 + 48))(v11, 1, v110) != 1)
      {
        v65 = v58;
        (*(v61 + 32))(v58, v11, v60);
        (*(v61 + 16))(v104, v58, v60);
        v66 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_monochromeModel);
        v67 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
        swift_beginAccess();
        sub_1DAD6495C(v1 + v67, v35, &unk_1ECC0A680, &unk_1DAED72C0);
        v69 = v107;
        v68 = v108;
        if ((*(v107 + 48))(v35, 1, v108))
        {
          v70 = v66;
          sub_1DAD64398(v35, &unk_1ECC0A680, &unk_1DAED72C0);
          v71 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v80 = v99;
          (*(v69 + 16))(v99, v35, v68);
          v81 = v66;
          sub_1DAD64398(v35, &unk_1ECC0A680, &unk_1DAED72C0);
          v71 = sub_1DAEAB598();
          v82 = v80;
          v65 = v58;
          (*(v69 + 8))(v82, v68);
        }

        v83 = v103;
        v112[0] = v71;
        (*(*v1 + 480))(v112);
        sub_1DAECEC3C();
        (*(v61 + 8))(v65, v60);
        (*(v105 + 32))(v111, v83, v106);
        break;
      }

      v57 = v11;
LABEL_11:
      sub_1DAD64398(v57, &qword_1ECC088F8, &qword_1DAEDE860);
      break;
    case 10:
      v54 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration;
      swift_beginAccess();
      sub_1DAD6495C(v1 + v54, v13, &qword_1ECC088F8, &qword_1DAEDE860);
      v56 = v109;
      v55 = v110;
      if ((*(v109 + 48))(v13, 1, v110) != 1)
      {
        v63 = v104;
        (*(v56 + 32))(v104, v13, v55);
        v64 = (v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter);
        swift_beginAccess();
        if (v64[2])
        {
          (*(v56 + 8))(v63, v55);
        }

        else
        {
          v73 = *v64;
          v72 = v64[1];
          (*(v56 + 16))(v98, v63, v55);
          v74 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_monochromeModel);
          v75 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
          swift_beginAccess();
          sub_1DAD6495C(v1 + v75, v38, &unk_1ECC0A680, &unk_1DAED72C0);
          v77 = v107;
          v76 = v108;
          if ((*(v107 + 48))(v38, 1, v108))
          {
            v78 = v74;
            sub_1DAD64398(v38, &unk_1ECC0A680, &unk_1DAED72C0);
            v79 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v91 = v99;
            (*(v77 + 16))(v99, v38, v76);
            v92 = v74;
            sub_1DAD64398(v38, &unk_1ECC0A680, &unk_1DAED72C0);
            v79 = sub_1DAEAB598();
            (*(v77 + 8))(v91, v76);
          }

          v113 = v79;
          (*(*v1 + 480))(&v113);
          v93 = v97;
          sub_1DAECEC3C();
          (*(v56 + 8))(v63, v55);
          v94 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC09850, &unk_1DAEDE9F0);
          v95 = (v111 + *(v94 + 48));
          (*(v105 + 32))(v111, v93, v106);
          *v95 = v73;
          v95[1] = v72;
        }

        break;
      }

      v57 = v13;
      goto LABEL_11;
    case 7:
      v45 = (v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition);
      swift_beginAccess();
      if ((v45[1] & 1) == 0)
      {
        v46 = *v45;
        v47 = (v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_contentSize);
        swift_beginAccess();
        v48 = *v47;
        v49 = v47[1];
        v50 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText;
        swift_beginAccess();
        sub_1DAD6495C(v1 + v50, v40, &unk_1ECC0A680, &unk_1DAED72C0);
        v52 = v107;
        v51 = v108;
        if ((*(v107 + 48))(v40, 1, v108))
        {
          sub_1DAD64398(v40, &unk_1ECC0A680, &unk_1DAED72C0);
          v53 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v84 = v99;
          (*(v52 + 16))(v99, v40, v51);
          sub_1DAD64398(v40, &unk_1ECC0A680, &unk_1DAED72C0);
          v53 = sub_1DAEAB598();
          (*(v52 + 8))(v84, v51);
        }

        v85 = v103;
        v113 = v53;
        (*(*v1 + 480))(&v113);
        sub_1DAEAA1E8(v85);
        v86 = v1;
        v87 = [*(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metrics) fontStyle];
        if ((v87 - 4) <= 8)
        {
          v88 = qword_1DAEDEA00[(v87 - 4)];
        }

        v89 = *(v86 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_monochromeModel);
        v90 = v100;
        sub_1DAECEBBC();
        (*(v101 + 32))(v111, v90, v102);
      }

      break;
  }

  type metadata accessor for WatchComplicationsWidgetViewModel.Style(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_1DAEA9F94()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 primaryTintColor];
    if (v5)
    {
      v6 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_monochromeModel);
      v7 = v5;
      sub_1DAED06DC();
      sub_1DAECEC7C();
    }

    v8 = [v4 secondaryTintColor];
    if (v8)
    {
      v9 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_monochromeModel);
      v10 = v8;
      sub_1DAED06DC();
      sub_1DAECEC5C();
    }

    v11 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_monochromeModel);
    [v4 fraction];
    sub_1DAECEC8C();
    v12 = [v4 filterStyle];
    if (v12 < 2 || v12 == 7)
    {
      sub_1DAECEC6C();
    }

    else
    {
      sub_1DAED273C();
      __break(1u);
    }
  }

  else
  {
    v13 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_monochromeModel);
    sub_1DAECEC8C();
  }
}

uint64_t sub_1DAEAA114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchComplicationsWidgetViewModel.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAEAA178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F0, qword_1DAED7330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAEAA1E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A690, &unk_1DAEDE868);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v39[-1] - v5;
  v7 = sub_1DAECFF0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v39[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39[-1] - v17;
  v19 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
  swift_beginAccess();
  sub_1DAD6495C(v2 + v19, v18, &unk_1ECC0A680, &unk_1DAED72C0);
  v20 = *(v8 + 48);
  if (v20(v18, 1, v7))
  {
    sub_1DAD64398(v18, &unk_1ECC0A680, &unk_1DAED72C0);
  }

  else
  {
    (*(v8 + 16))(v11, v18, v7);
    sub_1DAD64398(v18, &unk_1ECC0A680, &unk_1DAED72C0);
    v22 = sub_1DAEAB598();
    (*(v8 + 8))(v11, v7);
    v39[0] = v22;
    if (*(v22 + 16))
    {
      (*(*v2 + 480))(v39);
      v23 = v38;
      *v38 = v39[0];
      v24 = *MEMORY[0x1E6996050];
      v25 = sub_1DAECEBCC();
      return (*(*(v25 - 8) + 104))(v23, v24, v25);
    }
  }

  sub_1DAD6495C(v2 + v19, v16, &unk_1ECC0A680, &unk_1DAED72C0);
  if (v20(v16, 1, v7))
  {
    sub_1DAD64398(v16, &unk_1ECC0A680, &unk_1DAED72C0);
    v21 = sub_1DAECEBCC();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
LABEL_8:
    sub_1DAD64398(v6, &unk_1ECC0A690, &unk_1DAEDE868);
LABEL_9:
    v30 = *MEMORY[0x1E6996040];
    v31 = sub_1DAECEBCC();
    return (*(*(v31 - 8) + 104))(v38, v30, v31);
  }

  (*(v8 + 16))(v11, v16, v7);
  sub_1DAD64398(v16, &unk_1ECC0A680, &unk_1DAED72C0);
  v27 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
  swift_beginAccess();
  sub_1DAEABA58(*(v2 + v27), v6);
  (*(v8 + 8))(v11, v7);
  v28 = sub_1DAECEBCC();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v6, 1, v28) == 1)
  {
    goto LABEL_8;
  }

  if ((*(v29 + 88))(v6, v28) != *MEMORY[0x1E6996048])
  {
    (*(v29 + 8))(v6, v28);
    goto LABEL_9;
  }

  (*(v29 + 96))(v6, v28);
  v32 = *v6;
  v33 = *(v6 + 2);
  v41 = *(v6 + 1);
  v42 = v32;
  v40 = v33;
  (*(*v2 + 488))(&v42);
  v34 = *(*v2 + 480);
  v34(&v41);
  v34(&v40);
  v35 = v41;
  v36 = v40;
  v37 = v38;
  *v38 = v42;
  v37[1] = v35;
  v37[2] = v36;
  return (*(v29 + 104))();
}

uint64_t sub_1DAEAA7E0(uint64_t *a1)
{
  v3 = sub_1DAECFF0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15[-v10];
  v12 = *a1;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v12, v11, &unk_1ECC0A680, &unk_1DAED72C0);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_1DAD64398(v11, &unk_1ECC0A680, &unk_1DAED72C0);
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v4 + 16))(v7, v11, v3);
    sub_1DAD64398(v11, &unk_1ECC0A680, &unk_1DAED72C0);
    v13 = sub_1DAEAB598();
    (*(v4 + 8))(v7, v3);
  }

  v16 = v13;
  (*(*v1 + 480))(&v16);
  return v16;
}

char *sub_1DAEAA9FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DAED247C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1DAE021E4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1E127E1F0](i, a1);
        type metadata accessor for CFDictionary(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1DAE021E4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1DADDC968(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CFDictionary(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1DAE021E4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1DADDC968(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1DAEAABC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DAED247C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1DAE021C4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1E127E1F0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1DAE021C4((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1DAD674D4(0, &qword_1ECC0A798, 0x1E695B550);
        v16 = sub_1DAEAFE10();
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1DAD657D8(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_1DAE021C4((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1DAD674D4(0, &qword_1ECC0A798, 0x1E695B550);
        v16 = sub_1DAEAFE10();
        *&v14 = v13;
        *(v3 + 16) = v11 + 1;
        sub_1DAD657D8(&v14, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void CHSWatchComplicationsCurvedLabelMetrics.complicationCurvedTextConfiguration.getter()
{
  v1 = sub_1DAECEBFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v20 - v8;
  v10 = [v0 bezierPath];
  [v0 fontSize];
  v11 = [v0 textColor];
  sub_1DAED06DC();
  if (v10)
  {
    v12 = [v10 cgPath];
    v13 = [objc_opt_self() bezierPathWithCGPath_];

    v14 = [v0 accessoryPlacement];
    v15 = MEMORY[0x1E6996060];
    v16 = MEMORY[0x1E6996070];
    if (v14 != 2)
    {
      v16 = MEMORY[0x1E6996068];
    }

    if (v14 != 1)
    {
      v15 = v16;
    }

    (*(v2 + 104))(v9, *v15, v1);
    [v0 accessoryPadding];
    [v0 accessoryMaxSize];
    sub_1DAECEC0C();
  }

  else
  {
    [v0 interior];
    [v0 tracking];
    [v0 circleCenter];
    [v0 circleRadius];
    [v0 maximumAngularWidth];
    [v0 centerAngle];
    v17 = [v0 accessoryPlacement];
    v18 = MEMORY[0x1E6996060];
    v19 = MEMORY[0x1E6996070];
    if (v17 != 2)
    {
      v19 = MEMORY[0x1E6996068];
    }

    if (v17 != 1)
    {
      v18 = v19;
    }

    (*(v2 + 104))(v5, *v18, v1);
    [v0 accessoryPadding];
    [v0 accessoryMaxSize];
    sub_1DAECEC1C();
  }
}

uint64_t sub_1DAEAB154(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v19 - v14;
  sub_1DAD6495C(a1, &v19 - v14, a5, a6);
  v16 = *a2;
  v17 = *a7;
  swift_beginAccess();
  sub_1DAD901C4(v15, v16 + v17, a5, a6);
  swift_endAccess();
  sub_1DAEAB354();
  return sub_1DAD64398(v15, a5, a6);
}

void sub_1DAEAB248(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t WatchComplicationsWidgetViewModel.__allocating_init(metrics:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  WatchComplicationsWidgetViewModel.init(metrics:)(a1);
  return v5;
}

uint64_t sub_1DAEAB2E8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter;
  swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return sub_1DAEAB354();
}

uint64_t sub_1DAEAB354()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F0, qword_1DAED7330);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-v6];
  BSDispatchQueueAssertMain();
  v8 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel__style;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v8, v7, &qword_1ECC088F0, qword_1DAED7330);
  v9 = type metadata accessor for WatchComplicationsWidgetViewModel.Style(0);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  result = sub_1DAD64398(v7, &qword_1ECC088F0, qword_1DAED7330);
  if (v11 != 1)
  {
    type metadata accessor for WatchComplicationsWidgetViewModel(0);
    sub_1DAEAFE98(&qword_1ECC09B10, type metadata accessor for WatchComplicationsWidgetViewModel);
    sub_1DAECEE4C();
    sub_1DAECEEBC();

    (*(*v0 + 520))(v13);
    (*(v10 + 56))(v5, 1, 1, v9);
    swift_beginAccess();
    sub_1DAEAA178(v5, v0 + v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1DAEAB598()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09560, &qword_1DAED9C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A7B0, &unk_1DAEDE9B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09568, &qword_1DAED9C08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v33[-v12];
  sub_1DAECFCEC();
  v14 = sub_1DAECFDDC();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1DAD64398(v13, &qword_1ECC09568, &qword_1DAED9C08);
    v16 = 0;
  }

  else
  {
    v16 = WidgetAuxiliaryViewMetadata.Text.textProvider.getter();
    (*(v15 + 8))(v13, v14);
    if (v16)
    {
      v17 = v16;
      sub_1DAECFD3C();
      v18 = sub_1DAECFD2C();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v9, 1, v18) == 1)
      {
        sub_1DAD64398(v9, &unk_1ECC0A7B0, &unk_1DAEDE9B0);
        v20 = 0;
      }

      else
      {
        sub_1DAEADBAC();
        (*(v19 + 8))(v9, v18);
        v20 = sub_1DAED1CBC();
      }

      [v17 setAccessibilityLabel_];
    }
  }

  sub_1DAECFE8C();
  v21 = sub_1DAECFE7C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v5, 1, v21) == 1)
  {
    sub_1DAD64398(v5, &qword_1ECC09560, &qword_1DAED9C00);
    v23 = 0;
  }

  else
  {
    v23 = WidgetAuxiliaryViewMetadata.Graphic.imageProvider.getter();
    (*(v22 + 8))(v5, v21);
  }

  v24 = sub_1DAECFEFC();
  if (v24)
  {
    if (*(v24 + 16))
    {
      v25 = MEMORY[0x1EEE9AC00](v24);
      *&v33[-32] = v1;
      *&v33[-24] = v16;
      *&v33[-16] = v23;
      v26 = sub_1DAE0CFD0(sub_1DAEAFE78, &v33[-48], v25);

      return v26;
    }
  }

  if (!(v16 | v23))
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A7C0, &unk_1DAEDE9C0);
  v27 = *(sub_1DAECEB5C() - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DAED6200;
  v30 = v23;
  v31 = v16;
  sub_1DAECEB1C();

  return v26;
}

uint64_t sub_1DAEABA58@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A7D0, &qword_1DAEDE9D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A7D8, &qword_1DAEDE9D8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A690, &unk_1DAEDE868);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v35 - v16);
  v18 = sub_1DAECEBCC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v35 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v35 - v23;
  v36 = v2;
  sub_1DAECFE3C();
  v25 = sub_1DAECFE2C();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_1DAD64398(v10, &qword_1ECC0A7D8, &qword_1DAEDE9D8);
    (*(v19 + 56))(v17, 1, 1, v18);
  }

  else
  {
    sub_1DAEAE134(v37, v17);
    (*(v26 + 8))(v10, v25);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      v31 = *(v19 + 32);
      v31(v24, v17, v18);
      v30 = v38;
      v31(v38, v24, v18);
      goto LABEL_10;
    }
  }

  sub_1DAD64398(v17, &unk_1ECC0A690, &unk_1DAEDE868);
  sub_1DAECFEEC();
  v27 = sub_1DAECFEDC();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v6, 1, v27) != 1)
  {
    sub_1DAEAE420(v37, v15);
    (*(v28 + 8))(v6, v27);
    if ((*(v19 + 48))(v15, 1, v18) == 1)
    {
      goto LABEL_7;
    }

    v32 = *(v19 + 32);
    v33 = v35;
    v32(v35, v15, v18);
    v30 = v38;
    v32(v38, v33, v18);
LABEL_10:
    v29 = 0;
    return (*(v19 + 56))(v30, v29, 1, v18);
  }

  sub_1DAD64398(v6, &qword_1ECC0A7D0, &qword_1DAEDE9D0);
  (*(v19 + 56))(v15, 1, 1, v18);
LABEL_7:
  sub_1DAD64398(v15, &unk_1ECC0A690, &unk_1DAEDE868);
  v29 = 1;
  v30 = v38;
  return (*(v19 + 56))(v30, v29, 1, v18);
}

uint64_t WatchComplicationsWidgetViewModel.__deallocating_deinit()
{
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel__style, &qword_1ECC088F0, qword_1DAED7330);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata, &unk_1ECC0A680, &unk_1DAED72C0);
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText, &unk_1ECC0A680, &unk_1DAED72C0);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration, &qword_1ECC088F8, &qword_1DAEDE860);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAEAC028@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WatchComplicationsWidgetViewModel(0);
  result = sub_1DAECEE4C();
  *a1 = result;
  return result;
}

id WidgetAuxiliaryViewMetadata.Graphic.imageProvider.getter()
{
  v1 = v0;
  v2 = sub_1DAECFE6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = sub_1DAECFE7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v14, v1, v10);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x1E697CB08])
  {
    (*(v11 + 96))(v14, v10);
    (*(v3 + 32))(v9, v14, v2);
    (*(v3 + 16))(v7, v9, v2);
    v16 = objc_allocWithZone(sub_1DAECECAC());
    v17 = sub_1DAECECBC();
    (*(v3 + 8))(v9, v2);
  }

  else if (v15 == *MEMORY[0x1E697CB00])
  {
    (*(v11 + 96))(v14, v10);
    v18 = *v14;
    v17 = [objc_opt_self() imageProviderWithOnePieceImage_];
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    return 0;
  }

  return v17;
}

uint64_t WidgetAuxiliaryViewMetadata.Text.textProvider.getter()
{
  v156 = sub_1DAECDDEC();
  v198 = *(v156 - 8);
  v0 = *(v198 + 8);
  MEMORY[0x1EEE9AC00](v156);
  v149 = &v139[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09418, &qword_1DAED9810);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v148 = &v139[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v155 = &v139[-v6];
  v166 = sub_1DAECDA2C();
  v193 = *(v166 - 8);
  v7 = *(v193 + 64);
  v8 = MEMORY[0x1EEE9AC00](v166);
  v147 = &v139[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v154 = &v139[-v10];
  v165 = sub_1DAED02FC();
  v192 = *(v165 - 8);
  v11 = *(v192 + 64);
  v12 = MEMORY[0x1EEE9AC00](v165);
  v14 = &v139[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v164 = &v139[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v169 = &v139[-v17];
  v178 = sub_1DAECDCEC();
  v191 = *(v178 - 8);
  v18 = *(v191 + 64);
  v19 = MEMORY[0x1EEE9AC00](v178);
  v146 = &v139[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v153 = &v139[-v22];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v163 = &v139[-v24];
  MEMORY[0x1EEE9AC00](v23);
  v188 = &v139[-v25];
  v187 = sub_1DAECFAFC();
  v194 = *(v187 - 8);
  v26 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v186 = &v139[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A6A0, &qword_1DAEDE878);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v185 = &v139[-v30];
  v31 = sub_1DAECFD5C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v139[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x1EEE9AC00](v34);
  v176 = &v139[-v38];
  v39 = MEMORY[0x1EEE9AC00](v37);
  v175 = &v139[-v40];
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v139[-v41];
  v184 = sub_1DAECFCDC();
  v43 = *(v184 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v171 = &v139[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v201 = sub_1DAECFDBC();
  v46 = *(v201 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v49 = &v139[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v203 = MEMORY[0x1E69E7CC0];
  v50 = sub_1DAECFDCC();
  v51 = *(v50 + 16);
  if (v51)
  {
    v162 = v14;
    v53 = *(v46 + 16);
    v52 = v46 + 16;
    v195 = v53;
    v54 = (*(v52 + 64) + 32) & ~*(v52 + 64);
    v145 = v50;
    v55 = v50 + v54;
    v200 = (v32 + 88);
    v197 = (v32 + 8);
    v199 = (v32 + 96);
    v183 = (v43 + 32);
    v182 = (v194 + 8);
    v181 = (v32 + 48);
    v174 = (v32 + 32);
    v173 = (v32 + 16);
    v180 = (v43 + 8);
    v152 = (v193 + 32);
    LODWORD(v194) = *MEMORY[0x1E697CAD8];
    v168 = (v191 + 8);
    v151 = (v193 + 8);
    LODWORD(v193) = *MEMORY[0x1E697CAC8];
    v144 = (v198 + 48);
    v141 = (v198 + 32);
    v179 = *MEMORY[0x1E697CAD0];
    v143 = (v198 + 8);
    v161 = (v191 + 32);
    v172 = *MEMORY[0x1E697CAB8];
    v160 = (v192 + 32);
    v159 = (v192 + 16);
    v158 = *MEMORY[0x1E697CAC0];
    v150 = *MEMORY[0x1E697CAB0];
    v142 = *MEMORY[0x1E697CAE0];
    v167 = (v192 + 8);
    v140 = *MEMORY[0x1E697CAA8];
    v192 = v52 - 8;
    v56 = *(v52 + 56);
    v190 = MEMORY[0x1E69E7CC0];
    v191 = v56;
    v189 = v36;
    v198 = v42;
    v57 = v171;
    v196 = v52;
    v157 = v31;
    v53(v49, v55, v201);
    while (1)
    {
      sub_1DAECFD6C();
      v58 = *v200;
      v59 = (*v200)(v42, v31);
      if (v59 == v194)
      {
        (*v199)(v42, v31);
        v60 = v184;
        (*v183)(v57, v42, v184);
        v61 = v186;
        sub_1DAECFAEC();
        v62 = v185;
        sub_1DAECFCCC();
        (*v182)(v61, v187);
        if ((*v181)(v62, 1, v31) == 1)
        {
          (*v180)(v57, v60);
          sub_1DAD64398(v62, &unk_1ECC0A6A0, &qword_1DAEDE878);
        }

        else
        {
          v63 = v175;
          (*v174)(v175, v62, v31);
          (*v173)(v176, v63, v31);
          sub_1DAECFD7C();
          (*v197)(v63, v31);
          (*v180)(v57, v60);
        }

        v36 = v189;
        v42 = v198;
      }

      else
      {
        (*v197)(v42, v31);
      }

      sub_1DAECFD6C();
      v64 = v58(v36, v31);
      if (v64 == v193)
      {
        (*v199)(v36, v31);
        v65 = *v36;
        v66 = v36[1];
        v67 = sub_1DAED1CBC();

        v68 = [objc_opt_self() textProviderWithText_];

        goto LABEL_14;
      }

      v74 = v188;
      if (v64 == v179)
      {
        goto LABEL_3;
      }

      if (v64 != v172)
      {
        if (v64 == v158)
        {
          (*v199)(v36, v31);
          v86 = v154;
          (*v152)(v154, v36, v166);
          sub_1DAECDA0C();
          v87 = v153;
          sub_1DAECD9FC();
          v88 = sub_1DAECDC5C();
          v89 = sub_1DAECDC5C();
          v68 = [objc_opt_self() textProviderWithStartDate:v88 endDate:v89];

          v90 = *v168;
          v91 = v87;
          v36 = v189;
          v92 = v178;
          (*v168)(v91, v178);
          v90(v163, v92);
          v93 = v86;
          v57 = v171;
          (*v151)(v93, v166);
        }

        else if (v64 == v150)
        {
          (*v199)(v36, v31);
          v101 = v36[1];

          v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A6B0, &qword_1DAED9820);
          v103 = v155;
          sub_1DAD7C48C(v36 + *(v102 + 64), v155, &qword_1ECC09418, &qword_1DAED9810);
          v104 = v148;
          sub_1DAD6495C(v103, v148, &qword_1ECC09418, &qword_1DAED9810);
          v105 = *v144;
          if ((*v144)(v104, 1, v156) == 1)
          {
            v106 = v149;
            sub_1DAECDDDC();
            if (v105(v104, 1, v156) != 1)
            {
              sub_1DAD64398(v104, &qword_1ECC09418, &qword_1DAED9810);
            }
          }

          else
          {
            v106 = v149;
            (*v141)(v149, v104, v156);
          }

          v117 = sub_1DAECDDBC();
          v68 = [objc_opt_self() textProviderWithTimeZone_];

          (*v143)(v106, v156);
          sub_1DAD64398(v155, &qword_1ECC09418, &qword_1DAED9810);
        }

        else
        {
          v114 = v147;
          if (v64 == v142)
          {
            (*v199)(v36, v31);
            v115 = *(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09420, &qword_1DAED9818) + 64));
            (*v152)(v114, v36, v166);
            v116 = v146;
            if (v115 == 1)
            {
              sub_1DAECD9FC();
            }

            else
            {
              sub_1DAECDA0C();
            }

            v120 = v116;
            v121 = sub_1DAECDC5C();
            v68 = [objc_opt_self() textProviderWithDate:v121 style:2 units:224];

            (*v168)(v120, v178);
            (*v151)(v114, v166);
          }

          else
          {
            if (v64 != v140)
            {
LABEL_3:
              (*v192)(v49, v201);
              (*v197)(v36, v31);
              goto LABEL_4;
            }

            (*v199)(v36, v31);
            v68 = *v36;
          }
        }

        goto LABEL_14;
      }

      (*v199)(v36, v31);
      v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09428, &unk_1DAED9828) + 48);
      (*v161)(v74, v36, v178);
      v76 = v169;
      v77 = v165;
      (*v160)(v169, v36 + v75, v165);
      v78 = v164;
      (*v159)(v164, v76, v77);
      v79 = v162;
      sub_1DAED02AC();
      v80 = v78;
      v170 = sub_1DAEAFE98(&unk_1ECC0A6C0, MEMORY[0x1E69810E8]);
      LOBYTE(v78) = sub_1DAED1CAC();
      v177 = *v167;
      v177(v79, v77);
      if (v78)
      {
        v81 = v80;
        v82 = v177;
        v177(v81, v77);
        v83 = v188;
        v84 = sub_1DAECDC5C();
        v68 = [objc_opt_self() textProviderWithDate_];

        v82(v76, v77);
        (*v168)(v83, v178);
LABEL_31:
        v36 = v189;
        v57 = v171;
        v31 = v157;
        goto LABEL_14;
      }

      sub_1DAED029C();
      v94 = sub_1DAED1CAC();
      v95 = v177;
      v177(v79, v77);
      if (v94)
      {
        v95(v80, v77);
        v96 = v77;
        v97 = v169;
        v98 = sub_1DAED02CC();
        v99 = v188;
        v100 = sub_1DAECDC5C();
        v68 = [objc_opt_self() textProviderWithDate:v100 units:v98];

        v95(v97, v96);
        (*v168)(v99, v178);
        goto LABEL_31;
      }

      sub_1DAED02EC();
      v107 = sub_1DAED1CAC();
      v95(v79, v77);
      v31 = v157;
      if (v107)
      {
        v108 = v177;
        v177(v80, v77);
        v109 = v169;
        v110 = sub_1DAED02CC();
        v111 = v188;
        v112 = sub_1DAECDC5C();
        v113 = [objc_opt_self() textProviderWithDate:v112 style:0 units:v110];
      }

      else
      {
        sub_1DAED02DC();
        v118 = sub_1DAED1CAC();
        v177(v79, v77);
        if ((v118 & 1) == 0)
        {
          sub_1DAED02BC();
          v122 = sub_1DAED1CAC();
          v123 = v79;
          v124 = v177;
          v177(v123, v77);
          v124(v80, v77);
          if ((v122 & 1) == 0)
          {
            v177(v169, v77);
            (*v168)(v188, v178);
            (*v192)(v49, v201);
            v36 = v189;
            v57 = v171;
            goto LABEL_4;
          }

          v125 = v77;
          v126 = v169;
          v127 = sub_1DAED02CC();
          v111 = v188;
          v128 = sub_1DAECDC5C();
          v68 = [objc_opt_self() textProviderWithDate:v128 style:2 units:v127];

          v177(v126, v125);
          goto LABEL_46;
        }

        v108 = v177;
        v177(v80, v77);
        v109 = v169;
        v119 = sub_1DAED02CC();
        v111 = v188;
        v112 = sub_1DAECDC5C();
        v113 = [objc_opt_self() textProviderWithDate:v112 style:1 units:v119];
      }

      v68 = v113;

      v108(v109, v165);
LABEL_46:
      (*v168)(v111, v178);
      v36 = v189;
      v57 = v171;
LABEL_14:
      v69 = v68;
      if (sub_1DAECFD8C())
      {
        v70 = sub_1DAED05DC();

        if (v70)
        {
          v71 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
          [v69 setTintColor_];
        }
      }

      v72 = sub_1DAECFD9C();
      v42 = v198;
      if (v72)
      {
        sub_1DAEAA9FC(v72);

        v73 = sub_1DAED1E6C();
      }

      else
      {
        v73 = 0;
      }

      [v69 setFontFeatures_];

      v85 = v69;
      MEMORY[0x1E127DAD0]();
      if (*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v129 = *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DAED1E9C();
      }

      sub_1DAED1EBC();

      (*v192)(v49, v201);
      v190 = v203;
LABEL_4:
      v55 += v191;
      if (!--v51)
      {

        v130 = v190;
        if (!(v190 >> 62))
        {
          goto LABEL_55;
        }

LABEL_64:
        if (sub_1DAED247C())
        {
          v131 = sub_1DAED247C();
          goto LABEL_56;
        }

LABEL_70:

        return 0;
      }

      v195(v49, v55, v201);
    }
  }

  v130 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_64;
  }

LABEL_55:
  v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v131)
  {
    goto LABEL_70;
  }

LABEL_56:
  v132 = v130 >> 62;
  if (v131 == 1)
  {
    if (v132)
    {
      result = sub_1DAED247C();
      if (!result)
      {
        goto LABEL_70;
      }
    }

    else
    {
      result = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_70;
      }
    }

    if ((v130 & 0xC000000000000001) != 0)
    {
      v134 = MEMORY[0x1E127E1F0](0, v130);
    }

    else
    {
      if (!*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v134 = *(v130 + 32);
    }

    v135 = v134;

    return v135;
  }

  if (v132)
  {
    v136 = sub_1DAED247C();
  }

  else
  {
    v136 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v202 = sub_1DAEAF0BC(0x4025, 0xE200000000000000, v136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
  sub_1DAE02284();
  sub_1DAED1C8C();

  v137 = sub_1DAEAABC8(v130);

  v138 = sub_1DAEAF158(v137);

  swift_bridgeObjectRelease_n();
  return v138;
}

uint64_t sub_1DAEADBAC()
{
  sub_1DAECFD0C();
  v13[0] = v0;
  v1 = 0;
  v13[1] = sub_1DAECFD1C();
  v13[2] = v2;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = &v13[2 * v1];
  while (++v1 != 3)
  {
    v5 = v4 + 2;
    v6 = *v4;
    v4 += 2;
    if (v6)
    {
      v7 = *(v5 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1DAD9BF68(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_1DAD9BF68((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      v10 = &v3[16 * v9];
      *(v10 + 4) = v7;
      *(v10 + 5) = v6;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A18, &unk_1DAEDB490);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
  sub_1DAE02284();
  v11 = sub_1DAED1C8C();

  return v11;
}

uint64_t sub_1DAEADD18@<X0>(void *a1@<X2>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09560, &qword_1DAED9C00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A7B0, &unk_1DAEDE9B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09568, &qword_1DAED9C08);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v31 - v13;
  sub_1DAECFCEC();
  v15 = sub_1DAECFDDC();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1DAD64398(v14, &qword_1ECC09568, &qword_1DAED9C08);
    v17 = 0;
  }

  else
  {
    v17 = WidgetAuxiliaryViewMetadata.Text.textProvider.getter();
    (*(v16 + 8))(v14, v15);
    if (v17)
    {
      v18 = v17;
      sub_1DAECFD3C();
      v19 = sub_1DAECFD2C();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v10, 1, v19) == 1)
      {
        sub_1DAD64398(v10, &unk_1ECC0A7B0, &unk_1DAEDE9B0);
        v21 = 0;
      }

      else
      {
        sub_1DAEADBAC();
        (*(v20 + 8))(v10, v19);
        v21 = sub_1DAED1CBC();
      }

      [v18 setAccessibilityLabel_];
    }
  }

  sub_1DAECFE8C();
  v22 = sub_1DAECFE7C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v6, 1, v22) == 1)
  {
    sub_1DAD64398(v6, &qword_1ECC09560, &qword_1DAED9C00);
    v24 = v33;
    v25 = v34;
    if (!v17)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v26 = WidgetAuxiliaryViewMetadata.Graphic.imageProvider.getter();
  (*(v23 + 8))(v6, v22);
  if (!v17)
  {
    v24 = v32;
    v25 = v34;
    if (!v26)
    {
LABEL_17:
      v28 = 1;
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v24 = v33;
  v25 = v34;
  if (!v26)
  {
LABEL_15:
    v27 = v24;
  }

  sub_1DAECEB1C();
  v28 = 0;
LABEL_18:
  v29 = sub_1DAECEB5C();
  return (*(*(v29 - 8) + 56))(v25, v28, 1, v29);
}

uint64_t sub_1DAEAE134@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  v11 = sub_1DAEAE650(a1);
  if (v11)
  {
    v12 = v11;
    sub_1DAECFDFC();
    v13 = sub_1DAECFF0C();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    if (v15(v10, 1, v13) == 1)
    {
      sub_1DAD64398(v10, &unk_1ECC0A680, &unk_1DAED72C0);
      v16 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v20 = sub_1DAEAB598();
      v21 = v10;
      v16 = v20;
      (*(v14 + 8))(v21, v13);
    }

    sub_1DAECFDEC();
    if (v15(v8, 1, v13) == 1)
    {
      sub_1DAD64398(v8, &unk_1ECC0A680, &unk_1DAED72C0);
      v22 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v22 = sub_1DAEAB598();
      (*(v14 + 8))(v8, v13);
    }

    *a2 = v12;
    a2[1] = v16;
    a2[2] = v22;
    v23 = *MEMORY[0x1E6996048];
    v24 = sub_1DAECEBCC();
    v25 = *(v24 - 8);
    (*(v25 + 104))(a2, v23, v24);
    return (*(v25 + 56))(a2, 0, 1, v24);
  }

  else
  {
    v17 = sub_1DAECEBCC();
    v18 = *(*(v17 - 8) + 56);

    return v18(a2, 1, 1, v17);
  }
}

uint64_t sub_1DAEAE420@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_1DAEAE950(a1);
  if (v8)
  {
    v9 = v8;
    sub_1DAECFECC();
    v10 = sub_1DAECFF0C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {
      sub_1DAD64398(v7, &unk_1ECC0A680, &unk_1DAED72C0);
      v12 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v12 = sub_1DAEAB598();
      (*(v11 + 8))(v7, v10);
    }

    *a2 = v9;
    a2[1] = v12;
    a2[2] = MEMORY[0x1E69E7CC0];
    v16 = *MEMORY[0x1E6996048];
    v17 = sub_1DAECEBCC();
    v18 = *(v17 - 8);
    (*(v18 + 104))(a2, v16, v17);
    return (*(v18 + 56))(a2, 0, 1, v17);
  }

  else
  {
    v13 = sub_1DAECEBCC();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t sub_1DAEAE650(char a1)
{
  result = sub_1DAECFE0C();
  v3 = result;
  if (!result)
  {
    v11 = *MEMORY[0x1E695B4D0];
    sub_1DAECFE1C();
    v13 = v14;
    v15 = 0;
    goto LABEL_22;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (result + 40);
    do
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v7 = *(v6 - 1);
      v8 = *v6;

      if (v27)
      {
        result = sub_1DAED05DC();
        if (!result)
        {
          goto LABEL_31;
        }

        v9 = result;
        [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

        MEMORY[0x1E127DAD0]();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v25 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1DAED1E9C();
        }

        sub_1DAED1EBC();
      }

      if (v26)
      {
        sub_1DAECDF4C();
        MEMORY[0x1E127DAD0]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v24 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1DAED1E9C();
        }

        sub_1DAED1EBC();
      }

      ++v5;

      v6 += 2;
    }

    while (v4 != v5);

    v10 = v26;
    v11 = *MEMORY[0x1E695B4D0];
    sub_1DAECFE1C();
    v13 = v12;
    if (v27)
    {
      goto LABEL_19;
    }

    v15 = 0;
    goto LABEL_22;
  }

  v11 = *MEMORY[0x1E695B4D0];
  sub_1DAECFE1C();
  v13 = v16;
  v10 = MEMORY[0x1E69E7CC0];
LABEL_19:
  sub_1DAD674D4(0, &qword_1ECC09E90, 0x1E69DC888);
  v15 = sub_1DAED1E6C();
  if (!v10)
  {
LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  sub_1DAD674D4(0, &qword_1EE005470, 0x1E696AD98);
  v17 = sub_1DAED1E6C();
LABEL_23:
  if (a1)
  {
    v18 = v11;
  }

  else
  {
    v18 = 0;
  }

  if (a1 == 2)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  v21 = objc_opt_self();
  v20 = v13;
  *&v22 = v20;
  v23 = [v21 gaugeProviderWithStyle:v19 gaugeColors:v15 gaugeColorLocations:v17 fillFraction:v22];

  return v23;
}

id sub_1DAEAE950(char a1)
{
  v50 = sub_1DAECDCEC();
  v52 = *(v50 - 8);
  v2 = v52[8];
  v3 = MEMORY[0x1EEE9AC00](v50);
  v49 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A7E0, &qword_1DAEDE9E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v49 - v8;
  v10 = sub_1DAECFE9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DAECFEBC();
  if (v15)
  {
    v16 = sub_1DAEAEEA4(v15);
    v18 = v17;

    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v16 = 0;
  }

  v20 = *MEMORY[0x1E695B4D0];
  if ((a1 & 1) == 0)
  {
    v20 = 1;
  }

  if (a1 == 2)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  sub_1DAECFEAC();
  v22 = (*(v11 + 88))(v14, v10);
  if (v22 != *MEMORY[0x1E697CB38])
  {
    if (v22 != *MEMORY[0x1E697CB30])
    {

      (*(v11 + 8))(v14, v10);
      return 0;
    }

    (*(v11 + 96))(v14, v10);
    v28 = v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A7E8, &qword_1DAEDE9E8) + 48)];
    sub_1DAD7C48C(v14, v9, &qword_1ECC0A7E0, &qword_1DAEDE9E0);
    if (v28)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = 1.0;
    }

    if (v28)
    {
      v30 = 1.0;
    }

    else
    {
      v30 = 0.0;
    }

    v31 = v52[2];
    v32 = v50;
    v31(v51, v9, v50);
    v33 = &v9[*(v6 + 36)];
    v34 = v49;
    v31(v49, v33, v32);
    if (v16)
    {
      sub_1DAD674D4(0, &qword_1ECC09E90, 0x1E69DC888);
      v35 = sub_1DAED1E6C();

      v36 = v21;
      if (v19)
      {
LABEL_24:
        sub_1DAD674D4(0, &qword_1EE005470, 0x1E696AD98);
        v37 = sub_1DAED1E6C();

LABEL_33:
        v41 = v51;
        v42 = sub_1DAECDC5C();
        v43 = sub_1DAECDC5C();
        v44 = objc_opt_self();
        *&v45 = v30;
        *&v46 = v29;
        v38 = [v44 gaugeProviderWithStyle:v36 gaugeColors:v35 gaugeColorLocations:v37 startDate:v42 startFillFraction:v43 endDate:v45 endFillFraction:v46];

        v47 = v52[1];
        v47(v34, v32);
        v47(v41, v32);
        sub_1DAD64398(v9, &qword_1ECC0A7E0, &qword_1DAEDE9E0);
        return v38;
      }
    }

    else
    {
      v35 = 0;
      v36 = v21;
      if (v19)
      {
        goto LABEL_24;
      }
    }

    v37 = 0;
    goto LABEL_33;
  }

  (*(v11 + 96))(v14, v10);
  v23 = *v14;
  v24 = v14[8];
  if (!v16)
  {
    v25 = 0;
    v26 = v23;
    if (v19)
    {
      goto LABEL_14;
    }

LABEL_27:
    v27 = 0;
    goto LABEL_28;
  }

  sub_1DAD674D4(0, &qword_1ECC09E90, 0x1E69DC888);
  v25 = sub_1DAED1E6C();

  v26 = v23;
  if (!v19)
  {
    goto LABEL_27;
  }

LABEL_14:
  sub_1DAD674D4(0, &qword_1EE005470, 0x1E696AD98);
  v27 = sub_1DAED1E6C();

LABEL_28:
  if (v24)
  {
    v26 = 0.0;
  }

  v39 = objc_opt_self();
  *&v40 = v26;
  v38 = [v39 gaugeProviderWithStyle:v21 gaugeColors:v25 gaugeColorLocations:v27 fillFraction:v40];

  return v38;
}

uint64_t sub_1DAEAEEA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    for (i = (a1 + 40); ; i += 2)
    {
      v3 = *(i - 1);
      v4 = *i;

      result = sub_1DAED05DC();
      if (!result)
      {
        break;
      }

      v6 = result;
      [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

      MEMORY[0x1E127DAD0]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DAED1E9C();
      }

      sub_1DAED1EBC();
      v7 = v11;
      sub_1DAECDF4C();
      MEMORY[0x1E127DAD0]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DAED1E9C();
      }

      sub_1DAED1EBC();

      if (!--v1)
      {
        return v7;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t CHSWatchComplicationsCurvedLabelMetricsAccessoryPlacement.complicationCurvedTextPlacement.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DAECEBFC();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E6996068];
  if (a1 == 2)
  {
    v6 = MEMORY[0x1E6996070];
  }

  if (a1 == 1)
  {
    v6 = MEMORY[0x1E6996060];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

void *sub_1DAEAF0BC(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1DAED1EAC();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1DAEAF158(uint64_t a1)
{
  sub_1DAED263C();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    v24 = sub_1DAED262C();
    v25 = sub_1DAED1CBC();
    v26 = [objc_opt_self() textProviderWithFormat:v25 arguments:v24];

    return v26;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = (v6 + 40 * v5);
    v8 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    result = sub_1DAED299C();
    v10 = *v3;
    v11 = *(result + 16);
    v12 = __OFADD__(*v3, v11);
    v13 = *v3 + v11;
    if (v12)
    {
      break;
    }

    v14 = v2[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v15 = v2[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v2[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v2[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      sub_1DAED261C();
      result = v16;
LABEL_18:
      v18 = v2[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(result + 16);
    if (v20)
    {
      v21 = (result + 32);
      v22 = *v3;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_1DAEAF38C()
{
  sub_1DAEAFBD4(319, &qword_1ECC0A6E0, type metadata accessor for WatchComplicationsWidgetViewModel.Style);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1DAEAFBD4(319, &qword_1ECC0A6E8, MEMORY[0x1E697CB40]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1DAEAFBD4(319, &unk_1ECC0A6F0, MEMORY[0x1E6996078]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1DAEAFBD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1DAEAFC28()
{
  sub_1DAEAFD5C(319, &qword_1ECC0A710, MEMORY[0x1E6996058]);
  if (v0 <= 0x3F)
  {
    sub_1DAEAFCE8();
    if (v1 <= 0x3F)
    {
      sub_1DAEAFD5C(319, &unk_1ECC0A720, MEMORY[0x1E6996080]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1DAEAFCE8()
{
  if (!qword_1ECC0A718)
  {
    sub_1DAECEC4C();
    type metadata accessor for CGPoint(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECC0A718);
    }
  }
}

void sub_1DAEAFD5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAEAFDA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAEAFE10()
{
  result = qword_1ECC0A7A0;
  if (!qword_1ECC0A7A0)
  {
    sub_1DAD674D4(255, &qword_1ECC0A798, 0x1E695B550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0A7A0);
  }

  return result;
}

uint64_t sub_1DAEAFE98(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAEAFEE8(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v46 = a1;
  v47 = a2;
  v45 = sub_1DAECF8EC();
  v50 = *(v45 - 8);
  v4 = *(v50 + 64);
  v5 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v41 - v7;
  v53 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
  v8 = *(*(v53 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v53);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v41 - v15;
  v17 = sub_1DAECDCEC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v41 - v23;
  v54 = *(v3 + 24);
  os_unfair_lock_lock(*(v54 + 16));
  sub_1DAD6495C(v52, v16, &qword_1ECC07CE8, &qword_1DAED6F60);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1DAD64398(v16, &qword_1ECC07CE8, &qword_1DAED6F60);
  }

  else
  {
    v43 = v18;
    v44 = v24;
    (*(v18 + 32))(v24, v16, v17);
    sub_1DAD648F8(v46, v55);
    v52 = v3;
    v46 = *(v18 + 16);
    v25 = v17;
    v26 = v22;
    v41 = v25;
    v46(v22, v24, v25);
    v27 = v12;
    v42 = v12;
    v28 = v50;
    v29 = v45;
    v30 = *(v50 + 16);
    v31 = v48;
    v30(v48, v47, v45);
    v30(v27, v31, v29);
    v32 = &v27[*(v53 + 20)];
    sub_1DAD648F8(v55, v32);
    v33 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
    v46((v32 + *(v33 + 20)), v26, v25);
    v30(v49, v31, v29);
    v34 = v32 + *(v33 + 24);
    sub_1DAED156C();
    (*(v28 + 8))(v31, v29);
    v35 = *(v43 + 8);
    v36 = v26;
    v37 = v41;
    v35(v36, v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    v38 = *(v52 + 40);
    v39 = v42;
    sub_1DADBA01C(v42, v51, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
    v40 = v38;
    [v40 addObject_];

    swift_unknownObjectRelease();
    sub_1DAEB0398();
    sub_1DADB2450(v39, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
    v35(v44, v37);
  }

  os_unfair_lock_unlock(*(v54 + 16));
}

void sub_1DAEB0398()
{
  v1 = sub_1DAED09DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED0A3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v0 + 24) + 16));
  if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_processQueueEnqueued) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_processQueueEnqueued) = 1;
    v14[1] = *(v0 + 16);
    v11 = swift_allocObject();
    v14[0] = v2;
    v15 = v6;
    v12 = v11;
    swift_weakInit();
    aBlock[4] = sub_1DAEB1C1C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_19;
    v13 = _Block_copy(aBlock);

    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    v16 = MEMORY[0x1E69E7CC0];
    sub_1DAD94CC0(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD94C6C(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
    sub_1DAED23CC();
    MEMORY[0x1E127DD70](0, v10, v5, v13);
    _Block_release(v13);
    (*(v14[0] + 8))(v5, v1);
    (*(v7 + 8))(v10, v15);
  }
}

uint64_t sub_1DAEB0698()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DAEB06F0();
  }

  return result;
}

void sub_1DAEB06F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v55 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080B0, &qword_1DAEDE780);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v50 - v7;
  v9 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A800, qword_1DAEDEBB0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v50 - v19;
  v20 = sub_1DAED0A7C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v1 + 16);
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x1E69E8020], v20);
  v26 = v25;
  v27 = sub_1DAED0A8C();
  (*(v21 + 8))(v24, v20);
  if (v27)
  {
    v28 = *(v1 + 24);
    os_unfair_lock_lock(*(v28 + 16));
    *(v1 + OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_processQueueEnqueued) = 0;
    os_unfair_lock_unlock(*(v28 + 16));
    os_unfair_lock_lock(*(v28 + 16));
    v29 = [*(v1 + 40) count];
    os_unfair_lock_unlock(*(v28 + 16));
    v30 = v56;
    if (v29 >= 1)
    {
      v53 = v1;
      v54 = (v10 + 48);
      v51 = v18;
      v52 = v9;
      v50 = v28;
      while (1)
      {
        os_unfair_lock_lock(*(v28 + 16));
        sub_1DAEB0CE4(v1, v30);
        os_unfair_lock_unlock(*(v28 + 16));
        sub_1DAD6495C(v30, v18, &qword_1ECC0A800, qword_1DAEDEBB0);
        if ((*v54)(v18, 1, v9) == 1)
        {
          break;
        }

        sub_1DADB23E8(v18, v13, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
        v31 = &v13[*(v9 + 20)];
        v32 = *(v31 + 3);
        v33 = *(v31 + 4);
        __swift_project_boxed_opaque_existential_1(v31, v32);
        (*(v33 + 32))(v58, v32, v33);
        v35 = v59;
        v34 = v60;
        v57 = __swift_project_boxed_opaque_existential_1(v58, v59);
        v36 = v13;
        v37 = *(v31 + 3);
        v38 = *(v31 + 4);
        __swift_project_boxed_opaque_existential_1(v31, v37);
        v39 = (*(v38 + 16))(v37, v38);
        v40 = *(type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0) + 20);
        v41 = sub_1DAECDCEC();
        v42 = v8;
        v43 = *(v41 - 8);
        v44 = &v31[v40];
        v13 = v36;
        v45 = v55;
        (*(v43 + 16))(v55, v44, v41);
        (*(v43 + 56))(v45, 0, 1, v41);
        v8 = v42;
        v46 = *(v34 + 8);
        v47 = v34;
        v1 = v53;
        v46(v39, v45, v36, v35, v47);

        v48 = v45;
        v28 = v50;
        sub_1DAD64398(v48, &qword_1ECC07CE8, &qword_1DAED6F60);
        os_unfair_lock_lock(*(v28 + 16));
        sub_1DAEB0F08(v1, v42);
        os_unfair_lock_unlock(*(v28 + 16));
        v30 = v56;
        sub_1DAD64398(v56, &qword_1ECC0A800, qword_1DAEDEBB0);
        sub_1DADB2450(v36, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
        sub_1DAD64398(v8, &qword_1ECC080B0, &qword_1DAEDE780);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        os_unfair_lock_lock(*(v28 + 16));
        v49 = [*(v1 + 40) count];
        os_unfair_lock_unlock(*(v28 + 16));
        v18 = v51;
        v9 = v52;
        if (v49 <= 0)
        {
          return;
        }
      }

      sub_1DAD64398(v30, &qword_1ECC0A800, qword_1DAEDEBB0);
      sub_1DAD64398(v18, &qword_1ECC0A800, qword_1DAEDEBB0);
    }
  }

  else
  {
    __break(1u);

    os_unfair_lock_unlock(*(v27 + 16));
    __break(1u);
  }
}

uint64_t sub_1DAEB0CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A800, qword_1DAEDEBB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  if ([*(a1 + 40) firstObject])
  {
    sub_1DAED238C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    v11 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
    v12 = swift_dynamicCast();
    (*(*(v11 - 8) + 56))(v10, v12 ^ 1u, 1, v11);
  }

  else
  {
    sub_1DAD64398(v18, &qword_1ECC0A3A0, &qword_1DAEDFE30);
    v13 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  sub_1DAD7C48C(v10, v8, &qword_1ECC0A800, qword_1DAEDEBB0);
  v14 = OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_prewarmRequest;
  swift_beginAccess();
  sub_1DADC11D0(v8, a1 + v14);
  swift_endAccess();
  return sub_1DAD6495C(a1 + v14, a2, &qword_1ECC0A800, qword_1DAEDEBB0);
}

uint64_t sub_1DAEB0F08(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080B0, &qword_1DAEDE780);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v32 - v5;
  v6 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A800, qword_1DAEDEBB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v32 - v22;
  v24 = OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_prewarmRequest;
  swift_beginAccess();
  sub_1DAD6495C(a1 + v24, v15, &qword_1ECC0A800, qword_1DAEDEBB0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_1DAD64398(v15, &qword_1ECC0A800, qword_1DAEDEBB0);
  }

  v32 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest;
  sub_1DADB23E8(v15, v23, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
  v26 = v9;
  sub_1DADBA01C(&v23[*(v16 + 20)], v9, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
  v27 = v33;
  sub_1DAD6495C(v34, v33, &qword_1ECC080B0, &qword_1DAEDE780);
  swift_beginAccess();
  sub_1DADB9CEC(v27, v26);
  swift_endAccess();
  v28 = *(a1 + 40);
  v29 = v32;
  sub_1DADBA01C(v23, v21, v32);
  v30 = v28;
  [v30 removeObject_];

  swift_unknownObjectRelease();
  sub_1DADB2450(v23, v29);
  v31 = v35;
  (*(v17 + 56))(v35, 1, 1, v16);
  swift_beginAccess();
  sub_1DADC11D0(v31, a1 + v24);
  return swift_endAccess();
}

uint64_t sub_1DAEB12B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_prewarmRequest, &qword_1ECC0A800, qword_1DAEDEBB0);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAEB1354(uint64_t a1)
{
  sub_1DAED294C();
  v3 = (v1 + *(a1 + 20));
  v4 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v5 = *(v4 + 20);
  sub_1DAECDCEC();
  sub_1DAD94CC0(&qword_1EE00A6F8, MEMORY[0x1E6969530]);
  sub_1DAED1C6C();
  v6 = *(v4 + 24);
  sub_1DAED157C();
  sub_1DAD94CC0(&qword_1EE005720, MEMORY[0x1E6985700]);
  sub_1DAED1C6C();
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  (*(v8 + 24))(&v10, v7, v8);
  MEMORY[0x1E127E5D0](v10);
  return sub_1DAED297C();
}

uint64_t sub_1DAEB149C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 20));
  v4 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v5 = *(v4 + 20);
  sub_1DAECDCEC();
  sub_1DAD94CC0(&qword_1EE00A6F8, MEMORY[0x1E6969530]);
  sub_1DAED1C6C();
  v6 = *(v4 + 24);
  sub_1DAED157C();
  sub_1DAD94CC0(&qword_1EE005720, MEMORY[0x1E6985700]);
  sub_1DAED1C6C();
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  (*(v8 + 24))(&v10, v7, v8);
  return MEMORY[0x1E127E5D0](v10);
}

uint64_t sub_1DAEB15D8(uint64_t a1, uint64_t a2)
{
  sub_1DAED294C();
  v4 = (v2 + *(a2 + 20));
  v5 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v6 = *(v5 + 20);
  sub_1DAECDCEC();
  sub_1DAD94CC0(&qword_1EE00A6F8, MEMORY[0x1E6969530]);
  sub_1DAED1C6C();
  v7 = *(v5 + 24);
  sub_1DAED157C();
  sub_1DAD94CC0(&qword_1EE005720, MEMORY[0x1E6985700]);
  sub_1DAED1C6C();
  v8 = v4[3];
  v9 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v8);
  (*(v9 + 24))(&v11, v8, v9);
  MEMORY[0x1E127E5D0](v11);
  return sub_1DAED297C();
}

uint64_t sub_1DAEB1774(uint64_t a1)
{
  v3 = v1;
  sub_1DAED294C();
  v4 = *(a1 + 20);
  sub_1DAECDCEC();
  sub_1DAD94CC0(&qword_1EE00A6F8, MEMORY[0x1E6969530]);
  sub_1DAED1C6C();
  v5 = *(a1 + 24);
  sub_1DAED157C();
  sub_1DAD94CC0(&qword_1EE005720, MEMORY[0x1E6985700]);
  sub_1DAED1C6C();
  v6 = v3[3];
  v7 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v6);
  (*(v7 + 24))(&v9, v6, v7);
  MEMORY[0x1E127E5D0](v9);
  return sub_1DAED297C();
}

uint64_t sub_1DAEB18AC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *(a2 + 20);
  sub_1DAECDCEC();
  sub_1DAD94CC0(&qword_1EE00A6F8, MEMORY[0x1E6969530]);
  sub_1DAED1C6C();
  v6 = *(a2 + 24);
  sub_1DAED157C();
  sub_1DAD94CC0(&qword_1EE005720, MEMORY[0x1E6985700]);
  sub_1DAED1C6C();
  v7 = v4[3];
  v8 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  (*(v8 + 24))(&v10, v7, v8);
  return MEMORY[0x1E127E5D0](v10);
}

uint64_t sub_1DAEB19DC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1DAED294C();
  v5 = *(a2 + 20);
  sub_1DAECDCEC();
  sub_1DAD94CC0(&qword_1EE00A6F8, MEMORY[0x1E6969530]);
  sub_1DAED1C6C();
  v6 = *(a2 + 24);
  sub_1DAED157C();
  sub_1DAD94CC0(&qword_1EE005720, MEMORY[0x1E6985700]);
  sub_1DAED1C6C();
  v7 = v4[3];
  v8 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  (*(v8 + 24))(&v10, v7, v8);
  MEMORY[0x1E127E5D0](v10);
  return sub_1DAED297C();
}

uint64_t sub_1DAEB1B14(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 24))(&v12 + 1, v3, v4);
  v5 = BYTE1(v12);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  (*(v7 + 24))(&v12, v6, v7);
  if (v5 != v12)
  {
    return 0;
  }

  v8 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v9 = *(v8 + 24);
  if ((sub_1DAED155C() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v8 + 20);

  return sub_1DAECDCAC();
}

uint64_t WidgetViewSecurityPolicyResult.description.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 8))(v6, a1);
  if (!EnumCaseMultiPayload)
  {
    return 1702259020;
  }

  if (EnumCaseMultiPayload == 1)
  {
    return 0x6C6F686563616C50;
  }

  return 0x7974706D45;
}

uint64_t WidgetViewSecurityPolicyResult.entryData.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v10);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v8 + 8))(v12, a1);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v6, v12, v2);
    v14 = (*(*(a1 + 24) + 32))(v2);
    (*(v3 + 8))(v6, v2);
    return v14;
  }
}

char *sub_1DAEB1F7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A660, &unk_1DAEDE850);
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

size_t sub_1DAEB2070(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A7C0, &unk_1DAEDE9C0);
  v10 = *(sub_1DAECEB5C() - 8);
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
  v15 = *(sub_1DAECEB5C() - 8);
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

uint64_t sub_1DAEB2338(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1DAEB2450(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t DebugOverlayValidationState.hashValue.getter()
{
  v1 = *v0;
  sub_1DAED294C();
  MEMORY[0x1E127E5D0](v1);
  return sub_1DAED297C();
}

unint64_t sub_1DAEB2734()
{
  result = qword_1ECC0A818;
  if (!qword_1ECC0A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0A818);
  }

  return result;
}

id sub_1DAEB290C(void *a1)
{
  *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugTextView] = 0;
  *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPausedView] = 0;
  *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshottingView] = 0;
  *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplayView] = 0;
  *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationView] = 0;
  v3 = &v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugText];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPaused] = 0;
  v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshotting] = 0;
  v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplay] = 0;
  v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationState] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DebugView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1DAEB2A14()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugText + 8);
}

id sub_1DAEB2AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1DAEB2B7C()
{
  result = qword_1ECC09E90;
  if (!qword_1ECC09E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC09E90);
  }

  return result;
}

uint64_t sub_1DAEB2D1C(uint64_t a1)
{
  v1 = a1;
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DAED247C();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v31 = MEMORY[0x1E69E7CC0];
    sub_1DAED25EC();
    result = sub_1DAED265C();
    v28 = result;
    v29 = v4;
    v30 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1DAED25EC();
  v5 = -1 << *(v1 + 32);
  result = sub_1DAED23DC();
  v6 = *(v1 + 36);
  v28 = result;
  v29 = v6;
  v30 = 0;
LABEL_7:
  v7 = 0;
  v25 = v2;
  while (v7 < v2)
  {
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v15 = v28;
    v16 = v29;
    v17 = v30;
    sub_1DADBAF5C(v28, v29, v30, v1);
    v19 = v18;
    v20 = [v18 widget];
    v21 = v1;
    v22 = [v19 metrics];
    [objc_allocWithZone(MEMORY[0x1E69943E0]) initWithWidget:v20 metrics:v22];

    sub_1DAED25CC();
    v23 = *(v31 + 16);
    sub_1DAED25FC();
    sub_1DAED260C();
    result = sub_1DAED25DC();
    if (v26)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      if (sub_1DAED269C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v25;
      v14 = v7 + 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A988, &qword_1DAEDF118);
      v24 = sub_1DAED1C2C();
      sub_1DAED272C();
      result = v24(v27, 0);
    }

    else
    {
      sub_1DADBB0EC(v15, v16, v17, v1);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      result = sub_1DADAE050(v15, v16, v17);
      v28 = v9;
      v29 = v11;
      v30 = v13 & 1;
      v1 = v21;
      v2 = v25;
      v14 = v7 + 1;
    }

    ++v7;
    if (v14 == v2)
    {
      sub_1DADAE050(v28, v29, v30);
      return v31;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1DAEB2FEC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

unint64_t sub_1DAEB309C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_hasReceivedInitializationPayload);

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));

  if (v2 != 1)
  {
    return 0xD00000000000002ALL;
  }

  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1DAEB3164(v0, &v5);
  os_unfair_lock_unlock(*(v3 + 16));
  return v5;
}

uint64_t sub_1DAEB3164@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v45[0] = 0x6F69736E65747845;
  v6 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity);

  v43 = sub_1DAEB9C5C(v7);
  sub_1DAEB9BE0(&v43);
  if (v2)
  {
    goto LABEL_32;
  }

  v8 = v43;
  v41 = a2;
  if ((v43 & 0x8000000000000000) == 0 && (v43 & 0x4000000000000000) == 0)
  {
    v9 = a1;
    v10 = *(v43 + 16);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_12:

    v3 = v45;
    MEMORY[0x1E127DA50](0xD000000000000010, 0x80000001DAEE67C0);
    v18 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
    swift_beginAccess();
    v19 = *(v9 + v18);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = sub_1DAED266C() | 0x8000000000000000;
    }

    else
    {
      v24 = -1 << *(v19 + 32);
      v21 = ~v24;
      v20 = v19 + 64;
      v25 = -v24;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v22 = v26 & *(v19 + 64);
      v23 = v19;
    }

    v27 = 0;
    v40 = v21;
    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v28 = v27;
      v29 = v22;
      v30 = v27;
      if (!v22)
      {
        break;
      }

LABEL_23:
      v31 = (v29 - 1) & v29;
      v32 = *(*(v23 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
      if (!v32)
      {
LABEL_29:
        sub_1DAD70B20();
        result = MEMORY[0x1E127DA50](10, 0xE100000000000000);
        v39 = v45[1];
        *v41 = v45[0];
        v41[1] = v39;
        return result;
      }

      while (1)
      {
        v34 = [v32 description];
        v35 = sub_1DAED1CEC();
        v37 = v36;

        v42 = v35;
        MEMORY[0x1E127DA50](10, 0xE100000000000000);
        v3 = v45;
        MEMORY[0x1E127DA50](v42, v37);

        v27 = v30;
        v22 = v31;
        if ((v23 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_25:
        v33 = sub_1DAED271C();
        if (v33)
        {
          v45[3] = v33;
          sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
          swift_dynamicCast();
          v32 = v42;
          v30 = v27;
          v31 = v22;
          if (v42)
          {
            continue;
          }
        }

        goto LABEL_29;
      }
    }

    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= ((v21 + 64) >> 6))
      {
        goto LABEL_29;
      }

      v29 = *(v20 + 8 * v30);
      ++v28;
      if (v29)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v9 = a1;
  v10 = sub_1DAED247C();
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E127E1F0](v11, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      v14 = [v12 description];
      v15 = sub_1DAED1CEC();
      v17 = v16;

      v43 = v15;
      v44 = v17;
      MEMORY[0x1E127DA50](10, 0xE100000000000000);
      MEMORY[0x1E127DA50](v43, v44);
    }

    while (v10 != v11);
    goto LABEL_12;
  }

LABEL_31:
  __break(1u);
LABEL_32:

  __break(1u);
  return result;
}

uint64_t sub_1DAEB3530()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAEB35CC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_1DAEB3624(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 56))(a1, v3, v4);
}

uint64_t sub_1DAEB3684(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 64))(a1, v3, v4);
}

uint64_t sub_1DAEB36E4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t sub_1DAEB373C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 80))(v1, v2);
}

uint64_t sub_1DAEB3794()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 88))(v1, v2);
}

uint64_t sub_1DAEB37EC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 96))(v1, v2);
}

uint64_t sub_1DAEB3844()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 104))(v1, v2);
}

uint64_t sub_1DAEB38C8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 160))(v1, v2);
}

uint64_t sub_1DAEB3920()
{
  v1 = *v0;
  v3 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
  v4 = *(v2 + 24);
  return sub_1DAECE56C();
}

uint64_t sub_1DAEB3970()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  v4 = *(v3 + 24);
  return sub_1DAECE57C();
}

uint64_t sub_1DAEB39B0()
{
  v1 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  v2 = *(v1 + 8);
  return sub_1DAED132C();
}

uint64_t sub_1DAEB3A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v5 = *v3;
  v7 = *(*v3 + 40);
  v6 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((v5 + 16), v7);
  return a3(v7, *(v6 + 16));
}

uint64_t sub_1DAEB3AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v5 = *v3;
  v7 = *(*v3 + 40);
  v6 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((v5 + 16), v7);
  return a3(v7, *(*(v6 + 16) + 8));
}

void sub_1DAEB3B14(unint64_t a1)
{
  v37 = MEMORY[0x1E69E7CC8];
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_1DAED266C();
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = v1 | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = ~v6;
    v2 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a1 + 64);
    v5 = a1;
  }

  v33 = v3;
  v9 = (v3 + 64) >> 6;

  v10 = 0;
  v34 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      v17 = sub_1DAED270C();
      if (!v17 || (v35 = v17, sub_1DAED21EC(), swift_dynamicCast(), sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8), swift_dynamicCast(), v16 = v35, (v15 = v36) == 0))
      {
LABEL_32:
        sub_1DAD70B20();
        return;
      }

      goto LABEL_17;
    }

    v11 = v10;
    v12 = v4;
    if (!v4)
    {
      break;
    }

LABEL_13:
    v4 = (v12 - 1) & v12;
    v13 = (v10 << 9) | (8 * __clz(__rbit64(v12)));
    v14 = *(*(v5 + 56) + v13);
    v15 = *(*(v5 + 48) + v13);
    v16 = v14;
    if (!v15)
    {
      goto LABEL_32;
    }

LABEL_17:
    v18 = [v16 orderedWidgetDescriptors];
    if (v18)
    {
      v19 = v18;
      sub_1DAD674D4(0, &qword_1EE0055E8, 0x1E6994388);
      v20 = sub_1DAED1E7C();

      v21 = *(v34 + 16);
      if (*(v34 + 24) <= v21)
      {
        sub_1DADAACDC(v21 + 1, 1);
      }

      v22 = *(v37 + 40);
      v23 = sub_1DAED227C();
      v24 = v37 + 64;
      v25 = -1 << *(v37 + 32);
      v26 = v23 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v37 + 64 + 8 * (v26 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v25) >> 6;
        while (++v27 != v30 || (v29 & 1) == 0)
        {
          v31 = v27 == v30;
          if (v27 == v30)
          {
            v27 = 0;
          }

          v29 |= v31;
          v32 = *(v24 + 8 * v27);
          if (v32 != -1)
          {
            v28 = __clz(__rbit64(~v32)) + (v27 << 6);
            goto LABEL_31;
          }
        }

        goto LABEL_34;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~*(v37 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      *(*(v37 + 48) + 8 * v28) = v15;
      *(*(v37 + 56) + 8 * v28) = v20;
      v34 = v37;
      ++*(v37 + 16);
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      goto LABEL_32;
    }

    v12 = *(v2 + 8 * v10);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1DAEB3E6C(char *a1)
{
  v1 = a1;
  v2 = *&a1[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  BSDispatchQueueAssert();
  if (qword_1EE005E90 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v3 = sub_1DAECEDEC();
    __swift_project_value_buffer(v3, qword_1EE0117F0);
    v4 = sub_1DAECEDCC();
    v5 = sub_1DAED200C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DAD61000, v4, v5, "Detected chronod relaunch.", v6, 2u);
      MEMORY[0x1E127F100](v6, -1, -1);
    }

    v35 = MEMORY[0x1E69E7CC8];
    v7 = *&v1[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
    os_unfair_lock_lock(*(v7 + 16));
    sub_1DAEB4280(v1, &v35);
    os_unfair_lock_unlock(*(v7 + 16));
    sub_1DAD69DF8();
    v8 = v1;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED200C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134349056;
      v12 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
      swift_beginAccess();
      v13 = *&v8[v12];
      if ((v13 & 0xC000000000000001) != 0)
      {
        if (v13 < 0)
        {
          v14 = *&v8[v12];
        }

        v15 = *&v8[v12];

        v16 = sub_1DAED247C();
      }

      else
      {
        v16 = *(v13 + 16);
      }

      *(v11 + 4) = v16;

      _os_log_impl(&dword_1DAD61000, v9, v10, "Resubscribing to %{public}ld active sessions.", v11, 0xCu);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    v17 = v8;
    if ((v35 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      v19 = 0;
      v1 = 0;
      v20 = sub_1DAED266C() | 0x8000000000000000;
    }

    else
    {
      v21 = -1 << *(v35 + 32);
      v19 = ~v21;
      v18 = v35 + 64;
      v22 = -v21;
      v23 = v22 < 64 ? ~(-1 << v22) : -1;
      v1 = (v23 & *(v35 + 64));
      v20 = v35;
    }

    v24 = 0;
    v25 = (v19 + 64) >> 6;
    if ((v20 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_19:
    v26 = v24;
    v27 = v1;
    v28 = v24;
    if (v1)
    {
LABEL_23:
      v29 = (v27 - 1) & v27;
      v30 = (v28 << 9) | (8 * __clz(__rbit64(v27)));
      v31 = *(*(v20 + 56) + v30);
      v32 = *(*(v20 + 48) + v30);

      if (v32)
      {
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= v25)
      {
        goto LABEL_29;
      }

      v27 = *(v18 + 8 * v28);
      ++v26;
      if (v27)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  while (sub_1DAED270C())
  {
    sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
    swift_dynamicCast();
    v32 = v34;
    type metadata accessor for WidgetRendererSessionSubscriptionRequest();
    swift_dynamicCast();
    v31 = v34;
    v28 = v24;
    v29 = v1;
    if (!v34)
    {
      break;
    }

LABEL_27:

    sub_1DAEB43F0(v31, v17);

    v24 = v28;
    v1 = v29;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_29:
  sub_1DAD70B20();
}

void sub_1DAEB4280(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v6 = *(a1 + v4);
    }

    v7 = *(a1 + v4);

    v8 = sub_1DAED247C();

    if (v8)
    {
      goto LABEL_5;
    }
  }

  else if (*(v5 + 16))
  {
LABEL_5:
    v9 = *a2;
    *a2 = *(a1 + v4);

    return;
  }

  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v10 = sub_1DAECEDEC();
  __swift_project_value_buffer(v10, qword_1EE0117F0);
  v11 = sub_1DAECEDCC();
  v12 = sub_1DAED200C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DAD61000, v11, v12, "No active sessions - not reconnecting.", v13, 2u);
    MEMORY[0x1E127F100](v13, -1, -1);
  }
}

void sub_1DAEB43F0(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  BSDispatchQueueAssert();
  v5 = *(a1 + 16);
  v6 = *&a2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v6 + 16));
  v7 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v8 = *&a2[v7];
  if ((v8 & 0xC000000000000001) == 0)
  {
    v11 = *&a2[v7];

LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *&a2[v7];
    sub_1DADA5B4C(a1, v5, isUniquelyReferenced_nonNull_native);
    *&a2[v7] = v32;
    swift_endAccess();
    os_unfair_lock_unlock(*(v6 + 16));
    v13 = sub_1DAECDAFC();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_1DAECDAEC();
    v31[0] = a1;
    type metadata accessor for WidgetRendererSessionSubscriptionRequest();
    sub_1DAD649C4(&unk_1EE0081F8, 255, type metadata accessor for WidgetRendererSessionSubscriptionRequest);
    v7 = sub_1DAECDADC();
    v6 = v16;

    if (qword_1EE005E90 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (v8 < 0)
  {
    v9 = *&a2[v7];
  }

  else
  {
    v9 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  v10 = sub_1DAED247C();
  if (!__OFADD__(v10, 1))
  {
    *&a2[v7] = sub_1DAEB99AC(v9, v10 + 1);
    goto LABEL_8;
  }

  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v17 = sub_1DAECEDEC();
  __swift_project_value_buffer(v17, qword_1EE0117F0);
  v18 = v5;
  v19 = sub_1DAECEDCC();
  v20 = sub_1DAED203C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138543362;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_1DAD61000, v19, v20, "Subscribing to session: %{public}@", v21, 0xCu);
    sub_1DAD64398(v22, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v22, -1, -1);
    MEMORY[0x1E127F100](v21, -1, -1);
  }

  v24 = sub_1DAD6F45C();
  if (v24)
  {
    v25 = v24;
    v26 = sub_1DAECDC0C();
    v27 = swift_allocObject();
    v27[2] = a2;
    v27[3] = v18;
    v27[4] = nullsub_1;
    v27[5] = 0;
    v31[4] = sub_1DAEBB238;
    v31[5] = v27;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 1107296256;
    v31[2] = sub_1DADAF8A8;
    v31[3] = &block_descriptor_218;
    v28 = _Block_copy(v31);
    v29 = v18;
    v30 = a2;

    [v25 subscribe:v26 completion:v28];
    sub_1DAD70BB4(v7, v6);
    swift_unknownObjectRelease();
    _Block_release(v28);
  }

  else
  {
    sub_1DAD70BB4(v7, v6);
  }
}

uint64_t sub_1DAEB4808(void *a1)
{
  v3 = sub_1DAED09DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DAED0A3C();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v1[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1DAEBB190;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_193;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  v15 = a1;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

void sub_1DAEB4AE4(uint64_t a1, void *a2)
{
  v6 = 0;
  v4 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v4 + 16));
  sub_1DAEB4BB0(a1, a2, &v6);
  os_unfair_lock_unlock(*(v4 + 16));
  if (v6)
  {
    v5 = sub_1DAD6F45C();
    if (v5)
    {
      [v5 unsubscribe_];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1DAEB4BB0(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v7 = *(a1 + v6);

  v8 = sub_1DADB7CF0(a2, v7);

  if (v8)
  {

    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v10 = sub_1DAECEDEC();
    __swift_project_value_buffer(v10, qword_1EE0117F0);
    v11 = a2;
    v12 = sub_1DAECEDCC();
    v13 = sub_1DAED203C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&dword_1DAD61000, v12, v13, "Unsubscribing from session: %{public}@", v14, 0xCu);
      sub_1DAD64398(v15, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v15, -1, -1);
      MEMORY[0x1E127F100](v14, -1, -1);
    }

    swift_beginAccess();
    sub_1DAEB9380(v11);
    swift_endAccess();

    *a3 = 1;
  }

  return result;
}

void *sub_1DAEB4DA0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = [a1 extensionIdentity];
  v5 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity);

  v6 = sub_1DAD84F7C(v4, v5);

  os_unfair_lock_unlock(*(v3 + 16));
  return v6;
}

void sub_1DAEB4E5C(void *a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(void))
{
  v56 = a1;
  v55 = a2;
  v8 = sub_1DAED09DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1DAED0A3C();
  v59 = *(v61 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DAECE3DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v51 = v9;
    v52 = a4;
    v53 = v8;
    v20 = qword_1EE005E88;
    v21 = a3;
    if (v20 != -1)
    {
      swift_once();
    }

    v54 = a5;
    v22 = sub_1DAECEDEC();
    __swift_project_value_buffer(v22, qword_1EE0117D8);
    v23 = v21;
    v24 = sub_1DAECEDCC();
    v25 = sub_1DAED203C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      *(v26 + 4) = v19;
      *v27 = v19;
      v28 = v23;
      _os_log_impl(&dword_1DAD61000, v24, v25, "Handle action: %{public}@", v26, 0xCu);
      sub_1DAD64398(v27, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v27, -1, -1);
      MEMORY[0x1E127F100](v26, -1, -1);
    }

    v29 = v57;
    v50 = *&v57[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
    (*(v15 + 16))(&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v55, v14);
    v30 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v31 = (v16 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v33 = v14;
    v34 = v23;
    v35 = v56;
    *(v32 + 16) = v29;
    *(v32 + 24) = v35;
    (*(v15 + 32))(v32 + v30, v17, v33);
    *(v32 + v31) = v19;
    v36 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
    v37 = v54;
    *v36 = v52;
    v36[1] = v37;
    aBlock[4] = sub_1DAEBB098;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_169;
    v38 = _Block_copy(aBlock);
    v39 = v34;
    v40 = v29;
    v41 = v35;

    v42 = v58;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    v62 = MEMORY[0x1E69E7CC0];
    sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
    v43 = v60;
    v44 = v53;
    sub_1DAED23CC();
    MEMORY[0x1E127DD70](0, v42, v43, v38);
    _Block_release(v38);

    (*(v51 + 8))(v43, v44);
    (*(v59 + 8))(v42, v61);
  }

  else
  {
    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v45 = sub_1DAECEDEC();
    __swift_project_value_buffer(v45, qword_1EE0117F0);
    v46 = sub_1DAECEDCC();
    v47 = sub_1DAED201C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1DAD61000, v46, v47, "Action received is not an LNAction", v48, 2u);
      MEMORY[0x1E127F100](v48, -1, -1);
    }

    sub_1DAD674D4(0, &unk_1EE005490, 0x1E696ABC0);
    v61 = sub_1DADD7B94(2, 0, 2, 0, 0);
    a4();
    v49 = v61;
  }
}

void sub_1DAEB54E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v10 = sub_1DAECEDEC();
  __swift_project_value_buffer(v10, qword_1EE0117F0);
  v11 = sub_1DAECEDCC();
  v12 = sub_1DAED200C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DAD61000, v11, v12, "Handling user interaction with widget", v13, 2u);
    MEMORY[0x1E127F100](v13, -1, -1);
  }

  v14 = sub_1DAD6F45C();
  if (v14)
  {
    v15 = v14;
    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v17 = swift_allocObject();
    *(v17 + 16) = a5;
    *(v17 + 24) = a6;
    v19[4] = sub_1DAEBB138;
    v19[5] = v17;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1DAEB2FEC;
    v19[3] = &block_descriptor_175;
    v18 = _Block_copy(v19);

    [v15 handleInteraction:a2 authenticationPolicy:v16 action:a4 handler:v18];
    swift_unknownObjectRelease();
    _Block_release(v18);
  }
}

uint64_t sub_1DAEB56F0(uint64_t a1, uint64_t a2)
{
  v24[0] = a2;
  v4 = sub_1DAED09DC();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAED0A3C();
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DAED10DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  (*(v13 + 16))(v16, a1, v12, v15);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = swift_allocObject();
  v19 = v24[0];
  *(v18 + 16) = v24[0];
  *(v18 + 24) = v2;
  (*(v13 + 32))(v18 + v17, v16, v12);
  aBlock[4] = sub_1DAEBB034;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_151_0;
  v20 = _Block_copy(aBlock);
  v21 = v19;
  v22 = v2;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v11, v7, v20);
  _Block_release(v20);
  (*(v27 + 8))(v7, v4);
  (*(v25 + 8))(v11, v26);
}

uint64_t sub_1DAEB5A98(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAED10DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v11 = sub_1DAECEDEC();
  __swift_project_value_buffer(v11, qword_1EE0117F0);
  v12 = a1;
  v13 = sub_1DAECEDCC();
  v14 = sub_1DAED200C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = v7;
    v17 = a3;
    v18 = v16;
    *v15 = 138543362;
    *(v15 + 4) = v12;
    *v16 = v12;
    v19 = v12;
    _os_log_impl(&dword_1DAD61000, v13, v14, "Set environment modifiers for session: %{public}@", v15, 0xCu);
    sub_1DAD64398(v18, &qword_1ECC07CF0, &qword_1DAED57A0);
    v20 = v18;
    a3 = v17;
    v7 = v36;
    MEMORY[0x1E127F100](v20, -1, -1);
    MEMORY[0x1E127F100](v15, -1, -1);
  }

  v21 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v21 + 16));
  v22 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v23 = *(a2 + v22);

  v24 = sub_1DADB7CF0(v12, v23);

  if (v24)
  {
    (*(v7 + 16))(v10, a3, v6);
    v25 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers;
    swift_beginAccess();
    (*(v7 + 40))(v24 + v25, v10, v6);
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v21 + 16));
  v26 = sub_1DAECDAFC();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_1DAECDAEC();
  sub_1DAD649C4(&qword_1EE005790, 255, MEMORY[0x1E6993E88]);
  v29 = sub_1DAECDADC();
  v31 = v30;

  v32 = sub_1DAD6F45C();
  if (!v32)
  {
    return sub_1DAD70BB4(v29, v31);
  }

  v33 = v32;
  v34 = sub_1DAECDC0C();
  [v33 setEnvironmentModifiers:v34 forSession:v12];
  sub_1DAD70BB4(v29, v31);

  return swift_unknownObjectRelease();
}

void sub_1DAEB5F6C(uint64_t a1, char *a2)
{
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v3 = sub_1DAECEDEC();
  __swift_project_value_buffer(v3, qword_1EE0117F0);
  v4 = sub_1DAECEDCC();
  v5 = sub_1DAED203C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DAD61000, v4, v5, "Connection Interrupted", v6, 2u);
    MEMORY[0x1E127F100](v6, -1, -1);
  }

  v7 = *&a2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v7 + 16));
  sub_1DAEB609C(a2);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_1DAEB609C(char *a1)
{
  v2 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  result = swift_beginAccess();
  v4 = *&a1[v2];
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (!*(v4 + 16))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v4 < 0)
  {
    v5 = *&a1[v2];
  }

  v6 = *&a1[v2];

  v7 = sub_1DAED247C();

  if (v7)
  {
LABEL_7:
    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v8 = sub_1DAECEDEC();
    __swift_project_value_buffer(v8, qword_1EE0117F0);
    v9 = a1;
    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134349056;
      v13 = *&a1[v2];
      if ((v13 & 0xC000000000000001) != 0)
      {

        v14 = sub_1DAED247C();
      }

      else
      {
        v14 = *(v13 + 16);
      }

      *(v12 + 4) = v14;

      _os_log_impl(&dword_1DAD61000, v10, v11, "Reconnecting because we had %{public}ld subscriptions active.", v12, 0xCu);
      MEMORY[0x1E127F100](v12, -1, -1);
    }

    else
    {

      v10 = v9;
    }

    return sub_1DAD69DF8();
  }

  return result;
}

id sub_1DAEB629C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetRendererClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DAEB654C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A970, &qword_1DAEDF110);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_extensionsDidChangePublisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08388, &qword_1DAEDDF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A2E0, &qword_1DAEDD840);
  sub_1DAD64B94(&qword_1EE005CA0, &qword_1ECC08388, &qword_1DAEDDF20);
  sub_1DAECEF8C();

  sub_1DAD64B94(&qword_1ECC0A980, &unk_1ECC0A970, &qword_1DAEDF110);
  v6 = sub_1DAECEF6C();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_1DAEB6748()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity;
  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity);
    }

    v5 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity);

    v6 = sub_1DAED247C();

    if (v6)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = *(v0 + v2);

  sub_1DAE7DECC(v8);
  v10 = v9;
LABEL_8:
  os_unfair_lock_unlock(*(v1 + 16));
  return v10;
}

uint64_t sub_1DAEB67F4()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    type metadata accessor for AppDelegate();
    v2 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v2)
    {
      v18 = sub_1DADFBE74;
      v19 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DAD751C0;
      v17 = &block_descriptor_124;
      v3 = _Block_copy(aBlock);
      BSDispatchMain();
      _Block_release(v3);
    }
  }

  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE011BD8;
  swift_beginAccess();
  sub_1DAD6495C(v4 + 16, aBlock, &qword_1ECC08380, &unk_1DAED6590);
  v5 = v17;
  if (!v17)
  {
    return sub_1DAD64398(aBlock, &qword_1ECC08380, &unk_1DAED6590);
  }

  v6 = __swift_project_boxed_opaque_existential_1(aBlock, v17);
  v7 = *(v5 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, v9);

  sub_1DAD64398(aBlock, &qword_1ECC08380, &unk_1DAED6590);
  v12 = *(*v11 + 104);
  v13 = *(v7 + 8);

  v13(v11, v5);
  sub_1DAED121C();
}

uint64_t sub_1DAEB6A98(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v33 = a1;
  v7 = sub_1DAED09DC();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DAED0A3C();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v3[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  BSDispatchQueueAssert();
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v14 = sub_1DAECEDEC();
  __swift_project_value_buffer(v14, qword_1EE0117F0);

  v15 = sub_1DAECEDCC();
  v16 = sub_1DAED203C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1DAD6482C(a2, a3, aBlock);
    _os_log_impl(&dword_1DAD61000, v15, v16, "Received configuration did change for host: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E127F100](v18, -1, -1);
    MEMORY[0x1E127F100](v17, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = MEMORY[0x1E69E7CC8];
  v20 = *&v4[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v20 + 16));
  v21 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_configurationsByHostIdentifier;
  swift_beginAccess();
  v22 = v33;
  v23 = v33;

  sub_1DADD8350(v22, a2, a3);
  swift_endAccess();
  *(v19 + 16) = *&v4[v21];

  os_unfair_lock_unlock(*(v20 + 16));
  v24 = *&v4[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue];
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  *(v25 + 24) = v19;
  aBlock[4] = sub_1DAEBAD3C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_105;
  v26 = _Block_copy(aBlock);
  v27 = v4;

  v28 = v32;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  v29 = v34;
  v30 = v38;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v28, v29, v26);
  _Block_release(v26);
  (*(v37 + 8))(v29, v30);
  (*(v35 + 8))(v28, v36);
}

uint64_t sub_1DAEB6FD4(void *a1)
{
  v2 = v1;
  v4 = sub_1DAED09DC();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1DAED0A3C();
  v29 = *(v31 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  BSDispatchQueueAssert();
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v11 = sub_1DAECEDEC();
  __swift_project_value_buffer(v11, qword_1EE0117F0);
  v12 = a1;
  v13 = sub_1DAECEDCC();
  v14 = sub_1DAED203C();
  if (os_log_type_enabled(v13, v14))
  {
    v28 = v4;
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    v16 = [v12 extensions];
    sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
    sub_1DAE8A564(&qword_1EE00BDF0, &unk_1EE00BE00, 0x1E69943B8);
    v17 = sub_1DAED1F6C();

    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = sub_1DAED247C();
    }

    else
    {
      v18 = *(v17 + 16);
    }

    *(v15 + 4) = v18;

    _os_log_impl(&dword_1DAD61000, v13, v14, "Received extensions did change: %{public}ld", v15, 0xCu);
    MEMORY[0x1E127F100](v15, -1, -1);
    v4 = v28;
  }

  else
  {

    v13 = v12;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = MEMORY[0x1E69E7CC8];
  v20 = *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v20 + 16));
  sub_1DAEB74CC(v2, v12, (v19 + 16));
  os_unfair_lock_unlock(*(v20 + 16));
  v21 = *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue];
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  *(v22 + 24) = v19;
  aBlock[4] = sub_1DAEBACD8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_96;
  v23 = _Block_copy(aBlock);
  v24 = v2;

  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  v25 = v30;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v9, v25, v23);
  _Block_release(v23);
  (*(v32 + 8))(v25, v4);
  (*(v29 + 8))(v9, v31);
}

uint64_t sub_1DAEB74CC(uint64_t a1, id a2, uint64_t *a3)
{
  v4 = v3;
  v6 = [a2 extensions];
  sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
  sub_1DAE8A564(&qword_1EE00BDF0, &unk_1EE00BE00, 0x1E69943B8);
  v7 = sub_1DAED1F6C();

  v29 = sub_1DADBDB00(MEMORY[0x1E69E7CC0]);
  v27 = a3;
  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAED1F9C();
    v7 = v28[1];
    v8 = v28[2];
    v9 = v28[3];
    v10 = v28[4];
    v11 = v28[5];
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v8 = (v7 + 56);
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = (v14 & *(v7 + 56));

    v10 = 0;
  }

  if (v7 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v10;
  v16 = v11;
  v17 = v10;
  if (v11)
  {
LABEL_12:
    v18 = (v16 - 1) & v16;
    v6 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v6)
    {
LABEL_19:
      sub_1DAD70B20();

      v19 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity;
      v20 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity);
      *(a1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity) = v29;

      sub_1DAEB3B14(v21);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A960, &unk_1DAEDF100);
      v22 = sub_1DAED100C();
      v23 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_widgetDescriptorCollection);
      *(a1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_widgetDescriptorCollection) = v22;

      v24 = *v27;
      *v27 = *(a1 + v19);
    }

    while (1)
    {
      v28[0] = v6;
      sub_1DAEB77E8(&v29, v28);
      if (v4)
      {
        break;
      }

      v10 = v17;
      v11 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (sub_1DAED24BC())
      {
        swift_dynamicCast();
        v6 = v28[0];
        v17 = v10;
        v18 = v11;
        if (v28[0])
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
    while (1)
    {
      v17 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= ((v9 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v16 = v8[v17];
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  sub_1DAD70B20();

  __break(1u);
  return result;
}

void sub_1DAEB77E8(uint64_t *a1, void **a2)
{
  v3 = *a2;
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v4 = sub_1DAECEDEC();
  __swift_project_value_buffer(v4, qword_1EE0117F0);
  v5 = v3;
  v6 = sub_1DAECEDCC();
  v7 = sub_1DAED203C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446210;
    v10 = [v5 description];
    v11 = sub_1DAED1CEC();
    v13 = v12;

    v14 = sub_1DAD6482C(v11, v13, &v23);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1DAD61000, v6, v7, "Received extension: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E127F100](v9, -1, -1);
    MEMORY[0x1E127F100](v8, -1, -1);
  }

  v15 = [v5 identity];
  v16 = *a1;
  if ((*a1 & 0xC000000000000001) == 0)
  {
    v20 = *a1;
    v21 = v5;
    goto LABEL_12;
  }

  if (v16 < 0)
  {
    v17 = *a1;
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v18 = v5;
  v19 = sub_1DAED247C();
  if (!__OFADD__(v19, 1))
  {
    *a1 = sub_1DAEB9770(v17, v19 + 1);
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *a1;
    sub_1DADBDEA4(v5, v15, isUniquelyReferenced_nonNull_native);

    *a1 = v23;
    return;
  }

  __break(1u);
}

uint64_t sub_1DAEB7A14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + *a3);
  swift_beginAccess();
  v6 = *(a2 + 16);

  sub_1DAECEE6C();
}

uint64_t sub_1DAEB7AE0()
{
  v75 = sub_1DAED09DC();
  v74 = *(v75 - 8);
  v1 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v72 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1DAED0A3C();
  v71 = *(v73 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAED14BC();
  v81 = *(v5 - 8);
  v6 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1DAED14CC();
  v78 = *(v80 - 8);
  v8 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A990, &qword_1DAEDE2D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v77 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v67 - v17;
  v18 = sub_1DAECF8EC();
  v19 = *(v18 - 8);
  v86 = v18;
  v87 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v82 = &v67 - v23;
  v24 = sub_1DAED157C();
  v83 = *(v24 - 8);
  v25 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v0;
  v28 = *&v0[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  BSDispatchQueueAssert();
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v29 = sub_1DAECEDEC();
  v84 = __swift_project_value_buffer(v29, qword_1EE0117F0);
  v30 = sub_1DAECEDCC();
  v31 = sub_1DAED203C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v68 = v5;
    v33 = v27;
    v34 = v24;
    v35 = v32;
    *v32 = 0;
    _os_log_impl(&dword_1DAD61000, v30, v31, "Received system environment did change", v32, 2u);
    v36 = v35;
    v24 = v34;
    v27 = v33;
    v5 = v68;
    MEMORY[0x1E127F100](v36, -1, -1);
  }

  v37 = sub_1DAECDACC();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  sub_1DAECDABC();
  sub_1DAD649C4(&qword_1EE00AB20, 255, MEMORY[0x1E6985700]);
  sub_1DAECDAAC();

  sub_1DAECF8DC();
  v40 = v76;
  v84 = v27;
  sub_1DAED151C();
  v41 = *(v87 + 8);
  v68 = v87 + 8;
  v67 = v41;
  v41(v21, v86);
  v42 = v78;
  v43 = v80;
  (*(v78 + 16))(v10, v40, v80);
  sub_1DAD649C4(&qword_1EE005738, 255, MEMORY[0x1E69856E8]);
  v44 = v79;
  sub_1DAED1E3C();
  sub_1DAD649C4(&qword_1EE005740, 255, MEMORY[0x1E69856D8]);
  v45 = v77;
  sub_1DAED234C();
  (*(v81 + 8))(v44, v5);
  (*(v42 + 8))(v40, v43);
  v46 = *(v87 + 48);
  v47 = 1;
  if (v46(v45, 1, v86) != 1)
  {
    (*(v87 + 32))(v85, v45, v86);
    v47 = 0;
  }

  v48 = v85;
  v49 = v47;
  v50 = v86;
  (*(v87 + 56))(v85, v49, 1, v86);
  if (v46(v48, 1, v50) == 1)
  {
    (*(v83 + 8))(v84, v24);
    return sub_1DAD64398(v85, &unk_1ECC0A990, &qword_1DAEDE2D0);
  }

  else
  {
    v52 = v86;
    v53 = v87;
    v81 = *(v87 + 32);
    v54 = v82;
    (v81)(v82, v85, v86);
    v55 = v69;
    v80 = *&v69[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
    os_unfair_lock_lock(*(v80 + 16));
    v85 = v24;
    v56 = *(v53 + 16);
    v56(v21, v54, v52);
    v57 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_systemEnvironment;
    swift_beginAccess();
    (*(v53 + 40))(&v55[v57], v21, v52);
    swift_endAccess();
    os_unfair_lock_unlock(*(v80 + 16));
    v87 = *&v55[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue];
    v58 = v54;
    v59 = v52;
    v56(v21, v58, v52);
    v60 = (*(v53 + 80) + 24) & ~*(v53 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v55;
    (v81)(v61 + v60, v21, v59);
    aBlock[4] = sub_1DAEBAC68;
    aBlock[5] = v61;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_87_0;
    v62 = _Block_copy(aBlock);
    v63 = v55;
    v64 = v70;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    v88 = MEMORY[0x1E69E7CC0];
    sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
    v65 = v72;
    v66 = v75;
    sub_1DAED23CC();
    MEMORY[0x1E127DD70](0, v64, v65, v62);
    _Block_release(v62);
    (*(v74 + 8))(v65, v66);
    (*(v71 + 8))(v64, v73);
    v67(v82, v59);
    (*(v83 + 8))(v84, v85);
  }
}

unint64_t sub_1DAEB8704(uint64_t a1)
{
  result = sub_1DADBA7AC(a1);
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (result >> 62)
  {
    if (sub_1DAED247C())
    {
      goto LABEL_4;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue);
    BSDispatchQueueAssert();
    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v5 = sub_1DAECEDEC();
    __swift_project_value_buffer(v5, qword_1EE0117F0);

    v6 = sub_1DAECEDCC();
    v7 = sub_1DAED200C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      v10 = sub_1DAD674D4(0, &unk_1EE005648, 0x1E69943E0);
      v11 = MEMORY[0x1E127DB00](v3, v10);
      v13 = sub_1DAD6482C(v11, v12, &v14);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1DAD61000, v6, v7, "Received timelines did change for keys: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E127F100](v9, -1, -1);
      MEMORY[0x1E127F100](v8, -1, -1);
    }

    sub_1DAEB8B54(v3, &unk_1F56B5CA8, sub_1DAEBAC44, &block_descriptor_81_0);
  }
}

uint64_t sub_1DAEB8938(uint64_t a1)
{
  result = sub_1DADBA7AC(a1);
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue);
  BSDispatchQueueAssert();
  if (v3 >> 62)
  {
    if (sub_1DAED247C())
    {
      goto LABEL_4;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v5 = sub_1DAECEDEC();
    __swift_project_value_buffer(v5, qword_1EE0117F0);

    v6 = sub_1DAECEDCC();
    v7 = sub_1DAED200C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      v10 = sub_1DAD674D4(0, &unk_1EE005648, 0x1E69943E0);
      v11 = MEMORY[0x1E127DB00](v3, v10);
      v13 = sub_1DAD6482C(v11, v12, &v14);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1DAD61000, v6, v7, "Received snapshots did change for keys: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E127F100](v9, -1, -1);
      MEMORY[0x1E127F100](v8, -1, -1);
    }

    sub_1DAEB8B54(v3, &unk_1F56B5C58, sub_1DAEBAC20, &block_descriptor_74_0);
  }
}

uint64_t sub_1DAEB8B54(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v26[0] = a1;
  v26[1] = a2;
  v5 = sub_1DAED09DC();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAED0A3C();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v4[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  BSDispatchQueueAssert();
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x1E69E7CC0];
  v15 = *&v4[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v15 + 16));
  v16 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v17 = *&v4[v16];

  v19 = sub_1DAEB2D1C(v18);

  v20 = sub_1DADBB268(v19);

  sub_1DADBB7D8(v26[0], v20, (v14 + 16));
  swift_bridgeObjectRelease_n();
  os_unfair_lock_unlock(*(v15 + 16));
  v21 = *&v4[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue];
  v22 = swift_allocObject();
  *(v22 + 16) = v14;
  *(v22 + 24) = v4;
  aBlock[4] = v27;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = v28;
  v23 = _Block_copy(aBlock);

  v24 = v4;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v12, v8, v23);
  _Block_release(v23);
  (*(v31 + 8))(v8, v5);
  (*(v29 + 8))(v12, v30);
}

uint64_t sub_1DAEB8F54(void *a1, uint64_t a2)
{
  a1[1] = sub_1DAD649C4(&qword_1ECC0A930, a2, type metadata accessor for XcodePreviewWidgetRendererClient);
  a1[2] = sub_1DAD649C4(&qword_1ECC0A938, v3, type metadata accessor for XcodePreviewWidgetRendererClient);
  result = sub_1DAD649C4(&qword_1ECC0A940, v4, type metadata accessor for XcodePreviewWidgetRendererClient);
  a1[3] = result;
  return result;
}

void sub_1DAEB9000(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;

  sub_1DAE7DECC(v4);
  *a2 = v5;
}

void *sub_1DAEB9030(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1DAEB90B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DADBFD3C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DADDBC58();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
    v22 = *(v15 - 8);
    sub_1DADDCE6C(v14 + *(v22 + 72) * v9, a3);
    sub_1DADDA0A0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1DAEB9228(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v14 = *v2;
    v15 = sub_1DAECB350(a1);
    if (v16)
    {
      v4 = v15;
      v17 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v21 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v19 = *(*(v8 + 48) + 8 * v4);

        v13 = *(*(v8 + 56) + 8 * v4);
        sub_1DADDA714(v4, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1DADDC414();
      v8 = v21;
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = sub_1DAED26FC();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1DAED247C();
  v8 = sub_1DAEB94CC(v5, v7);

  v9 = sub_1DAECB350(a1);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 48) + 8 * v9);

  v13 = *(*(v8 + 56) + 8 * v9);
  sub_1DADDA714(v9, v8);

LABEL_11:
  *v2 = v8;
  return v13;
}

uint64_t sub_1DAEB9380(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_1DADA5AD0(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1DADC7C48(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1DADDC6D8();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1DAED26FC();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1DAED247C();
  v8 = sub_1DAEB99AC(v4, v7);

  v9 = sub_1DADA5AD0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1DADC7C48(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1DAEB94CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080C8, &qword_1DAED6250);
    v2 = sub_1DAED278C();
    v19 = v2;
    sub_1DAED266C();
    if (sub_1DAED270C())
    {
      type metadata accessor for ActivityRendererSessionKey();
      do
      {
        swift_dynamicCast();
        type metadata accessor for ActivityRendererSessionSubscriptionRequest();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1DADD951C(v12 + 1, 1);
        }

        v2 = v19;
        v3 = *(v19 + 40);
        sub_1DAED294C();
        v4 = *(v18 + 16);
        v5 = *(v18 + 24);
        sub_1DAED1D9C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
        sub_1DAD64B94(&qword_1EE00AB58, &unk_1ECC0A9C0, &unk_1DAED8030);
        sub_1DAED1C6C();
        result = sub_1DAED297C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
      }

      while (sub_1DAED270C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1DAEB9770(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9A0, qword_1DAEDF120);
    v2 = sub_1DAED278C();
    v20 = v2;
    sub_1DAED266C();
    v3 = sub_1DAED270C();
    if (v3)
    {
      v4 = v3;
      sub_1DAED21EC();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1DADBE00C(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1DAED227C();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1DAED270C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1DAEB99AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9B0, &unk_1DAEDF140);
    v2 = sub_1DAED278C();
    v20 = v2;
    sub_1DAED266C();
    v3 = sub_1DAED270C();
    if (v3)
    {
      v4 = v3;
      sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        type metadata accessor for WidgetRendererSessionSubscriptionRequest();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1DADA5CF4(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1DAED227C();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1DAED270C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1DAEB9BE0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1DADFA9D8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1DAEB9D0C(v6);
  return sub_1DAED25DC();
}

void *sub_1DAEB9C5C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1DAED247C();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1DAEB9030(v2, 0);

    v1 = sub_1DAEBAA34(&v5, v3 + 4, v2, v1);
    sub_1DAD70B20();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1DAEB9D0C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1DAED286C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1DAED21EC();
        v6 = sub_1DAED1EAC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1DAEB9F00(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1DAEB9E10(0, v2, 1, a1);
  }
}

void sub_1DAEB9E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    sub_1DAED21EC();
    v7 = v6 + 8 * v4 - 8;
    v8 = a1 - v4;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v11 = *v7;
      v12 = v9;
      v13 = v11;
      v14 = sub_1DAED21CC();

      if ((v14 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v7 = v18 + 8;
        --v8;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v15 = *v7;
      v9 = *(v7 + 8);
      *v7 = v9;
      *(v7 + 8) = v15;
      v7 -= 8;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1DAEB9F00(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v9 = sub_1DADFA844(v9);
    }

    v89 = *(v9 + 2);
    if (v89 >= 2)
    {
      while (*v6)
      {
        v90 = v9;
        v9 = (v89 - 1);
        v91 = *&v90[16 * v89];
        v92 = *&v90[16 * v89 + 24];
        sub_1DAEBA530((*v6 + 8 * v91), (*v6 + 8 * *&v90[16 * v89 + 16]), (*v6 + 8 * v92), v7);
        if (v5)
        {
          goto LABEL_99;
        }

        if (v92 < v91)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_1DADFA844(v90);
        }

        if (v89 - 2 >= *(v90 + 2))
        {
          goto LABEL_115;
        }

        v93 = &v90[16 * v89];
        *v93 = v91;
        *(v93 + 1) = v92;
        sub_1DADFA7B8(v89 - 1);
        v9 = v90;
        v89 = *(v90 + 2);
        if (v89 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v96 = v9;
      v100 = v5;
      v12 = *(*v6 + 8 * v11);
      v9 = (8 * v8);
      v13 = (*v6 + 8 * v8);
      v15 = *v13;
      v14 = v13 + 2;
      sub_1DAED21EC();
      v16 = v12;
      v17 = v15;
      v18 = v10;
      v19 = sub_1DAED21CC();

      v98 = v18;
      v20 = v18 + 2;
      while (v7 != v20)
      {
        v21 = *(v14 - 1);
        v22 = *v14;
        v23 = v21;
        LODWORD(v21) = sub_1DAED21CC() & 1;

        ++v20;
        ++v14;
        if ((v19 & 1) != v21)
        {
          v7 = v20 - 1;
          break;
        }
      }

      v5 = v100;
      v6 = a3;
      if (v19)
      {
        v10 = v98;
        if (v7 < v98)
        {
          goto LABEL_118;
        }

        if (v98 < v7)
        {
          v24 = 8 * v7 - 8;
          v25 = v7;
          v26 = v98;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v27 = *&v9[v28];
              *&v9[v28] = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v9 += 8;
          }

          while (v26 < v25);
        }

        v11 = v7;
        v9 = v96;
      }

      else
      {
        v11 = v7;
        v9 = v96;
        v10 = v98;
      }
    }

    v29 = v6[1];
    if (v11 < v29)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_117;
      }

      if (v11 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_119;
        }

        if (v10 + a4 >= v29)
        {
          v30 = v6[1];
        }

        else
        {
          v30 = v10 + a4;
        }

        if (v30 < v10)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v11 != v30)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v11 < v10)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DADFA858(0, *(v9 + 2) + 1, 1, v9);
    }

    v43 = *(v9 + 2);
    v42 = *(v9 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      v9 = sub_1DADFA858((v42 > 1), v43 + 1, 1, v9);
    }

    *(v9 + 2) = v44;
    v45 = &v9[16 * v43];
    *(v45 + 4) = v10;
    *(v45 + 5) = v11;
    v46 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v105 = v11;
    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v9 + 4);
          v49 = *(v9 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_58:
          if (v51)
          {
            goto LABEL_105;
          }

          v64 = &v9[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_108;
          }

          v70 = &v9[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_112;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v74 = &v9[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_72:
        if (v69)
        {
          goto LABEL_107;
        }

        v77 = &v9[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_110;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_79:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
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
          goto LABEL_120;
        }

        if (!*v6)
        {
          goto LABEL_123;
        }

        v86 = *&v9[16 * v85 + 32];
        v87 = *&v9[16 * v47 + 40];
        sub_1DAEBA530((*v6 + 8 * v86), (*v6 + 8 * *&v9[16 * v47 + 32]), (*v6 + 8 * v87), v46);
        if (v5)
        {
          goto LABEL_99;
        }

        if (v87 < v86)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1DADFA844(v9);
        }

        if (v85 >= *(v9 + 2))
        {
          goto LABEL_102;
        }

        v88 = &v9[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        sub_1DADFA7B8(v47);
        v44 = *(v9 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v9[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_103;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_104;
      }

      v59 = &v9[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_106;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_109;
      }

      if (v63 >= v55)
      {
        v81 = &v9[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v105;
    if (v105 >= v7)
    {
      goto LABEL_89;
    }
  }

  v97 = v9;
  v101 = v5;
  v31 = *v6;
  sub_1DAED21EC();
  v32 = v31 + 8 * v11 - 8;
  v99 = v10;
  v33 = v10 - v11;
  v103 = v30;
LABEL_31:
  v104 = v11;
  v34 = *(v31 + 8 * v11);
  v35 = v33;
  v7 = v32;
  while (1)
  {
    v36 = *v7;
    v37 = v34;
    v38 = v36;
    v39 = sub_1DAED21CC();

    if ((v39 & 1) == 0)
    {
LABEL_30:
      v11 = v104 + 1;
      v32 += 8;
      --v33;
      if (v104 + 1 != v103)
      {
        goto LABEL_31;
      }

      v11 = v103;
      v10 = v99;
      v5 = v101;
      v6 = a3;
      v9 = v97;
      goto LABEL_38;
    }

    if (!v31)
    {
      break;
    }

    v40 = *v7;
    v34 = *(v7 + 8);
    *v7 = v34;
    *(v7 + 8) = v40;
    v7 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_30;
    }
  }

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
}