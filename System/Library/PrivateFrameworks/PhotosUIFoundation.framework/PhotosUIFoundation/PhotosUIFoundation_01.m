unint64_t sub_1B3F97C44()
{
  result = qword_1EB87BE48;
  if (!qword_1EB87BE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB87BE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87BE48);
  }

  return result;
}

void sub_1B3F97CA8()
{
  OUTLINED_FUNCTION_11();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_0(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE80);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_8_0(v6);
      OUTLINED_FUNCTION_6(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_1();
        sub_1B3FC98C8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_10();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B3F97D64()
{
  OUTLINED_FUNCTION_11();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_0(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE78);
      v6 = OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_8_0(v6);
      OUTLINED_FUNCTION_6(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_1();
        sub_1B3F7EE9C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_10();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B3F97E1C()
{
  OUTLINED_FUNCTION_11();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_0(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE58);
      v6 = OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_8_0(v6);
      OUTLINED_FUNCTION_6(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_1();
        sub_1B3F7EE9C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_10();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B3F97ECC()
{
  OUTLINED_FUNCTION_11();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_0(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE50);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_8_0(v6);
      OUTLINED_FUNCTION_6(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_1();
        sub_1B3FC98E8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_10();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_3();
    goto LABEL_6;
  }

  __break(1u);
}

id static NSError.px_genericError(debugDescription:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B405D444();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B406FF50;
  *(inited + 32) = sub_1B405D444();
  *(inited + 40) = v8;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v9 = sub_1B405D2A4();
  v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  return sub_1B3F980A0(v4, v6, -1, v9);
}

id sub_1B3F980A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B405D414();

  if (a4)
  {
    v8 = sub_1B405D264();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_1B3F98150()
{
  type metadata accessor for PhotosWeakObjectReference();
  sub_1B405D704();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1B405D994();
}

uint64_t PhotosWeakList.remove(_:)()
{
  type metadata accessor for PhotosWeakObjectReference();
  OUTLINED_FUNCTION_0_11();
  sub_1B405D704();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1B405D994();
}

uint64_t sub_1B3F982B4(uint64_t a1, uint64_t a2)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  swift_unknownObjectRelease();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRelease();
    return v4 == a2;
  }

  return result;
}

Swift::Void __swiftcall PhotosWeakList.removeAll()()
{
  type metadata accessor for PhotosWeakObjectReference();
  OUTLINED_FUNCTION_0_11();
  v0 = sub_1B405D704();

  MEMORY[0x1EEE69500](0, v0);
}

BOOL sub_1B3F98358()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t sub_1B3F983B8@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void photosAssertionFailure(logger:_:file:line:)()
{
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  oslog = sub_1B405D0D4();
  v1 = sub_1B405D9B4();

  if (os_log_type_enabled(oslog, v1))
  {
    OUTLINED_FUNCTION_6_0();
    v9 = OUTLINED_FUNCTION_3_4();
    *(v0 + 4) = OUTLINED_FUNCTION_5_2(4.8149e-34, v9);
    OUTLINED_FUNCTION_4_1(&dword_1B3F73000, v2, v3, "%s", v4, v5, v6, v7, oslog);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }
}

uint64_t photosAssertionFailure(log:_:file:line:)(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1B405D0F4();
  OUTLINED_FUNCTION_0_12();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_7();
  v12 = a1;
  sub_1B405D104();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v13 = sub_1B405D0D4();
  v14 = sub_1B405D9B4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_6_0();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1B3F95078(a2, a3, &v18);
    _os_log_impl(&dword_1B3F73000, v13, v14, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  return (*(v9 + 8))(v3, v7);
}

void photosAssert(_:logger:_:file:line:)(char a1)
{
  if ((a1 & 1) == 0)
  {
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    oslog = sub_1B405D0D4();
    v2 = sub_1B405D9B4();

    if (os_log_type_enabled(oslog, v2))
    {
      OUTLINED_FUNCTION_6_0();
      v11 = OUTLINED_FUNCTION_3_4();
      *(v1 + 4) = OUTLINED_FUNCTION_5_2(4.8149e-34, v11);
      OUTLINED_FUNCTION_4_1(&dword_1B3F73000, v3, v4, "%s", v5, v6, v7, v8, oslog);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    else
    {
    }
  }
}

uint64_t photosUnwrapOrError<A>(_:_:_:logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a3;
  v36 = a4;
  v38 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87BE90);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v34 - v14;
  v16 = sub_1B405D0F4();
  OUTLINED_FUNCTION_0_12();
  v37 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_2_7();
  v20 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v34 - v25;
  (*(v22 + 16))(&v34 - v25, a1, v20);
  if (__swift_getEnumTagSinglePayload(v26, 1, a6) != 1)
  {
    return (*(*(a6 - 8) + 32))(a7, v26, a6);
  }

  (*(v22 + 8))(v26, v20);
  sub_1B3F98AC0(a5, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1B405D4B4();
    sub_1B405D0E4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
    v29 = v36;
    v28 = v37;
    if (EnumTagSinglePayload != 1)
    {
      sub_1B3F98B30(v15);
    }
  }

  else
  {
    v28 = v37;
    (*(v37 + 32))(v7, v15, v16);
    v29 = v36;
  }

  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v31 = sub_1B405D0D4();
  v32 = sub_1B405D9B4();

  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_6_0();
    v33 = OUTLINED_FUNCTION_3_4();
    v39 = v33;
    *v20 = 136315138;
    *(v20 + 4) = sub_1B3F95078(v35, v29, &v39);
    _os_log_impl(&dword_1B3F73000, v31, v32, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  (*(v28 + 8))(v7, v16);
  return (*(*(a6 - 8) + 16))(a7, v38, a6);
}

uint64_t sub_1B3F98AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87BE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3F98B30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87BE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int __swiftcall NSUserDefaults.integer(forKey:defaultValue:)(Swift::String forKey, Swift::Int defaultValue)
{
  v4 = sub_1B405D414();
  v5 = [v2 objectForKey_];

  if (v5)
  {
    sub_1B405DAF4();
    swift_unknownObjectRelease();
    sub_1B3F7AC48(&v8, v9);
    sub_1B3F791B4(v9);
    v6 = sub_1B405D414();
    defaultValue = [v2 integerForKey_];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    sub_1B3F791B4(v9);
  }

  return defaultValue;
}

Swift::Float __swiftcall NSUserDefaults.float(forKey:defaultValue:)(Swift::String forKey, Swift::Float defaultValue)
{
  v4 = sub_1B405D414();
  v5 = [v2 objectForKey_];

  if (v5)
  {
    sub_1B405DAF4();
    swift_unknownObjectRelease();
    sub_1B3F7AC48(&v9, v10);
    sub_1B3F791B4(v10);
    v6 = sub_1B405D414();
    [v2 floatForKey_];
    defaultValue = v7;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_1B3F791B4(v10);
  }

  return defaultValue;
}

id PhotosScreenEdgeDismissalSlideTransition.__allocating_init(foregroundViewLateralInset:)(double a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC18PhotosUIFoundation40PhotosScreenEdgeDismissalSlideTransition_foregroundViewLateralInset] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PhotosScreenEdgeDismissalSlideTransition.init(foregroundViewLateralInset:)(double a1)
{
  *&v1[OBJC_IVAR____TtC18PhotosUIFoundation40PhotosScreenEdgeDismissalSlideTransition_foregroundViewLateralInset] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PhotosScreenEdgeDismissalSlideTransition();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1B3F98E40(void *a1)
{
  v2 = v1;
  v4 = [a1 containerView];
  type metadata accessor for PhotosSlideTransition();
  sub_1B3FC480C(a1, v42);
  v38 = v42[1];
  v39 = v42[0];
  v5 = v43;
  v6 = v44;
  v7 = [a1 viewForKey_];
  v8 = [a1 viewForKey_];
  v9 = [a1 viewControllerForKey_];
  if (v7)
  {
    v10 = v9;
    v11 = *(v2 + OBJC_IVAR____TtC18PhotosUIFoundation40PhotosScreenEdgeDismissalSlideTransition_foregroundViewLateralInset) + *(v2 + OBJC_IVAR____TtC18PhotosUIFoundation40PhotosScreenEdgeDismissalSlideTransition_foregroundViewLateralInset);
    v12 = v7;
    [v4 bounds];
    v13 = 1.0 - v11 / CGRectGetWidth(v46);
    [v4 bounds];
    v14 = (1.0 - v13) * CGRectGetHeight(v47) * 0.5;
    v15 = 0;
    CGAffineTransformMakeTranslation(&v45, 0.0, v14);
    v41 = v45;
    CGAffineTransformScale(&v45, &v41, v13, v13);
    v40 = v10;
    if (v8)
    {
      if (v10)
      {
        v16 = v8;
        v17 = v10;
        [a1 finalFrameForViewController_];
        [v16 setFrame_];
        *&v41.a = v39;
        *&v41.c = v38;
        v41.tx = v5;
        v41.ty = v6;
        [v16 setTransform_];
        [v4 insertSubview:v16 belowSubview:v12];
      }

      v18 = v8;
      [v18 _continuousCornerRadius];
      v15 = v19;
      v20 = [v18 clipsToBounds];

      v21 = v18;
      [v21 _setContinuousCornerRadius_];
      [v21 setClipsToBounds_];
    }

    else
    {
      v20 = 2;
    }

    [v12 _continuousCornerRadius];
    v23 = v22;
    v24 = [v12 clipsToBounds];
    [v12 _setContinuousCornerRadius_];
    [v12 setClipsToBounds_];
    v25 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v26 = [objc_opt_self() blackColor];
    [v25 setBackgroundColor_];

    [v4 bounds];
    [v25 setFrame_];
    [v4 insertSubview:v25 belowSubview:v12];
    [v25 setAlpha_];
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = 0;
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    v29 = v25;
    sub_1B3F99588(v29, 0, sub_1B3F99790, v27, sub_1B3F997A4, v28);

    v30 = swift_allocObject();
    *(v30 + 16) = v8;
    *(v30 + 24) = 0x3FF0000000000000;
    *(v30 + 32) = 0;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0x3FF0000000000000;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    *(v30 + 72) = v12;
    v31 = *&v45.c;
    *(v30 + 80) = *&v45.a;
    *(v30 + 96) = v31;
    *(v30 + 112) = *&v45.tx;
    v32 = swift_allocObject();
    *(v32 + 16) = v15;
    *(v32 + 24) = v20;
    *(v32 + 32) = v8;
    *(v32 + 40) = v12;
    *(v32 + 48) = v23;
    *(v32 + 56) = v24;
    *(v32 + 64) = a1;
    sub_1B3F997E4();
    v33 = v12;
    v34 = v8;
    v35 = v33;
    v36 = v34;
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_1_9();
    sub_1B405DA74();
  }

  else
  {
    result = sub_1B405DD74();
    __break(1u);
  }

  return result;
}

id sub_1B3F9939C(void *a1, __int128 *a2, void *a3, __int128 *a4)
{
  v6 = *(a4 + 4);
  v7 = *(a4 + 5);
  v8 = a2[1];
  v11 = *a2;
  v12 = v8;
  v13 = a2[2];
  [a1 setTransform_];
  v9 = a4[1];
  v11 = *a4;
  v12 = v9;
  *&v13 = v6;
  *(&v13 + 1) = v7;
  return [a3 setTransform_];
}

id sub_1B3F9941C(int a1, uint64_t a2, char a3, id a4, id a5, double a6, char a7, void *a8)
{
  if (a3 == 2)
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a4)
  {
    [a4 _setContinuousCornerRadius_];
    [a4 setClipsToBounds_];
LABEL_6:
    v15[0] = 0x3FF0000000000000;
    v15[1] = 0;
    v15[2] = 0;
    v15[3] = 0x3FF0000000000000;
    v15[4] = 0;
    v15[5] = 0;
    [a4 setTransform_];
  }

LABEL_7:
  [a5 _setContinuousCornerRadius_];
  [a5 setClipsToBounds_];
  return [a8 completeTransition_];
}

void sub_1B3F99588(uint64_t a1, char a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a2)
  {
    sub_1B3F997E4();
    OUTLINED_FUNCTION_1_9();
    sub_1B405DA74();
  }

  else
  {
    v13 = a3;
    v14 = a4;
    OUTLINED_FUNCTION_0_13();
    v10 = 1107296256;
    v11 = sub_1B3F934F0;
    v12 = &block_descriptor_0;
    v8 = _Block_copy(&v9);

    if (a5)
    {
      v13 = a5;
      v14 = a6;
      OUTLINED_FUNCTION_0_13();
      v10 = 1107296256;
      v11 = sub_1B3FC4390;
      v12 = &block_descriptor_15;
      a5 = _Block_copy(&v9);
    }

    [objc_opt_self() animateWithDuration:v8 animations:a5 completion:0.4];
    _Block_release(a5);
    _Block_release(v8);
  }
}

id PhotosScreenEdgeDismissalSlideTransition.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosScreenEdgeDismissalSlideTransition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosScreenEdgeDismissalSlideTransition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B3F997E4()
{
  result = qword_1EB87A9C8;
  if (!qword_1EB87A9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB87A9C8);
  }

  return result;
}

uint64_t Observable.waitUntil(condition:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 96) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return OUTLINED_FUNCTION_0_14();
}

uint64_t sub_1B3F998E4()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  sub_1B3F99C40();

  v5 = sub_1B405DA14();
  *(v0 + 72) = v5;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1B3F999F4;
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);

  return Observable.waitUntil(condition:queue:timeout:)(sub_1B3F99C34, v4, v5, v8, v1 & 1, v9, v7);
}

uint64_t sub_1B3F999F4()
{
  OUTLINED_FUNCTION_2_8();
  v2 = *v1;
  OUTLINED_FUNCTION_1_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_10();
  *v5 = v4;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B3F99B30, 0, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1B3F99B30()
{
  OUTLINED_FUNCTION_2_8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B3F99B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B405D784();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a1;
  return sub_1B3FA92C4(sub_1B3F9B48C, v11, "PhotosUIFoundation/Observable+PhotosUIFoundation.swift") & 1;
}

unint64_t sub_1B3F99C40()
{
  result = qword_1EB87A9D8;
  if (!qword_1EB87A9D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB87A9D8);
  }

  return result;
}

uint64_t Observable.waitUntil(condition:queue:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a6;
  *(v8 + 96) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return OUTLINED_FUNCTION_0_14();
}

uint64_t sub_1B3F99CA8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  if (*(v0 + 96))
  {
    v3 = 10.0;
  }

  else
  {
    v3 = *(v0 + 40);
  }

  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 16);
  *(v4 + 16) = *(v0 + 48);
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
  *(v4 + 56) = v1;
  *(v4 + 64) = v3;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1B3F99DD4;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1B3F99DD4()
{
  OUTLINED_FUNCTION_2_8();
  v2 = *v1;
  OUTLINED_FUNCTION_1_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_10();
  *v5 = v4;
  *(v2 + 88) = v0;

  if (v0)
  {
    v6 = sub_1B3F99EFC;
  }

  else
  {

    v6 = sub_1B3F99EE4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B3F99EFC()
{
  OUTLINED_FUNCTION_2_8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B3F99F5C(uint64_t a1, void *a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v51 = a7;
  v48[1] = a4;
  v50 = a3;
  v53 = a2;
  v62 = a1;
  v56 = sub_1B405D1B4();
  v59 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v10);
  v55 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B405D1D4();
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v54 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B405D1F4();
  v16 = *(v15 - 8);
  v63 = v15;
  v64 = v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v52 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v61 = v48 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BEB0);
  v23 = *(v22 - 8);
  v60 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = v48 - v26;
  v28 = *(a6 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25, v30);
  v31 = v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ObservationContext();
  v32 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BEB8);
  v33 = swift_allocObject();
  *(v33 + 28) = 0;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v32 + 16) = v33;
  (*(v28 + 16))(v31, a5, a6);
  v34 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v35 = swift_allocObject();
  v36 = v51;
  *(v35 + 2) = a6;
  *(v35 + 3) = v36;
  *(v35 + 4) = v50;
  *(v35 + 5) = a4;
  (*(v28 + 32))(&v35[v34], v31, a6);
  v50 = *(v23 + 16);
  v50(v27, v62, v22);
  v37 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v32;
  v49 = *(v23 + 32);
  v49(v38 + v37, v27, v22);
  type metadata accessor for ConditionObserver();
  swift_allocObject();

  v51 = v53;
  v53 = sub_1B3F9ABDC(v51, sub_1B3F9B208, v35, sub_1B3F9B26C, v38);
  sub_1B3F9A6F4();
  v39 = v52;
  sub_1B405D1E4();
  sub_1B405D214();
  v40 = *(v64 + 8);
  v64 += 8;
  v40(v39, v63);
  v50(v27, v62, v22);
  v41 = swift_allocObject();
  *(v41 + 16) = v32;
  v49(v41 + v37, v27, v22);
  aBlock[4] = sub_1B3F9B354;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B3F934F0;
  aBlock[3] = &block_descriptor_33;
  v42 = _Block_copy(aBlock);

  v43 = v54;
  sub_1B405D1C4();
  v65 = MEMORY[0x1E69E7CC0];
  sub_1B3F93534();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BB48);
  sub_1B3F9358C();
  v45 = v55;
  v44 = v56;
  sub_1B405DB24();
  v46 = v61;
  MEMORY[0x1B8C6FA50](v61, v43, v45, v42);
  _Block_release(v42);

  (*(v59 + 8))(v45, v44);
  (*(v57 + 8))(v43, v58);
  v40(v46, v63);
}

void sub_1B3F9A6A0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 7);
  sub_1B3F9B3F8(&v1[4]);
  os_unfair_lock_unlock(v1 + 7);
}

void sub_1B3F9A6F4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 7);
  sub_1B3F9B468(&v1[4]);

  os_unfair_lock_unlock(v1 + 7);
}

uint64_t sub_1B3F9A79C()
{
  sub_1B3F9B414();
  swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BEB0);
  return sub_1B405D754();
}

uint64_t ObservationError.hashValue.getter()
{
  sub_1B405E124();
  MEMORY[0x1B8C70190](0);
  return sub_1B405E154();
}

uint64_t sub_1B3F9A8B0()
{
  sub_1B405E124();
  MEMORY[0x1B8C70190](0);
  return sub_1B405E154();
}

