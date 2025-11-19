uint64_t sub_1B3714C40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3714CE0;

  return sub_1B371371C();
}

uint64_t sub_1B3714CE0()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_1B3714DC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3714744();
  *a1 = result;
  return result;
}

uint64_t sub_1B3714DE8(uint64_t a1)
{
  v2 = sub_1B3714F0C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

double sub_1B3714E34()
{
  result = *(v0 + 16) / 100.0;
  if (result <= -1.0)
  {
    result = -1.0;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

id sub_1B3714E60(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B37F19D0;
  v6[3] = &block_descriptor_1;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithModifier_];
  _Block_release(v3);

  return v4;
}

unint64_t sub_1B3714F0C()
{
  result = qword_1EB8513E0;
  if (!qword_1EB8513E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8513E0);
  }

  return result;
}

uint64_t sub_1B3714F60()
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B3714CE0;

  return sub_1B3713A4C(v3, v0);
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return sub_1B3C97F58();
}

id sub_1B371502C(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___PUOneUpDetailsBarButtonController_revertTimer] = 0;
  v2[OBJC_IVAR___PUOneUpDetailsBarButtonController_hasFinishedDisplayingVisualLookupGlyph] = 0;
  *&v2[OBJC_IVAR___PUOneUpDetailsBarButtonController_barButtonItem] = a1;
  *&v2[OBJC_IVAR___PUOneUpDetailsBarButtonController_browseViewModel] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for OneUpDetailsBarButtonController();
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_1B37150D4()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR___PUOneUpDetailsBarButtonController_browseViewModel) assetViewModelForCurrentAssetReference];
  if (!v2)
  {
    return;
  }

  v32 = v2;
  v3 = sub_1B3715548(v2);
  v5 = v4;
  v6 = sub_1B3715768(v32);
  v7 = v6;
  v9 = v8;
  v10 = *(v1 + OBJC_IVAR___PUOneUpDetailsBarButtonController_barButtonItem);
  if (*(v10 + OBJC_IVAR___PUAnimatableBarButtonItem_currentImageName + 8))
  {
    v11 = *(v10 + OBJC_IVAR___PUAnimatableBarButtonItem_currentImageName);
    v12 = *(v10 + OBJC_IVAR___PUAnimatableBarButtonItem_currentImageName + 8);
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = v11 == v3 && v12 == v5;
  v31 = v6;
  if (v13 || (sub_1B3C9D6A8() & 1) != 0)
  {
LABEL_16:
    v15 = v9;
    v16 = 1;
    goto LABEL_17;
  }

  if (v9)
  {
    if (v11 != v7 || v9 != v12)
    {
      v15 = v9;
      v16 = sub_1B3C9D6A8();
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v15 = 0;
  v16 = 0;
LABEL_17:

  v17 = sub_1B3C9C6F8();
  v18 = sub_1B3C9C6F8();
  v19 = sub_1B37157F8(v11, v12, v32);

  if (v17)
  {
    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = 2;
    }
  }

  else
  {
    if ((v18 & 1) == 0)
    {
      v21 = v15;
      if (v16)
      {

LABEL_33:
        v22 = OBJC_IVAR___PUOneUpDetailsBarButtonController_revertTimer;
        [*(v1 + OBJC_IVAR___PUOneUpDetailsBarButtonController_revertTimer) invalidate];
        *(v1 + OBJC_IVAR___PUOneUpDetailsBarButtonController_hasFinishedDisplayingVisualLookupGlyph) = 0;
        sub_1B3715BFC();
        v23 = [swift_getObjCClassFromMetadata() sharedInstance];
        [v23 visualLookupGlyphAnimationFadeOutDelay];
        v25 = v24;

        v26 = objc_opt_self();
        v27 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_1B3715C40;
        aBlock[5] = v27;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B37D2F2C;
        aBlock[3] = &block_descriptor_2;
        v28 = _Block_copy(aBlock);

        v29 = [v26 scheduledTimerWithTimeInterval:0 repeats:v28 block:v25];

        _Block_release(v28);
        v30 = *(v1 + v22);
        *(v1 + v22) = v29;

        return;
      }

      v20 = (v19 & 1) == 0;
      goto LABEL_28;
    }

    v20 = 1;
  }

  v21 = v15;
  if ((v16 & 1) == 0)
  {
LABEL_28:
    sub_1B3841FC8(v3, v5, v31, v21, v20);
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_33;
  }
}

void sub_1B3715478()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR___PUOneUpDetailsBarButtonController_hasFinishedDisplayingVisualLookupGlyph] = 1;
  }

  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    sub_1B37150D4();
  }
}

unint64_t sub_1B3715548(void *a1)
{
  v3 = [a1 visualImageAnalysis];
  if (v3)
  {
    v4 = [v3 hasVisualSearchResults];
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  v5 = [a1 isAccessoryViewVisible];
  if ([a1 shazamEventInfo])
  {
    swift_unknownObjectRelease();
    if (v5)
    {
      return 0xD000000000000021;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if ((*(v1 + OBJC_IVAR___PUOneUpDetailsBarButtonController_hasFinishedDisplayingVisualLookupGlyph) & 1) != 0 || (v7 = [a1 visualSearchResultInfo]) == 0)
  {
    v12 = 0x7269632E6F666E69;
    if (v5)
    {
      v12 = 0xD000000000000010;
    }

    v13 = 0xD00000000000001FLL;
    if (!v5)
    {
      v13 = 0xD00000000000001ALL;
    }

    if (v4)
    {
      return v13;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v8 = v7;
    v9 = [v7 filledInfoButtonGlyphName];
    v6 = sub_1B3C9C5E8();

    v10 = [v8 infoButtonGlyphName];
    v11 = sub_1B3C9C5E8();
    swift_unknownObjectRelease();

    if (!v5)
    {
      return v11;
    }
  }

  return v6;
}

uint64_t sub_1B3715768(void *a1)
{
  v2 = [a1 isAccessoryViewVisible];
  result = [a1 shazamEventInfo];
  if (result)
  {
    swift_unknownObjectRelease();
    if (v2)
    {
      return 0x662E74656B636974;
    }

    else
    {
      return 0x74656B636974;
    }
  }

  return result;
}

uint64_t sub_1B37157F8(uint64_t a1, uint64_t a2, id a3)
{
  v6 = [a3 visualSearchResultInfo];
  if (v6)
  {
    v7 = v6;
    v8 = [a3 isAccessoryViewVisible];
    v9 = [v7 filledInfoButtonGlyphName];
    v10 = sub_1B3C9C5E8();
    v12 = v11;

    v13 = [v7 infoButtonGlyphName];
    v14 = sub_1B3C9C5E8();
    v16 = v15;

    v17 = v8 == 0;
    if (v8)
    {
      v18 = v16;
    }

    else
    {
      v18 = v12;
    }

    if (v17)
    {
      v19 = v10;
    }

    else
    {
      v19 = v14;
    }

    if (v19 == a1 && v18 == a2)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_1B3C9D6A8();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

unint64_t sub_1B371592C(void *a1)
{
  v1 = 0x7269632E6F666E69;
  v2 = [a1 assetViewModelForCurrentAssetReference];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 visualImageAnalysis];
    if (v4)
    {
      v5 = [v4 hasVisualSearchResults];
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0;
    }

    v6 = [v3 isAccessoryViewVisible];

    if (v5)
    {
      if (v6)
      {
        return 0xD00000000000001FLL;
      }

      else
      {
        return 0xD00000000000001ALL;
      }
    }

    else if (v6)
    {
      return 0xD000000000000010;
    }
  }

  return v1;
}

id sub_1B3715B48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpDetailsBarButtonController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B3715BFC()
{
  result = qword_1EB84F860;
  if (!qword_1EB84F860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB84F860);
  }

  return result;
}

unint64_t sub_1B3715C54()
{
  result = qword_1EB851440;
  if (!qword_1EB851440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851440);
  }

  return result;
}

unint64_t sub_1B3715CAC()
{
  result = qword_1EB851448;
  if (!qword_1EB851448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851448);
  }

  return result;
}

uint64_t sub_1B3715D1C()
{
  v0 = sub_1B3C97F38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B3C9C598();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1B3C97F48();
  __swift_allocate_value_buffer(v6, qword_1EB878BA8);
  __swift_project_value_buffer(v6, qword_1EB878BA8);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B3715F08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851478);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851480);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B3717198();
  sub_1B3C97CA8();
  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851488);
  sub_1B3C97C88();

  sub_1B3C97C98();
  sub_1B3C97CB8();
  return sub_1B3C97C78();
}

uint64_t sub_1B37160AC()
{
  OUTLINED_FUNCTION_0_0();
  v0[3] = v1;
  v0[4] = v2;
  sub_1B3C9C888();
  v0[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[6] = v4;
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B3716140, v4, v3);
}

uint64_t sub_1B3716140()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1B3717198();
  *v1 = v0;
  v1[1] = sub_1B3713898;
  v2 = v0[3];

  return MEMORY[0x1EEE2CA70](v2, 0, 0, 0, 0, 0, 1, &unk_1B3CF9C80);
}

uint64_t sub_1B3716228(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1B3C9C598();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1B3C97F48();
  v2[7] = swift_task_alloc();
  v4 = sub_1B3C97AE8();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v2[11] = swift_task_alloc();
  sub_1B3C9C888();
  v2[12] = sub_1B3C9C878();
  v6 = sub_1B3C9C848();
  v2[13] = v6;
  v2[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B37163DC, v6, v5);
}

uint64_t sub_1B37163DC()
{
  OUTLINED_FUNCTION_0_0();
  v1 = *(v0 + 88);
  v2 = sub_1B3C98638();
  OUTLINED_FUNCTION_7_3(v1, v3, v4, v2);
  sub_1B3C97B28();
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_1B3716498;

  return sub_1B37167A0();
}

uint64_t sub_1B3716498()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  v5 = v2[11];
  *v4 = *v1;
  *(v3 + 128) = v0;

  sub_1B3713154(v5);
  v6 = v2[14];
  v7 = v2[13];
  if (v0)
  {
    v8 = sub_1B3716710;
  }

  else
  {
    v8 = sub_1B37165E8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1B37165E8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  sub_1B3C9C538();
  sub_1B37BF998(v4);
  (*(v5 + 8))(v4, v6);
  sub_1B3C97AF8();
  sub_1B3C97B08();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_1();

  return v7();
}

uint64_t sub_1B3716710()
{

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37167A0()
{
  OUTLINED_FUNCTION_0_0();
  *(v0 + 120) = v1;
  *(v0 + 16) = v2;
  v3 = sub_1B3C9A558();
  *(v0 + 24) = v3;
  *(v0 + 32) = *(v3 - 8);
  *(v0 + 40) = swift_task_alloc();
  sub_1B3C9C888();
  *(v0 + 48) = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  *(v0 + 56) = v5;
  *(v0 + 64) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B3716894, v5, v4);
}

uint64_t sub_1B3716894()
{
  v19 = v0;
  v1 = sub_1B3C98D08();
  v3 = v2;
  sub_1B3C987F8();

  v4 = sub_1B3C9A538();
  v5 = sub_1B3C9CAE8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 24);
  if (v6)
  {
    v17 = *(v0 + 40);
    v10 = v1;
    v11 = *(v0 + 120);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 67109378;
    *(v12 + 4) = v11;
    *(v12 + 8) = 2082;
    v14 = sub_1B3749364(v10, v3, &v18);

    *(v12 + 10) = v14;
    _os_log_impl(&dword_1B36F3000, v4, v5, "Parameters: { enabled: %{BOOL}d, asset: %{public}s }", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1B8C6EC70](v13, -1, -1);
    MEMORY[0x1B8C6EC70](v12, -1, -1);

    (*(v8 + 8))(v17, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  *(v0 + 72) = type metadata accessor for PXEditAppDependencyManager();
  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  *v15 = v0;
  v15[1] = sub_1B3716A94;

  return sub_1B37BD42C();
}

uint64_t sub_1B3716A94()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1B3712CF0;
  }

  else
  {
    v7 = sub_1B3716BC8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B3716BC8()
{
  OUTLINED_FUNCTION_0_0();
  v1 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v2 = swift_allocObject();
  *(v0 + 96) = v2;
  *(v2 + 16) = xmmword_1B3CF9810;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x1E69C41F0]) initWithEnabled_];
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1B3716CB8;

  return sub_1B37BD81C();
}

uint64_t sub_1B3716CB8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1B3712D54;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1B3712C8C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B3716DBC()
{
  v0 = sub_1B3C97CC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v26[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  OUTLINED_FUNCTION_8_0(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851468);
  OUTLINED_FUNCTION_8_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  OUTLINED_FUNCTION_8_0(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26[-v14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851470);
  v16 = sub_1B3C97F48();
  OUTLINED_FUNCTION_7_3(v15, v17, v18, v16);
  v26[15] = 1;
  v19 = sub_1B3C9C828();
  OUTLINED_FUNCTION_7_3(v11, v20, v21, v19);
  v22 = sub_1B3C97AE8();
  OUTLINED_FUNCTION_7_3(v7, v23, v24, v22);
  (*(v1 + 104))(v3, *MEMORY[0x1E695A500], v0);
  return sub_1B3C97B88();
}

uint64_t sub_1B3716FD8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB84FF70 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878BA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B3717084()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3714CE0;

  return sub_1B37160AC();
}

uint64_t sub_1B3717124@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3716DBC();
  *a1 = result;
  return result;
}

uint64_t sub_1B371714C(uint64_t a1)
{
  v2 = sub_1B3717198();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B3717198()
{
  result = qword_1EB851460;
  if (!qword_1EB851460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851460);
  }

  return result;
}

uint64_t sub_1B37171EC()
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B3714CE0;

  return sub_1B3716228(v3, v0);
}

uint64_t OUTLINED_FUNCTION_7_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void sub_1B37172C8()
{
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  qword_1EB878BC0 = v2;
  *algn_1EB878BC8 = v4;
}

uint64_t sub_1B3717340@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1EB84FF78 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB878BC0;
  v4 = *algn_1EB878BC8;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  type metadata accessor for PUWallpaperShuffleConfigurationViewModel(0);
  sub_1B371B088(qword_1EB851490, type metadata accessor for PUWallpaperShuffleConfigurationViewModel);
  v7 = a1;

  result = sub_1B3C9AA58();
  *a2 = v5;
  a2[1] = v4;
  a2[2] = result;
  a2[3] = v9;
  a2[4] = sub_1B37174EC;
  a2[5] = v6;
  return result;
}

uint64_t sub_1B3717458@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PUWallpaperShuffleConfigurationViewModel(0);
  sub_1B371B088(qword_1EB851490, type metadata accessor for PUWallpaperShuffleConfigurationViewModel);
  v4 = a1;
  result = sub_1B3C9AA58();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_1B37174F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B3717550(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B3717590(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B3717638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = sub_1B3C9BFD8();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB851528);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854B70);
  v4 = *(a1 + 24);
  v46 = *(a1 + 16);
  v45 = v4;
  v66 = MEMORY[0x1E69E73E0];
  v67 = v46;
  v68 = MEMORY[0x1E69E73F0];
  v69 = v4;
  v5 = sub_1B3C9B728();
  WitnessTable = swift_getWitnessTable();
  v66 = v5;
  v67 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v7 = sub_1B3C9AB18();
  v8 = sub_1B3C9B2B8();
  v66 = v5;
  v67 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = MEMORY[0x1E697EBE0];
  v9 = MEMORY[0x1E697E858];
  v10 = swift_getWitnessTable();
  v66 = v7;
  v67 = v8;
  v11 = MEMORY[0x1E697C750];
  v68 = v10;
  v69 = MEMORY[0x1E697C750];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = v7;
  v67 = v8;
  v68 = v10;
  v69 = v11;
  v13 = swift_getOpaqueTypeConformance2();
  v66 = OpaqueTypeMetadata2;
  v67 = v13;
  v14 = swift_getOpaqueTypeMetadata2();
  v66 = OpaqueTypeMetadata2;
  v67 = v13;
  v15 = swift_getOpaqueTypeConformance2();
  v66 = v14;
  v67 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v66 = v14;
  v67 = v15;
  v17 = swift_getOpaqueTypeConformance2();
  v66 = v16;
  v67 = v17;
  swift_getOpaqueTypeMetadata2();
  sub_1B3C9D198();
  v66 = v16;
  v67 = v17;
  v63 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1B3C9BDC8();
  v41[1] = MEMORY[0x1E6981870];
  swift_getWitnessTable();
  v18 = sub_1B3C9A798();
  v19 = swift_getWitnessTable();
  v66 = v18;
  v67 = v19;
  swift_getOpaqueTypeMetadata2();
  sub_1B3C9AB18();
  sub_1B3C9AB18();
  v66 = v18;
  v67 = v19;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = MEMORY[0x1E697E5D8];
  v44 = v9;
  v59 = swift_getWitnessTable();
  v60 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1B3C9AA18();
  swift_getTupleTypeMetadata3();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  v20 = sub_1B3C9BDC8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v41 - v22;
  v24 = sub_1B3C9AB18();
  v42 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v41 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB851530);
  v27 = sub_1B3C9AB18();
  v43 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = v41 - v31;
  sub_1B3C9AFF8();
  v52 = v46;
  v53 = v45;
  v54 = v47;
  sub_1B3C9BDB8();
  v40 = swift_getWitnessTable();
  sub_1B375E61C();
  sub_1B3C9BA68();
  (*(v21 + 8))(v23, v20);
  v33 = v48;
  sub_1B3C9BFB8();
  v57 = v40;
  v58 = MEMORY[0x1E697EBF8];
  v34 = swift_getWitnessTable();
  sub_1B3C9B508();
  v35 = v49;
  sub_1B3C9B838();
  (*(v50 + 8))(v33, v35);
  (*(v42 + 8))(v26, v24);
  v36 = sub_1B370ED54(&qword_1EB851538, &qword_1EB851530);
  v55 = v34;
  v56 = v36;
  v37 = swift_getWitnessTable();
  sub_1B377731C(v30, v27, v37);
  v38 = *(v43 + 8);
  v38(v30, v27);
  sub_1B377731C(v32, v27, v37);
  return (v38)(v32, v27);
}

