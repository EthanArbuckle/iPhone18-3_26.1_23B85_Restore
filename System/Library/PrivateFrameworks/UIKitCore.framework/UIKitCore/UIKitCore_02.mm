BOOL _UILabelShouldReverseNaturalAlignment(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [UIView userInterfaceLayoutDirectionForSemanticContentAttribute:a2];
  if (v4 == [UIApp userInterfaceLayoutDirection])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 paragraphStyle];
    v5 = [v6 alignment] == 4;
  }

  return v5;
}

void UICeilToViewScale(void *a1)
{
  [a1 _currentScreenScale];
  if (v1 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }
}

uint64_t sub_188A6D088(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v12 = sub_188E3FE50;
  }

  else
  {
    v12 = signpost_c2_entryLock_start;
    v11 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a5;
  v15[4] = a6;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  sub_188A52E38(a3);

  sub_188A52E38(a5);
  if (v16)
  {
    [v16 response];
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_188EB2CAC;
  *(v19 + 24) = v13;
  v32 = sub_188E5C7F8;
  v33 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_188A4A968;
  v31 = &block_descriptor_232;
  v20 = _Block_copy(&aBlock);

  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  *(v21 + 24) = a1;
  *(v21 + 32) = a2 & 1;
  *(v21 + 33) = a2 & 1;
  *(v21 + 40) = signpost_c2_entryLock_start;
  *(v21 + 48) = 0;
  v32 = sub_188A6D624;
  v33 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_188A4A8F0;
  v31 = &block_descriptor_238;
  v22 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  v32 = sub_188E5C82C;
  v33 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_188ABD010;
  v31 = &block_descriptor_241;
  v23 = _Block_copy(&aBlock);

  [ObjCClassFromMetadata _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];

  _Block_release(v23);
  _Block_release(v22);
  _Block_release(v20);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188A6D450()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_188A6D4BC(uint64_t a1, uint64_t a2, char a3, char a4, void (*a5)(uint64_t))
{
  _s23InProcessAnimationStateCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [(UIViewAnimationState *)ObjCClassFromMetadata pushViewAnimationState:0 options:0 context:?];
  v11 = __currentViewAnimationState;
  if (__currentViewAnimationState)
  {
    v12 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v13 = *(a1 + 16);
    *(a1 + 16) = v12;
    v14 = v11;

    v18 = &_s6GetterVN_2;
    v19 = &off_1EFAC58B0;
    v16 = a2;
    v17 = a3 & 1;
    v15 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_188A4B4F4(&v16, v12 + v15, &qword_1EA935C90);
    swift_endAccess();
    *(v12 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive) = a4 & 1;
    a5(v12);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_188A6D678()
{
  result = qword_1ED48F5C8[0];
  if (!qword_1ED48F5C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED48F5C8);
  }

  return result;
}

uint64_t sub_188A6D6CC(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(*(v3 + 48) + 16) && (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) != 0))
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940D60);
    v10 = swift_dynamicCastClassUnconditional();
    sub_188A34360(&qword_1ED48FC50, &unk_1EA940D60);
    swift_unknownObjectRetain();
  }

  else
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = 0.0;
    if (Strong)
    {
      v13 = Strong;
      if (a1)
      {
        v14 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v14 = [Strong layer];
      }

      v15 = v14;

      v16 = sub_18A4A7258();
      v17 = [v15 valueForKeyPath_];

      if (v17)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v30, 0, 32);
      }

      sub_188A3F29C(v30, &v28, &qword_1EA934050);
      if (v29)
      {
        sub_188A55538(&v28, v27);
        sub_188A55598(v27, v26);
        sub_188A55598(v26, v25);
        sub_188A34624(0, &qword_1ED48FD80);
        swift_dynamicCast();
        [v24 doubleValue];
        v12 = v18;

        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
      }

      sub_188A3F5FC(v30, &qword_1EA934050);
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = a1 & 1;
    *(v21 + 32) = a2;
    *(v21 + 40) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940D60);
    swift_allocObject();

    v10 = sub_188A6DB18(v19, sub_188ABE6C0, v21, v12);

    *(v10 + 152) = 1;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v28 = *(v4 + 48);
    *(v4 + 48) = 0x8000000000000000;
    sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, &v28, &qword_1ED48FC50, &unk_1EA940D60);

    *(v4 + 48) = v28;
    swift_endAccess();
    sub_188A34360(&qword_1ED48FC50, &unk_1EA940D60);
  }

  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

uint64_t sub_188A6DADC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188A6DB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v25 = a7;
  v26 = a8;
  v10 = v8;
  v27 = a1;
  v14 = sub_18A4A7A58();
  v23 = *(v14 - 8);
  v24 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18A4A6E58();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_18A4A7A38();
  MEMORY[0x1EEE9AC00](v18 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = 0;
  *(v10 + 32) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7E0);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = 0;
  *(v10 + 40) = v20;
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
  *(v10 + 64) = 0;
  *(v10 + 72) = 1;
  swift_unknownObjectWeakInit();
  v30 = 1;
  v29 = 1;
  v28 = 1;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 1;
  *(v10 + 112) = 0;
  *(v10 + 120) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 1;
  swift_unknownObjectWeakInit();
  *(v10 + 168) = 0;
  *(v10 + 176) = a2;
  *(v10 + 184) = a3;
  sub_188A5E418();

  sub_18A4A7A28();
  sub_18A4A6E38();
  (*(v23 + 104))(v16, *MEMORY[0x1E69E8090], v24);
  *(v10 + 16) = sub_18A4A7A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(v25);
  v21 = swift_allocObject();
  *(v21 + 32) = 0;
  *(v21 + 16) = a5;
  *(v21 + 24) = a5;
  *(v10 + 24) = v21;
  swift_beginAccess();
  *(v10 + 64) = 0;
  *(v10 + 72) = 1;
  swift_beginAccess();
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
  *(v10 + 152) = 0;
  *(v10 + 160) = 0;
  swift_unknownObjectWeakAssign();
  return v10;
}

id __UIStatusBarManagerForWindow(void *a1)
{
  v1 = [a1 windowScene];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 statusBarManager];
  }

  else
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_RaiseWithNilSceneForStatusBar, @"RaiseWithNilSceneForStatusBar") & 1) == 0 && byte_1ED48AA8C)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Asking for the status bar manager without a window scene or window."];
    }

    v3 = _UIStatusBarManagerForNoWindow();
  }

  v4 = v3;

  return v4;
}

double UIRectRoundToScale(double a1, double a2, double a3, double a4, double a5)
{
  v7 = a5;
  if (a5 == 0.0)
  {
    if (AdjustToScale_onceToken_0 != -1)
    {
      dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
    }

    v7 = *&AdjustToScale___s_0;
  }

  v8 = v7 == 1.0;
  v9 = round(a1 * v7) / v7;
  v10 = round(a1);
  if (v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (a5 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }

  if (a5 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }

  if (a5 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }

  return v11;
}

UIViewBlockBasedCAAction *_StatusBar_UIBlockBasedCAAction(void *a1)
{
  v1 = a1;
  v2 = [[UIViewBlockBasedCAAction alloc] initWithEmptyBlock:v1];

  return v2;
}

id sub_188A6E828()
{
  v1 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v2 = sub_18A4A2BD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A2BA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  if ([(UIViewController *)v1 _isDeallocInitiated])
  {

    return [v1 updateViewConstraints];
  }

  else
  {
    v46 = v13;
    v47 = v9;
    v48 = v5;
    v49 = v3;
    v50 = v2;
    v20 = [(UIViewController *)v1 _typedStorage];
    v21 = sub_188A4CEC4();

    if (v21)
    {
      sub_18913E3AC(7);
    }

    v51 = v21;
    v45 = *(v7 + 56);
    v45(v18, 1, 1, v6);
    v52 = v18;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = *(StatusReg + 848);
    *(StatusReg + 848) = v52;
    v24 = v7;
    v25 = byte_1ED4A3680;
    byte_1ED4A3680 = 1;
    [v1 updateViewConstraints];
    *(StatusReg + 848) = v23;
    v26 = v6;
    v27 = v52;
    byte_1ED4A3680 = v25;
    v28 = v24;
    sub_188A3F29C(v52, v16, &qword_1EA93E090);
    if ((*(v24 + 48))(v16, 1, v6) == 1)
    {
      sub_188A3F5FC(v27, &qword_1EA93E090);
      sub_188A3F5FC(v16, &qword_1EA93E090);
    }

    else
    {
      v29 = v47;
      (*(v24 + 32))(v47, v16, v6);
      v30 = sub_188ACEB88(v1, 7, &block_descriptor_100_2);
      v31 = v51;
      if (!v51)
      {
        v32 = v30;
        v33 = [(UIViewController *)v1 _typedStorage];
        v31 = sub_188A4CEC4();

        v30 = v32;
      }

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = 7;
      *(v35 + 25) = v30;
      *(v35 + 32) = sub_18913EE18;
      *(v35 + 40) = 0;
      v36 = v46;
      (*(v24 + 16))(v46, v29, v26);
      v45(v36, 0, 1, v26);

      v37 = v48;
      sub_18A4A2BE8();
      if (!v31)
      {
        type metadata accessor for TrackingDictionary();
        v38 = swift_allocObject();
        *(v38 + 16) = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v39 = [(UIViewController *)v1 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098);
        v40 = swift_allocObject();
        *(v40 + 16) = v38;
        v51 = v34;
        v41 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(&v39->super.isa + v41);
        *(&v39->super.isa + v41) = 0x8000000000000000;
        sub_188A40430(v40, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
        *(&v39->super.isa + v41) = v53;
        swift_endAccess();
      }

      swift_retain_n();
      sub_188ACEFD4(v37, 7);

      v43 = swift_allocObject();
      *(v43 + 16) = sub_188B57AD4;
      *(v43 + 24) = v35;

      MEMORY[0x18CFDDAE0](v37, 0, 0, sub_188B57248, v43);

      (*(v49 + 8))(v37, v50);
      (*(v28 + 8))(v29, v26);
      sub_188A3F5FC(v52, &qword_1EA93E090);
    }
  }
}

double _UIAccessibilityContentSizeCategorySizeForImage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    [v3 size];
    v6 = v5;
    if ([v4 adjustsImageSizeForAccessibilityContentSizeCategory] && (objc_msgSend(v3, "_isSymbolImage") & 1) == 0)
    {
      [v4 _scaleFactorForImage];
      v8 = v7;
      if (v7 != 1.0)
      {
        v9 = [v3 content];
        v10 = [v9 canScaleImageToTargetResolution];

        if (v10)
        {
          v11 = [v3 content];
          [v11 size];
          v6 = v12;
        }
      }

      v6 = v8 * v6;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
  }

  return v6;
}

int UIApplicationMain(int argc, char **argv, NSString *principalClassName, NSString *delegateClassName)
{
  v7 = principalClassName;
  v8 = delegateClassName;
  v9 = getenv("ActivePrewarm");
  if (v9 && *v9 == 49)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v10 = qword_1EA993220;
    v18 = qword_1EA993220;
    if (!qword_1EA993220)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __get_OSPrewarmSchedulerClass_block_invoke;
      v14[3] = &unk_1E70F2F20;
      v14[4] = &v15;
      __get_OSPrewarmSchedulerClass_block_invoke(v14);
      v10 = v16[3];
    }

    v11 = v10;
    _Block_object_dispose(&v15, 8);
    [v10 prewarmSuspend];
  }

  kdebug_trace();
  entr_act_begin();
  v12 = objc_autoreleasePoolPush();
  _UIApplicationMainPreparations(argc, argv, v7, v8);
  objc_autoreleasePoolPop(v12);
  [UIApp _run];
  v13 = abort_report_np();
  _Block_object_dispose(&v15, 8);
  _Unwind_Resume(v13);
}

uint64_t allowInternalPreferences()
{
  if (os_variant_has_internal_diagnostics())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

void __UIInlinePointerSetInsertElement(uint64_t *a1, unint64_t pointer, int a3)
{
  v6 = pointer >> 4;
  v7 = *a1;
  v8 = pointer >> 10;
  v9 = pointer >> 16;
  if (!*a1)
  {
    goto LABEL_12;
  }

  if (v7 == 1)
  {
    if (a1[3] == pointer)
    {
      return;
    }

    goto LABEL_12;
  }

  if ((((1 << v6) | (1 << v8) | (1 << SBYTE2(pointer))) & ~a1[1]) != 0)
  {
LABEL_12:
    if (a3)
    {
      v12 = pointer;
    }

    v13 = *a1;
    if (*a1 > 0xC)
    {
      v14 = a1[2];
      if (!v14)
      {
        v15 = __UIInlinePointerSetCreateHashTableWithCapacity(26);
        a1[2] = v15;

        v16 = (a1 + 3);
        do
        {
          v17 = *v16++;
          NSHashInsert(a1[2], v17);
          --v13;
        }

        while (v13);
        v14 = a1[2];
      }

      NSHashInsert(v14, pointer);
      v13 = *a1;
    }

    else
    {
      a1[v13 + 3] = pointer;
    }

    v18 = (1 << v6) | (1 << v8) | (1 << v9) | a1[1];
    *a1 = v13 + 1;
    a1[1] = v18;
    return;
  }

  v10 = a1[2];
  if (v10)
  {
    if (NSHashGet(v10, pointer))
    {
      return;
    }

    goto LABEL_12;
  }

  v11 = (a1 + 3);
  while (*v11 != pointer)
  {
    ++v11;
    if (!--v7)
    {
      goto LABEL_12;
    }
  }
}

BOOL _UIShouldLogTraitRegistryChange()
{
  if (qword_1ED49EC10 != -1)
  {
    dispatch_once(&qword_1ED49EC10, &__block_literal_global_798_0);
  }

  return (qword_1ED49EC08 - 1) < 2;
}

void _GLOBAL__sub_I__UIUpdateSequence_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(_UIUpdateSequenceItemInternal::~_UIUpdateSequenceItemInternal, &_UIUpdateSequenceScheduledItemInternal, &dword_188A29000);
  __cxa_atexit(_UIUpdateSequenceItemInternal::~_UIUpdateSequenceItemInternal, &_UIUpdateSequenceBeginItemInternal, &dword_188A29000);
  __cxa_atexit(_UIUpdateSequenceItemInternal::~_UIUpdateSequenceItemInternal, &_UIUpdateSequenceHIDEventsItemInternal, &dword_188A29000);
  __cxa_atexit(_UIUpdateSequenceItemInternal::~_UIUpdateSequenceItemInternal, _UIUpdateSequenceCADisplayLinksItemInternal, &dword_188A29000);
  __cxa_atexit(_UIUpdateSequenceItemInternal::~_UIUpdateSequenceItemInternal, &_MergedGlobals_964, &dword_188A29000);
  __cxa_atexit(_UIUpdateSequenceItemInternal::~_UIUpdateSequenceItemInternal, &_UIUpdateSequenceCATransactionCommitItemInternal, &dword_188A29000);
  __cxa_atexit(_UIUpdateSequenceItemInternal::~_UIUpdateSequenceItemInternal, &unk_1ED491BE8, &dword_188A29000);
  __cxa_atexit(_UIUpdateSequenceItemInternal::~_UIUpdateSequenceItemInternal, &off_1ED491C18, &dword_188A29000);
  __cxa_atexit(_UIUpdateSequenceItemInternal::~_UIUpdateSequenceItemInternal, &_UIUpdateSequenceLowLatencyHIDEventsItemInternal, &dword_188A29000);
  __cxa_atexit(_UIUpdateSequenceItemInternal::~_UIUpdateSequenceItemInternal, &_UIUpdateSequenceLowLatencyCATransactionCommitItemInternal, &dword_188A29000);
  __cxa_atexit(_UIUpdateSequenceItemInternal::~_UIUpdateSequenceItemInternal, &unk_1ED491C48, &dword_188A29000);
  __cxa_atexit(_UIUpdateSequenceItemInternal::~_UIUpdateSequenceItemInternal, &_UIUpdateSequenceDoneItemInternal, &dword_188A29000);

  objc_autoreleasePoolPop(v0);
}

id _UIKitPreferencesOnce()
{
  if (qword_1ED4A2600 != -1)
  {
    dispatch_once(&qword_1ED4A2600, &__block_literal_global_3_15);
  }

  v1 = qword_1ED4A25F8;

  return v1;
}

void _UIApplicationMainPreparations(int a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  aClassName = a4;
  kdebug_trace();
  v43 = dispatch_get_global_queue(33, 0);
  dispatch_async(v43, &__block_literal_global_3793);
  CGInitializeImageIO();
  _UIApplicationLinkedOnVersion = dyld_get_program_sdk_version();
  if (a1 >= 2)
  {
    v8 = a1 - 1;
    v9 = (a2 + 8);
    do
    {
      v10 = *v9;
      if (!strcmp(*v9, "-BuildDefaultPNG"))
      {
        v11 = &_MergedGlobals_157;
      }

      else
      {
        if (strcmp(v10, "-RegisterForSystemEvents") && strcmp(v10, "--RegisterForSystemEvents"))
        {
          goto LABEL_9;
        }

        v11 = &byte_1EA992DA2;
      }

      *v11 = 1;
LABEL_9:
      ++v9;
      --v8;
    }

    while (v8);
  }

  kdebug_trace();
  BKSDisplayServicesStart();
  kdebug_trace();
  v12 = +[_UIApplicationConfigurationLoader sharedLoader];
  [v12 startPreloadInitializationContext];

  v13 = +[_UIScreenInitialDisplayConfigurationLoader sharedLoader];
  [v13 _startPreloadInitialDisplayContext];

  v14 = +[_UIDeviceInitialDeviceConfigurationLoader sharedLoader];
  [v14 _startPreloadInitialDeviceContext];

  UIApplicationInitialize();
  v15 = v7;
  v41 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E696AAE8] mainBundle];
    v17 = [v16 infoDictionary];
    v15 = [v17 objectForKey:@"NSPrincipalClass"];
  }

  if ([(NSString *)v15 length])
  {
    v18 = NSClassFromString(v15);
    if (!v18)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class _UIApplicationGetPrincipalClass(NSString *__strong)"];
      [v19 handleFailureInFunction:v20 file:@"UIApplication.m" lineNumber:5300 description:{@"Unable to instantiate the UIApplication subclass instance. No class named %@ is loaded.", v15}];

      v18 = 0;
    }
  }

  else
  {
    v18 = objc_opt_class();
  }

  v21 = v18;

  GSEventRegisterEventCallBack();
  if (_UIUpdateCycleEnabled())
  {
    _UIUpdateSchedulerStart(&_UIUpdateCycleMainScheduler);
  }

  v22 = objc_opt_new();
  byte_1EA992DA2 = [objc_opt_class() registerAsSystemApp];
  if (qword_1EA992E78 != -1)
  {
    dispatch_once(&qword_1EA992E78, &__block_literal_global_1223_0);
  }

  if (byte_1EA992DAB == 1)
  {
    GSEventInitializeAsExtension();
  }

  else
  {
    GSEventInitialize();
  }

  GSEventPushRunLoopMode();
  [v18 _startStatusBarServerIfNecessary];
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = qword_1EA992E50;
  qword_1EA992E50 = v23;

  v25 = objc_alloc_init(_UISceneEventResponder);
  v26 = qword_1EA992E68;
  qword_1EA992E68 = v25;

  v27 = objc_alloc_init(_UIAfterCACommitQueue);
  v28 = qword_1EA992E70;
  qword_1EA992E70 = v27;

  UIApplicationInstantiateSingleton(v18);
  objc_storeStrong((UIApp + 152), v22);
  kdebug_trace();
  v29 = [MEMORY[0x1E699FCD8] optionsWithDelegate:UIApp];
  v30 = +[UIApplication _systemAnimationFenceExemptQueue];
  [v29 setCallOutQueue:v30];
  v31 = FBSWorkspaceInitialize();
  v32 = qword_1EA992E60;
  qword_1EA992E60 = v31;

  kdebug_trace();
  kdebug_trace();
  *(UIApp + 176) |= 0x100000000uLL;
  kdebug_trace();
  _UIApplicationInitializeForBackgroundTasks();
  objc_opt_class();
  v33 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  +[_UISceneUserActivityManager _initializeUserActivityManager];
  v34 = aClassName;
  if (aClassName || ([MEMORY[0x1E696AAE8] mainBundle], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "infoDictionary"), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "objectForKey:", @"UIApplicationDelegateClass"), v34 = objc_claimAutoreleasedReturnValue(), v36, v35, v34))
  {
    v37 = NSClassFromString(v34);
    if (!v37)
    {
      v39 = [MEMORY[0x1E696AAA8] currentHandler];
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIApplicationMainPreparations(int, char **, NSString *__strong, NSString *__strong)"}];
      [v39 handleFailureInFunction:v40 file:@"UIApplication.m" lineNumber:5531 description:{@"Unable to instantiate the UIApplication delegate instance. No class named %@ is loaded.", v34}];
    }

    if ([(objc_class *)v37 isSubclassOfClass:objc_opt_class()])
    {
      [UIApp setDelegate:UIApp];
    }

    else
    {
      v38 = objc_alloc_init(v37);
      [UIApp setDelegate:v38];
      objc_setAssociatedObject(UIApp, &unk_1EA992DA3, v38, 1);
    }
  }

  kdebug_trace();
}