unint64_t sub_1B3F9A8F4()
{
  result = qword_1EB87BEA8;
  if (!qword_1EB87BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87BEA8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ObservationError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1B3F9AA04(uint64_t result, uint64_t a2)
{
  if (!*(result + 8))
  {
    v3 = result;

    *v3 = a2;
    *(v3 + 8) = 1;
  }

  return result;
}

uint64_t sub_1B3F9AA60(uint64_t result, void (*a2)(void))
{
  if (*(result + 8) <= 1u)
  {
    v2 = result;
    a2();

    *v2 = 0;
    *(v2 + 8) = 2;
  }

  return result;
}

uint64_t sub_1B3F9AAE4(unsigned __int8 a1)
{
  sub_1B405E124();
  MEMORY[0x1B8C70190](a1);
  return sub_1B405E154();
}

uint64_t sub_1B3F9AB3C()
{
  v1 = *v0;
  sub_1B405E124();
  MEMORY[0x1B8C70190](v1);
  return sub_1B405E154();
}

uint64_t sub_1B3F9AB80()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void *sub_1B3F9ABDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  v6 = a1;

  sub_1B3F9AC48();

  return v5;
}

uint64_t sub_1B3F9AC48()
{
  v1 = sub_1B405D1B4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B405D1D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_1B3F9B1E8;
  v15 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B3F934F0;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);

  sub_1B405D1C4();
  v13[1] = MEMORY[0x1E69E7CC0];
  sub_1B3F93534();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BB48);
  sub_1B3F9358C();
  sub_1B405DB24();
  MEMORY[0x1B8C6FA80](0, v10, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_1B3F9AE9C()
{
  swift_allocObject();
  swift_weakInit();
  sub_1B405D024();
}

uint64_t sub_1B3F9AF34()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if ((*(result + 24))())
    {
      v2 = *(v1 + 40);
      if (v2)
      {
        v3 = *(v1 + 48);

        v2(v4);
        sub_1B3F971F8(v2, v3);
        v5 = *(v1 + 40);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v1 + 48);
      *(v1 + 40) = 0;
      *(v1 + 48) = 0;
      sub_1B3F971F8(v5, v6);
    }
  }

  return result;
}

uint64_t (*sub_1B3F9AFE4())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1B3F9B200;
}

uint64_t sub_1B3F9B040()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B3F9AC48();
  }

  return result;
}

uint64_t sub_1B3F9B098()
{

  sub_1B3F971F8(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t sub_1B3F9B0C8()
{
  v0 = sub_1B3F9B098();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1B3F9B130(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 9))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B3F9B184(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BEB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B3F9B36C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BEB0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

unint64_t sub_1B3F9B414()
{
  result = qword_1EB87BEC0;
  if (!qword_1EB87BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87BEC0);
  }

  return result;
}

uint64_t sub_1B3F9B48C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))(*(v1 + 48));
  *a1 = result & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotosItemListLoadingStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ObservationContext.Context.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B3F9B640()
{
  result = qword_1EB87BEC8;
  if (!qword_1EB87BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87BEC8);
  }

  return result;
}

uint64_t sub_1B3F9B69C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosConcatenatedItemListManager.itemList.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B3F9B70C()
{
  swift_getKeyPath();
  sub_1B3F7F2AC();

  return _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
}

id sub_1B3F9B7B8(uint64_t a1)
{
  v2 = sub_1B405CFD4();
  v3 = [swift_getObjCClassFromMetadata() changeDetailsWithInsertedIndexes_];

  v4 = sub_1B405D004();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

Swift::Bool __swiftcall PhotosConcatenatedItemListManager.waitForItemList(timeout:)(Swift::Double timeout)
{
  v3 = *v1;
  v4 = *v1;
  v5 = mach_absolute_time();
  v6 = (*(*(v3 + 104) + 56))(*(v3 + 80), timeout);
  if (!v1[4])
  {
    goto LABEL_11;
  }

  if ((v6 & 1) == 0)
  {
    v6 = 0;
LABEL_11:
    LOBYTE(v7) = v6 & 1;
    return v7;
  }

  if (*(v1 + 48) != 1)
  {
    v6 = 1;
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  v7 = mach_absolute_time();
  v8 = v7 - v5;
  if (v7 < v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    return v7;
  }

  v9.n128_f64[0] = timeout - PXTimebaseConversionFactor() * v8;
  if (timeout == INFINITY)
  {
    v9.n128_f64[0] = INFINITY;
  }

  v10 = (*(*(v4 + 112) + 56))(*(v4 + 88), v9);
  swift_unknownObjectRelease();
  LOBYTE(v7) = v10 & 1;
  return v7;
}

uint64_t PhotosConcatenatedItemListManager.fetchLimit.getter()
{
  v1 = *(v0 + 24);
  swift_getObjectType();
  result = dynamic_cast_existential_1_conditional(v1);
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    return (*(v4 + 8))(ObjectType, v4);
  }

  return result;
}

uint64_t PhotosConcatenatedItemListManager.fetchLimit.setter(uint64_t a1, char a2)
{
  v5 = *(v2 + 24);
  swift_getObjectType();
  result = dynamic_cast_existential_1_conditional(v5);
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    return (*(v8 + 16))(a1, a2 & 1, ObjectType, v8);
  }

  return result;
}

uint64_t (*PhotosConcatenatedItemListManager.fetchLimit.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = PhotosConcatenatedItemListManager.fetchLimit.getter();
  *(a1 + 8) = v3 & 1;
  return sub_1B3F9BB24;
}

uint64_t PhotosConcatenatedItemListManager.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = qword_1EB87AF38;
  v2 = sub_1B405D064();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosConcatenatedItemListManager.__deallocating_deinit()
{
  PhotosConcatenatedItemListManager.deinit();
  OUTLINED_FUNCTION_4_2();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void (*sub_1B3F9BC6C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = PhotosConcatenatedItemListManager.fetchLimit.modify(v2);
  return sub_1B3F9BCC8;
}

void sub_1B3F9BCC8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B3F9BD6C()
{
  result = qword_1EB87BED8;
  if (!qword_1EB87BED8)
  {
    sub_1B3F8A5BC(255, &qword_1EB87BEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87BED8);
  }

  return result;
}

Swift::Bool __swiftcall PXAssetCollectionActionTypeIsDestructive(_:)(Swift::String a1)
{
  object = a1._object;
  sub_1B405D444();
  OUTLINED_FUNCTION_1_12();
  v4 = v4 && v3 == object;
  if (v4)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_2_10();
  if ((v1 & 1) == 0)
  {
    sub_1B405D444();
    OUTLINED_FUNCTION_1_12();
    if (!v4 || v6 != object)
    {
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_2_10();
      if (v1)
      {
        goto LABEL_6;
      }

      sub_1B405D444();
      OUTLINED_FUNCTION_1_12();
      if (!v4 || v8 != object)
      {
        OUTLINED_FUNCTION_0_16();
        OUTLINED_FUNCTION_2_10();
        if (v1)
        {
          goto LABEL_6;
        }

        sub_1B405D444();
        OUTLINED_FUNCTION_1_12();
        if (!v4 || v10 != object)
        {
          OUTLINED_FUNCTION_0_16();
          OUTLINED_FUNCTION_2_10();
          if (v1)
          {
            goto LABEL_6;
          }

          sub_1B405D444();
          OUTLINED_FUNCTION_1_12();
          if (!v4 || v12 != object)
          {
            OUTLINED_FUNCTION_0_16();
            OUTLINED_FUNCTION_2_10();
            if (v1)
            {
              goto LABEL_6;
            }

            sub_1B405D444();
            OUTLINED_FUNCTION_1_12();
            if (!v4 || v14 != object)
            {
              v5 = OUTLINED_FUNCTION_0_16();
LABEL_33:

              return v5 & 1;
            }
          }
        }
      }
    }

LABEL_32:
    v5 = 1;
    goto LABEL_33;
  }

LABEL_6:
  v5 = 1;
  return v5 & 1;
}

uint64_t sub_1B3F9BF34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B4070400;
  *(v0 + 32) = sub_1B405D444();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1B405D444();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1B405D444();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1B405D444();
  *(v0 + 88) = v4;
  result = sub_1B405D444();
  *(v0 + 96) = result;
  *(v0 + 104) = v6;
  qword_1EB87BF00 = v0;
  return result;
}

uint64_t PXAssetCollectionAllCustomizeActionTypes.getter()
{
  if (qword_1EB87B780 != -1)
  {
    swift_once();
  }

  return _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
}

void __swiftcall PXAssetCollectionActionPerformer.init(actionType:assetCollectionReference:parameters:)(PXAssetCollectionActionPerformer *__return_ptr retstr, Swift::String actionType, PXAssetCollectionReference *assetCollectionReference, Swift::OpaquePointer parameters)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_1B405D414();

  type metadata accessor for PXActionParameterKey(0);
  sub_1B3F9C114();
  v7 = sub_1B405D264();

  [v5 initWithActionType:v6 assetCollectionReference:assetCollectionReference parameters:v7];
}

unint64_t sub_1B3F9C114()
{
  result = qword_1EB87B908;
  if (!qword_1EB87B908)
  {
    type metadata accessor for PXActionParameterKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87B908);
  }

  return result;
}

uint64_t PhotosAnyEquatable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  a4[3] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  (*(v9 + 16))(boxed_opaque_existential_1, a1, a2);
  v16 = *(v9 + 32);
  v16(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  result = (v16)(v18 + v17, &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[4] = sub_1B3F9C718;
  a4[5] = v18;
  return result;
}

uint64_t sub_1B3F9C2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[1] = a4;
  v37 = a1;
  v38 = a2;
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v34[0] = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B405DAC4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v9);
  v12 = v34 - v11;
  v13 = *(v7 - 8);
  v15 = MEMORY[0x1EEE9AC00](v10, v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = v34 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = v34 - v23;
  sub_1B3F87FBC(v37, v39);
  v25 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v24, v25 ^ 1u, 1, a3);
  v37 = v5;
  (*(v5 + 16))(v21, v38, a3);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, a3);
  v36 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v38 = v13;
  v27 = *(v13 + 16);
  v27(v12, v24, v7);
  v27(&v12[v26], v21, v7);
  if (__swift_getEnumTagSinglePayload(v12, 1, a3) != 1)
  {
    v27(v17, v12, v7);
    if (__swift_getEnumTagSinglePayload(&v12[v26], 1, a3) != 1)
    {
      v30 = v37;
      v31 = v34[0];
      (*(v37 + 32))(v34[0], &v12[v26], a3);
      v29 = sub_1B405D404();
      v36 = v17;
      v32 = *(v30 + 8);
      v32(v31, a3);
      v28 = *(v13 + 8);
      v28(v21, v7);
      v32(v36, a3);
      v28(v12, v7);
      goto LABEL_8;
    }

    v28 = *(v13 + 8);
    v28(v21, v7);
    (*(v37 + 8))(v17, a3);
    goto LABEL_6;
  }

  v28 = *(v13 + 8);
  v28(v21, v7);
  if (__swift_getEnumTagSinglePayload(&v12[v26], 1, a3) != 1)
  {
LABEL_6:
    (*(v35 + 8))(v12, v36);
    v29 = 0;
    goto LABEL_8;
  }

  v28(v12, v7);
  v29 = 1;
LABEL_8:
  v28(v24, v7);
  return v29 & 1;
}

uint64_t areEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1B3F9C994(a1, &v22);
  if (v23)
  {
    sub_1B3F90E0C(&v22, v28);
    sub_1B3F9C994(a2, &v22);
    if (v23)
    {
      sub_1B3F90E0C(&v22, v25);
      v5 = v29;
      v6 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      OUTLINED_FUNCTION_0_0();
      MEMORY[0x1EEE9AC00](v7, v8);
      OUTLINED_FUNCTION_1_13();
      v10 = OUTLINED_FUNCTION_3_6(v9);
      v11(v10);
      PhotosAnyEquatable.init<A>(_:)(v2, v5, v6, &v22);
      v12 = v26;
      v13 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      OUTLINED_FUNCTION_0_0();
      MEMORY[0x1EEE9AC00](v14, v15);
      OUTLINED_FUNCTION_1_13();
      v17 = OUTLINED_FUNCTION_3_6(v16);
      v18(v17);
      PhotosAnyEquatable.init<A>(_:)(v2, v12, v13, v21);
      v19 = v24(v21);
      sub_1B3F9CA6C(v21);
      sub_1B3F9CA6C(&v22);
      __swift_destroy_boxed_opaque_existential_1(v25);
      __swift_destroy_boxed_opaque_existential_1(v28);
      return v19 & 1;
    }

    sub_1B3F9CA04(&v22);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_1B3F9CA04(&v22);
  }

  if (*(a1 + 24))
  {
    v19 = 0;
  }

  else
  {
    v19 = *(a2 + 24) == 0;
  }

  return v19 & 1;
}

uint64_t sub_1B3F9C994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3F9CA04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Bool __swiftcall areEqual(_:_:)(Swift::OpaquePointer a1, Swift::OpaquePointer a2)
{
  v3 = *(a1._rawValue + 2);
  if (v3 == *(a2._rawValue + 2))
  {
    v4 = a1._rawValue + 32;
    for (i = a2._rawValue + 32; ; i += 40)
    {
      v6 = v3 == 0;
      if (!v3)
      {
        return v6;
      }

      sub_1B3F90F0C(v4, v35);
      sub_1B3F90F0C(i, v33);
      sub_1B3F9C994(v35, &v24);
      if (v25)
      {
        sub_1B3F90E0C(&v24, v30);
        sub_1B3F9C994(v33, &v24);
        if (v25)
        {
          sub_1B3F90E0C(&v24, v27);
          v7 = v31;
          v8 = v32;
          __swift_project_boxed_opaque_existential_1(v30, v31);
          OUTLINED_FUNCTION_0_0();
          MEMORY[0x1EEE9AC00](v9, v10);
          OUTLINED_FUNCTION_1_13();
          v12 = OUTLINED_FUNCTION_2_11(v11);
          v13(v12);
          PhotosAnyEquatable.init<A>(_:)(v2, v7, v8, &v24);
          v14 = v28;
          v15 = v29;
          __swift_project_boxed_opaque_existential_1(v27, v28);
          OUTLINED_FUNCTION_0_0();
          MEMORY[0x1EEE9AC00](v16, v17);
          OUTLINED_FUNCTION_1_13();
          v19 = OUTLINED_FUNCTION_2_11(v18);
          v20(v19);
          PhotosAnyEquatable.init<A>(_:)(v2, v14, v15, v23);
          LOBYTE(v14) = v26(v23);
          sub_1B3F9CA6C(v23);
          sub_1B3F9CA6C(&v24);
          __swift_destroy_boxed_opaque_existential_1(v27);
          __swift_destroy_boxed_opaque_existential_1(v30);
          sub_1B3F9CA04(v33);
          sub_1B3F9CA04(v35);
          if ((v14 & 1) == 0)
          {
            return v6;
          }

          goto LABEL_11;
        }

        sub_1B3F9CA04(&v24);
        __swift_destroy_boxed_opaque_existential_1(v30);
      }

      else
      {
        sub_1B3F9CA04(&v24);
      }

      v21 = v36 | v34;
      sub_1B3F9CA04(v33);
      sub_1B3F9CA04(v35);
      if (v21)
      {
        return v6;
      }

LABEL_11:
      v4 += 40;
      --v3;
    }
  }

  return 0;
}

uint64_t sub_1B3F9CD28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B3F9CD68(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

double PhotosEnvironmentValues.collectionTitleModel.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1B3FB7100();
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    sub_1B3F9D2F8(v3 + 16, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t PhotosEnvironmentValues.collectionTitleModel.setter(uint64_t a1)
{
  if (sub_1B3FB7100())
  {
  }

  else
  {
    if (qword_1EB87B788 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v2 = sub_1B405D0F4();
    __swift_project_value_buffer(v2, qword_1EB87BF10);
    v3 = sub_1B405D0D4();
    v4 = sub_1B405D9B4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1B3F95078(0xD000000000000011, 0x80000001B4075FB0, v10);
      OUTLINED_FUNCTION_1_14(&dword_1B3F73000, v7, v8, "%s");
      __swift_destroy_boxed_opaque_existential_1(v6);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }
  }

  if (sub_1B3FB7100())
  {
    sub_1B3F9D2F8(a1, v10);
    sub_1B3F9D888(v10);

    return sub_1B3F9D9E0(a1);
  }

  else
  {

    return sub_1B3F9D9E0(a1);
  }
}

void (*PhotosEnvironmentValues.collectionTitleModel.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x70uLL);
  *a1 = v3;
  v3[13] = v1;
  v4 = sub_1B3FB7100();
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    sub_1B3F9D2F8(v5 + 16, v3);
  }

  else
  {
    v3[4] = 0;
    *v3 = 0u;
    *(v3 + 1) = 0u;
  }

  return sub_1B3F9D0E4;
}

void sub_1B3F9D0E4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1B3F9D2F8(*a1, v2 + 40);
    PhotosEnvironmentValues.collectionTitleModel.setter(v2 + 40);
    sub_1B3F9D9E0(v2);
  }

  else
  {
    PhotosEnvironmentValues.collectionTitleModel.setter(*a1);
  }

  free(v2);
}

uint64_t sub_1B3F9D14C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosEnvironmentValues.collectionTitleModelReference.getter();
  *a1 = result;
  return result;
}

uint64_t PhotosEnvironmentValues.collectionTitleModelReference.setter(uint64_t a1)
{
  if (sub_1B3FB7100())
  {

    if (qword_1EB87B788 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v2 = sub_1B405D0F4();
    __swift_project_value_buffer(v2, qword_1EB87BF10);
    v3 = sub_1B405D0D4();
    v4 = sub_1B405D9B4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1B3F95078(0xD00000000000001DLL, 0x80000001B4075FD0, &v10);
      OUTLINED_FUNCTION_1_14(&dword_1B3F73000, v7, v8, "%s");
      __swift_destroy_boxed_opaque_existential_1(v6);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }
  }

  return sub_1B3F9D368(a1);
}

uint64_t sub_1B3F9D2F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3F9D368(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF68);
  v2 = sub_1B405D464();
  v4 = v3;
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87BF70);
  v6[0] = a1;
  return sub_1B3FA3E84(v6, v2, v4);
}

uint64_t sub_1B3F9D3F8(char a1)
{
  v6[0] = &type metadata for PreferredChromeStyleKey;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF58);
  v2 = OUTLINED_FUNCTION_3_7();
  v4 = v3;
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF60);
  LOBYTE(v6[0]) = a1;
  return sub_1B3FA3E84(v6, v2, v4);
}

uint64_t sub_1B3F9D480(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF48);
  v4 = OUTLINED_FUNCTION_3_7();
  v6 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF50);
  v8 = a1;
  v9 = a2 & 1;
  return sub_1B3FA3E84(&v8, v4, v6);
}

uint64_t _s18PhotosUIFoundation0A17EnvironmentValuesV22topChromeAvoidanceAxisSo6PXAxisVvs_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF40);
  v2 = OUTLINED_FUNCTION_3_7();
  v4 = v3;
  type metadata accessor for PXAxis(0);
  v7[3] = v5;
  v7[0] = a1;
  return sub_1B3FA3E84(v7, v2, v4);
}