uint64_t sub_1B3717EE8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854B70);
  v49 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851528);
  v12 = MEMORY[0x1EEE9AC00](v52);
  v50 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - v14;
  v16 = type metadata accessor for PUWallpaperShuffleConfigurationCompactEditor();
  sub_1B37185EC(v16, v15);
  v48 = v11;
  sub_1B3C9BE68();
  v17 = sub_1B3C9B528();
  sub_1B3C9A738();
  v18 = &v11[*(v7 + 36)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v23 = *a1;
  v65 = a1[1];
  v66 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  v25 = a1[1];
  *(v24 + 32) = *a1;
  *(v24 + 48) = v25;
  *(v24 + 64) = a1[2];
  sub_1B371AE2C(&v66, &v59);
  sub_1B371B31C(&v65, &v59, &qword_1EB851540);

  v59 = MEMORY[0x1E69E73E0];
  v60 = a2;
  v61 = MEMORY[0x1E69E73F0];
  v62 = a3;
  v26 = sub_1B3C9B728();
  WitnessTable = swift_getWitnessTable();
  v59 = v26;
  v60 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v28 = sub_1B3C9AB18();
  v29 = sub_1B3C9B2B8();
  v59 = v26;
  v60 = WitnessTable;
  v58[7] = swift_getOpaqueTypeConformance2();
  v58[8] = MEMORY[0x1E697EBE0];
  v30 = swift_getWitnessTable();
  v59 = v28;
  v60 = v29;
  v31 = MEMORY[0x1E697C750];
  v61 = v30;
  v62 = MEMORY[0x1E697C750];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = v28;
  v60 = v29;
  v61 = v30;
  v62 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = OpaqueTypeMetadata2;
  v60 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeMetadata2();
  v59 = OpaqueTypeMetadata2;
  v60 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v59 = v34;
  v60 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v59 = v34;
  v60 = v35;
  v37 = swift_getOpaqueTypeConformance2();
  v59 = v36;
  v60 = v37;
  swift_getOpaqueTypeMetadata2();
  sub_1B3C9D198();
  v59 = v36;
  v60 = v37;
  v58[6] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1B3C9BDC8();
  swift_getWitnessTable();
  v38 = sub_1B3C9A798();
  v39 = swift_getWitnessTable();
  v59 = v38;
  v60 = v39;
  swift_getOpaqueTypeMetadata2();
  sub_1B3C9AB18();
  sub_1B3C9AB18();
  v59 = v38;
  v60 = v39;
  v58[4] = swift_getOpaqueTypeConformance2();
  v58[5] = MEMORY[0x1E697E5D8];
  v58[2] = swift_getWitnessTable();
  v58[3] = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  v59 = sub_1B3C9AA08();
  v60 = v40;
  v41 = sub_1B3C9AA18();
  v42 = swift_getWitnessTable();
  sub_1B377731C(&v59, v41, v42);

  v43 = v50;
  sub_1B371B31C(v15, v50, &qword_1EB851528);
  v59 = v43;
  v44 = v48;
  v45 = v51;
  sub_1B371B31C(v48, v51, &qword_1EB854B70);
  v58[0] = v63;
  v58[1] = v64;
  v60 = v45;
  v61 = v58;

  v57[0] = v52;
  v57[1] = v49;
  v57[2] = v41;
  v54 = sub_1B371AE88();
  v55 = sub_1B371AFCC();
  v56 = v42;
  sub_1B375F3DC(&v59, 3, v57);

  sub_1B371B36C(v44, &qword_1EB854B70);
  sub_1B371B36C(v15, &qword_1EB851528);

  sub_1B371B36C(v45, &qword_1EB854B70);
  return sub_1B371B36C(v43, &qword_1EB851528);
}

uint64_t sub_1B37185EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851580);
  sub_1B370ED54(&qword_1EB851588, &qword_1EB851580);
  *a2 = sub_1B375F548();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851590);
  sub_1B371A314(v2, *(a1 + 16), *(a1 + 24), (a2 + *(v5 + 44)));
  v6 = sub_1B3C9B568();
  sub_1B3C9A738();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851558) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = sub_1B3C9B4F8();
  sub_1B3C9A738();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851528);
  v26 = a2 + *(result + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_1B3718750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v51 = a3;
  v54 = a2;
  v57 = a1;
  v58 = a5;
  v7 = sub_1B3C9B1D8();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x1E69E73E0];
  v70 = a3;
  v71 = MEMORY[0x1E69E73F0];
  v72 = a4;
  v9 = sub_1B3C9B728();
  WitnessTable = swift_getWitnessTable();
  v69 = v9;
  v70 = WitnessTable;
  v11 = MEMORY[0x1E697D298];
  swift_getOpaqueTypeMetadata2();
  v12 = sub_1B3C9AB18();
  v13 = sub_1B3C9B2B8();
  v69 = v9;
  v70 = WitnessTable;
  v44[1] = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = MEMORY[0x1E697EBE0];
  v52 = MEMORY[0x1E697E858];
  v14 = swift_getWitnessTable();
  v69 = v12;
  v70 = v13;
  v15 = MEMORY[0x1E697C750];
  v71 = v14;
  v72 = MEMORY[0x1E697C750];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = v12;
  v70 = v13;
  v71 = v14;
  v72 = v15;
  v17 = swift_getOpaqueTypeConformance2();
  v69 = OpaqueTypeMetadata2;
  v70 = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  v69 = OpaqueTypeMetadata2;
  v70 = v17;
  v19 = swift_getOpaqueTypeConformance2();
  v69 = v18;
  v70 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v69 = v18;
  v70 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v69 = v20;
  v70 = v21;
  swift_getOpaqueTypeMetadata2();
  sub_1B3C9D198();
  v69 = v20;
  v70 = v21;
  v66 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1B3C9BDC8();
  v44[0] = swift_getWitnessTable();
  v22 = sub_1B3C9A798();
  v46 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v44 - v23;
  v25 = swift_getWitnessTable();
  v69 = v22;
  v70 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v45 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v44 - v27;
  v29 = sub_1B3C9AB18();
  v48 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v44 - v30;
  v32 = sub_1B3C9AB18();
  v49 = *(v32 - 8);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v47 = v44 - v36;
  v59 = v51;
  v60 = v50;
  v61 = v54;
  sub_1B3C9B4D8();
  sub_1B371A290();
  v37 = v53;
  sub_1B3C9B1C8();
  sub_1B371A2A8();
  sub_1B3C9B9E8();
  (*(v55 + 8))(v37, v56);
  (*(v46 + 8))(v24, v22);
  sub_1B3C9B4F8();
  v69 = v22;
  v70 = v25;
  v38 = swift_getOpaqueTypeConformance2();
  sub_1B3C9BA88();
  (*(v45 + 8))(v28, v26);
  sub_1B3C9A988();
  v64 = v38;
  v65 = MEMORY[0x1E697E5D8];
  v43 = swift_getWitnessTable();
  sub_1B375E61C();
  sub_1B3C9BA68();
  (*(v48 + 8))(v31, v29);
  v62 = v43;
  v63 = MEMORY[0x1E697EBF8];
  v39 = swift_getWitnessTable();
  v40 = v47;
  sub_1B377731C(v35, v32, v39);
  v41 = *(v49 + 8);
  v41(v35, v32);
  sub_1B377731C(v40, v32, v39);
  return (v41)(v40, v32);
}

uint64_t sub_1B3718F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B3C9B728();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1B3C9AB18();
  sub_1B3C9B2B8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = MEMORY[0x1E697EBE0];
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E697C750];
  swift_getOpaqueTypeMetadata2();
  v29 = WitnessTable;
  v30 = v7;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1B3C9D198();
  v27 = OpaqueTypeMetadata2;
  v28 = v9;
  v24 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v10 = sub_1B3C9BDC8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20[-v15];
  sub_1B3C9AFF8();
  v21 = a2;
  v22 = a3;
  v23 = a1;
  sub_1B3C9BDB8();
  v17 = swift_getWitnessTable();
  sub_1B377731C(v14, v10, v17);
  v18 = *(v11 + 8);
  v18(v14, v10);
  sub_1B377731C(v16, v10, v17);
  return (v18)(v16, v10);
}

uint64_t sub_1B3719348@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  sub_1B3C9B728();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1B3C9AB18();
  sub_1B3C9B2B8();
  v16[2] = swift_getOpaqueTypeConformance2();
  v16[3] = MEMORY[0x1E697EBE0];
  WitnessTable = swift_getWitnessTable();
  v2 = MEMORY[0x1E697C750];
  swift_getOpaqueTypeMetadata2();
  v19 = WitnessTable;
  v20 = v2;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = OpaqueTypeMetadata2;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v5 = sub_1B3C9D198();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  v12 = type metadata accessor for PUWallpaperShuffleConfigurationCompactEditor();
  sub_1B37196D0(v12, v9);
  v17 = OpaqueTypeMetadata2;
  v18 = OpaqueTypeConformance2;
  v16[1] = swift_getOpaqueTypeConformance2();
  v13 = swift_getWitnessTable();
  sub_1B377731C(v9, v5, v13);
  v14 = *(v6 + 8);
  v14(v9, v5);
  sub_1B377731C(v11, v5, v13);
  return (v14)(v11, v5);
}

uint64_t sub_1B37196D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v4 = sub_1B3C9B2B8();
  v93 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v92 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B3C9B1D8();
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v89 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v104 = MEMORY[0x1E69E73E0];
  v105 = v8;
  v86 = v8;
  v106 = MEMORY[0x1E69E73F0];
  v107 = v9;
  v85 = v9;
  v10 = sub_1B3C9B728();
  v88 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v87 = v68 - v11;
  WitnessTable = swift_getWitnessTable();
  v104 = v10;
  v105 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v82 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v15 = v68 - v14;
  v84 = v16;
  v17 = sub_1B3C9AB18();
  v83 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v81 = v68 - v18;
  v104 = v10;
  v105 = WitnessTable;
  v80 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v102 = OpaqueTypeConformance2;
  v103 = MEMORY[0x1E697EBE0];
  v19 = swift_getWitnessTable();
  v104 = v17;
  v105 = v4;
  v20 = MEMORY[0x1E697C750];
  v106 = v19;
  v107 = MEMORY[0x1E697C750];
  v21 = swift_getOpaqueTypeMetadata2();
  v77 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v74 = v68 - v22;
  v79 = v17;
  v104 = v17;
  v105 = v4;
  v94 = v4;
  v76 = v19;
  v106 = v19;
  v107 = v20;
  v23 = swift_getOpaqueTypeConformance2();
  v104 = v21;
  v105 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v73 = v68 - v26;
  v78 = v21;
  v104 = v21;
  v105 = v23;
  v27 = swift_getOpaqueTypeConformance2();
  v104 = v24;
  v105 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v71 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v69 = v68 - v29;
  v104 = v24;
  v105 = v27;
  v68[1] = v27;
  v98 = swift_getOpaqueTypeConformance2();
  v99 = v28;
  v104 = v28;
  v105 = v98;
  v30 = swift_getOpaqueTypeMetadata2();
  v72 = *(v30 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v70 = v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v68[0] = v68 - v33;
  v34 = sub_1B3C9D198();
  v97 = *(v34 - 8);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v95 = v68 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v96 = v68 - v37;
  v38 = v2;
  v39 = *(v2 + 24);
  v40 = sub_1B37C2DC0();

  if (v40)
  {

    MEMORY[0x1EEE9AC00](v41);
    v42 = v85;
    v68[-4] = v86;
    v68[-3] = v42;
    v68[-2] = v38;
    v43 = v87;
    sub_1B3C9B718();
    v44 = v89;
    sub_1B3C9B1C8();
    sub_1B371A2A8();
    sub_1B3C9B9E8();
    (*(v90 + 8))(v44, v91);
    (*(v88 + 8))(v43, v10);
    v45 = v81;
    v46 = v84;
    sub_1B3C9BAD8();
    (*(v82 + 8))(v15, v46);
    v47 = v92;
    sub_1B3C9B2A8();
    v91 = v34;
    v48 = v24;
    v49 = v74;
    v50 = v79;
    v51 = v94;
    sub_1B3C9BAE8();
    (*(v93 + 8))(v47, v51);
    (*(v83 + 8))(v45, v50);
    v52 = v73;
    v53 = v78;
    sub_1B3C9B9D8();
    (*(v77 + 8))(v49, v53);
    v54 = v69;
    sub_1B3C9BA18();
    v55 = v48;
    v34 = v91;
    (*(v25 + 8))(v52, v55);
    sub_1B3C9B508();
    v56 = v70;
    v58 = v98;
    v57 = v99;
    sub_1B3C9B898();
    (*(v71 + 8))(v54, v57);
    v104 = v57;
    v105 = v58;
    v59 = swift_getOpaqueTypeConformance2();
    v60 = v68[0];
    sub_1B377731C(v56, v30, v59);
    v61 = v72;
    v62 = *(v72 + 8);
    v62(v56, v30);
    sub_1B377731C(v60, v30, v59);
    v62(v60, v30);
    v63 = v95;
    (*(v61 + 32))(v95, v56, v30);
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v30);
  }

  else
  {
    v63 = v95;
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v30);
    v58 = v98;
    v57 = v99;
    v104 = v99;
    v105 = v98;
    swift_getOpaqueTypeConformance2();
  }

  v64 = v96;
  sub_1B371AD74(v63, v96);
  v65 = *(v97 + 8);
  v65(v63, v34);
  v104 = v57;
  v105 = v58;
  v101 = swift_getOpaqueTypeConformance2();
  v66 = swift_getWitnessTable();
  sub_1B377731C(v64, v34, v66);
  return (v65)(v64, v34);
}

uint64_t sub_1B371A2A8()
{
  v0 = sub_1B3C9B4D8();
  v1 = sub_1B3C9B4C8();
  sub_1B3C9B4C8();
  if (sub_1B3C9B4C8() == v0)
  {
    return v1;
  }

  return sub_1B3C9B4C8();
}

uint64_t sub_1B371A314@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v54 = a2;
  v55 = a3;
  v49 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851598);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = (v43 - v8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8515A0) - 8;
  v9 = MEMORY[0x1EEE9AC00](v48);
  v51 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = v43 - v11;
  v52 = sub_1B3C9AF18();
  sub_1B37F3AB8(v64);
  v12 = v64[6];

  v13 = sub_1B3C9B798();
  v47 = v13;
  v15 = v14;
  v46 = v14;
  v17 = v16;
  v45 = v18;
  sub_1B371B0F4(v64);
  v19 = v17 & 1;
  sub_1B370EFD4(v13, v15, v19);

  v44 = v19;
  sub_1B371B148(v13, v15, v19);

  v67 = 1;
  v66 = v19;
  v65 = 1;
  v43[1] = a1;
  v20 = a1[1];
  v57 = *a1;
  v58 = v20;
  sub_1B371B158();

  v21 = sub_1B3C9B7A8();
  v23 = v22;
  LOBYTE(v20) = v24;
  v26 = v25;
  v27 = sub_1B3C9B6D8();
  KeyPath = swift_getKeyPath();
  v57 = v21;
  v58 = v23;
  v59 = v20 & 1;
  v60 = v26;
  v61 = 0x3FF0000000000000;
  v62 = KeyPath;
  v63 = v27;
  sub_1B3C9B658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8515A8);
  sub_1B371B1AC();
  v29 = v56;
  sub_1B3C9B848();
  sub_1B371B148(v21, v23, v20 & 1);

  v30 = sub_1B3C9BBB8();
  v31 = swift_getKeyPath();
  v32 = (v29 + *(v48 + 44));
  *v32 = v31;
  v32[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8515E0);
  sub_1B370ED54(&qword_1EB8515E8, &qword_1EB8515E0);
  v33 = sub_1B375F548();
  v34 = v50;
  *v50 = v33;
  *(v34 + 8) = 0;
  *(v34 + 16) = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8515F0);
  sub_1B371A880(v34 + *(v35 + 44));
  v36 = v51;
  sub_1B371B31C(v29, v51, &qword_1EB8515A0);
  v37 = v53;
  sub_1B371B31C(v34, v53, &qword_1EB851598);
  v38 = v49;
  *v49 = v52;
  v38[1] = 0;
  *(v38 + 16) = 1;
  v39 = v47;
  v40 = v46;
  v38[3] = v47;
  v38[4] = v40;
  LOBYTE(a1) = v44;
  *(v38 + 40) = v44;
  v38[6] = v45;
  v38[7] = 0;
  *(v38 + 64) = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8515F8);
  sub_1B371B31C(v36, v38 + *(v41 + 48), &qword_1EB8515A0);
  sub_1B371B31C(v37, v38 + *(v41 + 64), &qword_1EB851598);
  sub_1B370EFD4(v39, v40, a1);

  sub_1B371B36C(v34, &qword_1EB851598);
  sub_1B371B36C(v56, &qword_1EB8515A0);
  sub_1B371B36C(v37, &qword_1EB851598);
  sub_1B371B36C(v36, &qword_1EB8515A0);
  sub_1B371B148(v39, v40, a1);
}

uint64_t sub_1B371A880@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851600);
  v3 = v2 - 8;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = type metadata accessor for PUWallpaperShuffleConfigurationCompactEditor();
  sub_1B371A9E0(v9);
  *&v8[*(v3 + 44)] = 257;
  sub_1B371B31C(v8, v6, &qword_1EB851600);
  *a1 = 0;
  *(a1 + 8) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851608);
  sub_1B371B31C(v6, a1 + *(v10 + 48), &qword_1EB851600);
  sub_1B371B36C(v8, &qword_1EB851600);
  return sub_1B371B36C(v6, &qword_1EB851600);
}

uint64_t sub_1B371A9E0(uint64_t a1)
{
  v3 = *v1;
  v10 = v1[1];
  v11 = v3;
  v4 = swift_allocObject();
  v5 = *v1;
  v6 = v1[1];
  v4[1] = *(a1 + 16);
  v4[2] = v5;
  v7 = v1[2];
  v4[3] = v6;
  v4[4] = v7;
  sub_1B371AE2C(&v11, v9);
  sub_1B371B31C(&v10, v9, &qword_1EB851540);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851610);
  sub_1B371B418();
  return sub_1B3C9BCE8();
}

void sub_1B371AAE0(uint64_t a1)
{
  type metadata accessor for PUWallpaperShuffleConfigurationCompactEditor();
  v2 = *(a1 + 24);
  sub_1B37C31D4();
}

uint64_t sub_1B371AB38@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8538B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1B3C9BC38();
  v6 = sub_1B3C9B608();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  v7 = sub_1B3C9B678();
  sub_1B371B36C(v4, &qword_1EB8538B0);
  KeyPath = swift_getKeyPath();
  result = sub_1B3C9BB58();
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v7;
  a1[3] = result;
  return result;
}

uint64_t sub_1B371AC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = (MEMORY[0x1EEE9AC00])();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v14 - v10;
  (*(v9 + 32))();
  sub_1B377731C(v8, a2, a3);
  v12 = *(v5 + 8);
  v12(v8, a2);
  sub_1B377731C(v11, a2, a3);
  return (v12)(v11, a2);
}

uint64_t sub_1B371AD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B3C9D198();
  OUTLINED_FUNCTION_0_1();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

unint64_t sub_1B371AE88()
{
  result = qword_1EB851548;
  if (!qword_1EB851548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB851528);
    sub_1B371AF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851548);
  }

  return result;
}

unint64_t sub_1B371AF14()
{
  result = qword_1EB851550;
  if (!qword_1EB851550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB851558);
    sub_1B370ED54(&qword_1EB851560, &qword_1EB851568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851550);
  }

  return result;
}

unint64_t sub_1B371AFCC()
{
  result = qword_1EB851570;
  if (!qword_1EB851570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854B70);
    sub_1B371B088(&qword_1EB851578, MEMORY[0x1E697D6D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851570);
  }

  return result;
}

uint64_t sub_1B371B088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B371B148(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1B371B158()
{
  result = qword_1EB84F240;
  if (!qword_1EB84F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F240);
  }

  return result;
}

unint64_t sub_1B371B1AC()
{
  result = qword_1EB8515B0;
  if (!qword_1EB8515B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8515A8);
    sub_1B371B264();
    sub_1B370ED54(&qword_1EB8515D8, &qword_1EB852260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8515B0);
  }

  return result;
}

unint64_t sub_1B371B264()
{
  result = qword_1EB8515B8;
  if (!qword_1EB8515B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8515C0);
    sub_1B370ED54(&qword_1EB8515C8, &qword_1EB8515D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8515B8);
  }

  return result;
}

uint64_t sub_1B371B31C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_3_2(a1, a2, a3);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t sub_1B371B36C(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

unint64_t sub_1B371B418()
{
  result = qword_1EB851618;
  if (!qword_1EB851618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB851610);
    sub_1B371B4D0();
    sub_1B370ED54(&qword_1EB851628, &qword_1EB851630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851618);
  }

  return result;
}

