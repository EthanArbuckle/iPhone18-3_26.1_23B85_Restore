BOOL SVContentSizeCategoryIsEqualToContentSizeCategory(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = UIContentSizeCategoryCompareToCategory(v3, v4) == NSOrderedSame;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_266097AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26609858C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SVBundle()
{
  if (SVBundle_onceToken != -1)
  {
    SVBundle_cold_1();
  }

  v1 = SVBundle___SVBundle;

  return v1;
}

uint64_t __SVBundle_block_invoke()
{
  SVBundle___SVBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void sub_2660989BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_266098D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26609B470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26609B744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26609BA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26609BCC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26609CA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26609CE24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_26609ED0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26609EEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26609F1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose((v15 - 88), 8);
  _Unwind_Resume(a1);
}

void sub_2660A0224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2660A14F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_2660A22D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2660A246C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t VideoPlayerState.isFullScreen.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_2660A6110();
  sub_2660A7058();

  v1 = OBJC_IVAR___SVVideoPlayerState__isFullScreen;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t VideoPlayerState.isFullScreen.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR___SVVideoPlayerState__isFullScreen;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_2660A6110();
    sub_2660A7048();
  }

  return result;
}

uint64_t sub_2660A6054@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2660A6110();
  sub_2660A7058();

  v4 = OBJC_IVAR___SVVideoPlayerState__isFullScreen;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

unint64_t sub_2660A6110()
{
  result = qword_28005BB78;
  if (!qword_28005BB78)
  {
    type metadata accessor for VideoPlayerState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005BB78);
  }

  return result;
}

uint64_t type metadata accessor for VideoPlayerState()
{
  result = qword_28005BB88;
  if (!qword_28005BB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2660A61B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR___SVVideoPlayerState__isFullScreen;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*VideoPlayerState.isFullScreen.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR___SVVideoPlayerState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2660A6110();
  sub_2660A7058();

  *v4 = v1;
  swift_getKeyPath();
  sub_2660A7078();

  swift_beginAccess();
  return sub_2660A6328;
}

void sub_2660A6328(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_2660A7068();

  free(v1);
}

double VideoPlayerState.customControlHeight.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_2660A6110();
  sub_2660A7058();

  v1 = OBJC_IVAR___SVVideoPlayerState__isFullScreen;
  swift_beginAccess();
  result = 32.0;
  if (*(v3 + v1))
  {
    return 44.0;
  }

  return result;
}

id VideoPlayerState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoPlayerState.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR___SVVideoPlayerState__isFullScreen] = 0;
  sub_2660A7088();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id VideoPlayerState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2660A66AC()
{
  result = sub_2660A7098();
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

Swift::Void __swiftcall UIView.setPlayButtonBackground(fallBackColor:)(UIColor fallBackColor)
{
  v3 = sub_2660A7108();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v14[-1] - v10;
  MEMORY[0x28223BE20](v9);
  if (sub_2660A7138())
  {
    [v1 setOverrideUserInterfaceStyle_];
    sub_2660A70D8();
    sub_2660A70E8();
    v12 = *(v4 + 8);
    v12(v8, v3);
    sub_2660A70C8();
    v12(v11, v3);
    v14[3] = sub_2660A7118();
    v14[4] = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_2660A7128();
    sub_2660A7178();
  }

  else
  {

    [v1 setBackgroundColor_];
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_2660A6988(void *a1, uint64_t a2, void *a3)
{
  sub_2660A7168();
  sub_2660A7158();
  sub_2660A7148();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = a1;
  UIView.setPlayButtonBackground(fallBackColor:)(v5);
}

Swift::Void __swiftcall UIView.setGlassBackground()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BB98, &qword_2660A9938);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16[-1] - v2;
  v4 = sub_2660A7108();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v16[-1] - v11;
  MEMORY[0x28223BE20](v10);
  sub_2660A70F8();
  sub_2660A70E8();
  v13 = *(v5 + 8);
  v13(v9, v4);
  sub_2660A70C8();
  v13(v12, v4);
  v16[3] = sub_2660A7118();
  v16[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_2660A7128();
  sub_2660A7178();
  sub_2660A70A8();
  v14 = sub_2660A70B8();
  (*(*(v14 - 8) + 56))(v3, 0, 1, v14);
  sub_2660A7188();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_2660A6CC0(void *a1)
{
  sub_2660A7168();
  sub_2660A7158();
  sub_2660A7148();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  UIView.setGlassBackground()();
}