uint64_t sub_1B3F9D5D0(char a1, uint64_t a2, uint64_t *a3)
{
  v7[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v4 = OUTLINED_FUNCTION_3_7();
  v7[3] = MEMORY[0x1E69E6370];
  LOBYTE(v7[0]) = a1;
  return sub_1B3FA3E84(v7, v4, v5);
}

uint64_t (*PhotosEnvironmentValues.collectionTitleModelReference.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B3FB7100();
  return sub_1B3F9D680;
}

uint64_t sub_1B3F9D680(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return PhotosEnvironmentValues.collectionTitleModelReference.setter(*a1);
  }

  PhotosEnvironmentValues.collectionTitleModelReference.setter(v2);
}

double PhotosCollectionTitleModelReference.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

double PhotosCollectionTitleModelReference.init()()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

void sub_1B3F9D71C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    if (qword_1EB87B788 != -1)
    {
      swift_once();
    }

    v1 = sub_1B405D0F4();
    __swift_project_value_buffer(v1, qword_1EB87BF10);
    oslog = sub_1B405D0D4();
    v2 = sub_1B405D9B4();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v6 = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_1B3F95078(0xD00000000000001FLL, 0x80000001B4076050, &v6);
      _os_log_impl(&dword_1B3F73000, oslog, v2, "%s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v4);
      MEMORY[0x1B8C71C00](v4, -1, -1);
      MEMORY[0x1B8C71C00](v3, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1B3F9D888(uint64_t a1)
{
  swift_beginAccess();
  sub_1B3F9D2F8(v1 + 16, v4);
  swift_beginAccess();
  sub_1B3F9DA98(a1, v1 + 16);
  swift_endAccess();
  sub_1B3F9D71C(v4);
  sub_1B3F9D9E0(a1);
  return sub_1B3F9D9E0(v4);
}

uint64_t PhotosCollectionTitleModelReference.__deallocating_deinit()
{
  sub_1B3F9D9E0(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B3F9D968()
{
  v0 = sub_1B405D0F4();
  __swift_allocate_value_buffer(v0, qword_1EB87BF10);
  __swift_project_value_buffer(v0, qword_1EB87BF10);
  sub_1B405D4B4();
  return sub_1B405D0E4();
}

uint64_t sub_1B3F9D9E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B3F9DA98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF28);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t PhotosConcatenatedItemList.mainItemList.getter()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15();
  return (*(v0 + 16))();
}

uint64_t PhotosConcatenatedItemList.prependItemList.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_27();
  v4 = *(v3 + 136);
  sub_1B405DAC4();
  OUTLINED_FUNCTION_8();
  v7 = *(v6 + 16);

  return v7(a1, v1 + v4, v5);
}

uint64_t PhotosConcatenatedItemList.appendItemList.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_27();
  v4 = *(v3 + 144);
  sub_1B405DAC4();
  OUTLINED_FUNCTION_8();
  v7 = *(v6 + 16);

  return v7(a1, v1 + v4, v5);
}

void PhotosConcatenatedItemList.placeholderObject.getter()
{
  OUTLINED_FUNCTION_14_0();
  v26 = v1;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 80);
  OUTLINED_FUNCTION_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v24 = v4;
  v25 = v5;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_7_1();
  v23 = v8;
  (*(v2 + 104))(v3, v2);
  OUTLINED_FUNCTION_31();
  v10 = *(v9 + 88);
  OUTLINED_FUNCTION_31();
  *&v12 = *(v11 + 96);
  *(&v12 + 1) = v2;
  *&v13 = v3;
  *(&v13 + 1) = v10;
  v27[1] = v13;
  v27[2] = v12;
  OUTLINED_FUNCTION_31();
  v28 = *(v14 + 112);
  OUTLINED_FUNCTION_31();
  v29 = *(v15 + 120);
  OUTLINED_FUNCTION_16();
  v16 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v17 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_16();
  v19 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_16();
  v30 = AssociatedTypeWitness;
  v31 = v16;
  v32 = v17;
  v33 = AssociatedConformanceWitness;
  v34 = v19;
  v35 = swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for PhotosConcatenatedItem();
  sub_1B3F9E0F8(sub_1B3FA02D0, v27, MEMORY[0x1E69E73E0], v20, v21, v26);
  (*(v25 + 8))(v23, v24);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_1B3F9DF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for PhotosConcatenatedItem();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v5);
}

uint64_t sub_1B3F9E0F8@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v28 = a5;
  v29 = a2;
  v30 = a1;
  v27 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v10, v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v24);
  if (__swift_getEnumTagSinglePayload(v22, 1, v14) == 1)
  {
    return __swift_storeEnumTagSinglePayload(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v19, v22, v14);
  v30(v19, v12);
  result = (*(v15 + 8))(v19, v14);
  if (v6)
  {
    return (*(v27 + 32))(v28, v12, a3);
  }

  return result;
}

void PhotosConcatenatedItemList.item(at:)()
{
  OUTLINED_FUNCTION_14_0();
  v2 = v0;
  v57 = v3;
  v4 = *v0;
  v5 = *(*v0 + 96);
  v55 = *(*v0 + 120);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_7_1();
  v54 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v52 = v8;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_7_1();
  v51 = v11;
  v59 = v5;
  v53 = *(v5 - 8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_7_1();
  v50 = v14;
  v56 = v4[13];
  v58 = v4[10];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_7_1();
  v17 = v4[14];
  v18 = v4[11];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v19, v20);
  v21 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v23 = v22;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_0_0();
  v27 = v26;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_17();
  (*(v23 + 16))(v1, v0 + v4[17], v21);
  OUTLINED_FUNCTION_24(v1, 1, v18);
  if (v30)
  {
    (*(v23 + 8))(v1, v21);
    v32 = v58;
    v31 = v59;
    v33 = v57;
  }

  else
  {
    (*(v27 + 32))(v0, v1, v18);
    v34 = (v17 + 32);
    v35 = *(v17 + 32);
    if (v35(v18, v17) > v57)
    {
      (*(v17 + 56))(v57, v18, v17);
      (*(v27 + 8))(v0, v18);
      v36 = OUTLINED_FUNCTION_26();
      v37(v36);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_18();
      v38 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_12_0(v38);
LABEL_12:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_13();
      return;
    }

    v39 = v35(v18, v17);
    v41 = *(v27 + 8);
    v40 = v27 + 8;
    v41(v0, v18);
    v33 = v57 - v39;
    v32 = v58;
    v31 = v59;
    if (__OFSUB__(v57, v39))
    {
      goto LABEL_14;
    }
  }

  v39 = *(*v0 + 128);
  v40 = v56 + 32;
  v34 = *(v56 + 32);
  if (v33 < v34(v32, v56))
  {
    (*(v56 + 56))(v33, v32, v56);
    v42 = OUTLINED_FUNCTION_26();
    v43(v42);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();
    v44 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_12_0(v44);
    goto LABEL_12;
  }

  v45 = v34(v32, v56);
  v46 = v33 - v45;
  if (__OFSUB__(v33, v45))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v40 = v52;
  v34 = v51;
  v39 = v54;
  (*(v52 + 16))(v51, v2 + *(*v2 + 144), v54);
  OUTLINED_FUNCTION_24(v51, 1, v31);
  if (!v30)
  {
    (*(v53 + 32))(v50, v51, v31);
    (*(v55 + 56))(v46, v31, v55);
    (*(v53 + 8))(v50, v31);
    v47 = OUTLINED_FUNCTION_26();
    v48(v47);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();
    v49 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_12_0(v49);
    goto LABEL_12;
  }

LABEL_15:
  (*(v40 + 8))(v34, v39);
  sub_1B405DD74();
  __break(1u);
}

void PhotosConcatenatedItemList.index(for:)()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  v4 = *v0;
  v35 = *(*v0 + 96);
  v5 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v34 = v6;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_25();
  v9 = v4[11];
  v10 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v12 = v11;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v34 - v15;
  OUTLINED_FUNCTION_32();
  v17(v16);
  OUTLINED_FUNCTION_24(v16, 1, v9);
  if (v18)
  {
    (*(v12 + 8))(v16, v10);
    v19 = 0;
    v21 = 1;
  }

  else
  {
    v19 = (*(v4[14] + 72))(v3, v9);
    v21 = v20;
    OUTLINED_FUNCTION_15();
    (*(v22 + 8))(v16, v9);
  }

  sub_1B3F9EF0C(v19, v21 & 1, 0);
  if (v23)
  {
    OUTLINED_FUNCTION_10_0();
    v24 = (*(v4[13] + 72))(v3, v4[10]);
    sub_1B3F9EF0C(v24, v25 & 1, 1);
    if (v26)
    {
      OUTLINED_FUNCTION_10_0();
      v27 = v34;
      OUTLINED_FUNCTION_32();
      v28(v1);
      v29 = v35;
      OUTLINED_FUNCTION_24(v1, 1, v35);
      if (v18)
      {
        (*(v27 + 8))(v1, v5);
        v30 = 0;
        v32 = 1;
      }

      else
      {
        v30 = (*(v4[15] + 72))(v3, v29);
        v32 = v31;
        OUTLINED_FUNCTION_15();
        (*(v33 + 8))(v1, v29);
      }

      sub_1B3F9EF0C(v30, v32 & 1, 2);
    }
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_1B3F9EF0C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(*v3 + 88);
  v10 = sub_1B405DAC4();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v24 - v17;
  if ((a2 & 1) != 0 || !a3)
  {
    return a1;
  }

  if (a3 == 1)
  {
    (*(v11 + 16))(&v24 - v17, v4 + v8[17], v10);
    if (__swift_getEnumTagSinglePayload(v18, 1, v9) == 1)
    {
      (*(v11 + 8))(v18, v10);
      v19 = 0;
    }

    else
    {
      v19 = (*(v8[14] + 32))(v9);
      (*(*(v9 - 8) + 8))(v18, v9);
    }

    v22 = __OFADD__(a1, v19);
    a1 += v19;
    if (!v22)
    {
      return a1;
    }

    __break(1u);
  }

  else
  {
    (*(v11 + 16))(v15, v4 + v8[17], v10);
    if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
    {
      result = (*(v11 + 8))(v15, v10);
      v21 = 0;
      goto LABEL_13;
    }
  }

  v21 = (*(v8[14] + 32))(v9);
  result = (*(*(v9 - 8) + 8))(v15, v9);
LABEL_13:
  v22 = __OFADD__(a1, v21);
  v23 = a1 + v21;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    result = (*(v8[13] + 32))(v8[10]);
    v22 = __OFADD__(v23, result);
    a1 = v23 + result;
    if (!v22)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

void PhotosConcatenatedItemList.index(nearest:)()
{
  OUTLINED_FUNCTION_14_0();
  v69 = v1;
  v2 = *v0;
  v3 = *(*v0 + 96);
  sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v66 = v5;
  v67 = v4;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_7_1();
  v68 = v8;
  OUTLINED_FUNCTION_11_0();
  v70 = *(v9 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  v65 = v11;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_7_1();
  v64 = v14;
  OUTLINED_FUNCTION_11_0();
  v16 = *(v15 + 104);
  v17 = *(v2 + 80);
  v18 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  v61 = v19;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_7_1();
  v58 = v22;
  OUTLINED_FUNCTION_11_0();
  v24 = *(v23 + 88);
  v60 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v59 = v25;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_7_1();
  v63 = v28;
  v29 = *(v2 + 112);
  OUTLINED_FUNCTION_23();
  v30 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  v57 = v31;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_7_1();
  v56 = v34;
  v62 = v17;
  v55 = v29;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v35 = type metadata accessor for PhotosConcatenatedItem();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_17();
  (*(v38 + 16))(&associated conformance descriptor for PhotosItemList.PhotosItemList.Item: PhotosItem, v69, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v57 + 32))(v56, &associated conformance descriptor for PhotosItemList.PhotosItemList.Item: PhotosItem, v30);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_32();
      v40 = v63;
      v41(v63);
      v42 = v24;
      OUTLINED_FUNCTION_24(v63, 1, v24);
      if (!v43)
      {
        v49 = (*(v55 + 96))(v56, v24);
        v51 = v50;
        (*(v57 + 8))(v56, v30);
LABEL_11:
        OUTLINED_FUNCTION_15();
        (*(v53 + 8))(v40, v42);
        goto LABEL_12;
      }

      (*(v57 + 8))(v56, v30);
      (*(v59 + 8))(v63, v60);
    }

    else
    {
      v47 = AssociatedTypeWitness;
      (*(v65 + 32))(v64, &associated conformance descriptor for PhotosItemList.PhotosItemList.Item: PhotosItem, AssociatedTypeWitness);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_32();
      v40 = v68;
      v48(v68);
      v42 = v3;
      OUTLINED_FUNCTION_24(v68, 1, v3);
      if (!v43)
      {
        v49 = (*(v70 + 96))(v64, v3);
        v51 = v52;
        (*(v65 + 8))(v64, v47);
        goto LABEL_11;
      }

      (*(v65 + 8))(v64, AssociatedTypeWitness);
      (*(v66 + 8))(v68, v67);
    }

    v49 = 0;
    v51 = 1;
  }

  else
  {
    v44 = OUTLINED_FUNCTION_34();
    v45(v44);
    OUTLINED_FUNCTION_10_0();
    v49 = (*(v16 + 96))(v58, v62);
    v51 = v46;
    (*(v61 + 8))(v58, v18);
  }

LABEL_12:
  v54 = sub_1B3F9F8D4(v35);
  sub_1B3F9EF0C(v49, v51 & 1, v54);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_1B3F9F8D4(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v6 = 0x20001u >> (8 * swift_getEnumCaseMultiPayload());
  (*(v3 + 8))(v5, a1);
  return v6;
}

void PhotosConcatenatedItem.id.getter()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_33();
  v5 = *(v4 + 32);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_25();
  v9 = *(v8 + 16);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_0_12();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_1_13();
  v15 = OUTLINED_FUNCTION_5_4(v14);
  v16(v15);
  OUTLINED_FUNCTION_34();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = OUTLINED_FUNCTION_9_0();
      v19(v18);
      OUTLINED_FUNCTION_21_0();
      v20(v1);
      v21 = OUTLINED_FUNCTION_30();
    }

    else
    {
      v28 = OUTLINED_FUNCTION_6_2();
      v29(v28);
      OUTLINED_FUNCTION_21_0();
      v30(v5);
      v21 = OUTLINED_FUNCTION_20();
    }

    v22(v21);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_4_3();
    v24(v23);
    OUTLINED_FUNCTION_21_0();
    v25(v9);
    v26 = OUTLINED_FUNCTION_19();
    v27(v26);
  }

  OUTLINED_FUNCTION_13();
}

void PhotosConcatenatedItem.value.getter()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v2 = v0[3];
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_25();
  v8 = *(v7 + 16);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_0_12();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_1_13();
  v14 = OUTLINED_FUNCTION_5_4(v13);
  v15(v14);
  OUTLINED_FUNCTION_34();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = OUTLINED_FUNCTION_9_0();
      v18(v17);
      v19 = v1[6];
      v20 = *(v19 + 72);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_28(AssociatedTypeWitness);
      v20(v2, v19);
      v22 = OUTLINED_FUNCTION_30();
    }

    else
    {
      v31 = OUTLINED_FUNCTION_6_2();
      v32(v31);
      v33 = *(v1[7] + 72);
      OUTLINED_FUNCTION_23();
      v34 = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_28(v34);
      v35 = OUTLINED_FUNCTION_26();
      v33(v35);
      v22 = OUTLINED_FUNCTION_20();
    }

    v23(v22);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_4_3();
    v25(v24);
    v26 = v1[5];
    v27 = *(v26 + 72);
    OUTLINED_FUNCTION_23();
    v28 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_28(v28);
    v27(v8, v26);
    v29 = OUTLINED_FUNCTION_19();
    v30(v29);
  }

  OUTLINED_FUNCTION_13();
}