unint64_t sub_1B371B4D0()
{
  result = qword_1EB851620;
  if (!qword_1EB851620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB852250);
    sub_1B370ED54(&qword_1EB8515D8, &qword_1EB852260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851620);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for StoryColorGradeEditorSheetView()
{
  result = qword_1EB851640;
  if (!qword_1EB851640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B371B654()
{
  sub_1B371B760();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StoryColorGradeEditorContentLayout();
    if (v1 <= 0x3F)
    {
      sub_1B371B7F4(319, &qword_1EB851660, &qword_1EB853510, &unk_1B3CF9FC0, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1B371B7F4(319, &qword_1EB851668, &qword_1EB852490, &unk_1B3D00260, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B371B760()
{
  if (!qword_1EB851650)
  {
    type metadata accessor for StoryColorGradeEditorViewModel();
    sub_1B371D560(&qword_1EB851658, type metadata accessor for StoryColorGradeEditorViewModel);
    v0 = sub_1B3C9AA88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB851650);
    }
  }
}

void sub_1B371B7F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B371B874@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851670);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &__src[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851678);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &__src[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851680);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &__src[-v13];
  *v6 = sub_1B3C9AFF8();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851688);
  sub_1B371BAD8(v2, &v6[*(v15 + 44)]);
  sub_1B3C9C008();
  sub_1B3C9AB98();
  sub_1B371CA48(v6, v10, &qword_1EB851670);
  memcpy(&v10[*(v8 + 44)], __src, 0x70uLL);
  v16 = sub_1B3C9AB28();
  LOBYTE(v2) = sub_1B3C9B508();
  sub_1B371CA48(v10, v14, &qword_1EB851678);
  v17 = &v14[*(v12 + 44)];
  *v17 = v16;
  v17[8] = v2;
  LOBYTE(v16) = sub_1B3C9B508();
  sub_1B371CA48(v14, a1, &qword_1EB851680);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851690);
  *(a1 + *(result + 36)) = v16;
  return result;
}

uint64_t sub_1B371BAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1B3C9B378();
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851698);
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8516A0);
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v31 - v12;
  v38 = a1;
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8516A8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8516B0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8516B8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8516C0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8516C8);
  v18 = sub_1B371CAB8();
  v42 = &type metadata for StoryColorGradeEditorContentView;
  v43 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_1B371B158();
  v42 = v17;
  v43 = MEMORY[0x1E69E6158];
  v44 = OpaqueTypeConformance2;
  v45 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v42 = v16;
  v43 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_1B370ED54(&qword_1EB8516D8, &qword_1EB8516B8);
  v42 = v14;
  v43 = v15;
  v44 = v22;
  v45 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1B3C9AA48();
  sub_1B3C9B368();
  v24 = sub_1B370ED54(&qword_1EB8516E0, &qword_1EB851698);
  v25 = sub_1B371D560(&qword_1EB8521C0, MEMORY[0x1E697C938]);
  v26 = v33;
  sub_1B3C9B7F8();
  (*(v34 + 8))(v6, v26);
  (*(v32 + 8))(v9, v7);
  v27 = *(a1 + 40);
  v28 = *(a1 + 48);
  v39 = *(a1 + 24);
  LOBYTE(v40) = v27;
  v41 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853650);
  sub_1B3C9BCB8();
  *&v39 = v7;
  *(&v39 + 1) = v26;
  v40 = v24;
  v41 = v25;
  swift_getOpaqueTypeConformance2();
  v29 = v35;
  sub_1B3C9B7D8();
  *&v39 = v42;
  sub_1B371CB0C(&v39);

  return (*(v36 + 8))(v13, v29);
}

uint64_t sub_1B371BF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1B3C9AED8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8516C8);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8516C0);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v37 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8516B0);
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v11;
  LOBYTE(v11) = *(a1 + 40);
  v12 = *(a1 + 48);
  v50 = *(a1 + 24);
  LOBYTE(v51) = v11;
  v52 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853650);
  sub_1B3C9BC98();
  if (v47)
  {
    sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      swift_once();
    }

    sub_1B3C9A438();
    sub_1B3C9A708();
    v13 = *(a1 + 8);
  }

  else
  {
    v14 = v46;
    v13 = *(a1 + 8);
    v15 = &v13[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutSpec];
    swift_beginAccess();
    __swift_project_boxed_opaque_existential_0Tm(v15, *(v15 + 3));
    sub_1B37C9A2C(v14);
    sub_1B3C9A728();
  }

  v16 = *(a1 + 16);
  type metadata accessor for StoryColorGradeEditorViewModel();
  sub_1B371D560(&qword_1EB851658, type metadata accessor for StoryColorGradeEditorViewModel);
  v17 = v13;
  v18 = v16;
  v19 = sub_1B3C9AA58();
  v21 = v20;
  *&v50 = v19;
  *(&v50 + 1) = v20;
  v51 = v18;
  (*(v4 + 104))(v6, *MEMORY[0x1E697C428], v3);
  v22 = sub_1B371CAB8();
  v36 = a1;
  sub_1B3C9BA28();
  (*(v4 + 8))(v6, v3);

  v23 = *&v17[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_title + 8];
  *&v50 = *&v17[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_title];
  *(&v50 + 1) = v23;
  v48 = &type metadata for StoryColorGradeEditorContentView;
  v49 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_1B371B158();
  v26 = MEMORY[0x1E69E6158];
  v27 = v37;
  v28 = v40;
  sub_1B3C9B948();
  (*(v38 + 8))(v8, v28);
  *&v50 = v28;
  *(&v50 + 1) = v26;
  v51 = OpaqueTypeConformance2;
  v52 = v25;
  v29 = swift_getOpaqueTypeConformance2();
  v31 = v41;
  v30 = v42;
  sub_1B3C9B7E8();
  v32 = (*(v39 + 8))(v27, v30);
  MEMORY[0x1EEE9AC00](v32);
  *(&v35 - 2) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8516B8);
  *&v50 = v30;
  *(&v50 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  sub_1B370ED54(&qword_1EB8516D8, &qword_1EB8516B8);
  v33 = v44;
  sub_1B3C9BA98();
  return (*(v43 + 8))(v31, v33);
}

uint64_t sub_1B371C5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8516E8);
  MEMORY[0x1EEE9AC00](v17[0]);
  v4 = v17 - v3;
  v5 = sub_1B3C9B238();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8516F0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  sub_1B3C9B1F8();
  v17[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854C40);
  sub_1B370ED54(&qword_1EB8516F8, &unk_1EB854C40);
  sub_1B3C9A7F8();
  sub_1B3C9B208();
  v17[4] = a1;
  sub_1B3C9A7F8();
  v13 = *(v17[0] + 48);
  v14 = *(v7 + 16);
  v14(v4, v12, v6);
  v14(&v4[v13], v10, v6);
  sub_1B3C9B058();
  v15 = *(v7 + 8);
  v15(v10, v6);
  return (v15)(v12, v6);
}

uint64_t sub_1B371C8C0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for StoryColorGradeEditorSheetView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = sub_1B3C9A6F8();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v11);
  sub_1B371CF0C(a1, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_1B371CF70(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  return MEMORY[0x1B8C69270](v13, a4, v15);
}

uint64_t sub_1B371CA48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B371CAB8()
{
  result = qword_1EB8516D0;
  if (!qword_1EB8516D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8516D0);
  }

  return result;
}

uint64_t sub_1B371CB60@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *&a2[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_mediaProvider];
  type metadata accessor for StoryColorGradeEditorViewModel();
  sub_1B371D560(&qword_1EB851658, type metadata accessor for StoryColorGradeEditorViewModel);
  v9 = a3;
  v10 = v8;
  v11 = sub_1B3C9AA68();
  swift_getKeyPath();
  sub_1B3C9AA78();

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v5;
  v12[4] = v9;
  v13 = v9;
  v14 = v5;
  sub_1B3C98BE8();
  v15 = sub_1B3C9AB28();
  LOBYTE(v5) = sub_1B3C9B508();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851730);
  v17 = a4 + *(result + 36);
  *v17 = v15;
  *(v17 + 8) = v5;
  return result;
}

void sub_1B371CCF4(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B386DBE8();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 hitTestResultAtPoint_];
    if (v9)
    {
      v15 = v9;
      type metadata accessor for StoryColorGradeEditorItemHitTestResult();
      if (swift_dynamicCastClass())
      {
        v10 = sub_1B37C1374();
        if (sub_1B37C1374() == *(a4 + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_selectedItem))
        {
          v11 = v8;
          v8 = v15;
          v15 = v11;
        }

        else
        {
          v13 = v8;
          v14 = swift_allocObject();
          *(v14 + 16) = v10;
          sub_1B386E690(sub_1B371D478, v14);

          sub_1B37A28C0();
          v8 = v15;
          v15 = v13;
        }
      }

      v12 = v15;
    }

    else
    {
      v12 = v8;
    }
  }
}

uint64_t sub_1B371CF0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryColorGradeEditorSheetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B371CF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryColorGradeEditorSheetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for StoryColorGradeEditorSheetView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1B3C9B348();
    if (!__swift_getEnumTagSinglePayload(v5 + v6, 1, v7))
    {
      (*(*(v7 - 8) + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B371D150(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for StoryColorGradeEditorSheetView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1B371D1C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B371D204(uint64_t result, int a2, int a3)
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

unint64_t sub_1B371D254()
{
  result = qword_1EB851708;
  if (!qword_1EB851708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB851690);
    sub_1B371D30C();
    sub_1B370ED54(&qword_1EB851728, &unk_1EB854A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851708);
  }

  return result;
}

unint64_t sub_1B371D30C()
{
  result = qword_1EB851710;
  if (!qword_1EB851710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB851680);
    sub_1B371D398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851710);
  }

  return result;
}

unint64_t sub_1B371D398()
{
  result = qword_1EB851718;
  if (!qword_1EB851718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB851678);
    sub_1B370ED54(&qword_1EB851720, &qword_1EB851670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851718);
  }

  return result;
}

unint64_t sub_1B371D4A4()
{
  result = qword_1EB851738;
  if (!qword_1EB851738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB851730);
    sub_1B371D560(&unk_1EB851740, MEMORY[0x1E69C3278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851738);
  }

  return result;
}

uint64_t sub_1B371D560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B371D5B4()
{
  v0 = sub_1B3C9C5E8();
  v2 = v1;
  if (v0 == sub_1B3C9C5E8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_5_4();
  }

  return v5 & 1;
}

uint64_t sub_1B371D650(unsigned __int8 a1, char a2)
{
  v2 = 0xEE006F6564695663;
  v3 = 0x6974616D656E6963;
  v4 = a1;
  v5 = 0x6974616D656E6963;
  v6 = 0xEE006F6564695663;
  switch(v4)
  {
    case 1:
      v6 = 0xE500000000000000;
      v7 = 1701079414;
      goto LABEL_12;
    case 2:
      v5 = 0x746F68506576696CLL;
      v6 = 0xE90000000000006FLL;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x7469617274726F70;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v5 = 0x7473756A6461;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v5 = 0x737265746C6966;
      break;
    case 6:
      v6 = 0xE600000000000000;
      v5 = 0x73656C797473;
      break;
    case 7:
      v6 = 0xE400000000000000;
      v5 = 1886351971;
      break;
    case 8:
      v6 = 0xE500000000000000;
      v7 = 1768191329;
LABEL_12:
      v5 = v7 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 9:
      v6 = 0xE700000000000000;
      v5 = 0x70756E61656C63;
      break;
    case 10:
      v6 = 0xE600000000000000;
      v5 = 0x657945646572;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE500000000000000;
      v8 = 1701079414;
      goto LABEL_24;
    case 2:
      v3 = 0x746F68506576696CLL;
      v2 = 0xE90000000000006FLL;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x7469617274726F70;
      break;
    case 4:
      v2 = 0xE600000000000000;
      v3 = 0x7473756A6461;
      break;
    case 5:
      v2 = 0xE700000000000000;
      v3 = 0x737265746C6966;
      break;
    case 6:
      v2 = 0xE600000000000000;
      v3 = 0x73656C797473;
      break;
    case 7:
      v2 = 0xE400000000000000;
      v3 = 1886351971;
      break;
    case 8:
      v2 = 0xE500000000000000;
      v8 = 1768191329;
LABEL_24:
      v3 = v8 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 9:
      v2 = 0xE700000000000000;
      v3 = 0x70756E61656C63;
      break;
    case 10:
      v2 = 0xE600000000000000;
      v3 = 0x657945646572;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B3C9D6A8();
  }

  return v10 & 1;
}

uint64_t sub_1B371D8C0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6C616D726F6ELL;
  }

  else
  {
    v3 = 2003790963;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x6C616D726F6ELL;
  }

  else
  {
    v5 = 2003790963;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_4();
  }

  return v8 & 1;
}

uint64_t sub_1B371D948(unsigned __int8 a1, char a2)
{
  v2 = 0x647261646E617473;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x647261646E617473;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x6563696F76;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6F6964757473;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x6172656D6163;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x6563696F76;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6F6964757473;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x6172656D6163;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_4();
  }

  return v8 & 1;
}

uint64_t sub_1B371DA70(unsigned __int8 a1, char a2)
{
  v2 = 0x6C616E696769726FLL;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6C616E696769726FLL;
  switch(v4)
  {
    case 1:
      v5 = 0x687475416D726177;
      v3 = 0xED00006369746E65;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x57426B72617473;
      break;
    case 3:
      v5 = 0x6C7566726F6C6F63;
      break;
    case 4:
      v5 = 0x7548796D61657264;
      v3 = 0xEA00000000007365;
      break;
    case 5:
      v5 = 0x6F6F436E61627275;
      v3 = 0xE90000000000006CLL;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x796874726165;
      break;
    case 7:
      v5 = 0x766F4364756F6C63;
      v3 = 0xEA00000000007265;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x687475416D726177;
      v6 = 0xED00006369746E65;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x57426B72617473;
      break;
    case 3:
      v2 = 0x6C7566726F6C6F63;
      break;
    case 4:
      v2 = 0x7548796D61657264;
      v6 = 0xEA00000000007365;
      break;
    case 5:
      v2 = 0x6F6F436E61627275;
      v6 = 0xE90000000000006CLL;
      break;
    case 6:
      v6 = 0xE600000000000000;
      v2 = 0x796874726165;
      break;
    case 7:
      v2 = 0x766F4364756F6C63;
      v6 = 0xEA00000000007265;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_4();
  }

  return v8 & 1;
}

uint64_t sub_1B371DC98(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x7369776B636F6C63;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x80000001B3D0E260;
  }

  if (a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x7369776B636F6C63;
  }

  if (a2)
  {
    v6 = 0x80000001B3D0E260;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_4();
  }

  return v8 & 1;
}

id sub_1B371DD34(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_startingAsset] = 0;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_nextAvailableRequestID] = 1;
  v5 = MEMORY[0x1E69E7CC8];
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_thumbnailRequests] = MEMORY[0x1E69E7CC8];
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_mediaProviderRequestIDsByRequestID] = v5;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_dataSourceManager] = a1;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_mediaProvider] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ImageWellThumbnailProvider();
  v6 = a1;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [v6 registerChangeObserver:v8 context:{0, v10.receiver, v10.super_class}];
  sub_1B371EB94();

  return v8;
}

uint64_t sub_1B371DE20(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = sub_1B371EC44();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *v14 = a3;
  *&v14[1] = a4;
  v14[2] = v9;
  v14[3] = sub_1B371EC64;
  v14[4] = v10;
  v11 = OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_thumbnailRequests;
  OUTLINED_FUNCTION_17_4();

  swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v4 + v11);
  sub_1B371F3C4(v14, v9);
  *(v4 + v11) = v13;
  swift_endAccess();
  sub_1B371E480(v14);

  return v9;
}

void sub_1B371DF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_1B3C97F18();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a4 + 16))(a4, a1);
}

uint64_t sub_1B371DFD4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = sub_1B371EC44();
  *v13 = a3;
  *&v13[1] = a4;
  v13[2] = v9;
  v13[3] = a1;
  v13[4] = a2;
  v10 = OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_thumbnailRequests;
  OUTLINED_FUNCTION_17_4();

  swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v10);
  sub_1B371F3C4(v13, v9);
  *(v4 + v10) = v12;
  swift_endAccess();
  sub_1B371E480(v13);
  return v9;
}

uint64_t sub_1B371E0CC(void *a1, int a2, void *aBlock, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, double, double))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a1;
  v16 = a8(a7, v14, a4, a5);

  return v16;
}

void sub_1B371E174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v9 = sub_1B3C9C5A8();
    if (a4)
    {
LABEL_3:
      v10 = sub_1B3C97F18();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = v10;
  (*(a6 + 16))(a6, a1, v9);
}

uint64_t sub_1B371E224(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_thumbnailRequests;
  OUTLINED_FUNCTION_14();
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (*(v5 + 16))
  {
    result = sub_1B371EEC4(a1);
    if (v6)
    {
      v7 = *(v5 + 56) + 40 * result;
      v8 = *(v7 + 32);
      v9 = *(v7 + 16);
      v11[0] = *v7;
      v11[1] = v9;
      v12 = v8;

      sub_1B371E974(v11);
      OUTLINED_FUNCTION_17_4();
      sub_1B371EDC4(a1, v10);
      swift_endAccess();
      sub_1B370EEB0(v10, &qword_1EB851758);
      return sub_1B371F4FC(v11);
    }
  }

  return result;
}

uint64_t sub_1B371E34C(uint64_t a1, char a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    if (a2)
    {

      return sub_1B371EB94();
    }
  }

  else
  {
    result = sub_1B3C9D4C8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B371E480(uint64_t a1)
{
  v2 = v1;
  sub_1B371E974(a1);
  v4 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_startingAsset);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_mediaProvider);
    v6 = *a1;
    v7 = *(a1 + 8);
    v8 = swift_allocObject();
    v9 = *(a1 + 16);
    *(v8 + 16) = *a1;
    *(v8 + 32) = v9;
    *(v8 + 48) = *(a1 + 32);
    *(v8 + 56) = v4;
    aBlock[4] = sub_1B3720DB8;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B371E8C0;
    aBlock[3] = &block_descriptor_3;
    v10 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();
    sub_1B3720DCC(a1, v16);

    v11 = [v5 requestCGImageForAsset:v4 targetSize:1 contentMode:0 options:v10 resultHandler:{v6, v7}];
    _Block_release(v10);
    v12 = *(a1 + 16);
    v13 = OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_mediaProviderRequestIDsByRequestID;
    OUTLINED_FUNCTION_17_4();
    swift_isUniquelyReferenced_nonNull_native();
    v16[0] = *(v2 + v13);
    sub_1B371F2B4(v11, v12);
    *(v2 + v13) = v16[0];
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_14();
    return v15();
  }
}

void sub_1B371E63C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a3)
  {
    v22 = 0u;
    v23 = 0u;
LABEL_12:
    sub_1B370EEB0(&v22, &qword_1EB850170);
    if (a1)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  sub_1B3C9C5E8();
  sub_1B3C9D318();
  sub_1B3898D7C(a3, &v22);
  sub_1B3720D10(v21);
  if (!*(&v23 + 1))
  {
    goto LABEL_12;
  }

  sub_1B3710718(0, &qword_1EB852330);
  if (swift_dynamicCast())
  {
    v10 = v21[0];
    v11 = [v21[0] BOOLValue];

    if (v11)
    {
      return;
    }
  }

  if (a1)
  {
LABEL_6:
    v12 = a1;
    v13 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v12 imageOrientation:a2];

    if (a3)
    {
      goto LABEL_7;
    }

LABEL_14:
    v22 = 0u;
    v23 = 0u;
    goto LABEL_15;
  }