void sub_188A70EFC()
{
  v1 = v0;
  v53 = *MEMORY[0x1E69E9840];
  v2 = sub_18A4A2BD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A2BA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  if ([(UIViewController *)v1 _isDeallocInitiated])
  {

    [(UIViewController *)v1 _executeUpdateProperties];
  }

  else
  {
    v45 = v13;
    v46 = v9;
    v47 = v5;
    v48 = v3;
    v49 = v2;
    v19 = [(UIViewController *)v1 _typedStorage];
    v20 = sub_188A4CEC4();

    if (v20)
    {
      sub_18913E3AC(6);
    }

    v50 = v20;
    v44 = *(v7 + 56);
    v44(v18, 1, 1, v6);
    v51 = v18;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = *(StatusReg + 848);
    *(StatusReg + 848) = v51;
    v23 = v7;
    v24 = byte_1ED4A3680;
    byte_1ED4A3680 = 1;
    [(UIViewController *)v1 _executeUpdateProperties];
    *(StatusReg + 848) = v22;
    v25 = v6;
    v26 = v51;
    byte_1ED4A3680 = v24;
    v27 = v23;
    sub_188A3F29C(v51, v16, &qword_1EA93E090);
    if ((*(v23 + 48))(v16, 1, v6) == 1)
    {
      sub_188A3F5FC(v26, &qword_1EA93E090);
      sub_188A3F5FC(v16, &qword_1EA93E090);
    }

    else
    {
      v28 = v46;
      (*(v23 + 32))(v46, v16, v6);
      v29 = sub_188ACEB88(v1, 6, &block_descriptor_100_2);
      v30 = v50;
      if (!v50)
      {
        v31 = v29;
        v32 = [(UIViewController *)v1 _typedStorage];
        v30 = sub_188A4CEC4();

        v29 = v31;
      }

      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = 6;
      *(v34 + 25) = v29;
      *(v34 + 32) = sub_188B57ABC;
      *(v34 + 40) = 0;
      v35 = v45;
      (*(v23 + 16))(v45, v28, v25);
      v44(v35, 0, 1, v25);

      v36 = v47;
      sub_18A4A2BE8();
      if (!v30)
      {
        type metadata accessor for TrackingDictionary();
        v37 = swift_allocObject();
        *(v37 + 16) = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v38 = [(UIViewController *)v1 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098);
        v39 = swift_allocObject();
        *(v39 + 16) = v37;
        v50 = v33;
        v40 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = *(&v38->super.isa + v40);
        *(&v38->super.isa + v40) = 0x8000000000000000;
        sub_188A40430(v39, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
        *(&v38->super.isa + v40) = v52;
        swift_endAccess();
      }

      swift_retain_n();
      sub_188ACEFD4(v36, 6);

      v42 = swift_allocObject();
      *(v42 + 16) = sub_188B57AD4;
      *(v42 + 24) = v34;

      MEMORY[0x18CFDDAE0](v36, 0, 0, sub_188B57248, v42);

      (*(v48 + 8))(v36, v49);
      (*(v27 + 8))(v28, v25);
      sub_188A3F5FC(v51, &qword_1EA93E090);
    }
  }
}

id sub_188A7167C()
{
  v1 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v2 = sub_18A4A2BD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A2BA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  if ([(UIViewController *)v1 _isDeallocInitiated])
  {

    return [v1 viewWillLayoutSubviews];
  }

  else
  {
    v46 = v13;
    v47 = v9;
    v48 = v5;
    v49 = v3;
    v50 = v2;
    v20 = [(UIViewController *)v1 _typedStorage];
    v21 = sub_188A4CEC4();

    if (v21)
    {
      sub_18913E3AC(8);
    }

    v51 = v21;
    v45 = *(v7 + 56);
    v45(v18, 1, 1, v6);
    v52 = v18;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = *(StatusReg + 848);
    *(StatusReg + 848) = v52;
    v24 = v7;
    v25 = byte_1ED4A3680;
    byte_1ED4A3680 = 1;
    [v1 viewWillLayoutSubviews];
    *(StatusReg + 848) = v23;
    v26 = v6;
    v27 = v52;
    byte_1ED4A3680 = v25;
    v28 = v24;
    sub_188A3F29C(v52, v16, &qword_1EA93E090);
    if ((*(v24 + 48))(v16, 1, v6) == 1)
    {
      sub_188A3F5FC(v27, &qword_1EA93E090);
      sub_188A3F5FC(v16, &qword_1EA93E090);
    }

    else
    {
      v29 = v47;
      (*(v24 + 32))(v47, v16, v6);
      v30 = sub_188ACEB88(v1, 8, &block_descriptor_100_2);
      v31 = v51;
      if (!v51)
      {
        v32 = v30;
        v33 = [(UIViewController *)v1 _typedStorage];
        v31 = sub_188A4CEC4();

        v30 = v32;
      }

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = 8;
      *(v35 + 25) = v30;
      *(v35 + 32) = sub_188CE0828;
      *(v35 + 40) = 0;
      v36 = v46;
      (*(v24 + 16))(v46, v29, v26);
      v45(v36, 0, 1, v26);

      v37 = v48;
      sub_18A4A2BE8();
      if (!v31)
      {
        type metadata accessor for TrackingDictionary();
        v38 = swift_allocObject();
        *(v38 + 16) = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v39 = [(UIViewController *)v1 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098);
        v40 = swift_allocObject();
        *(v40 + 16) = v38;
        v51 = v34;
        v41 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(&v39->super.isa + v41);
        *(&v39->super.isa + v41) = 0x8000000000000000;
        sub_188A40430(v40, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
        *(&v39->super.isa + v41) = v53;
        swift_endAccess();
      }

      swift_retain_n();
      sub_188ACEFD4(v37, 8);

      v43 = swift_allocObject();
      *(v43 + 16) = sub_188B57AD4;
      *(v43 + 24) = v35;

      MEMORY[0x18CFDDAE0](v37, 0, 0, sub_188B57248, v43);

      (*(v49 + 8))(v37, v50);
      (*(v28 + 8))(v29, v26);
      sub_188A3F5FC(v52, &qword_1EA93E090);
    }
  }
}

id sub_188A720FC()
{
  v1 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v2 = sub_18A4A2BD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A2BA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  if ([(UIViewController *)v1 _isDeallocInitiated])
  {

    return [v1 viewDidLayoutSubviews];
  }

  else
  {
    v46 = v13;
    v47 = v9;
    v48 = v5;
    v49 = v3;
    v50 = v2;
    v20 = [(UIViewController *)v1 _typedStorage];
    v21 = sub_188A4CEC4();

    if (v21)
    {
      sub_18913E3AC(9);
    }

    v51 = v21;
    v45 = *(v7 + 56);
    v45(v18, 1, 1, v6);
    v52 = v18;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = *(StatusReg + 848);
    *(StatusReg + 848) = v52;
    v24 = v7;
    v25 = byte_1ED4A3680;
    byte_1ED4A3680 = 1;
    [v1 viewDidLayoutSubviews];
    *(StatusReg + 848) = v23;
    v26 = v6;
    v27 = v52;
    byte_1ED4A3680 = v25;
    v28 = v24;
    sub_188A3F29C(v52, v16, &qword_1EA93E090);
    if ((*(v24 + 48))(v16, 1, v6) == 1)
    {
      sub_188A3F5FC(v27, &qword_1EA93E090);
      sub_188A3F5FC(v16, &qword_1EA93E090);
    }

    else
    {
      v29 = v47;
      (*(v24 + 32))(v47, v16, v6);
      v30 = sub_188ACEB88(v1, 9, &block_descriptor_100_2);
      v31 = v51;
      if (!v51)
      {
        v32 = v30;
        v33 = [(UIViewController *)v1 _typedStorage];
        v31 = sub_188A4CEC4();

        v30 = v32;
      }

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = 9;
      *(v35 + 25) = v30;
      *(v35 + 32) = sub_188CE0828;
      *(v35 + 40) = 0;
      v36 = v46;
      (*(v24 + 16))(v46, v29, v26);
      v45(v36, 0, 1, v26);

      v37 = v48;
      sub_18A4A2BE8();
      if (!v31)
      {
        type metadata accessor for TrackingDictionary();
        v38 = swift_allocObject();
        *(v38 + 16) = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v39 = [(UIViewController *)v1 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098);
        v40 = swift_allocObject();
        *(v40 + 16) = v38;
        v51 = v34;
        v41 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(&v39->super.isa + v41);
        *(&v39->super.isa + v41) = 0x8000000000000000;
        sub_188A40430(v40, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
        *(&v39->super.isa + v41) = v53;
        swift_endAccess();
      }

      swift_retain_n();
      sub_188ACEFD4(v37, 9);

      v43 = swift_allocObject();
      *(v43 + 16) = sub_188B57AD4;
      *(v43 + 24) = v35;

      MEMORY[0x18CFDDAE0](v37, 0, 0, sub_188B57248, v43);

      (*(v49 + 8))(v37, v50);
      (*(v28 + 8))(v29, v26);
      sub_188A3F5FC(v52, &qword_1EA93E090);
    }
  }
}

void sub_188A72A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

UIColor *ComputeLegibilityColorFromColor(void *a1, double a2)
{
  v4 = +[UIColor blackColor];
  if (CGColorGetNumberOfComponents([a1 CGColor]) >= 3)
  {
    v8 = 0.0;
    v9 = 0.0;
    v7 = 0;
    if ([a1 getHue:&v9 saturation:&v8 brightness:&v7 alpha:0])
    {
      v5 = 0.0;
      if (v9 != 0.0)
      {
        v5 = fmin(fmax(v8, 0.3), 0.5);
      }

      return [UIColor colorWithHue:v9 saturation:v5 brightness:a2 alpha:1.0];
    }
  }

  return v4;
}

double _NXRGBToHSB(void *a1, double *a2, double *a3, int8x16_t a4, int8x16_t a5, double a6)
{
  if (*a4.i64 < *a5.i64 || *a4.i64 < a6)
  {
    if (*a5.i64 >= *a4.i64)
    {
      v7 = *a4.i64;
    }

    else
    {
      v7 = *a5.i64;
    }

    if (*a4.i64 >= a6)
    {
      v8 = a6;
    }

    else
    {
      v8 = *a4.i64;
    }

    v9 = *a5.i64 < *a4.i64 || *a5.i64 < a6;
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = a6;
    }

    else
    {
      v11 = *a5.i64;
    }
  }

  else
  {
    if (*a5.i64 >= a6)
    {
      v10 = a6;
    }

    else
    {
      v10 = *a5.i64;
    }

    v11 = *a4.i64;
  }

  v12 = 0.0;
  if (v11 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = v11 - v10;
    v14 = (v11 - v10) / v11;
    if (v14 != 0.0)
    {
      v15 = (v11 - *a5.i64) / v13;
      v16 = (v11 - a6) / v13;
      if (v11 == *a4.i64)
      {
        if (v10 == *a5.i64)
        {
          v12 = v16 + 5.0;
        }

        else
        {
          v12 = 1.0 - v15;
        }
      }

      else
      {
        v18 = v11 == *a5.i64;
        v19 = (v11 - *a4.i64) / v13;
        if (v18)
        {
          if (v10 == a6)
          {
            v12 = v19 + 1.0;
          }

          else
          {
            v12 = 3.0 - v16;
          }
        }

        else if (v10 == *a4.i64)
        {
          v12 = v15 + 3.0;
        }

        else
        {
          v12 = 5.0 - v19;
        }
      }
    }
  }

  *a3 = v11;
  *a4.i64 = v12 / 6.0;
  *a5.i64 = v12 / 6.0 - trunc(v12 / 6.0);
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v17), a5, a4).u64[0];
  *a1 = a4.i64[0];
  *a2 = v14;
  return *a4.i64;
}

uint64_t _UITextLayoutSizeWillShrink(double (**a1)(id, double, double), double a2, double a3, double a4, double a5)
{
  v9 = a1 + 2;
  v10 = a1[2];
  v11 = a1;
  v12 = v10(a2, a3);
  v14 = v13;
  v15 = (*v9)(v11, a4, a5);
  v17 = v16;

  v18 = fmin(v12, a2);
  v19 = fmin(v14, a3);
  v20 = fmin(v15, a4);
  v21 = fmin(v17, a5);
  v22 = v20 < v18;
  v23 = v20 <= v18;
  if (v21 > v19)
  {
    v22 = 0;
  }

  if (v21 >= v19)
  {
    v23 = 0;
  }

  return v22 | v23;
}

unint64_t sub_188A73350()
{
  result = qword_1ED48FD80;
  if (!qword_1ED48FD80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED48FD80);
  }

  return result;
}

uint64_t sub_188A7339C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_188A7342C(uint64_t a1)
{
  v1 = (*(a1 + 16))();

  return v1;
}

void sub_188A737DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void std::vector<_UIIdentifiedTraitCollectionTransform>::__base_destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 16)
  {

    v5 = *(i - 16);
  }

  *(a1 + 8) = a2;
}

void sub_188A74004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_188A74020(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_188A79914(result);
  }

  return result;
}

void sub_188A748B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_188A74A4C(uint64_t a1)
{
  v3 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188A403F4(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = *(v7 + 16);
    v9 = v8;
    return v8;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

id _normalizedAnimationKey(void *a1)
{
  v1 = a1;
  v2 = v1;
  if ([v1 containsString:@"-"])
  {
    v2 = [v1 substringToIndex:{objc_msgSend(v1, "rangeOfString:", @"-"}];
  }

  return v2;
}

void sub_188A74CF8()
{
  if (_UIViewMaskingConfigurationSPIEnabled())
  {
    v1 = [objc_opt_self() sharedObserver];
    v2 = [v0 layer];
    v3 = sub_18A4A7258();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6[4] = sub_188A790DC;
    v6[5] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_188A4A8F0;
    v6[3] = &block_descriptor_159_0;
    v5 = _Block_copy(v6);

    [v1 observe:v2 forKeyPath:v3 once:v5];
    _Block_release(v5);
  }
}

uint64_t sub_188A74E4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UIView.cornerMaskingConfiguration.setter(__int128 *a1)
{
  v2 = v1;
  v3 = a1[3];
  v69 = a1[2];
  *v70 = v3;
  *&v70[10] = *(a1 + 58);
  v4 = a1[1];
  v67 = *a1;
  v68 = v4;
  v5 = [(UIView *)v1 _typedStorage];
  v6 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v7 = *(&v5->super.isa + v6);
  if (*(v7 + 16) && (v8 = sub_188A403F4(&_s29CornerMaskingConfigurationKeyVN), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v11 = v10[3];
    v49 = v10[2];
    v50 = v11;
    *v51 = v10[4];
    *&v51[10] = *(v10 + 74);
    aBlock = v10[1];
    sub_188A74E4C(&aBlock, &v63);

    *(v66 + 10) = *&v51[10];
    v65 = v50;
    v66[0] = *v51;
    v63 = aBlock;
    v64 = v49;
    v12 = *&v51[10] >> 48;
    v13 = *&v51[24];
  }

  else
  {
    swift_endAccess();

    v13 = 0;
    v12 = 0;
    v65 = 0u;
    memset(v66, 0, 26);
    v63 = 0u;
    v64 = 0u;
  }

  v59 = v63;
  v60 = v64;
  v61 = v65;
  v62 = v66[0];
  *&v58[6] = v67;
  *&v58[22] = v68;
  *&v58[38] = v69;
  *&v58[54] = *v70;
  v14 = *&v70[16];
  v15 = *&v70[24];
  if (!v12)
  {
    if (!*&v70[16])
    {
      aBlock = v63;
      v49 = v64;
      v50 = v65;
      *v51 = v66[0];
      *&v51[16] = 0;
      *&v51[24] = v13;
      p_aBlock = &aBlock;
      return sub_188A3F5FC(p_aBlock, &qword_1EA938E70);
    }

    sub_188A74E4C(&v63, &aBlock);
    sub_188A74E4C(&v67, &aBlock);
    goto LABEL_12;
  }

  aBlock = v63;
  v49 = v64;
  v50 = v65;
  *v51 = v66[0];
  *&v51[16] = v12;
  *&v51[24] = v13;
  v46 = v65;
  *v47 = v66[0];
  v44 = v63;
  v45 = v64;
  *&v47[10] = *&v51[10];
  if (!*&v70[16])
  {
    v42 = v50;
    *v43 = *v51;
    *&v43[10] = *&v51[10];
    v40 = aBlock;
    v41 = v49;
    sub_188A74E4C(&v63, v38);
    sub_188A74E4C(&v67, v38);
    sub_188A74E4C(&aBlock, v38);
    sub_188A85574(&v40);
LABEL_12:
    aBlock = v59;
    v49 = v60;
    v50 = v61;
    *v51 = v62;
    *&v51[16] = v12;
    *&v51[24] = v13;
    v53 = *&v58[16];
    v54 = *&v58[32];
    *v55 = *&v58[48];
    v52 = *v58;
    *&v55[14] = *&v58[62];
    v56 = v14;
    v57 = v15;
    sub_188A3F5FC(&aBlock, &qword_1EA938E78);
LABEL_13:
    v18 = [(UIView *)v2 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938E80);
    v19 = swift_allocObject();
    v20 = *v70;
    v19[3] = v69;
    v19[4] = v20;
    *(v19 + 74) = *&v70[10];
    v21 = v68;
    v19[1] = v67;
    v19[2] = v21;
    v22 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    sub_188A74E4C(&v67, &aBlock);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = *(&v18->super.isa + v22);
    *(&v18->super.isa + v22) = 0x8000000000000000;
    sub_188A40430(v19, &_s29CornerMaskingConfigurationKeyVN, isUniquelyReferenced_nonNull_native);
    *(&v18->super.isa + v22) = aBlock;
    swift_endAccess();

    if (_UIViewMaskingConfigurationSPIEnabled())
    {
      if (*&v66[1])
      {
        v25 = sub_18A4A7258();
        [(UIView *)v2 _removeTraitCollectionTransformWithIdentifier:v25];
      }

      if (*&v70[16])
      {
        sub_188A3F5FC(&v67, &qword_1EA938E70);
        v26 = swift_allocObject();
        swift_unknownObjectUnownedInit();

        v27 = sub_18A4A7258();
        v28 = swift_allocObject();
        *(v28 + 16) = sub_188A853BC;
        *(v28 + 24) = v26;
        *&v50 = sub_188A853B4;
        *(&v50 + 1) = v28;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v49 = sub_188A8528C;
        *(&v49 + 1) = &block_descriptor_55;
        v29 = _Block_copy(&aBlock);

        [(UIView *)v2 _addTraitCollectionTransformWithIdentifier:v27 transform:v29];
        _Block_release(v29);
      }

      [(UIView *)v2 _invalidateMaskingConfiguration];
    }

    else
    {
      if (*&v70[16])
      {
        v44 = v67;
        v45 = v68;
        v46 = v69;
        *v47 = *v70;
        *&v47[16] = *&v70[16];
        *&v47[24] = *&v70[24];
        v50 = v69;
        *v51 = *v70;
        *&v51[10] = *&v70[10];
        aBlock = v67;
        v49 = v68;
        sub_188AF8100(&aBlock, &v40);
        sub_18904B798(&v44, &v40);
        UIView.cornerConfiguration.setter(&v40);
        sub_188A3F5FC(&v67, &qword_1EA938E70);
        p_aBlock = &v63;
        return sub_188A3F5FC(p_aBlock, &qword_1EA938E70);
      }

      *&aBlock = 0;
      BYTE8(aBlock) = -1;
      *&v49 = 0;
      BYTE8(v49) = -1;
      *&v50 = 0;
      BYTE8(v50) = -1;
      *v51 = 0;
      v51[8] = -1;
      *&v51[16] = MEMORY[0x1E69E7CC0];
      UIView.cornerConfiguration.setter(&aBlock);
    }

    p_aBlock = &v63;
    return sub_188A3F5FC(p_aBlock, &qword_1EA938E70);
  }

  v32 = v67;
  v33 = v68;
  v34 = v69;
  *v35 = *v70;
  *&v35[16] = *&v70[16];
  *&v35[24] = *&v70[24];
  sub_188A74E4C(&v63, v31);
  sub_188A74E4C(&v67, v31);
  sub_188A74E4C(&aBlock, v31);
  v16 = _s5UIKit29_UICornerMaskingConfigurationV2eeoiySbAC_ACtFZ_0(&v44, &v32);
  v36[2] = v34;
  v37[0] = *v35;
  *(v37 + 10) = *&v35[10];
  v36[0] = v32;
  v36[1] = v33;
  sub_188A85574(v36);
  v38[2] = v46;
  v39[0] = *v47;
  *(v39 + 10) = *&v47[10];
  v38[0] = v44;
  v38[1] = v45;
  sub_188A85574(v38);
  v40 = v59;
  v41 = v60;
  v42 = v61;
  *v43 = v62;
  *&v43[16] = v12;
  *&v43[24] = v13;
  sub_188A3F5FC(&v40, &qword_1EA938E70);
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_188A3F5FC(&v63, &qword_1EA938E70);
  p_aBlock = &v67;
  return sub_188A3F5FC(p_aBlock, &qword_1EA938E70);
}

uint64_t sub_188A75544()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188A7557C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_188A755D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  a7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 8);

  return v9(a1, AssociatedTypeWitness);
}

uint64_t sub_188A75664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[3] = AssociatedTypeWitness;
  __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(AssociatedTypeWitness - 8) + 16))();
  sub_188A55598(v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v11[0] = v11[2];
  v11[1] = v12;
  v8 = *(&v12 + 1);
  sub_188A3F5FC(v11, &qword_1EA934050);
  if (v8)
  {
    v9 = sub_18A4A86A8();
  }

  else
  {
    v9 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  [*v4 _setObject_forTraitToken_];
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

id sub_188A75858(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v5 = sub_188A78D9C(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();
    if (a2)
    {
      v8 = objc_opt_self();
      sub_188A52E38(a2);
      swift_unknownObjectRetain();
      if ([v8 _isPlaceholderTraitToken_])
      {
        v9 = swift_unknownObjectRetain();
        v10 = a2(v9);
        sub_188A55B8C(a2);
        swift_unknownObjectRelease_n();
        return v10;
      }

      else
      {
        sub_188A55B8C(a2);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v7 = a2(0);
      sub_188A55B8C(a2);
    }

    else
    {
      v11 = objc_opt_self();
      v12 = sub_18A4A7258();
      v13 = sub_18A4A7258();
      v7 = [v11 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v7, a1, isUniquelyReferenced_nonNull_native, &v17);
    off_1ED491B18 = v17;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for ScrollPocketCollectorModelTrait, &off_1ED490B08, v7, v15);
    swift_unknownObjectRelease();
    off_1ED491B08 = v17;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v7;
}

unint64_t sub_188A75C28(unsigned __int8 a1)
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  v2 = sub_18A4A88E8();
  return sub_188A86BD0(a1, v2);
}

uint64_t _UIWindowSceneCompatibleIsHidden(void *a1)
{
  v1 = a1;
  v2 = [v1 layer];
  v3 = [v2 isHidden];

  v4 = v3;
  if (dyld_program_sdk_at_least())
  {
    v4 = [v1 isHidden];
    if (v3 != v4)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _UIWindowSceneCompatibleIsHidden(UIWindow *__strong)"];
      [v6 handleFailureInFunction:v7 file:@"UIWindowScene.m" lineNumber:2992 description:@"Error in UIKit client: window visibility must match its layer visibility!"];
    }
  }

  return v4;
}

void __UIContextBinderAttachContext(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = [v3 _boundContext];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v7 = [v8 substrate];
    [v7 attachContext:v4];

    goto LABEL_8;
  }

  if ([v5 shouldAttachBindable])
  {
    [v5 attachBindable];
  }

LABEL_8:
}

uint64_t targetListChangeNotificationCallback(uint64_t a1, void *a2)
{
  if (*a2)
  {
    return UCDriverSignal();
  }

  return result;
}

uint64_t _UIApplicationMayVendViews()
{
  if (qword_1EA992E88 != -1)
  {
    dispatch_once(&qword_1EA992E88, &__block_literal_global_1233);
  }

  return byte_1EA992DAC;
}

void _UIEventDeferringAssertForInvalidOwningInterfaceElement(void *a1)
{
  if (!a1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIEventDeferringAssertForInvalidOwningInterfaceElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)"];
    [v6 handleFailureInFunction:v7 file:@"_UIEventDeferringManager.m" lineNumber:412 description:{@"%s: An owning interface element must be present to begin event deferring", "void _UIEventDeferringAssertForInvalidOwningInterfaceElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)"}];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIEventDeferringAssertForInvalidOwningInterfaceElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)"];
    [v8 handleFailureInFunction:v9 file:@"_UIEventDeferringManager.m" lineNumber:415 description:{@"%s: An owning interface element must conform to _UIEventDeferringRuleOwning: %@", "void _UIEventDeferringAssertForInvalidOwningInterfaceElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)", a1}];
  }

  v2 = [a1 interfaceElementCategory];
  v3 = _UIEventDeferringInterfaceCategoryForOwningElement();
  v10 = _NSStringFromUIEventDeferringInterfaceElementCategory(1uLL);
  if (!v2)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIEventDeferringAssertForInvalidOwningInterfaceElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)"];
    [v4 handleFailureInFunction:v5 file:@"_UIEventDeferringManager.m" lineNumber:426 description:{@"%s: %@ is an invalid interface element category: %@", "void _UIEventDeferringAssertForInvalidOwningInterfaceElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)", v10, a1}];
    goto LABEL_15;
  }

  if (v2 == 1 && v3 != 1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIEventDeferringAssertForInvalidOwningInterfaceElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)"];
    [v4 handleFailureInFunction:v5 file:@"_UIEventDeferringManager.m" lineNumber:429 description:{@"%s: Owning interface element states it is %@ but is not: %@", "void _UIEventDeferringAssertForInvalidOwningInterfaceElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)", v10, a1}];