void PhotosConcatenatedItem<>.value.getter()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_33();
  v5 = *(v4 + 32);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_25();
  v9 = *(v8 + 16);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_0_12();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_1_13();
  v15 = OUTLINED_FUNCTION_5_4(v14);
  v16(v15);
  OUTLINED_FUNCTION_34();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = OUTLINED_FUNCTION_9_0();
      v19(v18);
      OUTLINED_FUNCTION_22();
      v20(v1);
      v21 = OUTLINED_FUNCTION_30();
    }

    else
    {
      v28 = OUTLINED_FUNCTION_6_2();
      v29(v28);
      OUTLINED_FUNCTION_22();
      v30(v5);
      v21 = OUTLINED_FUNCTION_20();
    }

    v22(v21);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_4_3();
    v24(v23);
    OUTLINED_FUNCTION_22();
    v25(v9);
    v26 = OUTLINED_FUNCTION_19();
    v27(v26);
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_1B3FA034C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B3FA0388(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B3FA03F8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B3FA048C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(*(a3[4] - 8) + 64);
  if (v5 <= v3)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_24;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_24:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1B3FA05E0(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v5 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_27;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t OUTLINED_FUNCTION_18()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t *OUTLINED_FUNCTION_28(uint64_t a1)
{
  v3 = *(v1 - 88);
  v3[3] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v3);
}

_BYTE *storeEnumTagSinglePayload for PhotosUniqueVersion(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t PhotosChildProvidingItemListManager.__allocating_init(parentItemListManager:options:childProvider:childUpdater:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_5_5();
  PhotosChildProvidingItemListManager.init(parentItemListManager:options:childProvider:childUpdater:)(v9, v10, v11, v12, a5, a6);
  return v8;
}

void *PhotosChildProvidingItemListManager.init(parentItemListManager:options:childProvider:childUpdater:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = *v6;
  v25 = *a2;
  v7[9] = 0;
  v7[10] = 0;
  v10 = *(v9 + 96);
  v31 = *(v9 + 80);
  v30 = *(v9 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_8();
  swift_getTupleTypeMetadata2();
  sub_1B405D644();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_3_8();
  v7[11] = sub_1B405D2A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB87BE70);
  OUTLINED_FUNCTION_3_8();
  swift_getTupleTypeMetadata2();
  sub_1B405D644();
  OUTLINED_FUNCTION_3_8();
  v7[12] = sub_1B405D2A4();
  *(v7 + 104) = 0;
  *(v7 + 16) = v25;
  v13 = *(v9 + 104);
  v34 = *(&v31 + 1);
  v32 = v31;
  v33 = AssociatedTypeWitness;
  v35 = v10;
  v36 = v13;
  v37 = AssociatedConformanceWitness;
  v38 = v13;
  type metadata accessor for PhotosChildProvidingItemListManager.ChildItem();
  OUTLINED_FUNCTION_1_15();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_4();
  type metadata accessor for PhotosBasicItemListManager();
  OUTLINED_FUNCTION_4_4();
  type metadata accessor for PhotosBasicItemList();
  LOBYTE(v32) = 0;
  OUTLINED_FUNCTION_4_4();
  v14 = sub_1B405D644();
  v15 = PhotosBasicItemList.__allocating_init(items:loadingStatus:)(v14, &v32);
  v7[3] = PhotosBasicItemListManager.__allocating_init(itemList:)(v15);
  v7[4] = a1;
  v7[5] = a3;
  v7[6] = a4;
  v7[7] = a5;
  v7[8] = a6;
  *&v32 = a1;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *&v18 = v10;
  *(&v18 + 1) = v13;
  *(v17 + 32) = v18;
  *(v17 + 16) = v31;
  *(v17 + 48) = v16;
  v19 = *(v10 + 16);
  v20 = *(v19 + 24);
  swift_unknownObjectRetain();

  v21 = v20(sub_1B3FA30D8, v17, v30, v19);
  v23 = v22;

  v7[9] = v21;
  v7[10] = v23;
  swift_unknownObjectRelease();
  sub_1B3FA0E68();
  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_1B3FA0DAC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t sub_1B3FA0E68()
{
  v1 = *v0;
  v74 = *(*v0 + 96);
  v72 = v1[10];
  OUTLINED_FUNCTION_5_5();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_5();
  v3 = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  v61 = v5;
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v59 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v10);
  v58 = &v49[-v11];
  v12 = v0;
  v13 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0_12();
  v60 = v14;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v15, v16);
  v51 = &v49[-v17];
  v18 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0_12();
  v52 = v19;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v49[-v22];
  sub_1B3FA0E04();
  v85 = (*(AssociatedConformanceWitness + 48))(v18, AssociatedConformanceWitness);
  OUTLINED_FUNCTION_9_1();
  sub_1B405D704();
  v69 = v3;
  v57 = v13;
  v24 = AssociatedTypeWitness;
  v25 = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v26 = sub_1B405D844();
  sub_1B3FA0D74();
  v27 = v1[11];
  *&v28 = v72;
  *(&v28 + 1) = v27;
  *&v29 = v74;
  v56 = v1[13];
  *(&v29 + 1) = v56;
  v80 = v28;
  v81 = v29;
  v82 = v26;
  v54 = v29;
  v75 = v28;
  v76 = v29;
  v55 = v28;
  v77 = sub_1B3FA38C8;
  v78 = &v79;
  v74 = v24;
  v73 = v25;
  v30 = sub_1B405D2F4();

  sub_1B3FA0DAC(v30);
  v31 = *(v12 + 104);
  *(v12 + 104) = 1;
  v32 = *(AssociatedConformanceWitness + 32);
  v71 = v23;
  v72 = v18;
  v68 = AssociatedConformanceWitness;
  result = v32(v18, AssociatedConformanceWitness);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v50 = v31;
    v67 = v27;
    v70 = v12;
    v34 = v57;
    v35 = v58;
    v36 = v51;
    if (result)
    {
      v37 = 0;
      v64 = *(v68 + 56);
      v65 = v68 + 56;
      v62 = *(v69 + 64);
      v63 = v69 + 64;
      v53 = (v61 + 2);
      ++v61;
      ++v60;
      v66 = result;
      do
      {
        v64(v37, v72, v68);
        v62(v34, v69);
        v38 = v70;
        sub_1B3FA0D74();
        v39 = v67;
        sub_1B405D334();

        if (v85)
        {
          (*(v38 + 56))(v36, v85);
        }

        else
        {
          v40 = (*(v38 + 40))(v36);
          v58 = *v53;
          (v58)(v59, v35, v74);
          v83 = v40;
          swift_beginAccess();
          sub_1B405D324();
          v41 = v40;
          swift_unknownObjectRetain();
          v42 = v59;
          sub_1B405D344();
          swift_endAccess();
          (v58)(v42, v35, v74);
          v85 = v40;
          v43 = swift_allocObject();
          swift_weakInit();
          v44 = swift_allocObject();
          v45 = v54;
          *(v44 + 16) = v55;
          *(v44 + 32) = v45;
          *(v44 + 48) = v43;
          v46 = (*(*(v56 + 16) + 24))(sub_1B3FA3910, v44, v39);
          v48 = v47;

          v83 = v46;
          v84 = v48;
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB87BE70);
          sub_1B405D324();
          v34 = v57;
          sub_1B405D344();
          swift_endAccess();
          (*(v38 + 56))(v36, v41);
        }

        swift_unknownObjectRelease();
        ++v37;
        (*v61)(v35, v74);
        (*v60)(v36, v34);
      }

      while (v66 != v37);
    }

    *(v70 + 104) = v50;
    sub_1B3FA18A4();
    return (*(v52 + 8))(v71, v72);
  }

  return result;
}

uint64_t sub_1B3FA1704()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_1B405D814();
}

uint64_t sub_1B3FA1834(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v8)
    {
      a7();
    }
  }

  return result;
}

uint64_t sub_1B3FA18A4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 96);
  v4 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_3();
  result = MEMORY[0x1EEE9AC00](v6, v7);
  v11 = v34 - v10;
  if ((v1[13] & 1) == 0)
  {
    v36 = v2;
    v37 = v9;
    (*(v3 + 40))(v4, v3);
    v35 = v4;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v14 = *(AssociatedConformanceWitness + 112);
    v39 = v11;
    v15 = v14(&v41, AssociatedTypeWitness, AssociatedConformanceWitness);
    if (*(v1 + 16) == 1)
    {
      v40[0] = v13;
      MEMORY[0x1EEE9AC00](v15, v16);
      v34[-2] = v1;
      v34[-1] = &v41;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      sub_1B405D704();
      swift_getWitnessTable();
      v13 = sub_1B405DC64();
    }

    v38 = v1[3];
    sub_1B3F7C9A0();
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

    v17 = swift_getAssociatedTypeWitness();
    v18 = swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_3_8();
    swift_getAssociatedConformanceWitness();
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    v19 = sub_1B405D714();

    if ((v19 & 1) != 0 && (v22 = *(sub_1B3F7C9A0() + 40), v20 = , v22 == v41))
    {
    }

    else
    {
      v34[1] = v34;
      v40[9] = v13;
      MEMORY[0x1EEE9AC00](v20, v21);
      v23 = v39;
      v34[-4] = v1;
      v34[-3] = v23;
      v34[-2] = &v41;
      OUTLINED_FUNCTION_9_1();
      v24 = sub_1B405D704();
      v25 = *(v36 + 88);
      v26 = *(v36 + 104);
      v40[0] = v35;
      v40[1] = v25;
      v40[2] = v17;
      v40[3] = v25;
      v40[4] = v3;
      v40[5] = v26;
      v40[6] = v18;
      v40[7] = v26;
      v27 = type metadata accessor for PhotosChildProvidingItemListManager.ChildItem();
      WitnessTable = swift_getWitnessTable();
      v30 = sub_1B3F7BDC8(sub_1B3FA387C, &v34[-6], v24, v27, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v29);

      OUTLINED_FUNCTION_1_15();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_9_1();
      type metadata accessor for PhotosBasicItemList();
      LOBYTE(v40[0]) = v41;
      v31 = PhotosBasicItemList.__allocating_init(items:loadingStatus:)(v30, v40);
      v40[0] = v38;
      OUTLINED_FUNCTION_9_1();
      v32 = type metadata accessor for PhotosBasicItemListManager();

      v33 = swift_getWitnessTable();
      PhotosMutableComposedObservable<>.performChanges(using:)(sub_1B3FA38A0, v31, v32, v33);
    }

    return (*(v37 + 8))(v39, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1B3FA1E28(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v25 = a1;
  v23 = a3;
  v3 = *(*a2 + 104);
  v4 = *(*a2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v5);
  v22 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - v9;
  sub_1B3FA0D74();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = v4;
  result = sub_1B405D334();
  if (*&v26[9])
  {

    v13 = *(v3 + 40);
    v20 = v10;
    v13(v11, v3);
    v14 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 112))(v26, v14, AssociatedConformanceWitness);
    v16 = v26[0];
    v17 = v22;
    if (*v23 < v26[0])
    {
      v16 = *v23;
    }

    *v23 = v16;
    v13(v11, v3);
    v18 = (*(AssociatedConformanceWitness + 40))(v14, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    v19 = *(v24 + 8);
    v19(v17, v14);
    v19(v20, v14);
    return (v18 & 1) == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B3FA21A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a3;
  v40 = a4;
  v41 = a5;
  v44 = a1;
  v5 = *a2;
  v6 = *(*a2 + 104);
  v46 = v5[11];
  v42 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v35 = v33 - v8;
  v9 = v5[12];
  v10 = v5[10];
  swift_getAssociatedTypeWitness();
  v38 = v9;
  v36 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_1B405DAC4();
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = v33 - v16;
  v18 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15, v19);
  v34 = v33 - v20;
  sub_1B3FA0D74();
  v21 = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedTypeWitness();
  v33[1] = v21;
  swift_getAssociatedConformanceWitness();
  v23 = v44;
  result = sub_1B405D334();
  v25 = v45[0];
  if (!v45[0])
  {
    __break(1u);
    goto LABEL_7;
  }

  v45[3] = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v23, v22);
  v27 = swift_checkMetadataState();
  PhotosItemList.item(for:)(v45, v27, AssociatedConformanceWitness);
  __swift_destroy_boxed_opaque_existential_1(v45);
  result = __swift_getEnumTagSinglePayload(v17, 1, v12);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v28 = v34;
  (*(v18 + 32))(v34, v17, v12);
  v29 = v35;
  (*(v42 + 40))(v46, v42);
  v30 = AssociatedTypeWitness;
  v31 = swift_getAssociatedConformanceWitness();
  (*(v31 + 112))(v45, v30, v31);
  (*(v37 + 8))(v29, v30);
  v32 = v45[0];
  if (*v40 < LOBYTE(v45[0]))
  {
    v32 = *v40;
  }

  *v40 = v32;
  return PhotosChildProvidingItemListManager.ChildItem.init(parentItem:child:)(v28, v25, v12, v41);
}

uint64_t PhotosChildProvidingItemListManager.ChildItem.init(parentItem:child:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1, a3);
  result = type metadata accessor for PhotosChildProvidingItemListManager.ChildItem();
  *(a4 + *(result + 84)) = a2;
  return result;
}

id sub_1B3FA2758(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_6_3();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_3();
  swift_getAssociatedConformanceWitness();

  type metadata accessor for PhotosChildProvidingItemListManager.ChildItem();
  OUTLINED_FUNCTION_1_15();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_4();
  v2 = type metadata accessor for PhotosBasicItemListManager();
  WitnessTable = swift_getWitnessTable();
  v4 = PhotosComposedObservable<>.observeChanges(using:)(a1, a2, v2, WitnessTable);

  return v4;
}

uint64_t sub_1B3FA2908(double a1)
{
  v54 = *v1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v55 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  v5 = v4;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v6, v7);
  v8 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0_12();
  v47 = v9;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_4();
  v56 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0_12();
  v58 = v12;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v45 - v15;
  v17 = mach_absolute_time();
  v57 = v1;
  sub_1B3FA2E5C(v1, v61);
  result = mach_absolute_time();
  v19 = result >= v17;
  v20 = result - v17;
  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = PXTimebaseConversionFactor();
  if (v61[0] == 1)
  {
    v22 = v21;
    v23 = v5;
    sub_1B3FA0E68();
    sub_1B3FA0E04();
    v24 = v56;
    v25 = (*(AssociatedConformanceWitness + 32))(v56, AssociatedConformanceWitness);
    v26 = *(v58 + 8);
    v58 += 8;
    v52 = v26;
    result = (v26)(v16, v24);
    v53 = v25;
    if (v25 < 0)
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v27 = 0;
    v28 = a1 - v22 * v20;
    v50 = AssociatedConformanceWitness + 56;
    v51 = AssociatedConformanceWitness;
    v48 = v23 + 8;
    v49 = v55 + 64;
    v47 += 8;
    v46 = 1;
    while (1)
    {
      if (v53 == v27)
      {
LABEL_16:
        v44 = v46;
        return v44 & 1;
      }

      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 <= 0.0)
      {
        goto LABEL_16;
      }

      sub_1B3FA0E04();
      v30 = v56;
      (*(v51 + 56))(v27, v56);
      v52(v16, v30);
      (*(v55 + 64))(v8, v55);
      sub_1B3FA0D74();
      v31 = *(v54 + 88);
      swift_getAssociatedConformanceWitness();
      sub_1B405D334();

      if (v60)
      {
        v36 = mach_absolute_time();
        v59 = (*(*(v54 + 104) + 56))(v31, v28) & 1;
        result = mach_absolute_time();
        v37 = result - v36;
        if (result < v36)
        {
          goto LABEL_22;
        }

        if ((v37 & 0x8000000000000000) != 0)
        {
          goto LABEL_23;
        }

        v38 = v37;
        v39 = PXTimebaseConversionFactor();
        swift_unknownObjectRelease();
        v40 = OUTLINED_FUNCTION_8_1();
        v41(v40);
        v42 = OUTLINED_FUNCTION_7_2();
        result = v43(v42);
        v28 = v28 - v39 * v38;
        v46 = (v46 & v59);
        v27 = v29;
      }

      else
      {
        v32 = OUTLINED_FUNCTION_8_1();
        v33(v32);
        v34 = OUTLINED_FUNCTION_7_2();
        result = v35(v34);
        ++v27;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v44 = 0;
  return v44 & 1;
}

uint64_t sub_1B3FA2E5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*(*a1 + 96) + 56))(*(*a1 + 80));
  *a2 = result & 1;
  return result;
}

uint64_t PhotosChildProvidingItemListManager.deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t PhotosChildProvidingItemListManager.__deallocating_deinit()
{
  PhotosChildProvidingItemListManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 105, 7);
}

uint64_t sub_1B3FA2FC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3FA2728();
  *a1 = result;
  return result;
}

uint64_t PhotosItemListManager.provideChildItemListManagers<A>(options:childProvider:childUpdater:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PhotosChildProvidingItemListManager();
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_5_5();
  return PhotosChildProvidingItemListManager.__allocating_init(parentItemListManager:options:childProvider:childUpdater:)(v7, v8, v9, v10, a4, a5);
}

uint64_t sub_1B3FA3128(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B3FA3164(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B3FA3328()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B3FA3364(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B3FA33FC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B3FA34E8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B3FA3574(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1B3FA36B0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t getEnumTagSinglePayload for PhotosItemListManagerChangeDescriptor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhotosItemListManagerChangeDescriptor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

BOOL sub_1B3FA39D4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  v4 = v3;
  if (Strong)
  {
    if (v3)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v4;
    }

    goto LABEL_7;
  }

  if (v3)
  {
LABEL_7:
    swift_unknownObjectRelease();
    return 0;
  }

  return 1;
}

uint64_t PhotosDisplayRect.init(rect:in:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6 = sub_1B405D3F4();
  result = swift_unknownObjectRelease();
  *(a1 + 8) = v6;
  return result;
}

double PhotosDisplayRect.rect(in:)(uint64_t a1)
{
  v2 = v1;
  sub_1B3FA3B8C(v1, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1B3FA3BFC(v8);
  if (!Strong)
  {
    return *MEMORY[0x1E695F050];
  }

  [Strong convertRect:a1 toCoordinateSpace:{v2[2], v2[3], v2[4], v2[5]}];
  v6 = v5;
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1B3FA3B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87BFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3FA3BFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87BFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosDisplayRect.debugDescription.getter()
{
  *&v8 = 0;
  *(&v8 + 1) = 0xE000000000000000;
  sub_1B405DBC4();
  v10 = v8;
  MEMORY[0x1B8C6F500](0xD000000000000018, 0x80000001B4076200);
  v1 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = v1;
  type metadata accessor for CGRect(0);
  sub_1B405DD34();
  MEMORY[0x1B8C6F500](0xD000000000000013, 0x80000001B4076220);
  sub_1B3FA3B8C(v0, &v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1B3FA3BFC(&v8);
  if (Strong)
  {
    v3 = [Strong description];
    swift_unknownObjectRelease();
    v4 = sub_1B405D444();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x1B8C6F500](v4, v6);

  MEMORY[0x1B8C6F500](41, 0xE100000000000000);
  return v10;
}

BOOL static PhotosDisplayRect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (!Strong)
  {
    if (!v5)
    {
      return CGRectEqualToRect(*(a1 + 16), *(a2 + 16));
    }

    goto LABEL_9;
  }

  if (!v5)
  {
LABEL_9:
    swift_unknownObjectRelease();
    return 0;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (Strong == v6)
  {
    return CGRectEqualToRect(*(a1 + 16), *(a2 + 16));
  }

  return 0;
}

uint64_t sub_1B3FA3E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1B3F7AC48(a1, v11);
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    OUTLINED_FUNCTION_1_16();
    sub_1B3FA4A04(v6, v7, v8);

    *v3 = v10;
  }

  else
  {
    sub_1B3F791B4(a1);
    sub_1B3FBC948(a2, a3, v11);

    return sub_1B3F791B4(v11);
  }

  return result;
}

uint64_t PhotosEnvironmentValues.subscript.setter(uint64_t a1)
{
  v10[0] = *v1;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v3 = sub_1B3F81458();
  v5 = v4;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  sub_1B3FA3E84(v10, v3, v5);
  return (*(v8 + 8))(a1, AssociatedTypeWitness);
}

void *sub_1B3FA4050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B3FA4688(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1B3FA4098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B3FA4614(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1B3FA40F0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1B3FA45D0(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

double sub_1B3FA4140@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1B3FA471C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1B3F87FBC(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t PhotosEnvironment.value<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(&v4, a2, a3);
  swift_getAtKeyPath();
}

uint64_t PhotosMutableEnvironment.setValue<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v7 + 16))(&v10[-v6]);
  v8 = (*(a4 + 24))(v10, a3, a4);
  swift_setAtWritableKeyPath();
  return v8(v10, 0);
}

uint64_t PhotosMutableEnvironment.setValues(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 24))(v8, a3, a4);
  a1(v6);
  return v5(v8, 0);
}

void (*PhotosEnvironmentValues.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[4] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  v9[6] = __swift_coroFrameAllocStub(v12);
  v9[7] = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_1_16();
  PhotosEnvironmentValues.subscript.getter(v13, v14, v15);
  return sub_1B3FA4500;
}

void sub_1B3FA4500(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    PhotosEnvironmentValues.subscript.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PhotosEnvironmentValues.subscript.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);
  OUTLINED_FUNCTION_13();

  free(v7);
}