LABEL_13:
  v13 = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_7:
  *&v22 = sub_1B3C9C5E8();
  *(&v22 + 1) = v14;
  sub_1B3C9D318();
  sub_1B3898D7C(a3, &v22);
  sub_1B3720D10(v21);
  if (!*(&v23 + 1))
  {
LABEL_15:
    sub_1B370EEB0(&v22, &qword_1EB850170);
    v15 = 0;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
  if (swift_dynamicCast())
  {
    v15 = v21[0];
  }

  else
  {
    v15 = 0;
  }

LABEL_16:
  v16 = [a5 uuid];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1B3C9C5E8();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  (*(a4 + 24))(v13, v18, v20, v15, *(a4 + 16));
}

uint64_t sub_1B371E8C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a4)
  {
    v7 = sub_1B3C9C4C8();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v6(a2, a3, v7);
}

unint64_t sub_1B371E974(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_mediaProviderRequestIDsByRequestID;
  OUTLINED_FUNCTION_14();
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  if (*(v6 + 16))
  {
    result = sub_1B371EEC4(*(a1 + 16));
    if (v7)
    {
      return [*(v2 + OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_mediaProvider) cancelImageRequest_];
    }
  }

  return result;
}

uint64_t sub_1B371E9F8()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_thumbnailRequests;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_1B371F4FC(v14))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(v2 + 56) + 40 * (v10 | (v9 << 6));
    v12 = *(v11 + 32);
    v13 = *(v11 + 16);
    v14[0] = *v11;
    v14[1] = v13;
    v15 = v12;

    sub_1B371E480(v14);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B371EB10(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_startingAsset);
  if (v2)
  {
    if (v2 == result)
    {
      return result;
    }

    return sub_1B371E9F8();
  }

  if (result)
  {
    return sub_1B371E9F8();
  }

  return result;
}

uint64_t sub_1B371EB34(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_startingAsset);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_startingAsset) = a1;
  swift_unknownObjectRetain();
  sub_1B371EB10(v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1B371EB94()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_dataSourceManager) dataSource];
  v2 = [v1 startingAssetReference];

  if (v2)
  {
    v3 = [v2 asset];
  }

  else
  {
    v3 = 0;
  }

  return sub_1B371EB34(v3);
}

uint64_t sub_1B371EC44()
{
  result = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_nextAvailableRequestID);
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate26ImageWellThumbnailProvider_nextAvailableRequestID) = result + 1;
  }

  return result;
}

id ImageWellThumbnailProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImageWellThumbnailProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageWellThumbnailProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B371EDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B371EEC4(a1);
  if (v5)
  {
    v6 = result;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8518B8);
    sub_1B3C9D468();
    v7 = *(v13 + 56) + 40 * v6;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    v12 = *(v7 + 24);
    result = sub_1B3C9D478();
    v11 = v12;
    *v2 = v13;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0uLL;
  }

  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  return result;
}

unint64_t sub_1B371EEC4(uint64_t a1)
{
  v2 = sub_1B3C9D7B8();

  return sub_1B3720598(a1, v2);
}

unint64_t sub_1B371EF08()
{
  OUTLINED_FUNCTION_4_1();
  sub_1B3C9D2F8();
  v0 = OUTLINED_FUNCTION_13();

  return sub_1B37205F8(v0, v1);
}

unint64_t sub_1B371EF40(uint64_t a1, uint64_t a2)
{
  sub_1B3C9D7C8();
  sub_1B3C9C668();
  v4 = sub_1B3C9D7F8();

  return sub_1B37206BC(a1, a2, v4);
}

unint64_t sub_1B371EFB8()
{
  sub_1B3C99AA8();
  sub_1B3720D64(&qword_1EB84F920, MEMORY[0x1E69C2C90]);
  sub_1B3C9C4F8();
  v0 = OUTLINED_FUNCTION_13();

  return sub_1B3720770(v0, v1);
}

unint64_t sub_1B371F04C()
{
  OUTLINED_FUNCTION_4_1();
  sub_1B3C9CF98();
  v0 = OUTLINED_FUNCTION_13();

  return sub_1B372092C(v0, v1);
}

void sub_1B371F084()
{
  OUTLINED_FUNCTION_4_1();
  sub_1B3C9CF98();
  sub_1B3720A04();
}

unint64_t sub_1B371F0D0(unsigned __int16 a1)
{
  v3 = MEMORY[0x1B8C6AD20](*(v1 + 40), a1, 2);

  return sub_1B3720AAC(a1, v3);
}

void sub_1B371F118()
{
  OUTLINED_FUNCTION_4_1();
  sub_1B3C9CF98();
  sub_1B3720A04();
}

unint64_t sub_1B371F164(uint64_t a1)
{
  sub_1B3C9D7C8();
  sub_1B3C98158();
  sub_1B3720D64(&qword_1EB851850, MEMORY[0x1E69695A8]);
  sub_1B3C9C508();
  v2 = sub_1B3C9D7F8();

  return sub_1B3720B0C(a1, v2);
}

void sub_1B371F224()
{
  sub_1B3C9C5E8();
  sub_1B3C9D7C8();
  sub_1B3C9C668();
  sub_1B3C9D7F8();

  sub_1B3720BDC();
}

unint64_t sub_1B371F2B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1B371EEC4(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518C0);
  result = sub_1B3C9D468();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1B371EEC4(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    result = sub_1B3C9D718();
    __break(1u);
    return result;
  }

  v9 = result;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_1B3720208(v9, a2, a1, v13);
  }

  return result;
}

unint64_t sub_1B371F3C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1B371EEC4(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8518B8);
  if ((sub_1B3C9D468() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1B371EEC4(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    result = sub_1B3C9D718();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    v14 = v13[7] + 40 * v9;
    v15 = *(a1 + 16);
    *v14 = *a1;
    *(v14 + 16) = v15;
    *(v14 + 32) = *(a1 + 32);
  }

  else
  {

    return sub_1B372024C(v9, a2, a1, v13);
  }
}

uint64_t sub_1B371F638(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B371F678(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_1B371F6DC()
{
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_6_5(v4, v2, v6);
  OUTLINED_FUNCTION_0_2();
  if (v9)
  {
    __break(1u);
LABEL_14:
    sub_1B3C9D718();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8518A8);
  if (OUTLINED_FUNCTION_2_6())
  {
    sub_1B371EF40(v3, v0);
    OUTLINED_FUNCTION_8_1();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  v14 = *v1;
  if (v11)
  {
    *(v14[7] + 8 * v10) = v5;
    OUTLINED_FUNCTION_16_1();
  }

  else
  {
    sub_1B37202A4(v10, v3, v0, v5, v14);
    OUTLINED_FUNCTION_16_1();
  }
}

void sub_1B371F7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1B3C99AA8();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B371EFB8();
  OUTLINED_FUNCTION_0_2();
  if (v33)
  {
    __break(1u);
    goto LABEL_10;
  }

  v34 = v31;
  v35 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851898);
  if (OUTLINED_FUNCTION_2_6())
  {
    v36 = sub_1B371EFB8();
    if ((v35 & 1) == (v37 & 1))
    {
      v34 = v36;
      goto LABEL_5;
    }

LABEL_10:
    sub_1B3C9D718();
    __break(1u);
    return;
  }

LABEL_5:
  v38 = *v20;
  if (v35)
  {
    *(v38[7] + v34) = v26 & 1;
  }

  else
  {
    (*(v28 + 16))(v30, v24, v27);
    sub_1B37202EC(v34, v30, v26 & 1, v38);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B371F940()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1B371EF40(v3, v1);
  OUTLINED_FUNCTION_0_2();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8518B0);
  if ((sub_1B3C9D468() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1B371EF40(v4, v2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1B3C9D718();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v0;
  if (v13)
  {
    v17 = (v16[7] + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    OUTLINED_FUNCTION_27();
  }

  else
  {
    sub_1B37203A4(v12, v4, v2, v8, v6, v16);
    OUTLINED_FUNCTION_27();
  }
}

_OWORD *sub_1B371FA70(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_5(a1, a2, a3);
  OUTLINED_FUNCTION_0_2();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1B3C9D718();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851870);
  if (OUTLINED_FUNCTION_2_6())
  {
    sub_1B371EF40(a2, a3);
    OUTLINED_FUNCTION_8_1();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  v14 = *v3;
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v14[7] + 32 * v10);
    OUTLINED_FUNCTION_16_1();

    return sub_1B370ED44(v15, v16);
  }

  else
  {
    sub_1B37203F0(v10, a2, a3, a1, v14);
    OUTLINED_FUNCTION_16_1();
  }
}

void sub_1B371FB80()
{
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_6_5(v4, v2, v6);
  OUTLINED_FUNCTION_0_2();
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851880);
  if ((OUTLINED_FUNCTION_2_6() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1B371EF40(v3, v0);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    sub_1B3C9D718();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v1;
  if (v11)
  {
    *(v14[7] + v10) = v5 & 1;
    OUTLINED_FUNCTION_16_1();
  }

  else
  {
    sub_1B372045C(v10, v3, v0, v5 & 1, v14);
    OUTLINED_FUNCTION_16_1();
  }
}

id sub_1B371FC74(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  sub_1B371F04C();
  OUTLINED_FUNCTION_0_2();
  if (v6)
  {
    __break(1u);
LABEL_14:
    sub_1B3710718(0, &qword_1EB84F1A0);
    result = sub_1B3C9D718();
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851858);
  if (OUTLINED_FUNCTION_3_4())
  {
    sub_1B371F04C();
    OUTLINED_FUNCTION_7_4();
    if (!v10)
    {
      goto LABEL_14;
    }

    v7 = v9;
  }

  if (v8)
  {
    *(*(*v3 + 56) + 8 * v7) = v2;
    OUTLINED_FUNCTION_18_0();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_10_1();
    sub_1B3720208(v13, v14, v15, v16);
    OUTLINED_FUNCTION_18_0();

    return v17;
  }
}

unint64_t sub_1B371FD68(uint64_t a1, double a2)
{
  sub_1B371EEC4(a1);
  OUTLINED_FUNCTION_0_2();
  if (v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8518A0);
  result = OUTLINED_FUNCTION_3_4();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1B371EEC4(a1);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_9:
    result = sub_1B3C9D718();
    __break(1u);
    return result;
  }

  v8 = result;
LABEL_5:
  v12 = *v2;
  if ((v9 & 1) == 0)
  {
    return sub_1B37204EC(v8, a1, v12, a2);
  }

  *(v12[7] + 8 * v8) = a2;
  return result;
}

void sub_1B371FE38()
{
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_6_5(v4, v2, v6);
  OUTLINED_FUNCTION_0_2();
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1B3C9D718();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851890);
  if (OUTLINED_FUNCTION_2_6())
  {
    sub_1B371EF40(v3, v0);
    OUTLINED_FUNCTION_8_1();
    if (!v13)
    {
      goto LABEL_12;
    }

    v10 = v12;
  }

  v14 = *v1;
  if (v11)
  {
    *(v14[7] + 2 * v10) = v5;
    OUTLINED_FUNCTION_16_1();
  }

  else
  {
    sub_1B37204A4(v10, v3, v0, v5, v14);
    OUTLINED_FUNCTION_16_1();
  }
}

void sub_1B371FF20(void *a1, double a2)
{
  sub_1B371F224();
  OUTLINED_FUNCTION_0_2();
  if (v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851888);
  if ((sub_1B3C9D468() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1B371F224();
  if ((v8 & 1) != (v10 & 1))
  {
LABEL_11:
    type metadata accessor for PICinematicAudioRenderingStyle(0);
    sub_1B3C9D718();
    __break(1u);
    return;
  }

  v7 = v9;
LABEL_5:
  v11 = *v2;
  if (v8)
  {
    *(v11[7] + 8 * v7) = a2;
  }

  else
  {
    sub_1B37204EC(v7, a1, v11, a2);

    v12 = a1;
  }
}

void sub_1B3720034(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  sub_1B371F118();
  OUTLINED_FUNCTION_0_2();
  if (v6)
  {
    __break(1u);
LABEL_14:
    sub_1B3C987D8();
    sub_1B3C9D718();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851878);
  if (OUTLINED_FUNCTION_3_4())
  {
    sub_1B371F118();
    OUTLINED_FUNCTION_7_4();
    if (!v10)
    {
      goto LABEL_14;
    }

    v7 = v9;
  }

  if (v8)
  {
    *(*(*v3 + 56) + 8 * v7) = v2;
    OUTLINED_FUNCTION_18_0();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_10_1();
    sub_1B3720208(v13, v14, v15, v16);
    OUTLINED_FUNCTION_18_0();

    v19 = v17;
  }
}

_OWORD *sub_1B3720118(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  sub_1B371F224();
  OUTLINED_FUNCTION_0_2();
  if (v5)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for Key(0);
    result = sub_1B3C9D718();
    __break(1u);
    return result;
  }

  v6 = v3;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851868);
  if (OUTLINED_FUNCTION_3_4())
  {
    sub_1B371F224();
    OUTLINED_FUNCTION_7_4();
    if (!v9)
    {
      goto LABEL_14;
    }

    v6 = v8;
  }

  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(*(*v2 + 56) + 32 * v6);
    OUTLINED_FUNCTION_18_0();

    return sub_1B370ED44(v10, v11);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_10_1();
    sub_1B3720530(v14, v15, v16, v17);
    OUTLINED_FUNCTION_18_0();

    return v18;
  }
}

unint64_t sub_1B3720208(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
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

unint64_t sub_1B372024C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
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

unint64_t sub_1B37202A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
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

uint64_t sub_1B37202EC(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B3C99AA8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
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

unint64_t sub_1B37203A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

_OWORD *sub_1B37203F0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B370ED44(a4, (a5[7] + 32 * a1));
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

unint64_t sub_1B372045C(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
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

unint64_t sub_1B37204A4(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 2 * result) = a4;
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

unint64_t sub_1B37204EC(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

_OWORD *sub_1B3720530(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1B370ED44(a3, (a4[7] + 32 * a1));
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

unint64_t sub_1B3720598(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1B37205F8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1B3720CB4(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1B8C6A880](v8, a1);
    sub_1B3720D10(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1B37206BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1B3C9D6A8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1B3720770(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1B3C99AA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    sub_1B3720D64(&qword_1EB84F918, MEMORY[0x1E69C2C90]);
    v10 = sub_1B3C9C528();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1B372092C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1B3710718(0, &qword_1EB84F1A0);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1B3C9CFA8();

    if (v8)
    {
      break;
    }
  }

  return i;
}

void sub_1B3720A04()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v5 = v0;
  OUTLINED_FUNCTION_11_0();
  for (i = v6 & ~v7; ((1 << i) & *(v1 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v2)
  {
    v4(0);
    v9 = *(*(v5 + 48) + 8 * i);
    v10 = sub_1B3C9CFA8();

    if (v10)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_27();
}

unint64_t sub_1B3720AAC(unsigned __int16 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1B3720B0C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {

    v5 = sub_1B3C98138();

    if (v5)
    {
      break;
    }
  }

  return i;
}

void sub_1B3720BDC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11_0();
  for (i = v2 & ~v3; ((1 << i) & *(v0 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v5 = sub_1B3C9C5E8();
    v7 = v6;
    if (v5 == sub_1B3C9C5E8() && v7 == v8)
    {

      break;
    }

    v10 = sub_1B3C9D6A8();

    if (v10)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B3720D64(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_13();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return sub_1B3C9D468();
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return sub_1B3C9D468();
}

unint64_t OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1B371EF40(a2, a3);
}

uint64_t OUTLINED_FUNCTION_17_4()
{

  return swift_beginAccess();
}

char *sub_1B3720EE8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___PUOneUpPhototypeSupportController_isEnabled] = 0;
  *&v1[OBJC_IVAR___PUOneUpPhototypeSupportController_browsingViewModelObservation] = 0;
  *&v1[OBJC_IVAR___PUOneUpPhototypeSupportController_activeAsset] = 0;
  v5 = OBJC_IVAR___PUOneUpPhototypeSupportController_supportedKinds;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851A98);
  v6 = sub_1B3C98688();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B3CFA2E0;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, *MEMORY[0x1E69C3220], v6);
  v12(v11 + v8, *MEMORY[0x1E69C3218], v6);
  *&v2[v5] = v10;
  *&v2[OBJC_IVAR___PUOneUpPhototypeSupportController_supportTask] = 0;
  if (qword_1EB84FF80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v13 = sub_1B3C9A558();
  __swift_project_value_buffer(v13, qword_1EB8519A0);
  v14 = sub_1B3C9A538();
  v15 = sub_1B3C9CAE8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1B36F3000, v14, v15, "Initialized", v16, 2u);
    OUTLINED_FUNCTION_2_7();
  }

  *&v2[OBJC_IVAR___PUOneUpPhototypeSupportController_browsingViewModel] = a1;
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v17 = a1;
  v18 = objc_msgSendSuper2(&v23, sel_init);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(PUBrowsingViewModelObservation);
  v19 = v18;
  v20 = sub_1B37FD9DC();
  v21 = *&v19[OBJC_IVAR___PUOneUpPhototypeSupportController_browsingViewModelObservation];
  *&v19[OBJC_IVAR___PUOneUpPhototypeSupportController_browsingViewModelObservation] = v20;

  return v19;
}

void sub_1B372119C(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = a1;
      if ([v4 currentAssetDidChange])
      {
        sub_1B3721410();
      }
    }
  }
}

uint64_t sub_1B37212CC(char a1)
{
  v2 = *(v1 + OBJC_IVAR___PUOneUpPhototypeSupportController_isEnabled);
  *(v1 + OBJC_IVAR___PUOneUpPhototypeSupportController_isEnabled) = a1;
  return sub_1B37212E4(v2);
}

uint64_t sub_1B37212E4(uint64_t result)
{
  v2 = OBJC_IVAR___PUOneUpPhototypeSupportController_isEnabled;
  if (v1[OBJC_IVAR___PUOneUpPhototypeSupportController_isEnabled] != (result & 1))
  {
    v3 = v1;
    if (qword_1EB84FF80 != -1)
    {
      swift_once();
    }

    v4 = sub_1B3C9A558();
    __swift_project_value_buffer(v4, qword_1EB8519A0);
    v5 = v1;
    v6 = sub_1B3C9A538();
    v7 = sub_1B3C9CAE8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v3[v2];

      _os_log_impl(&dword_1B36F3000, v6, v7, "Enabled %{BOOL}d", v8, 8u);
      MEMORY[0x1B8C6EC70](v8, -1, -1);
    }

    else
    {

      v6 = v5;
    }

    return sub_1B3721410();
  }

  return result;
}

uint64_t sub_1B3721410()
{
  if (*(v0 + OBJC_IVAR___PUOneUpPhototypeSupportController_isEnabled) != 1)
  {
    goto LABEL_6;
  }

  v1 = [*(v0 + OBJC_IVAR___PUOneUpPhototypeSupportController_browsingViewModel) currentAssetReference];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 asset];

    if (!v3)
    {
LABEL_6:
      v1 = 0;
      return sub_1B37214C8(v1);
    }

    v1 = swift_dynamicCastObjCProtocolConditional();
    if (!v1)
    {
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  return sub_1B37214C8(v1);
}

uint64_t sub_1B37214C8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PUOneUpPhototypeSupportController_activeAsset);
  *(v1 + OBJC_IVAR___PUOneUpPhototypeSupportController_activeAsset) = a1;
  swift_unknownObjectRetain();
  sub_1B3721528(v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1B3721528(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___PUOneUpPhototypeSupportController_activeAsset);
  if (v2)
  {
    if (v2 == result)
    {
      return result;
    }

    return sub_1B372154C();
  }

  if (result)
  {
    return sub_1B372154C();
  }

  return result;
}

uint64_t sub_1B372154C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = *&v0[OBJC_IVAR___PUOneUpPhototypeSupportController_activeAsset];
  v5 = sub_1B3C9C8B8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  sub_1B3C9C888();
  swift_unknownObjectRetain_n();
  v6 = v0;
  v7 = sub_1B3C9C878();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v4;
  v8[5] = v6;
  sub_1B3850B9C();
  sub_1B3722C88(v10);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B3721678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_1B3C98688();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  sub_1B3C9C888();
  v5[9] = sub_1B3C9C878();
  v8 = sub_1B3C9C848();
  v5[10] = v8;
  v5[11] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B372176C, v8, v7);
}

void sub_1B372176C()
{
  v20 = v0;
  sub_1B3C9C8E8();
  if (qword_1EB84FF80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = sub_1B3C9A558();
  __swift_project_value_buffer(v1, qword_1EB8519A0);
  swift_unknownObjectRetain();
  v2 = sub_1B3C9A538();
  v3 = sub_1B3C9CAB8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_8_2();
    v19 = v6;
    *v5 = 136315138;
    v0[3] = v4;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851A80);
    v7 = sub_1B3C9C608();
    v9 = sub_1B3749364(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1B36F3000, v2, v3, "Updating support for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    OUTLINED_FUNCTION_2_7();
    OUTLINED_FUNCTION_3_5();
  }

  v10 = v0[7];
  v11 = *(v0[5] + OBJC_IVAR___PUOneUpPhototypeSupportController_supportedKinds);
  v0[12] = v11;
  v12 = *(v11 + 16);
  v0[13] = v12;
  v0[14] = 0;
  if (!v12)
  {

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_5();

    __asm { BRAA            X1, X16 }
  }

  if (*(v11 + 16))
  {
    (*(v10 + 16))(v0[8], v11 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v0[6]);
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_1_4(v13);
    OUTLINED_FUNCTION_7_5();

    sub_1B3721FF4(v14, v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B3721B50(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_2_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_1();
  *v7 = v6;
  v4[16] = v1;

  if (v1)
  {
    v8 = v4[10];
    v9 = v4[11];
    v10 = sub_1B3721DC8;
  }

  else
  {
    v4[17] = a1;
    v8 = v4[10];
    v9 = v4[11];
    v10 = sub_1B3721C70;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1B3721C70()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1B3722A58(v0[17], v0[4], v1);
  swift_unknownObjectRelease();
  result = (*(v2 + 8))(v1, v3);
  v5 = v0[13];
  v6 = v0[14] + 1;
  v0[14] = v6;
  if (v6 == v5)
  {

    OUTLINED_FUNCTION_1();

    return v7();
  }

  else
  {
    v8 = v0[12];
    if (v6 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      (*(v0[7] + 16))(v0[8], v8 + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)) + *(v0[7] + 72) * v6, v0[6]);
      v9 = swift_task_alloc();
      v0[15] = v9;
      *v9 = v0;
      v10 = OUTLINED_FUNCTION_1_4();

      return sub_1B3721FF4(v10, v11);
    }
  }

  return result;
}

void sub_1B3721DC8()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);
  v4 = v0[16];
  if (qword_1EB84FF80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v5 = sub_1B3C9A558();
  __swift_project_value_buffer(v5, qword_1EB8519A0);
  swift_unknownObjectRetain();
  v6 = v4;
  v7 = sub_1B3C9A538();
  v8 = sub_1B3C9CAC8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_8_2();
    v20 = v12;
    *v10 = 136315394;
    v0[2] = v9;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851A80);
    v13 = sub_1B3C9C608();
    v15 = sub_1B3749364(v13, v14, &v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v4;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_1B36F3000, v7, v8, "Failed to make info for %s: %@", v10, 0x16u);
    sub_1B36FB21C(v11, &qword_1EB8567E0);
    OUTLINED_FUNCTION_3_5();
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    OUTLINED_FUNCTION_2_7();
    OUTLINED_FUNCTION_3_5();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_5();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1B3721FF4(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851A90);
  v2[14] = swift_task_alloc();
  v3 = sub_1B3C98BB8();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = sub_1B3C98688();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = sub_1B3C986B8();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_1B3C9C888();
  v2[27] = sub_1B3C9C878();
  v7 = sub_1B3C9C848();
  v2[28] = v7;
  v2[29] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B37221FC, v7, v6);
}