LABEL_15:

    goto LABEL_16;
  }

  if (v2 == 2 && v3 != 2)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIEventDeferringAssertForInvalidOwningInterfaceElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)"];
    [v4 handleFailureInFunction:v5 file:@"_UIEventDeferringManager.m" lineNumber:433 description:{@"%s: Owning interface element states it is %@ but is not: %@", "void _UIEventDeferringAssertForInvalidOwningInterfaceElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)", v10, a1}];
    goto LABEL_15;
  }

  if (v2 == 3 && v3 != 3)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIEventDeferringAssertForInvalidOwningInterfaceElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)"];
    [v4 handleFailureInFunction:v5 file:@"_UIEventDeferringManager.m" lineNumber:437 description:{@"%s: Owning interface element states it is %@ but is not: %@", "void _UIEventDeferringAssertForInvalidOwningInterfaceElement(id<_UIEventDeferringRuleOwning>  _Nonnull const __strong)", v10, a1}];
    goto LABEL_15;
  }

LABEL_16:
}

__CFString *_NSStringFromUIEventDeferringInterfaceElementCategory(unint64_t a1)
{
  if (a1 > 3)
  {
    return &stru_1EFB14550;
  }

  else
  {
    return off_1E70F6710[a1];
  }
}

void stateMachineSpec_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 != a4)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &stateMachineSpec_block_invoke_2___s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = _NSStringFromUIDeferringState[a3];
        v11 = _NSStringFromUIDeferringAction[a5];
        v12 = _NSStringFromUIDeferringState[a4];
        v13 = 138543874;
        v14 = v10;
        v15 = 2114;
        v16 = v11;
        v17 = 2114;
        v18 = v12;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "State Transition: %{public}@ --%{public}@--> %{public}@", &v13, 0x20u);
      }
    }
  }
}

uint64_t stateMachineSpec_block_invoke_2_0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 delegate];
  [v3 clickDriver:v2 didPerformEvent:0];

  return 2;
}

uint64_t stateMachineSpec_block_invoke_2_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 delegate];
  [v3 clickDriver:v2 didPerformEvent:0];

  return 2;
}

uint64_t stateMachineSpec_block_invoke_2_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 delegate];
  [v3 clickDriver:v2 didPerformEvent:0];

  return 2;
}

id _eventDeferringCompatibilityQueue()
{
  if (qword_1ED49CCD8 != -1)
  {
    dispatch_once(&qword_1ED49CCD8, &__block_literal_global_108);
  }

  v1 = _MergedGlobals_1035;

  return v1;
}

void stateMachineSpec_block_invoke_11(uint64_t *a1)
{
  v2 = _queue_compatibilityRecord(a1[4], a1[5]);
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id _queue_compatibilityRecord(uint64_t a1, uint64_t a2)
{
  v4 = _eventDeferringCompatibilityQueue();
  dispatch_assert_queue_V2(v4);

  v5 = _queue_compatibilityRecordsForDisplay(a1);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:a2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t stateMachineSpec_block_invoke_24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2[2];
  v8 = _NSStringFromUIDeferringAction[a4];
  v9 = [(_UIEventDeferringManager *)*a2 _transactionAssertion];

  if (!v9)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stateMachineSpec_block_invoke_24"];
    [v12 handleFailureInFunction:v13 file:@"_UIEventDeferringManager.m" lineNumber:1856 description:{@"[%p] [%@] %@: Invalid to commit without a transaction", *a2, v7, v8}];
  }

  v10 = [(_UIEventDeferringManager *)*a2 _transactionAssertion];
  [v10 invalidate];

  if (*__UILogGetCategoryCachedImpl("EventDeferring", &stateMachineSpec_block_invoke_24___s_category))
  {
    _emitDebugLogForTransition(a3, a4, &stru_1EFB14550, a2);
  }

  [(_UIEventDeferringManager *)*a2 _setTransactionAssertion:?];

  return 1;
}

BOOL _UIHomeAffordanceNotifierShouldUpdateTargetForKeyWindow(void *a1, void *a2)
{
  if (![UIApp isFrontBoard])
  {
    return 0;
  }

  v4 = [a1 _scene];
  if ([v4 _allowsEventUIWindowRouting])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 _sceneForKeyboardDisplay];
  if (v6 == v7)
  {
    v9 = [a2 _eventRoutingScene];
    v10 = [v9 _screen];
    v11 = [v6 _screen];
    v8 = v10 == v11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id UIKeyboardGetSupportedSoftwareKeyboardsForInputModeAndIdiom(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2 == 6)
  {
    v6 = @"SWLayouts";
    v8 = @"-XR";
    goto LABEL_10;
  }

  if (a2 == 4)
  {
    v6 = @"SWLayouts";
    v8 = @"-Watch";
LABEL_10:
    v9 = [@"SWLayouts" stringByAppendingString:v8];
    goto LABEL_15;
  }

  if (a2 != 1)
  {
    v6 = @"SWLayouts";
    v9 = @"SWLayouts";
    goto LABEL_15;
  }

  if (!UIApp)
  {
    v5 = 0;
LABEL_13:
    v6 = @"SWLayouts";
    v7 = @"-iPad";
    goto LABEL_14;
  }

  v4 = +[UIKeyboardImpl keyboardScreen];
  v5 = [UIKBScreenTraits traitsForInputModeWithScreen:v4];

  if (!v5 || UIKeyboardComputeKeyboardIdiomFromScreenTraits(v5, [v5 idiom], 0) != 23)
  {
    goto LABEL_13;
  }

  v6 = @"SWLayouts-iPad";
  v7 = @"-iPadExtra";
LABEL_14:
  v9 = [@"SWLayouts" stringByAppendingString:v7];

LABEL_15:
  v10 = TIGetInputModeProperties();
  v11 = [v10 objectForKey:v9];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = [v10 objectForKey:v6];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v10 objectForKey:@"SWLayouts"];
    }

    v13 = v16;
  }

  v17 = [v13 count];
  if (a2 != 2 || v17)
  {
    if (![v13 count])
    {
LABEL_36:
      v22 = 0;
      goto LABEL_37;
    }

    if (a2 == 4)
    {
      v18 = [v10 objectForKeyedSubscript:@"UIKeyboardSupportsWatch"];
      if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v18 BOOLValue] & 1) == 0)
      {

        v13 = 0;
      }
    }
  }

  else
  {

    v13 = &unk_1EFE2C238;
    if (![&unk_1EFE2C238 count])
    {
      goto LABEL_36;
    }
  }

  v19 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_319_0];
  v20 = [v13 filteredArrayUsingPredicate:v19];

  if (_os_feature_enabled_impl() && [v3 isEqualToString:@"ar"])
  {
    v21 = [v20 arrayByAddingObject:@"Arabic-With-QWERTY-Version2"];

    v20 = v21;
  }

  v13 = v20;
  v22 = v13;
LABEL_37:

  return v22;
}

id sub_188A78A74(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v5 = sub_188A78D9C(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();
    if (a2)
    {
      v8 = objc_opt_self();
      sub_188A52E38(a2);
      swift_unknownObjectRetain();
      if ([v8 _isPlaceholderTraitToken_])
      {
        v9 = swift_unknownObjectRetain();
        v10 = a2(v9);
        sub_188A55B8C(a2);
        swift_unknownObjectRelease_n();
        return v10;
      }

      else
      {
        sub_188A55B8C(a2);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v7 = a2(0);
      sub_188A55B8C(a2);
    }

    else
    {
      v11 = objc_opt_self();
      v12 = sub_18A4A7258();
      v13 = sub_18A4A7258();
      v7 = [v11 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v7, a1, isUniquelyReferenced_nonNull_native, &v17);
    off_1ED491B18 = v17;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for ScrollPocketContainerModelTrait, &off_1EE4385C0, v7, v15);
    swift_unknownObjectRelease();
    off_1ED491B08 = v17;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v7;
}

unint64_t sub_188A78D9C(uint64_t a1)
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  v2 = sub_18A4A88E8();

  return sub_188A41228(a1, v2);
}

void _UIViewDescriptionAppendBaseClass(void *a1, void *a2)
{
  v9 = a1;
  v3 = a2;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = objc_opt_class();
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:v5];
  if (v6 == v4)
  {
LABEL_4:
  }

  else
  {
    while (1)
    {
      v7 = objc_opt_class();

      if (v5 == v7)
      {
        break;
      }

      v5 = [v5 superclass];
      v6 = [MEMORY[0x1E696AAE8] bundleForClass:v5];
      if (v6 == v4)
      {
        goto LABEL_4;
      }
    }
  }

  if (objc_opt_class() != v5 && objc_opt_class() != v5)
  {
    v8 = _UIDebugTypeName();
    [v3 appendFormat:@"baseClass = %@; ", v8];
  }
}

void _UIViewDescriptionAppendFrame(void *a1, void *a2)
{
  v7 = a2;
  [a1 frame];
  [v7 appendFormat:@"frame = (%g %g; %g %g); ", v3, v4, v5, v6];
}

uint64_t sub_188A79090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t (*)(), void *))
{
  v6[2] = a3;
  v6[3] = a4;
  return a5(a1, a2, sub_188A85570, v6);
}

void sub_188A790E4(uint64_t (*a1)(id), uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = v3;
  v7 = [(UIView *)v3 _typedStorage];
  v8 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v9 = *(&v7->super.isa + v8);
  if (!*(v9 + 16) || (v10 = sub_188A403F4(&_s29CornerMaskingConfigurationKeyVN), (v11 & 1) == 0))
  {
    swift_endAccess();

    return;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  swift_endAccess();
  v13 = v12[3];
  v29 = v12[2];
  v30 = v13;
  *v31 = v12[4];
  *&v31[10] = *(v12 + 74);
  v28 = v12[1];
  sub_188A74E4C(&v28, v25);

  if (!*&v31[16])
  {
    return;
  }

  v14 = v30;
  v24 = *v31;
  v15 = v29;
  v16 = v28;
  v17 = [objc_allocWithZone(_UICornerMaskingProviderMux) init];
  v18 = v17;
  if (v16 == 0xC000000000000008)
  {
    if (v15 == 0xC000000000000008)
    {
      goto LABEL_6;
    }

LABEL_14:
    v17 = [v18 setTopRight_];
    if (v14 == 0xC000000000000008)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v17 = [v17 setTopLeft_];
  if (v15 != 0xC000000000000008)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v14 != 0xC000000000000008)
  {
LABEL_7:
    v17 = [v18 setBottomLeft_];
  }

LABEL_8:
  if (v24 != 0xC000000000000008)
  {
    v17 = [v18 setBottomRight_];
  }

  v19 = a1(v17);
  a3(v25);
  v20 = _sSo17UITraitCollectionC5UIKitE20cornerMaskingContextSo09_UICornereF0Cvg_0();
  v21 = [v20 mergingWith_];

  v22 = v26;
  v23 = v27;
  __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v32[0] = v21;
  (*(v23 + 16))(v32, &type metadata for CornerMaskingContextTrait, &type metadata for CornerMaskingContextTrait, &protocol witness table for CornerMaskingContextTrait, v22, v23);

  sub_188A3F5FC(&v28, &qword_1EA938E70);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
}

void sub_188A79364()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((byte_1ED48C168 & 1) == 0)
    {
      v2 = [Strong layer];
      [v2 cornerRadius];
      v4 = v3;

      if (v4 > 0.0 || (v5 = [v1 layer], objc_msgSend(v5, sel_cornerRadii), v9 = v12, v10 = v11, v7 = v14, v8 = v13, v5, v11 = v10, v12 = v9, v13 = v8, v14 = v7, _UICornerRadiiMaxValue(&v11) > 0.0))
      {
        v6 = [v1 layer];
        sub_188A79488(v6);

        v1 = v6;
      }
    }
  }
}

void sub_188A79488(void *a1)
{
  [a1 cornerRadius];
  if (v2 <= 0.0)
  {
    [a1 cornerRadii];
    if (_UICornerRadiiMaxValue(&v18) <= 0.0)
    {
      return;
    }

    [a1 cornerRadii];
    v8 = v18.f64[0];
    v9 = v19;
    v10 = v21;
    v11 = v23;
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    v15 = swift_allocObject();
    *(v15 + 16) = v9;
    v16 = *MEMORY[0x1E69796E8];
    *&v18.f64[0] = v12;
    v18.f64[1] = -3.10503618e231;
    v19 = v13;
    v20 = 0xF000000000000007;
    v21 = v14;
    v22 = 0xF000000000000007;
    v23 = v15;
    v24 = 0xF000000000000007;
    v25 = v16;
    v26 = 1;
    v17 = v16;
  }

  else
  {
    [a1 cornerRadius];
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = *MEMORY[0x1E69796E8];
    *&v18.f64[0] = v5;
    v18.f64[1] = -3.10503618e231;
    v19 = v5;
    v20 = 0xF000000000000007;
    v21 = v5;
    v22 = 0xF000000000000007;
    v23 = v5;
    v24 = 0xF000000000000007;
    v25 = v6;
    v26 = 1;
    sub_188A85484(v5);
    sub_188A854E0(0xF000000000000007);
    sub_188A85484(v5);
    sub_188A854E0(0xF000000000000007);
    sub_188A85484(v5);
    sub_188A854E0(0xF000000000000007);
    v7 = v6;
  }

  UIView.cornerMaskingConfiguration.setter(&v18);
}

uint64_t get_enum_tag_for_layout_string_5UIKit29_UICornerMaskingConfigurationV11CornerStyleV14RepresentationO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t _s5UIKit29_UICornerMaskingConfigurationV2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v38 = a1[5];
  v39 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v35 = a2[4];
  v36 = a1[4];
  v37 = a2[5];
  v31 = a2[6];
  v32 = a1[6];
  v33 = a2[7];
  v34 = a1[7];
  v42 = *a1;
  v2 = v42;
  v43 = v3;
  v40 = v5;
  v41 = v6;
  v9 = _s5UIKit29_UICornerMaskingConfigurationV11CornerStyleV2eeoiySbAE_AEtFZ_0(&v42, &v40);
  v11 = v40;
  v10 = v41;
  sub_188A85484(v2);
  sub_188A854E0(v3);
  sub_188A85484(v5);
  sub_188A854E0(v6);
  sub_188A79914(v11);
  sub_188A74020(v10);
  v12 = v43;
  sub_188A79914(v42);
  sub_188A74020(v12);
  if (v9 && (v42 = v4, v43 = v39, v40 = v8, v41 = v7, v13 = _s5UIKit29_UICornerMaskingConfigurationV11CornerStyleV2eeoiySbAE_AEtFZ_0(&v42, &v40), v14 = v40, v15 = v41, sub_188A85484(v4), sub_188A854E0(v39), sub_188A85484(v8), sub_188A854E0(v7), sub_188A79914(v14), sub_188A74020(v15), v16 = v43, sub_188A79914(v42), sub_188A74020(v16), v13) && (v42 = v36, v43 = v38, v40 = v35, v41 = v37, v17 = _s5UIKit29_UICornerMaskingConfigurationV11CornerStyleV2eeoiySbAE_AEtFZ_0(&v42, &v40), v18 = v40, v19 = v41, sub_188A85484(v36), sub_188A854E0(v38), sub_188A85484(v35), sub_188A854E0(v37), sub_188A79914(v18), sub_188A74020(v19), v20 = v43, sub_188A79914(v42), sub_188A74020(v20), v17) && (v42 = v32, v43 = v34, v40 = v31, v41 = v33, v21 = _s5UIKit29_UICornerMaskingConfigurationV11CornerStyleV2eeoiySbAE_AEtFZ_0(&v42, &v40), v22 = v40, v23 = v41, sub_188A85484(v32), sub_188A854E0(v34), sub_188A85484(v31), sub_188A854E0(v33), sub_188A79914(v22), sub_188A74020(v23), v24 = v43, sub_188A79914(v42), sub_188A74020(v24), v21))
  {
    v25 = sub_18A4A7288();
    v27 = v26;
    if (v25 == sub_18A4A7288() && v27 == v28)
    {
      v29 = 1;
    }

    else
    {
      v29 = sub_18A4A86C8();
    }
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

unint64_t sub_188A79914(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

BOOL _s5UIKit29_UICornerMaskingConfigurationV11CornerStyleV2eeoiySbAE_AEtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *a1 >> 62;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (v5 >> 62 != 2 || *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10))
      {
        return 0;
      }
    }

    else
    {
      v8 = 0xC000000000000000;
      if (v3 == 0xC000000000000000 || (v8 = 0xC000000000000008, v3 == 0xC000000000000008))
      {
        if (v5 != v8)
        {
          return 0;
        }
      }

      else if (v5 != 0xC000000000000010)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v6)
    {
      if (v5 >> 62 != 1)
      {
        return 0;
      }

      v7 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v5 &= 0x3FFFFFFFFFFFFFFFuLL;
    }

    else
    {
      if (v5 >> 62)
      {
        return 0;
      }

      v7 = *(v3 + 16);
    }

    if (v7 != *(v5 + 16))
    {
      return 0;
    }
  }

  v9 = v4 & 0xF000000000000007;
  if ((~v2 & 0xF000000000000007) == 0)
  {
    return v9 == 0xF000000000000007;
  }

  if (v9 == 0xF000000000000007)
  {
    return 0;
  }

  v11 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v11 == 2)
    {
      return v4 >> 62 == 2 && *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    }

    else if (v2 == 0xC000000000000000)
    {
      return v4 == 0xC000000000000000;
    }

    else if (v2 == 0xC000000000000008)
    {
      return v4 == 0xC000000000000008;
    }

    else
    {
      return v4 == 0xC000000000000010;
    }
  }

  else if (v11)
  {
    return v4 >> 62 == 1 && *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    return !(v4 >> 62) && *(v2 + 16) == *(v4 + 16);
  }
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

uint64_t sub_188A79C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v4;
  v9 = sub_188A85BF0(v4, a4, v8, a1, a2);

  return v9;
}

uint64_t sub_188A79D08@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v12 = sub_188A78D9C(a1), (v13 & 1) != 0))
  {
    v14 = *(v11[7] + 8 * v12);
    swift_endAccess();
    if (a2)
    {
      v15 = objc_opt_self();
      swift_unknownObjectRetain();
      sub_188A52E38(a2);
      if ([v15 _isPlaceholderTraitToken_])
      {
        v16 = swift_unknownObjectRetain();
        v17 = a2(v16);
        sub_188A55B8C(a2);
        result = swift_unknownObjectRelease_n();
        v14 = v17;
      }

      else
      {
        result = sub_188A55B8C(a2);
      }
    }

    else
    {
      result = swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v14 = a2(0);
      sub_188A55B8C(a2);
    }

    else
    {
      (*(a5 + 32))(a4, a5);
      (*(a5 + 24))(a4, a5);
      v19 = objc_opt_self();
      v20 = sub_18A4A7258();

      v21 = sub_18A4A7258();

      v14 = [v19 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v14, a1, isUniquelyReferenced_nonNull_native, &v25);
    off_1ED491B18 = v25;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v25 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(a3, a5, v14, v23);
    swift_unknownObjectRelease();
    off_1ED491B08 = v25;
    swift_endAccess();
    result = swift_unknownObjectRelease();
  }

  *a6 = v14;
  return result;
}

uint64_t UITraitCollection.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_18A4A7D38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = [v3 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  sub_188A3F29C(v19, &v17, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  v13 = swift_dynamicCast();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 56);
  if (v13)
  {
    v15(v11, 0, 1, AssociatedTypeWitness);
    sub_188A3F5FC(v19, &qword_1EA934050);
    return (*(v14 + 32))(a3, v11, AssociatedTypeWitness);
  }

  else
  {
    v15(v11, 1, 1, AssociatedTypeWitness);
    (*(a2 + 16))(a1, a2);
    sub_188A3F5FC(v19, &qword_1EA934050);
    result = (*(v14 + 48))(v11, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v9 + 8))(v11, v8);
    }
  }

  return result;
}

{
  v29 = *(a2 + 8);
  v30 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_18A4A7D38();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v23 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v26 = sub_18A4A7D38();
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v23 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = [v3 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v16)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  sub_188A3F29C(v33, &v31, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if ((v17 & 1) == 0)
  {
    v18(v11, 1, 1, v8);
    (*(v9 + 8))(v11, v26);
    goto LABEL_8;
  }

  v18(v11, 0, 1, v8);
  (*(v12 + 32))(v15, v11, v8);
  v19 = v27;
  (*(a2 + 32))(v15, a1, a2);
  (*(v12 + 8))(v15, v8);
  v20 = AssociatedTypeWitness;
  v21 = *(AssociatedTypeWitness - 8);
  if ((*(v21 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v24 + 8))(v19, v25);
LABEL_8:
    (*(v29 + 16))(a1);
    return sub_188A3F5FC(v33, &qword_1EA934050);
  }

  sub_188A3F5FC(v33, &qword_1EA934050);
  return (*(v21 + 32))(v30, v19, v20);
}

{
  v7 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18A4A7D38();
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  [v3 _valueForCGFloatTraitToken_];
  v13 = v12;
  swift_unknownObjectRelease();
  v18 = v13;
  (*(a2 + 32))(&v18, a1, a2);
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 48);
  if (v15(v11, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v14 + 32))(a3, v11, AssociatedTypeWitness);
  }

  (*(v7 + 16))(a1, v7);
  result = (v15)(v11, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v17 + 8))(v11, v9);
  }

  return result;
}

{
  v7 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18A4A7D38();
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  [v3 _valueForCGFloatTraitToken_];
  v13 = v12;
  swift_unknownObjectRelease();
  v18 = v13;
  (*(a2 + 32))(&v18, a1, a2);
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 48);
  if (v15(v11, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v14 + 32))(a3, v11, AssociatedTypeWitness);
  }

  (*(v7 + 16))(a1, v7);
  result = (v15)(v11, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v17 + 8))(v11, v9);
  }

  return result;
}