unint64_t sub_1B3FA45D0(uint64_t a1)
{
  v2 = sub_1B405E114();

  return sub_1B3FA4760(a1, v2);
}

unint64_t sub_1B3FA4614(uint64_t a1, uint64_t a2)
{
  sub_1B405E124();
  OUTLINED_FUNCTION_1_16();
  sub_1B405D494();
  v4 = sub_1B405E154();

  return sub_1B3FA47C0(a1, a2, v4);
}

unint64_t sub_1B3FA4688(uint64_t a1, uint64_t a2)
{
  sub_1B405E124();
  sub_1B405E144();
  if (a2)
  {
    sub_1B405D494();
  }

  v4 = sub_1B405E154();

  return sub_1B3FA4874(a1, a2, v4);
}

unint64_t sub_1B3FA471C(uint64_t a1)
{
  v2 = sub_1B405DB44();

  return sub_1B3FA4940(a1, v2);
}

unint64_t sub_1B3FA4760(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1B3FA47C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1B405DEC4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1B3FA4874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_1B405DEC4() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1B3FA4940(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1B3FA4F50(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1B8C6FBB0](v8, a1);
    sub_1B3FA4FAC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_1B3FA4A04(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  sub_1B3FA4614(a2, a3);
  OUTLINED_FUNCTION_0_18();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BFF0);
  if ((OUTLINED_FUNCTION_3_9() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1B3FA4614(a2, a3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_1B405E0B4();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(*(*v3 + 56) + 32 * v10);
    OUTLINED_FUNCTION_4_5();

    return sub_1B3F7AC48(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_1_16();
    sub_1B3FA4E84(v18, v19, v20, a1, v21);
    OUTLINED_FUNCTION_4_5();

    return _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  }
}

uint64_t sub_1B3FA4B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B3FA4614(a3, a4);
  OUTLINED_FUNCTION_0_18();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BFF8);
  if ((sub_1B405DD54() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1B3FA4614(a3, a4);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1B405E0B4();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v4;
  if (v13)
  {
    v17 = (v16[7] + 16 * v12);
    *v17 = a1;
    v17[1] = a2;
    OUTLINED_FUNCTION_13();
  }

  else
  {
    sub_1B3FA5000(v12, a3, a4, a1, a2, v16);
    OUTLINED_FUNCTION_13();

    return _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  }
}

void sub_1B3FA4C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B3FA4688(a2, a3);
  OUTLINED_FUNCTION_0_18();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB87C000);
  if ((OUTLINED_FUNCTION_3_9() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1B3FA4688(a2, a3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_1B405E0B4();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
    OUTLINED_FUNCTION_4_5();
  }

  else
  {
    sub_1B3FA504C(v10, a2, a3, a1, v14);
    OUTLINED_FUNCTION_4_5();

    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  }
}

unint64_t sub_1B3FA4D74(uint64_t a1, uint64_t a2)
{
  sub_1B3FA45D0(a2);
  OUTLINED_FUNCTION_0_18();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C330);
  if ((sub_1B405DD54() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_1B3FA45D0(a2);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    result = sub_1B405E0B4();
    __break(1u);
    return result;
  }

  v8 = v10;
LABEL_5:
  if (v9)
  {
    *(*(*v2 + 56) + 8 * v8) = a1;
    OUTLINED_FUNCTION_4_5();
  }

  else
  {
    OUTLINED_FUNCTION_4_5();

    return sub_1B3FA5094(v14, v15, v16, v17);
  }
}

_OWORD *sub_1B3FA4E84(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B3F7AC48(a4, (a5[7] + 32 * a1));
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

unint64_t sub_1B3FA5000(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

unint64_t sub_1B3FA504C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_1B3FA5094(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

uint64_t PhotosTopChromeGeometry.init(leadingWidth:trailingWidth:height:titleTopPadding:avoidanceAxis:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a9;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6 & 1;
  *(a8 + 56) = a7;
  return result;
}

uint64_t PhotosTopChromeGeometry.leadingWidth.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PhotosTopChromeGeometry.trailingWidth.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t PhotosTopChromeGeometry.titleTopPadding.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void sub_1B3FA5244()
{
  *&xmmword_1EB87A678 = 0;
  BYTE8(xmmword_1EB87A678) = 1;
  qword_1EB87A688 = 0;
  byte_1EB87A690 = 1;
  xmmword_1EB87A698 = 0uLL;
  byte_1EB87A6A8 = 1;
  qword_1EB87A6B0 = 0;
}

double static PhotosTopChromeGeometry.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EB87A670 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1EB87A688;
  *a1 = xmmword_1EB87A678;
  a1[1] = v2;
  result = *&xmmword_1EB87A698;
  v4 = *&byte_1EB87A6A8;
  a1[2] = xmmword_1EB87A698;
  a1[3] = v4;
  return result;
}

BOOL static PhotosTopChromeGeometry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 8);
  v4 = *(a2 + 32);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (v2 == v4)
    {
      v5 = *(a2 + 24);
    }

    else
    {
      v5 = 0;
    }

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v2 != v4)
    {
      return 0;
    }
  }

  if (*(a1 + 48))
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 40) == *(a2 + 40))
    {
      v8 = *(a2 + 48);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return *(a1 + 56) == *(a2 + 56);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B3FA53A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3FA53C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t static BasicBuilder.buildBlock(_:)()
{
  sub_1B405D704();
  sub_1B405D704();
  OUTLINED_FUNCTION_0_19();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1B405D554();
}

uint64_t static BasicBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B3FA56EC(a2, a2);
  v4 = *(a2 - 8);
  swift_allocObject();
  v5 = sub_1B405D604();
  (*(v4 + 16))(v6, a1, a2);
  sub_1B405D704();
  return v5;
}

uint64_t static BasicBuilder.buildArray(_:)()
{
  sub_1B405D704();
  sub_1B405D704();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  OUTLINED_FUNCTION_0_19();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B405D584();
  sub_1B405DD04();
  swift_getWitnessTable();
  return sub_1B405D724();
}

uint64_t static BasicBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = sub_1B405D644();
  }

  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  return v1;
}

uint64_t sub_1B3FA56EC(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BEF0);
  }

  else
  {

    return sub_1B405DE74();
  }
}

_BYTE *sub_1B3FA5760(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t PhotosWeakDictionary.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosWeakObjectReference();
  result = sub_1B405D234();
  *a1 = result;
  return result;
}

uint64_t sub_1B3FA58C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosWeakDictionary();
  result = PhotosWeakDictionary.subscript.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B3FA5924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v12 - v5;
  (*(v7 + 16))(&v12 - v5, v8, v4);
  v9 = type metadata accessor for PhotosWeakDictionary();
  v10 = swift_unknownObjectRetain();
  return PhotosWeakDictionary.subscript.setter(v10, v6, v9);
}

uint64_t PhotosWeakDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B3FA5B60(a1, a2, a3);
  swift_unknownObjectRelease();
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a2);
}

uint64_t sub_1B3FA5A94()
{
  v0 = type metadata accessor for PhotosWeakObjectReference();
  sub_1B405D334();
  if (v3[16])
  {
    v0 = sub_1B405DAC4();
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  (*(*(v0 - 8) + 8))(v3, v0);
  return Strong;
}

uint64_t sub_1B3FA5B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_1B3FA6EDC(a3, v4);
    swift_unknownObjectRetain();
    PhotosWeakObjectReference.init(_:)(v9);
    type metadata accessor for PhotosWeakObjectReference();
    sub_1B405D324();
    sub_1B405D294();
    swift_unknownObjectRelease();
    v5 = sub_1B405DAC4();
    return (*(*(v5 - 8) + 8))(v10, v5);
  }

  else
  {
    type metadata accessor for PhotosWeakObjectReference();
    sub_1B405D324();
    sub_1B405D284();
    v7 = sub_1B405DAC4();
    (*(*(v7 - 8) + 8))(v10, v7);
    return sub_1B3FA6EDC(a3, v8);
  }
}

void (*PhotosWeakDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v6;
  v6[1] = a3;
  v6[2] = v3;
  v6[3] = *(a3 + 16);
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  *(v9 + 32) = v7;
  v11 = *(v10 + 64);
  v6[5] = __swift_coroFrameAllocStub(v11);
  v6[6] = __swift_coroFrameAllocStub(v11);
  (*(v8 + 16))();
  OUTLINED_FUNCTION_2_12();
  *v6 = PhotosWeakDictionary.subscript.getter();
  return sub_1B3FA5DD4;
}

void sub_1B3FA5DD4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[1];
    (*(v2[4] + 32))((*a1)[5], v4, v2[3]);
    v6 = swift_unknownObjectRetain();
    PhotosWeakDictionary.subscript.setter(v6, v3, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    PhotosWeakDictionary.subscript.setter(**a1, v4, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PhotosWeakDictionary.objects(for:)()
{
  sub_1B405D704();
  swift_getWitnessTable();
  return sub_1B405D504();
}

uint64_t sub_1B3FA5F30@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosWeakDictionary();
  result = sub_1B3FA5A94();
  *a1 = result;
  return result;
}

uint64_t PhotosWeakDictionary.singleObject.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_3_1();
  v44 = v7;
  v8 = type metadata accessor for PhotosWeakObjectReference();
  v51 = v2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_0();
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v50 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v17 = v41 - v16;
  v18 = *v1;
  v19 = *v1 + 64;
  v20 = 1 << *(*v1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(*v1 + 64);
  v23 = (v20 + 63) >> 6;
  v52 = v8 - 8;
  v41[0] = v4 + 32;
  v41[1] = v4 + 16;
  v45 = v4;
  v46 = v18;
  v47 = v4 + 8;
  v48 = (v15 + 32);
  result = _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  Strong = 0;
  v26 = 0;
  v42 = v17;
  v43 = TupleTypeMetadata2;
  while (1)
  {
    v53 = Strong;
    if (!v22)
    {
      break;
    }

    v27 = v26;
LABEL_11:
    v29 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v30 = v29 | (v27 << 6);
    v32 = v45;
    v31 = v46;
    (*(v45 + 16))(v44, *(v46 + 48) + *(v45 + 72) * v30, v51);
    v33 = *(v31 + 56) + 16 * v30;
    v34 = *(v8 - 8);
    (*(v34 + 16))(v54, v33, v8);
    v35 = *(v43 + 48);
    TupleTypeMetadata2 = v43;
    v28 = v50;
    (*(v32 + 32))();
    (*(v34 + 32))(v28 + v35, v54, v8);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, TupleTypeMetadata2);
    v17 = v42;
LABEL_12:
    (*v48)(v17, v28, v49);
    if (__swift_getEnumTagSinglePayload(v17, 1, TupleTypeMetadata2) == 1)
    {

      return v53;
    }

    v36 = *(v8 - 8);
    (*(v36 + 32))(v54, &v17[*(TupleTypeMetadata2 + 48)], v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    (*(v36 + 8))(v54, v8);
    if (Strong)
    {
      if (v53)
      {
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        v39 = OUTLINED_FUNCTION_4_6();
        v40(v39);
        return 0;
      }
    }

    else
    {
      Strong = v53;
    }

    v37 = OUTLINED_FUNCTION_4_6();
    result = v38(v37);
  }

  v28 = v50;
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
      __swift_storeEnumTagSinglePayload(v50, 1, 1, TupleTypeMetadata2);
      v22 = 0;
      goto LABEL_12;
    }

    v22 = *(v19 + 8 * v27);
    ++v26;
    if (v22)
    {
      v26 = v27;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t PhotosWeakDictionary.removeObject(identicalTo:)(uint64_t a1, void *a2)
{
  v37 = a1;
  v4 = a2[2];
  v5 = a2[3];
  v6 = type metadata accessor for PhotosWeakObjectReference();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1B405DAC4();
  OUTLINED_FUNCTION_0_0();
  v33 = v9;
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - v11;
  v36 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v30 - v17;
  OUTLINED_FUNCTION_0_0();
  v35 = v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_3_1();
  v31 = v22;
  v32 = v2;
  v23 = *v2;
  v38 = v4;
  v39 = v5;
  v40 = a2[4];
  v41 = v37;
  v42[0] = v23;
  sub_1B405D324();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  OUTLINED_FUNCTION_1_17();
  swift_getWitnessTable();
  sub_1B405D544();

  if (__swift_getEnumTagSinglePayload(v12, 1, TupleTypeMetadata2) == 1)
  {
    (*(v33 + 8))(v12, v34);
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v4);
    return (*(v14 + 8))(v18, v36);
  }

  v24 = *(TupleTypeMetadata2 + 48);
  v25 = v35;
  v26 = *(v35 + 32);
  v26(v18, v12, v4);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  (*(*(v6 - 8) + 8))(&v12[v24], v6);
  if (__swift_getEnumTagSinglePayload(v18, 1, v4) == 1)
  {
    return (*(v14 + 8))(v18, v36);
  }

  v28 = v31;
  v26(v31, v18, v4);
  sub_1B405D284();
  v29 = sub_1B405DAC4();
  (*(*(v29 - 8) + 8))(v42, v29);
  return (*(v25 + 8))(v28, v4);
}

BOOL sub_1B3FA6798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotosWeakObjectReference();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v8);
  v10 = v15 - v9;
  (*(v11 + 16))(v15 - v9, a1, TupleTypeMetadata2);
  v12 = *(TupleTypeMetadata2 + 48);
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(*(v6 - 8) + 8))(&v10[v12], v6);
  (*(*(a3 - 8) + 8))(v10, a3);
  if (!Strong)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  return Strong == a2;
}

uint64_t PhotosWeakDictionary.values.getter()
{
  type metadata accessor for PhotosWeakObjectReference();
  sub_1B405D304();
  swift_getKeyPath();
  sub_1B405D2E4();
  swift_getWitnessTable();
  v0 = sub_1B405D504();

  return v0;
}

uint64_t sub_1B3FA6A60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PhotosWeakObjectReference();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v8, a1, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v5 + 8))(v8, v4);
  *a2 = Strong;
  return result;
}

uint64_t PhotosWeakDictionary.keys.getter()
{
  type metadata accessor for PhotosWeakObjectReference();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  sub_1B405D2B4();
  swift_getWitnessTable();
  return sub_1B405D724();
}

uint64_t PhotosWeakDictionary.count.getter()
{
  OUTLINED_FUNCTION_2_12();
  PhotosWeakDictionary.values.getter();
  v0 = sub_1B405D684();

  return v0;
}

Swift::Void __swiftcall PhotosWeakDictionary.removeAll()()
{
  type metadata accessor for PhotosWeakObjectReference();
  v0 = sub_1B405D324();

  MEMORY[0x1EEE688F0](0, v0);
}

uint64_t PhotosWeakDictionary.contains(where:)()
{
  type metadata accessor for PhotosWeakObjectReference();
  sub_1B405D324();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  OUTLINED_FUNCTION_1_17();
  swift_getWitnessTable();
  v0 = sub_1B405D574();

  return v0 & 1;
}

uint64_t sub_1B3FA6D74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = a3();
    swift_unknownObjectRelease();
    return v5 & 1;
  }

  return result;
}

uint64_t sub_1B3FA6DD8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  type metadata accessor for PhotosWeakObjectReference();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_1B3FA6E88()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B3FA6EDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v49 = v47 - v10;
  v47[0] = v9;
  v11 = type metadata accessor for PhotosWeakObjectReference();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v56 = sub_1B405DAC4();
  v13 = MEMORY[0x1EEE9AC00](v56, v12);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v59 = v47 - v18;
  v19 = *v2;
  v20 = *(*v2 + 64);
  v58 = *v2 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v47[1] = v4 + 16;
  v60 = (v4 + 32);
  v61 = v11 - 8;
  v55 = (v17 + 32);
  v51 = v4;
  v52 = v19;
  v53 = (v4 + 8);
  result = _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v26 = 0;
  v54 = v3;
  v50 = v7;
  v48 = v15;
  while (v23)
  {
    v27 = v26;
LABEL_11:
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v30 = v29 | (v27 << 6);
    v32 = v51;
    v31 = v52;
    v33 = v49;
    (*(v51 + 16))(v49, *(v52 + 48) + *(v51 + 72) * v30, v3);
    v34 = *(v31 + 56) + 16 * v30;
    v35 = *(v11 - 8);
    (*(v35 + 16))(v62, v34, v11);
    v36 = v3;
    v37 = TupleTypeMetadata2;
    v38 = *(TupleTypeMetadata2 + 48);
    v39 = *(v32 + 32);
    v40 = v48;
    v39(v48, v33, v36);
    v41 = v40 + v38;
    v15 = v40;
    (*(v35 + 32))(v41, v62, v11);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v37);
    v7 = v50;
    v28 = v59;
LABEL_12:
    (*v55)(v28, v15, v56);
    if (__swift_getEnumTagSinglePayload(v28, 1, v37) == 1)
    {
    }

    v42 = *(v37 + 48);
    v43 = v54;
    (*v60)(v7, v28, v54);
    v44 = v28;
    v45 = *(v11 - 8);
    (*(v45 + 32))(v63, v44 + v42, v11);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1B405D324();
      sub_1B405D284();
      v46 = sub_1B405DAC4();
      (*(*(v46 - 8) + 8))(v62, v46);
    }

    (*(v45 + 8))(v63, v11);
    result = (*v53)(v7, v43);
    v3 = v43;
  }

  v28 = v59;
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      v37 = TupleTypeMetadata2;
      __swift_storeEnumTagSinglePayload(v15, 1, 1, TupleTypeMetadata2);
      v23 = 0;
      goto LABEL_12;
    }

    v23 = *(v58 + 8 * v27);
    ++v26;
    if (v23)
    {
      v26 = v27;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t UIAction.init(menuAction:)(void *a1)
{
  swift_getObjectType();
  v2 = [a1 title];
  sub_1B405D444();

  sub_1B3FA74B8();
  [a1 role];
  UIMenuElementStateFromPXMenuActionState([a1 state]);
  OUTLINED_FUNCTION_6_1();
  *(swift_allocObject() + 16) = a1;
  OUTLINED_FUNCTION_5_6();
  return sub_1B405DA94();
}

id sub_1B3FA74B8()
{
  result = [v0 image];
  if (!result)
  {
    result = [v0 systemImageName];
    if (result)
    {
      v2 = result;
      sub_1B405D444();

      sub_1B3F8A5BC(0, &qword_1EB87C128);
      return sub_1B3FA8144();
    }
  }

  return result;
}

uint64_t sub_1B3FA7554(void *a1, void *a2)
{
  [a2 performAction:objc_msgSend(a1 presentationSource:{sel_sender), objc_msgSend(a1, sel_presentationSourceItem)}];
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id static UIMenuElement.makeMenuElement(with:)(void *a1)
{
  OUTLINED_FUNCTION_6_1();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = [a1 respondsToSelector_];
  swift_unknownObjectRetain();
  if ((v3 & 1) == 0 || (v4 = [a1 customMenuElementFactory]) == 0 || (v5 = v4, v11[4] = sub_1B3FA81B0, v11[5] = v2, v11[0] = MEMORY[0x1E69E9820], v11[1] = 1107296256, v11[2] = sub_1B3FA78A4, v11[3] = &block_descriptor_2, v6 = _Block_copy(v11), v7 = v5[2], , v8 = v7(v5, v6), _Block_release(v6), , _Block_release(v5), !v8))
  {
    sub_1B3F8A5BC(0, &qword_1EB87C090);
    OUTLINED_FUNCTION_4_7();
    v9 = swift_unknownObjectRetain();
    v8 = UIAction.init(menuAction:)(v9);
  }

  return v8;
}

uint64_t sub_1B3FA7758(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1B3F77C10(a1, v12);
  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v6, v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_1B405DEB4();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
  }

  [a3 performAction:v10 presentationSource:a2];
  return swift_unknownObjectRelease();
}

uint64_t sub_1B3FA78A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v7 = a2;
    sub_1B3F7AC48(&v7, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5(v9, a3);
  swift_unknownObjectRelease();

  return sub_1B3F791B4(v9);
}

uint64_t static UIMenuElement.makeMenuElement<A>(with:)(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_1();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = _s18PhotosUIFoundation15MenuGroupActionC07_customC14ElementFactorySo06UIMenuG0CSgyypSg_So41UIPopoverPresentationControllerSourceItem_pSgtccSgvg_0();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = v5(sub_1B3FA81B8, v3);
    sub_1B3F7BAA8(v5);
    if (v7)
    {

      return v7;
    }
  }

  else
  {
    v9 = a1;
  }

  type metadata accessor for MenuGroupAction();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  sub_1B3FA74B8();
  v10 = *a1;
  v11 = *v2;
  sub_1B3F8A5BC(0, &qword_1EB87C090);
  UIMenuElementStateFromPXMenuActionState(*(a1 + *((v11 & v10) + 0x80)));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B3FA81B8;
  *(v12 + 24) = v3;
  OUTLINED_FUNCTION_5_6();
  return sub_1B405DA94();
}