uint64_t sub_1B37221FC()
{
  v38 = v0;
  if (!v0[12] || (objc_opt_self(), !swift_dynamicCastObjCClass()))
  {

LABEL_9:

    v23 = v0[1];

    return v23(0);
  }

  v1 = v0[26];
  (*(v0[20] + 16))(v0[21], v0[13], v0[19]);
  swift_unknownObjectRetain_n();
  sub_1B3C986A8();
  sub_1B3C988A8();
  sub_1B3C98898();
  v2 = sub_1B3C98888();

  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = sub_1B373EF34(sub_1B372386C, v3, v2);

  v5 = *(v4 + 16);
  if (!v5)
  {
    v25 = v0[26];
    v26 = v0[22];
    v27 = v0[23];
    swift_unknownObjectRelease();

    (*(v27 + 8))(v25, v26);
    goto LABEL_9;
  }

  if (v5 == 1)
  {
    goto LABEL_14;
  }

  if (qword_1EB84FF80 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[22];
    v9 = v0[23];
    v10 = sub_1B3C9A558();
    __swift_project_value_buffer(v10, qword_1EB8519A0);
    v11 = *(v9 + 16);
    v11(v7, v6, v8);
    v12 = sub_1B3C9A538();
    v36 = sub_1B3C9CAC8();
    v13 = os_log_type_enabled(v12, v36);
    v14 = v0[25];
    if (v13)
    {
      v15 = v0[23];
      v16 = v0[24];
      v17 = v0[22];
      v18 = swift_slowAlloc();
      v35 = OUTLINED_FUNCTION_8_2();
      v37 = v35;
      *v18 = 136315138;
      v11(v16, v14, v17);
      v19 = sub_1B3C9C608();
      v21 = v20;
      (*(v15 + 8))(v14, v17);
      v22 = sub_1B3749364(v19, v21, &v37);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1B36F3000, v12, v36, "Multiple phototypes supporting %s, picking arbitrary one", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_3_5();
    }

    else
    {
      v28 = v0[22];
      v29 = v0[23];

      (*(v29 + 8))(v14, v28);
    }

LABEL_14:
    if (*(v4 + 16))
    {
      break;
    }

    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_0_3();
  }

  sub_1B3723558(v4 + 32, (v0 + 2));

  v30 = v0[5];
  v31 = v0[6];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v30);
  v32 = swift_task_alloc();
  v0[30] = v32;
  *v32 = v0;
  v32[1] = sub_1B3722628;
  v33 = v0[26];
  v34 = v0[14];

  return MEMORY[0x1EEE2D068](v34, v33, v30, v31);
}

uint64_t sub_1B3722628()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 248) = v0;

  v5 = *(v2 + 232);
  v6 = *(v2 + 224);
  if (v0)
  {
    v7 = sub_1B372295C;
  }

  else
  {
    v7 = sub_1B3722760;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B3722760()
{
  v1 = v0[14];
  v2 = v0[15];

  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[26];
    v4 = v0[22];
    v5 = v0[23];
    v6 = v0[14];
    swift_unknownObjectRelease();
    sub_1B36FB21C(v6, &qword_1EB851A90);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));
    (*(v5 + 8))(v3, v4);
    v7 = 0;
  }

  else
  {
    v8 = v0[26];
    v9 = v0[22];
    v10 = v0[23];
    v11 = v0[17];
    v12 = v0[18];
    v13 = v0[15];
    v14 = v0[16];
    (*(v14 + 32))(v12, v0[14], v13);
    sub_1B3723558((v0 + 2), (v0 + 7));
    (*(v14 + 16))(v11, v12, v13);
    v15 = objc_allocWithZone(type metadata accessor for OneUpPhototypeSupportController.OneUpPhototypeSupport());
    v7 = sub_1B3722F74((v0 + 7), v11);
    swift_unknownObjectRelease();
    (*(v14 + 8))(v12, v13);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));
    (*(v10 + 8))(v8, v9);
  }

  v16 = v0[1];

  return v16(v7);
}

uint64_t sub_1B372295C()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_1();

  return v4();
}

void sub_1B3722A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B3C98688();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + OBJC_IVAR___PUOneUpPhototypeSupportController_activeAsset);
  if (!a2)
  {
    if (v11)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v11)
  {
    v12 = v11 == a2;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
LABEL_8:
    v13 = [*(v3 + OBJC_IVAR___PUOneUpPhototypeSupportController_browsingViewModel) assetViewModelForCurrentAssetReference];
    if (v13)
    {
      v14 = v13;
      (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
      v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
      v17 = swift_allocObject();
      (*(v8 + 32))(v17 + v15, v10, v7);
      *(v17 + v16) = v14;
      *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
      aBlock[4] = sub_1B37237CC;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B370C014;
      aBlock[3] = &block_descriptor_4;
      v18 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v19 = v14;

      [v19 performChanges_];
      _Block_release(v18);
    }
  }
}

uint64_t sub_1B3722C88(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___PUOneUpPhototypeSupportController_supportTask);
  *(v1 + OBJC_IVAR___PUOneUpPhototypeSupportController_supportTask) = result;
  if (v2)
  {

    sub_1B3C9C8D8();
  }

  return result;
}

id sub_1B3722D70(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1B3C98688();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  v13 = *(v7 + 16);
  v13(v18 - v11, a1, v6);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == *MEMORY[0x1E69C3220])
  {
    v15 = &selRef_setPhototypeAccessoryViewSupport_;
    return [a2 *v15];
  }

  if (v14 == *MEMORY[0x1E69C3218])
  {
    v15 = &selRef_setPhototypeInfoButtonSupport_;
    return [a2 *v15];
  }

  strcpy(v18, "unsupported ");
  HIBYTE(v18[6]) = 0;
  v18[7] = -5120;
  v13(v10, a1, v6);
  v17 = sub_1B3C9C608();
  MEMORY[0x1B8C69C10](v17);

  result = sub_1B3C9D4C8();
  __break(1u);
  return result;
}

id sub_1B3722F74(uint64_t a1, uint64_t a2)
{
  sub_1B3723558(a1, &v2[OBJC_IVAR____TtCC15PhotosUIPrivate31OneUpPhototypeSupportControllerP33_B0BC80B964221E3BB167B50257831F0221OneUpPhototypeSupport_phototype]);
  v5 = OBJC_IVAR____TtCC15PhotosUIPrivate31OneUpPhototypeSupportControllerP33_B0BC80B964221E3BB167B50257831F0221OneUpPhototypeSupport_supportInfo;
  v6 = sub_1B3C98BB8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a2, v6);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for OneUpPhototypeSupportController.OneUpPhototypeSupport();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a2, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t sub_1B37230D0@<X0>(uint64_t *a1@<X8>)
{
  sub_1B3723558(v1 + OBJC_IVAR____TtCC15PhotosUIPrivate31OneUpPhototypeSupportControllerP33_B0BC80B964221E3BB167B50257831F0221OneUpPhototypeSupport_phototype, v5);
  v3 = sub_1B3C986D8();
  swift_allocObject();
  result = sub_1B3C986C8();
  a1[3] = v3;
  *a1 = result;
  return result;
}

id sub_1B372319C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1B3C9C5A8();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1B372329C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpPhototypeSupportController.OneUpPhototypeSupport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B3723390()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for OneUpPhototypeSupportController.OneUpPhototypeSupport()
{
  result = qword_1EB851A68;
  if (!qword_1EB851A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B37234BC()
{
  result = sub_1B3C98BB8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B3723558(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B37235BC()
{
  v0 = sub_1B3C9A558();
  __swift_allocate_value_buffer(v0, qword_1EB8519A0);
  __swift_project_value_buffer(v0, qword_1EB8519A0);
  return sub_1B3C9A528();
}

uint64_t sub_1B3723620(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B37236E0;

  return sub_1B3721678(a1, v4, v5, v7, v6);
}

uint64_t sub_1B37236E0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_1();
  *v2 = v1;

  OUTLINED_FUNCTION_1();

  return v3();
}

id sub_1B37237CC()
{
  v1 = *(sub_1B3C98688() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B3722D70(v0 + v2, v4, v5);
}

void OUTLINED_FUNCTION_2_7()
{

  JUMPOUT(0x1B8C6EC70);
}

void OUTLINED_FUNCTION_3_5()
{

  JUMPOUT(0x1B8C6EC70);
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return swift_slowAlloc();
}

BOOL sub_1B37238FC(void *a1, char *a2)
{
  switch(a1)
  {
    case 0uLL:
      return 0;
    case 1uLL:
      return a2 == 1;
    case 2uLL:
      return a2 == 2;
    case 3uLL:
      return a2 == 3;
    default:
      v4 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
      sub_1B3710718(0, &unk_1EB855710);
      if (!swift_dynamicCast())
      {
        goto LABEL_15;
      }

      if ((a2 - 1) < 3 || !a2)
      {

LABEL_15:
        return 0;
      }

      v5 = a2;
      if (!swift_dynamicCast())
      {

        goto LABEL_15;
      }

      v6 = [v9 code];
      v7 = [v8 code];

      return v6 == v7;
  }
}

uint64_t sub_1B3723A8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B3C9A698();

  return v1;
}

uint64_t sub_1B3723B00()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B3C9A6A8();
}

uint64_t sub_1B3723B70(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1B3C98158();
  OUTLINED_FUNCTION_0();
  v31[0] = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AE0);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v31 - v15;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 80) = 0;
  v17 = OBJC_IVAR____TtC15PhotosUIPrivate18StorySongViewModel__image;
  v31[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AC8);
  sub_1B3C9A678();
  (*(v13 + 32))(v3 + v17, v16, v11);
  *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate18StorySongViewModel_imageLoadingState) = 1;
  *(v3 + 16) = a2;
  *(v3 + 24) = a1;
  v18 = a2;
  if (a1)
  {
    v19 = [swift_unknownObjectRetain() identifier];
    v20 = sub_1B3C9C5E8();
    v22 = v21;
  }

  else
  {
    sub_1B3C98148();
    v20 = sub_1B3C98128();
    v22 = v23;
    (*(v31[0] + 8))(v10, v6);
  }

  *(v3 + 32) = v20;
  *(v3 + 40) = v22;
  v24 = *(v3 + 24);
  if (v24 && (v25 = [v24 artworkDisplayAsset]) != 0)
  {
    v26 = v25;
    *(v3 + 64) = v25;
    v27 = objc_opt_self();
    swift_unknownObjectRetain();
    v28 = [v27 defaultManager];
    v29 = [v28 imageProviderForAsset_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v3 + 72) = v29;
  }

  else
  {

    swift_unknownObjectRelease();
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
  }

  return v3;
}

uint64_t sub_1B3723E44(SEL *a1)
{
  if (!*(v1 + 24))
  {
    return 0;
  }

  v2 = [*(v1 + 24) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1B3C9C5E8();

  return v4;
}

uint64_t sub_1B3723EB0()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  swift_getObjectType();
  return sub_1B3C9CA38() & 1;
}

uint64_t sub_1B3723EEC()
{
  if (([objc_opt_self() isAppleMusicSharingEnabled] & 1) != 0 || !*(v0 + 24))
  {
    v2 = 0;
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v1 = sub_1B3C9CA48();
    swift_unknownObjectRelease();
    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

void sub_1B3723F64(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18StorySongViewModel_imageLoadingState);
  if ((v2 - 2) >= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18StorySongViewModel_imageLoadingState) = 2;
        if (*(v1 + 24))
        {
          v4 = [swift_unknownObjectRetain() artworkDisplayAsset];
          if (v4)
          {
            v5 = v4;
            v6 = *(v1 + 72);
            if (v6)
            {
              v7 = swift_allocObject();
              swift_weakInit();
              aBlock[4] = sub_1B3725584;
              aBlock[5] = v7;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1B389FA74;
              aBlock[3] = &block_descriptor_37;
              v8 = _Block_copy(aBlock);
              swift_unknownObjectRetain();

              v9 = [v6 requestImageForAsset:v5 targetSize:0 contentMode:0 options:v8 resultHandler:{a1, a1}];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              _Block_release(v8);
              *(v1 + 48) = v9;
              *(v1 + 56) = 0;
              return;
            }

            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }
      }

      else
      {
        aBlock[0] = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18StorySongViewModel_imageLoadingState);
        sub_1B3725570(v2);
        v10 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
        sub_1B3710718(0, &unk_1EB855710);
        if (swift_dynamicCast())
        {
          sub_1B372555C(v2);
        }

        else
        {
          sub_1B372555C(v2);
        }
      }
    }

    else
    {

      sub_1B372555C(0);
    }
  }
}

uint64_t sub_1B37241EC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = a1;
  sub_1B3723B00();
  if (a2)
  {
    sub_1B3C9C5E8();
    sub_1B3C9D318();
    sub_1B3898D7C(a2, &v16);
    sub_1B3720D10(&v15);
    if (*(&v17 + 1))
    {
      sub_1B3710718(0, &unk_1EB855710);
      if (swift_dynamicCast())
      {
        v7 = v15;
        v8 = *(v5 + 16);
        if (v8)
        {
          v9 = [v8 errorReporter];
          if (v9)
          {
            v10 = v9;
            v7 = v7;
            v11 = sub_1B3C97F18();

            v12 = sub_1B3C9C5A8();
            [v10 setError:v11 forComponent:v12];

            swift_unknownObjectRelease();
          }
        }
      }

      goto LABEL_11;
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  sub_1B36FA490(&v16);
LABEL_11:
  v13 = 3;
  if (!a1)
  {
    v13 = 1;
  }

  v14 = *(v5 + OBJC_IVAR____TtC15PhotosUIPrivate18StorySongViewModel_imageLoadingState);
  *(v5 + OBJC_IVAR____TtC15PhotosUIPrivate18StorySongViewModel_imageLoadingState) = v13;
  sub_1B372555C(v14);
}

BOOL sub_1B37243B4()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  if (!swift_dynamicCastObjCProtocolConditional())
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (!v1 || ![v1 currentAssetCollection])
  {
    return 0;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass() != 0;
  swift_unknownObjectRelease();
  return v2;
}

BOOL sub_1B3724454()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  if (!*(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (!v1 || ![v1 currentAssetCollection])
  {
    return 0;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass() != 0;
  swift_unknownObjectRelease();
  return v2;
}

void sub_1B37244D8(void (*a1)(void, void, uint64_t), uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    v6 = *(v2 + 16);
    if (v6)
    {
      v7 = v6;
      swift_unknownObjectRetain();
      if ([v7 currentAssetCollection])
      {
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = [v7 photoKitAssetContainerWithAssetCollection_];
          v10 = objc_opt_self();
          v11 = swift_allocObject();
          *(v11 + 16) = a1;
          *(v11 + 24) = a2;
          v14[4] = sub_1B3725498;
          v14[5] = v11;
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 1107296256;
          v14[2] = sub_1B38132D4;
          v14[3] = &block_descriptor_25;
          v12 = _Block_copy(v14);

          v13 = [v10 requestDebugInformationForAudioAsset:v5 assetContainer:v9 resultHandler:v12];
          _Block_release(v12);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }
  }

  a1(0, 0, 255);
}

uint64_t sub_1B37246C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v9 = sub_1B3C9C118();
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B3C9C168();
  v12 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3710718(0, &qword_1EB84FE60);
  v15 = sub_1B3C9CC88();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v21;
  v16[5] = a5;
  v16[6] = a3;
  aBlock[4] = sub_1B37254A0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_31;
  v17 = _Block_copy(aBlock);

  v18 = a3;

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B37254B0(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B37254F8();
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v14, v11, v17);
  _Block_release(v17);

  (*(v23 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v22);
}

void sub_1B3724A00(__int16 a1)
{
  v2 = *(v1 + 24);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v15 = v3;
  swift_unknownObjectRetain();
  if ([v15 currentAssetCollection])
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 photoLibrary];
      if (v7)
      {
        v8 = v7;
        v9 = swift_allocObject();
        *(v9 + 16) = v6;
        *(v9 + 24) = v2;
        *(v9 + 32) = a1;
        v20 = sub_1B3725454;
        v21 = v9;
        aBlock = MEMORY[0x1E69E9820];
        v17 = 1107296256;
        v18 = sub_1B370C014;
        v19 = &block_descriptor_5;
        v10 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();

        v20 = sub_1B3724D3C;
        v21 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v17 = 1107296256;
        v18 = sub_1B3814B94;
        v19 = &block_descriptor_19;
        v11 = _Block_copy(&aBlock);
        [v8 performChanges:v10 completionHandler:v11];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        _Block_release(v11);
        _Block_release(v10);

LABEL_7:
        OUTLINED_FUNCTION_1_5();
        return;
      }
    }

    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_1_5();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_1_5();
  }
}