{
  v7 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18A4A7D38();
  v16 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = [v3 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  v17 = v12;
  (*(a2 + 32))(&v17, a1, a2);
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v13 + 32))(a3, v11, AssociatedTypeWitness);
  }

  (*(v7 + 16))(a1, v7);
  result = (v14)(v11, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v16 + 8))(v11, v9);
  }

  return result;
}

void sub_188A7A470()
{
  v1 = v0;
  v2 = [(UIView *)v0 _typedStorage];
  v3 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v4 = *(&v2->super.isa + v3);
  if (*(v4 + 16) && (v5 = sub_188A403F4(&_s29CornerMaskingConfigurationKeyVN), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = v7[3];
    v17[1] = v7[2];
    v17[2] = v8;
    *v18 = v7[4];
    *&v18[10] = *(v7 + 74);
    v17[0] = v7[1];
    sub_188A74E4C(v17, v16);

    if (*&v18[16])
    {
      v9 = v18[24];
      if (_UIViewMaskingConfigurationSPIEnabled())
      {
        if ((v9 & 1) == 0)
        {
          v10 = byte_1ED48C168;
          byte_1ED48C168 = 1;
          v11 = [v1 layer];
          v12 = [v1 traitCollection];
          sub_188B2266C(v12, v16);

          v15[0] = v16[0];
          v15[1] = v16[1];
          v15[2] = v16[2];
          v15[3] = v16[3];
          [v11 setCornerRadii_];

          byte_1ED48C168 = v10;
        }

        v13 = [(UIView *)v1 _typedStorage];
        v14 = sub_188A86070();

        if (v14)
        {
          sub_188BBA2F4();
        }

        [v1 _updateConcentricConstraintsIfNecessary];
      }

      sub_188A3F5FC(v17, &qword_1EA938E70);
    }
  }

  else
  {
    swift_endAccess();
  }
}

id sub_188A7A64C()
{
  v1 = v0[7];
  v20 = v0[6];
  v21 = v1;
  v2 = v0[9];
  v22 = v0[8];
  v23 = v2;
  v3 = v0[3];
  v24 = v0[2];
  v25 = v3;
  v4 = v0[5];
  v26 = v0[4];
  v27 = v4;
  v5 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v6 = v4;
  v7 = v20;
  v8 = v1;
  v9 = v22;
  v10 = v2;
  v11 = v24;
  v12 = v3;
  result = v26;
  v14 = 0;
LABEL_2:
  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  while (1)
  {
    if (v14 == 8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938FA0);
      swift_arrayDestroy();
      return v5;
    }

    if (v15 == v14)
    {
      break;
    }

    v16 = v19[v14++ + 4];
    if (v16)
    {
      v17 = v16;
      MEMORY[0x18CFE2450]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      result = sub_18A4A75F8();
      v5 = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t _UIFloatingBarEnabled()
{
  v0 = +[UIDevice currentDevice];
  if ([v0 userInterfaceIdiom] == 6)
  {
    v1 = 0;
  }

  else
  {
    if (qword_1ED49E120 != -1)
    {
      dispatch_once(&qword_1ED49E120, &__block_literal_global_267);
    }

    v1 = _MergedGlobals_1116;
  }

  return v1 & 1;
}

uint64_t sub_188A7AC24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t _UIRectEquivalentToRectWithAccuracy(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (CGRectEqualToRect(*&a1, *&a5))
  {
    return 1;
  }

  v26 = a4 - a8;
  if (a4 - a8 < 0.0)
  {
    v26 = -(a4 - a8);
  }

  if (v26 >= a9)
  {
    return 0;
  }

  v27 = a2 - a6;
  if (a2 - a6 < 0.0)
  {
    v27 = -(a2 - a6);
  }

  v28 = a1 - a5;
  if (a1 - a5 < 0.0)
  {
    v28 = -(a1 - a5);
  }

  v29 = a3 - a7;
  if (a3 - a7 < 0.0)
  {
    v29 = -(a3 - a7);
  }

  v30 = v29 < a9;
  if (v28 >= a9)
  {
    v30 = 0;
  }

  return v27 < a9 && v30;
}

id UIScenePresentationLog()
{
  if (UIScenePresentationLog_onceToken != -1)
  {
    dispatch_once(&UIScenePresentationLog_onceToken, &__block_literal_global_256);
  }

  v1 = UIScenePresentationLog___instance;

  return v1;
}

void UIAccessibilityPostNotification(UIAccessibilityNotifications notification, id argument)
{
  if (__UIAccessibilityBroadcastCallback)
  {
    __UIAccessibilityBroadcastCallback(*&notification, argument);
  }
}

uint64_t _UIPointerLockStateIsAvailableForScene(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 _hostsWindows])
  {
    v3 = v2;
    v4 = [v3 _FBSScene];

    v5 = [v3 session];
    v6 = [v5 role];
    v7 = [v6 isEqualToString:@"UIWindowSceneSessionRoleApplication"];

    v8 = [v3 _screen];
    v9 = [v8 _userInterfaceIdiom];

    if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    if (v4)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t _UIUserInterfaceSizeClassForWidthAndUserInterfaceIdiomWithHomeButton(unint64_t a1, char a2, double a3)
{
  if (a1 > 1)
  {
    if (a1 - 2 > 6)
    {
      return 0;
    }

    else
    {
      return qword_18A67CC78[a1 - 2];
    }
  }

  else
  {
    _UIScreenReferenceBoundsSizeForType(0x1BuLL);
    v7 = v6;
    _UIScreenReferenceBoundsSizeForType(3uLL);
    if (a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = a2;
    }

    if (v7 < a3)
    {
      v9 = 1;
    }

    if ((v9 & (v8 < a3)) != 0)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

void _UIPencilEventRequestBarrelFocusIfAbleForWindow(void *a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [a1 _contextId];
  v5 = [a1 _isSystemGestureWindow];
  v6 = [a1 _eventRoutingScene];
  v7 = [UIApp _mainEventEnvironment];
  v8 = v7;
  if (a1 && v4 && (v5 & 1) == 0 && v6 && v7 && (![v6 activationState] || objc_msgSend(v6, "activationState") == 1 || objc_msgSend(a1, "_isHostedInAnotherProcess")))
  {
    v9 = [v6 _screen];
    v10 = [v9 _isEmbeddedScreen];

    if (v10)
    {
      if ((_UIApplicationProcessIsWidgetRenderer() & 1) == 0)
      {
        v11 = [(UIEventEnvironment *)v8 _pencilEventForWindow:a1];
        v12 = v11;
        if (a2)
        {
          if (!v11)
          {
            goto LABEL_19;
          }

          if (!v11[23])
          {
            goto LABEL_19;
          }

          v13 = [MEMORY[0x1E696B098] valueWithPointer:a1];
          v14 = [v12[23] containsObject:v13];

          if ((v14 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else if (!v11 || ![v11[23] count])
        {
          goto LABEL_19;
        }

        BKSHIDServicesClaimGenericGestureFocus();
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("PencilInteraction", &_UIPencilEventRequestBarrelFocusIfAbleForWindow___s_category);
        if (*CategoryCachedImpl)
        {
          v16 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = MEMORY[0x1E696AEC0];
            v18 = a1;
            v19 = v16;
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            v22 = [v17 stringWithFormat:@"<%@: %p>", v21, v18];

            *buf = 138543618;
            v24 = v22;
            v25 = 1026;
            v26 = v4;
            _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Requested pencil barrel event focus for window: %{public}@; contextId: 0x%{public}X", buf, 0x12u);
          }
        }
      }
    }
  }

LABEL_19:
}

uint64_t _UIWindowKeyWindowAPIIsSceneLevel()
{
  if (qword_1EA968DD8[0] != -1)
  {
    dispatch_once(qword_1EA968DD8, &__block_literal_global_488);
  }

  return _MergedGlobals_172;
}

const char *_UIKeyWindowUTF8SceneIdentityStringForWindowScene(void *a1)
{
  v1 = [a1 _FBSScene];
  v2 = [v1 identityToken];
  v3 = [v2 stringRepresentation];
  v4 = [v3 UTF8String];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "(nil)";
  }

  return v5;
}

uint64_t _UIEventDeferringInterfaceCategoryForOwningElement()
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t stateMachineSpec_block_invoke_3(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = [MEMORY[0x1E698E3B0] sharedInstance];
  v8 = [v7 transactionAssertionWithReason:a2[5]];
  [(_UIEventDeferringManager *)*a2 _setTransactionAssertion:v8];

  if (*__UILogGetCategoryCachedImpl("EventDeferring", &stateMachineSpec_block_invoke_3___s_category))
  {
    _emitDebugLogForTransition(a3, a4, &stru_1EFB14550, a2);
  }

  return 2;
}

uint64_t stateMachineSpec_block_invoke_3_0(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 cancelsTouchesInView])
  {
    v3 = [v2 gestureRecognizer];
    [v3 setCancelsTouchesInView:1];
  }

  v4 = [v2 delegate];
  [v4 clickDriver:v2 didPerformEvent:1];

  return 3;
}

uint64_t stateMachineSpec_block_invoke_3_6(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 cancelsTouchesInView])
  {
    v3 = [v2 gestureRecognizer];
    [v3 setCancelsTouchesInView:1];
  }

  v4 = [v2 delegate];
  [v4 clickDriver:v2 didPerformEvent:1];

  return 3;
}

uint64_t stateMachineSpec_block_invoke_3_7(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 cancelsTouchesInView])
  {
    v3 = [v2 gestureRecognizer];
    [v3 setCancelsTouchesInView:1];
  }

  v4 = [v2 delegate];
  [v4 clickDriver:v2 didPerformEvent:1];

  return 3;
}

id _queue_compatibilityRecordsForDisplay(uint64_t a1)
{
  v2 = _eventDeferringCompatibilityQueue();
  dispatch_assert_queue_V2(v2);

  v3 = _queue_compatibilityRecords();
  v4 = [v3 objectForKey:a1];

  return v4;
}

uint64_t stateMachineSpec_block_invoke_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v160 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  v129 = a4;
  v137 = _NSStringFromUIDeferringAction[a4];
  v7 = [(_UIEventDeferringManager *)*v5 internalBehavior];
  v8 = [v7 wantsLocalIdealRules];

  v9 = 0x1E698E000uLL;
  p_superclass = &OBJC_METACLASS____UITextAttributeDictionaryImplM.superclass;
  v136 = v5;
  if (v8)
  {
    v11 = [(_UIEventDeferringManager *)*v5 _descriptorForCompatibility:v6 environment:v5[1] deferringToken:?];
    v12 = [(_UIEventDeferringManager *)*v5 _predicateForDescriptor:v11];
    v13 = [(_UIEventDeferringManager *)*v5 _targetForDescriptor:v11];
    v14 = [MEMORY[0x1E698E3B0] sharedInstance];
    v15 = v5[1];
    if (v15)
    {
      v15 = v15[10];
    }

    v16 = v15;
    v17 = [v14 deferEventsMatchingPredicate:v12 toTarget:v13 withReason:v16];

    v18 = v17;
    v19 = [[_UIEventDeferringRecord alloc] _initWithDescriptor:v11 invalidationToken:v17 deferringToken:v5[1] recordingManagerPointer:*v5 recreationReasons:0];
    v20 = *v5;
    v151 = 0;
    v21 = [(_UIEventDeferringManager *)v20 _shouldDisableNewRecord:v19 outRecreationReasons:&v151];
    v134 = v151;
    if (v21)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD80);
      if (*CategoryCachedImpl)
      {
        v117 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          v118 = *v5;
          *buf = 134349826;
          *&buf[4] = v118;
          *&buf[12] = 2114;
          *&buf[14] = v6;
          *&buf[22] = 2114;
          v153 = v137;
          LOWORD(v154) = 2114;
          *(&v154 + 2) = v19;
          _os_log_impl(&dword_188A29000, v117, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Disabling new local record: %{public}@", buf, 0x2Au);
        }
      }

      v130 = v12;
      v132 = v11;
      v126 = v13;
      if (v19)
      {
        v23 = v19[3];
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      [v24 invalidate];

      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v25 = v134;
      v26 = [v25 countByEnumeratingWithState:&v147 objects:v159 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v148;
        do
        {
          v29 = 0;
          do
          {
            if (*v148 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v147 + 1) + 8 * v29);
            v31 = _UIEventDeferringShorterRecreationReasonStringForReason(v30);
            v32 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD88);
            if (*v32)
            {
              log = *(v32 + 8);
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                v33 = *v136;
                *buf = 134349826;
                *&buf[4] = v33;
                *&buf[12] = 2114;
                *&buf[14] = v6;
                *&buf[22] = 2114;
                v153 = v137;
                LOWORD(v154) = 2114;
                *(&v154 + 2) = v31;
                _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Adding recreation reason: %{public}@", buf, 0x2Au);
              }
            }

            [(_UIEventDeferringRecord *)v19 addRecreationReason:v30];

            ++v29;
          }

          while (v27 != v29);
          v34 = [v25 countByEnumeratingWithState:&v147 objects:v159 count:16];
          v27 = v34;
        }

        while (v34);
      }

      v5 = v136;
      p_superclass = (&OBJC_METACLASS____UITextAttributeDictionaryImplM + 8);
      v9 = 0x1E698E000;
      v12 = v130;
      v11 = v132;
      v13 = v126;
    }

    v35 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD90);
    if (*v35)
    {
      v111 = *(v35 + 8);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        v112 = *v5;
        *buf = 134349826;
        *&buf[4] = v112;
        *&buf[12] = 2114;
        *&buf[14] = v6;
        *&buf[22] = 2114;
        v153 = v137;
        LOWORD(v154) = 2114;
        *(&v154 + 2) = v19;
        _os_log_impl(&dword_188A29000, v111, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: New local record: %{public}@", buf, 0x2Au);
      }
    }

    [(_UIEventDeferringManager *)*v5 _setLocalRecord:v19 forEnvironment:v6];
  }

  else
  {
    v19 = 0;
  }

  v36 = [(_UIEventDeferringManager *)*v5 internalBehavior];
  v37 = [v36 wantsLocalCompatibilityRules];

  v38 = "_UIMonochromaticTreatment";
  if (!v37)
  {
    v74 = 0;
    goto LABEL_59;
  }

  v39 = v9;
  v40 = p_superclass;
  v41 = [(_UIEventDeferringManager *)*v5 _descriptorForCompatibility:v6 environment:v5[1] deferringToken:?];
  v42 = [(_UIEventDeferringManager *)*v5 _predicateForDescriptor:v41];
  v135 = [(_UIEventDeferringManager *)*v5 _targetForDescriptor:v41];
  v43 = MEMORY[0x1E696AEC0];
  v44 = v5[1];
  if (v44)
  {
    v44 = v44[10];
  }

  v45 = v44;
  v46 = [v43 stringWithFormat:@"Compatibility: %@", v45];

  v47 = [*(v39 + 944) sharedInstance];
  v125 = v42;
  v124 = v46;
  v48 = [v47 deferEventsMatchingPredicate:v42 toTarget:v135 withReason:v46];

  v127 = v41;
  loga = v48;
  v49 = [(_UIEventDeferringRecord *)objc_alloc((v40 + 129)) _initWithDescriptor:v41 invalidationToken:v48 deferringToken:v5[1] recordingManagerPointer:*v5 recreationReasons:0];
  v131 = v6;
  v38 = "_UIMonochromaticTreatment";
  if (v19)
  {
    v50 = v19[2];
    if (v49)
    {
      v51 = v49[2];
    }

    else
    {
      v51 = 0;
    }

    v52 = v51;
    if (v50)
    {
      v53 = v50[9];
      if (v52)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v53 = 0;
      if (v52)
      {
LABEL_31:
        v54 = v52[9];
        if (v50)
        {
          goto LABEL_32;
        }

        goto LABEL_96;
      }
    }

    v54 = 0;
    if (v50)
    {
LABEL_32:
      v55 = *(v50 + 5);
      if (v52)
      {
LABEL_33:
        v56 = *(v52 + 5);
LABEL_34:

        v57 = v53 == v54;
        v6 = v131;
        v38 = "_UIMonochromaticTreatment";
        if (!v57 || v55 != v56)
        {
          v115 = [MEMORY[0x1E696AAA8] currentHandler];
          v116 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stateMachineSpec_block_invoke_17"];
          [v115 handleFailureInFunction:v116 file:@"_UIEventDeferringManager.m" lineNumber:1226 description:{@"[%p] [%@] %@: Invalid state. Local record target windows do not match", *v5, v131, v137}];
        }

        goto LABEL_37;
      }

LABEL_97:
      v56 = 0;
      goto LABEL_34;
    }

LABEL_96:
    v55 = 0;
    if (v52)
    {
      goto LABEL_33;
    }

    goto LABEL_97;
  }

LABEL_37:
  v58 = *v5;
  v146 = 0;
  v59 = [(_UIEventDeferringManager *)v58 _shouldDisableNewRecord:v49 outRecreationReasons:&v146];
  v133 = v146;
  if (v59)
  {
    v60 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD98);
    if (*v60)
    {
      v119 = *(v60 + 8);
      if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        v120 = *v5;
        *buf = 134349826;
        *&buf[4] = v120;
        *&buf[12] = 2114;
        *&buf[14] = v6;
        *&buf[22] = 2114;
        v153 = v137;
        LOWORD(v154) = 2114;
        *(&v154 + 2) = v49;
        _os_log_impl(&dword_188A29000, v119, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Disabling new local compatibility record: %{public}@", buf, 0x2Au);
      }
    }

    if (v49)
    {
      v61 = v49[3];
    }

    else
    {
      v61 = 0;
    }

    v62 = v61;
    [v62 invalidate];

    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v63 = v133;
    v64 = [v63 countByEnumeratingWithState:&v142 objects:v158 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v143;
      do
      {
        v67 = 0;
        do
        {
          if (*v143 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v68 = *(*(&v142 + 1) + 8 * v67);
          v69 = _UIEventDeferringShorterRecreationReasonStringForReason(v68);
          v70 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CDA0);
          if (*v70)
          {
            v121 = *(v70 + 8);
            if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
            {
              v71 = *v136;
              *buf = 134349826;
              *&buf[4] = v71;
              *&buf[12] = 2114;
              *&buf[14] = v131;
              *&buf[22] = 2114;
              v153 = v137;
              LOWORD(v154) = 2114;
              *(&v154 + 2) = v69;
              _os_log_impl(&dword_188A29000, v121, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Adding recreation reason: %{public}@", buf, 0x2Au);
            }
          }

          [(_UIEventDeferringRecord *)v49 addRecreationReason:v68];

          ++v67;
        }

        while (v65 != v67);
        v72 = [v63 countByEnumeratingWithState:&v142 objects:v158 count:16];
        v65 = v72;
      }

      while (v72);
    }

    v6 = v131;
    v5 = v136;
    v38 = "_UIMonochromaticTreatment";
  }

  v73 = [(_UIEventDeferringManager *)*v5 _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
  if (v73)
  {
    [MEMORY[0x1E698E3C8] displayWithHardwareIdentifier:v73];
  }

  else
  {
    [MEMORY[0x1E698E3C8] builtinDisplay];
  }
  v75 = ;
  v76 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CDA8);
  if (*v76)
  {
    v113 = *(v76 + 8);
    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      v114 = *v5;
      *buf = 134349826;
      *&buf[4] = v114;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      *&buf[22] = 2114;
      v153 = v137;
      LOWORD(v154) = 2114;
      *(&v154 + 2) = v49;
      _os_log_impl(&dword_188A29000, v113, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: New local compatibility record: %{public}@", buf, 0x2Au);
    }
  }

  v77 = _eventDeferringCompatibilityQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = *(v38 + 235);
  block[2] = stateMachineSpec_block_invoke_18;
  block[3] = &unk_1E70F6228;
  v139 = v75;
  v140 = v6;
  v74 = v49;
  v141 = v74;
  v78 = v75;
  dispatch_sync(v77, block);

LABEL_59:
  v79 = [v6 description];
  v80 = [v79 UTF8String];

  v81 = [(__CFString *)v137 UTF8String];
  if (os_variant_has_internal_diagnostics())
  {
    v98 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CDB0) + 8);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      v99 = v38;
      v100 = *v5;
      v101 = v98;
      v102 = [(_UIEventDeferringRecord *)v19 needsRecreation];
      v103 = [(_UIEventDeferringRecord *)v74 needsRecreation];
      *buf = 134350594;
      *&buf[4] = v100;
      v38 = v99;
      *&buf[12] = 2082;
      *&buf[14] = v80;
      *&buf[22] = 2082;
      v153 = v81;
      LOWORD(v154) = 2050;
      *(&v154 + 2) = v19;
      WORD5(v154) = 1026;
      HIDWORD(v154) = v102;
      *v155 = 2050;
      *&v155[2] = v74;
      v156 = 1026;
      v157 = v103;
      _os_log_impl(&dword_188A29000, v101, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] %{public}s: Wrote local ideal record: %{public}p; ideal disabled: %{public}d; wrote compatibility record: %{public}p; compatibility disabled: %{public}d", buf, 0x40u);
    }
  }

  if (v19)
  {
    v82 = v19;
  }

  else
  {
    v82 = v74;
  }

  v83 = v82;
  v84 = v83;
  if (v83)
  {
    v85 = v83[2];
    v86 = v85;
    if (v85)
    {
      v87 = *(v85 + 9);
      goto LABEL_66;
    }
  }

  else
  {
    v104 = [MEMORY[0x1E696AAA8] currentHandler];
    v105 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stateMachineSpec_block_invoke_17"];
    [v104 handleFailureInFunction:v105 file:@"_UIEventDeferringManager.m" lineNumber:1256 description:{@"[%p] [%@] %@: Invalid state. No local records were written.", *v5, v6, v137}];

    v86 = 0;
  }

  v87 = 0;