uint64_t sub_1B3FA7B5C(void *a1, void (*a2)(__int128 *, id))
{
  if ([a1 sender])
  {
    sub_1B405DAF4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  a2(&v5, [a1 presentationSourceItem]);
  swift_unknownObjectRelease();
  return sub_1B3F791B4(&v5);
}

uint64_t static UIMenuElement.makeMenuElements(from:)(unint64_t a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  result = sub_1B3FA81F4(a1);
  if (result)
  {
    v4 = result;
    if (result >= 1)
    {
      v5 = 0;
      v6 = v1 & 0xC000000000000001;
      v23 = result;
      while (1)
      {
        if (v6)
        {
          MEMORY[0x1B8C6FC70](v5, v1);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v7 = swift_dynamicCastObjCProtocolConditional();
        if (v7)
        {
          v8 = static UIMenuElement.makeMenuElement(with:)(v7);
          MEMORY[0x1B8C6F620](v8);
          OUTLINED_FUNCTION_1_18();
          if (v10)
          {
            OUTLINED_FUNCTION_2_13(v9);
            sub_1B405D624();
          }

          sub_1B405D674();

          swift_unknownObjectRelease();
          v2 = v24;
        }

        else
        {
          v11 = swift_dynamicCastObjCProtocolConditional();
          if (v11)
          {
            v12 = v11;
            v13 = v1;
            v14 = v6;
            sub_1B3F8A5BC(0, &qword_1EB87C0F8);
            v15 = [v12 title];
            sub_1B405D444();

            v16 = [v12 image];
            v17 = [v12 childElements];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C100);
            v18 = sub_1B405D5E4();

            static UIMenuElement.makeMenuElements(from:)(v18);
            OUTLINED_FUNCTION_4_7();

            OUTLINED_FUNCTION_5_6();
            v19 = sub_1B405DA64();
            MEMORY[0x1B8C6F620](v19);
            OUTLINED_FUNCTION_1_18();
            if (v10)
            {
              OUTLINED_FUNCTION_2_13(v20);
              sub_1B405D624();
            }

            sub_1B405D674();

            swift_unknownObjectRelease();
            v2 = v24;
            v6 = v14;
            v1 = v13;
            v4 = v23;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              if (v2 >> 62)
              {
                if (sub_1B405DDE4())
                {
LABEL_18:
                  sub_1B3F8A5BC(0, &qword_1EB87C0F8);
                  OUTLINED_FUNCTION_5_6();
                  v21 = sub_1B405DA64();
                  MEMORY[0x1B8C6F620](v21);
                  OUTLINED_FUNCTION_1_18();
                  if (v10)
                  {
                    OUTLINED_FUNCTION_2_13(v22);
                    sub_1B405D624();
                  }

                  sub_1B405D674();
                  swift_unknownObjectRelease();

                  v2 = MEMORY[0x1E69E7CC0];
                  v24 = MEMORY[0x1E69E7CC0];
                  goto LABEL_23;
                }
              }

              else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_18;
              }
            }

            swift_unknownObjectRelease();
          }
        }

LABEL_23:
        if (v4 == ++v5)
        {
          goto LABEL_24;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    if (sub_1B3FA81F4(v2))
    {
      sub_1B3FA7FC4(v2);
    }

    else
    {
    }

    return v25;
  }

  return result;
}

uint64_t sub_1B3FA7FC4(unint64_t a1)
{
  v3 = sub_1B3FA81F4(a1);
  v4 = sub_1B3FA81F4(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1B3FC9F40();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1B3FA82AC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

id UIMenuElementsFromPXMenuElements()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C100);
  sub_1B405D5E4();
  UIMenuElementsFromPXMenuElements(pxMenuElements:)();
  OUTLINED_FUNCTION_4_7();

  sub_1B3F8A5BC(0, &qword_1EB879F98);
  v0 = sub_1B405D5D4();

  return v0;
}

uint64_t UIMenuElementsFromPXMenuElements(pxMenuElements:)()
{
  sub_1B3F8A5BC(0, &qword_1EB879F98);
  v0 = OUTLINED_FUNCTION_4_7();
  return static UIMenuElement.makeMenuElements(from:)(v0);
}

id sub_1B3FA8144()
{
  v0 = sub_1B405D414();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed_];

  return v1;
}

uint64_t sub_1B3FA81F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1B405DDE4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void (*sub_1B3FA8218(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1B3FA81E4(a3);
  sub_1B3FD081C(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1B8C6FC70](a2, a3);
  }

  *a1 = v7;
  return sub_1B3FA82A4;
}

uint64_t sub_1B3FA82AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B405DDE4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B3FA81F4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1B3F8A5BC(0, &qword_1EB879F98);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B3FA8420();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C110);
          v9 = sub_1B3FA8218(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B3FA8420()
{
  result = qword_1EB87C118;
  if (!qword_1EB87C118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB87C110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C118);
  }

  return result;
}

uint64_t sub_1B3FA84BC(uint64_t a1)
{
  v3 = _s18PhotosUIFoundation0A22GenericItemListManagerC04itemE0xvg_0();
  swift_unknownObjectRelease();
  if (v3 != a1)
  {
    v4 = swift_unknownObjectRetain();
    sub_1B3FA85A4(v4, v5);
    [*(v1 + 48) signalChange_];
  }

  return swift_unknownObjectRelease();
}

uint64_t _s18PhotosUIFoundation0A22GenericItemListManagerC04itemE0xvg_0()
{
  swift_getKeyPath();
  sub_1B3FA8A8C();

  return swift_unknownObjectRetain();
}

uint64_t sub_1B3FA85A4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 40);
  if (v4 == a1)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4, a2);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    sub_1B3FA8B44();

    return swift_unknownObjectRelease();
  }
}

uint64_t PhotosGenericItemListManager.__allocating_init(itemList:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosGenericItemListManager.init(itemList:)(a1);
  return v2;
}

void *PhotosGenericItemListManager.init(itemList:)(uint64_t a1)
{
  type metadata accessor for PhotosItemListChangeDetailsRepository();
  swift_allocObject();
  v3 = PhotosItemListChangeDetailsRepository.init(countLimit:)(100);
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = v3;
  v1[6] = [objc_allocWithZone(PXObservable) init];
  sub_1B405D054();
  v1[5] = a1;
  return v1;
}

uint64_t sub_1B3FA87B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B3FA9298;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B3F7F018(v4);
}

uint64_t sub_1B3FA8844(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B3FA9290;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 24);
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  sub_1B3F7F018(v3);
  return sub_1B3F7BAA8(v8);
}

uint64_t PhotosGenericItemListManager.waitForItemListHandler.getter()
{
  OUTLINED_FUNCTION_2_14();
  v1 = *(v0 + 24);
  sub_1B3F7F018(v1);
  return v1;
}

uint64_t PhotosGenericItemListManager.waitForItemListHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_1B3F7BAA8(v5);
}

Swift::Bool __swiftcall PhotosGenericItemListManager.waitForItemList(timeout:)(Swift::Double timeout)
{
  OUTLINED_FUNCTION_2_14();
  v3 = *(v1 + 24);
  if (v3)
  {

    v5 = v3(v4, timeout);
    sub_1B3F7BAA8(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1B3FA8A8C()
{
  OUTLINED_FUNCTION_0_20();
  swift_getWitnessTable();
  return sub_1B405D044();
}

uint64_t sub_1B3FA8B08(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B3FA8B44()
{
  OUTLINED_FUNCTION_0_20();
  swift_getWitnessTable();
  return sub_1B405D034();
}

uint64_t PhotosGenericItemListManager.createMutator()()
{
  type metadata accessor for PhotosGenericItemListManager.Mutator();
  v1 = sub_1B3F7DEA8(v0);

  return v1;
}

uint64_t (*sub_1B3FA8D04(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B3FA8CBC();
  return sub_1B3FA8D4C;
}

uint64_t sub_1B3FA8D4C(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1B3FA8CE0(*a1);
  }

  v2 = swift_unknownObjectRetain();
  sub_1B3FA8CE0(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B3FA8DA4()
{

  sub_1B3F7FD84();

  v0 = swift_unknownObjectRetain();
  return sub_1B3FA84BC(v0);
}

uint64_t PhotosGenericItemListManager.Mutator.__deallocating_deinit()
{
  PhotosGenericItemListManager.Mutator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B3FA8E54@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosGenericItemListManager.changeDetailsRepository.getter();
  *a1 = result;
  return result;
}

uint64_t PhotosGenericItemListManager.deinit()
{

  sub_1B3F7BAA8(*(v0 + 24));
  swift_unknownObjectRelease();

  v1 = qword_1EB87B150;
  v2 = sub_1B405D064();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosGenericItemListManager.__deallocating_deinit()
{
  PhotosGenericItemListManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B3FA8F5C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosGenericItemListManager.itemList.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B3FA8F8C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosGenericItemListManager.createMutator()();
  *a1 = result;
  return result;
}

id sub_1B3FA8FB8@<X0>(void *a1@<X8>)
{
  result = PhotosGenericItemListManager.observable.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B3FA9054(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B3FA90A0()
{
  result = sub_1B405D064();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B3FA92C4(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B405D774();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    sub_1B3FAD710(v12);
    if (v3)
    {
      v8 = OUTLINED_FUNCTION_18_0();

      if ((v8 & 1) == 0)
      {
        return a3 & 1;
      }

      __break(1u);
    }

    a3 = v12[0];
    v9 = OUTLINED_FUNCTION_18_0();

    if ((v9 & 1) == 0)
    {
      return a3 & 1;
    }

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1B405DBC4();
  MEMORY[0x1B8C6F500](0xD00000000000003FLL, 0x80000001B4076390);
  v11 = sub_1B405E1F4();
  MEMORY[0x1B8C6F500](v11);

  MEMORY[0x1B8C6F500](46, 0xE100000000000000);
  result = sub_1B405DD74();
  __break(1u);
  return result;
}

uint64_t sub_1B3FA9454(uint64_t a1, uint64_t a2)
{
  sub_1B405D774();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1B3FAD070();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1B405DBC4();
    MEMORY[0x1B8C6F500](0xD00000000000003FLL, 0x80000001B4076390);
    v8 = sub_1B405E1F4();
    MEMORY[0x1B8C6F500](v8);

    MEMORY[0x1B8C6F500](46, 0xE100000000000000);
    result = sub_1B405DD74();
    __break(1u);
  }

  return result;
}

uint64_t PhotosDraftState.hashValue.getter()
{
  v1 = *v0;
  sub_1B405E124();
  MEMORY[0x1B8C70190](v1);
  return sub_1B405E154();
}

uint64_t PhotosDraft.requestImmediateClosePermission()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(&v6);
  if (v6 - 2 >= 2 && v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_17_0();
  return sub_1B3FA9700(v2, v3, v4);
}

uint64_t sub_1B3FA9700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v19[-v12];
  v14 = *(v7 + 16);
  v14(&v19[-v12], v3, a2);
  if (v6)
  {
    (*(a3 + 16))(&v20, a2, a3);
    v15 = v20;
  }

  else
  {
    v15 = 4;
  }

  v16 = type metadata accessor for PhotosDraftClosePermission();
  BYTE1(v20) = v15;
  v14(v10, v13, a2);
  v17 = sub_1B3FAD38C(v10, &v20 + 1, v16, a2, a3);
  (*(v7 + 8))(v13, a2);
  return v17;
}

uint64_t PhotosDraft.requestClosePermission(from:)()
{
  OUTLINED_FUNCTION_2_8();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v5 = *(v4 - 8);
  v1[36] = v5;
  v1[37] = *(v5 + 64);
  v1[38] = swift_task_alloc();
  sub_1B405D784();
  v1[39] = sub_1B405D774();
  v7 = sub_1B405D744();
  v1[40] = v7;
  v1[41] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B3FA9974, v7, v6);
}

uint64_t sub_1B3FA9974()
{
  OUTLINED_FUNCTION_8_2();
  (*(*(v0 + 272) + 16))(*(v0 + 264));
  if (*(v0 + 352) - 2 >= 2 && *(v0 + 352))
  {
    v7 = *(v0 + 280);
    v8 = *(v0 + 256);
    v9 = swift_task_alloc();
    *(v0 + 336) = v9;
    *(v9 + 16) = *(v0 + 264);
    *(v9 + 32) = v7;
    *(v9 + 40) = v8;
    v10 = swift_task_alloc();
    *(v0 + 344) = v10;
    *v10 = v0;
    v10[1] = sub_1B3FA9B2C;
    v11 = *(v0 + 272);
    v12 = *(v0 + 264);

    return sub_1B3FAA2D4(v0 + 16, 0xD00000000000001CLL, 0x80000001B40762A0, &unk_1B4070E50, v9, v12, &type metadata for PhotosDraftSaveConfirmationResponse, v11);
  }

  else
  {

    OUTLINED_FUNCTION_17_0();
    v4 = sub_1B3FA9700(v1, v2, v3);

    v5 = *(v0 + 8);

    return v5(v4);
  }
}

uint64_t sub_1B3FA9B2C()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_19();
  *v3 = v2;

  v4 = *(v1 + 328);
  v5 = *(v1 + 320);

  return MEMORY[0x1EEE6DFA0](sub_1B3FA9C64, v5, v4);
}

uint64_t sub_1B3FA9C64()
{

  sub_1B3FAABF8(v0 + 16, v0 + 96);
  if (*(v0 + 120) == 2)
  {
    sub_1B3FAD330(v0 + 16, &qword_1EB87C148);
    v1 = v0 + 96;
LABEL_6:
    sub_1B3FAD330(v1, &qword_1EB87C148);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = *(v0 + 112);
  *(v0 + 56) = *(v0 + 96);
  *(v0 + 72) = v2;
  *(v0 + 88) = *(v0 + 128);
  sub_1B3FAAC68(v0 + 56, v0 + 136);
  v3 = *(v0 + 160);
  if (v3 == 1)
  {
    v4 = sub_1B3FA9700(1, *(v0 + 264), *(v0 + 272));
  }

  else
  {
    if (!v3)
    {
      sub_1B3FAB2BC(v0 + 56);
      v1 = v0 + 16;
      goto LABEL_6;
    }

    v6 = *(v0 + 296);
    v5 = *(v0 + 304);
    v7 = *(v0 + 280);
    v8 = *(v0 + 288);
    v10 = *(v0 + 264);
    v9 = *(v0 + 272);
    sub_1B3F90E0C((v0 + 136), v0 + 176);
    v11 = OUTLINED_FUNCTION_21();
    v12(v11);
    (*(v8 + 16))(v5, v7, v10);
    sub_1B3FAD098(v0 + 176, v0 + 216);
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    *(v15 + 24) = v9;
    (*(v8 + 32))(v15 + v13, v5, v10);
    sub_1B3F90E0C((v0 + 216), v15 + v14);
    sub_1B3FAB0B0(1702257011, 0xE400000000000000, &unk_1B4070E70, v15, v10, v9);

    OUTLINED_FUNCTION_17_0();
    v4 = sub_1B3FA9700(v16, v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  }

  sub_1B3FAB2BC(v0 + 56);
  sub_1B3FAD330(v0 + 16, &qword_1EB87C148);
LABEL_10:

  v19 = *(v0 + 8);

  return v19(v4);
}

uint64_t sub_1B3FA9EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1B405D784();
  v5[3] = sub_1B405D774();
  v12 = (*(a5 + 24) + **(a5 + 24));
  v10 = swift_task_alloc();
  v5[4] = v10;
  *v10 = v5;
  v10[1] = sub_1B3FAA024;

  return v12(a1, a3, a4, a5);
}

uint64_t sub_1B3FAA024()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_1_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_19();
  *v5 = v4;
  *(v6 + 40) = v0;

  v8 = sub_1B405D744();
  if (v0)
  {
    v9 = sub_1B3FAA1C4;
  }

  else
  {
    v9 = sub_1B3FAA168;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1B3FAA168()
{
  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_3_10();

  return v0();
}

uint64_t sub_1B3FAA1C4()
{
  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_3_10();

  return v0();
}

uint64_t sub_1B3FAA220()
{
  OUTLINED_FUNCTION_8_2();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_15(v7);
  *v8 = v9;
  v8[1] = sub_1B3FAD754;

  return sub_1B3FA9EC8(v2, v6, v5, v3, v4);
}

uint64_t sub_1B3FAA2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = a7;
  v9[9] = v8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v12 = sub_1B405DAC4();
  v9[10] = v12;
  v9[11] = *(v12 - 8);
  v9[12] = swift_task_alloc();
  v9[13] = *(a8 + 8);
  v9[14] = swift_getAssociatedTypeWitness();
  v9[15] = swift_task_alloc();
  v9[16] = *(a6 - 8);
  v9[17] = swift_task_alloc();
  v9[18] = swift_task_alloc();
  sub_1B405D784();
  v9[19] = sub_1B405D774();
  v14 = sub_1B405D744();
  v9[20] = v14;
  v9[21] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1B3FAA490, v14, v13);
}

uint64_t sub_1B3FAA490()
{
  v32 = v0;
  __swift_storeEnumTagSinglePayload(v0[2], 1, 1, v0[8]);
  if (qword_1EB87B798 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[9];
  v4 = v0[7];
  v5 = sub_1B405D0F4();
  v0[22] = __swift_project_value_buffer(v5, qword_1EB87C130);
  v6 = *(v2 + 16);
  v0[23] = v6;
  v0[24] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v3, v4);
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v7 = sub_1B405D0D4();
  LOBYTE(v4) = sub_1B405D9A4();

  v8 = os_log_type_enabled(v7, v4);
  v9 = v0[18];
  v10 = v0[16];
  if (v8)
  {
    v11 = v0[15];
    v13 = v0[3];
    v12 = v0[4];
    v14 = swift_slowAlloc();
    v31 = OUTLINED_FUNCTION_25_0();
    v18 = OUTLINED_FUNCTION_24_0(4.8151e-34, v31, v15, v16, v17);
    OUTLINED_FUNCTION_13_1(v18);
    sub_1B405D464();
    v19 = OUTLINED_FUNCTION_14_1();
    v13(v19);
    v20 = sub_1B3F95078(v11, v12, &v31);

    *(v14 + 14) = v20;
    OUTLINED_FUNCTION_20_0();
    _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_3();
  }

  else
  {
    v26 = v0[7];

    v13 = *(v10 + 8);
    (v13)(v9, v26);
  }

  v0[25] = v13;
  v30 = (v0[5] + *v0[5]);
  v27 = swift_task_alloc();
  v0[26] = v27;
  *v27 = v0;
  v27[1] = sub_1B3FAA748;
  v28 = v0[12];

  return v30(v28);
}

uint64_t sub_1B3FAA748()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_1_10();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 216) = v0;

  v5 = *(v2 + 168);
  v6 = *(v2 + 160);
  if (v0)
  {
    v7 = sub_1B3FAA968;
  }

  else
  {
    v7 = sub_1B3FAA87C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B3FAA87C()
{
  OUTLINED_FUNCTION_8_2();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[2];

  (*(v2 + 8))(v5, v3);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v4);
  (*(v2 + 32))(v5, v1, v3);

  OUTLINED_FUNCTION_3_10();

  return v6();
}

uint64_t sub_1B3FAA968()
{
  v34 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);
  v3 = *(v0 + 136);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);

  v2(v3, v4, v5);
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v6 = v1;
  v7 = sub_1B405D0D4();
  LOBYTE(v5) = sub_1B405D9B4();

  v8 = os_log_type_enabled(v7, v5);
  v9 = *(v0 + 200);
  v10 = *(v0 + 136);
  if (v8)
  {
    v11 = *(v0 + 56);
    v12 = *(v0 + 24);
    v30 = *(v0 + 32);
    v31 = *(v0 + 216);
    v13 = swift_slowAlloc();
    v32 = v7;
    v14 = swift_slowAlloc();
    v33 = OUTLINED_FUNCTION_25_0();
    *v13 = 136315650;
    v15 = sub_1B3F95078(v12, v30, &v33);
    OUTLINED_FUNCTION_16_0(v15);
    sub_1B405DBE4();
    v16 = sub_1B405D464();
    v18 = v17;
    v9(v10, v11);
    v19 = sub_1B3F95078(v16, v18, &v33);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2112;
    v20 = v31;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v21;
    *v14 = v21;
    OUTLINED_FUNCTION_20_0();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
    sub_1B3FAD330(v14, &qword_1EB87C158);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_3();
  }

  else
  {
    v27 = *(v0 + 56);

    v9(v10, v27);
  }

  OUTLINED_FUNCTION_3_10();

  return v28();
}

uint64_t sub_1B3FAABF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3FAACA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = sub_1B405D784();
  v4[6] = sub_1B405D774();
  v10 = (*(a4 + 32) + **(a4 + 32));
  v8 = swift_task_alloc();
  v4[7] = v8;
  *v8 = v4;
  v8[1] = sub_1B3FAADF0;

  return v10(a2, a3, a4);
}

uint64_t sub_1B3FAADF0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_1_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_19();
  *v5 = v4;
  *(v6 + 64) = v0;

  v8 = sub_1B405D744();
  if (v0)
  {
    v9 = sub_1B3FAD770;
  }

  else
  {
    v9 = sub_1B3FAAF34;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1B3FAAF34()
{
  OUTLINED_FUNCTION_5();

  v0 = OUTLINED_FUNCTION_21();
  v1(v0);
  OUTLINED_FUNCTION_3_10();

  return v2();
}

uint64_t sub_1B3FAAFB8()
{
  OUTLINED_FUNCTION_8_2();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_0_0();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_15(v7);
  *v8 = v9;
  v8[1] = sub_1B3FAD754;

  return sub_1B3FAACA0(v0 + v4, v0 + v6, v1, v2);
}

uint64_t sub_1B3FAB0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v30 = a3;
  v28 = a1;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C2B0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v27 - v15;
  v17 = sub_1B405D7A4();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v10 + 16))(v12, v6, a5);
  sub_1B405D784();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

  v18 = sub_1B405D774();
  v19 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 2) = v18;
  *(v21 + 3) = v22;
  v23 = v28;
  v24 = v29;
  *(v21 + 4) = a5;
  *(v21 + 5) = v24;
  *(v21 + 6) = v23;
  *(v21 + 7) = a2;
  (*(v10 + 32))(&v21[v19], v12, a5);
  v25 = &v21[v20];
  *v25 = v30;
  *(v25 + 1) = a4;
  sub_1B3FB97F8(0, 0, v16, &unk_1B4071050, v21);
}