void sub_1B3724C6C(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v6 = [objc_opt_self() fetchMemoryMusicQualityQuestionForMemory:a1 audioAsset:a2];
  v7 = objc_opt_self();
  if (v6)
  {
    v9 = [v7 changeMemoryMusicQualityFeedbackRequestForQuestion:v6 feedbackType:a3];

    v8 = v9;
  }

  else
  {
    v8 = [v7 memoryMusicQualityQuestionCreationRequestForMemory:a1 audioAsset:a2 feedbackType:a3];
  }
}

uint64_t sub_1B3724D3C(uint64_t result, void *a2)
{
  if ((result & 1) == 0)
  {
    v3 = sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      swift_once();
    }

    v4 = qword_1EB878C60;
    result = os_log_type_enabled(qword_1EB878C60, v3);
    if (result)
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      v7 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8584E0);
      v8 = sub_1B3C9C608();
      v10 = sub_1B3749364(v8, v9, &v11);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_1B36F3000, v4, v3, "Error saving feedback: %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      MEMORY[0x1B8C6EC70](v6, -1, -1);
      return MEMORY[0x1B8C6EC70](v5, -1, -1);
    }
  }

  return result;
}

uint64_t sub_1B3724E8C()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1B3724EBC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  else
  {
    return sub_1B3C9D6A8();
  }
}

uint64_t sub_1B3724EF4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate18StorySongViewModel__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1B372555C(*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18StorySongViewModel_imageLoadingState));
  return v0;
}

uint64_t sub_1B3724F98()
{
  sub_1B3724EF4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for StorySongViewModel()
{
  result = qword_1EB851AB0;
  if (!qword_1EB851AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B3725044()
{
  sub_1B3725150();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B372510C()
{
  sub_1B3C9D7C8();
  sub_1B3C9C668();
  return sub_1B3C9D7F8();
}

void sub_1B3725150()
{
  if (!qword_1EB851AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB851AC8);
    v0 = sub_1B3C9A6B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB851AC0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15PhotosUIPrivate25StorySongViewLoadingStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B37251E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3725240(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_1B372529C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_1B3725324@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StorySongViewModel();
  result = sub_1B3C9A658();
  *a1 = result;
  return result;
}

uint64_t sub_1B3725364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3724E8C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B37253FC()
{
  sub_1B3C9D7C8();
  sub_1B3724EEC();
  return sub_1B3C9D7F8();
}

uint64_t sub_1B37254B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B37254F8()
{
  result = qword_1EB84FE90;
  if (!qword_1EB84FE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB851AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84FE90);
  }

  return result;
}

void sub_1B372555C(id a1)
{
  if (a1 - 1 >= 3)
  {
  }
}

id sub_1B3725570(id result)
{
  if (result - 1 >= 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_1B37255AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 2:
    case 7:
    case 18:
    case 31:
    case 32:
    case 33:
    case 34:
    case 39:
    case 40:
    case 41:
    case 42:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 59:
    case 60:
    case 61:
    case 63:
    case 64:
    case 66:
      v3 = sub_1B3C995D8();
      v4 = a2;
      v5 = 1;
      goto LABEL_5;
    case 3:
    case 4:
      v6 = MEMORY[0x1E69C2B50];
      goto LABEL_4;
    case 5:
    case 6:
      v6 = MEMORY[0x1E69C2B58];
      goto LABEL_4;
    case 8:
    case 9:
    case 10:
      v6 = MEMORY[0x1E69C2B78];
      goto LABEL_4;
    case 11:
    case 12:
      v6 = MEMORY[0x1E69C2B90];
      goto LABEL_4;
    case 13:
    case 14:
      v6 = MEMORY[0x1E69C2B88];
      goto LABEL_4;
    case 15:
    case 16:
    case 17:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
      v6 = MEMORY[0x1E69C2B60];
      goto LABEL_4;
    case 35:
      v6 = MEMORY[0x1E69C2B70];
      goto LABEL_4;
    case 36:
    case 43:
      v6 = MEMORY[0x1E69C2AE8];
      goto LABEL_4;
    case 37:
      v6 = MEMORY[0x1E69C2AC8];
      goto LABEL_4;
    case 38:
      v6 = MEMORY[0x1E69C2B80];
      goto LABEL_4;
    case 44:
      v6 = MEMORY[0x1E69C2AF8];
      goto LABEL_4;
    case 45:
      v6 = MEMORY[0x1E69C2B20];
      goto LABEL_4;
    case 56:
    case 62:
      v6 = MEMORY[0x1E69C2AD8];
      goto LABEL_4;
    case 57:
    case 58:
      v6 = MEMORY[0x1E69C2B38];
      goto LABEL_4;
    case 65:
      v6 = MEMORY[0x1E69C2B00];
      goto LABEL_4;
    case 67:
      v6 = MEMORY[0x1E69C2B18];
LABEL_4:
      v7 = *v6;
      v8 = sub_1B3C995D8();
      (*(*(v8 - 8) + 104))(a2, v7, v8);
      v4 = a2;
      v5 = 0;
      v3 = v8;
LABEL_5:

      result = __swift_storeEnumTagSinglePayload(v4, v5, 1, v3);
      break;
    default:
      sub_1B3C9D378();

      v11 = PUAssetActionTypeDescription(a1);
      if (!v11)
      {
        __break(1u);
      }

      v12 = v11;
      v13 = sub_1B3C9C5E8();
      v15 = v14;

      MEMORY[0x1B8C69C10](v13, v15);

      result = sub_1B3C9D4C8();
      __break(1u);
      break;
  }

  return result;
}

__CFString *PUAssetActionType.description.getter(uint64_t a1)
{
  result = PUAssetActionTypeDescription(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_1B3C9C5E8();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1B3725858@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B3C9AE88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v2 + *(type metadata accessor for OneUpSocialAttributionBadgeView(0) + 24);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (*(v8 + 16) == 1)
  {
    v23 = *v8;
    v24 = v10;
    swift_unknownObjectRetain();
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_1B3C9CAD8();
    v11 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B372839C(v9, v10, 0);
    (*(v5 + 8))(v7, v4);
    if (!v23)
    {
LABEL_8:
      sub_1B37282C0(v22);
      return memcpy(a1, v22, 0x110uLL);
    }
  }

  swift_getObjectType();
  sub_1B3C99A38();
  v13 = v12;
  swift_unknownObjectRelease();
  if (!v13)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851BF8);
  sub_1B3C9A768();
  v14 = sub_1B3726940();

  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = sub_1B3C9AF18();
  v18 = 1;
  sub_1B3725B24(v14, v2, v22);
  memcpy(v19, v22, sizeof(v19));
  memcpy(v20, v22, sizeof(v20));
  sub_1B37282C8(v19, v21);
  sub_1B36FB21C(v20, &qword_1EB851C20);

  memcpy(&v17[7], v19, 0xF8uLL);
  v21[0] = v15;
  v21[1] = 0;
  LOBYTE(v21[2]) = v18;
  memcpy(&v21[2] + 1, v17, 0xFFuLL);
  CGSizeMake(v21);
  memcpy(v22, v21, sizeof(v22));
  return memcpy(a1, v22, 0x110uLL);
}

void *sub_1B3725B24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for OneUpSocialAttributionBadgeView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B3728338(a2, &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_1B37283A8(&v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v11 = a1;
  sub_1B3C98FF8();
  sub_1B3C9C008();
  sub_1B3C9AB98();
  sub_1B3C9C008();
  sub_1B3C9AB98();
  *a3 = v11;
  a3[1] = sub_1B372840C;
  a3[2] = v10;
  memcpy(a3 + 3, __src, 0x70uLL);
  return memcpy(a3 + 17, v14, 0x70uLL);
}

uint64_t sub_1B3725D60()
{
  v1 = v0;
  v2 = type metadata accessor for OneUpSocialAttributionBadgeView(0);
  v55 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - v5;
  v7 = sub_1B3C9AE88();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0 + *(v2 + 24);
  v13 = *v11;
  v12 = *(v11 + 8);
  LODWORD(v11) = *(v11 + 16);
  v52 = v8;
  if (v11 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1B3C9CAD8();
    v14 = v1;
    v15 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    v1 = v14;
    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B372839C(v13, v12, 0);
    (*(v8 + 8))(v10, v7);
    v13 = v58;
  }

  v16 = v7;
  if (v13)
  {
    swift_getObjectType();
    v17 = sub_1B3C99928();
    swift_unknownObjectRelease();
    v18 = 0xE500000000000000;
    v19 = 0x4F45444956;
    switch(v17)
    {
      case 0:
      case 3:
        goto LABEL_7;
      case 1:
        v19 = 0x4F544F4850;
        goto LABEL_19;
      case 2:
        goto LABEL_19;
      default:
        v58 = 0;
        v59 = 0xE000000000000000;
        sub_1B3C9D378();

        v58 = 0xD000000000000014;
        v59 = 0x80000001B3D0FBE0;
        v49 = sub_1B3C9CDC8();
        MEMORY[0x1B8C69C10](v49);

        result = sub_1B3C9D4C8();
        __break(1u);
        break;
    }

    return result;
  }

LABEL_7:
  if (qword_1EB84FF88 != -1)
  {
    swift_once();
  }

  v20 = sub_1B3C9A558();
  __swift_project_value_buffer(v20, qword_1EB851B60);
  v53 = v1;
  sub_1B3728338(v1, v6);
  v21 = sub_1B3C9A538();
  v22 = sub_1B3C9CAC8();
  if (!os_log_type_enabled(v21, v22))
  {

    sub_1B3728760(v6);
    goto LABEL_18;
  }

  v23 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v57 = v51;
  *v23 = 136315394;
  v24 = sub_1B3C9CDC8();
  v26 = sub_1B3749364(v24, v25, &v57);

  *(v23 + 4) = v26;
  *(v23 + 12) = 2080;
  v27 = &v6[*(v2 + 24)];
  v28 = *v27;
  v29 = *(v27 + 1);
  if (v27[16] == 1)
  {
    swift_unknownObjectRetain();
    if (!v28)
    {
      goto LABEL_16;
    }
  }

  else
  {

    sub_1B3C9CAD8();
    v30 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B372839C(v28, v29, 0);
    (*(v52 + 8))(v10, v16);
    if (!v58)
    {
LABEL_16:

      v33 = 0xE700000000000000;
      v31 = 0x6E776F6E6B6E75;
      goto LABEL_17;
    }
  }

  swift_getObjectType();
  v31 = sub_1B3C99A38();
  v33 = v32;
  swift_unknownObjectRelease();
  if (!v33)
  {
    goto LABEL_16;
  }

LABEL_17:
  sub_1B3728760(v6);
  v34 = sub_1B3749364(v31, v33, &v57);

  *(v23 + 14) = v34;
  _os_log_impl(&dword_1B36F3000, v21, v22, "Unexpected media type: %s for assetSyndicationIdentifier: %s", v23, 0x16u);
  v35 = v51;
  swift_arrayDestroy();
  MEMORY[0x1B8C6EC70](v35, -1, -1);
  MEMORY[0x1B8C6EC70](v23, -1, -1);

LABEL_18:
  v18 = 0xE400000000000000;
  v1 = v53;
  v19 = 1296389193;
LABEL_19:
  v58 = 0xD000000000000033;
  v59 = 0x80000001B3D0FB60;
  MEMORY[0x1B8C69C10](v19, v18);

  v36 = sub_1B3C9C5A8();

  v37 = PULocalizedString(v36);

  v38 = sub_1B3C9C5E8();
  v40 = v39;

  v41 = v56;
  sub_1B3728338(v1, v56);
  v42 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v43 = swift_allocObject();
  sub_1B37283A8(v41, v43 + v42);
  v44 = objc_allocWithZone(MEMORY[0x1E69C4450]);
  v45 = sub_1B3728644(v38, v40, 0x6873617274, 0xE500000000000000, 0, sub_1B37288D8, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1B3CF9810;
  sub_1B3710718(0, &unk_1EB851C40);
  v47 = v45;
  *(v46 + 32) = sub_1B3C9CFD8();

  return v46;
}

uint64_t sub_1B3726468(uint64_t a1)
{
  v2 = sub_1B3C995D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B3C9AE88();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + *(type metadata accessor for OneUpSocialAttributionBadgeView(0) + 20);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*(v10 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1B3C9CAD8();
    v13 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B372839C(v11, v12, 0);
    (*(v7 + 8))(v9, v6);
    v11 = v15[2];
    v12 = v15[3];
  }

  if (v11)
  {
    swift_getObjectType();
    (*(v3 + 104))(v5, *MEMORY[0x1E69C2B38], v2);
    sub_1B3C99C38();
    swift_unknownObjectRelease();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_1B3C9D4C8();
    __break(1u);
    (*v12)(v5, v2);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B3726750()
{
  v1 = sub_1B3C9AE88();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851BF8);
  sub_1B3C9A768();
  v5 = v0 + *(type metadata accessor for OneUpSocialAttributionBadgeView.LoaderProperty(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) != 1)
  {

    sub_1B3C9CAD8();
    v11 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B372839C(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  swift_getObjectType();
  v8 = sub_1B3C99A38();
  v10 = v9;
  swift_unknownObjectRelease();
LABEL_6:
  sub_1B3726B98(v8, v10);
}

void *sub_1B3726940()
{
  v1 = sub_1B372699C();
  v3 = v2;
  v4 = v0;
  if (v2)
  {
    v5 = v0;
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  sub_1B3728940(v1, v3, v4);
  return v6;
}

uint64_t sub_1B372699C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1B3728B60();
  sub_1B3C982D8();

  v1 = *(v0 + 16);
  sub_1B3728BB8(v1, *(v3 + 24), *(v3 + 32));
  return v1;
}

uint64_t sub_1B3726A2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B372699C();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1B3726A5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_1B3728BB8(*a1, v2, v3);
  return sub_1B3726AAC(v1, v2, v3);
}

uint64_t sub_1B3726AAC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  sub_1B37272F4();
  sub_1B3728940(a1, a2, a3);
}

void sub_1B3726B3C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  sub_1B3728BB8(a2, a3, a4);
  sub_1B3728940(v4, v5, v6);
}

void sub_1B3726B98(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_1B372699C();
  v10 = v9;
  v12 = v11;
  if (v9)
  {

    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  sub_1B3728940(v8, v10, v12);
  if (a2)
  {
    if (!v10)
    {
LABEL_11:
      v16 = sub_1B3C9C8B8();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = a1;
      v17[5] = a2;
      v17[6] = v2;

      sub_1B3850B9C();

      return;
    }

    if (v13 == a1 && v10 == a2)
    {
    }

    else
    {
      v15 = sub_1B3C9D6A8();

      if ((v15 & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v10)
  {

    sub_1B3726AAC(0, 0, 0);
  }
}

uint64_t sub_1B3726D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1B3726E20, 0, 0);
}

uint64_t sub_1B3726E20()
{
  v21 = v0;
  v20[1] = *MEMORY[0x1E69E9840];
  v1 = v0[6];
  v2 = v0[7];
  sub_1B3710718(0, &qword_1EB851C60);
  v0[2] = 0;

  v3 = sub_1B3727278(v1, v2, (v0 + 2));
  v4 = v0[2];
  v0[9] = v3;
  v0[10] = v4;
  if (v4)
  {
    v5 = qword_1EB84FF88;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_1B3C9A558();
    __swift_project_value_buffer(v7, qword_1EB851B60);

    v8 = v6;
    v9 = sub_1B3C9A538();
    v10 = sub_1B3C9CAC8();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = v0[6];
      v11 = v0[7];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_1B3749364(v12, v11, v20);
      *(v13 + 12) = 2112;
      *(v13 + 14) = v8;
      *v14 = v4;
      v16 = v8;
      _os_log_impl(&dword_1B36F3000, v9, v10, "Unable to load highlight for identifier %s. Error: %@", v13, 0x16u);
      sub_1B36FB21C(v14, &qword_1EB8567E0);
      MEMORY[0x1B8C6EC70](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x1B8C6EC70](v15, -1, -1);
      MEMORY[0x1B8C6EC70](v13, -1, -1);
    }

    else
    {
    }
  }

  swift_weakInit();
  sub_1B3C9C888();
  v0[11] = sub_1B3C9C878();
  v18 = sub_1B3C9C848();

  return MEMORY[0x1EEE6DFA0](sub_1B37270EC, v18, v17);
}

uint64_t sub_1B37270EC()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[9];
    v3 = v0[6];
    v2 = v0[7];

    v4 = v1;
    sub_1B3726AAC(v3, v2, v1);
  }

  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1B37271E8, 0, 0);
}

uint64_t sub_1B37271E8()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1B3727278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1B3C9C5A8();

  v6 = [v4 initWithCSSearchableItemUniqueIdentifier:v5 error:a3];

  return v6;
}

uint64_t sub_1B372737C()
{
  sub_1B3728940(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtCV15PhotosUIPrivate31OneUpSocialAttributionBadgeView15HighlightLoader___observationRegistrar;
  sub_1B3C98318();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1B3727440()
{
  result = sub_1B3C98318();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1B37274E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HighlightView.View();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = a2;
  sub_1B3727794(a2);
  v9 = &v7[OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_menuActionsProvider];
  v10 = *&v7[OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_menuActionsProvider];
  *v9 = a3;
  v9[1] = a4;
  sub_1B370A6FC(a3);
  sub_1B36F9DA0(v10);
  return v7;
}

uint64_t sub_1B3727578(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for HighlightView.View();
  swift_dynamicCastClassUnconditional();
  v8 = a3;
  sub_1B3727794(a3);
  v9 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_menuActionsProvider);
  v10 = *v9;
  *v9 = a4;
  v9[1] = a5;
  sub_1B370A6FC(a4);

  return sub_1B36F9DA0(v10);
}

void sub_1B372763C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_highlight);
  if (v3)
  {
    v4 = [v3 identifier];
    v5 = sub_1B3C9C5E8();
    v7 = v6;

    if (!a1)
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v7 = 0;
    v5 = 0;
  }

  v8 = [a1 identifier];
  v9 = sub_1B3C9C5E8();
  v11 = v10;

  if (!v7)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!v11)
  {
LABEL_17:

LABEL_18:

    sub_1B37277B4();
    return;
  }

  if (v5 != v9 || v7 != v11)
  {
    v13 = sub_1B3C9D6A8();

    if (v13)
    {
      return;
    }

    goto LABEL_18;
  }
}

void sub_1B37277B4()
{
  v1 = *(v0 + OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_highlight);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x1E69D37B8]);
    v3 = v1;
    v4 = [v2 initWithHighlight_];
    [v4 updateAlignment_];
    [v4 updateBackgroundStyle_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1B3CF6CE0;
    *(v5 + 32) = sub_1B3C9C5E8();
    *(v5 + 40) = v6;
    v7 = sub_1B3C9C778();

    [v4 excludeContextMenuItemsWithIdentifiers_];

    [v4 sizeToFit];
    v9 = v4;
    sub_1B37279CC(v4);
    [v9 setDelegate_];
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_highlightView);
    if (v8)
    {
      [v8 setDelegate_];
    }

    sub_1B37279CC(0);
  }
}