LABEL_66:
  v88 = v87;

  v89 = *v5;
  if (*v5)
  {
    v90 = [v6 description];
    v91 = [v90 UTF8String];

    if (!v88)
    {
      v106 = [MEMORY[0x1E696AAA8] currentHandler];
      [v106 handleFailureInMethod:sel__startObservingContextForLocalTargetWindow_inEnvironment_ object:v89 file:@"_UIEventDeferringManager.m" lineNumber:2633 description:{@"[%p] [%s] %s: Window is required to start observing context changes", v89, v91, "-[_UIEventDeferringManager _startObservingContextForLocalTargetWindow:inEnvironment:]"}];
    }

    v92 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE60);
    if (*v92)
    {
      v107 = *(v92 + 8);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        v108 = v107;
        v109 = [v88 _contextId];
        *buf = 134349826;
        *&buf[4] = v89;
        *&buf[12] = 2082;
        *&buf[14] = v91;
        *&buf[22] = 2050;
        v153 = v88;
        LOWORD(v154) = 1026;
        *(&v154 + 2) = v109;
        _os_log_impl(&dword_188A29000, v108, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}s] Start observing context for local target window: %{public}p; contextId: 0x%{public}X", buf, 0x26u);
      }
    }

    v93 = [MEMORY[0x1E696B098] valueWithPointer:v88];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = *(v38 + 235);
    *&buf[16] = __85___UIEventDeferringManager__startObservingContextForLocalTargetWindow_inEnvironment___block_invoke;
    v153 = &unk_1E70F36D0;
    *(&v154 + 1) = v88;
    *v155 = v91;
    *&v154 = v89;
    v94 = [(_UIEventDeferringManager *)v89 _trackedLocalTargetWindowPointerForEnvironment:v6];
    if (v94)
    {
      v110 = [MEMORY[0x1E696AAA8] currentHandler];
      [v110 handleFailureInMethod:sel__trackLocalTargetWindowPointer_forEnvironment_beginObservingBlock_ object:v89 file:@"_UIEventDeferringManager.m" lineNumber:2609 description:{@"[%p] [%@] %s: Invalid state. Attempting to set target window when one already exists: existing: %p; new: %p;", v89, v6, "-[_UIEventDeferringManager _trackLocalTargetWindowPointer:forEnvironment:beginObservingBlock:]", objc_msgSend(v94, "pointerValue"), objc_msgSend(v93, "pointerValue")}];
    }

    v95 = [(_UIEventDeferringManager *)v89 _trackedLocalTargetWindowPointers];
    [v95 setObject:v93 forKey:v6];

    v96 = [(_UIEventDeferringManager *)v89 _localTargetWindowPointersUnderObservation];
    LOBYTE(v95) = [v96 containsObject:v93];
    [v96 addObject:v93];
    if ((v95 & 1) == 0)
    {
      (*&buf[16])(buf);
    }

    v5 = v136;
  }

  if (*__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CDB8))
  {
    _emitDebugLogForTransition(a3, v129, &stru_1EFB14550, v5);
  }

  return 6;
}

uint64_t stateMachineSpec_block_invoke_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = _NSStringFromUIDeferringAction[a4];
  v10 = [(_UIEventDeferringManager *)*a2 _currentLocalOrCompatibilityRecordForEnvironment:v7 forcePreviousHardwareIdentifier:0];
  v11 = [(_UIEventDeferringManager *)*a2 _topRemoteRecordInStackForEnvironment:v7];
  v12 = v11;
  if (v11)
  {
    v13 = [(_UIEventDeferringRecord *)v11 recreationReasons];
    v14 = [v13 containsObject:v8];

    if (v10)
    {
      if ((v14 & 1) == 0)
      {
        v37 = a3;
        v15 = v10[2];
        v16 = v15;
        if (v15)
        {
          v17 = *(v15 + 9);
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        WeakRetained = objc_loadWeakRetained(v12 + 4);
        v20 = WeakRetained;
        if (WeakRetained)
        {
          v21 = *(WeakRetained + 6);
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;

        if (([(_UIEventDeferringManager *)*a2 _isRemoteRuleOwningElement:v22 visibleForLocalTargetWindow:v18]& 1) == 0)
        {
          v23 = v12[3];
          [v23 invalidate];

          [(_UIEventDeferringRecord *)v12 addRecreationReason:v8];
          v24 = [v7 description];
          v36 = [v24 UTF8String];

          v25 = [(__CFString *)v9 UTF8String];
          if (os_variant_has_internal_diagnostics())
          {
            v35 = v25;
            v27 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CDC0) + 8);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v30 = *a2;
              log = v27;
              v32 = v22;
              if (v32)
              {
                v33 = MEMORY[0x1E696AEC0];
                v28 = objc_opt_class();
                v29 = NSStringFromClass(v28);
                v34 = [v33 stringWithFormat:@"<%@: %p>", v29, v32];
              }

              else
              {
                v34 = @"(nil)";
              }

              *buf = 134350082;
              v39 = v30;
              v40 = 2082;
              v41 = v36;
              v42 = 2082;
              v43 = v35;
              v44 = 2050;
              v45 = v12;
              v46 = 2114;
              v47 = v34;
              v27 = log;
              _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] %{public}s: Disabling top remote record for window level mismatch: %{public}p; remote element: %{public}@", buf, 0x34u);
            }
          }
        }

        a3 = v37;
      }
    }
  }

  if (*__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CDC8))
  {
    _emitDebugLogForTransition(a3, a4, &stru_1EFB14550, a2);
  }

  return 9;
}

void __destructor_8_s8_s16_s24_s32_s40_s56(uint64_t a1)
{
  v2 = *(a1 + 56);
}

uint64_t _UIHomeAffordanceValidateObserver(void *a1, void *a2, void *a3, char a4)
{
  if (!a2 || !a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIHomeAffordanceValidateObserver(id<_UIHomeAffordanceNotifyingInternal>  _Nonnull const __strong, id<_UIHomeAffordanceObserver>  _Nonnull const __strong, UIWindow * _Nonnull const __strong, BOOL)"}];
    if (a2)
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = a2;
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v13 = [v22 stringWithFormat:@"<%@: %p>", v25, v23];

      if (a3)
      {
LABEL_8:
        v26 = MEMORY[0x1E696AEC0];
        v27 = a3;
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v18 = [v26 stringWithFormat:@"<%@: %p>", v29, v27];

LABEL_11:
        v19 = [a1 succinctDescription];
        [v8 handleFailureInFunction:v12 file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:227 description:{@"Invalid home affordance observer: %@; window: %@; notifier: %@", v13, v18, v19}];
LABEL_17:

        v34 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v13 = @"(nil)";
      if (a3)
      {
        goto LABEL_8;
      }
    }

    v18 = @"(nil)";
    goto LABEL_11;
  }

  v8 = [a1 windowHostingScene];
  v9 = [a3 _windowHostingScene];
  v10 = v9;
  if (v9 == v8)
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIHomeAffordanceValidateObserver(id<_UIHomeAffordanceNotifyingInternal>  _Nonnull const __strong, id<_UIHomeAffordanceObserver>  _Nonnull const __strong, UIWindow * _Nonnull const __strong, BOOL)"}];
      v14 = MEMORY[0x1E696AEC0];
      v15 = a3;
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v14 stringWithFormat:@"<%@: %p>", v17, v15];

      v19 = [v15 _windowHostingScene];
      v20 = [v19 succinctDescription];
      v21 = [v8 succinctDescription];
      [v12 handleFailureInFunction:v13 file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:237 description:{@"Invalid home affordance observer request for window not in notifier scene: %@; window's scene: %@; expected scene: %@; notifier: %@", v18, v20, v21, a1}];
LABEL_16:

      goto LABEL_17;
    }
  }

  v30 = [v8 _screen];
  v31 = [v30 _userInterfaceIdiom];

  v32 = _UIActiveViewServiceSessionEffectiveIdiomForIdiom(v31);
  v33 = +[_UIActiveViewServiceSessionTracker sharedTracker];
  v12 = [(_UIActiveViewServiceSessionTracker *)v33 viewServiceSessionForHostedWindow:a3 inUserInterfaceIdiom:v32];

  v34 = 1;
  if (v12 && (a4 & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIHomeAffordanceValidateObserver(id<_UIHomeAffordanceNotifyingInternal>  _Nonnull const __strong, id<_UIHomeAffordanceObserver>  _Nonnull const __strong, UIWindow * _Nonnull const __strong, BOOL)"}];
    v35 = MEMORY[0x1E696AEC0];
    v36 = a2;
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v19 = [v35 stringWithFormat:@"<%@: %p>", v38, v36];

    v20 = [v8 succinctDescription];
    v21 = [a1 succinctDescription];
    [(__CFString *)v13 handleFailureInFunction:v18 file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:250 description:@"Unexpected legacy view service home affordance observer: %@; scene: %@; notifier: %@", v19, v20, v21, v40];
    goto LABEL_16;
  }

LABEL_18:

  return v34;
}

uint64_t _UIActiveViewServiceSessionEffectiveIdiomForIdiom(uint64_t a1)
{
  if (a1 >= 10)
  {
    v2 = 10;
  }

  else
  {
    v2 = a1;
  }

  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (a1 == -1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

id _UIKeyboardSceneDelegateLogger()
{
  if (qword_1ED49DCA8 != -1)
  {
    dispatch_once(&qword_1ED49DCA8, &__block_literal_global_1148);
  }

  v1 = qword_1ED49DCA0;

  return v1;
}

uint64_t UIKeyboardTypeSupportsSmartTyping(unint64_t a1)
{
  result = 1;
  if (a1 > 0xD || ((1 << a1) & 0x2645) == 0)
  {
    v3 = a1 - 123;
    if (v3 > 3 || v3 == 2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __UIKeyboardGetSupportedSoftwareKeyboardsForInputModeAndIdiom_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:@"Korean10Key"])
  {
    v3 = MGGetSInt32Answer() == 1;
  }

  else if ([&unk_1EFE2C250 containsObject:v2])
  {
    v3 = _os_feature_enabled_impl();
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

id sharedInputManagerMux()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getTUIKeyboardInputManagerMuxClass_softClass;
  v8 = getTUIKeyboardInputManagerMuxClass_softClass;
  if (!getTUIKeyboardInputManagerMuxClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getTUIKeyboardInputManagerMuxClass_block_invoke;
    v4[3] = &unk_1E70F2F20;
    v4[4] = &v5;
    __getTUIKeyboardInputManagerMuxClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 sharedInstance];

  return v2;
}

void sub_188A7FE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sharedInputManagerMux_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = qword_1ED499380;
  v8 = qword_1ED499380;
  if (!qword_1ED499380)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getTUIKeyboardInputManagerMuxClass_block_invoke_0;
    v4[3] = &unk_1E70F2F20;
    v4[4] = &v5;
    __getTUIKeyboardInputManagerMuxClass_block_invoke_0(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 sharedInstance];

  return v2;
}

void sub_188A7FF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIApplicationIsFirstPartyStickers()
{
  if (qword_1EA992ED8 != -1)
  {
    dispatch_once(&qword_1EA992ED8, &__block_literal_global_1267);
  }

  return byte_1EA992DB4;
}

uint64_t _UIApplicationIsStickerPickerService()
{
  if (qword_1EA992EE8 != -1)
  {
    dispatch_once(&qword_1EA992EE8, &__block_literal_global_1277);
  }

  return byte_1EA992DB6;
}

void sub_188A809D0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v7 = *&v6[OBJC_IVAR____TtC5UIKit15BridgedProperty_property + 8];
  ObjectType = swift_getObjectType();
  sub_188A55598(v10, v9);
  a4(v9, ObjectType, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
}

uint64_t sub_188A80A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11[-v7];
  sub_188A55598(a1, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a3 + 96))(v8, a2, a3);
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_188A80BA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_188A55598(a1, v8);
  sub_188A73350();
  swift_dynamicCast();
  [v7 doubleValue];
  v5 = v4;

  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v5;
  return result;
}

void sub_188A80C3C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v6 = (v24 - v5);
  if (*(v1 + *(v7 + 184)))
  {
    v8 = *MEMORY[0x1E695D930];
    v24[1] = 0;
    v24[2] = 0xE000000000000000;
    sub_18A4A80E8();
    v9 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v9);

    MEMORY[0x18CFE22D0](0xD000000000000034, 0x800000018A6A39A0);
    v10 = objc_allocWithZone(MEMORY[0x1E695DF30]);
    v11 = sub_18A4A7258();

    v24[0] = [v10 initWithName:v8 reason:v11 userInfo:0];

    [v24[0] raise];
    v12 = v24[0];
  }

  else
  {
    v13 = v1[3];
    MEMORY[0x1EEE9AC00](v4);
    v15 = *(v14 + 88);
    v24[-4] = v2;
    v24[-3] = v15;
    v24[0] = v16;
    v24[-2] = v16;
    type metadata accessor for UIAnimatableProperty.ProtectedState();
    v17 = *(*v13 + *MEMORY[0x1E69E6B68] + 16);
    v18 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v13 + v18));
    sub_188A8106C(v13 + v17, v6);
    os_unfair_lock_unlock((v13 + v18));
    v19 = sub_188A81128();
    if (v19)
    {
      v20 = v19;
      sub_188A8D8A0(v19);
    }

    if ((sub_188A8E7F8(v6) & 1) == 0)
    {
      sub_188A83298();
      v21 = sub_188A81128();
      if (v21)
      {
        v22 = *&v21[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueChangedWithoutAnimationCallback];
        v23 = v21;
        sub_188A52E38(v22);

        if (v22)
        {
          if (sub_18A4A7248())
          {
            (*(v3 + 8))(v6, v2);
            sub_188A55B8C(v22);
            return;
          }

          v22();
          sub_188A55B8C(v22);
        }
      }
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_188A80FFC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v6 = *(*(*(a2 + 80) - 8) + 8);

  return v6(a1);
}

uint64_t sub_188A8106C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v4 - 8);
  (*(v6 + 16))(a2, a1, v4);
  return (*(v6 + 24))(a1, v5, v4);
}

void *sub_188A81128()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

unint64_t sub_188A81190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B10);
    v3 = sub_18A4A8488();
    v4 = a1 + 32;

    while (1)
    {
      sub_188A3F29C(v4, &v18, &qword_1EA934D90);
      v5 = v18;
      v6 = v19;
      v7 = v20;
      result = sub_188A82868(v18, v19, v20);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 24 * result);
      *v10 = v5;
      v10[1] = v6;
      v10[2] = v7;
      v11 = (v3[7] + 80 * result);
      *v11 = v21;
      v12 = v22;
      v13 = v23;
      v14 = v25;
      v11[3] = v24;
      v11[4] = v14;
      v11[1] = v12;
      v11[2] = v13;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      v4 += 104;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_188A813A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(v3 + 48) + 24 * v13;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    sub_188A83170(*(v3 + 56) + 80 * v13, &v31 + 8);
    *&v30 = v16;
    *(&v30 + 1) = v15;
    *&v31 = v17;
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;
    v18 = v16;

    if (v16)
    {
      *&v38[48] = v34;
      *&v38[64] = v35;
      *&v38[80] = v36;
      v37 = v30;
      *v38 = v31;
      *&v38[16] = v32;
      *&v38[32] = v33;
      sub_188A3F29C(&v37, &v30, &qword_1EA936ED8);
      v19 = v30;

      *a1 = v19;
      sub_188A3F29C(&v37, v28, &qword_1EA936ED8);

      v20 = v28[2];
      *(a1 + 8) = v28[1];
      *(a1 + 16) = v20;
      v21 = v37;
      v25 = *&v38[40];
      v26 = *&v38[56];
      v27 = *&v38[72];
      v23 = *&v38[8];
      v24 = *&v38[24];

      *(a1 + 40) = v24;
      *(a1 + 56) = v25;
      *(a1 + 72) = v26;
      *(a1 + 88) = v27;
      *(a1 + 24) = v23;
      sub_188A8F7CC(&v29);
      return sub_188A8F7CC(&v31 + 8);
    }

    else
    {
LABEL_13:
      result = sub_188A3F5FC(&v30, &qword_1EA936ED0);
      *(a1 + 96) = 0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        *v1 = v3;
        v1[1] = v4;
        v1[2] = v6;
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t UIView._background.setter(uint64_t a1)
{
  v2 = v1;
  v4 = [(UIView *)v1 _typedStorage];
  sub_188A6852C(v48);

  if (v49 || *(a1 + 24))
  {
    sub_188A3F29C(v48, &v42, &unk_1EA933EC0);
    if (*(&v43 + 1))
    {
      sub_188A53994(&v42, &v33);
      sub_188ACE668(&v42);
      sub_188A5EBAC(&v33, &v36);
      sub_188A3F29C(a1, &v33, &unk_1EA93C9A0);
      if (v34)
      {
        sub_188A5EBAC(&v33, &v42);
        v5 = *(&v37 + 1);
        v6 = v38;
        v7 = __swift_project_boxed_opaque_existential_0(&v36, *(&v37 + 1));
        LOBYTE(v5) = sub_188AF39D8(v7, &v42, v5, v6);
        __swift_destroy_boxed_opaque_existential_0Tm(&v42);
        __swift_destroy_boxed_opaque_existential_0Tm(&v36);
        if (v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_188A3F5FC(&v33, &unk_1EA93C9A0);
        __swift_destroy_boxed_opaque_existential_0Tm(&v36);
      }
    }

    else
    {
      sub_188A3F5FC(&v42, &unk_1EA933EC0);
    }

    sub_188AF48C4(a1);
    goto LABEL_15;
  }

LABEL_6:
  sub_188A3F29C(v48, &v36, &unk_1EA933EC0);
  if (*(&v37 + 1))
  {
    v44 = v38;
    v45 = v39;
    v46 = v40;
    v47 = v41;
    v42 = v36;
    v43 = v37;
    sub_188A3F29C(a1, &v36, &unk_1EA93C9A0);
    if (*(&v37 + 1))
    {
      sub_188A5EBAC(&v36, &v33);
      __swift_assign_boxed_opaque_existential_1(&v42, &v33);
      sub_188AF559C(&v42, &v36);
      sub_188AF4690(&v36);
      __swift_destroy_boxed_opaque_existential_0Tm(&v33);
    }

    else
    {
      sub_188A3F5FC(&v36, &unk_1EA93C9A0);
    }

    sub_188ACE668(&v42);
  }

  else
  {
    sub_188A3F5FC(&v36, &unk_1EA933EC0);
  }

LABEL_15:
  sub_188A3F29C(a1, &v36, &unk_1EA93C9A0);
  if (!*(&v37 + 1))
  {
    sub_188A3F5FC(&v36, &unk_1EA93C9A0);
    if (!v49)
    {
      goto LABEL_29;
    }

LABEL_21:
    if (!*(a1 + 24))
    {
      v8 = [(UIView *)v2 _traitOverrides];
      v9 = [(_UITraitOverrides *)v8 _swiftImplCopy];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
      inited = swift_initStackObject();
      *(inited + 16) = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *(inited + 16);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = [(_UITraitOverrides *)*(inited + 16) _swiftImplCopy];
        v13 = swift_allocObject();
        *(v13 + 16) = v12;

        inited = v13;
      }

      v14 = qword_1ED491B40;
      v15 = v12;
      if (v14 != -1)
      {
        swift_once();
      }

      if (qword_1ED491AF0 != -1)
      {
        swift_once();
      }

      v16 = off_1ED491B48;
      os_unfair_lock_lock(*(off_1ED491B48 + 2));
      v17 = sub_18901A704(&type metadata for MorphableProviderTraitDefinition, 0);
      os_unfair_lock_unlock(v16[2]);
      [(_UITraitOverrides *)v15 _removeTraitToken:v17];

      swift_unknownObjectRelease();
      v18 = [(UIView *)v2 _traitOverrides];
      v19 = *(inited + 16);

      [(_UITraitOverrides *)v18 _replaceWithOverrides:v19];
    }

    goto LABEL_29;
  }

  sub_188A5EBAC(&v36, &v42);
  if (!v49)
  {
    sub_188A53994(&v42, &v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v22 = [(UIView *)v2 _traitOverrides];
      v23 = [(_UITraitOverrides *)v22 _swiftImplCopy];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
      v24 = swift_initStackObject();
      *(v24 + 16) = v23;
      *&v36 = v24;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_18901F424;
      *(v25 + 24) = v21;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93A3B0);
      v27 = objc_allocWithZone(v26);
      v28 = &v27[*((*MEMORY[0x1E69E7D40] & *v27) + 0x58)];
      *v28 = sub_189026DD4;
      v28[1] = v25;
      v35.receiver = v27;
      v35.super_class = v26;

      v29 = objc_msgSendSuper2(&v35, sel_init);
      sub_18901DF38(v29);

      v30 = v36;
      v31 = [(UIView *)v2 _traitOverrides];
      v32 = *(v30 + 16);

      [(_UITraitOverrides *)v31 _replaceWithOverrides:v32];

      __swift_destroy_boxed_opaque_existential_0Tm(&v42);
      sub_188A3F5FC(v48, &unk_1EA933EC0);

      return sub_188A3F5FC(a1, &unk_1EA93C9A0);
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v42);
  if (v49)
  {
    goto LABEL_21;
  }

LABEL_29:
  sub_188A3F5FC(v48, &unk_1EA933EC0);
  return sub_188A3F5FC(a1, &unk_1EA93C9A0);
}

uint64_t sub_188A81C30()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188A81C68()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_188A81F9C()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 24));
  sub_188A8EE38((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_188A81FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), void *))
{
  v7[2] = a4;
  v7[3] = a5;
  return a6(a1, a2, a3, sub_188A85570, v7);
}

uint64_t sub_188A8203C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_188A82098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_188A82100(_OWORD *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_188A82868(a2, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_188D2326C();
      v13 = v21;
      goto LABEL_8;
    }

    sub_188A8295C(v18, a5 & 1);
    v13 = sub_188A82868(a2, a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 80 * v13;

    return sub_188A8323C(a1, v24);
  }

  else
  {
    sub_188A8F760(v13, a2, a3, a4, a1, v23);
    v26 = a2;
  }
}

void sub_188A8225C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 24) == 1)
  {
    sub_188A3F5FC(a1, &qword_1EA935CA0);
    sub_1891E97B0(a2, a3, a4, v12);

    sub_188A3F5FC(v12, &qword_1EA935CA0);
  }

  else
  {
    v8 = *(a1 + 48);
    v12[2] = *(a1 + 32);
    v12[3] = v8;
    v12[4] = *(a1 + 64);
    v9 = *(a1 + 16);
    v12[0] = *a1;
    v12[1] = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    sub_188A82100(v12, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v11;
  }
}

uint64_t sub_188A82354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _GlassBackgroundStyle();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A460);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v33 - v8;
  v11 = *(v10 + 56);
  sub_188A82098(a1, v33 - v8, type metadata accessor for _GlassBackgroundStyle);
  sub_188A82098(a2, &v9[v11], type metadata accessor for _GlassBackgroundStyle);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70);
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v9, 2, v12);
  if (!v14)
  {
    sub_188A82098(v9, v6, type metadata accessor for _GlassBackgroundStyle);
    if (v13(&v9[v11], 2, v12))
    {
      sub_188A3F5FC(v6, &qword_1EA937E70);
      goto LABEL_9;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A468);
    MEMORY[0x1EEE9AC00](v16 - 8);
    v18 = v33 - v17;
    v20 = *(v19 + 56);
    sub_188A3F704(v6, v33 - v17, &qword_1EA937E70);
    sub_188A3F704(&v9[v11], &v18[v20], &qword_1EA937E70);
    v21 = sub_18A4A2F68();
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);
    v24 = v23(v18, 1, v21);
    if (v24 == 1)
    {
      if (v23(&v18[v20], 1, v21) == 1)
      {
        sub_188A3F5FC(v18, &qword_1EA937E70);
        goto LABEL_8;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v24);
      v26 = v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_188A3F29C(v18, v26, &qword_1EA937E70);
      v27 = v23(&v18[v20], 1, v21);
      if (v27 != 1)
      {
        v33[1] = v33;
        v28 = MEMORY[0x1EEE9AC00](v27);
        v30 = v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v22 + 32))(v30, &v18[v20], v21, v28);
        sub_18902B724();
        v31 = sub_18A4A7248();
        v32 = *(v22 + 8);
        v32(v30, v21);
        v32(v26, v21);
        sub_188A3F5FC(v18, &qword_1EA937E70);
        if (v31)
        {
          goto LABEL_8;
        }