void *sub_1B3FAB2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *MEMORY[0x1EEE9AC00](a1, a2);
  result = (*(v10 + 16))(&v16, v11, v10);
  if (v16 == 4)
  {
    if (v9 != 4)
    {
      return result;
    }

LABEL_6:
    (*(a3 + 64))(a2, a3);
    (*(v6 + 16))(&v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2);
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    (*(v6 + 32))(v14 + v13, v8, a2);
    sub_1B3FAB0B0(0xD00000000000001FLL, 0x80000001B40763D0, &unk_1B4071040, v14, a2, a3);
  }

  if (v9 != 4 && v16 == v9)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1B3FAB4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_1B405D784();
  v3[6] = sub_1B405D774();
  v8 = (*(a3 + 40) + **(a3 + 40));
  v6 = swift_task_alloc();
  v3[7] = v6;
  *v6 = v3;
  v6[1] = sub_1B3FAB5F4;

  return v8(a2, a3);
}

uint64_t sub_1B3FAB5F4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_1_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_19();
  *v5 = v4;
  *(v6 + 64) = v0;

  v8 = sub_1B405D744();
  if (v0)
  {
    v9 = sub_1B3FAB7BC;
  }

  else
  {
    v9 = sub_1B3FAB738;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1B3FAB738()
{
  OUTLINED_FUNCTION_5();

  v0 = OUTLINED_FUNCTION_21();
  v1(v0);
  OUTLINED_FUNCTION_3_10();

  return v2();
}

uint64_t sub_1B3FAB7BC()
{
  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_3_10();

  return v0();
}

uint64_t sub_1B3FAB818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v8[8] = *(v14 + 8);
  v8[9] = swift_getAssociatedTypeWitness();
  v8[10] = swift_task_alloc();
  v8[11] = *(v13 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  sub_1B405D784();
  v8[14] = sub_1B405D774();
  v10 = sub_1B405D744();
  v8[15] = v10;
  v8[16] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B3FAB968, v10, v9);
}

uint64_t sub_1B3FAB968()
{
  v29 = v0;
  if (qword_1EB87B798 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v1 = v0[11];
  v2 = sub_1B405D0F4();
  v0[17] = __swift_project_value_buffer(v2, qword_1EB87C130);
  v0[18] = *(v1 + 16);
  v0[19] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  OUTLINED_FUNCTION_17_0();
  v3();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v4 = sub_1B405D0D4();
  v5 = sub_1B405D9A4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  v8 = v0[11];
  if (v6)
  {
    v9 = v0[10];
    v11 = v0[2];
    v10 = v0[3];
    v12 = swift_slowAlloc();
    v28 = OUTLINED_FUNCTION_25_0();
    v16 = OUTLINED_FUNCTION_24_0(4.8151e-34, v28, v13, v14, v15);
    OUTLINED_FUNCTION_13_1(v16);
    sub_1B405D464();
    v17 = OUTLINED_FUNCTION_14_1();
    v11(v17);
    v18 = sub_1B3F95078(v9, v10, &v28);

    *(v12 + 14) = v18;
    OUTLINED_FUNCTION_20_0();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_3();
  }

  else
  {
    v24 = v0[7];

    v11 = *(v8 + 8);
    (v11)(v7, v24);
  }

  v0[20] = v11;
  v27 = (v0[5] + *v0[5]);
  v25 = swift_task_alloc();
  v0[21] = v25;
  *v25 = v0;
  v25[1] = sub_1B3FABBF8;

  return v27();
}

uint64_t sub_1B3FABBF8()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_1_10();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_1B3FABDA0;
  }

  else
  {
    v7 = sub_1B3FABD2C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B3FABD2C()
{
  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_3_10();

  return v0();
}

uint64_t sub_1B3FABDA0()
{
  v34 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 96);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);

  v2(v3, v5, v4);
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v6 = v1;
  v7 = sub_1B405D0D4();
  LOBYTE(v5) = sub_1B405D9B4();

  if (os_log_type_enabled(v7, v5))
  {
    v31 = *(v0 + 160);
    v32 = *(v0 + 176);
    v8 = *(v0 + 96);
    v9 = *(v0 + 56);
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = OUTLINED_FUNCTION_25_0();
    *v12 = 136315650;
    v14 = sub_1B3F95078(v11, v10, &v33);
    OUTLINED_FUNCTION_16_0(v14);
    sub_1B405DBE4();
    v15 = sub_1B405D464();
    v17 = v16;
    v31(v8, v9);
    v18 = sub_1B3F95078(v15, v17, &v33);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2112;
    v19 = v32;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v20;
    *v13 = v20;
    OUTLINED_FUNCTION_20_0();
    _os_log_impl(v21, v22, v23, v24, v25, 0x20u);
    sub_1B3FAD330(v13, &qword_1EB87C158);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_3();
  }

  else
  {
    v26 = *(v0 + 160);
    v27 = *(v0 + 96);
    v28 = *(v0 + 56);

    v26(v27, v28);
  }

  OUTLINED_FUNCTION_3_10();

  return v29();
}

Swift::Void __swiftcall PhotosDraftClosePermission.fulfilled()()
{
  _s18PhotosUIFoundation0A20DraftClosePermissionC9cancelledyyF_0();
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  sub_1B3FAC13C(sub_1B3FAC134, v2);
}

void _s18PhotosUIFoundation0A20DraftClosePermissionC9cancelledyyF_0()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 20));
  *(v1 + 16) = 1;

  os_unfair_lock_unlock((v1 + 20));
}

void *sub_1B3FAC0DC(void *a1, char a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v6 = a2;
  return sub_1B3FAB2EC(&v6, v3, v4);
}

void sub_1B3FAC13C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C2B0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17[-v8];
  v10 = [objc_opt_self() isMainThread];
  if (v10)
  {
    v12 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](v10, v11);
    *&v17[-16] = a1;
    *&v17[-8] = a2;
    os_unfair_lock_lock(v12 + 14);
    sub_1B3FAD01C(&v12[4]);
    os_unfair_lock_unlock(v12 + 14);
  }

  else
  {
    v13 = sub_1B405D7A4();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v13);
    sub_1B405D784();

    v14 = sub_1B405D774();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v3;
    v15[5] = a1;
    v15[6] = a2;
    sub_1B3FB97F8(0, 0, v9, &unk_1B4071030, v15);
  }
}

uint64_t sub_1B3FAC2FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_1B3FAC340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_1B405D784();
  v6[6] = sub_1B405D774();
  v8 = sub_1B405D744();

  return MEMORY[0x1EEE6DFA0](sub_1B3FAC3DC, v8, v7);
}

uint64_t sub_1B3FAC3DC()
{
  v1 = *(v0 + 24);
  v5 = *(v0 + 32);

  v2 = *(v1 + 16);
  *(swift_task_alloc() + 16) = v5;
  os_unfair_lock_lock(v2 + 14);
  sub_1B3FAD0F8(&v2[4]);
  os_unfair_lock_unlock(v2 + 14);

  OUTLINED_FUNCTION_3_10();

  return v3();
}

uint64_t sub_1B3FAC4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B405D784();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  return sub_1B3FA9454(a4, v9);
}

uint64_t sub_1B3FAC548(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  sub_1B3FAD098(a3, v5);
  a1(v5);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t PhotosDraftClosePermission.deinit()
{
  v1 = v0;
  v2 = *(v0 + 32);

  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  if ((v3 & 1) == 0)
  {
    if (qword_1EB87B798 != -1)
    {
      OUTLINED_FUNCTION_0_21();
    }

    v4 = sub_1B405D0F4();
    __swift_project_value_buffer(v4, qword_1EB87C130);
    v5 = sub_1B405D0D4();
    v6 = sub_1B405D9B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1B3F95078(0xD00000000000001ELL, 0x80000001B40762C0, &v10);
      _os_log_impl(&dword_1B3F73000, v5, v6, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_1_0();
    }
  }

  return v1;
}

uint64_t PhotosDraftClosePermission.__deallocating_deinit()
{
  PhotosDraftClosePermission.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1B3FAC738()
{
  v0 = sub_1B405D0F4();
  __swift_allocate_value_buffer(v0, qword_1EB87C130);
  __swift_project_value_buffer(v0, qword_1EB87C130);
  sub_1B405D4B4();
  return sub_1B405D0E4();
}

unint64_t sub_1B3FAC7B8()
{
  result = qword_1EB87C150;
  if (!qword_1EB87C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C150);
  }

  return result;
}

uint64_t dispatch thunk of PhotosDraft.presentSaveConfirmation(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 24) + **(a4 + 24));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_2_15(v8);
  *v9 = v10;
  v9[1] = sub_1B3FAC94C;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1B3FAC94C()
{
  OUTLINED_FUNCTION_2_8();
  v1 = *v0;
  OUTLINED_FUNCTION_1_19();
  *v2 = v1;

  OUTLINED_FUNCTION_3_10();

  return v3();
}

uint64_t dispatch thunk of PhotosDraft.save(with:)()
{
  OUTLINED_FUNCTION_8_2();
  v4 = (*(v1 + 32) + **(v1 + 32));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1B3FAD754;
  OUTLINED_FUNCTION_17_0();

  return v4();
}

uint64_t dispatch thunk of PhotosDraft.discard()()
{
  OUTLINED_FUNCTION_8_2();
  v5 = (*(v1 + 40) + **(v1 + 40));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1B3FAD754;
  v3 = OUTLINED_FUNCTION_21();

  return v5(v3);
}

uint64_t getEnumTagSinglePayload for PhotosDraftState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosDraftState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosUIFoundation0A29DraftSaveConfirmationResponseO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1B3FACE7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B3FACED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_1B3FACF34(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B3FACF70()
{
  OUTLINED_FUNCTION_8_2();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  v3[1] = sub_1B3FAC94C;
  OUTLINED_FUNCTION_15_1();

  return sub_1B3FAC340(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_1B3FAD098(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_15();
  (*v3)(a2);
  return a2;
}

uint64_t sub_1B3FAD12C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2_15(v4);
  *v5 = v6;
  v5[1] = sub_1B3FAD754;

  return sub_1B3FAB4AC(v0 + v3, v1, v2);
}

uint64_t sub_1B3FAD1F8()
{
  OUTLINED_FUNCTION_0_0();
  v4 = (v0 + ((*(v3 + 64) + ((*(v2 + 80) + 64) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B3FAD754;
  OUTLINED_FUNCTION_15_1();

  return sub_1B3FAB818(v8, v9, v10, v11, v12, v13, v5, v6);
}

uint64_t sub_1B3FAD330(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_15();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B3FAD38C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v18 - v13;
  (*(v8 + 32))(&v18 - v13);
  v15 = swift_allocObject();
  (*(v8 + 16))(v11, v14, a4);
  v16 = sub_1B3FAD4EC(v11, a2, v15, a4, a5);
  (*(v8 + 8))(v14, a4);
  return v16;
}

uint64_t sub_1B3FAD4EC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v19 - v14;
  (*(v9 + 32))(&v19 - v14);
  LOBYTE(a2) = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BD38);
  v16 = swift_allocObject();
  *(v16 + 20) = 0;
  *(v16 + 16) = 0;
  *(a3 + 32) = v16;
  (*(v9 + 16))(v12, v15, a4);
  v17 = sub_1B3FAD668(v12, a4, a5);
  (*(v9 + 8))(v15, a4);
  *(a3 + 16) = v17;
  *(a3 + 24) = a2;
  return a3;
}

uint64_t sub_1B3FAD668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = a2;
  v8[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C160);
  v6 = swift_allocObject();
  *(v6 + 56) = 0;
  sub_1B3FAD098(v8, v6 + 16);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

void *sub_1B3FAD710@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;
  return v2;
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_slowAlloc();
}

uint64_t sub_1B3FAD7F4()
{
  type metadata accessor for SettingsLoader();
  v0 = swift_allocObject();
  result = SettingsLoader.init(suiteName:)(0, 0);
  qword_1EB883D18 = v0;
  return result;
}

uint64_t SettingsLoader.__allocating_init(suiteName:)()
{
  OUTLINED_FUNCTION_3_11();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_21();
  SettingsLoader.init(suiteName:)(v1, v2);
  return v0;
}

uint64_t sub_1B3FAD87C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C190);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  off_1EB87A0B0 = result;
  return result;
}

uint64_t SettingsLoader.__allocating_init(inMemory:)(uint64_t a1)
{
  OUTLINED_FUNCTION_3_11();
  v2 = swift_allocObject();
  SettingsLoader.init(inMemory:)(a1);
  return v2;
}

uint64_t SettingsLoader.init(inMemory:)(uint64_t a1)
{
  *(v1 + 40) = [objc_allocWithZone(type metadata accessor for UserDefaultsObserver()) init];
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  return v1;
}

uint64_t SettingsLoader.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = [objc_allocWithZone(type metadata accessor for UserDefaultsObserver()) init];
  if (PFOSVariantHasInternalUI() && PFOSVariantHasInternalDiagnostics() && (PFIsCamera() & 1) == 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
    *(v2 + 32) = 0;
  }

  else
  {

    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 2;
  }

  return v2;
}