id sub_1B372795C(id result)
{
  v2 = OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_highlightView;
  v3 = *&v1[OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_highlightView];
  if (result)
  {
    if (v3 == result)
    {
      return result;
    }

    result = [result removeFromSuperview];
    v3 = *&v1[v2];
  }

  if (v3)
  {

    return [v1 addSubview_];
  }

  return result;
}

void sub_1B37279EC(void *a1, void *a2, void (*a3)(id))
{
  v6 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  v5 = a1;
  a3(v6);
}

void sub_1B3727A58()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HighlightView.View();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_highlightView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }
}

uint64_t sub_1B3727B1C(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_highlightView;
  v4 = *&v1[OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_highlightView];
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v17 = *&v1[OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_menuActionsProvider];
    if (v17)
    {

      v19 = v17(v18);
      sub_1B36F9DA0(v17);
      return v19;
    }
  }

  else
  {
    if (qword_1EB84FF88 != -1)
    {
      swift_once();
    }

    v7 = sub_1B3C9A558();
    __swift_project_value_buffer(v7, qword_1EB851B60);
    v8 = v1;
    v9 = a1;
    v10 = sub_1B3C9A538();
    v11 = sub_1B3C9CAC8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412546;
      v14 = *&v2[v3];
      *(v12 + 4) = v14;
      *(v12 + 12) = 2112;
      *(v12 + 14) = v9;
      *v13 = v14;
      v13[1] = v9;
      v15 = v9;
      v16 = v14;
      _os_log_impl(&dword_1B36F3000, v10, v11, "Unexpected SLAttributionView instances. Expected: %@, Received: %@", v12, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567E0);
      swift_arrayDestroy();
      MEMORY[0x1B8C6EC70](v13, -1, -1);
      MEMORY[0x1B8C6EC70](v12, -1, -1);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1B3727D84(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_highlight] = 0;
  v9 = &v4[OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_menuActionsProvider];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_highlightView] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for HighlightView.View();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1B3727E38(void *a1)
{
  *&v1[OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_highlight] = 0;
  v3 = &v1[OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_menuActionsProvider];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtCV15PhotosUIPrivateP33_9F0748E264B4EFA52E58BB578614BD5813HighlightView4View_highlightView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HighlightView.View();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1B3727EF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightView.View();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B3727FF8()
{
  sub_1B3728094();
  if (v0 <= 0x3F)
  {
    sub_1B3728238(319, &qword_1EB84F400, &unk_1EB851C08);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B3728094()
{
  if (!qword_1EB84F408)
  {
    type metadata accessor for OneUpSocialAttributionBadgeView.HighlightLoader(255);
    v0 = sub_1B3C9A778();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB84F408);
    }
  }
}

uint64_t sub_1B3728134(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B372816C()
{
  type metadata accessor for OneUpSocialAttributionBadgeView.LoaderProperty(319);
  if (v0 <= 0x3F)
  {
    sub_1B3728238(319, &unk_1EB84F3F0, &qword_1EB851C18);
    if (v1 <= 0x3F)
    {
      sub_1B3728238(319, &qword_1EB84F400, &unk_1EB851C08);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B3728238(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1B3C9A7E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_SaySo8UIActionCGIego_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B37282C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3728338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSocialAttributionBadgeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B372839C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1B37283A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSocialAttributionBadgeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B37284D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B3728DD8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1B3728538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B3728DD8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1B372859C()
{
  sub_1B3728DD8();
  sub_1B3C9B138();
  __break(1u);
}

uint64_t sub_1B37285C4()
{
  v0 = sub_1B3C9A558();
  __swift_allocate_value_buffer(v0, qword_1EB851B60);
  __swift_project_value_buffer(v0, qword_1EB851B60);
  return sub_1B3C9A548();
}

id sub_1B3728644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1B3C9C5A8();

  if (a4)
  {
    v13 = sub_1B3C9C5A8();
  }

  else
  {
    v13 = 0;
  }

  v17[4] = a6;
  v17[5] = a7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B370C014;
  v17[3] = &block_descriptor_6;
  v14 = _Block_copy(v17);
  v15 = [v7 initWithTitle:v12 systemImageName:v13 role:a5 handler:v14];

  _Block_release(v14);

  return v15;
}

uint64_t sub_1B3728760(uint64_t a1)
{
  v2 = type metadata accessor for OneUpSocialAttributionBadgeView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for OneUpSocialAttributionBadgeView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851C28);
  OUTLINED_FUNCTION_6_0();
  (*(v5 + 8))(v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C30);

  v6 = type metadata accessor for OneUpSocialAttributionBadgeView.LoaderProperty(0);
  OUTLINED_FUNCTION_2_8(*(v6 + 20));
  OUTLINED_FUNCTION_2_8(v1[7]);
  OUTLINED_FUNCTION_2_8(v1[8]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B37288D8()
{
  v1 = *(type metadata accessor for OneUpSocialAttributionBadgeView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B3726468(v2);
}

void sub_1B3728940(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1B3728984(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B3728A4C;

  return sub_1B3726D8C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B3728A4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1B3728B60()
{
  result = qword_1EB84F9F8;
  if (!qword_1EB84F9F8)
  {
    type metadata accessor for OneUpSocialAttributionBadgeView.HighlightLoader(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F9F8);
  }

  return result;
}

void sub_1B3728BB8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

uint64_t sub_1B3728BFC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B3728C3C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1B3728C8C()
{
  result = qword_1EB84F8D0;
  if (!qword_1EB84F8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB851C68);
    sub_1B3728D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F8D0);
  }

  return result;
}

unint64_t sub_1B3728D10()
{
  result = qword_1EB84F8E0;
  if (!qword_1EB84F8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB851C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F8E0);
  }

  return result;
}

unint64_t sub_1B3728D84()
{
  result = qword_1EB851C80;
  if (!qword_1EB851C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851C80);
  }

  return result;
}

unint64_t sub_1B3728DD8()
{
  result = qword_1EB851C88;
  if (!qword_1EB851C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851C88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);

  return sub_1B372839C(v4, v5, v6);
}

unint64_t PUWallpaperShuffleConfigurationViewStyle.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B3728E84@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PUWallpaperShuffleConfigurationViewStyle.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t PUWallpaperShuffleConfigurationViewContentMode.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B3728ECC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PUWallpaperShuffleConfigurationViewContentMode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B3728FA4()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1B3729050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_15_2();
  a20 = v22;
  a21 = v23;
  v24 = v21;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  *&v24[OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_manualSelectionPhotoPicker] = 0;
  swift_unknownObjectWeakInit();
  *&v24[OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController____lazy_storage___contentViewController] = 0;
  *&v24[OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_contentMode] = v26;
  objc_allocWithZone(type metadata accessor for PUWallpaperShuffleConfigurationViewModel(0));
  v35 = v28;
  v36 = v34;
  v37 = v30;
  sub_1B37C19E0();
  *&v24[OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_viewModel] = v38;
  *&v24[OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_style] = v32;
  v39 = type metadata accessor for PUWallpaperShuffleConfigurationViewController();
  a9.receiver = v24;
  a9.super_class = v39;
  objc_msgSendSuper2(&a9, sel_initWithNibName_bundle_, 0, 0);

  OUTLINED_FUNCTION_7_6();
}

id sub_1B37291D0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [v4 initWithPhotoLibrary:a1 style:a2 posterConfiguration:a3 centerMedia:a4 contentMode:0];

  return v8;
}

id sub_1B372929C(void *a1, uint64_t a2)
{
  v4 = [v2 initWithPhotoLibrary:a1 style:a2 posterConfiguration:0 centerMedia:0];

  return v4;
}

id sub_1B3729318(void *a1)
{
  v3 = [v1 initWithPhotoLibrary:a1 style:0 posterConfiguration:0 centerMedia:0];

  return v3;
}

void sub_1B372938C()
{
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_manualSelectionPhotoPicker) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController____lazy_storage___contentViewController) = 0;
  sub_1B3C9D4C8();
  __break(1u);
}

void sub_1B372941C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_15_2();
  a20 = v22;
  a21 = v23;
  v24 = type metadata accessor for PUWallpaperShuffleConfigurationViewController();
  a9.receiver = v21;
  a9.super_class = v24;
  objc_msgSendSuper2(&a9, sel_viewDidLoad);
  v25 = [v21 view];
  if (!v25)
  {
    __break(1u);
    goto LABEL_7;
  }

  v26 = v25;
  v27 = objc_opt_self();
  v28 = [v27 clearColor];
  [v26 setBackgroundColor_];

  v29 = *&v21[OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_viewModel];
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_9_3();
  *v30 = sub_1B3729D88;
  v30[1] = v28;

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_9_3();
  *v31 = sub_1B3729D90;
  v31[1] = v28;

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_9_3();
  *v32 = sub_1B3729D98;
  v32[1] = v28;

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_9_3();
  *v33 = sub_1B3729DC8;
  v33[1] = v28;

  OUTLINED_FUNCTION_4_3();
  v34 = OUTLINED_FUNCTION_2_9();
  swift_unknownObjectWeakInit();
  v35 = (v29 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_albumPickerHandler);
  v36 = *(v29 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_albumPickerHandler);
  *v35 = sub_1B3729DF8;
  v35[1] = v34;

  sub_1B36F9DA0(v36);

  v37 = sub_1B3729D00();
  v38 = [v37 view];

  if (!v38)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v39 = [v27 clearColor];
  [v38 setBackgroundColor_];

  v40 = OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController____lazy_storage___contentViewController;
  [v21 px:*&v21[OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController____lazy_storage___contentViewController] addOrReplaceChildViewController:1 activateConstraints:?];
  v41 = [v21 traitCollection];
  v42 = [v41 userInterfaceIdiom];

  if (v42 == 1)
  {
    v43 = *&v21[v40];
    [v43 additionalSafeAreaInsets];
    [v43 setAdditionalSafeAreaInsets_];
  }

  sub_1B3729AF0();
  OUTLINED_FUNCTION_7_6();
}

void sub_1B37296F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 wallpaperShuffleConfigurationViewController:v3 didFinishWithPosterConfiguration:a1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1B3729790()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 wallpaperShuffleConfigurationViewControllerDidDismiss_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1B3729818(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1B3729874()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1B372A4B0();
    [v1 presentViewController:v2 animated:1 completion:0];
  }
}

void sub_1B3729934(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PUWallpaperShuffleConfigurationViewController();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 presentationController];
  v4 = [v3 delegate];

  if (v4)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = [v1 presentationController];
    if (v5)
    {
      v6 = v5;
      [v5 setDelegate_];
    }
  }
}

void sub_1B3729A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = sub_1B37C3264();
  if (*(v22 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_manualSelectionPhotoPicker))
  {

    sub_1B372A764(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

void sub_1B3729AF0()
{
  v1 = [v0 sheetPresentationController];
  if (v1)
  {
    v5 = v1;
    sub_1B3C9CE28();
    v2 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_style];
    if (v2 != 2)
    {
      if (v2 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1B3CF9810;
        sub_1B3710718(0, &qword_1EB851D10);
        *(v3 + 32) = sub_1B3C9CE38();
        v4 = sub_1B3C9C778();

        [v5 setDetents_];
      }

      else
      {
        if (v2)
        {
          sub_1B3C9D6E8();
          __break(1u);
          return;
        }

        [v5 setPrefersGrabberVisible_];
      }
    }
  }
}

uint64_t sub_1B3729C6C(void *a1)
{
  v2 = [a1 containerTraitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_1B3C9CD58();
  if ((v2 & 1) == 0)
  {
    return 0x4071E00000000000;
  }

  [a1 maximumDetentValue];
  return v4;
}

id sub_1B3729D00()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController____lazy_storage___contentViewController;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController____lazy_storage___contentViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController____lazy_storage___contentViewController);
  }

  else
  {
    v4 = sub_1B3729E00(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1B3729E00(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_style);
  if (v1 == 2)
  {
    return sub_1B372A4B0();
  }

  if (v1 == 1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_viewModel);
    v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851D18));
    v4 = v2;
  }

  else
  {
    if (v1)
    {
      result = sub_1B3C9D6E8();
      __break(1u);
      return result;
    }

    v6 = *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_viewModel);
    type metadata accessor for PUWallpaperShuffleConfigurationViewModel.PresentationState(0);
    sub_1B372B9DC(&qword_1EB851D20, 255, type metadata accessor for PUWallpaperShuffleConfigurationViewModel.PresentationState);
    v6;

    sub_1B3C9AA58();
    v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851D28));
  }

  return sub_1B3C9B088();
}

void sub_1B3729F5C()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851CF8);
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_2();
  v5 = sub_1B3C9C328();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851D00);
  OUTLINED_FUNCTION_8_0(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v40 - v13;
  sub_1B3C9C348();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_6();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_7();
  v18 = OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_manualSelectionPhotoPicker;
  if (!*(v2 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_manualSelectionPhotoPicker))
  {
    v19 = *(*(v2 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_viewModel) + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_photoLibrary);
    v40[1] = v17;
    v20 = v19;
    sub_1B3C9C2F8();
    sub_1B3C9C1E8();
    v21 = sub_1B3C9C1F8();
    OUTLINED_FUNCTION_17_5(v14, v22, v23, v21);
    sub_1B3C9C318();
    (*(v7 + 104))(v10, *MEMORY[0x1E6979068], v5);
    sub_1B3C9C338();
    sub_1B3C9C298();
    MEMORY[0x1B8C69830](18);
    sub_1B3C9C2E8();
    sub_1B3C9C368();
    v24 = sub_1B3C9C378();
    OUTLINED_FUNCTION_17_5(v1, v25, v26, v24);
    sub_1B3C9C2A8();
    sub_1B3710718(0, &qword_1EB851CE0);
    v27 = OUTLINED_FUNCTION_13_3();
    v28(v27);
    v29 = sub_1B3C9CD88();
    OUTLINED_FUNCTION_0_4();
    sub_1B372B9DC(v30, v31, v32);
    swift_unknownObjectRetain();
    sub_1B3C9CD98();
    v33 = [v29 presentationController];
    if (v33)
    {
      v34 = v33;
      [v33 setDelegate_];
    }

    v35 = *(v2 + v18);
    *(v2 + v18) = v29;
    v36 = v29;

    OUTLINED_FUNCTION_16_2(v37, sel_presentViewController_animated_completion_);
    v38 = OUTLINED_FUNCTION_8_3();
    v39(v38);
  }
}

uint64_t sub_1B372A2B0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851CD8);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_2();
  sub_1B3C9C348();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_7();
  v6 = *(*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_viewModel) + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_photoLibrary);
  sub_1B3C9C2F8();
  sub_1B3C9C298();
  sub_1B3C9C278();
  v7 = sub_1B37C29C4();
  if (sub_1B37C8AEC(v7))
  {
    sub_1B3C9C2D8();
  }

  sub_1B37C35EC();
  sub_1B3C9C438();
  v8 = sub_1B3C9C458();
  OUTLINED_FUNCTION_17_5(v1, v9, v10, v8);
  sub_1B3C9C258();
  sub_1B3710718(0, &qword_1EB851CE0);
  v11 = OUTLINED_FUNCTION_13_3();
  v12(v11);
  v13 = sub_1B3C9CD88();
  OUTLINED_FUNCTION_0_4();
  sub_1B372B9DC(v14, v15, v16);
  swift_unknownObjectRetain();
  v17 = sub_1B3C9CD98();
  OUTLINED_FUNCTION_16_2(v17, sel_presentViewController_animated_completion_);

  v18 = OUTLINED_FUNCTION_8_3();
  return v19(v18);
}

uint64_t sub_1B372A4B0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851CD8);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - v4;
  v34 = sub_1B3C9C348();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_7();
  v35 = v0;
  v12 = *(*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_viewModel) + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_photoLibrary);
  sub_1B3C9C2F8();
  sub_1B3C9C278();
  sub_1B3C9C298();
  sub_1B3C9C2E8();
  v13 = sub_1B37C3B54();
  if (v13)
  {
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B3CF6CE0;
    v16 = [v14 localIdentifier];
    v33 = v12;
    v17 = v16;
    v18 = sub_1B3C9C5E8();
    v19 = v5;
    v21 = v20;

    v12 = v33;
    *(v15 + 32) = v18;
    *(v15 + 40) = v21;
    v5 = v19;
    sub_1B3C9C2D8();
  }

  sub_1B3C9C448();
  v22 = sub_1B3C9C458();
  OUTLINED_FUNCTION_17_5(v5, v23, v24, v22);
  sub_1B3C9C248();
  sub_1B3710718(0, &qword_1EB851CE0);
  (*(v7 + 16))(v11, v1, v34);
  v25 = sub_1B3C9CD88();
  OUTLINED_FUNCTION_0_4();
  sub_1B372B9DC(v26, v27, v28);
  swift_unknownObjectRetain();
  sub_1B3C9CD98();

  v29 = OUTLINED_FUNCTION_8_3();
  v30(v29);
  return v25;
}

void sub_1B372A764(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_15_2();
  v23 = *(v22 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_manualSelectionPhotoPicker);
  if (v23)
  {
    v45 = v23;
    v24 = sub_1B3C9C778();
    [v45 _stopActivityIndicatorsForAssetsWithIdentifiers_];

    v25 = *(*(v22 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_viewModel) + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_manuallySelectedAssetIdentifiers);
    if (v25)
    {
      v26 = *(v25 + 16);

      v27 = 0;
      v28 = v25 + 40;
      v29 = MEMORY[0x1E69E7CC0];
LABEL_4:
      v30 = (v28 + 16 * v27);
      while (1)
      {
        if (v26 == v27)
        {

          v42 = sub_1B3C9C778();

          [v45 deselectAssetsWithIdentifiers_];

          goto LABEL_14;
        }

        if (v27 >= *(v25 + 16))
        {
          break;
        }

        ++v27;
        v31 = v30 + 2;
        v32 = *(v30 - 1);
        v33 = *v30;
        sub_1B3710718(0, &qword_1EB84F770);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

        v35 = sub_1B372B95C(v32, v33, ObjCClassFromMetadata);
        v37 = v36;

        v30 = v31;
        if (v37)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B370EE80();
            v29 = v40;
          }

          v38 = *(v29 + 16);
          if (v38 >= *(v29 + 24) >> 1)
          {
            sub_1B370EE80();
            v29 = v41;
          }

          *(v29 + 16) = v38 + 1;
          v39 = v29 + 16 * v38;
          *(v39 + 32) = v35;
          *(v39 + 40) = v37;
          v28 = v25 + 40;
          goto LABEL_4;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:
      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_6();
  }
}

id PUWallpaperShuffleConfigurationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1B3C9C5A8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PUWallpaperShuffleConfigurationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PUWallpaperShuffleConfigurationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall PUWallpaperShuffleConfigurationViewController.picker(_:didFinishPicking:)(PHPickerViewController *_, Swift::OpaquePointer didFinishPicking)
{
  v3 = v2;
  v6 = sub_1B3C9C348();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C9CD78();
  v12 = sub_1B3C9C268();
  (*(v8 + 8))(v11, v6);
  if (v12 == 2)
  {
    v15 = OUTLINED_FUNCTION_8_3();
    sub_1B372AE08(v15, v16);
  }

  else if (v12 == 1)
  {
    v13 = OUTLINED_FUNCTION_8_3();
    sub_1B372AC10(v13, v14);
  }

  else
  {
    v17 = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_manualSelectionPhotoPicker);
    if (v17)
    {
      v18 = v17 == _;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      sub_1B372B0A8(didFinishPicking._rawValue);
    }
  }
}