LABEL_17:
        sub_188A828FC(v9, type metadata accessor for _GlassBackgroundStyle);
        return 0;
      }

      (*(v22 + 8))(v26, v21);
    }

    sub_188A3F5FC(v18, &qword_1EA93A468);
    goto LABEL_17;
  }

  if (v14 == 1)
  {
    if (v13(&v9[v11], 2, v12) != 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_188A828FC(v9, type metadata accessor for _GlassBackgroundStyle);
    return 1;
  }

  if (v13(&v9[v11], 2, v12) == 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_188A3F5FC(v9, &qword_1EA93A460);
  return 0;
}

unint64_t sub_188A82868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  sub_18A4A7348();
  v6 = sub_18A4A88E8();

  return sub_188A82C74(a1, a2, a3, v6);
}

uint64_t sub_188A828FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_188A8295C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B10);
  v44 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v43 = v5;
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
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(v5 + 56);
      v26 = *(v5 + 48) + 24 * v24;
      v28 = *v26;
      v27 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = (v25 + 80 * v24);
      if (v44)
      {
        v45 = *v30;
        v31 = v30[1];
        v32 = v30[2];
        v33 = v30[3];
        v49 = v30[4];
        v47 = v32;
        v48 = v33;
        v46 = v31;
      }

      else
      {
        sub_188A83170(v30, &v45);
        v34 = v28;
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v28);
      sub_18A4A7348();
      result = sub_18A4A88E8();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v28;
      v16[1] = v27;
      v16[2] = v29;
      v17 = (*(v7 + 56) + 80 * v15);
      *v17 = v45;
      v18 = v46;
      v19 = v47;
      v20 = v49;
      v17[3] = v48;
      v17[4] = v20;
      v17[1] = v18;
      v17[2] = v19;
      ++*(v7 + 16);
      v5 = v43;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v2;
    if (v42 >= 64)
    {
      bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_188A82C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      if (*v13 == a1)
      {
        v14 = v13[1] == a2 && v13[2] == a3;
        if (v14 || (sub_18A4A86C8() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_188A82D84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{

  v15 = sub_18A4A7258();

  v16 = [a5 valueForKeyPath_];

  if (v16)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v38[0] = v32;
  v38[1] = v33;
  sub_188A3F29C(v38, &v32, &qword_1EA934050);
  if (!*(&v33 + 1))
  {
    goto LABEL_7;
  }

  sub_188A55538(&v32, v31);

  v17 = sub_188A5548C(a6, a7);
  if (v17 == 13)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
LABEL_7:
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    goto LABEL_9;
  }

  v18 = sub_188A59768(v17);
  v20 = v19;
  sub_188A55598(v31, v30);
  v21 = *(v20 + 64);
  *(&v36 + 1) = v18;
  v37 = v20;
  __swift_allocate_boxed_opaque_existential_0(&v35);
  v21(v30, v18, v20);
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
LABEL_9:
  v22 = OBJC_IVAR____TtC5UIKit32PropertyCollectingAnimationState_capturedProperties;
  swift_beginAccess();
  v23 = *(a8 + v22);
  if (!*(v23 + 16))
  {
LABEL_14:
    v32 = 0uLL;
    *&v33 = 0;
    *(&v33 + 1) = 1;
    memset(v34, 0, sizeof(v34));
    goto LABEL_15;
  }

  v24 = a9;
  v25 = sub_188A82868(v24, a6, a7);
  if ((v26 & 1) == 0)
  {

    goto LABEL_14;
  }

  sub_188A83170(*(v23 + 56) + 80 * v25, &v32);

  if (*(&v33 + 1) != 1)
  {
    sub_188A831CC(&v35, v34 + 8);
    sub_188A3F29C(&v32, v31, &qword_1EA935CA0);

    sub_188A8225C(v31, v24, a6, a7);
    goto LABEL_16;
  }

LABEL_15:
  sub_188A3F29C(&v32, v31, &qword_1EA935CA0);
  sub_188A3F29C(v31, v30, &qword_1EA935CA0);

  sub_188A8225C(v30, a9, a6, a7);
  sub_188A3F5FC(v31, &qword_1EA935CA0);
LABEL_16:
  sub_188A3F5FC(&v32, &qword_1EA935CA0);
  swift_endAccess();
  if (a10)
  {

    swift_unknownObjectRetain();
    v27 = sub_18A4A7258();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
    v28 = sub_18A4A7D28();
    if (a4)
    {
      a4 = sub_18A4A7088();
    }

    [a10 runActionForKey:v27 object:v28 arguments:a4];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  sub_188A3F5FC(v38, &qword_1EA934050);
  return sub_188A3F5FC(&v35, &qword_1EA935C98);
}

uint64_t sub_188A831CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C98);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_188A83298()
{
  v1 = *(v0 + 24);
  type metadata accessor for UIAnimatableProperty.ProtectedState();
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_188A8F820(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void _UIGestureNodeUpdateEventComponentTracking(void *a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = a2;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{*(*(&v13 + 1) + 8 * v11), v13}];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [a1 setTracking:a3 eventsWithIdentifiers:v6];
}

uint64_t _UIViewEnumerateLayoutConstraintsAndAdjustForConstantChangeForSelectedAttributes(void *a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___UIViewEnumerateLayoutConstraintsAndAdjustForConstantChangeForSelectedAttributes_block_invoke;
  v3[3] = &unk_1E7129560;
  v3[4] = a1;
  v3[5] = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___UIViewEnumerateLayoutConstraintsAndAdjustForSelectedLayoutVariables_block_invoke;
  v4[3] = &unk_1E7129538;
  v4[4] = a1;
  v4[5] = v3;
  v4[6] = &__block_literal_global_120_2;
  return [a1 _withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists:v4];
}

void sub_188A842AC()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_188A84438();

  if (v3)
  {

    v4 = [v1 scrollPocketInteraction];
    if (!v4)
    {
      v8 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle_];
      [v1 setScrollPocketInteraction_];
      [v1 addInteraction_];
      goto LABEL_11;
    }
  }

  v5 = [v1 traitCollection];
  v6 = sub_188A84438();

  if (v6)
  {

    return;
  }

  v7 = [v1 scrollPocketInteraction];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  [v1 removeInteraction_];
  [v1 setScrollPocketInteraction_];
LABEL_11:
}

uint64_t sub_188A84438()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v2 = sub_188A78A74(&type metadata for ScrollPocketContainerModelTrait, sub_188AD7C3C);
  os_unfair_lock_unlock(v1[2]);
  v3 = [v0 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A480);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void _UIViewDescriptionAppendTransform(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  memset(&v18, 0, sizeof(v18));
  if (v3)
  {
    [v3 transform];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    memset(&v12, 0, sizeof(v12));
    [v3 transform3D];
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v13 = 0uLL;
    memset(&v12, 0, sizeof(v12));
  }

  transform = v18;
  if (CGAffineTransformIsIdentity(&transform))
  {
    v8 = v14;
    v9 = v15;
    v10 = v16;
    v11 = v17;
    transform = v12;
    v7 = v13;
    if ((MEMORY[0x18CFE42C0](&transform) & 1) == 0)
    {
      [v4 appendFormat:@"transform3D = [%g, %g, %g, %g; %g, %g, %g, %g; %g, %g, %g, %g; %g, %g, %g, %g]; ", *&v12.a, *&v12.c, *&v12.tx, v13, v14, v15, v16, v17];
    }
  }

  else
  {
    transform = v18;
    v5 = NSStringFromCGAffineTransform(&transform);
    [v4 appendFormat:@"transform = %@; ", v5];
  }
}

void _UIViewDescriptionAppendTextIfApplicable(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  if ([v8 _shouldAppendTextInViewDescription] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v8 performSelector:sel_text];
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 ? v4 : 0;
    v6 = v5;

    if (v6)
    {
      v7 = _UIViewTextRedactedIfNecessaryForDescription(v6);

      [v3 appendFormat:@"text = %@; ", v7];
    }
  }
}

id _UIGetAnimationCurveSpline(unint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a1 != 7 && a1 > 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  if (v6 > 3)
  {
    if (v6 <= 5)
    {
      if (v6 == 4)
      {
        LODWORD(a2) = 1059648963;
        LODWORD(a4) = 1051260355;
        LODWORD(a5) = 1.0;
        v9 = [MEMORY[0x1E69793D0] functionWithControlPoints:a2 :0.0 :a4 :a5];
        goto LABEL_21;
      }

      v7 = MEMORY[0x1E69793D0];
      v8 = MEMORY[0x1E6979EA0];
      goto LABEL_20;
    }

    v9 = 0;
    if (v6 == 6)
    {
      goto LABEL_21;
    }

LABEL_17:
    v7 = MEMORY[0x1E69793D0];
    v8 = MEMORY[0x1E6979ED0];
    goto LABEL_20;
  }

  if (v6 <= 1)
  {
    v7 = MEMORY[0x1E69793D0];
    if (v6)
    {
      v8 = MEMORY[0x1E6979EB0];
    }

    else
    {
      v8 = MEMORY[0x1E6979EB8];
    }

    goto LABEL_20;
  }

  if (v6 == 2)
  {
    goto LABEL_17;
  }

  v7 = MEMORY[0x1E69793D0];
  v8 = MEMORY[0x1E6979ED8];
LABEL_20:
  v9 = [v7 functionWithName:*v8];
LABEL_21:

  return v9;
}

uint64_t _isAdditivelyAnimatableKeyForLayer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_1EA994980 != -1)
  {
    dispatch_once(&qword_1EA994980, &__block_literal_global_4092);
  }

  v5 = _normalizedAnimationKey(v3);
  if ([qword_1EA994978 containsObject:v5])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"transform"])
  {
    if (v4)
    {
      [v4 transform];
    }

    else
    {
      memset(v8, 0, sizeof(v8));
    }

    v6 = MEMORY[0x18CFE42C0](v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

unint64_t sub_188A851D4@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  result = sub_188A73350();
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_188A8528C(uint64_t a1, void *aBlock, const void *a3)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = _Block_copy(a3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v4(sub_188A7A458, v6, sub_188A7A458, v8);
}

uint64_t sub_188A85374()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188A853BC(uint64_t (*a1)(id), uint64_t a2, void (*a3)(void *__return_ptr))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_188A790E4(a1, a2, a3);
}

uint64_t sub_188A8543C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_188A85484(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5UIKit29_UICornerMaskingConfigurationV11CornerStyleV14RepresentationOSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x18 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 5) | (4 * v2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_188A854E0(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_188A85484(result);
  }

  return result;
}

id sub_188A854F4()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_188A8552C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  a1[3] = &_s13MutableTraitsVN;
  a1[4] = &off_1EFABCA98;
  *a1 = result;
  return result;
}

id _sSo17UITraitCollectionC5UIKitE20cornerMaskingContextSo09_UICornereF0Cvg_0()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v2 = sub_188A857F8(&type metadata for CornerMaskingContextTrait, sub_188AC5454);
  os_unfair_lock_unlock(v1[2]);
  v3 = [v0 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  sub_188A3F29C(v9, &v7, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  sub_188A34624(0, &qword_1ED491AD8);
  if (swift_dynamicCast())
  {
    sub_188A3F5FC(v9, &qword_1EA934050);
    return v6;
  }

  else
  {
    if (qword_1ED491A90 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED491AA0;
    sub_188A3F5FC(v9, &qword_1EA934050);
    return v5;
  }
}

id sub_188A857F8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v5 = sub_188A78D9C(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();
    if (a2)
    {
      v8 = objc_opt_self();
      sub_188A52E38(a2);
      swift_unknownObjectRetain();
      if ([v8 _isPlaceholderTraitToken_])
      {
        v9 = swift_unknownObjectRetain();
        v10 = a2(v9);
        sub_188A55B8C(a2);
        swift_unknownObjectRelease_n();
        return v10;
      }

      else
      {
        sub_188A55B8C(a2);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v7 = a2(0);
      sub_188A55B8C(a2);
    }

    else
    {
      v11 = objc_opt_self();
      v12 = sub_18A4A7258();
      v13 = sub_18A4A7258();
      v7 = [v11 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v7, a1, isUniquelyReferenced_nonNull_native, &v17);
    off_1ED491B18 = v17;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for CornerMaskingContextTrait, &protocol witness table for CornerMaskingContextTrait, v7, v15);
    swift_unknownObjectRelease();
    off_1ED491B08 = v17;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v7;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_188A85BF0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v9 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_188A79D08(a1, a2, a1, a4, a5, &v11);
  os_unfair_lock_unlock(v9[2]);
  return v11;
}

uint64_t sub_188A85DA8(uint64_t a1, int a2, void *aBlock, const void *a4)
{
  v5 = *(a1 + 32);
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v10 = swift_unknownObjectRetain();
  v5(v10, sub_188A854F4, v7, sub_188A7A460, v9);

  return swift_unknownObjectRelease();
}

uint64_t sub_188A85EA8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188A85EE4()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v2 = sub_188A75858(&type metadata for ScrollPocketCollectorModelTrait, sub_188AD9430);
  os_unfair_lock_unlock(v1[2]);
  v3 = [v0 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933150);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

id sub_188A86120()
{
  v1 = v0;
  sub_188FADBE8();
  v2 = sub_188A7A64C();

  if (v2 >> 62)
  {
LABEL_69:
    v3 = sub_18A4A7F68();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    return result;
  }

  sub_188FADBE8();
  v5 = sub_188FADD10();

  v6 = *(v5 + 16);
  if (!v6)
  {
  }

  v7 = 0;
  v8 = (v5 + 40);
  v9 = &selRef_dragInteraction_session_didEndWithOperation_;
  v55 = v5;
  v56 = v1;
  v54 = *(v5 + 16);
  while (1)
  {
    if (v7 >= *(v5 + 16))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v12 = *(v8 - 1);
    if (v12)
    {
      break;
    }

LABEL_8:
    ++v7;
    v8 += 16;
    if (v6 == v7)
    {
    }
  }

  v13 = *v8;
  v14 = v12;
  v15 = [v1 v9[465]];
  if (v15)
  {
    v16 = 8;
  }

  else
  {
    v16 = 4;
  }

  if (v15)
  {
    v17 = 4;
  }

  else
  {
    v17 = 8;
  }

  if (v13 != 6)
  {
    v16 = v17;
  }

  if (v15)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  if (v15)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (v13 != 4)
  {
    v18 = v19;
  }

  if (v13 <= 5)
  {
    v16 = v18;
  }

  if (v13 == 2)
  {
    v20 = 4;
  }

  else
  {
    v20 = 8;
  }

  v21 = 2;
  if (!v13)
  {
    v21 = 1;
  }

  if (v13 <= 1)
  {
    v20 = v21;
  }

  if (v13 <= 3)
  {
    v22 = v20;
  }

  else
  {
    v22 = v16;
  }

  if (_UIViewMaskingConfigurationSPIEnabled())
  {
    v23 = [v1 traitCollection];
    v24 = _sSo17UITraitCollectionC5UIKitE20cornerMaskingContextSo09_UICornereF0Cvg_0();

    v25 = v24;
    v26 = [v24 providerFor_];
    if (!v26)
    {
      v10 = v14;
      v11 = v25;
LABEL_7:

      goto LABEL_8;
    }

    v27 = v26;
    v58 = v25;
    v59 = v22;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass() || (sub_188A34624(0, &qword_1ED48F680), swift_unknownObjectRetain(), v28 = v1, v29 = sub_18A4A7C88(), swift_unknownObjectRelease(), v28, (v29 & 1) == 0))
    {
      v57 = v14;
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_188FAFCF0;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A8F0;
      aBlock[3] = &block_descriptor_170_0;
      v31 = _Block_copy(aBlock);

      v32 = [v27 registerDescendant:v1 forGeometryOrMaskingConfigurationChanges:v31];
      _Block_release(v31);
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      sub_188BB96BC();
      v35 = v34;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_188EB2CC4;
      *(v36 + 24) = v33;
      v37 = OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDependencyUnregistrationBlocks;
      swift_beginAccess();
      v38 = *&v35[v37];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35[v37] = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_188A32A24(0, v38[2] + 1, 1, v38);
        *&v35[v37] = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_188A32A24((v40 > 1), v41 + 1, 1, v38);
      }

      v38[2] = v41 + 1;
      v42 = &v38[2 * v41];
      v42[4] = sub_188E3FE50;
      v42[5] = v36;
      *&v35[v37] = v38;
      swift_endAccess();

      v5 = v55;
      v1 = v56;
      v6 = v54;
      v14 = v57;
    }

    [v27 resolvedCornerRadiusForDescedant:v1 context:v58 corner:v59];
    v44 = v43;
    swift_unknownObjectRelease();

    v9 = &selRef_dragInteraction_session_didEndWithOperation_;
  }

  else
  {
    [v1 _containerConcentricRadiusForCorner_];
    v44 = v45;
  }

  v46 = v14;
  result = [v14 _systemConstraints];
  if (result)
  {
    v47 = result;
    sub_188A34624(0, &qword_1ED48CFF0);
    v48 = sub_18A4A7548();

    if ((v48 & 0xC000000000000001) != 0)
    {
      v49 = sub_188E4A9EC(0, v48);
    }

    else
    {
      if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v49 = *(v48 + 32);
    }

    v50 = v49;

    [v50 setConstant_];

    v11 = v46;
    result = [v46 _systemConstraints];
    if (!result)
    {
      goto LABEL_71;
    }

    v51 = result;
    v52 = sub_18A4A7548();

    if ((v52 & 0xC000000000000001) != 0)
    {
      v53 = sub_188E4A9EC(1uLL, v52);
    }

    else
    {
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_68;
      }

      v53 = *(v52 + 40);
    }

    v10 = v53;

    [v10 setConstant_];
    goto LABEL_7;
  }

  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_188A86728()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void _UIScrollViewAdjustForOverlayInsetsChangeIfNecessary(void *a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = a1;
  v20 = v19;
  if (a8 == a4 && a7 == a3 && a10 == a6 && a9 == a5)
  {
    goto LABEL_34;
  }

  v24 = [(float64x2_t *)v19 _isAutomaticContentOffsetAdjustmentEnabled];
  v25 = a3 - a7;
  v26 = a4 - a8;
  [(float64x2_t *)v20 contentInset];
  v57 = v28;
  v58 = v27;
  v55 = v30;
  v56 = v29;
  [(float64x2_t *)v20 scrollIndicatorInsets];
  v59 = v32;
  v60 = v31;
  v61 = v34;
  v62 = v33;
  [(float64x2_t *)v20 contentOffset];
  v63 = v35;
  v64 = v36;
  if ([(float64x2_t *)v20 _shouldContentOffsetMaintainRelativeDistanceFromSafeArea])
  {
    v37 = [(float64x2_t *)v20 _edgesApplyingSafeAreaInsetsToContentInset];
    v38 = 0.0;
    v39 = v25 + 0.0;
    if ((v37 & 1) == 0)
    {
      v39 = 0.0;
    }

    if ((v37 & 2) != 0)
    {
      v38 = v26 + 0.0;
    }

    v40 = v64 - v39;
    v41 = v63 - v38;
    if (a2)
    {
      v41 = v63;
    }

    [(float64x2_t *)v20 _applyAutomaticAdjustedContentOffset:v41, v40];
  }

  v42 = a5 - a9;
  [(float64x2_t *)v20 _setAutomaticContentOffsetAdjustmentEnabled:0];
  if (a2)
  {
    [(float64x2_t *)v20 setContentInset:v25 + v58, v26 + v57, v42 + v56, a6 - a10 + v55];
    if (!v24)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  [(float64x2_t *)v20 _updateForChangedScrollRelatedInsets];
  if (v24)
  {
LABEL_23:
    [(float64x2_t *)v20 _setAutomaticContentOffsetAdjustmentEnabled:1];
  }

LABEL_24:
  if (a2)
  {
    v43 = v42 + v59;
    v44 = v63;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v20[34], v20[36]), vceqq_f64(v20[35], v20[37])))) & 1) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v54 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
        {
          *v66 = 0;
          _os_log_fault_impl(&dword_188A29000, v54, OS_LOG_TYPE_FAULT, "UIScrollView legacy code path will unexpectedly clobber _vertical/horizontalScrollIndicatorInsets. This is a UIKit bug.", v66, 2u);
        }

        v44 = v63;
      }

      else
      {
        v53 = *(__UILogGetCategoryCachedImpl("Assert", &_UIScrollViewAdjustForOverlayInsetsChangeIfNecessary___s_category) + 8);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v53, OS_LOG_TYPE_ERROR, "UIScrollView legacy code path will unexpectedly clobber _vertical/horizontalScrollIndicatorInsets. This is a UIKit bug.", buf, 2u);
        }
      }
    }

    [(float64x2_t *)v20 setScrollIndicatorInsets:v25 + v60, v62, v43, v61];
  }

  else
  {
    [(float64x2_t *)v20 _updateForChangedScrollIndicatorRelatedInsets];
    v44 = v63;
  }

  [(float64x2_t *)v20 contentOffset];
  if (v46 == v44 && v45 == v64)
  {
    [(float64x2_t *)v20 _adjustContentOffsetIfNecessary];
  }

  [(float64x2_t *)v20 _effectiveContentInset];
  v48 = v47;
  v50 = v49;
  [(float64x2_t *)v20 contentOffset];
  if (floor(v50 + v52) != floor(a8 + v44) || floor(v48 + v51) != floor(a7 + v64))
  {
    [(float64x2_t *)v20 _notifyDidScroll];
  }

LABEL_34:
}