uint64_t sub_1B3FAD9EC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (qword_1EB87A0A8 != -1)
    {
      swift_once();
    }

    v3 = off_1EB87A0B0;
    os_unfair_lock_lock(off_1EB87A0B0 + 8);
    a1 = *(v3 + 2);
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    os_unfair_lock_unlock(v3 + 8);
  }

  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  return a1;
}

id sub_1B3FADA84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    objc_allocWithZone(MEMORY[0x1E695E000]);
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    result = sub_1B3FB09C4(a1, a2);
    if (!result)
    {
      __break(1u);
    }
  }

  else
  {
    v5 = [objc_opt_self() standardUserDefaults];

    return v5;
  }

  return result;
}

uint64_t sub_1B3FADB18@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v9 = v8;
  v60 = a5;
  LODWORD(v59) = a4;
  v65 = a1;
  v66 = a2;
  v67 = a8;
  sub_1B405D094();
  OUTLINED_FUNCTION_0_12();
  v63 = v14;
  v64 = v13;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v55 - v20;
  v22 = sub_1B405D0F4();
  OUTLINED_FUNCTION_0_12();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B405D0C4();
  OUTLINED_FUNCTION_0_12();
  v61 = v30;
  v62 = v29;
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a3;
  if (*(v9 + 32) == 2 && *(v9 + 16) == 0 || !PFOSVariantHasInternalUI() || !PFOSVariantHasInternalDiagnostics() || (PFIsCamera() & 1) != 0)
  {
    return (*(a7 + 48))(a6, a7);
  }

  v58 = v34;
  if (qword_1EB879FB0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
  }

  v36 = __swift_project_value_buffer(v22, qword_1EB883CF8);
  (*(v24 + 16))(v28, v36, v22);
  sub_1B405D0A4();
  sub_1B405D0B4();
  sub_1B405D074();
  v37 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  v68 = v56;
  *&v38 = 136315138;
  v57 = v38;
  *v37 = 136315138;
  *(v37 + 4) = sub_1B3F95078(v65, v66, &v68);
  v39 = sub_1B405D0B4();
  v40 = sub_1B405DA54();
  v41 = sub_1B405D084();
  _os_signpost_emit_with_name_impl(&dword_1B3F73000, v39, v40, v41, "InternalSettingsValueLoad", "InternalSettings-%s", v37, 0xCu);
  v42 = sub_1B3FAE004(a6, v65, v66, v59 & 1, a6, a7);
  v43 = sub_1B405DA44();
  v44 = sub_1B405D084();
  _os_signpost_emit_with_name_impl(&dword_1B3F73000, v39, v43, v44, "InternalSettingsValueLoad", "InternalSettings-%s", v37, 0xCu);

  __swift_destroy_boxed_opaque_existential_1(v56);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_0();
  sub_1B405D0B4();
  v45 = sub_1B405D074();
  v59 = &v55;
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v55 - 8) = a6;
  *(&v55 - 7) = a7;
  v48 = v65;
  v47 = v66;
  *(&v55 - 6) = v65;
  *(&v55 - 5) = v47;
  v49 = v60;
  *(&v55 - 4) = v42;
  *(&v55 - 3) = v49;
  v50 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v68 = v51;
  *v50 = v57;
  *(v50 + 4) = sub_1B3F95078(v48, v47, &v68);
  v54 = a6;
  sub_1B3FB0A28(v50, 0xCu, v33, v18, "InternalSettingsDecodeAndValidate", "InternalSettings-%s", sub_1B3FB0E0C);
  __swift_destroy_boxed_opaque_existential_1(v51);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_0();

  v52 = v64;
  v53 = *(v63 + 8);
  v53(v18, v64);
  v53(v21, v52);
  return (*(v61 + 8))(v33, v62);
}

uint64_t sub_1B3FAE004(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C2B0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v70 - v15;
  if (PFOSVariantHasInternalUI() && PFOSVariantHasInternalDiagnostics() && (PFIsCamera() & 1) == 0)
  {
    v74 = a2;
    v18 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (*(v6 + 32))
    {
      if (*(v6 + 32) == 1)
      {
        v20 = *(v18 + 16);

        os_unfair_lock_lock((v20 + 24));
        v21 = *(v20 + 16);
        _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
        os_unfair_lock_unlock((v20 + 24));
        if (!v21)
        {
          v21 = sub_1B405D2A4();
        }

        sub_1B3FB05F0(v18, v19, 1);
      }

      else
      {
        v21 = sub_1B405D2A4();
      }

LABEL_18:
      sub_1B3F8148C(0x6F69737265765F5FLL, 0xE90000000000006ELL, v21, &v76);
      if (*(&v77 + 1))
      {
        v36 = swift_dynamicCast();
        if (v36)
        {
          v37 = v75;
        }

        else
        {
          v37 = 0;
        }

        v38 = v36 ^ 1;
      }

      else
      {
        sub_1B3F791B4(&v76);
        v37 = 0;
        v38 = 1;
      }

      v39 = (*(a6 + 32))(a5, a6);
      if ((v40 & 1) == 0)
      {
        v41 = v39;
        if (qword_1EB879FB0 != -1)
        {
          swift_once();
        }

        v42 = sub_1B405D0F4();
        __swift_project_value_buffer(v42, qword_1EB883CF8);
        *&v76 = 0;
        *(&v76 + 1) = 0xE000000000000000;
        sub_1B405DBC4();

        *&v76 = 0xD000000000000021;
        *(&v76 + 1) = 0x80000001B40765B0;
        MEMORY[0x1B8C6F500](v74, a3);
        v43 = *(&v76 + 1);
        v44 = "PXUserInterfaceStyle" + 16;
        if (v41 < 0)
        {
          v73 = v76;
          _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
          v45 = sub_1B405D0D4();
          v46 = sub_1B405D9B4();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v72 = v37;
            v48 = v47;
            v49 = swift_slowAlloc();
            *&v76 = v49;
            *v48 = 136315138;
            *(v48 + 4) = sub_1B3F95078(v73, v43, &v76);
            v50 = v46;
            v44 = "PXUserInterfaceStyle" + 16;
            _os_log_impl(&dword_1B3F73000, v45, v50, "%s", v48, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v49);
            MEMORY[0x1B8C71C00](v49, -1, -1);
            v51 = v48;
            v37 = v72;
            MEMORY[0x1B8C71C00](v51, -1, -1);
          }

          else
          {

            v44 = "tyle";
          }
        }

        else
        {
        }

        if (v38)
        {
          if (v41 == 0x8000000000000000)
          {
            goto LABEL_39;
          }
        }

        else if (v37 >= v41)
        {
          goto LABEL_39;
        }

        _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
        v52 = sub_1B405D0D4();
        v53 = sub_1B405D9D4();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *&v76 = v55;
          *v54 = *(v44 + 362);
          *(v54 + 4) = sub_1B3F95078(v74, a3, &v76);
          _os_log_impl(&dword_1B3F73000, v52, v53, "Saved values for %s are behind the current version. Using defaults", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v55);
          MEMORY[0x1B8C71C00](v55, -1, -1);
          MEMORY[0x1B8C71C00](v54, -1, -1);
        }

        v56 = sub_1B405D2A4();

        v21 = v56;
      }

LABEL_39:
      if (qword_1EB87A090 == -1)
      {
        goto LABEL_40;
      }

      while (1)
      {
        swift_once();
LABEL_40:
        v57 = qword_1EB883D10;
        v58 = qword_1EB883D10 + 56;
        v59 = 1 << *(qword_1EB883D10 + 32);
        v60 = -1;
        if (v59 < 64)
        {
          v60 = ~(-1 << v59);
        }

        v61 = v60 & *(qword_1EB883D10 + 56);
        v62 = (v59 + 63) >> 6;
        _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
        v63 = 0;
        while (v61)
        {
LABEL_47:
          v65 = (*(v57 + 48) + ((v63 << 10) | (16 * __clz(__rbit64(v61)))));
          v66 = *v65;
          v67 = v65[1];
          _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
          v68 = sub_1B3FA4614(v66, v67);
          LOBYTE(v66) = v69;

          if (v66)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v75 = v21;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BFF0);
            sub_1B405DD54();
            v21 = v75;

            sub_1B3F7AC48((*(v21 + 56) + 32 * v68), &v76);
            sub_1B405DD64();
          }

          else
          {
            v76 = 0u;
            v77 = 0u;
          }

          v61 &= v61 - 1;
          sub_1B3F791B4(&v76);
        }

        while (1)
        {
          v64 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            break;
          }

          if (v64 >= v62)
          {

            return v21;
          }

          v61 = *(v58 + 8 * v64);
          ++v63;
          if (v61)
          {
            v63 = v64;
            goto LABEL_47;
          }
        }

        __break(1u);
      }
    }

    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    v22 = sub_1B3FAD9EC(v18, v19);
    v71 = a3;
    v23 = v22;
    v25 = v24;
    sub_1B3FB05F0(v18, v19, 0);
    v70 = v23;
    v26 = v23;
    a3 = v71;
    v73 = v25;
    v27 = sub_1B3FADA84(v26, v25);
    v28 = v74;
    v29 = sub_1B405D414();
    v72 = v27;
    v30 = [v27 dictionaryForKey_];

    if (v30)
    {
      v21 = sub_1B405D274();

      if (a4)
      {
LABEL_14:
        v31 = sub_1B405D7A4();
        __swift_storeEnumTagSinglePayload(v16, 1, 1, v31);
        sub_1B405D784();

        _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
        v32 = sub_1B405D774();
        v33 = swift_allocObject();
        v34 = MEMORY[0x1E69E85E0];
        v33[2] = v32;
        v33[3] = v34;
        v33[4] = a5;
        v33[5] = a6;
        v35 = v70;
        v33[6] = v7;
        v33[7] = v35;
        v33[8] = v73;
        v33[9] = v28;
        v33[10] = a3;
        sub_1B3FB97F8(0, 0, v16, &unk_1B4071250, v33);

        goto LABEL_18;
      }
    }

    else
    {
      v21 = sub_1B405D2A4();
      if (a4)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_18;
  }

  return sub_1B405D2A4();
}

uint64_t sub_1B3FAE8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for SettingsGroupDecoder();
  swift_allocObject();
  SettingsGroupDecoder.init()();
  SettingsGroupDecoder.decodeSettings<A>(ofType:groupName:overrides:fallbackSettings:)(a1, a2, a3, a4, a6, a7);

  if (a5)
  {
    v15 = type metadata accessor for SettingsValidationStore();
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    SettingsValidationStore.validate(_:fallback:)(a7, a4, v15);
  }

  return result;
}

uint64_t sub_1B3FAE9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v13;
  v8[8] = v14;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_1B405D784();
  v8[9] = sub_1B405D774();
  v10 = sub_1B405D744();

  return MEMORY[0x1EEE6DFA0](sub_1B3FAEA4C, v10, v9);
}

uint64_t sub_1B3FAEA4C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v8 = *(v0 + 56);

  v5 = swift_allocObject();
  *(v5 + 16) = v8;
  sub_1B3FAEB30(v4, v3, v1, v2, sub_1B3FB1018, v5);

  v6 = *(v0 + 8);

  return v6();
}

void sub_1B3FAEB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = OBJC_IVAR____TtC18PhotosUIFoundationP33_5CEE39672A5892330B9CB7D6693D04B020UserDefaultsObserver_observedDefaults;
  swift_beginAccess();
  v15 = sub_1B3FA4050(a1, a2, *(v6 + v14));
  if (v15)
  {
    v16 = v15;
    swift_endAccess();
    v17 = v16;
  }

  else
  {
    swift_endAccess();
    type metadata accessor for SettingsLoader();
    v18 = sub_1B3FADA84(a1, a2);
    swift_beginAccess();
    v17 = v18;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v7 + v14);
    sub_1B3FA4C5C(v17, a1, a2);
    *(v7 + v14) = v23;
    swift_endAccess();
    v16 = 0;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  v20 = OBJC_IVAR____TtC18PhotosUIFoundationP33_5CEE39672A5892330B9CB7D6693D04B020UserDefaultsObserver_callbackByKey;
  swift_beginAccess();
  v21 = v16;

  swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v7 + v20);
  sub_1B3FA4B24(sub_1B3FB1040, v19, a3, a4);
  *(v7 + v20) = v24;
  swift_endAccess();
  v22 = sub_1B405D414();
  if (qword_1EB87A060 != -1)
  {
    swift_once();
  }

  [v17 addObserver:v7 forKeyPath:v22 options:3 context:{qword_1EB87A068, v24}];
}

Swift::OpaquePointer_optional __swiftcall SettingsInMemoryLoader.getValues()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  os_unfair_lock_unlock((v1 + 24));
  v4 = v2;
  result.value._rawValue = v4;
  result.is_nil = v3;
  return result;
}

void sub_1B3FAED90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v35, a2, a3);

  if (PFOSVariantHasInternalUI() && PFOSVariantHasInternalDiagnostics() && (PFIsCamera() & 1) == 0)
  {
    type metadata accessor for SettingsGroupEncoder();
    swift_allocObject();
    SettingsGroupEncoder.init()();
    v15 = SettingsGroupEncoder.encode<A>(_:)(a1, a2);

    if (*(v15 + 16))
    {
      v16 = (*(a3 + 32))(a2, a3);
      if (v17)
      {
        v18 = sub_1B3FA4614(0x6F69737265765F5FLL, 0xE90000000000006ELL);
        if (v19)
        {
          v20 = v18;
          swift_isUniquelyReferenced_nonNull_native();
          *&v34[0] = v15;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BFF0);
          sub_1B405DD54();

          sub_1B3F7AC48((*(v15 + 56) + 32 * v20), &v35);
          sub_1B405DD64();
        }

        else
        {
          v35 = 0u;
          v36 = 0u;
        }

        sub_1B3F791B4(&v35);
      }

      else
      {
        *(&v36 + 1) = MEMORY[0x1E69E6530];
        *&v35 = v16;
        sub_1B3F7AC48(&v35, v34);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1B3FA4A04(v34, 0x6F69737265765F5FLL, 0xE90000000000006ELL);
      }
    }

    else
    {

      v15 = 0;
    }

    v21 = *(v3 + 16);
    v22 = *(v3 + 24);
    if (*(v3 + 32))
    {
      if (*(v3 + 32) == 1)
      {

        MEMORY[0x1EEE9AC00](v23, v24);
        SettingsInMemoryLoader.updateValues<A>(ofSettings:changes:)();

        sub_1B3FB05F0(v21, v22, 1);
      }

      else
      {
      }
    }

    else
    {
      _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
      v25 = OUTLINED_FUNCTION_21();
      sub_1B3FAF2A8(v25, v26);
      v27 = sub_1B3FAD9EC(v21, v22);
      v29 = v28;
      sub_1B3FB05F0(v21, v22, 0);
      v30 = sub_1B3FADA84(v27, v29);

      if (v15)
      {
        v31 = sub_1B405D264();
      }

      else
      {
        v31 = 0;
      }

      OUTLINED_FUNCTION_21();
      v32 = sub_1B405D414();

      [v30 setObject:v31 forKey:v32];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1EB879FB0 != -1)
    {
      OUTLINED_FUNCTION_0_22();
    }

    v7 = sub_1B405D0F4();
    __swift_project_value_buffer(v7, qword_1EB883CF8);
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    v33 = sub_1B405D0D4();
    v8 = sub_1B405D9C4();

    if (os_log_type_enabled(v33, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v35 = v10;
      *v9 = 136315138;
      v11 = OUTLINED_FUNCTION_21();
      v14 = sub_1B3F95078(v11, v12, v13);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1B3F73000, v33, v8, "Attempt to save settings for %s when saving is unavailable", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    else
    {
    }
  }
}

uint64_t sub_1B3FAF2A8(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v31 = sub_1B405D1B4();
  v34 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B405D1D4();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B405D1F4();
  v30 = v10;
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v27 - v17;
  swift_beginAccess();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v19 = v28;
  sub_1B3FCDB98(&v36, v28, a2);
  swift_endAccess();

  sub_1B3F8A5BC(0, &qword_1EB87A9D8);
  v29 = sub_1B405DA14();
  sub_1B405D1E4();
  sub_1B405D214();
  v20 = *(v11 + 8);
  v20(v15, v10);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v19;
  v22[4] = a2;
  aBlock[4] = sub_1B3FB1078;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B3F934F0;
  aBlock[3] = &block_descriptor_33_0;
  v23 = _Block_copy(aBlock);
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

  sub_1B405D1C4();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1B3FB097C(qword_1EB87AA10, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BB48);
  sub_1B3F9358C();
  v24 = v31;
  sub_1B405DB24();
  v25 = v29;
  MEMORY[0x1B8C6FA50](v18, v9, v5, v23);
  _Block_release(v23);

  (*(v34 + 8))(v5, v24);
  (*(v32 + 8))(v9, v33);
  v20(v18, v30);
}

uint64_t sub_1B3FAF6E4(void *a1, uint64_t a2)
{

  *a1 = a2;

  return _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
}

uint64_t SettingsInMemoryLoader.updateValues<A>(ofSettings:changes:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1B3FB05C0();
  os_unfair_lock_unlock(v1 + 6);
  return static SettingsGroup.settingsDidChangeExternally()();
}

uint64_t SettingsLoader.deinit()
{
  sub_1B3FB05F0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t SettingsLoader.__deallocating_deinit()
{
  SettingsLoader.deinit();
  v0 = OUTLINED_FUNCTION_3_11();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B3FAF7F4()
{
  result = swift_slowAlloc();
  qword_1EB87A068 = result;
  return result;
}

void sub_1B3FAF81C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC18PhotosUIFoundationP33_5CEE39672A5892330B9CB7D6693D04B020UserDefaultsObserver_locallySavingKeys;
    swift_beginAccess();
    v8 = *&v6[v7];
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    v9 = sub_1B3FCC450(a2, a3, v8);

    if (v9)
    {
      if (qword_1EB879FB0 != -1)
      {
        swift_once();
      }

      v10 = sub_1B405D0F4();
      __swift_project_value_buffer(v10, qword_1EB883CF8);
      _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
      v11 = sub_1B405D0D4();
      v12 = sub_1B405D9B4();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15[0] = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_1B3F95078(a2, a3, v15);
        _os_log_impl(&dword_1B3F73000, v11, v12, "Local save wasn't observed in time for SettingsGroup %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x1B8C71C00](v14, -1, -1);
        MEMORY[0x1B8C71C00](v13, -1, -1);
      }

      swift_beginAccess();
      sub_1B3FB0B2C(a2, a3);
      swift_endAccess();
    }

    else
    {
    }
  }
}