id sub_1B372AC10(uint64_t a1, uint64_t a2)
{
  v27 = sub_1B3C9C228();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_viewModel];
  v23 = v2;
  v7 = *(a2 + 16);
  if (v7)
  {
    v9 = *(v4 + 16);
    v8 = v4 + 16;
    v10 = a2 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v25 = *(v8 + 56);
    v26 = v9;
    v11 = (v8 - 8);
    v12 = MEMORY[0x1E69E7CC0];
    v24 = v8;
    do
    {
      v13 = v27;
      v26(v6, v10, v27);
      v14 = sub_1B3C9C208();
      v16 = v15;
      (*v11)(v6, v13);
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B370EE80();
          v12 = v19;
        }

        v17 = *(v12 + 16);
        if (v17 >= *(v12 + 24) >> 1)
        {
          sub_1B370EE80();
          v12 = v20;
        }

        *(v12 + 16) = v17 + 1;
        v18 = v12 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v16;
      }

      v10 += v25;
      --v7;
    }

    while (v7);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  sub_1B37C32A0(v12);
  return [v23 dismissViewControllerAnimated:1 completion:{0, v22}];
}

void sub_1B372AE08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851D08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  sub_1B387CAEC(a2, &v18 - v6);
  v8 = sub_1B3C9C228();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1B372B8F4(v7);
    goto LABEL_8;
  }

  v9 = sub_1B3C9C208();
  v11 = v10;
  (*(*(v8 - 8) + 8))(v7, v8);
  if (!v11)
  {
LABEL_8:
    if (*&v3[OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_style] == 2)
    {
      sub_1B37C31D4();
    }

    goto LABEL_10;
  }

  v12 = [*(*&v3[OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_viewModel] + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_photoLibrary) librarySpecificFetchOptions];
  [v12 setWantsIncrementalChangeDetails_];
  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B3CF6CE0;
  *(v14 + 32) = v9;
  *(v14 + 40) = v11;
  v15 = sub_1B3C9C778();

  v16 = [v13 fetchAssetCollectionsWithLocalIdentifiers:v15 options:v12];

  v17 = [v16 firstObject];
  sub_1B37C3BD0(v17);

  LOBYTE(v16) = sub_1B37C1784();

  if ((v16 & 1) != 0 || *&v3[OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_style] == 2)
  {
    sub_1B37C39E4();
    sub_1B37C31D4();
  }

LABEL_10:
  if (*&v3[OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_style] != 2)
  {
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1B372B0A8(uint64_t a1)
{
  v3 = sub_1B3C9C228();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_manualSelectionPhotoPicker;
  v8 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_manualSelectionPhotoPicker);
  if (v8)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v32 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_viewModel);
      sub_1B3710718(0, &qword_1EB84F770);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = *(v4 + 16);
      v11 = v4 + 16;
      v34 = v12;
      v35 = ObjCClassFromMetadata;
      v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v33 = *(v11 + 56);
      v36 = v11;
      v14 = (v11 - 8);
      v31 = v8;
      v15 = MEMORY[0x1E69E7CC0];
      do
      {
        v34(v6, v13, v3);
        sub_1B3C9C218();
        if (v16)
        {
          v17 = sub_1B3C9C5A8();
        }

        else
        {
          v17 = 0;
        }

        v18 = [v35 uuidFromLocalIdentifier_];

        if (v18)
        {
          v19 = sub_1B3C9C5E8();
          v21 = v20;

          (*v14)(v6, v3);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B370EE80();
            v15 = v24;
          }

          v22 = *(v15 + 16);
          if (v22 >= *(v15 + 24) >> 1)
          {
            sub_1B370EE80();
            v15 = v25;
          }

          *(v15 + 16) = v22 + 1;
          v23 = v15 + 16 * v22;
          *(v23 + 32) = v19;
          *(v23 + 40) = v21;
        }

        else
        {
          (*v14)(v6, v3);
        }

        v13 += v33;
        --v9;
      }

      while (v9);
      *(v32 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_manuallySelectedAssetIdentifiers) = v15;

      v26 = sub_1B3C9C778();
      v27 = v31;
      [v31 _startActivityIndicatorsForAssetsWithIdentifiers_];

      sub_1B37C4D94();
    }

    else
    {
      v36 = v8;
      [v36 dismissViewControllerAnimated:1 completion:0];
      v28 = *(v1 + v7);
      *(v1 + v7) = 0;

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong wallpaperShuffleConfigurationViewControllerDidCancelManuallySelectingPhotos_];

        swift_unknownObjectRelease();
      }

      else
      {
        v30 = v36;
      }
    }
  }
}

Swift::Void __swiftcall PUWallpaperShuffleConfigurationViewController.presentationControllerWillDismiss(_:)(UIPresentationController *a1)
{
  v2 = [(UIPresentationController *)a1 presentedViewController];
  swift_allocObject();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_14_1();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = v2;
  v5 = [(UIViewController *)v4 transitionCoordinator];
  if (v5)
  {
    v6 = v5;
    if ([v5 initiallyInteractive])
    {

      OUTLINED_FUNCTION_14_1();
      v7 = swift_allocObject();
      *(v7 + 16) = sub_1B372B790;
      *(v7 + 24) = v3;
      v9[4] = sub_1B372B798;
      v9[5] = v7;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_1B372B6C8;
      v9[3] = &block_descriptor_7;
      v8 = _Block_copy(v9);

      [v6 notifyWhenInteractionChangesUsingBlock_];

      _Block_release(v8);
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  sub_1B372B60C(v1, v4);
}

void sub_1B372B60C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_manualSelectionPhotoPicker);
    if ((v5 != a2 || v5 == 0) && Strong == a2)
    {
      v9 = *(Strong + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_style) - 1;
      v8 = *(Strong + OBJC_IVAR____TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController_viewModel);
      if (v9 > 1)
      {
        sub_1B37C220C();
      }

      else
      {
        sub_1B37C31D4();
      }
    }

    else
    {
      v8 = Strong;
    }
  }
}

uint64_t sub_1B372B6C8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B372B798(void *a1)
{
  v2 = *(v1 + 16);
  result = [a1 isCancelled];
  if ((result & 1) == 0)
  {
    return v2();
  }

  return result;
}

unint64_t sub_1B372B7DC()
{
  result = qword_1EB851CA8;
  if (!qword_1EB851CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851CA8);
  }

  return result;
}

unint64_t sub_1B372B834()
{
  result = qword_1EB851CB0;
  if (!qword_1EB851CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851CB0);
  }

  return result;
}

uint64_t sub_1B372B8F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851D08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B372B95C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B3C9C5A8();
  v5 = [a3 localIdentifierWithUUID_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1B3C9C5E8();

  return v6;
}

uint64_t sub_1B372B9DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_9()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, a4);
}

id sub_1B372BB0C(void *a1)
{
  v3 = OBJC_IVAR___PUOneUpFeedbackController_selectionFeedbackGenerator;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCF40]) init];
  *&v1[OBJC_IVAR___PUOneUpFeedbackController_viewModel] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for OneUpFeedbackController();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  [v4 registerChangeObserver_];

  return v5;
}

id sub_1B372BC20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpFeedbackController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B372BCC4(void *a1, void *a2)
{
  if (a1 && (v4 = v2, v6 = *(v2 + OBJC_IVAR___PUOneUpFeedbackController_viewModel), sub_1B372BF20(), v7 = v6, v8 = a1, v9 = sub_1B3C9CFA8(), v7, v8, (v9 & 1) != 0) && a2 && (objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0))
  {
    v11 = v10;
    v16 = a2;
    if ([v7 isScrubbing])
    {
      if ([v11 currentAssetDidChange])
      {
        [*(v4 + OBJC_IVAR___PUOneUpFeedbackController_selectionFeedbackGenerator) selectionChanged];
      }

      [*(v4 + OBJC_IVAR___PUOneUpFeedbackController_selectionFeedbackGenerator) prepare];
    }
  }

  else
  {
    sub_1B3C9D378();

    if (!a1)
    {
      __break(1u);
    }

    v12 = [a1 description];
    v13 = sub_1B3C9C5E8();
    v15 = v14;

    MEMORY[0x1B8C69C10](v13, v15);

    sub_1B3C9D4C8();
    __break(1u);
  }
}

unint64_t sub_1B372BF20()
{
  result = qword_1EB84F888;
  if (!qword_1EB84F888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB84F888);
  }

  return result;
}

char *sub_1B372BF64()
{
  v1 = v0;
  v2 = sub_1B3C98158();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel___audioMuteState;
  v10 = *MEMORY[0x1E69C2C10];
  sub_1B3C996F8();
  OUTLINED_FUNCTION_0_1();
  (*(v11 + 104))(&v1[v9], v10);
  v12 = &v1[OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel___currentTime];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v1[OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel___totalDuration];
  *v13 = 0;
  v13[8] = 1;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_videoPlayer] = 0;
  v1[OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel___isPlaying] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_browsingViewModel] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_assetViewModel] = 0;
  v1[OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel__timelineControlInteractionState] = 0;
  v14 = OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel__controlSource;
  *&v1[v14] = [objc_allocWithZone(type metadata accessor for BrowsingVideoModel.ControlSource()) init];
  v15 = OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_timeRangeMarkUIProvider;
  *&v1[v15] = [objc_allocWithZone(type metadata accessor for BrowsingVideoModel.TimeRangeMarkUIProvider()) init];
  v16 = &v1[OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_videoMuteObservation];
  *v16 = 0;
  v16[1] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_assetViewModelObservation] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_videoPlayerObservation] = 0;
  v17 = &v1[OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_scrubberIdentifier];
  sub_1B3C98148();
  v18 = sub_1B3C98128();
  v20 = v19;
  (*(v4 + 8))(v8, v2);
  *v17 = v18;
  v17[1] = v20;
  sub_1B3C98308();
  v30.receiver = v1;
  v30.super_class = type metadata accessor for BrowsingVideoModel();
  v21 = objc_msgSendSuper2(&v30, sel_init);
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 sharedController];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v25 = sub_1B3C9CA58();
  v27 = v26;

  v28 = &v23[OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_videoMuteObservation];
  *v28 = v25;
  v28[1] = v27;
  swift_unknownObjectRelease();
  sub_1B372DF40();

  return v23;
}

uint64_t sub_1B372C24C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1B3C996F8();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel___audioMuteState;
  swift_beginAccess();
  v13 = *(v7 + 16);
  v13(v11, v3 + v12, v5);
  OUTLINED_FUNCTION_5_7();
  sub_1B372FBE8(v14, v15);
  sub_1B3C9C528();
  v16 = OUTLINED_FUNCTION_10_3();
  v2(v16);
  if (v5)
  {
    v13(v11, a1, v5);
    swift_beginAccess();
    (*(v7 + 40))(v3 + v12, v11, v5);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_8_4();
    *(v18 - 16) = v3;
    *(v18 - 8) = a1;
    sub_1B372EA08();
  }

  return (v2)(a1, v5);
}

uint64_t sub_1B372C4A4(uint64_t result, int a2, void *a3)
{
  v4 = v3 + *a3;
  v5 = *(v4 + 8);
  if (v5 & 1) != 0 || (a2)
  {
    if (v5 & a2)
    {
      goto LABEL_4;
    }
  }

  else if (*v4 == *&result)
  {
LABEL_4:
    *v4 = *&result;
    *(v4 + 8) = a2 & 1;
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1B372EA08();
  *&result = COERCE_DOUBLE();
  return result;
}

id sub_1B372C574(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel___isPlaying) == (a1 & 1))
  {
    v6 = a1 & 1;

    return sub_1B372CF1C(v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_8_4();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_1B372EA08();
  }
}

void sub_1B372C648(unsigned __int8 a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel__timelineControlInteractionState) == a1)
  {

    sub_1B372D4CC(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_8_4();
    *(v4 - 16) = v1;
    *(v4 - 8) = a1;
    sub_1B372EA08();
  }
}

void sub_1B372C71C(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1B372DF40();
    }
  }
}

uint64_t sub_1B372C7A0(uint64_t a1)
{
  v3 = sub_1B3C996F8();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  sub_1B372C8D8(v8 - v7);
  OUTLINED_FUNCTION_5_7();
  sub_1B372FBE8(v10, v11);
  sub_1B3C9C528();
  v12 = OUTLINED_FUNCTION_10_3();
  v1(v12);
  if ((v3 & 1) == 0)
  {
    (*(v5 + 16))(v9, a1, v3);
    sub_1B372C24C(v9);
  }

  return (v1)(a1, v3);
}

uint64_t sub_1B372C8D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  v6 = sub_1B372FBE8(v4, v5);
  OUTLINED_FUNCTION_13_4(v6, v7, v8, v9, v10, v11, v12, v13, v17, v1);
  sub_1B3C982D8();

  v14 = OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel___audioMuteState;
  swift_beginAccess();
  sub_1B3C996F8();
  OUTLINED_FUNCTION_0_1();
  return (*(v15 + 16))(a1, v2 + v14);
}

uint64_t sub_1B372C9B4(uint64_t a1)
{
  v2 = sub_1B3C996F8();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1B372C24C(v4);
}

uint64_t sub_1B372CA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B3C996F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel___audioMuteState;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

unint64_t sub_1B372CC74(unint64_t a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(unint64_t, void, __n128, __n128))
{
  *&result = COERCE_DOUBLE(a3());
  if (a2)
  {
    if (v7)
    {
      return result;
    }
  }

  else if ((v7 & 1) == 0)
  {
    v8.n128_u64[0] = result;
    v9.n128_u64[0] = a1;
    if (*&a1 == *&result)
    {
      return result;
    }
  }

  *&result = COERCE_DOUBLE(a4(a1, a2 & 1, v8, v9));
  return result;
}

uint64_t sub_1B372CD1C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  v6 = sub_1B372FBE8(v4, v5);
  OUTLINED_FUNCTION_13_4(v6, v7, v8, v9, v10, v11, v12, v13, v15, v2);
  sub_1B3C982D8();

  return *(v2 + *a2);
}

void *sub_1B372CDE4(void *result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_videoPlayer;
  v4 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_videoPlayer);
  if (result)
  {
    if (v4 == result)
    {
      return result;
    }

    [result unregisterTimeObserver_];
  }

  else if (!v4)
  {
    return result;
  }

  sub_1B372E2C8();
  sub_1B372DF40();
  v5 = *(v1 + v3);
  if (v5)
  {
    v6 = v5;
    [v6 registerTimeObserver_];
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = objc_allocWithZone(PUBrowsingVideoPlayerObservation);
    v9 = sub_1B372F8F4(v6, sub_1B372FB58, v7);
  }

  else
  {
    v9 = 0;
  }

  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_videoPlayerObservation) = v9;

  return MEMORY[0x1EEE66BB8]();
}

id sub_1B372CF1C(char a1)
{
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel___isPlaying) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel__controlSource);
  v3 = sub_1B372CF74() & 1;

  return [v2 setPlaying_];
}

uint64_t sub_1B372CF74()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  v3 = sub_1B372FBE8(v1, v2);
  OUTLINED_FUNCTION_13_4(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1B3C982D8();

  return *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel___isPlaying);
}

id sub_1B372D020(SEL *a1)
{
  sub_1B3710718(0, &qword_1EB84FE30);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 *a1];

  return v3;
}

id sub_1B372D088()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_assetViewModel);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 asset];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1B3710718(0, &qword_1EB84F860);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 allowAutoplayVideoForAsset_];
  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_1B372D138(uint64_t result)
{
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_assetViewModel;
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_assetViewModel);
  if (v3)
  {
    if (v3 == result)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  sub_1B372E284();
  sub_1B372E4B0();
  v4 = *(v1 + v2);
  if (v4)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    objc_allocWithZone(PUAssetViewModelObservation);
    v5 = v4;
    v6 = sub_1B37FDA74();
  }

  else
  {
    v6 = 0;
  }

  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_assetViewModelObservation) = v6;

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B372D220(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

void sub_1B372D2B0(void *a1, void *a2, void (*a3)(id))
{
  v6 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  v5 = a1;
  a3(v6);
}

uint64_t sub_1B372D31C(unsigned __int8 a1)
{
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](a1);
  return sub_1B3C9D7F8();
}

uint64_t sub_1B372D36C()
{
  v1 = *v0;
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](v1);
  return sub_1B3C9D7F8();
}

void sub_1B372D3B0(unsigned __int8 a1)
{
  if (sub_1B372D4E4() != a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_browsingViewModel);
    if (v2)
    {
      v3 = v2;
      v4 = sub_1B372D578();
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = !v4;
      v8[4] = sub_1B372FAE8;
      v8[5] = v5;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 1107296256;
      v8[2] = sub_1B370C014;
      v8[3] = &block_descriptor_82;
      v6 = _Block_copy(v8);
      v7 = v3;

      [v7 performChanges_];
      _Block_release(v6);
    }
  }
}

void sub_1B372D4CC(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel__timelineControlInteractionState);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel__timelineControlInteractionState) = a1;
  sub_1B372D3B0(v2);
}

uint64_t sub_1B372D4E4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  v3 = sub_1B372FBE8(v1, v2);
  OUTLINED_FUNCTION_13_4(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1B3C982D8();

  return *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel__timelineControlInteractionState);
}

uint64_t sub_1B372D850()
{
  v1 = *(v0 + OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC13ControlSource_currentValueText);

  return v1;
}

uint64_t sub_1B372D8A4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC13ControlSource_currentValueText);
  *v3 = a1;
  v3[1] = a2;
}

id sub_1B372D8D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_1B3C9C5A8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1B372D934()
{
  v1 = *(v0 + OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC13ControlSource_maxValueText);

  return v1;
}

void sub_1B372D988(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1B3C9C5E8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1B372DA10(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC13ControlSource_maxValueText);
  *v3 = a1;
  v3[1] = a2;
}

id sub_1B372DB40()
{
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC13ControlSource_minValue] = 0;
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC13ControlSource_maxValue] = 981668463;
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC13ControlSource_currentValue] = 0;
  v0[OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC13ControlSource_isPlaying] = 1;
  v0[OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC13ControlSource_isLoading] = 0;
  v1 = &v0[OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC13ControlSource_currentValueText];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC13ControlSource_maxValueText];
  *v2 = 0;
  v2[1] = 0;
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC13ControlSource_timeRangeMarks] = MEMORY[0x1E69E7CC0];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BrowsingVideoModel.ControlSource();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1B372DC94(id result)
{
  if (*(v1 + OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC23TimeRangeMarkUIProvider_totalDuration) > 0.0)
  {
    v2 = result;
    [result endValue];
    return [v2 startValue];
  }

  return result;
}