unint64_t sub_188A86BD0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t _UIScrollPocketEnabled()
{
  result = _UIFloatingBarEnabled();
  if (result)
  {
    LODWORD(result) = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UIHideScrollPocket, @"UIHideScrollPocket");
    if (byte_1ED48B12C)
    {
      return result;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t _UIEventDeferringManagerIsAvailableForScene(void *a1)
{
  v2 = [a1 session];
  if (v2)
  {
    v3 = [a1 session];
    v4 = [v3 role];
    v5 = [v4 isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"];
  }

  else
  {
    v5 = 1;
  }

  if (a1 && !(v5 & 1 | (([a1 _hostsWindows] & 1) == 0)))
  {
    if (_UIEventDeferringManagerIsAvailableForScene_onceToken != -1)
    {
      dispatch_once(&_UIEventDeferringManagerIsAvailableForScene_onceToken, &__block_literal_global_715);
    }

    v6 = _UIEventDeferringManagerIsAvailableForScene_allowForProcess;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void __UIContextBinderDetachContext(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = [v3 _boundContext];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v7 = [v8 substrate];
    [v7 detachContext:v4];

    goto LABEL_8;
  }

  if ([v5 shouldDetachBindable])
  {
    [v5 detachBindable];
  }

LABEL_8:
}

uint64_t _UISceneLifecycleStateIsForegroundActive(void *a1)
{
  v1 = a1;
  if ([v1 isForeground])
  {
    v2 = _UISceneLifecycleStateIsSEO(v1) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _UIInterfaceOrientationLockIsAvailableForScene(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 _hostsWindows])
  {
    v3 = v2;
    v4 = [v3 _FBSScene];
    if (v4 && ([v3 _hasInvalidated] & 1) == 0)
    {
      v6 = [v3 session];
      v7 = [v6 role];
      v5 = [v7 isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"] ^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t _UIUserInterfaceSizeClassForWidth(double a1)
{
  v2 = +[UIDevice currentDevice];
  v3 = _UIUserInterfaceSizeClassForWidthAndUserInterfaceIdiomWithHomeButton([v2 userInterfaceIdiom], +[UIDevice _hasHomeButton](UIDevice, "_hasHomeButton"), a1);

  return v3;
}

uint64_t _UIUserInterfaceSizeClassForHeight(double a1)
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];
  if (v3 > 8)
  {
    goto LABEL_9;
  }

  if (((1 << v3) & 0x126) != 0)
  {
    v4 = 2;
    goto LABEL_4;
  }

  if (v3)
  {
LABEL_9:
    v4 = 0;
    goto LABEL_4;
  }

  _UIScreenReferenceBoundsSizeForType(1uLL);
  if (v6 > a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

LABEL_4:

  return v4;
}

uint64_t _UIApplicationProcessIsWidgetRenderer()
{
  if (qword_1EA992F40 != -1)
  {
    dispatch_once(&qword_1EA992F40, &__block_literal_global_1332);
  }

  return byte_1EA992DC1;
}

_UIKeyWindowSceneObserver *_UIKeyWindowSceneObserverForScene(void *a1)
{
  if (!a1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIKeyWindowSceneObserver * _Nonnull _UIKeyWindowSceneObserverForScene(UIWindowScene * _Nonnull const __strong)"];
    [v4 handleFailureInFunction:v5 file:@"_UIKeyWindowSceneObserver.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"windowScene"}];
  }

  v2 = [a1 _sceneComponentForKey:_UIKeyWindowSceneObserverComponentKey];
  if (!v2)
  {
    v2 = [[_UIKeyWindowSceneObserver alloc] initWithScene:a1];
    [a1 _registerSceneComponent:v2 forKey:_UIKeyWindowSceneObserverComponentKey];
  }

  return v2;
}

uint64_t _UISceneSystemShellManagesKeyboardFocusIsPossibleForScene(void *a1)
{
  v2 = [a1 _FBSScene];

  v3 = [a1 _FBSScene];
  v4 = [v3 settings];
  v5 = [v4 isUISubclass];

  v6 = [a1 _hostsWindows];
  if (a1)
  {
    v7 = v2 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return v8 & v5 & v6;
}

uint64_t stateMachineSpec_block_invoke_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v110 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  v76 = a4;
  v80 = _NSStringFromUIDeferringAction[a4];
  v7 = [(_UIEventDeferringManager *)*a2 _localRecordForEnvironment:v6];
  if (v7)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD28);
    if (*CategoryCachedImpl)
    {
      v47 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = *a2;
        *buf = 134349826;
        v95 = v48;
        v96 = 2114;
        v97 = v6;
        v98 = 2114;
        v99 = v80;
        v100 = 2114;
        v101 = v7;
        _os_log_impl(&dword_188A29000, v47, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Removed local record: %{public}@", buf, 0x2Au);
      }
    }

    v9 = v7[3];
    [v9 invalidate];

    [(_UIEventDeferringManager *)*a2 _removeLocalRecordForEnvironment:v6];
  }

  v79 = [(_UIEventDeferringManager *)*a2 _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
  if (v79)
  {
    [MEMORY[0x1E698E3C8] displayWithHardwareIdentifier:?];
  }

  else
  {
    [MEMORY[0x1E698E3C8] builtinDisplay];
  }
  v10 = ;
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy__33;
  v92 = __Block_byref_object_dispose__33;
  v93 = 0;
  v11 = _eventDeferringCompatibilityQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = stateMachineSpec_block_invoke_11;
  block[3] = &unk_1E70FB728;
  v87 = &v88;
  v78 = v10;
  v85 = v78;
  v86 = v6;
  dispatch_sync(v11, block);

  if (!v89[5])
  {
    v77 = 0;
LABEL_38:
    v30 = 0;
    goto LABEL_39;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v49 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD30) + 8);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *a2;
      v51 = v89[5];
      if (v51)
      {
        v52 = v51[5];
        v53 = v51;
        v54 = MEMORY[0x1E696AEC0];
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        v57 = [v54 stringWithFormat:@"<%@: %p>", v56, v53];
      }

      else
      {
        v52 = 0;
        v57 = @"(nil)";
      }

      *buf = 134350082;
      v95 = v50;
      v96 = 2114;
      v97 = v6;
      v98 = 2114;
      v99 = v80;
      v100 = 2050;
      v101 = v52;
      v102 = 2114;
      v103 = v57;
      _os_log_impl(&dword_188A29000, v49, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}@] %{public}@: Found local compatibility record: recording manager: %{public}p; record: %{public}@", buf, 0x34u);
    }
  }

  v12 = 2;
  if (*(a2 + 49))
  {
    v12 = 0;
  }

  if (*(a2 + 48))
  {
    v12 = 1;
  }

  v77 = v12;
  if (v12)
  {
    if (v12 == 2)
    {
      v13 = v89[5];
      if (v13)
      {
        v13 = *(v13 + 40);
      }

      if (v13 != *a2)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v16 = v89[5];
      if (v16)
      {
        WeakRetained = objc_loadWeakRetained((v16 + 32));
      }

      else
      {
        WeakRetained = 0;
      }

      v18 = WeakRetained == *(a2 + 8);

      if (!v18)
      {
LABEL_18:
        v14 = 0;
        v15 = 0;
        goto LABEL_26;
      }
    }
  }

  v19 = v89[5];
  if (v19)
  {
    v19 = *(v19 + 40);
  }

  v15 = v19 != *a2;
  v14 = 1;
LABEL_26:
  v20 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD38);
  if (*v20)
  {
    v58 = *(v20 + 8);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = *a2;
      v74 = off_1E70FCDC0[v77];
      if (v14)
      {
        v60 = @"YES";
      }

      else
      {
        v60 = @"NO";
      }

      v61 = v60;
      if (v15)
      {
        v62 = @"YES";
      }

      else
      {
        v62 = @"NO";
      }

      v63 = v62;
      *buf = 134350338;
      v95 = v59;
      v96 = 2114;
      v97 = v6;
      v98 = 2114;
      v99 = v80;
      v100 = 2114;
      v101 = v74;
      v102 = 2114;
      v103 = v61;
      v104 = 2114;
      *v105 = v63;
      _os_log_impl(&dword_188A29000, v58, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Matching strategy: %{public}@; shouldRemove: %{public}@; shouldNotify: %{public}@", buf, 0x3Eu);
    }
  }

  if (!v14)
  {
    goto LABEL_38;
  }

  v21 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD40);
  if (*v21)
  {
    v67 = *(v21 + 8);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v68 = v89[5];
      v69 = *a2;
      v70 = *(a2 + 8);
      *buf = 134350082;
      v95 = v69;
      v96 = 2114;
      v97 = v6;
      v98 = 2114;
      v99 = v80;
      v100 = 2114;
      v101 = v68;
      v102 = 2114;
      v103 = v70;
      _os_log_impl(&dword_188A29000, v67, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Removed local compatibility record: %{public}@; context->deferringToken: %{public}@", buf, 0x34u);
    }
  }

  v22 = v89[5];
  if (v22)
  {
    v22 = v22[3];
  }

  v23 = v22;
  [v23 invalidate];

  v24 = _eventDeferringCompatibilityQueue();
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = stateMachineSpec_block_invoke_12;
  v81[3] = &unk_1E70F35B8;
  v82 = v78;
  v83 = v6;
  dispatch_sync(v24, v81);

  if (v15)
  {
    v25 = v89[5];
    if (v25)
    {
      v25 = v25[5];
    }

    v26 = v25;
    v27 = *a2;
    v28 = v89[5];
    if (v28)
    {
      v28 = v28[2];
    }

    v29 = v28;
    [v26 eventDeferringManager:v27 didRemoveLocalCompatibilityRecordForDescriptor:v29];
  }

  v30 = 1;
LABEL_39:
  if (*(a2 + 48) == 1)
  {
    v31 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD48);
    if (*v31)
    {
      v64 = *(v31 + 8);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v65 = *a2;
        v66 = *(a2 + 8);
        *buf = 134349826;
        v95 = v65;
        v96 = 2114;
        v97 = v6;
        v98 = 2114;
        v99 = v80;
        v100 = 2114;
        v101 = v66;
        _os_log_impl(&dword_188A29000, v64, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Invalidating deferring token: %{public}@", buf, 0x2Au);
      }
    }

    v32 = *(a2 + 8);
    if (v32)
    {
      [*(v32 + 8) removeObject:v6];
      if ((*(v32 + 24) & 1) == 0 && ![*(v32 + 8) count])
      {
        *(v32 + 24) = 1;
      }
    }
  }

  v33 = [(_UIEventDeferringManager *)*a2 internalBehavior];
  v34 = [(_UIEventDeferringManager *)*a2 _trackedLocalTargetWindowPointerForEnvironment:v6];
  if (([v33 wantsLocalIdealRules] & 1) != 0 || !objc_msgSend(v33, "wantsLocalCompatibilityRules"))
  {
    v37 = 0;
    v36 = 0;
    if (!v7)
    {
LABEL_54:
      v38 = v30 | v36;
      goto LABEL_57;
    }
  }

  else
  {
    if (v89[5])
    {
      v35 = 1;
    }

    else
    {
      v35 = v34 == 0;
    }

    v36 = !v35;
    v37 = 1;
    if (!v7)
    {
      goto LABEL_54;
    }
  }

  v38 = 1;
LABEL_57:
  v39 = [v6 description];
  v40 = v39;
  v41 = [v39 UTF8String];

  v42 = v80;
  v43 = [(__CFString *)v80 UTF8String];
  if (os_variant_has_internal_diagnostics())
  {
    v73 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD50) + 8);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v71 = *a2;
      v72 = v89[5];
      v45 = [v34 pointerValue];
      *buf = 134351106;
      v95 = v71;
      v96 = 2082;
      v97 = v41;
      v98 = 2082;
      v99 = v43;
      v100 = 2050;
      v101 = v72;
      v102 = 2048;
      v103 = v77;
      v104 = 1024;
      *v105 = v30;
      *&v105[4] = 1024;
      *&v105[6] = v37;
      v106 = 2048;
      v107 = v45;
      v108 = 1024;
      v109 = v38 & 1;
      _os_log_impl(&dword_188A29000, v73, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] %{public}s: Local compatibility record: %{public}p; matching strategy: %lu; removed local compatibility record: %d; has view service behavior: %d; tracked window: %p; should end observation: %d", buf, 0x50u);
    }
  }

  if (v38)
  {
    [(_UIEventDeferringManager *)*a2 _stopObservingContextForLocalTargetWindowInEnvironment:v6];
  }

  if (*__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD58))
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removedLocalRecord: %d removedCompatibilityRecord: %d;", v7 != 0, v30];;
    _emitDebugLogForTransition(a3, v76, v46, a2);
  }

  _Block_object_dispose(&v88, 8);
  return 4;
}

id _UIHomeAffordanceRegistrationTokenForNotifierAndRecord(id val, uint64_t a2)
{
  objc_initWeak(&location, val);
  v4 = [_UIDeallocInvalidatable alloc];
  v5 = objc_opt_class();
  Name = class_getName(v5);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%p-%lu", Name, val, ++_UIHomeAffordanceNewObserverRegisterationIndex_observerRegistrationIndex];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___UIHomeAffordanceRegistrationTokenForNotifierAndRecord_block_invoke;
  v10[3] = &unk_1E70F67D0;
  objc_copyWeak(&v11, &location);
  v10[4] = a2;
  v8 = [(_UIDeallocInvalidatable *)v4 initWithIdentifier:v7 faultForDeallocInvalidation:0 invalidationBlock:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v8;
}

void sub_188A898B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t UIKeyboardGetSafeDeviceIdiom()
{
  if (UIApp)
  {
    v0 = +[UIDevice currentDevice];
    v1 = [v0 userInterfaceIdiom];
  }

  else
  {
    v1 = _UIDeviceNativeUserInterfaceIdiomIgnoringClassic();
  }

  return _UIKeyboardGetDeviceIdiomFromInputUIScene(v1);
}

id UIKeyboardGetCurrentInputMode()
{
  v0 = +[UIKeyboardInputModeController sharedInputModeController];
  v1 = [v0 currentInputMode];
  v2 = [v1 identifier];

  return v2;
}

uint64_t UIKeyboardCheckSpellingForInputMode(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (UIKeyboardAutocorrectSpellingFlag == 1)
  {
    if ([v1 isEqualToString:@"dictation"])
    {
      v3 = +[UIKeyboardImpl activeInstance];
      v4 = [v3 inputModeLastUsedPreference];

      v2 = v4;
    }

    v5 = UIKeyboardCheckSpellingPossibleForInputMode(v2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t UIKeyboardCheckSpellingPossibleForInputMode(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!UIKeyboardCheckSpellingPossibleForInputMode___supportedLanguages)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v3 = UIKeyboardCheckSpellingPossibleForInputMode___supportedLanguages;
    UIKeyboardCheckSpellingPossibleForInputMode___supportedLanguages = v2;

    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v4 = [UITextChecker availableLanguages:0];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = UIKeyboardCheckSpellingPossibleForInputMode___supportedLanguages;
          v10 = TIInputModeGetLanguage();
          [v9 addObject:v10];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  v11 = TIInputModeGetLanguage();
  v12 = [UIKeyboardCheckSpellingPossibleForInputMode___supportedLanguages containsObject:v11];

  return v12;
}

uint64_t UIKeyboardInputModeIsNonLinguistic(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"emoji"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"dictation"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"autofillsignup"];
  }

  return v2;
}

uint64_t UIKeyboardInputBaseLanguagesEqual(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TIInputModeGetLanguage();
  v4 = TIInputModeGetLanguage();

  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    v5 = [v3 isEqualToString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(void *a1)
{
  v1 = a1;
  v2 = TIInputModeGetComponentsFromIdentifier();
  v3 = [v2 valueForKey:@"hw"];
  v4 = [v2 valueForKey:@"sw"];
  if (_os_feature_enabled_impl())
  {
    v5 = [v2 valueForKey:@"ml"];
  }

  else
  {
    v5 = 0;
  }

  v6 = TIInputModeGetNormalizedIdentifierFromComponents();
  v7 = v6;
  if (v3)
  {
    v8 = 0;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = UIKeyboardGetDefaultHardwareKeyboardForInputMode(v6);
    v8 = v3 != 0;
    if (!v4)
    {
LABEL_11:
      v11 = UIKeyboardGetDefaultSoftwareKeyboardForInputMode(v7);

      v4 = v11;
      if (v11 != 0 || v8)
      {
        goto LABEL_12;
      }

      v4 = 0;
LABEL_28:
      v24 = v1;
      goto LABEL_31;
    }
  }

  v9 = UIKeyboardGetSupportedSoftwareKeyboardsForInputMode(v7);
  v10 = [v9 containsObject:v4];

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!v8)
  {
    goto LABEL_28;
  }

LABEL_12:
  v27 = v7;
  v28 = v3;
  v29 = v1;
  v30 = v5;
  v12 = [v2 valueForKey:*MEMORY[0x1E695D9B0]];
  v13 = *MEMORY[0x1E695D978];
  v14 = [v2 valueForKey:*MEMORY[0x1E695D978]];
  v15 = *MEMORY[0x1E695D9E8];
  v16 = [v2 valueForKey:*MEMORY[0x1E695D9E8]];
  v17 = *MEMORY[0x1E695DA10];
  v18 = [v2 valueForKey:*MEMORY[0x1E695DA10]];
  if (v12)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = v12;
    v21 = v19;
    v26 = v20;
    [v19 setObject:? forKey:?];
    v22 = v14;
    if (v14)
    {
      [v21 setObject:v14 forKey:v13];
    }

    v23 = v16;
    v7 = v27;
    if (v16)
    {
      [v21 setObject:v16 forKey:v15];
    }

    v3 = v28;
    if (v18)
    {
      [v21 setObject:v18 forKey:v17];
    }

    v1 = v29;
    if (v28)
    {
      [v21 setObject:v28 forKey:@"hw"];
    }

    if (v4)
    {
      [v21 setObject:v4 forKey:@"sw"];
    }

    if (_os_feature_enabled_impl() && v30)
    {
      [v21 setObject:v30 forKey:@"ml"];
    }

    v24 = UIKeyboardInputModeGetIdentifierFromComponents(v21);

    v12 = v26;
  }

  else
  {
    v1 = v29;
    v24 = v29;
    v22 = v14;
    v23 = v16;
    v7 = v27;
    v3 = v28;
  }

  v5 = v30;
LABEL_31:

  return v24;
}

id UIKeyboardGetSupportedSoftwareKeyboardsForInputMode(void *a1)
{
  v1 = a1;
  NativeDeviceIdiom = UIKeyboardGetNativeDeviceIdiom();
  v3 = UIKeyboardGetSupportedSoftwareKeyboardsForInputModeAndIdiom(v1, NativeDeviceIdiom);

  return v3;
}

uint64_t UIKeyboardGetNativeDeviceIdiom()
{
  if (UIApp)
  {
    v0 = _UIDeviceNativeUserInterfaceIdiom();
  }

  else
  {
    v0 = _UIDeviceNativeUserInterfaceIdiomIgnoringClassic();
  }

  return _UIKeyboardGetDeviceIdiomFromInputUIScene(v0);
}

uint64_t _uiAutofillModeForAFAutoFillMode(uint64_t result)
{
  if ((result - 1) >= 0xA)
  {
    return 0;
  }

  return result;
}

id NormaliseInputView(void *a1, int a2)
{
  v3 = a1;
  v4 = objc_opt_respondsToSelector();
  v5 = v3;
  v6 = v5;
  v7 = v5;
  if (v4)
  {
    v8 = [v5 placeheldView];
    v9 = v8;
    if (a2)
    {
      v10 = 0;
    }

    else
    {
      v10 = v6;
    }

    if (v8)
    {
      v10 = v8;
    }

    v7 = v10;
  }

  return v7;
}

uint64_t UIKeyboardAlwaysShowCandidateBarForCurrentInputMode()
{
  v0 = UIKeyboardGetCurrentInputMode();
  v1 = UIKeyboardAlwaysShowCandidateBarForInputMode();

  return v1;
}

uint64_t UIKeyboardAlwaysShowCandidateBarForInputMode()
{
  v0 = TIInputModeGetNormalizedIdentifier();
  v1 = TIGetInputModeProperties();
  v2 = [v1 objectForKey:*MEMORY[0x1E69D9788]];
  v3 = [v2 BOOLValue];

  return v3;
}

id _UIPeripheralHostLogger()
{
  if (qword_1ED49F470 != -1)
  {
    dispatch_once(&qword_1ED49F470, &__block_literal_global_530);
  }

  v1 = qword_1ED49F468;

  return v1;
}

uint64_t _UIApplicationIsEmojiPoster()
{
  if (qword_1EA992EE0 != -1)
  {
    dispatch_once(&qword_1EA992EE0, &__block_literal_global_1272_0);
  }

  return byte_1EA992DB5;
}

id KeyboardArbiterClientLog()
{
  if (qword_1ED49CBD0 != -1)
  {
    dispatch_once(&qword_1ED49CBD0, &__block_literal_global_29);
  }

  v1 = _MergedGlobals_1023;

  return v1;
}

id KeyboardArbiterClientLog_0()
{
  if (qword_1ED49DAB0 != -1)
  {
    dispatch_once(&qword_1ED49DAB0, &__block_literal_global_539);
  }

  v1 = qword_1ED49DAA8;

  return v1;
}

id KeyboardArbiterClientLog_1()
{
  if (qword_1ED4997F0 != -1)
  {
    dispatch_once(&qword_1ED4997F0, &__block_literal_global_1160_0);
  }

  v1 = qword_1ED4997E8;

  return v1;
}

id KeyboardArbiterClientLog_2()
{
  if (qword_1ED49F688 != -1)
  {
    dispatch_once(&qword_1ED49F688, &__block_literal_global_195);
  }

  v1 = _MergedGlobals_1211;

  return v1;
}

id KeyboardArbiterClientLog_3()
{
  if (qword_1ED49C210 != -1)
  {
    dispatch_once(&qword_1ED49C210, &__block_literal_global_447_1);
  }

  v1 = qword_1ED49C208;

  return v1;
}

void __HandleWindowContentRotationNotification_block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 object];
  v4 = [v2 userInfo];
  v5 = [v4 objectForKey:0x1EFB92210];
  v6 = [v5 integerValue];

  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();
    if (isKindOfClass & 1) != 0 || (v8)
    {
      if ((isKindOfClass & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && ([v3 isHidden] & 1) == 0 && objc_msgSend(v3, "_shouldControlAutorotation"))
      {
        v9 = [v4 objectForKey:0x1EFB92230];
        [v9 doubleValue];
        v11 = v10;

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v12 = GetRotationFollowingWindows();
        v13 = [v12 allObjects];

        v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v19;
          do
          {
            v17 = 0;
            do
            {
              if (*v19 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [*(*(&v18 + 1) + 8 * v17++) applicationWindow:v3 didRotateWithOrientation:v6 duration:v11];
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v15);
        }
      }
    }
  }
}

id GetRotationFollowingWindows()
{
  if (qword_1ED49E3D0 != -1)
  {
    dispatch_once(&qword_1ED49E3D0, &__block_literal_global_101);
  }

  v1 = _MergedGlobals_1124;

  return v1;
}

uint64_t sub_188A8D8A0(uint64_t a1)
{
  v11 = a1;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_188A8DD08;
  *(v4 + 24) = &v10;
  v16 = sub_188E3FE50;
  v17 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_188A4A968;
  v15 = &block_descriptor_50;
  v5 = _Block_copy(&aBlock);

  v16 = sub_188A81164;
  v17 = v2;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_188A4A8F0;
  v15 = &block_descriptor_53;
  v6 = _Block_copy(&aBlock);

  [v3 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v6);
  _Block_release(v5);
  swift_beginAccess();
  if (*(v2 + 16))
  {
    swift_beginAccess();
  }

  else
  {
    sub_188A81190(MEMORY[0x1E69E7CC0]);
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a1 + OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_capturedProperties);
    MEMORY[0x1EEE9AC00](result);

    os_unfair_lock_lock(v9 + 6);
    sub_188A81370();
    os_unfair_lock_unlock(v9 + 6);
  }

  return result;
}

uint64_t sub_188A8DB80()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188A8DBF0(uint64_t a1)
{
  type metadata accessor for PropertyCollectingAnimationState();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [(UIViewAnimationState *)ObjCClassFromMetadata pushViewAnimationState:0 options:0 context:?];
  v3 = __currentViewAnimationState;
  if (__currentViewAnimationState)
  {
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  v6 = *(a1 + 16);
  *(a1 + 16) = v4;
}

uint64_t sub_188A8DD10(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_modelValueChangedCallback);
  if (v1)
  {
    v2 = *(result + OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_modelValueChangedCallback + 8);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188A4A9DC;
    *(v4 + 24) = v3;
    v7[4] = sub_188E3FE50;
    v7[5] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_188A4A968;
    v7[3] = &block_descriptor_63_1;
    v5 = _Block_copy(v7);
    sub_188A52E38(v1);
    sub_188A52E38(v1);

    __UIVIEWSWIFTANIMATABLEPROPERTYTRANSFORMER_IS_EXECUTING_CALLBACK__(v5);
    sub_188A55B8C(v1);
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_188A8DE9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_188A8DF64(char *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, uint64_t))
{
  v5 = *&a1[OBJC_IVAR____TtC5UIKit15BridgedProperty_property + 8];
  ObjectType = swift_getObjectType();
  v7 = a1;
  a3(v10, ObjectType, v5);

  __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  v8 = sub_18A4A86A8();
  __swift_destroy_boxed_opaque_existential_0Tm(v10);

  return v8;
}

uint64_t sub_188A8E018(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(a2 + 88))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 80))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

void sub_188A8E160(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  type metadata accessor for UIAnimatableProperty.ProtectedState();
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_188A81308(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_188A8E304(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = -1 << *(a1 + 32);
  v5 = ~v4;
  v6 = *(a1 + 64);
  v7 = -v4;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v71 = a1;
  v72 = a1 + 64;
  v73 = v5;
  v74 = 0;
  v75 = v8 & v6;

  sub_188A813A8(&v63);
  v10 = *(&v63 + 1);
  v9 = v63;
  v11 = *v64;
  v68 = *&v64[40];
  v69 = *&v64[56];
  v70 = v65;
  v66 = *&v64[8];
  v67 = *&v64[24];
  if (!v63)
  {
    return sub_188E036A4();
  }

  while (1)
  {
    *&v64[16] = v68;
    *&v64[32] = v69;
    *&v64[48] = v70;
    v63 = v66;
    *v64 = v67;
    v12 = *v3;
    if (!*(*v3 + 16))
    {
      goto LABEL_14;
    }

    v13 = v9;

    v14 = sub_188A82868(v13, v10, v11);
    if ((v15 & 1) == 0)
    {

LABEL_14:
      memset(v59, 0, 24);
      v59[3] = 1;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      sub_188A3F5FC(v59, &qword_1EA935CA0);
      goto LABEL_15;
    }

    sub_188A83170(*(v12 + 56) + 80 * v14, v59);

    sub_188A3F5FC(v59, &qword_1EA935CA0);
    if (a2)
    {

      sub_188A8F7CC(&v63);
      goto LABEL_8;
    }

LABEL_15:
    sub_188A83170(&v63, v59);
    sub_188A3F29C(v59, &v54, &qword_1EA935CA0);
    if (*(&v55 + 1) == 1)
    {
      sub_188A3F5FC(&v54, &qword_1EA935CA0);
      v16 = sub_188A82868(v9, v10, v11);
      if (v17)
      {
        v18 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *v3;
        v47 = *v3;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_188D2326C();
          v20 = v47;
        }

        v21 = *(*(v20 + 48) + 24 * v18);

        v22 = (*(v20 + 56) + 80 * v18);
        v49 = *v22;
        v23 = v22[3];
        v24 = v22[4];
        v25 = v22[2];
        v50 = v22[1];
        v51 = v25;
        v52 = v23;
        v53 = v24;
        sub_188F9D228(v18, v20);

        sub_188A3F5FC(v59, &qword_1EA935CA0);
        sub_188A8F7CC(&v63);
        *v3 = v20;
      }

      else
      {

        sub_188A3F5FC(v59, &qword_1EA935CA0);
        sub_188A8F7CC(&v63);
        v49 = 0uLL;
        *&v50 = 0;
        *(&v50 + 1) = 1;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
      }

      sub_188A3F5FC(&v49, &qword_1EA935CA0);
      goto LABEL_8;
    }

    v51 = v56;
    v52 = v57;
    v53 = v58;
    v49 = v54;
    v50 = v55;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    v48 = *v3;
    v28 = sub_188A82868(v9, v10, v11);
    v30 = *(v27 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      break;
    }

    v34 = v29;
    if (*(v27 + 24) >= v33)
    {
      if ((v26 & 1) == 0)
      {
        v37 = v28;
        sub_188D2326C();
        v28 = v37;
        v36 = v48;
        if (v34)
        {
LABEL_26:
          sub_188A8323C(&v49, v36[7] + 80 * v28);

          sub_188A3F5FC(v59, &qword_1EA935CA0);
          sub_188A8F7CC(&v63);
          *v3 = v36;
          goto LABEL_8;
        }

        goto LABEL_28;
      }
    }

    else
    {
      sub_188A8295C(v33, v26);
      v28 = sub_188A82868(v9, v10, v11);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_33;
      }
    }

    v36 = v48;
    if (v34)
    {
      goto LABEL_26;
    }

LABEL_28:
    v36[(v28 >> 6) + 8] |= 1 << v28;
    v38 = (v36[6] + 24 * v28);
    *v38 = v9;
    v38[1] = v10;
    v38[2] = v11;
    v39 = (v36[7] + 80 * v28);
    *v39 = v49;
    v40 = v50;
    v41 = v51;
    v42 = v53;
    v39[3] = v52;
    v39[4] = v42;
    v39[1] = v40;
    v39[2] = v41;
    sub_188A3F5FC(v59, &qword_1EA935CA0);
    sub_188A8F7CC(&v63);
    v43 = v36[2];
    v32 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v32)
    {
      goto LABEL_32;
    }

    v36[2] = v44;
    *v3 = v36;
LABEL_8:
    sub_188A813A8(&v63);
    v10 = *(&v63 + 1);
    v9 = v63;
    v11 = *v64;
    v68 = *&v64[40];
    v69 = *&v64[56];
    v70 = v65;
    v66 = *&v64[8];
    v67 = *&v64[24];
    if (!v63)
    {
      return sub_188E036A4();
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

uint64_t sub_188A8E7F8(__int128 *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = (&v14 - v6);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_188A8E160(v7);
  v9 = swift_allocObject();
  v9[2] = v4;
  v10 = *(v3 + 88);
  v9[3] = v10;
  v9[4] = v8;
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = v10;
  v11[4] = v8;
  swift_retain_n();
  v12 = sub_189097EF8(a1, v7, sub_188AB3830, 0, sub_18909A3D0, v9, sub_188B99AE8, v11);

  (*(v5 + 8))(v7, v4);

  return v12 & 1;
}

uint64_t sub_188A8E9D4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188A8EA0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188A8EA48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

NSComparisonResult UIContentSizeCategoryCompareToCategory(UIContentSizeCategory lhs, UIContentSizeCategory rhs)
{
  v3 = lhs;
  v4 = rhs;
  v12 = 0;
  v5 = _UIContentSizeCategoryFromStringInternal(v3, &v12 + 1);
  v6 = _UIContentSizeCategoryFromStringInternal(v4, &v12);
  if (HIBYTE(v12) | v12)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult UIContentSizeCategoryCompareToCategory(__strong UIContentSizeCategory _Nonnull, __strong UIContentSizeCategory _Nonnull)"}];
    [v10 handleFailureInFunction:v11 file:@"UIContentSizeCategory.m" lineNumber:195 description:{@"UIContentSizeCategoryCompareToCategory cannot be used to order arbitrary strings, only UIContentSizeCategory objects (comparing %@ to %@).", v3, v4}];
  }

  if (v5 >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
  {
    v8 = NSOrderedDescending;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

uint64_t sub_188A8ED08(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit15BridgedProperty_property + 8);
  sub_188A3F29C(a1, &v8, &qword_1EA934050);
  if (v9)
  {
    sub_188A55538(&v8, &v10);
    _s29AnimatablePropertyTransformerCMa();
    swift_dynamicCast();
    v4 = v7;
  }

  else
  {
    sub_188A3F5FC(&v8, &qword_1EA934050);
    v4 = 0;
  }

  ObjectType = swift_getObjectType();
  (*(v3 + 48))(v4, ObjectType, v3);
  return sub_188A3F5FC(a1, &qword_1EA934050);
}

void sub_188A8EE00(void *a1)
{
  sub_188A81F9C();
}

id sub_188A8EE38(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

id sub_188A8EF40(id result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
    if (!a3 || !a4)
    {
      return 0;
    }

    v7 = qword_1ED48EE58;
    v9 = result;

    v10 = a4;
    if (v7 != -1)
    {
      swift_once();
    }

    if ((sub_188A551E4(a2, a3, qword_1ED48EE60) & 1) == 0)
    {

      return 0;
    }

    v11 = v9;
    v12 = v10;
    v13 = sub_188A534B0(v12, v11);
    if (v13 == 2)
    {
      goto LABEL_13;
    }

    v14 = v13;
    v15 = v4;

    if (![(UIView *)v12 __swiftAnimationInfo])
    {
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v17 = v12;
      v18 = sub_188A5DF40(v17, sub_188ABE000, v16);

      [(UIView *)v17 set__swiftAnimationInfo:v18];
    }

    swift_beginAccess();
    sub_188A8F4D4(&aBlock, v14 & 1, a2, a3);
    swift_endAccess();

    v19 = sub_18A4A7258();
    v20 = [v11 valueForKeyPath_];

    if (!v20)
    {
LABEL_13:

      return 0;
    }

    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(&aBlock, v47);

    v21 = sub_188A5548C(a2, a3);
    if (v21 == 13)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      goto LABEL_13;
    }

    v22 = sub_188A59768(v21);
    v24 = v23;
    sub_188A55598(v47, v40);
    v25 = *(v24 + 64);
    *(&v44 + 1) = v22;
    *&v45[0] = v24;
    __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v25(v40, v22, v24);
    sub_188A8F66C(&aBlock, v46);
    sub_188A53994(v46, v40);
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    aBlock = 0u;
    v44 = 0u;
    memset(v45, 0, sizeof(v45));

    v26 = v12;
    sub_188A8F670(v40, &aBlock);
    sub_188A8F670(v41, v45 + 8);
    swift_beginAccess();
    sub_188A3F29C(&aBlock, v40, &qword_1EA935CA0);
    sub_188A8225C(v40, v26, a2, a3);
    v27 = v15;
    sub_188A3F5FC(&aBlock, &qword_1EA935CA0);
    swift_endAccess();
    v28 = [v15 nextState];
    if (v28)
    {
      v29 = v28;
      v30 = v11;
      v31 = sub_18A4A7258();
      v32 = [v29 actionForLayer:v30 forKey:v31 forView:v26];
    }

    else
    {
      v32 = 0;
    }

    v33 = swift_allocObject();
    v33[2] = v11;
    v33[3] = a2;
    v33[4] = a3;
    v33[5] = v27;
    v33[6] = v26;
    v33[7] = v32;
    v34 = objc_allocWithZone(UIViewBlockBasedCAAction);
    *&v45[0] = sub_188A82D54;
    *(&v45[0] + 1) = v33;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v44 = sub_188A55BE8;
    *(&v44 + 1) = &block_descriptor_27;
    v35 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v36 = v11;
    v37 = v26;
    v38 = v27;

    v39 = [v34 initWithActionBlock_];
    _Block_release(v35);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    return v39;
  }

  return result;
}

uint64_t sub_188A8F444()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188A8F47C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_188A8F4D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v5;
  sub_18A4A8888();
  v10 = a2 & 1;
  MEMORY[0x18CFE37E0](v10);
  sub_18A4A7348();
  v11 = sub_18A4A88E8();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v9 + 48);
    while (1)
    {
      v16 = (v15 + 24 * v13);
      if (*v16 == v10)
      {
        v17 = *(v16 + 1) == a3 && *(v16 + 2) == a4;
        if (v17 || (sub_18A4A86C8() & 1) != 0)
        {
          break;
        }
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v18 = *(v9 + 48) + 24 * v13;
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
    *a1 = *v18;
    *(a1 + 8) = v20;
    *(a1 + 16) = v19;

    return 0;
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v5;

    sub_188A92B38(v10, a3, a4, v13, isUniquelyReferenced_nonNull_native);
    *v5 = v24;
    *a1 = a2 & 1;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }
}

uint64_t sub_188A8F670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_5UIKit17UIAnimatableValue_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_188A8F6F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_188A8F760(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v7 = (a6[7] + 80 * result);
  v8 = a5[4];
  v7[3] = a5[3];
  v7[4] = v8;
  v9 = a5[2];
  v7[1] = a5[1];
  v7[2] = v9;
  *v7 = *a5;
  v10 = a6[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v12;
  }

  return result;
}

uint64_t sub_188A8F820(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = type metadata accessor for UIAnimatableProperty.ProtectedState();
  return (*(*(v3 - 8) + 24))(a1 + *(v5 + 36), v4, v3);
}

double _UICurrentImageTraitCollectionDisplayScale()
{
  v0 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  [v0 displayScale];
  v2 = v1;

  return v2;
}

void CommonInit(void *a1)
{
  v1 = a1;
  v20 = v1;
  if (!v1[145])
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void CommonInit(UISearchTextField *__strong)"];
    [v18 handleFailureInFunction:v19 file:@"UISearchTextField.m" lineNumber:345 description:@"Visual style should not be nil by now."];

    v1 = v20;
  }

  *(v1 + 564) |= 0x80u;
  [v1 _setNeedsUpdateForBackdropStyle:2005];
  if (UISearchBarUsesModernAppearance())
  {
    v2 = [v20 layer];
    [v2 setAllowsGroupOpacity:0];
  }

  v3 = [_UISearchBarTextFieldTokenCounter alloc];
  v4 = [v20 textStorage];
  v5 = [(_UISearchBarTextFieldTokenCounter *)v3 initWithTextStorage:v4];
  v6 = v20[143];
  v20[143] = v5;

  v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v8 = v20[142];
  v20[142] = v7;

  v9 = [[UITapGestureRecognizer alloc] initWithTarget:v20 action:sel__tokenTapGestureRecognized];
  v10 = v20[144];
  v20[144] = v9;

  [v20 addGestureRecognizer:v20[144]];
  v11 = [[UIHoverGestureRecognizer alloc] initWithTarget:v20 action:sel__hoverGestureChanged_];
  v12 = v20[146];
  v20[146] = v11;

  [v20 addGestureRecognizer:v20[146]];
  if ([v20 _supportsDynamicType])
  {
    v13 = [v20[145] dynamicSearchFieldFont];
    [v20 setFont:v13];

    [v20 setAdjustsFontForContentSizeCategory:1];
  }

  [v20 _setSupportsKeyboardNavigationForSuggestions:1];
  v14 = [v20 traitCollection];
  v15 = +[_UIVisualStyleRegistry registryForIdiom:](_UIVisualStyleRegistry, "registryForIdiom:", [v14 userInterfaceIdiom]);
  v16 = [v15 visualStyleClassForStylableClass:objc_opt_class()];

  v17 = [[v16 alloc] initWithSearchTextField:v20];
  [v17 setDelegate:v20];
  [v20 _setSuggestionController:v17];
}

void CommonInit_0(void *a1)
{
  v14 = a1;
  v1 = objc_alloc_init(UILabel);
  v2 = +[UIColor whiteColor];
  [(UILabel *)v1 setTextColor:v2];

  [(UIView *)v1 setHidden:1];
  [(UILabel *)v1 setTextAlignment:1];
  v14[51] = v1;
  [v14 addSubview:v1];
  v3 = objc_alloc_init(UIImageView);
  v4 = +[UIColor whiteColor];
  [(UIView *)v3 setTintColor:v4];

  if (qword_1ED49A608 != -1)
  {
    dispatch_once(&qword_1ED49A608, &__block_literal_global_49);
  }

  v5 = qword_1ED49A600;
  v6 = [UIImageSymbolConfiguration configurationWithFont:v5];
  [(UIImageView *)v3 setPreferredSymbolConfiguration:v6];

  v14[52] = v3;
  [v14 addSubview:v3];
  v7 = [v14 layer];
  [v7 setCornerRadius:12.5];

  v8 = *MEMORY[0x1E69796E8];
  v9 = [v14 layer];
  [v9 setCornerCurve:v8];

  [v14 setNeedsLayout];
  v10 = [v14 layer];
  [v10 setShadowOpacity:0.0];

  v11 = [v14 layer];
  [v11 setShadowRadius:2.0];

  v12 = [v14 layer];
  [v12 setShadowOffset:{0.0, 1.0}];

  v13 = [v14 layer];
  [v13 setShadowPathIsBounds:1];
}

void CommonInit_1(void *a1, void *a2, void *a3, void *a4)
{
  v16 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void CommonInit(UIImageAsset *__strong, NSString *__strong, _UIAssetManager *__strong, NSBundle *__strong)"}];
    [v14 handleFailureInFunction:v15 file:@"UIImageAsset.m" lineNumber:155 description:@"asset must have a name"];
  }

  objc_storeStrong(v16 + 11, a2);
  objc_storeWeak(v16 + 6, v8);
  v10 = v16[2];
  v16[2] = v9;
  v11 = v9;

  if (v8)
  {
    [v8 preferredTraitCollection];
  }

  else
  {
    _UICurrentImageTraitCollection();
  }
  v12 = ;
  v13 = v16[3];
  v16[3] = v12;

  *(v16 + 2) = 0;
}

id _UITraitsForTraitTokens(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  os_unfair_lock_lock(&_UITraitLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = [qword_1ED49FF60 objectForKey:*(*(&v9 + 1) + 8 * v6)];
        if (v7)
        {
          [v2 addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&_UITraitLock);
  return v2;
}

uint64_t _UIApplicationProcessIsCarousel()
{
  if (qword_1EA992F28 != -1)
  {
    dispatch_once(&qword_1EA992F28, &__block_literal_global_1317_0);
  }

  return byte_1EA992DBE;
}

uint64_t sub_188A917B8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void *__return_ptr), uint64_t a5, uint64_t a6)
{
  v8 = a2();
  v9 = sub_188A85EE4();

  if (!v9 || (result = , v9 != a6))
  {
    a4(v14);
    v11 = v15;
    v12 = v16;
    __swift_mutable_project_boxed_opaque_existential_1(v14, v15);

    sub_188A91870(v13, v11, v12);
    return __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  return result;
}

void sub_188A918C4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(void), void (*a7)(void))
{
  v10 = a2();
  v11 = a6();

  if (v11)
  {

    v13[3] = &_s13MutableTraitsVN;
    v13[4] = &off_1EFABCA98;
    v13[0] = a4(v12);
    __swift_mutable_project_boxed_opaque_existential_1(v13, &_s13MutableTraitsVN);
    a7(0);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }
}

unint64_t sub_188A919BC()
{
  result = qword_1EA931298;
  if (!qword_1EA931298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA931298);
  }

  return result;
}

uint64_t sub_188A91A10(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(*(v3 + 48) + 16) && (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) != 0))
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364E0);
    v10 = swift_dynamicCastClassUnconditional();
    sub_188A34360(&qword_1EA9312B8, &qword_1EA9364E0);
    swift_unknownObjectRetain();
  }

  else
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = 0.0;
    if (Strong)
    {
      v13 = Strong;
      if (a1)
      {
        v14 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v14 = [Strong layer];
      }

      v15 = v14;

      v16 = sub_18A4A7258();
      v17 = [v15 valueForKeyPath_];

      if (v17)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v30, 0, 32);
      }

      sub_188A3F29C(v30, &v28, &qword_1EA934050);
      if (v29)
      {
        sub_188A55538(&v28, v27);
        sub_188A55598(v27, v26);
        sub_188A55598(v26, v25);
        sub_188A34624(0, &qword_1ED48FD80);
        swift_dynamicCast();
        [v24 doubleValue];
        v12 = v18;

        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
      }

      sub_188A3F5FC(v30, &qword_1EA934050);
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = a1 & 1;
    *(v21 + 32) = a2;
    *(v21 + 40) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364E0);
    swift_allocObject();

    v10 = sub_188A91E24(v19, sub_188F0E03C, v21, v12);

    *(v10 + 152) = 1;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v28 = *(v4 + 48);
    *(v4 + 48) = 0x8000000000000000;
    sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, &v28, &qword_1EA9312B8, &qword_1EA9364E0);

    *(v4 + 48) = v28;
    swift_endAccess();
    sub_188A34360(&qword_1EA9312B8, &qword_1EA9364E0);
  }

  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

unint64_t sub_188A91E48()
{
  result = qword_1ED48C908;
  if (!qword_1ED48C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48C908);
  }

  return result;
}

uint64_t sub_188A91E9C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v34 = 0uLL;
  v33 = 0.0;
  v32 = 0uLL;
  v31 = 0;
  v30 = 0uLL;
  v29 = 0;
  v28 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64C6E0;
  *(inited + 32) = 0u;
  *(inited + 48) = 0u;
  sub_188A55598(a1, v27);
  sub_188A921E4();
  swift_dynamicCast();
  [v25 CATransform3DValue];
  v7 = v26;

  if ((a2 & 1) == 0)
  {
    CATransform3DGetDecomposition_();
    v8 = *(inited + 16);
    goto LABEL_6;
  }

  v26 = 0x3FF0000000000000;
  CATransform3DGetDecomposition_();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v8 = *(inited + 16);
    if (v8 < 4)
    {
      __break(1u);
    }

    *(inited + 56) = 0;
LABEL_6:
    if (!v8)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v8 == 1)
    {
      goto LABEL_20;
    }

    if (v8 < 3)
    {
      goto LABEL_21;
    }

    if (v8 != 3)
    {
      break;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    inited = sub_189212AE8(inited);
  }

  v9 = v35;
  v20 = v32;
  v10 = v33;
  v23 = v30;
  v24 = v34;
  v11 = v31;
  v22 = v28;
  v12 = v29;
  v13 = *(inited + 32);
  v14 = *(inited + 40);
  v15 = *(inited + 48);
  v21 = *(inited + 56);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  if ((~v7 & 0x7FF0000000000000) != 0)
  {

    v17 = 0;
LABEL_17:
    v19 = v21;
    v18 = v20;
    goto LABEL_18;
  }

  if ((v7 & 0xFFFFFFFFFFFFFLL) == 0)
  {

    if (v26 >= 0)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    goto LABEL_17;
  }

  v17 = 0;
  v18 = vnegq_f64(v20);
  v10 = -v10;
  v19 = v21;
LABEL_18:
  *a3 = v24;
  *(a3 + 16) = v9;
  *(a3 + 24) = v18;
  *(a3 + 40) = v10;
  *(a3 + 48) = v23;
  *(a3 + 64) = v11;
  *(a3 + 72) = v22;
  *(a3 + 88) = v12;
  *(a3 + 96) = v13;
  *(a3 + 104) = v14;
  *(a3 + 112) = v15;
  *(a3 + 120) = v19;
  *(a3 + 128) = v17;
  return result;
}