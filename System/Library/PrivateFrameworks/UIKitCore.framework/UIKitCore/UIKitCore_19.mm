void getCHHapticEventTypeHapticTransient()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCHHapticEventTypeHapticTransientSymbolLoc_ptr;
  v9 = getCHHapticEventTypeHapticTransientSymbolLoc_ptr;
  if (!getCHHapticEventTypeHapticTransientSymbolLoc_ptr)
  {
    v1 = CoreHapticsLibrary_0();
    v7[3] = dlsym(v1, "CHHapticEventTypeHapticTransient");
    getCHHapticEventTypeHapticTransientSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticEventType getCHHapticEventTypeHapticTransient(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:40 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_188CAAB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188CAB6F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18A4A8048();
    swift_beginAccess();
    v2 = sub_188CAC660(v3);
    sub_188BBA15C(v3);
    swift_endAccess();
    sub_188A55B8C(v2);
  }
}

id sub_188CABB10()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_scrollAwayInteraction];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 tabBar];
    [v3 removeInteraction_];
  }

  [*&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_platterView] removeFromSuperview];
  [*&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_accessoryView] removeFromSuperview];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for _UITabBarVisualProvider_Floating();
  return objc_msgSendSuper2(&v5, sel_teardown);
}

void sub_188CABE90(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t sub_188CAC374()
{
  sub_188A3F5FC(v0 + 16, &qword_1EA93CB20);

  v1 = OBJC_IVAR____TtC5UIKit26ScrollPocketContainerModel___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_188CAC47C()
{

  swift_weakDestroy();

  v1 = OBJC_IVAR____TtC5UIKit26ScrollPocketCollectorModel___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_188CAC660(uint64_t a1)
{
  v2 = v1;
  v3 = sub_188BBA050(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_188FA2210();
    v7 = v10;
  }

  sub_188BBA15C(*(v7 + 48) + 40 * v5);
  v8 = *(*(v7 + 56) + 16 * v5);
  sub_188CAC8AC(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_188CAC7D4()
{
  v1 = OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDependencyUnregistrationBlocks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = v2 + 40;
    while (v5 < *(v2 + 16))
    {
      ++v5;
      v7 = *(v6 - 8);

      v7(v8);

      v6 += 16;
      if (v3 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *(v0 + v1) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_188CAC8AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      sub_188BBA230(*(a2 + 48) + 40 * v6, v24);
      v9 = sub_18A4A8018();
      result = sub_188BBA15C(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

id sub_188CAD2EC()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 navigationBar];
  v3 = [(UIView *)v2 _traitOverrides];
  v4 = [(_UITraitOverrides *)v3 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  inited = swift_initStackObject();
  *(inited + 16) = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(inited + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = [(_UITraitOverrides *)*(inited + 16) _swiftImplCopy];
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    inited = v8;
  }

  v9 = qword_1ED491B40;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v11 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v12 = sub_18901AA2C(&type metadata for GlassGroupBackdropNameTrait, 0);
  os_unfair_lock_unlock(v11[2]);
  [(_UITraitOverrides *)v10 _removeTraitToken:v12];

  swift_unknownObjectRelease();
  v13 = [(UIView *)v2 _traitOverrides];
  v14 = *(inited + 16);

  [(_UITraitOverrides *)v13 _replaceWithOverrides:v14];

  v15 = [v0 navigationBar];
  [v15 removeInteraction_];

  v16 = [v0 navigationBar];
  v17 = [v16 layer];

  [v17 setFilters_];
  v18 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView;
  v19 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView];
  if (v19)
  {
    [v19 removeFromSuperview];
    v20 = *&v0[v18];
  }

  else
  {
    v20 = 0;
  }

  *&v0[v18] = 0;

  [*&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView] removeFromSuperview];
  v21 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView;
  v22 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
  if (v22)
  {
    v23 = *&v22[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_reparentingHelper];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      v26 = v23;

      v27 = swift_unknownObjectWeakLoadStrong();
      if (v27)
      {
        v28 = v27;
        [v27 _setDonatedTitleView_];
      }

      swift_unknownObjectWeakAssign();
    }

    v29 = *&v0[v21];
    if (v29)
    {
      [v29 removeFromSuperview];
      v22 = *&v0[v21];
    }

    else
    {
      v22 = 0;
    }
  }

  *&v0[v21] = 0;

  v30 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView;
  v31 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView];
  if (v31)
  {
    [v31 removeFromSuperview];
    v32 = *&v0[v30];
  }

  else
  {
    v32 = 0;
  }

  *&v0[v30] = 0;

  v33 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_weeTitleLabel;
  v34 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_weeTitleLabel];
  if (v34)
  {
    [v34 removeFromSuperview];
    v35 = *&v0[v33];
    *&v0[v33] = 0;
  }

  v36 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentFocusContainerGuide;
  v37 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentFocusContainerGuide];
  if (v37)
  {
    v38 = v37;
    v39 = [v0 navigationBar];
    [v39 removeLayoutGuide_];

    v40 = *&v0[v36];
    *&v0[v36] = 0;
  }

  v41 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext;
  v42 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext];
  if (v42)
  {
    *&v42[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar] = 0;
  }

  *&v0[v41] = 0;

  v44.receiver = v0;
  v44.super_class = ObjectType;
  return objc_msgSendSuper2(&v44, sel_teardown);
}

uint64_t sub_188CAE284(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_188CAE798@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = [*(v2 + *a1) indexPathForItemIdentifier_];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_18A4A2B18();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_18A4A2B48();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void UIView.hoverStyle.setter(char *a1)
{
  v2 = v1;
  v4 = [(UIView *)v1 _hoverStyleStorage];
  if (v4)
  {
    v27 = v4;
    if (a1)
    {
      if (v4 == a1)
      {

        return;
      }

      ObjectType = swift_getObjectType();
      if (ObjectType != swift_getObjectType())
      {
        *&value = 0;
        BYTE8(value) = -1;
        v6 = OBJC_IVAR___UIHoverStyle_host;
        swift_beginAccess();
        sub_188A3F29C(&v27[v6], v30, &unk_1EA93F7F0);
        swift_beginAccess();
        sub_188CAF9D0(&value, &v27[v6]);
        swift_endAccess();
        sub_188CB0610(v30);
        sub_188A3F5FC(v30, &unk_1EA93F7F0);
        sub_188A3F5FC(&value, &unk_1EA93F7F0);
        [a1 copy];
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
        type metadata accessor for UIHoverStyle();
        if (swift_dynamicCast())
        {
          v7 = value;
          [(UIView *)v2 _setHoverStyleStorage:?];
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          BYTE8(v30[0]) = 0;
          v8 = OBJC_IVAR___UIHoverStyle_host;
          swift_beginAccess();
          sub_188A3F29C(v7 + v8, v29, &unk_1EA93F7F0);
          swift_beginAccess();
          sub_188CAF9D0(v30, v7 + v8);
          swift_endAccess();
          sub_188CB0610(v29);

          sub_188A3F5FC(v29, &unk_1EA93F7F0);
          p_value = v30;
LABEL_10:
          sub_188A3F5FC(p_value, &unk_1EA93F7F0);
          return;
        }

        return;
      }

      v14 = *&a1[OBJC_IVAR___UIHoverStyle__shape + 16];
      v13 = *&a1[OBJC_IVAR___UIHoverStyle__shape + 32];
      v15 = *&a1[OBJC_IVAR___UIHoverStyle__shape];
      *(v34 + 9) = *&a1[OBJC_IVAR___UIHoverStyle__shape + 41];
      v33 = v14;
      v34[0] = v13;
      value = v15;
      v16 = &v27[OBJC_IVAR___UIHoverStyle__shape];
      v17 = *&v27[OBJC_IVAR___UIHoverStyle__shape + 41];
      v19 = *&v27[OBJC_IVAR___UIHoverStyle__shape + 16];
      v18 = *&v27[OBJC_IVAR___UIHoverStyle__shape + 32];
      v35 = *&v27[OBJC_IVAR___UIHoverStyle__shape];
      v36 = v19;
      v37[0] = v18;
      *(v37 + 9) = v17;
      v20 = *&v27[OBJC_IVAR___UIHoverStyle__shape + 41];
      v22 = *&v27[OBJC_IVAR___UIHoverStyle__shape + 16];
      v21 = *&v27[OBJC_IVAR___UIHoverStyle__shape + 32];
      v38[0] = *&v27[OBJC_IVAR___UIHoverStyle__shape];
      v38[1] = v22;
      v39[0] = v21;
      *(v39 + 9) = v20;
      v23 = v33;
      v24 = v34[0];
      *(v16 + 41) = *(v34 + 9);
      *(v16 + 1) = v23;
      *(v16 + 2) = v24;
      *v16 = v15;
      sub_188A3F29C(&value, v30, &qword_1EA934C40);
      sub_188A3F29C(&v35, v30, &qword_1EA934C40);
      sub_188A3F5FC(v38, &qword_1EA934C40);
      v30[0] = v35;
      v30[1] = v36;
      v31[0] = v37[0];
      *(v31 + 9) = *(v37 + 9);
      sub_1892162C4(v30);
      sub_188A3F5FC(&v35, &qword_1EA934C40);
      v25 = OBJC_IVAR___UIHoverStyle__effect;
      swift_beginAccess();
      sub_188A53994(&a1[v25], v30);
      sub_188A53994(v30, v29);
      v26 = OBJC_IVAR___UIHoverStyle__effect;
      swift_beginAccess();
      sub_188A53994(&v27[v26], v28);
      swift_beginAccess();
      __swift_assign_boxed_opaque_existential_1(&v27[v26], v29);
      swift_endAccess();
      sub_189216168(v28);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      [v27 setEnabled_];
    }

    else
    {
      *&value = 0;
      BYTE8(value) = -1;
      v12 = OBJC_IVAR___UIHoverStyle_host;
      swift_beginAccess();
      sub_188A3F29C(&v27[v12], v30, &unk_1EA93F7F0);
      swift_beginAccess();
      sub_188CAF9D0(&value, &v27[v12]);
      swift_endAccess();
      sub_188CB0610(v30);
      sub_188A3F5FC(v30, &unk_1EA93F7F0);
      sub_188A3F5FC(&value, &unk_1EA93F7F0);
      [(UIView *)v2 _setHoverStyleStorage:?];
    }

    return;
  }

  if (a1)
  {
    [a1 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    type metadata accessor for UIHoverStyle();
    if (swift_dynamicCast())
    {
      v10 = v35;
      [(UIView *)v2 _setHoverStyleStorage:v35];
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      BYTE8(value) = 0;
      v11 = OBJC_IVAR___UIHoverStyle_host;
      swift_beginAccess();
      sub_188A3F29C(v35 + v11, v30, &unk_1EA93F7F0);
      swift_beginAccess();
      sub_188CAF9D0(&value, v10 + v11);
      swift_endAccess();
      sub_188CB0610(v30);

      sub_188A3F5FC(v30, &unk_1EA93F7F0);
      p_value = &value;
      goto LABEL_10;
    }
  }
}

uint64_t sub_188CAF820(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

id sub_188CAF874()
{
  *(v0 + OBJC_IVAR___UIHoverStyle__cachedBridgedEffect) = 0;
  v1 = v0 + OBJC_IVAR___UIHoverStyle__effect;
  *(v1 + 24) = &type metadata for UIHoverAutomaticEffect;
  *(v1 + 32) = &protocol witness table for UIHoverAutomaticEffect;
  *(v0 + OBJC_IVAR___UIHoverStyle__cachedBridgedShape) = 0;
  v2 = v0 + OBJC_IVAR___UIHoverStyle__shape;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 56) = -1;
  *(v0 + OBJC_IVAR___UIHoverStyle__isEnabled) = 1;
  v3 = v0 + OBJC_IVAR___UIHoverStyle_host;
  *v3 = 0;
  *(v3 + 8) = -1;
  v4 = v0 + OBJC_IVAR___UIHoverStyle_driverCoordinator;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v0 + OBJC_IVAR___UIHoverStyle_driverCoordinatorAccessLocked) = 0;
  *(v0 + OBJC_IVAR___UIHoverStyle_driverCoordinatorQueuedActions) = MEMORY[0x1E69E7CC0];
  v6.super_class = UIHoverStyle;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_188CAF9D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F7F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_188CAFA50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 != 0xFF)
  {
    sub_188B1F3A0(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_188CAFA64()
{
  v1 = OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver__effect;
  swift_beginAccess();
  sub_188CAFD38(v0 + v1, v21);
  sub_188A53994(v21, v22);
  sub_188CB0B9C(v21);
  v2 = sub_188CB0BF0();
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  v3 = OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_pointerInteraction;
  v4 = *(v0 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_pointerInteraction);
  if (v2)
  {
    if (v4)
    {
      v5 = v0 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_host;
      swift_beginAccess();
      if (*(v5 + 8) == 255)
      {
        v12 = v4;
      }

      else
      {
        sub_188CAFD94(v5, v22);
        sub_188CAFD94(v22, v18);
        if (v19)
        {
          v6 = v4;
          sub_188CB083C(v22);
          sub_188CB083C(v18);
        }

        else
        {
          sub_188CB0D7C(v18, v20);
          Strong = swift_unknownObjectWeakLoadStrong();
          v14 = v4;
          sub_188A3F5FC(v20, &qword_1EA939220);
          sub_188CB083C(v22);
          if (Strong)
          {
            v15 = [v14 view];
            if (!v15 || (v16 = v15, v15, v16 != Strong))
            {
              [Strong addInteraction_];

              return;
            }
          }
        }
      }

      [v4 invalidate];
    }

    else
    {
      v9 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate_];
      v10 = *(v0 + v3);
      *(v0 + v3) = v9;
      v4 = v9;

      v11 = v0 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_host;
      swift_beginAccess();
      if (*(v11 + 8) != 255)
      {
        sub_188CAFD94(v11, v22);
        sub_188CAFD94(v22, v18);
        if (v19)
        {

          sub_188CB083C(v22);
          sub_188CB083C(v18);
          return;
        }

        sub_188CB0D7C(v18, v20);
        v17 = swift_unknownObjectWeakLoadStrong();
        sub_188A3F5FC(v20, &qword_1EA939220);
        sub_188CB083C(v22);
        if (v17)
        {
          [v17 addInteraction_];
        }
      }
    }
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v4 = v4;
    v7 = [v4 view];
    if (v7)
    {
      v8 = v7;
      [v7 removeInteraction_];

      return;
    }
  }
}

uint64_t sub_188CAFE00(uint64_t a1, uint64_t a2)
{
  sub_188A3F29C(a2, v5, &unk_1EA93F7F0);
  sub_188A3F29C(a1 + 104, v4, &unk_1EA93F7F0);
  sub_188CAF9D0(v5, a1 + 104);
  sub_188CAFEA0(v4);
  sub_188A3F5FC(v4, &unk_1EA93F7F0);
  return sub_188A3F5FC(v5, &unk_1EA93F7F0);
}

uint64_t sub_188CAFEA0(uint64_t a1)
{
  v2 = v1;
  sub_188A3F29C(v2 + 104, v13, &unk_1EA93F7F0);
  sub_188A3F29C(v13, v16, &unk_1EA93F7F0);
  sub_188A3F29C(a1, &v17, &unk_1EA93F7F0);
  if (v16[8] == 255)
  {
    sub_188A3F5FC(v13, &unk_1EA93F7F0);
    if (v18 == 255)
    {
      v6 = v16;
      return sub_188A3F5FC(v6, &unk_1EA93F7F0);
    }

    goto LABEL_8;
  }

  sub_188A3F29C(v16, v15, &unk_1EA93F7F0);
  if (v18 == 255)
  {
    sub_188A3F5FC(v13, &unk_1EA93F7F0);
    sub_188CB083C(v15);
LABEL_8:
    sub_188A3F5FC(v16, &qword_1EA93AC60);
    goto LABEL_9;
  }

  sub_188CB01E0(&v17, v14);
  v4 = sub_188CB0218(v15, v14);
  sub_188CB083C(v14);
  sub_188A3F5FC(v13, &unk_1EA93F7F0);
  sub_188CB083C(v15);
  result = sub_188A3F5FC(v16, &unk_1EA93F7F0);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    v7 = *(v2 + 136);
    sub_188A3F29C(v2 + 104, v15, &unk_1EA93F7F0);
    v8 = OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_host;
    swift_beginAccess();
    sub_188A3F29C(v7 + v8, v14, &unk_1EA93F7F0);
    swift_beginAccess();
    sub_188CAF9D0(v15, v7 + v8);
    swift_endAccess();
    sub_1891C42CC(v14);
    sub_188A3F5FC(v14, &unk_1EA93F7F0);
    sub_188A3F5FC(v15, &unk_1EA93F7F0);
    KeyPath = swift_getKeyPath();
    v10 = sub_188A3F29C(v2 + 104, v13, &unk_1EA93F7F0);
    MEMORY[0x1EEE9AC00](v10);
    v12[2] = KeyPath;
    v12[3] = v13;
    if (*(*(v2 + 144) + 16))
    {
      v11 = sub_1892186AC(*(v2 + 144), sub_1890557B0, v12);

      *(v2 + 144) = v11;
    }

    else
    {
    }

    v6 = v13;
    return sub_188A3F5FC(v6, &unk_1EA93F7F0);
  }

  return result;
}

uint64_t sub_188CB0184(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t sub_188CB0218(uint64_t a1, uint64_t a2)
{
  sub_188CAFD94(a1, v17);
  sub_188CAFD94(a2, &v18);
  if ((v17[8] & 1) == 0)
  {
    sub_188CAFD94(v17, v16);
    if (v19)
    {
      v7 = &qword_1EA939220;
      goto LABEL_10;
    }

    sub_188A3F704(&v18, v15, &qword_1EA939220);
    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = swift_unknownObjectWeakLoadStrong();
    v10 = v9;
    if (Strong)
    {
      if (v9)
      {
        sub_188AF7A44();
        v11 = sub_18A4A7C88();

        if ((v11 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_18:
        v12 = &qword_1EA939220;
        goto LABEL_19;
      }

      v10 = Strong;
    }

    else if (!v9)
    {
      goto LABEL_18;
    }

LABEL_25:
    v14 = &qword_1EA939220;
    goto LABEL_26;
  }

  sub_188CAFD94(v17, v16);
  if (v19 == 1)
  {
    sub_188A3F704(&v18, v15, &qword_1EA93AC50);
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = swift_unknownObjectWeakLoadStrong();
    v5 = v4;
    if (v3)
    {
      if (v4)
      {
        type metadata accessor for UIHoverEffectLayer(0);
        v6 = sub_18A4A7C88();

        if ((v6 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_16;
      }

      v5 = v3;
    }

    else if (!v4)
    {
LABEL_16:
      v12 = &qword_1EA93AC50;
LABEL_19:
      sub_188A3F5FC(v15, v12);
      sub_188A3F5FC(v16, v12);
      sub_188CB083C(v17);
      return 1;
    }

LABEL_22:
    v14 = &qword_1EA93AC50;
LABEL_26:
    sub_188A3F5FC(v15, v14);
    sub_188A3F5FC(v16, v14);
    sub_188CB083C(v17);
    return 0;
  }

  v7 = &qword_1EA93AC50;
LABEL_10:
  sub_188A3F5FC(v16, v7);
  sub_188A3F5FC(v17, &qword_1EA93AC58);
  return 0;
}

id sub_188CB0470@<X0>(char **a1@<X8>)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR___UIHoverStyle__effect];
  swift_beginAccess();
  v5 = *(v4 + 3);
  v6 = *(v4 + 4);
  v7 = __swift_project_boxed_opaque_existential_0(v4, v5);
  v8 = type metadata accessor for UIHoverStyle();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-v10];
  (*(v12 + 16))(&v18[-v10], v7, v5, v9);
  v13 = *&v2[OBJC_IVAR___UIHoverStyle__shape + 16];
  v21[0] = *&v2[OBJC_IVAR___UIHoverStyle__shape];
  v21[1] = v13;
  v15 = *&v2[OBJC_IVAR___UIHoverStyle__shape];
  v14 = *&v2[OBJC_IVAR___UIHoverStyle__shape + 16];
  v22[0] = *&v2[OBJC_IVAR___UIHoverStyle__shape + 32];
  *(v22 + 9) = *&v2[OBJC_IVAR___UIHoverStyle__shape + 41];
  v19[0] = v15;
  v19[1] = v14;
  v20[0] = *&v2[OBJC_IVAR___UIHoverStyle__shape + 32];
  *(v20 + 9) = *&v2[OBJC_IVAR___UIHoverStyle__shape + 41];
  sub_188A3F29C(v21, v18, &qword_1EA934C40);
  v16 = UIHoverStyle.init<A>(effect:shape:)(v11, v19, v5, v6);
  result = [v16 setEnabled_];
  a1[3] = v8;
  *a1 = v16;
  return result;
}

uint64_t sub_188CB0610(uint64_t a1)
{
  v3 = OBJC_IVAR___UIHoverStyle_host;
  swift_beginAccess();
  sub_188A3F29C(v1 + v3, v9, &unk_1EA93F7F0);
  sub_188A3F29C(a1, &v10, &unk_1EA93F7F0);
  if (v9[8] == 255)
  {
    if (v11 == 255)
    {
      return sub_188A3F5FC(v9, &unk_1EA93F7F0);
    }

    goto LABEL_8;
  }

  sub_188A3F29C(v9, v8, &unk_1EA93F7F0);
  if (v11 == 255)
  {
    sub_188CB083C(v8);
LABEL_8:
    sub_188A3F5FC(v9, &qword_1EA93AC60);
    goto LABEL_9;
  }

  sub_188CB01E0(&v10, v7);
  v4 = sub_188CB0218(v8, v7);
  sub_188CB083C(v7);
  sub_188CB083C(v8);
  result = sub_188A3F5FC(v9, &unk_1EA93F7F0);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    sub_188A3F29C(v1 + v3, v9, &unk_1EA93F7F0);
    sub_188A3F29C(v9, v8, &unk_1EA93F7F0);
    v6 = swift_allocObject();
    sub_188CB0890(v8, v6 + 16);
    sub_188BE0090(1, sub_188CAFDF8, v6);

    return sub_188A3F5FC(v9, &unk_1EA93F7F0);
  }

  return result;
}

uint64_t sub_188CB07F8()
{
  if (*(v0 + 24) != 255)
  {
    MEMORY[0x18CFEA6E0](v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_188CB0890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F7F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_188CB0924(uint64_t a1, __int128 *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver__shape];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 6) = 0;
  v8[56] = -1;
  *(v8 + 8) = 0;
  v9 = *(v8 + 1);
  v30[0] = *v8;
  v30[1] = v9;
  v31[0] = *(v8 + 2);
  *(v31 + 9) = *(v8 + 41);
  v8[56] = -1;
  sub_188A3F5FC(v30, &qword_1EA934C40);
  swift_unknownObjectWeakInit();
  v10 = &v3[OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_host];
  *v10 = 0;
  *(v10 + 8) = -1;
  v3[OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_isEnabled] = 1;
  *&v3[OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_pointerInteraction] = 0;
  sub_188A53994(a1, v32);
  v11 = &v3[OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver__effect];
  swift_beginAccess();
  sub_188A53994(v32, v29);
  v11[3] = &type metadata for UIHoverAutomaticEffect;
  v11[4] = &protocol witness table for UIHoverAutomaticEffect;
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  v11[5] = 0;
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  sub_188A5EBAC(v29, v11);
  swift_endAccess();
  swift_beginAccess();
  v12 = *v8;
  v13 = *(v8 + 1);
  v14 = *(v8 + 2);
  v15 = *(v8 + 3);
  v16 = *(v8 + 4);
  v17 = *(v8 + 5);
  v18 = *(v8 + 6);
  v19 = *(v8 + 8);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 6) = 0;
  v20 = v8[56];
  v8[56] = -1;
  *(v8 + 8) = 0;
  v21 = *v8;
  v22 = *(v8 + 1);
  v23 = *(v8 + 2);
  *&v33[9] = *(v8 + 41);
  v32[1] = v22;
  *v33 = v23;
  v32[0] = v21;
  *(v8 + 41) = *(a2 + 41);
  v24 = *a2;
  v25 = a2[2];
  *(v8 + 1) = a2[1];
  *(v8 + 2) = v25;
  *v8 = v24;
  sub_188CAFA50(v12, v13, v14, v15, v16, v17, v18, v20);

  sub_188A3F5FC(v32, &qword_1EA934C40);
  swift_beginAccess();
  sub_188CAF9D0(a3, v10);
  swift_endAccess();
  v28.receiver = v3;
  v28.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  sub_188CAFA64();

  sub_188A3F5FC(a3, &unk_1EA93F7F0);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v26;
}

uint64_t sub_188CB0BF0()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_host;
  swift_beginAccess();
  if (*(v1 + 8) != 255)
  {
    sub_188CAFD94(v1, v10);
    sub_188CAFD94(v10, &v7);
    if (v8)
    {
      sub_188CB083C(v10);
      sub_188CB083C(&v7);
    }

    else
    {
      sub_188CB0D7C(&v7, v9);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_188A3F5FC(v9, &qword_1EA939220);
      sub_188CB083C(v10);
      if (Strong)
      {
        v3 = [Strong _providesCustomPointerInteraction];

        if (v3)
        {
          return 0;
        }
      }
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
  }

  else if (*(v1 + 8) != 255)
  {
    sub_188CAFD94(v1, v10);
    sub_188CAFD94(v10, &v7);
    if (v8)
    {
      sub_188CB083C(v10);
      sub_188CB083C(&v7);
      v6 = 0;
    }

    else
    {
      sub_188CB0D7C(&v7, v9);
      v6 = swift_unknownObjectWeakLoadStrong();
      sub_188A3F5FC(v9, &qword_1EA939220);
      sub_188CB083C(v10);
    }
  }

  return 1;
}

uint64_t sub_188CB0D7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for UIHoverStyle()
{
  result = qword_1EA930A90;
  if (!qword_1EA930A90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA930A90);
  }

  return result;
}

BOOL _containedInViewOfClass(void *a1)
{
  v1 = _enclosingViewOfClass(a1);
  v2 = v1 != 0;

  return v2;
}

id _enclosingViewOfClass(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    do
    {
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = [v3 superview];

      v3 = v4;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double static UIShape.rect.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 6;
  return result;
}

char *UIHoverStyle.init(shape:)(_OWORD *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&v12 + 1) = &type metadata for UIHoverAutomaticEffect;
  *&v13[0] = &protocol witness table for UIHoverAutomaticEffect;
  v3 = OBJC_IVAR___UIHoverStyle__effect;
  swift_beginAccess();
  v4 = v2;
  __swift_destroy_boxed_opaque_existential_0Tm(v2 + v3);
  sub_188A5EBAC(&v11, v2 + v3);
  swift_endAccess();
  v5 = &v4[OBJC_IVAR___UIHoverStyle__shape];
  v7 = *&v4[OBJC_IVAR___UIHoverStyle__shape + 16];
  v6 = *&v4[OBJC_IVAR___UIHoverStyle__shape + 32];
  v8 = *&v4[OBJC_IVAR___UIHoverStyle__shape];
  *(v13 + 9) = *&v4[OBJC_IVAR___UIHoverStyle__shape + 41];
  v12 = v7;
  v13[0] = v6;
  v11 = v8;
  v9 = a1[1];
  *v5 = *a1;
  *(v5 + 1) = v9;
  *(v5 + 2) = a1[2];
  *(v5 + 41) = *(a1 + 41);
  sub_188A3F5FC(&v11, &qword_1EA934C40);

  return v4;
}

uint64_t sub_188CB11F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 57))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 56);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

char *UIHoverStyle.init<A>(effect:shape:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&v19 + 1) = a3;
  *&v20[0] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  v10 = OBJC_IVAR___UIHoverStyle__effect;
  swift_beginAccess();
  v11 = v8;
  __swift_destroy_boxed_opaque_existential_0Tm(v8 + v10);
  sub_188A5EBAC(&v18, v8 + v10);
  swift_endAccess();
  v12 = &v11[OBJC_IVAR___UIHoverStyle__shape];
  v14 = *&v11[OBJC_IVAR___UIHoverStyle__shape + 16];
  v13 = *&v11[OBJC_IVAR___UIHoverStyle__shape + 32];
  v15 = *&v11[OBJC_IVAR___UIHoverStyle__shape];
  *(v20 + 9) = *&v11[OBJC_IVAR___UIHoverStyle__shape + 41];
  v19 = v14;
  v20[0] = v13;
  v18 = v15;
  v16 = a2[1];
  *v12 = *a2;
  *(v12 + 1) = v16;
  *(v12 + 2) = a2[2];
  *(v12 + 41) = *(a2 + 41);
  sub_188A3F5FC(&v18, &qword_1EA934C40);

  return v11;
}

id sub_188CB148C()
{
  result = [v0 hoverStyle];
  if (result)
  {
    v2 = result;
    v7 = &type metadata for UIHoverAutomaticEffect;
    v8 = &protocol witness table for UIHoverAutomaticEffect;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    v13 = -1;
    swift_unknownObjectWeakInit();
    v14 = 1;
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong isPointerInteractionEnabled];
    [Strong setPointerInteractionEnabled_];

    sub_188CB15C8(v6, v5);
    v4 = swift_allocObject();
    sub_188CB1600(v5, v4 + 16);
    sub_188BE0090(1, sub_188CB1638, v4);

    return sub_188CB1E14(v6);
  }

  return result;
}

uint64_t sub_188CB1664(uint64_t a1)
{
  sub_188A3F29C(a1, v11, &unk_1EA93F7F0);
  if (v11[8] == 255)
  {
    sub_188A3F5FC(v11, &unk_1EA93F7F0);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return sub_188A3F5FC(a1, &unk_1EA93F7F0);
    }

    goto LABEL_13;
  }

  sub_188CAFD94(v11, v9);
  if (v9[8])
  {
    sub_188CB083C(v9);
    v2 = 0;
  }

  else
  {
    sub_188CB0D7C(v9, v10);
    v2 = swift_unknownObjectWeakLoadStrong();
    sub_188A3F5FC(v10, &qword_1EA939220);
  }

  sub_188CB083C(v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    if (Strong)
    {
      v4 = Strong;

      if (v4 == v2)
      {
        goto LABEL_15;
      }
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v5 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      v6 = v2;
      sub_188FBC288(v5);

      v2 = v5;
LABEL_15:

      return sub_188A3F5FC(a1, &unk_1EA93F7F0);
    }

LABEL_14:
    v7 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    sub_188FBC288(v7);

    goto LABEL_15;
  }

  if (Strong)
  {
LABEL_13:

    v2 = 0;
    goto LABEL_14;
  }

  return sub_188A3F5FC(a1, &unk_1EA93F7F0);
}

uint64_t sub_188CB1828(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_188CB1870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188CB18D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_188A5EBAC(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_188CB19DC(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_188A3F5FC(a1, &qword_1EA937070);
    v7 = sub_188A403F4(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_188FA45A0();
        v11 = v13;
      }

      sub_188A5EBAC((*(v11 + 56) + 40 * v9), v14);
      sub_188F9E100(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_188A3F5FC(v14, &qword_1EA937070);
  }

  return result;
}

uint64_t sub_188CB19DC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188A403F4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA45A0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_188CB1B0C(v14, a3 & 1);
    v9 = sub_188A403F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;
    __swift_destroy_boxed_opaque_existential_0Tm(v20);

    return sub_188A5EBAC(a1, v20);
  }

  else
  {

    return sub_188CB1D8C(v9, a2, a1, v19);
  }
}

uint64_t sub_188CB1B0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938D50);
  result = sub_18A4A8468();
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
      v21 = (*(v5 + 56) + 40 * v19);
      if (a2)
      {
        sub_188A5EBAC(v21, v31);
      }

      else
      {
        sub_188A53994(v21, v31);
      }

      result = sub_18A4A8878();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_188A5EBAC(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

uint64_t sub_188CB1DA4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = a5(a3, a4[7] + 40 * a1);
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

uint64_t sub_188CB1E44()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349D0);
  result = sub_18A4A8068();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v23 = *(*(v1 + 48) + 16 * (v12 | (v4 << 6)));
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v23);
      result = sub_18A4A88E8();
      v15 = -1 << *(v3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v10 + 8 * v17);
          if (v21 != -1)
          {
            v11 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v3 + 48) + 16 * v11) = v23;
      ++*(v3 + 16);
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v4 >= v9)
      {
        break;
      }

      v14 = v5[v4];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    v22 = 1 << *(v1 + 32);
    if (v22 >= 64)
    {
      bzero((v1 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v22;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_188CB23B0(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v4 = sub_18A4A5318();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *((*v2 & *a1) + 0x68);
  v6 = sub_18A4A4918();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = *((*v2 & *a1) + 0x70);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v7], AssociatedTypeWitness);
  sub_188B223B8(&a1[*((*v2 & *a1) + 0x78)]);

  MEMORY[0x18CFEA6E0](&a1[*((*v2 & *a1) + 0xA0)]);
  sub_188A3F5FC(&a1[*((*v2 & *a1) + 0xB8)], &qword_1EA93A780);
  return sub_188A3F5FC(&a1[*((*v2 & *a1) + 0xC8)], qword_1EA93A788);
}

uint64_t ShouldSizeLeftOrRightViewToFit(void *a1)
{
  v1 = a1;
  if (dyld_program_sdk_at_least())
  {
    v2 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v1 image];
      v2 = [v3 isSymbolImage];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t UIKeyboardIsRightToLeftInputModeActive()
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v0 = UIKeyboardActiveInputModes;
  v1 = [v0 countByEnumeratingWithState:&v5 objects:v9 count:16];
  if (v1)
  {
    v2 = *v6;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v6 != v2)
        {
          objc_enumerationMutation(v0);
        }

        if (UIKeyboardInputModeIsDefaultRightToLeft(*(*(&v5 + 1) + 8 * i)))
        {
          v1 = 1;
          goto LABEL_11;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v5 objects:v9 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v1;
}

void sub_188CB3A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_188CB4040(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v3 < 0)
  {
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v4 = *(a1 + 48);
    if (*(a1 + 24) & a2)
    {
      v4 = 0.0;
    }

    if (v3 & a2)
    {
      v6 = 0.0;
    }
  }

  v7 = 6.28318531 / v4 * (6.28318531 / v4);
  v8 = sqrt(v7);
  *(v2 + 56) = v7;
  *(v2 + 64) = v8 + v8;
  *(v2 + 209) = v4 == 0.0;
  v9 = 6.28318531 / v6 * (6.28318531 / v6);
  v10 = sqrt(v9);
  *(v2 + 88) = v9;
  *(v2 + 96) = v10 + v10;
  *(v2 + 210) = v6 == 0.0;
  v11 = 6.28318531 / v5 * (6.28318531 / v5);
  v12 = sqrt(v11);
  *(v2 + 192) = v11;
  *(v2 + 200) = v12 + v12;
  *(v2 + 211) = v5 == 0.0;
  v13 = *a1;
  v14 = *(a1 + 8);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v15 = *a1;
    *(v2 + 32) = v13;
    v16 = 40;
    v17 = v14;
    goto LABEL_17;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = *(a1 + 24);
  v15 = 6.28318531 / v13 * (6.28318531 / v13);
  v21 = sqrt(v15);
  v17 = (v21 + v21) * v14;
  *(v2 + 32) = v15;
  *(v2 + 40) = v17;
  *(v2 + 48) = v14;
  *(v2 + 80) = v13;
  if (v20)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v2 = v18;
    if (v3)
    {
LABEL_10:
      if (v4 != 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v16 = 16;
  v14 = v19;
LABEL_17:
  *(v2 + v16) = v14;
  if (v4 == 0.0)
  {
LABEL_11:
    *v2 = *(v2 + 48);
    *(v2 + 8) = 0;
  }

LABEL_12:
  if (v6 == 0.0)
  {
    *(v2 + 16) = *(v2 + 80);
    *(v2 + 24) = 0;
  }

  result = v17 / v15;
  *(v2 + 216) = v17 / v15;
  return result;
}

float64_t sub_188CB4190(double a1)
{
  if (a1 <= 0.0)
  {
    v11 = *(v1 + 240);
    return v11.f64[0];
  }

  v3 = *(v1 + 176);
  v2 = *(v1 + 192);
  v4 = *(v1 + 163);
  if (v4)
  {
    *(v1 + 272) = v3;
    *(v1 + 288) = v2;
    *(v1 + 304) = 0u;
    *(v1 + 320) = 0u;
  }

  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  v9 = *(v1 + 161);
  v10 = *(v1 + 162);
  v165 = v3;
  v169 = v2;
  if (v9)
  {
    if ((*(v1 + 162) & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_12:
    v16 = *(v1 + 32);
    v17 = *(v1 + 40);
    goto LABEL_54;
  }

  v13 = *(v1 + 48);
  v12 = *(v1 + 56);
  v14 = *(v1 + 64);
  v15 = *(v1 + 72);
  if (*v1 == v13 && *(v1 + 8) == 0.0)
  {
    if (*(v1 + 162))
    {
      goto LABEL_11;
    }

LABEL_32:
    v43 = *(v1 + 16);
    if (v43 == v5 && *(v1 + 24) == 0.0)
    {
      goto LABEL_53;
    }

    v46 = v43 - v5;
    if ((v8 - 1) <= 2)
    {
      v47 = __sincos_stret(v43 - v5);
      v48 = atan2(v47.__sinval, v47.__cosval);
      if (v48 > 0.0 && v8 == 2)
      {
        v48 = v48 + -6.28318531;
      }

      if (v48 < 0.0 && v8 == 3)
      {
        v46 = v48 + 6.28318531;
      }

      else
      {
        v46 = v48;
      }
    }

    v51 = *(v1 + 24);
    v52 = sqrt(v6);
    v53 = v7 * 0.5;
    if (v7 * 0.5 >= v52)
    {
      if (v52 >= v53)
      {
        v67 = v53 * v46 + v51;
        v68 = v46 + v67 * a1;
        v58 = exp(-(v53 * a1));
        v59 = v58 * v68;
        v65 = v58 * v67;
        v66 = v68 * v53;
        goto LABEL_52;
      }

      v61 = sqrt(v53 * v53 - v52 * v52);
      v62 = cosh(v61 * a1);
      v63 = 1.0 / v61 * (v53 * v46 + v51);
      v64 = sinh(v61 * a1);
      v57 = v46 * v62 + v63 * v64;
      v58 = exp(-(v53 * a1));
      v59 = v58 * v57;
      v60 = v61 * (v63 * v62) + v61 * (v46 * v64);
    }

    else
    {
      v54 = sqrt(v52 * v52 - v53 * v53);
      v55 = __sincos_stret(v54 * a1);
      v56 = 1.0 / v54 * (v53 * v46 + v51);
      v57 = v55.__cosval * v46 + v55.__sinval * v56;
      v58 = exp(-(v53 * a1));
      v59 = v58 * v57;
      v60 = v54 * (v55.__cosval * v56) - v54 * (v46 * v55.__sinval);
    }

    v65 = v58 * v60;
    v66 = v57 * v53;
LABEL_52:
    v69 = v65 - v58 * v66;
    v43 = v5 + v59;
    *(v1 + 16) = v5 + v59;
    *(v1 + 24) = v69;
    v3 = v165;
    v2 = v169;
    goto LABEL_53;
  }

  v18 = *v1 - v13;
  v158 = *(v1 + 88);
  if ((v15 - 1) <= 2)
  {
    v19 = __sincos_stret(*v1 - v13);
    v20 = atan2(v19.__sinval, v19.__cosval);
    if (v20 > 0.0 && v15 == 2)
    {
      v20 = v20 + -6.28318531;
    }

    if (v20 < 0.0 && v15 == 3)
    {
      v18 = v20 + 6.28318531;
    }

    else
    {
      v18 = v20;
    }
  }

  v23 = *(v1 + 8);
  v24 = sqrt(v12);
  v25 = v14 * 0.5;
  if (v14 * 0.5 >= v24)
  {
    if (v24 >= v25)
    {
      v44 = v25 * v18 + v23;
      v45 = v18 + v44 * a1;
      v30 = exp(-(v25 * a1));
      v31 = v30 * v45;
      v34 = v30 * v44;
      v35 = v45 * v25;
    }

    else
    {
      v153 = v5;
      v36 = sqrt(v25 * v25 - v24 * v24);
      v37 = cosh(v36 * a1);
      v145 = v7;
      v38 = 1.0 / v36 * (v25 * v18 + v23);
      v39 = sinh(v36 * a1);
      v40 = v18 * v37 + v38 * v39;
      v30 = exp(-(v25 * a1));
      v31 = v30 * v40;
      v41 = v36 * (v18 * v39);
      v42 = v36 * (v38 * v37);
      v5 = v153;
      v34 = v30 * (v42 + v41);
      v35 = v40 * v25;
      v7 = v145;
    }
  }

  else
  {
    v144 = v7;
    v26 = sqrt(v24 * v24 - v25 * v25);
    v27 = __sincos_stret(v26 * a1);
    v28 = 1.0 / v26 * (v25 * v18 + v23);
    v152 = v5;
    v29 = v27.__cosval * v18 + v27.__sinval * v28;
    v30 = exp(-(v25 * a1));
    v31 = v30 * v29;
    v32 = v26 * (v18 * v27.__sinval);
    v33 = v26 * (v27.__cosval * v28);
    v7 = v144;
    v34 = v30 * (v33 - v32);
    v35 = v29 * v25;
    v5 = v152;
  }

  *v1 = v13 + v31;
  *(v1 + 8) = v34 - v30 * v35;
  v3 = v165;
  v2 = v169;
  v6 = v158;
  if ((v10 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  if (v9)
  {
    goto LABEL_12;
  }

  v43 = *(v1 + 16);
LABEL_53:
  v16 = 6.28318531 / v43 * (6.28318531 / v43);
  v70 = sqrt(v16);
  v17 = *v1 * (v70 + v70);
  *(v1 + 32) = v16;
  *(v1 + 40) = v17;
LABEL_54:
  *(v1 + 112) = v3;
  *(v1 + 128) = v2;
  v72 = *(v1 + 272);
  v71 = *(v1 + 288);
  v74 = *(v1 + 304);
  v73 = *(v1 + 320);
  v11 = *(v1 + 240);
  v75 = *(v1 + 256);
  v76 = *(v1 + 208);
  v77 = *(v1 + 224);
  if ((v4 & 1) == 0 && (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v72, v3), vceqq_f64(v71, v2)), vuzp1q_s32(vceqzq_f64(v74), vceqzq_f64(v73))))) & 1) == 0)
  {
    v78 = vsubq_f64(v72, v3);
    v79 = vsubq_f64(v71, v2);
    v80 = sqrt(*(v1 + 144));
    v81 = *(v1 + 152) * 0.5;
    v140 = *(v1 + 224);
    v146 = *(v1 + 208);
    v127 = *(v1 + 240);
    v131 = *(v1 + 256);
    if (v81 >= v80)
    {
      if (v80 >= v81)
      {
        v156 = vaddq_f64(v74, vmulq_n_f64(v78, v81));
        v163 = vaddq_f64(v73, vmulq_n_f64(v79, v81));
        v121 = vaddq_f64(v79, vmulq_n_f64(v163, a1));
        v134 = vaddq_f64(v78, vmulq_n_f64(v156, a1));
        v138 = -v81;
        v86 = exp(-(v81 * a1));
        v84 = vmulq_n_f64(v121, v86);
        v85 = vmulq_n_f64(v134, v86);
        v87 = vmulq_n_f64(v156, v86);
        v88 = vmulq_n_f64(vmulq_n_f64(v134, v138), v86);
        v89 = vmulq_n_f64(v163, v86);
        v90 = vmulq_n_f64(v121, v138);
      }

      else
      {
        v120 = sqrt(v81 * v81 - v80 * v80);
        v161 = *(v1 + 304);
        v155 = *(v1 + 320);
        v133 = v78;
        v137 = v79;
        v125 = *(v1 + 152) * 0.5;
        v117 = cosh(v120 * a1);
        v110 = sinh(v120 * a1);
        v114 = vmulq_n_f64(vaddq_f64(v161, vmulq_n_f64(v133, v125)), 1.0 / v120);
        v162 = vmulq_n_f64(vaddq_f64(v155, vmulq_n_f64(v137, v125)), 1.0 / v120);
        v107 = vaddq_f64(vmulq_n_f64(v137, v117), vmulq_n_f64(v162, v110));
        v109 = vaddq_f64(vmulq_n_f64(v133, v117), vmulq_n_f64(v114, v110));
        v86 = exp(-(v125 * a1));
        v84 = vmulq_n_f64(v107, v86);
        v85 = vmulq_n_f64(v109, v86);
        v87 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v114, v117), v120), vmulq_n_f64(vmulq_n_f64(v133, v110), v120)), v86);
        v88 = vmulq_n_f64(vmulq_n_f64(v109, -v125), v86);
        v89 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v162, v117), v120), vmulq_n_f64(vmulq_n_f64(v137, v110), v120)), v86);
        v90 = vmulq_n_f64(v107, -v125);
      }

      v91 = vmulq_n_f64(v90, v86);
      v74 = vaddq_f64(v87, v88);
      v73 = vaddq_f64(v89, v91);
    }

    else
    {
      v119 = sqrt(v80 * v80 - v81 * v81);
      v159 = *(v1 + 304);
      v154 = *(v1 + 320);
      v132 = v78;
      v136 = v79;
      v124 = *(v1 + 152) * 0.5;
      v82 = __sincos_stret(v119 * a1);
      v113 = vmulq_n_f64(vaddq_f64(v159, vmulq_n_f64(v132, v124)), 1.0 / v119);
      v160 = vmulq_n_f64(vaddq_f64(v154, vmulq_n_f64(v136, v124)), 1.0 / v119);
      v106 = vaddq_f64(vmulq_n_f64(v136, v82.__cosval), vmulq_n_f64(v160, v82.__sinval));
      v108 = vaddq_f64(vmulq_n_f64(v132, v82.__cosval), vmulq_n_f64(v113, v82.__sinval));
      v83 = exp(-(v124 * a1));
      v84 = vmulq_n_f64(v106, v83);
      v85 = vmulq_n_f64(v108, v83);
      v74 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v132, -v82.__sinval), v119), vmulq_n_f64(vmulq_n_f64(v113, v82.__cosval), v119)), v83), vmulq_n_f64(vmulq_n_f64(v108, -v124), v83));
      v73 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v136, -v82.__sinval), v119), vmulq_n_f64(vmulq_n_f64(v160, v82.__cosval), v119)), v83), vmulq_n_f64(vmulq_n_f64(v106, -v124), v83));
    }

    v72 = vaddq_f64(v165, v85);
    v71 = vaddq_f64(v169, v84);
    v77 = v140;
    v76 = v146;
    v11 = v127;
    v75 = v131;
  }

  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v11, v72), vceqq_f64(v75, v71)), vuzp1q_s32(vceqzq_f64(v76), vceqzq_f64(v77))))) & 1) == 0)
  {
    v92 = vsubq_f64(v11, v72);
    v93 = vsubq_f64(v75, v71);
    v94 = sqrt(v16);
    v95 = v17 * 0.5;
    v164 = v74;
    v157 = v73;
    v135 = v72;
    v139 = v71;
    if (v17 * 0.5 >= v94)
    {
      if (v94 >= v95)
      {
        v130 = vaddq_f64(v76, vmulq_n_f64(v92, v95));
        v151 = vaddq_f64(v77, vmulq_n_f64(v93, v95));
        v168 = vaddq_f64(v92, vmulq_n_f64(v130, a1));
        v143 = vaddq_f64(v93, vmulq_n_f64(v151, a1));
        v172 = -v95;
        v100 = exp(-(v95 * a1));
        v98 = vmulq_n_f64(v143, v100);
        v99 = vmulq_n_f64(v168, v100);
        v101 = vmulq_n_f64(v130, v100);
        v102 = vmulq_n_f64(vmulq_n_f64(v168, v172), v100);
        v103 = vmulq_n_f64(v151, v100);
        v104 = vmulq_n_f64(v143, v172);
      }

      else
      {
        v129 = sqrt(v95 * v95 - v94 * v94);
        v142 = v77;
        v149 = v76;
        v167 = v92;
        v171 = v93;
        v126 = cosh(v129 * a1);
        v118 = sinh(v129 * a1);
        v123 = vmulq_n_f64(vaddq_f64(v149, vmulq_n_f64(v167, v17 * 0.5)), 1.0 / v129);
        v150 = vmulq_n_f64(vaddq_f64(v142, vmulq_n_f64(v171, v17 * 0.5)), 1.0 / v129);
        v112 = vaddq_f64(vmulq_n_f64(v171, v126), vmulq_n_f64(v150, v118));
        v116 = vaddq_f64(vmulq_n_f64(v167, v126), vmulq_n_f64(v123, v118));
        v100 = exp(-(v17 * 0.5 * a1));
        v98 = vmulq_n_f64(v112, v100);
        v99 = vmulq_n_f64(v116, v100);
        v101 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v123, v126), v129), vmulq_n_f64(vmulq_n_f64(v167, v118), v129)), v100);
        v102 = vmulq_n_f64(vmulq_n_f64(v116, -(v17 * 0.5)), v100);
        v103 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v150, v126), v129), vmulq_n_f64(vmulq_n_f64(v171, v118), v129)), v100);
        v104 = vmulq_n_f64(v112, -(v17 * 0.5));
      }

      v76 = vaddq_f64(v101, v102);
      v77 = vaddq_f64(v103, vmulq_n_f64(v104, v100));
    }

    else
    {
      v128 = sqrt(v94 * v94 - v95 * v95);
      v141 = v77;
      v147 = v76;
      v166 = v92;
      v170 = v93;
      v96 = __sincos_stret(v128 * a1);
      v122 = vmulq_n_f64(vaddq_f64(v147, vmulq_n_f64(v166, v17 * 0.5)), 1.0 / v128);
      v148 = vmulq_n_f64(vaddq_f64(v141, vmulq_n_f64(v170, v17 * 0.5)), 1.0 / v128);
      v111 = vaddq_f64(vmulq_n_f64(v170, v96.__cosval), vmulq_n_f64(v148, v96.__sinval));
      v115 = vaddq_f64(vmulq_n_f64(v166, v96.__cosval), vmulq_n_f64(v122, v96.__sinval));
      v97 = exp(-(v17 * 0.5 * a1));
      v98 = vmulq_n_f64(v111, v97);
      v99 = vmulq_n_f64(v115, v97);
      v76 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v166, -v96.__sinval), v128), vmulq_n_f64(vmulq_n_f64(v122, v96.__cosval), v128)), v97), vmulq_n_f64(vmulq_n_f64(v115, -(v17 * 0.5)), v97));
      v77 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v170, -v96.__sinval), v128), vmulq_n_f64(vmulq_n_f64(v148, v96.__cosval), v128)), v97), vmulq_n_f64(vmulq_n_f64(v111, -(v17 * 0.5)), v97));
    }

    v72 = v135;
    v71 = v139;
    v11 = vaddq_f64(v135, v99);
    v75 = vaddq_f64(v139, v98);
    v74 = v164;
    v73 = v157;
  }

  *(v1 + 240) = v11;
  *(v1 + 256) = v75;
  *(v1 + 208) = v76;
  *(v1 + 224) = v77;
  *(v1 + 272) = v72;
  *(v1 + 288) = v71;
  *(v1 + 304) = v74;
  *(v1 + 320) = v73;
  return v11.f64[0];
}

BOOL sub_188CB4F60()
{
  v1 = v0[12];
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  v3 = vnegq_f64(v2);
  v4 = vdupq_n_s64(0x7FF0000000000000uLL);
  *&v2.f64[0] = vmovn_s64(vcgeq_s64(vandq_s8(v1, v3), v4));
  if ((LODWORD(v2.f64[0]) | HIDWORD(v2.f64[0])))
  {
    return 1;
  }

  v5 = v0[11];
  v6 = vmovn_s64(vcgeq_s64(vandq_s8(v5, v3), v4));
  if ((v6.i32[0] | v6.i32[1]))
  {
    return 1;
  }

  v7 = vsubq_f64(v0[10], v1);
  v8 = vmulq_n_f64(v5, v0[9].f64[1]);
  v9 = vaddq_f64(vmulq_f64(v7, v7), vmulq_f64(v8, v8));
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  *&v7.f64[0] = vmovn_s64(vcgeq_s64(vandq_s8(v9, vnegq_f64(v7)), vdupq_n_s64(0x7FF0000000000000uLL)));
  if ((LODWORD(v7.f64[0]) | HIDWORD(v7.f64[0])))
  {
    return 1;
  }

  v19 = v9;
  objc_opt_self();
  v11 = +[UIScreen _mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = 1.0 / v13;
  v15 = +[UIScreen _mainScreen];
  [v15 scale];
  v17 = v16;

  v18 = v14 * (1.0 / v17);
  return *v19.i64 <= v18 && *&v19.i64[1] <= v18;
}

BOOL sub_188CB50C8()
{
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  v2 = vnegq_f64(v1);
  v3 = vdupq_n_s64(0x7FF0000000000000uLL);
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgeq_s64(vandq_s8(*(v0 + 240), v2), v3), vcgeq_s64(vandq_s8(*(v0 + 256), v2), v3)))))
  {
    return 1;
  }

  v18 = *(v0 + 240);
  v19 = *(v0 + 256);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  if (sub_188AABCA0(v4, v5, v6, v7))
  {
    return 1;
  }

  v8 = *(v0 + 168);
  v9 = v4 * v8 * (v4 * v8);
  v10 = v5 * v8 * (v5 * v8);
  v11 = v6 * v8 * (v6 * v8);
  v12 = v7 * v8 * (v7 * v8);
  v13 = (*(v0 + 176) - *&v18) * (*(v0 + 176) - *&v18) + v9;
  v14 = (*(v0 + 184) - *(&v18 + 1)) * (*(v0 + 184) - *(&v18 + 1)) + v10;
  v15 = (*(v0 + 192) - *&v19) * (*(v0 + 192) - *&v19) + v11;
  v16 = (*(v0 + 200) - *(&v19 + 1)) * (*(v0 + 200) - *(&v19 + 1)) + v12;
  if (sub_188AABCA0(v13, v14, v15, v16))
  {
    return 1;
  }

  result = 0;
  if (fabs(v13) <= 0.0001 && fabs(v14) <= 0.0001 && fabs(v15) <= 0.0001)
  {
    return fabs(v16) <= 0.0001;
  }

  return result;
}

__n128 sub_188CB5214(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  if (v2 > 0.0)
  {
    v358 = v2;
    v5 = *(v1 + 211);
    if (v5)
    {
      v6 = *(v1 + 272);
      *(v1 + 496) = *(v1 + 256);
      *(v1 + 512) = v6;
      v7 = *(v1 + 288);
      v8 = *(v1 + 240);
      *(v1 + 464) = *(v1 + 224);
      *(v1 + 480) = v8;
      *(v1 + 528) = v7;
      *(v1 + 544) = 0u;
      *(v1 + 560) = 0u;
      *(v1 + 576) = 0u;
      *(v1 + 592) = 0u;
      *(v1 + 608) = 0u;
    }

    v9 = *(v1 + 80);
    v10 = *(v1 + 88);
    v11 = *(v1 + 96);
    v12 = *(v1 + 104);
    v13 = *(v1 + 209);
    v14 = *(v1 + 210);
    if (v13)
    {
      if ((*(v1 + 210) & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_12:
      v20 = *(v1 + 32);
      v21 = *(v1 + 40);
LABEL_54:
      v76 = *(v1 + 256);
      v75 = *(v1 + 272);
      v77 = *(v1 + 240);
      *(v1 + 144) = v76;
      *(v1 + 160) = v75;
      v78 = *(v1 + 272);
      *(v1 + 176) = *(v1 + 288);
      v79 = *(v1 + 240);
      v80 = *(v1 + 224);
      *(v1 + 112) = v80;
      *(v1 + 128) = v79;
      v81 = *(v1 + 480);
      v82 = *(v1 + 512);
      v83 = *(v1 + 528);
      v367 = *(v1 + 496);
      v368 = v82;
      v369 = v83;
      v84 = *(v1 + 448);
      v365 = *(v1 + 464);
      v366 = v81;
      v310 = *(v1 + 544);
      v312 = *(v1 + 560);
      v320 = *(v1 + 592);
      v325 = *(v1 + 576);
      v314 = *(v1 + 608);
      v85 = *(v1 + 432);
      v362 = *(v1 + 416);
      v363 = v85;
      v364 = v84;
      v86 = *(v1 + 400);
      v360 = *(v1 + 384);
      v361 = v86;
      v87 = *(v1 + 304);
      v509[4] = *(v1 + 288);
      v88 = *(v1 + 336);
      v329 = v87;
      v332 = *(v1 + 320);
      v509[3] = v78;
      v509[2] = v76;
      v337 = *(v1 + 352);
      v346 = *(v1 + 368);
      v353 = v88;
      v509[0] = v80;
      v509[1] = v77;
      if ((v5 & 1) != 0 || (v90 = *(v1 + 192), v89 = *(v1 + 200), v91 = *(v1 + 512), v565[2] = *(v1 + 496), v565[3] = v91, v565[4] = *(v1 + 528), v92 = *(v1 + 480), v565[0] = *(v1 + 464), v565[1] = v92, sub_188D22388(v565, v509)) && (memset(v564, 0, sizeof(v564)), v563[0] = v310, v563[1] = v312, v563[2] = v325, v563[3] = v320, v563[4] = v314, sub_188D22388(v563, v564)))
      {
LABEL_64:
        v451[2] = v367;
        v451[3] = v368;
        v451[4] = v369;
        v451[1] = v366;
        v451[0] = v365;
        v507[2] = v362;
        v507[3] = v363;
        v507[4] = v364;
        v507[1] = v361;
        v507[0] = v360;
        if (sub_188D22388(v507, v451))
        {
          memset(v506, 0, sizeof(v506));
          v505[0] = v329;
          v505[1] = v332;
          v505[2] = v353;
          v505[3] = v337;
          v505[4] = v346;
          if (sub_188D22388(v505, v506))
          {
            v110 = v346;
            v111 = v353;
            v113 = v332;
            v112 = v337;
            v114 = v329;
LABEL_74:
            v132 = v362;
            v133 = v363;
            v134 = v360;
            *(v1 + 400) = v361;
            *(v1 + 416) = v132;
            v136 = v364;
            v135 = v365;
            *(v1 + 432) = v133;
            *(v1 + 448) = v136;
            *(v1 + 304) = v114;
            *(v1 + 320) = v113;
            *(v1 + 336) = v111;
            *(v1 + 352) = v112;
            *(v1 + 368) = v110;
            *(v1 + 384) = v134;
            v137 = v366;
            v138 = v368;
            v139 = v369;
            *(v1 + 496) = v367;
            *(v1 + 512) = v138;
            *(v1 + 464) = v135;
            *(v1 + 480) = v137;
            *(v1 + 528) = v139;
            *(v1 + 544) = v310;
            *(v1 + 560) = v312;
            *(v1 + 576) = v325;
            *(v1 + 592) = v320;
            *(v1 + 608) = v314;
            v15 = &v360;
            goto LABEL_75;
          }
        }

        v504[2] = v362;
        v504[3] = v363;
        v504[4] = v364;
        v504[1] = v361;
        v504[0] = v360;
        sub_188C564AC(v504, v451, &v370);
        v452[0] = v329;
        v452[1] = v332;
        v452[2] = v353;
        v452[3] = v337;
        v452[4] = v346;
        v115 = sqrt(v20);
        v116 = v21 * 0.5;
        v354 = v21 * 0.5;
        if (v21 * 0.5 >= v115)
        {
          if (v115 >= v116)
          {
            v342 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v371.f32), v116)), vmulq_n_f64(vcvt_hight_f64_f32(v371), v116));
            v350 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v370.f32), v116)), vmulq_n_f64(vcvt_hight_f64_f32(v370), v116));
            v499 = v350;
            v500 = v342;
            v277 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v373.f32), v116)), vmulq_n_f64(vcvt_hight_f64_f32(v373), v116));
            v287 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v372.f32), v116)), vmulq_n_f64(vcvt_hight_f64_f32(v372), v116));
            v501 = v287;
            v502 = v277;
            v267 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v374.f32), v116)), vmulq_n_f64(vcvt_hight_f64_f32(v374), v116));
            v503 = v267;
            sub_188CB8D88(&v499, v452, &v400);
            v494 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v400.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v400), v358));
            v495 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v401.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v401), v358));
            v496 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v402.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v402), v358));
            v497 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v403.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v403), v358));
            v498 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v404.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v404), v358));
            sub_188CB8D88(&v370, &v494, &v405);
            v257 = -v354;
            v356 = exp(-(v354 * v358));
            v330 = vmulq_n_f64(vcvt_hight_f64_f32(v406), v356);
            v333 = vmulq_n_f64(vcvtq_f64_f32(*v405.f32), v356);
            v307 = vmulq_n_f64(vcvtq_f64_f32(*v406.f32), v356);
            v309 = vmulq_n_f64(vcvt_hight_f64_f32(v405), v356);
            v303 = vmulq_n_f64(vcvtq_f64_f32(*v407.f32), v356);
            v305 = vmulq_n_f64(vcvt_hight_f64_f32(v407), v356);
            v299 = vmulq_n_f64(vcvtq_f64_f32(*v408.f32), v356);
            v301 = vmulq_n_f64(vcvt_hight_f64_f32(v408), v356);
            v489 = v350;
            v490 = v342;
            v292 = vmulq_n_f64(vcvtq_f64_f32(*v409.f32), v356);
            v296 = vmulq_n_f64(vcvt_hight_f64_f32(v409), v356);
            v491 = v287;
            v492 = v277;
            v493 = v267;
            sub_188CB8D88(&v489, v452, &v453);
            v484 = v350;
            v485 = v342;
            v486 = v287;
            v487 = v277;
            v488 = v267;
            sub_188CB8D88(&v484, v452, &v458);
            v479 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v458.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v458), v358));
            v480 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v459.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v459), v358));
            v481 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v460.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v460), v358));
            v482 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v461.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v461), v358));
            v483 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v462.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v462), v358));
            sub_188CB8D88(&v370, &v479, &v463);
            v469 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v453.f32), v356)), vmulq_n_f64(vcvt_hight_f64_f32(v453), v356));
            v470 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v454.f32), v356)), vmulq_n_f64(vcvt_hight_f64_f32(v454), v356));
            v471 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v455.f32), v356)), vmulq_n_f64(vcvt_hight_f64_f32(v455), v356));
            v472 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v456.f32), v356)), vmulq_n_f64(vcvt_hight_f64_f32(v456), v356));
            v473 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v457.f32), v356)), vmulq_n_f64(vcvt_hight_f64_f32(v457), v356));
            v474 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v463.f32), v257))), v356)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v463), v257))), v356));
            v475 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v464.f32), v257))), v356)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v464), v257))), v356));
            v476 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v465.f32), v257))), v356)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v465), v257))), v356));
            v477 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v466.f32), v257))), v356)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v466), v257))), v356));
            v478 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v467.f32), v257))), v356)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v467), v257))), v356));
            v126 = v468;
            v127 = v468;
            v128 = &v469;
            v129 = &v474;
            goto LABEL_73;
          }

          v249 = sqrt(v116 * v116 - v115 * v115);
          v205 = cosh(v249 * v358);
          v245 = vcvtq_f64_f32(*v370.f32);
          v348 = vcvt_f32_f64(vmulq_n_f64(v245, v354));
          v225 = vcvtq_f64_f32(*&v370.u32[2]);
          v297 = vmulq_n_f64(v225, v354);
          *v499.f32 = v348;
          *&v499.u32[2] = vcvt_f32_f64(v297);
          v241 = vcvtq_f64_f32(*v371.f32);
          v340 = vcvt_f32_f64(vmulq_n_f64(v241, v354));
          v221 = vcvtq_f64_f32(*&v371.u32[2]);
          v293 = vmulq_n_f64(v221, v354);
          *v500.f32 = v340;
          *&v500.u32[2] = vcvt_f32_f64(v293);
          v237 = vcvtq_f64_f32(*v372.f32);
          v285 = vcvt_f32_f64(vmulq_n_f64(v237, v354));
          v217 = vcvtq_f64_f32(*&v372.u32[2]);
          v155 = vmulq_n_f64(v217, v354);
          *v501.f32 = v285;
          *&v501.u32[2] = vcvt_f32_f64(v155);
          v233 = vcvtq_f64_f32(*v373.f32);
          v275 = vcvt_f32_f64(vmulq_n_f64(v233, v354));
          v213 = vcvtq_f64_f32(*&v373.u32[2]);
          v151 = vmulq_n_f64(v213, v354);
          *v502.f32 = v275;
          *&v502.u32[2] = vcvt_f32_f64(v151);
          v229 = vcvtq_f64_f32(*v374.f32);
          v265 = vcvt_f32_f64(vmulq_n_f64(v229, v354));
          v209 = vcvtq_f64_f32(*&v374.u32[2]);
          v147 = vmulq_n_f64(v209, v354);
          *v503.f32 = v265;
          *&v503.u32[2] = vcvt_f32_f64(v147);
          sub_188CB8D88(&v499, v452, &v375);
          v256 = 1.0 / v249;
          v124 = sinh(v249 * v358);
          v191 = vcvt_f32_f64(vmulq_n_f64(v245, v205));
          v195 = vmulq_n_f64(v225, v205);
          *v489.f32 = v191;
          *&v489.u32[2] = vcvt_f32_f64(v195);
          v183 = vcvt_f32_f64(vmulq_n_f64(v241, v205));
          v187 = vmulq_n_f64(v221, v205);
          *v490.f32 = v183;
          *&v490.u32[2] = vcvt_f32_f64(v187);
          v175 = vcvt_f32_f64(vmulq_n_f64(v237, v205));
          v179 = vmulq_n_f64(v217, v205);
          *v491.f32 = v175;
          *&v491.u32[2] = vcvt_f32_f64(v179);
          v167 = vcvt_f32_f64(vmulq_n_f64(v233, v205));
          v171 = vmulq_n_f64(v213, v205);
          *v492.f32 = v167;
          *&v492.u32[2] = vcvt_f32_f64(v171);
          v159 = vcvt_f32_f64(vmulq_n_f64(v229, v205));
          v163 = vmulq_n_f64(v209, v205);
          *v493.f32 = v159;
          *&v493.u32[2] = vcvt_f32_f64(v163);
          v494 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v375.f32), v256))), v124)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v375), v256))), v124));
          v495 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v376.f32), v256))), v124)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v376), v256))), v124));
          v496 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v377.f32), v256))), v124)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v377), v256))), v124));
          v497 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v378.f32), v256))), v124)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v378), v256))), v124));
          v201 = v124;
          v498 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v379.f32), v256))), v124)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v379), v256))), v124));
          sub_188CB8D88(&v489, &v494, &v380);
          v197 = -v354;
          v125 = exp(-(v354 * v358));
          v330 = vmulq_n_f64(vcvt_hight_f64_f32(v381), v125);
          v333 = vmulq_n_f64(vcvtq_f64_f32(*v380.f32), v125);
          v307 = vmulq_n_f64(vcvtq_f64_f32(*v381.f32), v125);
          v309 = vmulq_n_f64(vcvt_hight_f64_f32(v380), v125);
          v303 = vmulq_n_f64(vcvtq_f64_f32(*v382.f32), v125);
          v305 = vmulq_n_f64(vcvt_hight_f64_f32(v382), v125);
          v299 = vmulq_n_f64(vcvtq_f64_f32(*v383.f32), v125);
          v301 = vmulq_n_f64(vcvt_hight_f64_f32(v383), v125);
          v341 = vcvt_hight_f32_f64(v340, v293);
          v349 = vcvt_hight_f32_f64(v348, v297);
          v484 = v349;
          v485 = v341;
          v276 = vcvt_hight_f32_f64(v275, v151);
          v286 = vcvt_hight_f32_f64(v285, v155);
          v486 = v286;
          v487 = v276;
          v266 = vcvt_hight_f32_f64(v265, v147);
          v488 = v266;
          v359 = v125;
          v292 = vmulq_n_f64(vcvtq_f64_f32(*v384.f32), v125);
          v296 = vmulq_n_f64(vcvt_hight_f64_f32(v384), v125);
          sub_188CB8D88(&v484, v452, &v385);
          v474 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v245, v201))), v249)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v225, v201))), v249));
          v475 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v241, v201))), v249)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v221, v201))), v249));
          v476 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v237, v201))), v249)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v217, v201))), v249));
          v477 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v233, v201))), v249)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v213, v201))), v249));
          v478 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v229, v201))), v249)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v209, v201))), v249));
          v479 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v385.f32), v256))), v205))), v249)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v385), v256))), v205))), v249));
          v480 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v386.f32), v256))), v205))), v249)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v386), v256))), v205))), v249));
          v481 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v387.f32), v256))), v205))), v249)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v387), v256))), v205))), v249));
          v482 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v388.f32), v256))), v205))), v249)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v388), v256))), v205))), v249));
          v483 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v389.f32), v256))), v205))), v249)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v389), v256))), v205))), v249));
          sub_188CB8D88(&v474, &v479, &v390);
          v469 = v349;
          v470 = v341;
          v471 = v286;
          v472 = v276;
          v473 = v266;
          sub_188CB8D88(&v469, v452, &v395);
          v463 = vcvt_hight_f32_f64(v191, v195);
          v464 = vcvt_hight_f32_f64(v183, v187);
          v465 = vcvt_hight_f32_f64(v175, v179);
          v466 = vcvt_hight_f32_f64(v167, v171);
          v467 = vcvt_hight_f32_f64(v159, v163);
          v119 = v396;
          v120 = 1.0 / v249;
          v121 = vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v395.f32), 1.0 / v249)));
          v122 = vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v395), 1.0 / v249)));
          v123 = v201;
        }

        else
        {
          v248 = sqrt(v115 * v115 - v116 * v116);
          v117 = __sincos_stret(v248 * v358);
          sinval = v117.__sinval;
          cosval = v117.__cosval;
          v244 = vcvtq_f64_f32(*v370.f32);
          v338 = vcvt_f32_f64(vmulq_n_f64(v244, v354));
          v224 = vcvtq_f64_f32(*&v370.u32[2]);
          v291 = vmulq_n_f64(v224, v354);
          *v499.f32 = v338;
          *&v499.u32[2] = vcvt_f32_f64(v291);
          v240 = vcvtq_f64_f32(*v371.f32);
          v283 = vcvt_f32_f64(vmulq_n_f64(v240, v354));
          v220 = vcvtq_f64_f32(*&v371.u32[2]);
          v154 = vmulq_n_f64(v220, v354);
          *v500.f32 = v283;
          *&v500.u32[2] = vcvt_f32_f64(v154);
          v236 = vcvtq_f64_f32(*v372.f32);
          v273 = vcvt_f32_f64(vmulq_n_f64(v236, v354));
          v216 = vcvtq_f64_f32(*&v372.u32[2]);
          v150 = vmulq_n_f64(v216, v354);
          *v501.f32 = v273;
          *&v501.u32[2] = vcvt_f32_f64(v150);
          v232 = vcvtq_f64_f32(*v373.f32);
          v263 = vcvt_f32_f64(vmulq_n_f64(v232, v354));
          v212 = vcvtq_f64_f32(*&v373.u32[2]);
          v146 = vmulq_n_f64(v212, v354);
          *v502.f32 = v263;
          *&v502.u32[2] = vcvt_f32_f64(v146);
          v228 = vcvtq_f64_f32(*v374.f32);
          v254 = vcvt_f32_f64(vmulq_n_f64(v228, v354));
          v208 = vcvtq_f64_f32(*&v374.u32[2]);
          v143 = vmulq_n_f64(v208, v354);
          *v503.f32 = v254;
          *&v503.u32[2] = vcvt_f32_f64(v143);
          sub_188CB8D88(&v499, v452, &v375);
          v190 = vcvt_f32_f64(vmulq_n_f64(v244, v117.__cosval));
          v194 = vmulq_n_f64(v224, v117.__cosval);
          *v489.f32 = v190;
          *&v489.u32[2] = vcvt_f32_f64(v194);
          v182 = vcvt_f32_f64(vmulq_n_f64(v240, v117.__cosval));
          v186 = vmulq_n_f64(v220, v117.__cosval);
          *v490.f32 = v182;
          *&v490.u32[2] = vcvt_f32_f64(v186);
          v174 = vcvt_f32_f64(vmulq_n_f64(v236, v117.__cosval));
          v178 = vmulq_n_f64(v216, v117.__cosval);
          *v491.f32 = v174;
          *&v491.u32[2] = vcvt_f32_f64(v178);
          v166 = vcvt_f32_f64(vmulq_n_f64(v232, v117.__cosval));
          v170 = vmulq_n_f64(v212, v117.__cosval);
          *v492.f32 = v166;
          *&v492.u32[2] = vcvt_f32_f64(v170);
          v158 = vcvt_f32_f64(vmulq_n_f64(v228, v117.__cosval));
          v162 = vmulq_n_f64(v208, v117.__cosval);
          *v493.f32 = v158;
          *&v493.u32[2] = vcvt_f32_f64(v162);
          v494 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v375.f32), 1.0 / v248))), sinval)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v375), 1.0 / v248))), sinval));
          v495 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v376.f32), 1.0 / v248))), sinval)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v376), 1.0 / v248))), sinval));
          v496 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v377.f32), 1.0 / v248))), sinval)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v377), 1.0 / v248))), sinval));
          v497 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v378.f32), 1.0 / v248))), sinval)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v378), 1.0 / v248))), sinval));
          v200 = 1.0 / v248;
          v498 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v379.f32), 1.0 / v248))), sinval)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v379), 1.0 / v248))), sinval));
          sub_188CB8D88(&v489, &v494, &v380);
          v197 = -v354;
          v118 = exp(-(v354 * v358));
          v330 = vmulq_n_f64(vcvt_hight_f64_f32(v381), v118);
          v333 = vmulq_n_f64(vcvtq_f64_f32(*v380.f32), v118);
          v307 = vmulq_n_f64(vcvtq_f64_f32(*v381.f32), v118);
          v309 = vmulq_n_f64(vcvt_hight_f64_f32(v380), v118);
          v303 = vmulq_n_f64(vcvtq_f64_f32(*v382.f32), v118);
          v305 = vmulq_n_f64(vcvt_hight_f64_f32(v382), v118);
          v299 = vmulq_n_f64(vcvtq_f64_f32(*v383.f32), v118);
          v301 = vmulq_n_f64(vcvt_hight_f64_f32(v383), v118);
          v359 = v118;
          v339 = vcvt_hight_f32_f64(v338, v291);
          v484 = v339;
          v485 = vcvt_hight_f32_f64(v283, v154);
          v292 = vmulq_n_f64(vcvtq_f64_f32(*v384.f32), v118);
          v296 = vmulq_n_f64(vcvt_hight_f64_f32(v384), v118);
          v274 = vcvt_hight_f32_f64(v273, v150);
          v284 = v485;
          v264 = vcvt_hight_f32_f64(v263, v146);
          v486 = v274;
          v487 = v264;
          v255 = vcvt_hight_f32_f64(v254, v143);
          v488 = v255;
          v355 = -v117.__sinval;
          sub_188CB8D88(&v484, v452, &v385);
          v474 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v244, v355))), v248)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v224, v355))), v248));
          v475 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v240, v355))), v248)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v220, v355))), v248));
          v476 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v236, v355))), v248)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v216, v355))), v248));
          v477 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v232, v355))), v248)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v212, v355))), v248));
          v478 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v228, v355))), v248)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v208, v355))), v248));
          v479 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v385.f32), v200))), cosval))), v248)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v385), v200))), cosval))), v248));
          v480 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v386.f32), v200))), cosval))), v248)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v386), v200))), cosval))), v248));
          v481 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v387.f32), v200))), cosval))), v248)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v387), v200))), cosval))), v248));
          v482 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v388.f32), v200))), cosval))), v248)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v388), v200))), cosval))), v248));
          v483 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v389.f32), v200))), cosval))), v248)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v389), v200))), cosval))), v248));
          sub_188CB8D88(&v474, &v479, &v390);
          v469 = v339;
          v470 = v284;
          v471 = v274;
          v472 = v264;
          v473 = v255;
          sub_188CB8D88(&v469, v452, &v395);
          v463 = vcvt_hight_f32_f64(v190, v194);
          v464 = vcvt_hight_f32_f64(v182, v186);
          v465 = vcvt_hight_f32_f64(v174, v178);
          v466 = vcvt_hight_f32_f64(v166, v170);
          v467 = vcvt_hight_f32_f64(v158, v162);
          v119 = v396;
          v120 = 1.0 / v248;
          v121 = vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v395.f32), 1.0 / v248)));
          v122 = vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v395), 1.0 / v248)));
          v123 = v117.__sinval;
        }

        v468[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v121, v123)), vmulq_n_f64(v122, v123));
        v468[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v119.f32), v120))), v123)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v119), v120))), v123));
        v468[2] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v397.f32), v120))), v123)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v397), v120))), v123));
        v468[3] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v398.f32), v120))), v123)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v398), v120))), v123));
        v468[4] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v399.f32), v120))), v123)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v399), v120))), v123));
        sub_188CB8D88(&v463, v468, &v400);
        v458 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v400.f32), v197))), v359)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v400), v197))), v359));
        v459 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v401.f32), v197))), v359)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v401), v197))), v359));
        v460 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v402.f32), v197))), v359)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v402), v197))), v359));
        v461 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v403.f32), v197))), v359)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v403), v197))), v359));
        v462 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v404.f32), v197))), v359)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v404), v197))), v359));
        v453 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v390.f32), v359)), vmulq_n_f64(vcvt_hight_f64_f32(v390), v359));
        v454 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v391.f32), v359)), vmulq_n_f64(vcvt_hight_f64_f32(v391), v359));
        v455 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v392.f32), v359)), vmulq_n_f64(vcvt_hight_f64_f32(v392), v359));
        v456 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v393.f32), v359)), vmulq_n_f64(vcvt_hight_f64_f32(v393), v359));
        v457 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v394.f32), v359)), vmulq_n_f64(vcvt_hight_f64_f32(v394), v359));
        v126 = &v405;
        v127 = &v405;
        v128 = &v453;
        v129 = &v458;
LABEL_73:
        sub_188CB8D88(v128, v129, v127);
        v343 = v126[3];
        v351 = v126[4];
        v357 = v126[2];
        v130 = vcvt_hight_f32_f64(vcvt_f32_f64(v307), v330);
        v131 = vcvt_f32_f64(v333);
        v331 = *v126;
        v334 = v126[1];
        v450[0] = vcvt_hight_f32_f64(v131, v309);
        v450[1] = v130;
        v450[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v303), v305);
        v450[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v299), v301);
        v450[4] = vcvt_hight_f32_f64(vcvt_f32_f64(v292), v296);
        sub_188CB8D88(v450, v451, &v360);
        v114 = v331;
        v113 = v334;
        v112 = v343;
        v110 = v351;
        v111 = v357;
        goto LABEL_74;
      }

      v562[2] = v367;
      v562[3] = v368;
      v562[4] = v369;
      v562[1] = v366;
      v562[0] = v365;
      sub_188C564AC(v562, v509, &v410);
      v510[0] = v310;
      v510[1] = v312;
      v510[2] = v325;
      v510[3] = v320;
      v510[4] = v314;
      v93 = sqrt(v90);
      v94 = v89 * 0.5;
      v326 = v89 * 0.5;
      if (v89 * 0.5 >= v93)
      {
        if (v93 >= v94)
        {
          v319 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v411.f32), v94)), vmulq_n_f64(vcvt_hight_f64_f32(v411), v94));
          v324 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v410.f32), v94)), vmulq_n_f64(vcvt_hight_f64_f32(v410), v94));
          v557 = v324;
          v558 = v319;
          v272 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v413.f32), v94)), vmulq_n_f64(vcvt_hight_f64_f32(v413), v94));
          v282 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v412.f32), v94)), vmulq_n_f64(vcvt_hight_f64_f32(v412), v94));
          v559 = v282;
          v560 = v272;
          v262 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v414.f32), v94)), vmulq_n_f64(vcvt_hight_f64_f32(v414), v94));
          v561 = v262;
          sub_188CB8D88(&v557, v510, &v440);
          v552 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v440.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v440), v358));
          v553 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v441.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v441), v358));
          v554 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v442.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v442), v358));
          v555 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v443.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v443), v358));
          v556 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v444.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v444), v358));
          sub_188CB8D88(&v410, &v552, &v445);
          v253 = -v326;
          v328 = exp(-(v326 * v358));
          v313 = vmulq_n_f64(vcvtq_f64_f32(*v445.f32), v328);
          v308 = vmulq_n_f64(vcvt_hight_f64_f32(v445), v328);
          v311 = vmulq_n_f64(vcvt_hight_f64_f32(v446), v328);
          v304 = vmulq_n_f64(vcvt_hight_f64_f32(v447), v328);
          v306 = vmulq_n_f64(vcvtq_f64_f32(*v446.f32), v328);
          v300 = vmulq_n_f64(vcvt_hight_f64_f32(v448), v328);
          v302 = vmulq_n_f64(vcvtq_f64_f32(*v447.f32), v328);
          v294 = vmulq_n_f64(vcvt_hight_f64_f32(v449), v328);
          v298 = vmulq_n_f64(vcvtq_f64_f32(*v448.f32), v328);
          v547 = v324;
          v548 = v319;
          v289 = vmulq_n_f64(vcvtq_f64_f32(*v449.f32), v328);
          v549 = v282;
          v550 = v272;
          v551 = v262;
          sub_188CB8D88(&v547, v510, &v511);
          v542 = v324;
          v543 = v319;
          v544 = v282;
          v545 = v272;
          v546 = v262;
          sub_188CB8D88(&v542, v510, &v516);
          v537 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v516.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v516), v358));
          v538 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v517.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v517), v358));
          v539 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v518.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v518), v358));
          v540 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v519.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v519), v358));
          v541 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v520.f32), v358)), vmulq_n_f64(vcvt_hight_f64_f32(v520), v358));
          sub_188CB8D88(&v410, &v537, &v521);
          v527 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v511.f32), v328)), vmulq_n_f64(vcvt_hight_f64_f32(v511), v328));
          v528 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v512.f32), v328)), vmulq_n_f64(vcvt_hight_f64_f32(v512), v328));
          v529 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v513.f32), v328)), vmulq_n_f64(vcvt_hight_f64_f32(v513), v328));
          v530 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v514.f32), v328)), vmulq_n_f64(vcvt_hight_f64_f32(v514), v328));
          v531 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v515.f32), v328)), vmulq_n_f64(vcvt_hight_f64_f32(v515), v328));
          v532 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v521.f32), v253))), v328)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v521), v253))), v328));
          v533 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v522.f32), v253))), v328)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v522), v253))), v328));
          v534 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v523.f32), v253))), v328)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v523), v253))), v328));
          v535 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v524.f32), v253))), v328)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v524), v253))), v328));
          v536 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v525.f32), v253))), v328)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v525), v253))), v328));
          v104 = v526;
          v105 = v526;
          v106 = &v527;
          v107 = &v532;
          goto LABEL_63;
        }

        v247 = sqrt(v94 * v94 - v93 * v93);
        v203 = cosh(v247 * v358);
        v243 = vcvtq_f64_f32(*v410.f32);
        v322 = vcvt_f32_f64(vmulq_n_f64(v243, v326));
        v223 = vcvtq_f64_f32(*&v410.u32[2]);
        v295 = vmulq_n_f64(v223, v326);
        *v557.f32 = v322;
        *&v557.u32[2] = vcvt_f32_f64(v295);
        v239 = vcvtq_f64_f32(*v411.f32);
        v317 = vcvt_f32_f64(vmulq_n_f64(v239, v326));
        v219 = vcvtq_f64_f32(*&v411.u32[2]);
        v290 = vmulq_n_f64(v219, v326);
        *v558.f32 = v317;
        *&v558.u32[2] = vcvt_f32_f64(v290);
        v235 = vcvtq_f64_f32(*v412.f32);
        v280 = vcvt_f32_f64(vmulq_n_f64(v235, v326));
        v215 = vcvtq_f64_f32(*&v412.u32[2]);
        v153 = vmulq_n_f64(v215, v326);
        *v559.f32 = v280;
        *&v559.u32[2] = vcvt_f32_f64(v153);
        v231 = vcvtq_f64_f32(*v413.f32);
        v270 = vcvt_f32_f64(vmulq_n_f64(v231, v326));
        v211 = vcvtq_f64_f32(*&v413.u32[2]);
        v149 = vmulq_n_f64(v211, v326);
        *v560.f32 = v270;
        *&v560.u32[2] = vcvt_f32_f64(v149);
        v227 = vcvtq_f64_f32(*v414.f32);
        v260 = vcvt_f32_f64(vmulq_n_f64(v227, v326));
        v207 = vcvtq_f64_f32(*&v414.u32[2]);
        v145 = vmulq_n_f64(v207, v326);
        *v561.f32 = v260;
        *&v561.u32[2] = vcvt_f32_f64(v145);
        sub_188CB8D88(&v557, v510, &v415);
        v252 = 1.0 / v247;
        v102 = sinh(v247 * v358);
        v189 = vcvt_f32_f64(vmulq_n_f64(v243, v203));
        v193 = vmulq_n_f64(v223, v203);
        *v547.f32 = v189;
        *&v547.u32[2] = vcvt_f32_f64(v193);
        v181 = vcvt_f32_f64(vmulq_n_f64(v239, v203));
        v185 = vmulq_n_f64(v219, v203);
        *v548.f32 = v181;
        *&v548.u32[2] = vcvt_f32_f64(v185);
        v173 = vcvt_f32_f64(vmulq_n_f64(v235, v203));
        v177 = vmulq_n_f64(v215, v203);
        *v549.f32 = v173;
        *&v549.u32[2] = vcvt_f32_f64(v177);
        v165 = vcvt_f32_f64(vmulq_n_f64(v231, v203));
        v169 = vmulq_n_f64(v211, v203);
        *v550.f32 = v165;
        *&v550.u32[2] = vcvt_f32_f64(v169);
        v157 = vcvt_f32_f64(vmulq_n_f64(v227, v203));
        v161 = vmulq_n_f64(v207, v203);
        *v551.f32 = v157;
        *&v551.u32[2] = vcvt_f32_f64(v161);
        v552 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v415.f32), v252))), v102)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v415), v252))), v102));
        v553 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v416.f32), v252))), v102)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v416), v252))), v102));
        v554 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v417.f32), v252))), v102)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v417), v252))), v102));
        v555 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v418.f32), v252))), v102)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v418), v252))), v102));
        v199 = v102;
        v556 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v419.f32), v252))), v102)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v419), v252))), v102));
        sub_188CB8D88(&v547, &v552, &v420);
        v196 = -v326;
        v103 = exp(-(v326 * v358));
        v313 = vmulq_n_f64(vcvtq_f64_f32(*v420.f32), v103);
        v308 = vmulq_n_f64(vcvt_hight_f64_f32(v420), v103);
        v311 = vmulq_n_f64(vcvt_hight_f64_f32(v421), v103);
        v304 = vmulq_n_f64(vcvt_hight_f64_f32(v422), v103);
        v306 = vmulq_n_f64(vcvtq_f64_f32(*v421.f32), v103);
        v300 = vmulq_n_f64(vcvt_hight_f64_f32(v423), v103);
        v302 = vmulq_n_f64(vcvtq_f64_f32(*v422.f32), v103);
        v298 = vmulq_n_f64(vcvtq_f64_f32(*v423.f32), v103);
        v318 = vcvt_hight_f32_f64(v317, v290);
        v323 = vcvt_hight_f32_f64(v322, v295);
        v542 = v323;
        v543 = v318;
        v271 = vcvt_hight_f32_f64(v270, v149);
        v281 = vcvt_hight_f32_f64(v280, v153);
        v544 = v281;
        v545 = v271;
        v261 = vcvt_hight_f32_f64(v260, v145);
        v546 = v261;
        v327 = v103;
        v289 = vmulq_n_f64(vcvtq_f64_f32(*v424.f32), v103);
        v294 = vmulq_n_f64(vcvt_hight_f64_f32(v424), v103);
        sub_188CB8D88(&v542, v510, &v425);
        v532 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v243, v199))), v247)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v223, v199))), v247));
        v533 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v239, v199))), v247)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v219, v199))), v247));
        v534 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v235, v199))), v247)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v215, v199))), v247));
        v535 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v231, v199))), v247)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v211, v199))), v247));
        v536 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v227, v199))), v247)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v207, v199))), v247));
        v537 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v425.f32), v252))), v203))), v247)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v425), v252))), v203))), v247));
        v538 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v426.f32), v252))), v203))), v247)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v426), v252))), v203))), v247));
        v539 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v427.f32), v252))), v203))), v247)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v427), v252))), v203))), v247));
        v540 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v428.f32), v252))), v203))), v247)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v428), v252))), v203))), v247));
        v541 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v429.f32), v252))), v203))), v247)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v429), v252))), v203))), v247));
        sub_188CB8D88(&v532, &v537, &v430);
        v527 = v323;
        v528 = v318;
        v529 = v281;
        v530 = v271;
        v531 = v261;
        sub_188CB8D88(&v527, v510, &v435);
        v521 = vcvt_hight_f32_f64(v189, v193);
        v522 = vcvt_hight_f32_f64(v181, v185);
        v523 = vcvt_hight_f32_f64(v173, v177);
        v524 = vcvt_hight_f32_f64(v165, v169);
        v525 = vcvt_hight_f32_f64(v157, v161);
        v97 = v436;
        v98 = 1.0 / v247;
        v99 = vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v435.f32), 1.0 / v247)));
        v100 = vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v435), 1.0 / v247)));
        v101 = v199;
      }

      else
      {
        v246 = sqrt(v93 * v93 - v94 * v94);
        v95 = __sincos_stret(v246 * v358);
        v321 = v95.__sinval;
        v202 = v95.__cosval;
        v242 = vcvtq_f64_f32(*v410.f32);
        v315 = vcvt_f32_f64(vmulq_n_f64(v242, v326));
        v222 = vcvtq_f64_f32(*&v410.u32[2]);
        v288 = vmulq_n_f64(v222, v326);
        *v557.f32 = v315;
        *&v557.u32[2] = vcvt_f32_f64(v288);
        v238 = vcvtq_f64_f32(*v411.f32);
        v278 = vcvt_f32_f64(vmulq_n_f64(v238, v326));
        v218 = vcvtq_f64_f32(*&v411.u32[2]);
        v152 = vmulq_n_f64(v218, v326);
        *v558.f32 = v278;
        *&v558.u32[2] = vcvt_f32_f64(v152);
        v234 = vcvtq_f64_f32(*v412.f32);
        v268 = vcvt_f32_f64(vmulq_n_f64(v234, v326));
        v214 = vcvtq_f64_f32(*&v412.u32[2]);
        v148 = vmulq_n_f64(v214, v326);
        *v559.f32 = v268;
        *&v559.u32[2] = vcvt_f32_f64(v148);
        v230 = vcvtq_f64_f32(*v413.f32);
        v258 = vcvt_f32_f64(vmulq_n_f64(v230, v326));
        v210 = vcvtq_f64_f32(*&v413.u32[2]);
        v144 = vmulq_n_f64(v210, v326);
        *v560.f32 = v258;
        *&v560.u32[2] = vcvt_f32_f64(v144);
        v226 = vcvtq_f64_f32(*v414.f32);
        v250 = vcvt_f32_f64(vmulq_n_f64(v226, v326));
        v206 = vcvtq_f64_f32(*&v414.u32[2]);
        v142 = vmulq_n_f64(v206, v326);
        *v561.f32 = v250;
        *&v561.u32[2] = vcvt_f32_f64(v142);
        sub_188CB8D88(&v557, v510, &v415);
        v188 = vcvt_f32_f64(vmulq_n_f64(v242, v95.__cosval));
        v192 = vmulq_n_f64(v222, v95.__cosval);
        *v547.f32 = v188;
        *&v547.u32[2] = vcvt_f32_f64(v192);
        v180 = vcvt_f32_f64(vmulq_n_f64(v238, v95.__cosval));
        v184 = vmulq_n_f64(v218, v95.__cosval);
        *v548.f32 = v180;
        *&v548.u32[2] = vcvt_f32_f64(v184);
        v172 = vcvt_f32_f64(vmulq_n_f64(v234, v95.__cosval));
        v176 = vmulq_n_f64(v214, v95.__cosval);
        *v549.f32 = v172;
        *&v549.u32[2] = vcvt_f32_f64(v176);
        v164 = vcvt_f32_f64(vmulq_n_f64(v230, v95.__cosval));
        v168 = vmulq_n_f64(v210, v95.__cosval);
        *v550.f32 = v164;
        *&v550.u32[2] = vcvt_f32_f64(v168);
        v156 = vcvt_f32_f64(vmulq_n_f64(v226, v95.__cosval));
        v160 = vmulq_n_f64(v206, v95.__cosval);
        *v551.f32 = v156;
        *&v551.u32[2] = vcvt_f32_f64(v160);
        v552 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v415.f32), 1.0 / v246))), v321)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v415), 1.0 / v246))), v321));
        v553 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v416.f32), 1.0 / v246))), v321)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v416), 1.0 / v246))), v321));
        v554 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v417.f32), 1.0 / v246))), v321)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v417), 1.0 / v246))), v321));
        v555 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v418.f32), 1.0 / v246))), v321)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v418), 1.0 / v246))), v321));
        v198 = 1.0 / v246;
        v556 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v419.f32), 1.0 / v246))), v321)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v419), 1.0 / v246))), v321));
        sub_188CB8D88(&v547, &v552, &v420);
        v196 = -v326;
        v96 = exp(-(v326 * v358));
        v313 = vmulq_n_f64(vcvtq_f64_f32(*v420.f32), v96);
        v308 = vmulq_n_f64(vcvt_hight_f64_f32(v420), v96);
        v311 = vmulq_n_f64(vcvt_hight_f64_f32(v421), v96);
        v304 = vmulq_n_f64(vcvt_hight_f64_f32(v422), v96);
        v306 = vmulq_n_f64(vcvtq_f64_f32(*v421.f32), v96);
        v300 = vmulq_n_f64(vcvt_hight_f64_f32(v423), v96);
        v302 = vmulq_n_f64(vcvtq_f64_f32(*v422.f32), v96);
        v327 = v96;
        v294 = vmulq_n_f64(vcvt_hight_f64_f32(v424), v96);
        v298 = vmulq_n_f64(vcvtq_f64_f32(*v423.f32), v96);
        v316 = vcvt_hight_f32_f64(v315, v288);
        v542 = v316;
        v543 = vcvt_hight_f32_f64(v278, v152);
        v279 = v543;
        v289 = vmulq_n_f64(vcvtq_f64_f32(*v424.f32), v96);
        v259 = vcvt_hight_f32_f64(v258, v144);
        v269 = vcvt_hight_f32_f64(v268, v148);
        v544 = v269;
        v545 = v259;
        v251 = vcvt_hight_f32_f64(v250, v142);
        v546 = v251;
        v152.f64[0] = -v95.__sinval;
        sub_188CB8D88(&v542, v510, &v425);
        v532 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v242, v152.f64[0]))), v246)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v222, v152.f64[0]))), v246));
        v533 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v238, v152.f64[0]))), v246)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v218, v152.f64[0]))), v246));
        v534 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v234, v152.f64[0]))), v246)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v214, v152.f64[0]))), v246));
        v535 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v230, v152.f64[0]))), v246)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v210, v152.f64[0]))), v246));
        v536 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v226, v152.f64[0]))), v246)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v206, v152.f64[0]))), v246));
        v537 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v425.f32), v198))), v202))), v246)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v425), v198))), v202))), v246));
        v538 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v426.f32), v198))), v202))), v246)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v426), v198))), v202))), v246));
        v539 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v427.f32), v198))), v202))), v246)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v427), v198))), v202))), v246));
        v540 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v428.f32), v198))), v202))), v246)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v428), v198))), v202))), v246));
        v541 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v429.f32), v198))), v202))), v246)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v429), v198))), v202))), v246));
        sub_188CB8D88(&v532, &v537, &v430);
        v527 = v316;
        v528 = v279;
        v529 = v269;
        v530 = v259;
        v531 = v251;
        sub_188CB8D88(&v527, v510, &v435);
        v521 = vcvt_hight_f32_f64(v188, v192);
        v522 = vcvt_hight_f32_f64(v180, v184);
        v523 = vcvt_hight_f32_f64(v172, v176);
        v524 = vcvt_hight_f32_f64(v164, v168);
        v525 = vcvt_hight_f32_f64(v156, v160);
        v97 = v436;
        v98 = 1.0 / v246;
        v99 = vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v435.f32), 1.0 / v246)));
        v100 = vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v435), 1.0 / v246)));
        v101 = v95.__sinval;
      }

      v526[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v99, v101)), vmulq_n_f64(v100, v101));
      v526[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v97.f32), v98))), v101)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v97), v98))), v101));
      v526[2] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v437.f32), v98))), v101)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v437), v98))), v101));
      v526[3] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v438.f32), v98))), v101)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v438), v98))), v101));
      v526[4] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v439.f32), v98))), v101)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v439), v98))), v101));
      sub_188CB8D88(&v521, v526, &v440);
      v516 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v440.f32), v196))), v327)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v440), v196))), v327));
      v517 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v441.f32), v196))), v327)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v441), v196))), v327));
      v518 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v442.f32), v196))), v327)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v442), v196))), v327));
      v519 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v443.f32), v196))), v327)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v443), v196))), v327));
      v520 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v444.f32), v196))), v327)), vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vcvt_hight_f64_f32(v444), v196))), v327));
      v511 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v430.f32), v327)), vmulq_n_f64(vcvt_hight_f64_f32(v430), v327));
      v512 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v431.f32), v327)), vmulq_n_f64(vcvt_hight_f64_f32(v431), v327));
      v513 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v432.f32), v327)), vmulq_n_f64(vcvt_hight_f64_f32(v432), v327));
      v514 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v433.f32), v327)), vmulq_n_f64(vcvt_hight_f64_f32(v433), v327));
      v515 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v434.f32), v327)), vmulq_n_f64(vcvt_hight_f64_f32(v434), v327));
      v104 = &v445;
      v105 = &v445;
      v106 = &v511;
      v107 = &v516;
LABEL_63:
      sub_188CB8D88(v106, v107, v105);
      v320 = v104[3];
      v325 = v104[2];
      v108 = vcvt_hight_f32_f64(vcvt_f32_f64(v306), v311);
      v109 = vcvt_f32_f64(v313);
      v312 = v104[1];
      v314 = v104[4];
      v310 = *v104;
      v508[0] = vcvt_hight_f32_f64(v109, v308);
      v508[1] = v108;
      v508[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v302), v304);
      v508[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v298), v300);
      v508[4] = vcvt_hight_f32_f64(vcvt_f32_f64(v289), v294);
      sub_188CB8D88(v508, v509, &v365);
      goto LABEL_64;
    }

    v17 = *(v1 + 48);
    v16 = *(v1 + 56);
    v18 = *(v1 + 64);
    v19 = *(v1 + 72);
    if (*v1 == v17 && *(v1 + 8) == 0.0)
    {
      if (*(v1 + 210))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v22 = *v1 - v17;
      v352 = *(v1 + 88);
      if ((v19 - 1) <= 2)
      {
        v23 = __sincos_stret(*v1 - v17);
        v24 = atan2(v23.__sinval, v23.__cosval);
        if (v24 > 0.0 && v19 == 2)
        {
          v24 = v24 + -6.28318531;
        }

        if (v24 < 0.0 && v19 == 3)
        {
          v22 = v24 + 6.28318531;
        }

        else
        {
          v22 = v24;
        }
      }

      v27 = *(v1 + 8);
      v28 = sqrt(v16);
      v29 = v18 * 0.5;
      if (v18 * 0.5 >= v28)
      {
        if (v28 >= v29)
        {
          v48 = v29 * v22 + v27;
          v49 = v22 + v48 * v358;
          v34 = exp(-(v29 * v358));
          v35 = v34 * v49;
          v38 = v34 * v48;
          v39 = v49 * v29;
        }

        else
        {
          v345 = v9;
          v40 = sqrt(v29 * v29 - v28 * v28);
          v41 = cosh(v40 * v358);
          v336 = v11;
          v42 = 1.0 / v40 * (v29 * v22 + v27);
          v43 = sinh(v40 * v358);
          v44 = v22 * v41 + v42 * v43;
          v34 = exp(-(v29 * v358));
          v35 = v34 * v44;
          v45 = v40 * (v22 * v43);
          v46 = v40 * (v42 * v41);
          v9 = v345;
          v38 = v34 * (v46 + v45);
          v39 = v44 * v29;
          v11 = v336;
        }
      }

      else
      {
        v335 = v11;
        v30 = sqrt(v28 * v28 - v29 * v29);
        v31 = __sincos_stret(v30 * v358);
        v32 = 1.0 / v30 * (v29 * v22 + v27);
        v344 = v9;
        v33 = v31.__cosval * v22 + v31.__sinval * v32;
        v34 = exp(-(v29 * v358));
        v35 = v34 * v33;
        v36 = v30 * (v22 * v31.__sinval);
        v37 = v30 * (v31.__cosval * v32);
        v11 = v335;
        v38 = v34 * (v37 - v36);
        v39 = v33 * v29;
        v9 = v344;
      }

      *v1 = v17 + v35;
      *(v1 + 8) = v38 - v34 * v39;
      v10 = v352;
      if (v14)
      {
LABEL_11:
        if (!v13)
        {
          v47 = *(v1 + 16);
LABEL_53:
          v20 = 6.28318531 / v47 * (6.28318531 / v47);
          v74 = sqrt(v20);
          v21 = *v1 * (v74 + v74);
          *(v1 + 32) = v20;
          *(v1 + 40) = v21;
          goto LABEL_54;
        }

        goto LABEL_12;
      }
    }

LABEL_32:
    v47 = *(v1 + 16);
    if (v47 == v9 && *(v1 + 24) == 0.0)
    {
      goto LABEL_53;
    }

    v50 = v47 - v9;
    if ((v12 - 1) <= 2)
    {
      v51 = __sincos_stret(v47 - v9);
      v52 = atan2(v51.__sinval, v51.__cosval);
      if (v52 > 0.0 && v12 == 2)
      {
        v52 = v52 + -6.28318531;
      }

      if (v52 < 0.0 && v12 == 3)
      {
        v50 = v52 + 6.28318531;
      }

      else
      {
        v50 = v52;
      }
    }

    v55 = *(v1 + 24);
    v56 = sqrt(v10);
    v57 = v11 * 0.5;
    if (v11 * 0.5 >= v56)
    {
      if (v56 >= v57)
      {
        v71 = v57 * v50 + v55;
        v72 = v50 + v71 * v358;
        v62 = exp(-(v57 * v358));
        v63 = v62 * v72;
        v69 = v62 * v71;
        v70 = v72 * v57;
        goto LABEL_52;
      }

      v65 = sqrt(v57 * v57 - v56 * v56);
      v66 = cosh(v65 * v358);
      v67 = 1.0 / v65 * (v57 * v50 + v55);
      v68 = sinh(v65 * v358);
      v61 = v50 * v66 + v67 * v68;
      v62 = exp(-(v57 * v358));
      v63 = v62 * v61;
      v64 = v65 * (v67 * v66) + v65 * (v50 * v68);
    }

    else
    {
      v58 = sqrt(v56 * v56 - v57 * v57);
      v59 = __sincos_stret(v58 * v358);
      v60 = 1.0 / v58 * (v57 * v50 + v55);
      v61 = v59.__cosval * v50 + v59.__sinval * v60;
      v62 = exp(-(v57 * v358));
      v63 = v62 * v61;
      v64 = v58 * (v59.__cosval * v60) - v58 * (v50 * v59.__sinval);
    }

    v69 = v62 * v64;
    v70 = v61 * v57;
LABEL_52:
    v73 = v69 - v62 * v70;
    v47 = v9 + v63;
    *(v1 + 16) = v9 + v63;
    *(v1 + 24) = v73;
    goto LABEL_53;
  }

  v15 = (v1 + 384);
LABEL_75:
  v140 = v15[3];
  *(v4 + 32) = v15[2];
  *(v4 + 48) = v140;
  *(v4 + 64) = v15[4];
  result = v15[1];
  *v4 = *v15;
  *(v4 + 16) = result;
  return result;
}

uint64_t sub_188CB891C()
{
  v1 = *(v0 + 400);
  *v60 = *(v0 + 384);
  *&v60[16] = v1;
  v2 = *(v0 + 432);
  *&v60[32] = *(v0 + 416);
  *&v60[48] = v2;
  v61 = *(v0 + 448);
  if ((~*v60 & 0x7F800000) != 0 && (v3.i64[0] = 0x7F0000007FLL, v3.i64[1] = 0x7F0000007FLL, v4 = vnegq_f32(v3), (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(*&v60[4], v4), v4))) & 1) == 0) && (~*&v60[20] & 0x7F800000) != 0 && (v5.i64[0] = 0x7F0000007FLL, v5.i64[1] = 0x7F0000007FLL, v6 = vnegq_f32(v5), (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(*&v60[24], v6), v6))) & 1) == 0) && (~*&v60[40] & 0x7F800000) != 0 && (v7.i64[0] = 0x7F0000007FLL, v7.i64[1] = 0x7F0000007FLL, v8 = vnegq_f32(v7), (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(*&v60[44], v8), v8))) & 1) == 0) && (~*&v60[60] & 0x7F800000) != 0 && (v9.i64[0] = 0x7F0000007FLL, v9.i64[1] = 0x7F0000007FLL, v10 = vnegq_f32(v9), (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(v61, v10), v10))) & 1) == 0))
  {
    v13 = *(v0 + 304);
    v12 = *(v0 + 320);
    v15 = *(v0 + 336);
    v14 = *(v0 + 352);
    v11 = 1;
    if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vcgeq_s32((*&v13 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v10), vcgeq_s32((*&v12 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v10)), vuzp1q_s16(vcgeq_s32((*&v15 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v10), vcgeq_s32((*&v14 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v10)))) & 1) == 0)
    {
      v16 = *(v0 + 368);
      if ((vaddvq_s32(vandq_s8(vcgeq_s32((*&v16 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v10), xmmword_18A650B80)) & 0xF) == 0)
      {
        v17 = *(v0 + 272);
        v59[2] = *(v0 + 256);
        v59[3] = v17;
        v59[4] = *(v0 + 288);
        v18 = *(v0 + 240);
        v59[0] = *(v0 + 224);
        v59[1] = v18;
        v43 = v15;
        v44 = v14;
        v41 = v13;
        v42 = v12;
        v45 = v16;
        sub_188C564AC(v59, v60, &v46);
        v19 = *(v0 + 216);
        v62[0] = vmulq_f32(v46, v46);
        v62[1] = vmulq_f32(v47, v47);
        v62[2] = vmulq_f32(v48, v48);
        v62[3] = vmulq_f32(v49, v49);
        v20 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v41.f32), v19)), vmulq_n_f64(vcvt_hight_f64_f32(v41), v19));
        v21 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v42.f32), v19)), vmulq_n_f64(vcvt_hight_f64_f32(v42), v19));
        v22 = vmulq_f32(v21, v21);
        v62[4] = vmulq_f32(v50, v50);
        v63[0] = vmulq_f32(v20, v20);
        v23 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v43.f32), v19)), vmulq_n_f64(vcvt_hight_f64_f32(v43), v19));
        v24 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v44.f32), v19)), vmulq_n_f64(vcvt_hight_f64_f32(v44), v19));
        v63[1] = v22;
        v63[2] = vmulq_f32(v23, v23);
        v25 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v45.f32), v19)), vmulq_n_f64(vcvt_hight_f64_f32(v45), v19));
        v63[3] = vmulq_f32(v24, v24);
        v63[4] = vmulq_f32(v25, v25);
        v26 = sub_188CB8D88(v62, v63, &v51);
        v27.i64[0] = 0x7F0000007FLL;
        v27.i64[1] = 0x7F0000007FLL;
        v11 = 1;
        if ((vmaxv_u16(vmovn_s32(vcgeq_s32((*&v51 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), vnegq_f32(v27)))) & 1) == 0 && (LODWORD(v52) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v28.i64[0] = 0x7F0000007FLL;
          v28.i64[1] = 0x7F0000007FLL;
          v11 = 1;
          if ((vmaxv_u16(vmovn_s32(vcgeq_s32((*&v53 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), vnegq_f32(v28)))) & 1) == 0 && (LODWORD(v54) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            v29.i64[0] = 0x7F0000007FLL;
            v29.i64[1] = 0x7F0000007FLL;
            v11 = 1;
            if ((vmaxv_u16(vmovn_s32(vcgeq_s32((*&v55 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), vnegq_f32(v29)))) & 1) == 0 && (LODWORD(v56) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
            {
              v30 = fabsf(v57);
              v31 = vabsq_f32(v58);
              v32 = v31;
              v32.f32[3] = v30;
              v33.i64[0] = 0x7F0000007FLL;
              v33.i64[1] = 0x7F0000007FLL;
              v34 = vnegq_f32(v33);
              if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vorrq_s8(vcgtq_f32(v34, v32), vcgtq_f32(v32, v34))))) & 1) == 0 && (v31.f32[3] < INFINITY || v31.f32[3] > INFINITY))
              {
                v36 = vabsq_f32(v53);
                v37.i32[0] = vdupq_laneq_s32(v36, 3).u32[0];
                v37.i32[1] = fabsf(v54);
                v26.f32[0] = fabsf(v52);
                v38 = vabsq_f32(v55);
                v37.i64[1] = v38.i64[0];
                v38.i64[0] = vdupq_laneq_s64(v38, 1).u64[0];
                v38.i64[1] = __PAIR64__(LODWORD(v30), COERCE_UNSIGNED_INT(fabsf(v56)));
                v39 = vextq_s8(vextq_s8(v26, v26, 4uLL), v36, 0xCuLL);
                v40 = vdupq_n_s32(0x38D1B717u);
                v11 = (vmaxvq_u8(vmvnq_s8(vuzp1q_s8(vuzp1q_s16(vcgeq_f32(v40, vabsq_f32(v51)), vcgeq_f32(v40, v39)), vuzp1q_s16(vcgeq_f32(v40, v37), vcgeq_f32(v40, v38))))) ^ 1) & (vmaxv_u16(vmovn_s32(vmvnq_s8(vcgeq_f32(v40, v31)))) ^ 1);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

float32x4_t sub_188CB8D88@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = vaddq_f32(a1[1], a2[1]);
  *a3 = vaddq_f32(*a1, *a2);
  a3[1] = v3;
  v4 = vaddq_f32(a1[3], a2[3]);
  a3[2] = vaddq_f32(a1[2], a2[2]);
  a3[3] = v4;
  result = vaddq_f32(a1[4], a2[4]);
  a3[4] = result;
  return result;
}

void sub_188CB8E40(void *a1, void (*a2)(void))
{
  v4 = v2;
  v6 = [v4 stack];
  v7 = [v6 state];

  if (!v7)
  {
    v8 = [v4 stack];
    v9 = [v8 topItem];

    if (v9)
    {
      sub_188A34624(0, &unk_1ED48CFF8);
      v12 = v9;
      v10 = a1;
      v11 = sub_18A4A7C88();

      if (v11)
      {
        a2();
      }
    }
  }
}

void _collectTransitions(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v5 animations];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          _collectTransitions(*(*(&v15 + 1) + 8 * i), v6, v7);
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

LABEL_15:

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    if ([v8 isAdditive])
    {
      v13 = [v8 keyPath];
      v14 = [v6 objectForKeyedSubscript:v13];
      if (!v14)
      {
        v14 = objc_alloc_init(_UIViewKeyValueAnimationFactoryTransition);
        [v6 setObject:v14 forKeyedSubscript:v13];
      }

      v7[2](v7, v8, v14);
    }

    goto LABEL_15;
  }

LABEL_16:
}

uint64_t sub_188CB91F0@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, uint64_t a3@<X2>, float32x4_t *a4@<X3>, float32x4_t *a5@<X8>)
{
  v11 = *a3;
  v10 = *(a3 + 4);
  v13 = *(a3 + 8);
  v12 = *(a3 + 12);
  v15 = *(a3 + 16);
  v14 = *(a3 + 20);
  v17 = *(a3 + 24);
  v16 = *(a3 + 28);
  v66 = *(a3 + 32);
  v67 = *(a3 + 48);
  v68 = *(a3 + 64);
  sub_188AA72A8(a1, v70);
  if (v72)
  {
    if (v72 == 2)
    {
      v18 = *&v70[0];
      v19 = BYTE8(v70[0]);
      a5->i64[0] = 0;
      a5[16].i16[0] = 0;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936518);
      sub_188C526E0();
      sub_18A4A49B8();
      v21 = *(v20 + 64);
      a5->i64[1] = v18;
      v22 = a2[2];
      v23 = a2[3];
      a5[3] = v22;
      a5[4] = v23;
      v24 = a2[4];
      v26 = *a2;
      v25 = a2[1];
      a5[1] = *a2;
      a5[2] = v25;
      a5[7] = v25;
      a5[8] = v22;
      a5[9] = v23;
      a5[10] = v24;
      a5[5] = v24;
      a5[6] = v26;
      v27 = *a4;
      v28 = a4[1];
      v29 = a4[2];
      v30 = a4[4];
      a5[14] = a4[3];
      a5[15] = v30;
      a5[12] = v28;
      a5[13] = v29;
      a5[11] = v27;
      a5->i8[v21] = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936528);
    }

    else
    {
      sub_188AA7808(v70);
      v42 = *(a3 + 80);
      v43 = a4[3];
      a5[2] = a4[2];
      a5[3] = v43;
      a5[4] = a4[4];
      v44 = a4[1];
      *a5 = *a4;
      a5[1] = v44;
      v45 = 0.0;
      if (v42)
      {
        v46 = 0.0;
      }

      else
      {
        v46 = v11;
      }

      if (v42)
      {
        v47 = 0.0;
      }

      else
      {
        v47 = v10;
      }

      if (v42)
      {
        v48 = 0.0;
      }

      else
      {
        v48 = v13;
      }

      if (v42)
      {
        v49 = 0.0;
      }

      else
      {
        v49 = v12;
      }

      if (v42)
      {
        v50 = 0.0;
      }

      else
      {
        v50 = v15;
      }

      if (v42)
      {
        v51 = 0.0;
      }

      else
      {
        v51 = v14;
      }

      if (v42)
      {
        v52 = 0.0;
      }

      else
      {
        v52 = v17;
      }

      if (v42)
      {
        v53 = 0.0;
      }

      else
      {
        v53 = v16;
      }

      v55 = *(&v66 + 1);
      v54 = *&v66;
      if (v42)
      {
        v54 = 0.0;
        v55 = 0.0;
      }

      v57 = *(&v66 + 3);
      v56 = *(&v66 + 2);
      if (v42)
      {
        v56 = 0.0;
        v57 = 0.0;
      }

      v59 = *(&v67 + 1);
      v58 = *&v67;
      if (v42)
      {
        v58 = 0.0;
        v59 = 0.0;
      }

      v61 = *(&v67 + 3);
      v60 = *(&v67 + 2);
      if (v42)
      {
        v60 = 0.0;
        v61 = 0.0;
      }

      v63 = *(&v68 + 1);
      v62 = *&v68;
      if (v42)
      {
        v62 = 0.0;
        v63 = 0.0;
      }

      a5[5].f32[0] = v46;
      a5[5].f32[1] = v47;
      v64 = *(&v68 + 2);
      if (v42)
      {
        v64 = 0.0;
      }

      else
      {
        v45 = *(&v68 + 3);
      }

      a5[5].f32[2] = v48;
      a5[5].f32[3] = v49;
      a5[6].f32[0] = v50;
      a5[6].f32[1] = v51;
      a5[6].f32[2] = v52;
      a5[6].f32[3] = v53;
      a5[7].f32[0] = v54;
      a5[7].f32[1] = v55;
      a5[7].f32[2] = v56;
      a5[7].f32[3] = v57;
      a5[8].f32[0] = v58;
      a5[8].f32[1] = v59;
      a5[8].f32[2] = v60;
      a5[8].f32[3] = v61;
      a5[9].f32[0] = v62;
      a5[9].f32[1] = v63;
      a5[9].f32[2] = v64;
      a5[9].f32[3] = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936528);
    }
  }

  else
  {
    v82 = v70[2];
    v83 = v70[3];
    v84 = v70[4];
    v85 = v71;
    v81[0] = v70[0];
    v81[1] = v70[1];
    memset(__src, 0, 73);
    memset(&__src[5], 0, 25);
    memset(&__src[7], 0, 100);
    *(&__src[13] + 1) = 0x3FF0000000000000;
    v31 = a2[1];
    v32 = a2[3];
    __src[26] = a2[2];
    __src[27] = v32;
    v33 = a2[1];
    __src[24] = *a2;
    __src[25] = v33;
    v34 = a4[3];
    __src[16] = a4[2];
    __src[17] = v34;
    v35 = a4[1];
    __src[14] = *a4;
    __src[15] = v35;
    __src[18] = a4[4];
    memset(&__src[19], 0, 80);
    memset(&__src[34], 0, 80);
    v36 = a2[3];
    __src[28] = a2[4];
    __src[29] = __src[24];
    v37 = a2[4];
    __src[32] = v36;
    __src[33] = v37;
    __src[30] = v31;
    __src[31] = __src[26];
    sub_188CB4040(v81, 1);
    if ((*(a3 + 80) & 1) == 0)
    {
      *&__src[19] = __PAIR64__(LODWORD(v10), LODWORD(v11));
      *(&__src[19] + 1) = __PAIR64__(LODWORD(v12), LODWORD(v13));
      *&__src[20] = __PAIR64__(LODWORD(v14), LODWORD(v15));
      *(&__src[20] + 1) = __PAIR64__(LODWORD(v16), LODWORD(v17));
      __src[21] = v66;
      __src[22] = v67;
      __src[23] = v68;
    }

    if ((*(&v82 + 1) & 0x8000000000000000) != 0)
    {
      v38 = v85;
      v39 = *v81;
      if (*(&v84 + 1) > 0.0)
      {
        memcpy(__dst, v5, sizeof(__dst));
        v40.n128_u64[0] = *(&v84 + 1);
        sub_188F00E14(&__src[29], v40);
      }

      if (v38 > 0.0)
      {
        v41 = 6.28318531 / v39 * (6.28318531 / v39);
        sub_188C564AC(a4, a2, &v73);
        v79[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v73.f32), v41 * v38)), vmulq_n_f64(vcvt_hight_f64_f32(v73), v41 * v38));
        v79[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v74.f32), v41 * v38)), vmulq_n_f64(vcvt_hight_f64_f32(v74), v41 * v38));
        v79[2] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v75.f32), v41 * v38)), vmulq_n_f64(vcvt_hight_f64_f32(v75), v41 * v38));
        v79[3] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v76.f32), v41 * v38)), vmulq_n_f64(vcvt_hight_f64_f32(v76), v41 * v38));
        v79[4] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v77.f32), v41 * v38)), vmulq_n_f64(vcvt_hight_f64_f32(v77), v41 * v38));
        v78[2] = __src[21];
        v78[3] = __src[22];
        v78[4] = __src[23];
        v78[0] = __src[19];
        v78[1] = __src[20];
        sub_188CB8D88(v78, v79, &__src[19]);
      }
    }

    memcpy(a5, __src, 0x270uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936528);
  }

  return swift_storeEnumTagMultiPayload();
}

id _captureUserActionData()
{
  v0 = objc_autoreleasePoolPush();
  v1 = mach_absolute_time();
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = +[UIScreen _carScreen];
  if (v3)
  {
    [UIApp _keyWindowForScreen:v3];
  }

  else
  {
    +[UIWindow _applicationKeyWindow];
  }
  v4 = ;
  v5 = UIApp;
  v6 = [v4 rootViewController];
  v7 = [(UIApplication *)v5 _topMostViewController:v6];

  v8 = [v7 _existingView];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v7 view];
  }

  v11 = v10;

  v12 = [(UIViewController *)v7 _userActionDescription];
  [v2 setObject:v12 forKeyedSubscript:@"TopVC"];

  v13 = [(UIView *)v11 _userActionDescription:0x19u maxLevel:?];
  [v2 setObject:v13 forKeyedSubscript:@"TopVCView"];

  v14 = _UIMainBundleIdentifier();
  [v2 setObject:v14 forKeyedSubscript:@"BundleID"];

  v15 = [MEMORY[0x1E696AAE8] mainBundle];
  v16 = [v15 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  [v2 setObject:v16 forKeyedSubscript:@"DisplayName"];

  v17 = mach_absolute_time();
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:_UIMediaDurationForMachDuration(v17 - v1) * 1000000.0];
  [v2 setObject:v18 forKeyedSubscript:@"TraversalTimeuSec"];

  v23 = 0;
  v19 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:&v23];
  if (!v19)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSData *_captureUserActionData(void)"];
    [v21 handleFailureInFunction:v22 file:@"UIApplication.m" lineNumber:3795 description:@"Failed to serialize user activity information"];
  }

  objc_autoreleasePoolPop(v0);

  return v19;
}

void sub_188CB9B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _addUserActionDescription(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v5 setObject:v7 forKeyedSubscript:@"ClassName"];

    v8 = [(UIViewController *)v3 _descriptionForPrintingHierarchyIncludingInsets:?];
    [v5 setObject:v8 forKeyedSubscript:@"Description"];

    v9 = [v3 presentingViewController];
    v10 = [v9 _presentationController];
    v11 = [v10 _descriptionForPrintingViewControllerHierarchy];
    [v5 setObject:v11 forKeyedSubscript:@"PresentationController"];

    v12 = [MEMORY[0x1E695DF70] array];
    [v5 setObject:v12 forKeyedSubscript:@"SubVCs"];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v3;
    v13 = [v3 childViewControllers];
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [MEMORY[0x1E695DF90] dictionary];
          v20 = [v5 objectForKeyedSubscript:@"SubVCs"];
          [v20 addObject:v19];

          _addUserActionDescription(v18, v19);
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    v3 = v25;
    v21 = [v25 childModalViewController];

    if (v21)
    {
      v22 = [MEMORY[0x1E695DF90] dictionary];
      v23 = [v5 objectForKeyedSubscript:@"SubVCs"];
      [v23 addObject:v22];

      v24 = [v25 childModalViewController];
      _addUserActionDescription(v24, v22);
    }
  }
}

void _addUserActionDescription_0(void *a1, void *a2, int a3, int a4, unsigned int a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v6 unsafeUnretainedDelegate];
    if (v9 && (v10 = v9, _IsKindOfUIView(v9)))
    {
      v11 = v10;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [v8 setObject:v13 forKeyedSubscript:@"ClassName"];
    }

    else
    {
      [v8 setObject:@"CALayer" forKeyedSubscript:@"ClassName"];
    }

    v14 = [v6 sublayers];
    v15 = [v14 count];

    if (v15 < 4 || (v16 = a4 < 1, --a4, !v16))
    {
      if (a3 < a5)
      {
        v17 = [MEMORY[0x1E695DF70] array];
        [v8 setObject:v17 forKeyedSubscript:@"Subviews"];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v26 = v6;
        v18 = [v6 sublayers];
        v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v31;
          do
          {
            v22 = 0;
            do
            {
              if (*v31 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v30 + 1) + 8 * v22);
              v24 = [MEMORY[0x1E695DF90] dictionary];
              v25 = [v8 objectForKeyedSubscript:@"Subviews"];
              [v25 addObject:v24];

              _addUserActionDescription_0(v23, v24, (a3 + 1), a4, a5);
              ++v22;
            }

            while (v20 != v22);
            v20 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v20);
        }

        v6 = v26;
      }
    }
  }
}

double _UIMediaDurationForMachDuration(uint64_t a1)
{
  if (qword_1ED49FCB8 != -1)
  {
    dispatch_once(&qword_1ED49FCB8, &__block_literal_global_46_2);
  }

  return a1 / *&qword_1ED49FCC0;
}

uint64_t _indexOfIdleObserver(void *a1)
{
  v1 = a1;
  v2 = qword_1ED49A928;
  if ([v2 count])
  {
    v3 = 0;
    while ([v2 pointerAtIndex:v3] != v1)
    {
      if (++v3 >= [v2 count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3;
}

double UIEdgeInsetsMin(char a1, double result, double a3, double a4, double a5, double a6)
{
  v6 = fmin(result, a6);
  if (a1)
  {
    return v6;
  }

  return result;
}

uint64_t sub_188CBA3DC()
{
  v1 = [v0 stack];
  v2 = [v1 topItem];

  v3 = [v2 scrollEdgeAppearance];
  if (v3 || (v4 = [v0 navigationBar], v3 = objc_msgSend(v4, sel_scrollEdgeAppearance), v4, v3))
  {
    v5 = [v3 _backgroundData];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 hasBackground];

      return v7 ^ 1;
    }
  }

  return 1;
}

void sub_188CBA530()
{
  v1 = v0;
  v2 = [v0 isSearchActive];
  v3 = [(_UINavigationBarItemStackEntry *)v0 _typedStorage];
  if (v2)
  {
    v4 = sub_18901F25C();
  }

  else
  {
    v4 = sub_18901F250();
  }

  v5 = v4;

  if (v5)
  {
    swift_beginAccess();
    v6 = *(v5 + 400);
    if (v6 >> 62)
    {
      v7 = sub_18A4A7F68();
      if (v7)
      {
LABEL_7:
        if (v7 < 1)
        {
          __break(1u);
        }

        else
        {

          v8 = 0;
          v9 = 0.0;
          v10 = 0.0;
          v11 = 0.0;
          do
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v15 = sub_188E4A488(v8, v6);
            }

            else
            {
              v15 = *(v6 + 8 * v8 + 32);
            }

            v16 = 0.0;
            if ((v15[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] & 1) == 0)
            {
              v16 = *&v15[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];
            }

            ++v8;
            v12 = *&v15[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight];
            v11 = v11 + v16;
            v13 = v15[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_prefersExpanded];

            if (v13)
            {
              v14 = v12;
            }

            else
            {
              v14 = v16;
            }

            v10 = v10 + v14;
            v9 = v9 + v12;
          }

          while (v7 != v8);
        }

        return;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_7;
      }
    }

    return;
  }

  v17 = [v1 activeLayout];
  if (v17)
  {
    v18 = v17;
    [(_UINavigationBarLayout *)v17 layoutHeights];
  }
}

uint64_t _adjustOptions(char *__src, uint64_t a2)
{
  if ((qword_1ED4A2940 | a2) == qword_1ED4A2940)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  qword_1ED4A2940 |= a2;
  strncpy(__dst, __src, 8uLL);
  _tracepointArg4(&qword_1ED4A2900);
  kdebug_trace();
  if (word_1ED4A2938 != 1)
  {
    return 0;
  }

  work_interval_instance_set_complexity();
  return 1;
}

id sub_188CBAA0C()
{
  v1 = [objc_msgSend(v0 host)];
  swift_unknownObjectRelease();
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 selectedViewController];

  if (!v2)
  {
    return 0;
  }

  result = [v2 tabBarItem];
  if (result)
  {
    v4 = result;
    v5 = [result systemItem];

    if (v5 == 8)
    {
      v6 = [v0 _hostedSearchNavigationControllerFrom_];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 bottomViewController];
        if (!v8)
        {

          return 0;
        }

        v9 = v8;
        v10 = [v7 topViewController];
        if (v10)
        {
          v11 = v10;
          sub_188A34624(0, &qword_1ED48D5A0);
          v12 = v9;
          v13 = sub_18A4A7C88();

          if (v13)
          {
            v14 = [v12 navigationItem];
            v15 = [v14 searchController];

            return v15;
          }
        }

        else
        {
        }
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

double GroupedTableOffsetFromTop(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 _topPadding];
  SectionWithout = v5;
  if (v5 == -1.0)
  {
    SectionWithout = 0.0;
    if (-[UITableViewRowData heightForTableHeaderView](v4) <= 0.0 && (!v4 || v4[8] < 1 || ([v3 _shouldHaveHeaderViewForSection:0] & 1) == 0))
    {
      v7 = [v3 _scrollView];
      v8 = [v7 _shouldAdjustLayoutToCollapseTopSpacing];

      if ((v8 & 1) == 0)
      {
        v9 = [v3 _scrollView];
        [v9 _topLayoutInsetForSidebar];
        v11 = v10;

        if (v11 <= 0.0)
        {
          v12 = [v3 _metricsAdapter];
          SectionWithout = [(UITableMetricsAdapter *)v12 paddingAboveFirstSectionWithoutHeader];
        }
      }
    }
  }

  return SectionWithout;
}

uint64_t sub_188CBB4B0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v30 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366C8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366D0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366B8);
  v20 = *(v12 + 16);
  v31 = *(v19 + 60);
  v32 = v11;
  v20(v14, v6 + v31, v11);
  sub_188C52638();
  sub_18A4A4D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366D8);
  sub_188A34360(&qword_1EA9366E0, &qword_1EA9366D8);
  v21 = v30;
  sub_18A4A4D98();
  v22 = *(v6 + 80);
  v23 = *(v6 + 16);
  v24 = *(v6 + 32);
  v28 = *(v6 + 96);
  v29 = v22;
  v33 = vsubq_f64(v22, v23);
  v34 = vsubq_f64(v28, v24);
  if (sub_18A4A6C18())
  {

    *(v6 + 8) = v21;
    *(v6 + 80) = a2;
    *(v6 + 88) = a3;
    *(v6 + 96) = a4;
    *(v6 + 104) = a5;
    sub_18A4A4D88();
  }

  else
  {
    v26 = v28;
    v25 = v29;
    *(v6 + 16) = v29;
    *(v6 + 32) = v26;
    *(v6 + 48) = v25;
    *(v6 + 64) = v26;
    *(v6 + 80) = a2;
    *(v6 + 88) = a3;
    *(v6 + 96) = a4;
    *(v6 + 104) = a5;

    *v6 = 0;
    *(v6 + 8) = v21;
    sub_18A4A49B8();
  }

  (*(v16 + 8))(v18, v15);
  return (*(v12 + 40))(v6 + v31, v14, v32);
}

uint64_t sub_188CBB7C0(uint64_t a1, double a2)
{
  v3 = v2;
  v18 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936668);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936670);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936658);
  v14 = *(v6 + 16);
  v19 = *(v13 + 60);
  v20 = v5;
  v14(v8, v3 + v19, v5);
  sub_188B0BC88();
  sub_18A4A4D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936678);
  sub_188A34360(&qword_1EA936680, &qword_1EA936678);
  v15 = v18;
  sub_18A4A4D98();
  v16 = *(v3 + 32);
  v21 = v16 - *(v3 + 16);
  if (sub_18A4A6C18())
  {

    *(v3 + 8) = v15;
    *(v3 + 32) = a2;
    sub_18A4A4D88();
  }

  else
  {
    *(v3 + 16) = v16;
    *(v3 + 24) = v16;
    *(v3 + 32) = a2;

    *v3 = 0;
    *(v3 + 8) = v15;
    sub_18A4A49B8();
  }

  (*(v10 + 8))(v12, v9);
  return (*(v6 + 40))(v3 + v19, v8, v20);
}

void _UIUpdateCycleUnregisterIdleObserver(void *a1)
{
  v7 = a1;
  if (pthread_main_np() != 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIUpdateCycleUnregisterIdleObserver(__strong id<_UIUpdateCycleIdleObserver> _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"_UIUpdateCycleIdleScheduler.m" lineNumber:100 description:@"Idle observers must be unregistered on the main thread."];
  }

  v1 = _indexOfIdleObserver(v7);
  if (v1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = v1;
    v3 = [qword_1ED49A928 copy];
    [v3 removePointerAtIndex:v2];
    v4 = qword_1ED49A928;
    qword_1ED49A928 = v3;
  }
}

double sub_188CBBCA4(double *a1, double *a2)
{
  result = *a2 + *a1;
  *a1 = result;
  return result;
}

float64x2_t sub_188CBBCB8(float64x2_t *a1, float64x2_t *a2)
{
  result = vaddq_f64(*a2, *a1);
  v3 = vaddq_f64(a2[1], a1[1]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

Class __getLNAppConnectionListenerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA993278)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AppIntentsLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E711DDE0;
    v8 = 0;
    qword_1EA993278 = _sl_dlopen();
  }

  if (!qword_1EA993278)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppIntentsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIApplication.m" lineNumber:592 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("LNAppConnectionListener");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNAppConnectionListenerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIApplication.m" lineNumber:593 description:{@"Unable to find class %s", "LNAppConnectionListener"}];

LABEL_10:
    __break(1u);
  }

  qword_1EA993270 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_188CBC5D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_18A4A5CC8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9 && (v10 = v9, v11 = [v9 window], v10, v11))
    {

      v8 = v11;
    }

    else
    {
      if (sub_18A4A46F8())
      {
        v12 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_canAdvanceTimeAutomatically;
        swift_beginAccess();
        if (*(v8 + v12) == 1)
        {
          CACurrentMediaTime();
          sub_18A4A5C88();
          sub_188B27A38(v6);
          (*(v4 + 8))(v6, v3);
          UIAnimationDragCoefficient();
          swift_getObjectType();
          (*(v4 + 56))(v2, 1, 1, v3);
          sub_18A4A58C8();
          swift_unknownObjectRelease();
          sub_188A3F5FC(v2, &qword_1EA936FE8);
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      *(v8 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_pendingPostDisappearPreferencesUpdate) = 0;
    }
  }
}

void sub_188CBDFEC(void *a1)
{
  v1 = a1;
  if (sub_18A4A46F8())
  {
    swift_getObjectType();
    sub_18A4A5538();
    sub_18A4A58B8();
    swift_unknownObjectRelease();
  }
}

BOOL _UIContentViewShouldUseAccessibilityLargeTextLayout(void *a1)
{
  v1 = a1;
  v2 = [v1 preferredContentSizeCategory];
  v3 = UIContentSizeCategoryIsAccessibilityCategory(v2) && [v1 userInterfaceIdiom] != 3;

  return v3;
}

void _UIContentViewUpdateLabelAttributesForAccessibilityLayout(void *a1, void *a2, uint64_t a3, double a4)
{
  v53 = a1;
  v7 = a2;
  if (v53 && ([v53 isHidden] & 1) == 0 && objc_msgSend(v7, "_hasNonEmptyPlainTextOnly"))
  {
    v8 = 0.0;
    if ((a3 - 1) <= 1)
    {
      if ([v53 numberOfLines] == 1)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 1.0;
      }
    }

    if (a4 > 0.0 || v8 > 0.0)
    {
      [v53 _setOverallWritingDirectionFollowsLayoutDirection:1];
      v24 = [v53 attributedText];
      v9 = [v24 mutableCopy];

      if (![v9 length])
      {
        v48 = [MEMORY[0x1E696AAA8] currentHandler];
        v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIContentViewUpdateLabelAttributesForAccessibilityLayout(UILabel *__strong _Nonnull, __strong id<_UIListContentTextPropertiesInternal> _Nonnull, _UIContentViewLayoutMode, CGFloat)"}];
        [v48 handleFailureInFunction:v49 file:@"_UIContentViewShared.m" lineNumber:88 description:@"Can't set attributes on a zero length string!"];
      }

      v25 = [v9 string];
      v26 = [v25 paragraphRangeForRange:{0, 0}];
      v28 = v27;

      v29 = *off_1E70EC988;
      v30 = [v9 attribute:*off_1E70EC988 atIndex:v26 effectiveRange:0];
      v21 = v30;
      if (v30)
      {
        v31 = [v30 mutableCopy];
      }

      else
      {
        v31 = objc_alloc_init(off_1E70ECB80);
      }

      v23 = v31;
      [v31 setFirstLineHeadIndent:a4];
      *&v32 = v8;
      [v23 setHyphenationFactor:v32];
      [v9 addAttribute:v29 value:v23 range:{v26, v28}];
      v33 = v26 + v28;
      if ([v9 length] > v33)
      {
        v34 = [v9 length] - v33;
        v35 = [v9 attribute:v29 atIndex:v33 effectiveRange:0];
        v36 = v35;
        if (v35)
        {
          v37 = [v35 mutableCopy];
        }

        else
        {
          v37 = objc_alloc_init(off_1E70ECB80);
        }

        v47 = v37;
        *&v38 = v8;
        [v37 setHyphenationFactor:v38];
        [v9 addAttribute:v29 value:v47 range:{v33, v34}];
      }

      [v53 setAttributedText:v9];
      goto LABEL_49;
    }

    [v53 _setOverallWritingDirectionFollowsLayoutDirection:0];
    v9 = [v53 _content];
    v10 = [v9 length];
    if (v10 < 1)
    {
LABEL_50:

      goto LABEL_51;
    }

    v11 = v10;
    v12 = [v9 string];
    v13 = [v12 paragraphRangeForRange:{0, 0}];
    v15 = v14;

    v16 = v13 + v15;
    v17 = v11 - (v13 + v15);
    if (v11 <= v13 + v15)
    {
      v17 = 0;
    }

    v51 = v17;
    if (v11 <= v13 + v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13 + v15;
    }

    if ([v9 isAttributed])
    {
      v19 = [v9 attributedString];
      v20 = *off_1E70EC988;
      v21 = [v19 attribute:*off_1E70EC988 atIndex:v13 effectiveRange:0];

      if (v11 > v16)
      {
        v22 = [v9 attributedString];
        v23 = [v22 attribute:v20 atIndex:v13 + v15 effectiveRange:0];

LABEL_30:
        v52 = v20;
        if (!v21 || ([v21 firstLineHeadIndent], v40 == 0.0) && (objc_msgSend(v21, "hyphenationFactor"), v41 == 0.0))
        {
          v42 = 0;
          if (!v23)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v42 = [v21 mutableCopy];
          [v42 setFirstLineHeadIndent:0.0];
          [v42 setHyphenationFactor:0.0];
          if (!v23)
          {
            goto LABEL_38;
          }
        }

        [v23 hyphenationFactor];
        if (v43 != 0.0)
        {
          v44 = [v23 mutableCopy];
          [v44 setHyphenationFactor:0.0];
LABEL_39:
          if (v42 | v44)
          {
            v50 = v18;
            v45 = [v9 attributedString];
            v46 = [v45 mutableCopy];

            if (v42)
            {
              [v46 addAttribute:v52 value:v42 range:{v13, v15}];
            }

            if (v44)
            {
              [v46 addAttribute:v52 value:v44 range:{v50, v51}];
            }

            [v53 setAttributedText:v46];
          }

LABEL_49:
          goto LABEL_50;
        }

LABEL_38:
        v44 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      v39 = [v9 defaultAttributes];
      v20 = *off_1E70EC988;
      v21 = [v39 objectForKey:*off_1E70EC988];

      if (v11 > v16)
      {
        v21 = v21;
        v23 = v21;
        goto LABEL_30;
      }
    }

    v23 = 0;
    goto LABEL_30;
  }

LABEL_51:
}

uint64_t _UIEngineHostingViewsShouldGuardWantsAutolayoutFlagPropagation()
{
  if (qword_1ED4982C0 != -1)
  {
    dispatch_once(&qword_1ED4982C0, &__block_literal_global_859_0);
  }

  return byte_1ED4981B2;
}

void sub_188CBFFA4()
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
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  if ([(UIView *)v1 _isDeallocInitiated])
  {

    [(UITableViewHeaderFooterView *)v1 _executeConfigurationUpdate];
  }

  else
  {
    v45 = v12;
    v46 = v9;
    v47 = v5;
    v48 = v3;
    v49 = v2;
    v19 = [(UIView *)v1 _typedStorage];
    v20 = sub_188A4CEC4();

    if (v20)
    {
      sub_18913E3AC(16);
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
    [(UITableViewHeaderFooterView *)v1 _executeConfigurationUpdate];
    *(StatusReg + 848) = v22;
    v25 = v6;
    v26 = v51;
    byte_1ED4A3680 = v24;
    v27 = v23;
    sub_188A3F29C(v51, v15, &qword_1EA93E090);
    if ((*(v23 + 48))(v15, 1, v6) == 1)
    {
      sub_188A3F5FC(v26, &qword_1EA93E090);
      sub_188A3F5FC(v15, &qword_1EA93E090);
    }

    else
    {
      v28 = v46;
      (*(v23 + 32))(v46, v15, v6);
      v29 = sub_188ACEB88(v1, 16, &block_descriptor_26_10);
      v30 = v50;
      if (!v50)
      {
        v31 = v29;
        v32 = [(UIView *)v1 _typedStorage];
        v30 = sub_188A4CEC4();

        v29 = v31;
      }

      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = 16;
      *(v34 + 25) = v29;
      *(v34 + 32) = [UITableViewCell _invalidateConfiguration]_0;
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
        v38 = [(UIView *)v1 _typedStorage];
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
      sub_188ACEFD4(v36, 16);

      v42 = swift_allocObject();
      *(v42 + 16) = sub_188B57AD0;
      *(v42 + 24) = v34;

      MEMORY[0x18CFDDAE0](v36, 0, 0, sub_188B57240, v42);

      (*(v48 + 8))(v36, v49);
      (*(v27 + 8))(v28, v25);
      sub_188A3F5FC(v51, &qword_1EA93E090);
    }
  }
}

void sub_188CC1478()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 320);
  *(v1 + 320) = v2;
  v4 = v2;
}

void (*UICollectionViewDiffableDataSource.sectionSnapshotHandlers.modify(uint64_t *a1))(void **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1A0uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 400) = v2;
  *(v4 + 408) = *MEMORY[0x1E69E7D40] & *v2;
  v6 = [*(v2 + qword_1EA940A40) sectionSnapshotHandlers];
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *v5 = v6;
  return sub_188CC1858;
}

uint64_t sub_188CC16B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id UICollectionViewDiffableDataSource.SectionSnapshotHandlers.willExpandItem.setter(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = *(v3 + 24);
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  sub_188A52E38(a1);
  sub_188A55B8C(v7);
  if (a1)
  {
    v8 = *v3;
    v9 = swift_allocObject();
    v10 = a3[2];
    *(v9 + 16) = a3[1];
    *(v9 + 32) = v10;
    *(v9 + 48) = a3[3];
    *(v9 + 64) = a1;
    *(v9 + 72) = a2;
    v14[4] = sub_188FAD630;
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_188FAC690;
    v14[3] = &block_descriptor_6_5;
    v11 = _Block_copy(v14);

    [v8 setWillExpandItemHandler_];
    _Block_release(v11);
    return sub_188A55B8C(a1);
  }

  else
  {
    v13 = *v3;

    return [v13 setWillExpandItemHandler_];
  }
}

void sub_188CC1858(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[2];
    v3 = v2[3];
    v5 = v2[1];
    v2[13] = v4;
    v2[14] = v3;
    v6 = v2[3];
    v2[15] = v2[4];
    v7 = v2[1];
    v8 = *v2;
    v2[11] = *v2;
    v2[12] = v7;
    v20 = v4;
    v21 = v6;
    v22 = v2[4];
    v9 = *(v2 + 51);
    *(v2 + 32) = *(v2 + 10);
    v23 = *(v2 + 10);
    v18 = v8;
    v19 = v5;
    v10 = *(v9 + 104);
    v11 = *(v9 + 88);
    *(v2 + 44) = *(v9 + 80);
    *(v2 + 45) = v11;
    v2[23] = v11;
    *(v2 + 48) = v10;
    *(v2 + 49) = v10;
    v12 = type metadata accessor for UICollectionViewDiffableDataSource.SectionSnapshotHandlers();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v2 + 264, v2 + 11, v12);
    UICollectionViewDiffableDataSource.sectionSnapshotHandlers.setter(&v18);
    v14 = v2[3];
    *(v2 + 120) = v2[2];
    *(v2 + 136) = v14;
    *(v2 + 152) = v2[4];
    *(v2 + 21) = *(v2 + 10);
    v15 = v2[1];
    *(v2 + 88) = *v2;
    *(v2 + 104) = v15;
    (*(v13 + 8))(v2 + 88, v12);
  }

  else
  {
    v16 = v2[3];
    v20 = v2[2];
    v21 = v16;
    v22 = v2[4];
    v23 = *(v2 + 10);
    v17 = v2[1];
    v18 = *v2;
    v19 = v17;
    UICollectionViewDiffableDataSource.sectionSnapshotHandlers.setter(&v18);
  }

  free(v2);
}

uint64_t UICollectionViewDiffableDataSource.sectionSnapshotHandlers.setter(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = a1[5];
  v6 = a1[7];
  v8 = a1[9];
  [*(v1 + qword_1EA940A40) setSectionSnapshotHandlers_];

  sub_188A55B8C(v3);
  sub_188A55B8C(v4);
  sub_188A55B8C(v5);
  sub_188A55B8C(v6);

  return sub_188A55B8C(v8);
}

id UICollectionViewDiffableDataSource.SectionSnapshotHandlers.willCollapseItem.setter(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = *(v3 + 56);
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  sub_188A52E38(a1);
  sub_188A55B8C(v7);
  if (a1)
  {
    v8 = *v3;
    v9 = swift_allocObject();
    v10 = a3[2];
    *(v9 + 16) = a3[1];
    *(v9 + 32) = v10;
    *(v9 + 48) = a3[3];
    *(v9 + 64) = a1;
    *(v9 + 72) = a2;
    v14[4] = sub_188FAD7C4;
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_188FAC690;
    v14[3] = &block_descriptor_19_3;
    v11 = _Block_copy(v14);

    [v8 setWillCollapseItemHandler_];
    _Block_release(v11);
    return sub_188A55B8C(a1);
  }

  else
  {
    v13 = *v3;

    return [v13 setWillCollapseItemHandler_];
  }
}

id UICollectionViewDiffableDataSource.SectionSnapshotHandlers.shouldCollapseItem.setter(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = *(v3 + 40);
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  sub_188A52E38(a1);
  sub_188A55B8C(v7);
  if (a1)
  {
    v8 = *v3;
    v9 = swift_allocObject();
    v10 = a3[2];
    *(v9 + 16) = a3[1];
    *(v9 + 32) = v10;
    *(v9 + 48) = a3[3];
    *(v9 + 64) = a1;
    *(v9 + 72) = a2;
    v14[4] = sub_188FAD7C0;
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_188FAC37C;
    v14[3] = &block_descriptor_12_4;
    v11 = _Block_copy(v14);

    [v8 setShouldCollapseItemHandler_];
    _Block_release(v11);
    return sub_188A55B8C(a1);
  }

  else
  {
    v13 = *v3;

    return [v13 setShouldCollapseItemHandler_];
  }
}

uint64_t UIConfigurationTextAttributesTransformer.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id sub_188CC259C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *a1;
  if (*a1)
  {
    v10 = a1[1];
    v11 = sub_188BC666C();
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = v10;
    aBlock[4] = a3;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188CC2890;
    aBlock[3] = a4;
    v13 = _Block_copy(aBlock);
    v14 = v11;
    sub_188A52E38(v7);

    [v14 *a5];
    _Block_release(v13);

    return sub_188A55B8C(v7);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v5;
    if (isUniquelyReferenced_nonNull_native)
    {
      v18 = *(v17 + 16);
    }

    else
    {
      [*(v17 + 16) copy];
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
      sub_188A34624(0, &qword_1EA930A50);
      swift_dynamicCast();
      v18 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
      v19 = swift_allocObject();
      *(v19 + 16) = v21;

      *v5 = v19;
    }

    return [v18 *a5];
  }
}

uint64_t sub_188CC2794()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_188CC2890(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_188BEB2A0(&qword_1ED48E360, type metadata accessor for Key);
  v2 = sub_18A4A70A8();

  v1(v2);

  v3 = sub_18A4A7088();

  return v3;
}

uint64_t sub_188CC298C(uint64_t a1, void (*a2)(_BYTE *))
{
  v3 = sub_18A4A2668();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-v11];
  v13 = qword_1ED48BE20;

  if (v13 != -1)
  {
    swift_once();
  }

  type metadata accessor for AttributeScopes.UIKitAttributes();
  sub_188BEB2A0(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
  sub_18A4A2688();
  a2(v12);
  (*(v4 + 16))(v6, v9, v3);
  v14 = sub_18A4A70B8();
  v15 = *(v4 + 8);
  v15(v9, v3);
  v15(v12, v3);
  return v14;
}

Swift::Void __swiftcall UIHostingViewBase.renderForPreferences(updateDisplayList:)(Swift::Bool updateDisplayList)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_18A4A5CC8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_18A4A46F8())
  {
    v10 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_canAdvanceTimeAutomatically;
    swift_beginAccess();
    if (*(v2 + v10) == 1)
    {
      CACurrentMediaTime();
      sub_18A4A5C88();
      sub_188B27A38(v9);
      (*(v7 + 8))(v9, v6);
      UIAnimationDragCoefficient();
      swift_getObjectType();
      (*(v7 + 56))(v5, 1, 1, v6);
      sub_18A4A58C8();
      swift_unknownObjectRelease();
      sub_188A3F5FC(v5, &qword_1EA936FE8);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void (*UICollectionViewDiffableDataSource.reorderingHandlers.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = [*(v1 + qword_1EA940A40) reorderingHandlers];
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *v4 = v5;
  return sub_188CC3FC0;
}

void sub_188CC3FC0(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v8 = (*a1)[4];
  v7 = (*a1)[5];
  v9 = (*a1)[6];
  v14[0] = v3;
  v14[1] = v4;
  v14[2] = v6;
  v14[3] = v5;
  v14[4] = v8;
  v14[5] = v7;
  v14[6] = v9;
  if (a2)
  {
    v10 = v3;
    sub_188A52E38(v4);
    sub_188A52E38(v5);
    sub_188A52E38(v7);
    UICollectionViewDiffableDataSource.reorderingHandlers.setter(v14);
    v11 = v2[1];
    v12 = v2[3];
    v13 = v2[5];

    sub_188A55B8C(v11);
    sub_188A55B8C(v12);
    sub_188A55B8C(v13);
  }

  else
  {
    UICollectionViewDiffableDataSource.reorderingHandlers.setter(v14);
  }

  free(v2);
}

uint64_t sub_188CC453C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v6 = MEMORY[0x1E69E7D40];
  sub_18A4A55E8();
  v7 = *v6 & *v4;
  v8 = *(v5 + *((*v6 & *v5) + 0x90));
  v9 = (v4 + *(v7 + 152));
  swift_beginAccess();
  if ((*(v8 + 48) & 1) != 0 || (v10.f64[0] = a1, v10.f64[1] = a2, v11.f64[0] = a3, v11.f64[1] = a4, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v8 + 16), v10), vceqq_f64(*(v8 + 32), v11)))) & 1) == 0))
  {
    v12.f64[0] = a1;
    v12.f64[1] = a2;
    v13.f64[0] = a3;
    v13.f64[1] = a4;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v9, v12), vceqq_f64(v9[1], v13)))))
    {
      *(v8 + 16) = 0u;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 1;
    }

    else
    {
      *(v8 + 16) = a1;
      *(v8 + 24) = a2;
      *(v8 + 32) = a3;
      *(v8 + 40) = a4;
      *(v8 + 48) = 0;
      v14 = [v5 superview];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 layer];

        [v16 setNeedsLayout];
      }
    }
  }

  return swift_endAccess();
}

unint64_t sub_188CC4708()
{
  result = qword_1EA930200;
  if (!qword_1EA930200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930200);
  }

  return result;
}

uint64_t sub_188CC4774@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18A4A2888();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_188CC47A8()
{
  result = qword_1EA930208;
  if (!qword_1EA930208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930208);
  }

  return result;
}

uint64_t sub_188CC4824(uint64_t a1, id *a2)
{
  result = sub_18A4A7268();
  *a2 = 0;
  return result;
}

uint64_t sub_188CC48A0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9334C0);
  swift_dynamicCast();
  a3(v6, a2);
  return swift_unknownObjectRelease();
}

void sub_188CC4A88(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_priority;
  if (qword_18A66B720[a1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_priority]] != qword_18A66B720[a2] && a1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active] == 1)
  {
    swift_beginAccess();
    v6 = a1;
    v7 = sub_188C12D08(v2 + 49, v6);

    v8 = v2[49];
    if (v8 >> 62)
    {
      v9 = sub_18A4A7F68();
      if (v9 >= v7)
      {
LABEL_5:
        sub_188C13030(v7, v9);
        v7 = v2;
        swift_endAccess();
        a1[v4] = a2;
        type metadata accessor for NavigationBarLayout.InsertLayoutData();

        v2 = sub_18A4A7518();

        v10 = *(v7 + 392);
        if (!(v10 >> 62))
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_7;
        }

LABEL_15:
        v11 = sub_18A4A7F68();
LABEL_7:
        aBlock[4] = sub_188B32A90;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_188B32A00;
        aBlock[3] = &block_descriptor_35_8;
        v12 = _Block_copy(aBlock);

        v13 = [v2 indexOfObject:v6 inSortedRange:0 options:v11 usingComparator:{1024, v12}];

        _Block_release(v12);
        if (swift_isEscapingClosureAtFileLocation())
        {
          __break(1u);
        }

        else
        {
          swift_beginAccess();
          v14 = *(v7 + 392);
          if (!(v14 >> 62))
          {
            if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13)
            {
              goto LABEL_10;
            }

            goto LABEL_18;
          }
        }

        if (sub_18A4A7F68() >= v13)
        {
LABEL_10:
          if ((v13 & 0x8000000000000000) == 0)
          {
            v15 = v6;
            sub_188B380B0(v13, v13, v15);
            swift_endAccess();

            *(v7 + 40) = 0;
            return;
          }

LABEL_19:
          __break(1u);
          swift_endAccess();
          __break(1u);
          return;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_15;
  }
}

id sub_188CC4D48(id result, void *a2, char a3)
{
  if (a3 != -1)
  {
    return sub_188CCA578(result, a2, a3 & 1);
  }

  return result;
}

void sub_188CC4D60()
{
  v1 = &v0[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_content];
  v2 = v0[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_content + 16];
  if (v2 == 255)
  {

    sub_1891E47A8();
  }

  else
  {
    v4 = *v1;
    v3 = *(v1 + 1);
    if (v2)
    {
      v5 = OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_label;
      v6 = *&v0[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_label];
      sub_188CC4D48(v4, v3, v0[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_content + 16]);
      sub_188CCA578(v4, v3, 1);
      if (v6)
      {
        [v6 removeFromSuperview];
      }

      v17 = *&v0[v5];
      *&v0[v5] = 0;

      sub_188CC5064(v4);
      sub_188B4C634(v4, v3, v2);

      sub_188B4C634(v4, v3, v2);
    }

    else
    {
      v7 = OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_customView;
      v8 = *&v0[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_customView];
      if (v8)
      {
        v9 = v4;
        v10 = v3;
        v11 = v8;
        sub_188CC4D48(v4, v3, v2);
        v12 = [v11 superview];
        if (v12)
        {
          v13 = v12;
          sub_188A34624(0, &qword_1ED48F680);
          v14 = v0;
          v15 = v0;
          v16 = sub_18A4A7C88();

          if (v16)
          {
            [v11 removeFromSuperview];
          }

          v0 = v14;
        }

        else
        {
        }
      }

      else
      {
        v18 = v4;
        v19 = v3;
        sub_188CC4D48(v4, v3, v2);
      }

      v20 = *&v0[v7];
      *&v0[v7] = 0;

      [v4 length];
      sub_18A4A7098();
      __break(1u);
    }
  }
}

void sub_188CC5064(void *a1)
{
  v2 = v1;
  v4 = [a1 superview];
  if (!v4 || (v5 = v4, sub_188A34624(0, &qword_1ED48F680), v6 = v1, v7 = sub_18A4A7C88(), v5, v6, (v7 & 1) == 0))
  {
    v8 = OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_customView;
    v9 = *&v2[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_customView];
    if (v9)
    {
      v10 = v9;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_188A34624(0, &qword_1ED48F680);
        v13 = v2;
        v14 = sub_18A4A7C88();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }
    }

    v15 = *&v2[v8];
    *&v2[v8] = 0;

    v16 = *&v2[v8];
    *&v2[v8] = a1;
    v17 = a1;

    [v2 addSubview_];
  }
}

void sub_188CC51D8(void *a1, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

uint64_t sub_188CC5240()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BA30);
  sub_188CC5490();
  return sub_18A4A5618();
}

unint64_t sub_188CC538C()
{
  result = qword_1EA930490;
  if (!qword_1EA930490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930490);
  }

  return result;
}

unint64_t sub_188CC5490()
{
  result = qword_1EA9304A0;
  if (!qword_1EA9304A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9304A0);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_188CC5530(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
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

uint64_t sub_188CC5578()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BA38);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BA30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BA40);
    sub_18A4A44D8();
    AGGraphCreateOffsetAttribute2();
    sub_18A4A44F8();
    sub_188CC5490();
    sub_18A4A5608();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

id sub_188CC56D8()
{
  v1 = [*v0 _borrowedSearchTextFieldClone];
  [v1 setBorderStyle_];
  return v1;
}

id _UIImageWithName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = _UIImageWithNameAndTraitCollection(v1, 0);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_188CC5D78(uint64_t a1)
{
  v2 = v1;
  v18 = [*(v1 + 128) hostContainerView];
  v4 = [*(a1 + 128) hostContainerView];
  if (!v18)
  {
    if (!v4)
    {
      goto LABEL_8;
    }

LABEL_7:
    [*(v2 + 128) stopAnimations];
    v7 = [*(v2 + 128) hostContainerView];
    [v7 removeFromSuperview];

    goto LABEL_8;
  }

  if (!v4)
  {
    goto LABEL_7;
  }

  sub_188A34624(0, &qword_1ED48F680);
  v5 = v18;
  v6 = sub_18A4A7C88();

  if ((v6 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v8 = *(v2 + 48);
  if (v8 && v8 != *(a1 + 48))
  {
    [v8 removeFromSuperview];
  }

  v9 = *(v2 + 56);
  if (v9 && v9 != *(a1 + 56))
  {
    v10 = v9;
    [v10 removeFromSuperview];
    v11 = *(v2 + 72);
    [v11 removeFromSuperview];
  }

  v12 = *(v2 + 80);
  if (v12 && v12 != *(a1 + 80))
  {
    [v12 removeFromSuperview];
  }

  v13 = *(v2 + 96);
  if (v13 && v13 != *(a1 + 96))
  {
    [v13 removeFromSuperview];
  }

  v14 = *(v2 + 120);
  if (v14 && v14 != *(a1 + 120))
  {
    [v14 removeFromSuperview];
  }

  v15 = *(v2 + 136);
  if (v15 && v15 != *(a1 + 136))
  {
    [*(v2 + 144) removeFromSuperview];
  }

  v16 = *(v2 + 152);
  if (v16 && v16 != *(a1 + 152))
  {
    [v16 removeFromSuperview];
  }

  v17 = *(v2 + 160);
  if (v17 && v17 != *(a1 + 160))
  {
    [v17 removeFromSuperview];
  }
}

id _GetTextFieldClearButtonWithCustomColorContrastSettings(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, int a6, char a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = &unk_1ED495000;
  if (!_clearButtonImages)
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
    v18 = _clearButtonImages;
    _clearButtonImages = v17;
  }

  v19 = @"UITextFieldClearButton";
  if (a2 == 3)
  {
    v19 = @"UITextFieldClearButtonLarger";
  }

  if (a2 == 2)
  {
    v20 = @"UITextFieldStarkClearButton";
  }

  else
  {
    v20 = v19;
  }

  v35 = _UIImageWithName(v20);
  if (v13)
  {
    v21 = v14;
    v22 = v13;
    goto LABEL_35;
  }

  if ((a7 & 1) != 0 || dyld_program_sdk_at_least() && (_AXDarkenSystemColors() || _AXSEnhanceBackgroundContrastEnabled()))
  {
    if (a6 && _AXDarkenSystemColors())
    {
      v23 = +[UIColor systemGrayColor];
      v24 = +[UIColor systemDarkGrayColor];
    }

    else
    {
      v23 = +[UIColor systemLightGrayColor];
      v24 = +[UIColor systemGrayColor];
    }
  }

  else if ([v15 userInterfaceIdiom] == 5)
  {
    v23 = +[UIColor tertiaryLabelColor];
    v24 = +[UIColor secondaryLabelColor];
  }

  else
  {
    if ([v15 userInterfaceStyle] == 2)
    {
      v23 = [UIColor colorWithWhite:1.0 alpha:0.1];
      v25 = 1.0;
    }

    else
    {
      v23 = [UIColor colorWithWhite:0.0 alpha:0.1];
      v25 = 0.0;
    }

    v24 = [UIColor colorWithWhite:v25 alpha:0.2];
  }

  v26 = v24;
  if (a1 != 1)
  {
    v21 = v14;
    if (a1 == 2)
    {
      v27 = v23;
    }

    else
    {
      v27 = v24;
    }

    v22 = v27;
    goto LABEL_34;
  }

  if (v14)
  {
    v16 = +[UIColor systemBlueColor];
    if (([v14 isEqual:v16] & 1) == 0)
    {
      v21 = v14;
      v22 = v14;
LABEL_33:

      goto LABEL_34;
    }
  }

  v22 = [UIColor colorWithRed:0.047 green:0.455 blue:0.867 alpha:1.0];
  v21 = v14;
  if (v14)
  {
    goto LABEL_33;
  }

LABEL_34:

LABEL_35:
  v28 = +[UITraitCollection _currentTraitCollectionIfExists];
  [UITraitCollection setCurrentTraitCollection:v15];
  v29 = -[_UITextFieldClearButtonCacheKey initWithVariant:color:]([_UITextFieldClearButtonCacheKey alloc], "initWithVariant:color:", a2, [v22 CGColor]);
  v30 = [_clearButtonImages objectForKey:v29];
  if (v30)
  {
    goto LABEL_43;
  }

  v31 = _TextFieldScalesClearButton();
  if (a2 == 2 || !v31)
  {
    [v35 size];
    v32 = [UIImage _tintedImageForSize:v22 withTint:0 effectsImage:v35 maskImage:0 style:?];
LABEL_41:
    v30 = v32;
    if (!v32)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if ([v15 userInterfaceIdiom] == 6)
  {
    v32 = [UIImage systemImageNamed:@"xmark"];
    goto LABEL_41;
  }

  v34 = [UIImage systemImageNamed:@"xmark.circle.fill"];
  v30 = [v34 imageWithTintColor:v22 renderingMode:1];

  if (v30)
  {
LABEL_42:
    [_clearButtonImages setObject:v30 forKey:v29];
  }

LABEL_43:
  [UITraitCollection setCurrentTraitCollection:v28];

  return v30;
}

id sub_188CC94E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  (*(a4 + 32))(a3, a4);
  v8 = sub_18A4A7258();

  (*(a4 + 24))(a3, a4);
  v9 = sub_18A4A7258();

  (*(a4 + 16))(&v15, a3, a4);
  v10 = v15;
  v11 = (*(a4 + 40))(a3, a4);
  v12 = (*(a4 + 48))(a3, a4);
  v13 = [v7 _defineCGFloatTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v13;
}

void sub_188CC96E4()
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
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  if ([(UIViewController *)v1 _isDeallocInitiated])
  {

    [(UIViewController *)v1 _executeContentUnavailableConfigurationUpdate];
  }

  else
  {
    v45 = v12;
    v46 = v9;
    v47 = v5;
    v48 = v3;
    v49 = v2;
    v19 = [(UIViewController *)v1 _typedStorage];
    v20 = sub_188A4CEC4();

    if (v20)
    {
      sub_18913E3AC(10);
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
    [(UIViewController *)v1 _executeContentUnavailableConfigurationUpdate];
    *(StatusReg + 848) = v22;
    v25 = v6;
    v26 = v51;
    byte_1ED4A3680 = v24;
    v27 = v23;
    sub_188A3F29C(v51, v15, &qword_1EA93E090);
    if ((*(v23 + 48))(v15, 1, v6) == 1)
    {
      sub_188A3F5FC(v26, &qword_1EA93E090);
      sub_188A3F5FC(v15, &qword_1EA93E090);
    }

    else
    {
      v28 = v46;
      (*(v23 + 32))(v46, v15, v6);
      v29 = sub_188ACEB88(v1, 10, &block_descriptor_100_2);
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
      *(v34 + 24) = 10;
      *(v34 + 25) = v29;
      *(v34 + 32) = sub_18913EE24;
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
      sub_188ACEFD4(v36, 10);

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

uint64_t UICollectionView.SupplementaryRegistration.init(elementKind:handler:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v10 = sub_18A4A7258();

  v14[4] = sub_188CCE350;
  v14[5] = v8;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_188CCE214;
  v14[3] = &block_descriptor_12_3;
  v11 = _Block_copy(v14);
  v12 = [objc_opt_self() registrationWithSupplementaryClass:ObjCClassFromMetadata elementKind:v10 configurationHandler:v11];

  _Block_release(v11);

  *a4 = v12;
  return result;
}

uint64_t sub_188CCA1C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

double sub_188CCA298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  [v5 _valueForCGFloatTraitToken_];
  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

__CFString *_UICollectionViewLayoutInvalidationContextIntentDescription(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7100100[a1];
  }
}

id sub_188CCA578(void *a1, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v5 = a1;
    a1 = a2;
    v3 = vars8;
  }

  return a1;
}

uint64_t _s5StateCMa_0()
{
  result = qword_1EA930A00;
  if (!qword_1EA930A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_188CCA770()
{
  result = sub_18A4A2C48();
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

unint64_t sub_188CCA8E0()
{
  result = qword_1EA930A10;
  if (!qword_1EA930A10)
  {
    _s5StateCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930A10);
  }

  return result;
}

void sub_188CCAC84()
{
  swift_beginAccess();
  v1 = *(v0 + 360);
  if (v1 && *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) == 1)
  {
    v2 = v1;
    sub_188B4C524();

    return;
  }

  swift_beginAccess();
  v3 = *(v0 + 400);
  if (v3 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_31:
    v18 = v1;
    v9 = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v5 = v3 & 0xC000000000000001;
    v19 = (v3 + 32);
    v6 = v1;

    if ((v3 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *v19;
      goto LABEL_9;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    v4 = sub_18A4A7F68();
    if (!v4)
    {
      goto LABEL_31;
    }
  }

  v7 = sub_188E4A488(0, v3);
LABEL_9:
  v8 = v7[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

  if (v8 > 7)
  {

    v9 = 0;
LABEL_32:

    CGRectMake();
    return;
  }

  if (v4 == 1)
  {
    v10 = 0;
    if (!v5)
    {
      goto LABEL_26;
    }

LABEL_35:
    v16 = sub_188E4A488(v10, v3);
LABEL_28:
    v17 = v16;

    v9 = v17;
    sub_1891698A4();

    goto LABEL_32;
  }

  v10 = 0;
  while (1)
  {
    v11 = v10 + 1;
    if (!v5)
    {
      break;
    }

    v12 = sub_188E4A488(v10 + 1, v3);
    v13 = __OFADD__(v11, 1);
    v14 = v10 + 2;
    if (v13)
    {
      goto LABEL_23;
    }

LABEL_18:
    v15 = v12[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

    if (v15 < 8)
    {
      ++v10;
      if (v14 != v4)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v12 = *(v3 + 8 * v10 + 40);
  v13 = __OFADD__(v11, 1);
  v14 = v10 + 2;
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  if (v5)
  {
    goto LABEL_35;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_35;
  }

LABEL_26:
  if (v10 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = v19[v10];
    goto LABEL_28;
  }

  __break(1u);
}

id _UISearchSuggestionAllSuggestionsFromGroups(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 count];
  v3 = MEMORY[0x1E695E0F0];
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = [v1 objectAtIndexedSubscript:0];
      v5 = [v4 suggestionItems];
    }

    else
    {
      v4 = [MEMORY[0x1E695DF70] array];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = v1;
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v16;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [*(*(&v15 + 1) + 8 * i) suggestionItems];
            v12 = v11;
            if (v11)
            {
              v13 = v11;
            }

            else
            {
              v13 = v3;
            }

            [v4 addObjectsFromArray:v13];
          }

          v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v8);
      }

      v5 = [v4 copy];
    }

    v3 = v5;
  }

  return v3;
}

void sub_188CCB850(void *a1)
{
  objc_begin_catch(a1);
  if (v1)
  {
    JUMPOUT(0x188CCB81CLL);
  }

  JUMPOUT(0x188CCB810);
}

void sub_188CCBB9C(void *a1)
{
  v1 = a1;
  sub_188CCBBE4();
}

void sub_188CCBBE4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong willMoveToParentViewController_];
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];

      v10.receiver = v0;
      v10.super_class = type metadata accessor for UICorePlatformViewHost();
      objc_msgSendSuper2(&v10, sel_removeFromSuperview);
      [v2 removeFromParentViewController];
      if (sub_188C11BD8())
      {
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938928);
        sub_18A4A5398();
        swift_unknownObjectRelease();
        if (v8)
        {
          ObjectType = swift_getObjectType();
          v6 = (*(v9 + 8))(ObjectType);
          if (v6)
          {
            v7 = v6;
            [v6 setOverrideTraitCollection:0 forChildViewController:v2];
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11.receiver = v0;
    v11.super_class = type metadata accessor for UICorePlatformViewHost();
    objc_msgSendSuper2(&v11, sel_removeFromSuperview);
  }
}

void (*UICollectionLayoutListConfiguration.separatorConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [*(*v1 + 16) separatorConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4;
  return sub_188CCF1C0;
}

id sub_188CCC2EC(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188CE625C();
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setVisualEffect_];
}

uint64_t std::vector<_UIAuxillarySolveResult>::__init_with_size[abi:nn200100]<_UIAuxillarySolveResult*,_UIAuxillarySolveResult*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<_UIAuxillarySolveResult>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void _UIRegionSolveResult::_UIRegionSolveResult(_UIRegionSolveResult *this, _NSRange a2, double a3, double a4, const _UIItemSolveResult *a5)
{
  length = a2.length;
  location = a2.location;
  v11 = *a5;
  v12 = *(a5 + 1);
  v13 = *(a5 + 3);
  *(this + 4) = *(a5 + 2);
  *(this + 5) = v13;
  *(this + 2) = v11;
  *(this + 3) = v12;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<_UIAuxillarySolveResult>::__init_with_size[abi:nn200100]<_UIAuxillarySolveResult*,_UIAuxillarySolveResult*>(this + 96, *(a5 + 8), *(a5 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 9) - *(a5 + 8)) >> 4));
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  std::vector<_UIAuxillarySolveResult>::__init_with_size[abi:nn200100]<_UIAuxillarySolveResult*,_UIAuxillarySolveResult*>(this + 120, *(a5 + 11), *(a5 + 12), 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 12) - *(a5 + 11)) >> 4));
  *(this + 18) = *(a5 + 14);
  *this = location;
  *(this + 1) = length;
  *(this + 2) = a3;
  *(this + 3) = a4;
}

void sub_188CCD4BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<_UIAuxillarySolveResult>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<_UIRegionSolveResult>>(unint64_t a1)
{
  if (a1 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
}

id std::allocator_traits<std::allocator<_UIRegionSolveResult>>::construct[abi:nn200100]<_UIRegionSolveResult,_UIRegionSolveResult const&,void,0>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  std::vector<_UIAuxillarySolveResult>::__init_with_size[abi:nn200100]<_UIAuxillarySolveResult*,_UIAuxillarySolveResult*>(a1 + 96, *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 4));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  std::vector<_UIAuxillarySolveResult>::__init_with_size[abi:nn200100]<_UIAuxillarySolveResult*,_UIAuxillarySolveResult*>(a1 + 120, *(a2 + 120), *(a2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 128) - *(a2 + 120)) >> 4));
  result = *(a2 + 144);
  *(a1 + 144) = result;
  return result;
}

void sub_188CCD5D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<_UIAuxillarySolveResult>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<_UIRegionSolveResult>,_UIRegionSolveResult*>(void **a1, void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *(v5 + 1);
      *a3 = *v5;
      *(a3 + 16) = v6;
      v7 = *(v5 + 2);
      v8 = *(v5 + 3);
      v9 = *(v5 + 5);
      *(a3 + 64) = *(v5 + 4);
      *(a3 + 80) = v9;
      *(a3 + 32) = v7;
      *(a3 + 48) = v8;
      *(a3 + 104) = 0;
      *(a3 + 112) = 0;
      *(a3 + 96) = 0;
      *(a3 + 96) = *(v5 + 6);
      *(a3 + 112) = v5[14];
      v5[12] = 0;
      v5[13] = 0;
      v5[14] = 0;
      *(a3 + 120) = 0;
      *(a3 + 128) = 0;
      *(a3 + 136) = 0;
      *(a3 + 120) = *(v5 + 15);
      v10 = v5[18];
      *(a3 + 136) = v5[17];
      v5[15] = 0;
      v5[16] = 0;
      v5[17] = 0;
      v5[18] = 0;
      *(a3 + 144) = v10;
      v5 += 19;
      a3 += 152;
    }

    while (v5 != a2);
    do
    {
      std::allocator_traits<std::allocator<_UIRegionSolveResult>>::destroy[abi:nn200100]<_UIRegionSolveResult,void,0>(v4);
      v4 += 19;
    }

    while (v4 != a2);
  }
}

double _UIRectUnionOnAxis(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (!CGRectIsNull(*&a2))
  {
    v21.origin.x = a6;
    v21.origin.y = a7;
    v21.size.width = a8;
    v21.size.height = a9;
    if (CGRectIsNull(v21))
    {
      return a2;
    }

    else
    {
      v22.origin.x = a2;
      v22.origin.y = a3;
      v22.size.width = a4;
      v22.size.height = a5;
      *&v18 = CGRectStandardize(v22);
      v23.origin.x = a6;
      v23.origin.y = a7;
      v23.size.width = a8;
      v23.size.height = a9;
      *&v19 = CGRectStandardize(v23);
      if (a1 == 2)
      {
        return v18;
      }

      else
      {
        return fmin(v18, v19);
      }
    }
  }

  return a6;
}

void std::vector<_UIAuxillarySolveResult>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 6;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_188CCDED4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_18A4A2B48();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  sub_18A4A2B18();
  v14[3] = swift_getObjectType();
  v14[0] = a4;

  v12 = a2;
  swift_unknownObjectRetain();
  v11(v12, v10, v14);

  (*(v8 + 8))(v10, v7);
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

uint64_t _UIListEnvironmentFromListStyle(unint64_t a1)
{
  if (a1 < 5)
  {
    return a1 + 2;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIListEnvironment _UIListEnvironmentFromListStyle(_UICollectionViewListLayoutAppearanceStyle)"];
  [v3 handleFailureInFunction:v4 file:@"UITraitListEnvironment.m" lineNumber:126 description:{@"Received unknown list style %ld", a1}];

  return 2;
}

uint64_t sub_188CCE214(uint64_t a1, void *a2)
{
  v4 = sub_18A4A2B48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_18A4A7288();
  sub_18A4A2B18();

  v9 = a2;
  v8();

  return (*(v5 + 8))(v7, v4);
}

char *sub_188CCE410(char *a1, int64_t a2, char a3)
{
  result = sub_188CD4D80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<_UIAuxillarySolveResult>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<_UIAuxillarySolveResult>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<_UIAuxillarySolveResult>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      v10 = v7[1];
      *(v8 + 32) = *(v7 + 4);
      *v8 = v9;
      *(v8 + 16) = v10;
      v11 = *(v7 + 5);
      *(v7 + 5) = 0;
      *(v8 + 40) = v11;
      v7 += 3;
      v8 += 48;
    }

    while (v7 != v5);
    do
    {

      v4 += 6;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_188CCEED0(char a1)
{
  v2 = *(v1 + OBJC_IVAR____UIScrollPocketContainerInteraction_implementation);
  v3 = *(v2 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_isActive);
  *(v2 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_isActive) = a1;
  if (v3 != (a1 & 1))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_1891DC8F4(Strong, a1 & 1);
      [v6 setNeedsUpdateProperties];
    }
  }
}

void sub_188CCF1C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    v3 = sub_188C702D8();
    v4 = *(v2 + 16);
    v5 = v3;
    v8 = v4;

    [v5 setSeparatorConfiguration_];
  }

  else
  {
    v6 = sub_188C702D8();
    v7 = *(v2 + 16);
    v5 = v6;
    v8 = v7;

    [v5 setSeparatorConfiguration_];
  }
}

unint64_t sub_188CCF288(uint64_t a1)
{
  result = sub_188CCF2B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188CCF2B0()
{
  result = qword_1EA930FD8;
  if (!qword_1EA930FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930FD8);
  }

  return result;
}

unint64_t sub_188CCF304(uint64_t a1)
{
  result = sub_188CCF32C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188CCF32C()
{
  result = qword_1EA930FF0;
  if (!qword_1EA930FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930FF0);
  }

  return result;
}

unint64_t sub_188CCF4D4()
{
  result = qword_1EA930FE8;
  if (!qword_1EA930FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930FE8);
  }

  return result;
}

unint64_t sub_188CCF52C()
{
  result = qword_1EA931108;
  if (!qword_1EA931108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA931108);
  }

  return result;
}

uint64_t sub_188CCF580(uint64_t a1)
{
  v25[4] = *MEMORY[0x1E69E9840];
  sub_188A55598(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93E338);
  swift_dynamicCast();
  v2 = v24[0];
  if (v24[0] >> 62)
  {
    v3 = sub_18A4A7F68();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v23 = MEMORY[0x1E69E7CC0];
  sub_188CCF904(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
  }

  v4 = 0;
  v5 = v23;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_188E49AF8(v4, v2);
    }

    else
    {
      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    type metadata accessor for CGColor(0);
    v25[3] = v8;
    v25[0] = v7;
    v21 = 0.0;
    v22 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    sub_188A55598(v25, v24);
    swift_dynamicCast();
    v9 = [objc_allocWithZone(UIColor) initWithCGColor_];

    [v9 getRed:&v22 green:&v21 blue:&v20 alpha:&v19];
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    v10 = v19;
    v11 = v20;
    v13 = v21;
    v12 = v22;
    v23 = v5;
    v15 = *(v5 + 16);
    v14 = *(v5 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_188CCF904((v14 > 1), v15 + 1, 1);
      v5 = v23;
    }

    ++v4;
    *(v5 + 16) = v15 + 1;
    v16 = (v5 + 32 * v15);
    v16[4] = v10 * v12;
    v16[5] = v10 * v13;
    v16[6] = v10 * v11;
    v16[7] = v10;
  }

  while (v3 != v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);

  return v5;
}

char *sub_188CCF800(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934958);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_188CCF904(char *a1, int64_t a2, char a3)
{
  result = sub_188CCF800(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_188CCF924(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) == 0))
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v23 = v8;
    if (Strong)
    {
      v12 = Strong;
      if (a1)
      {
        v13 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v13 = [Strong layer];
      }

      v14 = v13;

      v15 = sub_18A4A7258();
      v16 = [v14 valueForKeyPath_];

      if (v16)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v28, 0, sizeof(v28));
      }

      sub_188A3F29C(v28, &v26, &qword_1EA934050);
      if (v27)
      {
        sub_188A55538(&v26, v25);
        sub_188A55598(v25, v24);
        v17 = sub_188CCF580(v24);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        sub_188A3F5FC(v28, &qword_1EA934050);
LABEL_15:
        v18 = swift_unknownObjectWeakLoadStrong();
        v19 = swift_allocObject();
        swift_weakInit();
        v20 = swift_allocObject();
        *(v20 + 16) = v19;
        *(v20 + 24) = a1 & 1;
        *(v20 + 32) = a2;
        *(v20 + 40) = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364B8);
        swift_allocObject();

        v10 = sub_188CCFD10(v17, v18, sub_188F0E03C, v20);

        *(v10 + 120) = 1;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v26 = *(v4 + 48);
        *(v4 + 48) = 0x8000000000000000;
        sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, &v26, &qword_1EA931000, &qword_1EA9364B8);

        *(v4 + 48) = v26;
        swift_endAccess();

        sub_188A34360(&qword_1EA931000, &qword_1EA9364B8);
        v8 = v23;
        goto LABEL_16;
      }

      sub_188A3F5FC(v28, &qword_1EA934050);
    }

    v17 = 0;
    goto LABEL_15;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364B8);
  v10 = swift_dynamicCastClassUnconditional();
  sub_188A34360(&qword_1EA931000, &qword_1EA9364B8);
  swift_unknownObjectRetain();
LABEL_16:
  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

int64x2_t *sub_188CCFD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = a2;
  v22 = sub_18A4A7A58();
  v9 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v21.i8[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_18A4A6E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18A4A7A38();
  MEMORY[0x1EEE9AC00](v13 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940DC8);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  v4[2].i64[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B7E0);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  v4[2].i64[1] = v15;
  v21 = vdupq_n_s64(1uLL);
  v4[3] = v21;
  i64 = v4[3].i64;
  swift_unknownObjectWeakInit();
  v4[4].i64[1] = 0;
  v4[5] = v21;
  v4[6].i8[0] = 0;
  v4[6].i64[1] = 1;
  swift_unknownObjectWeakInit();
  v4[8].i8[8] = 0;
  v4[9].i64[0] = a3;
  v4[9].i64[1] = a4;
  sub_188A5E418();

  sub_18A4A7A28();
  sub_18A4A6E38();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8090], v22);
  v4[1].i64[0] = sub_18A4A7A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940DD0);
  v17 = swift_allocObject();
  *(v17 + 32) = 0;
  swift_bridgeObjectRetain_n();

  *(v17 + 16) = a1;
  *(v17 + 24) = a1;

  v5[1].i64[1] = v17;
  swift_beginAccess();
  v18 = v5[3].i64[1];
  v5[3].i64[1] = 1;
  sub_188CD0030(v18);
  swift_beginAccess();
  v19 = *i64;
  *i64 = 1;
  sub_188CD0030(v19);
  v5[7].i8[8] = 0;
  v5[8].i64[0] = 0;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t sub_188CD0030(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_188CD0040@<X0>(float64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v7 = v6;
  v165 = a5;
  *&v166 = a2;
  v164.f64[0] = a1;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936598);
  v161 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v12 = &v152 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367E8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  *&v160.f64[0] = v152.f64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v152 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v152 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v152 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936590);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v152 - v28;
  *(v7 + 24) = a3;
  if (a4 && v26 && *(a4 + 16) != *(v26 + 16))
  {
    v39 = v26;
    sub_188CD0030(*(v7 + 32));
    *(v7 + 32) = 1;
    sub_188CD0030(*(v7 + 8));
    *v7 = 0;
    *(v7 + 8) = 1;
    sub_188CD0030(*(v7 + 16));
    *(v7 + 16) = 1;
    v41 = v165;
    v40 = v166;

    return sub_188F099A8(v40, v39, 1, v39, v41);
  }

  v158 = v27;
  v159 = v12;
  v30 = a4;
  v162 = v26;
  v31 = v166;
  sub_188AA72A8(v166, &v195);
  if (BYTE8(v196[4]) != 2)
  {
    sub_188AA7808(&v195);
    sub_188AA72A8(v31, &v195);
    if (BYTE8(v196[4]) == 1)
    {
      v182 = v196[1];
      v183 = v196[2];
      v184 = v196[3];
      v180 = v195;
      v181 = v196[0];
      sub_188A5EBAC(&v180, &v195);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936558);
      swift_dynamicCast();
      sub_188A5EBAC((&v182 + 8), &v168);
      swift_dynamicCast();
      v35 = v167[0];
      v36 = v192;
      v37 = v165;
      *v165 = v192;
      *(v37 + 8) = v35;
      *(v37 + 16) = v35;
      *(v37 + 24) = xmmword_18A650B90;
      *(v37 + 40) = v36;
      swift_storeEnumTagMultiPayload();
    }

    sub_188AA7808(&v195);
    v156 = v30;
    if ((a3 & 1) == 0 || (v42 = CACurrentMediaTime(), v43 = v42 - *v7, a6 * 0.9 >= v43))
    {
      v155 = 0;
      goto LABEL_46;
    }

    if (*v7 == 0.0)
    {
      v155 = 0;
LABEL_45:
      sub_188CD0030(*(v7 + 8));
      *(v7 + 8) = v30;
      *v7 = v42;

LABEL_46:
      v157 = *(v7 + 16);
      *(v7 + 16) = v162;
      sub_188A3F29C(*&v164.f64[0], v20, &qword_1EA9367E8);
      v72 = *(v161 + 48);
      v73 = v163;
      if (v72(v20, 1, v163) == 1)
      {

        sub_188A3F5FC(v20, &qword_1EA9367E8);
        v74 = v73;
        goto LABEL_56;
      }

      if (swift_getEnumCaseMultiPayload())
      {

        sub_188A3F5FC(v20, &qword_1EA936598);
        v74 = v163;
        goto LABEL_56;
      }

      v75 = *(v20 + 7);
      v197 = *(v20 + 6);
      v198 = v75;
      v199 = *(v20 + 8);
      v76 = *(v20 + 3);
      v196[1] = *(v20 + 2);
      v196[2] = v76;
      v77 = *(v20 + 5);
      v196[3] = *(v20 + 4);
      v196[4] = v77;
      v78 = *(v20 + 1);
      v195 = *v20;
      v196[0] = v78;
      v79 = *(v20 + 18);
      v80 = *(v20 + 19);
      v81 = *(v20 + 20);
      *(v201 + 8) = *(v20 + 168);
      v82 = *(v20 + 23);
      *&v200 = v79;
      *(&v200 + 1) = v80;
      *(&v201[1] + 1) = v82;
      v161 = v81;
      *&v201[0] = v81;
      v83 = v166;
      sub_188AA72A8(v166, &v192);
      if (v194 == 3 && v192 == 1 && (v84 = vorrq_s8(vorrq_s8(*&v193[8], *&v193[40]), vorrq_s8(*&v193[24], *&v193[56])), !(*&vorr_s8(*v84.i8, *&vextq_s8(v84, v84, 8uLL)) | *v193 | *(&v192 + 1))))
      {
        v85 = v162;

        sub_188CD0030(v157);
        sub_188AA7808(&v192);

        *(&v200 + 1) = v85;
        v86 = v200;
        v178 = v201[0];
        v87 = v201[0];
        v179 = v201[1];
        v89 = v196[2];
        v172 = v196[3];
        v88 = v196[3];
        v173 = v196[4];
        v90 = v196[4];
        v174 = v197;
        v91 = v197;
        v175 = v198;
        v168 = v195;
        v169 = v196[0];
        v93 = v195;
        v92 = v196[0];
        v170 = v196[1];
        v94 = v196[1];
        v171 = v196[2];
        v95 = v198;
        v176 = v199;
        v177 = v200;
        v96 = v165;
        v165[8] = v199;
        v96[9] = v86;
        v97 = v201[1];
        v96[10] = v87;
        v96[11] = v97;
        v96[4] = v88;
        v96[5] = v90;
        v96[6] = v91;
        v96[7] = v95;
        *v96 = v93;
        v96[1] = v92;
        v96[2] = v94;
        v96[3] = v89;
        swift_storeEnumTagMultiPayload();
        v188 = v199;
        v189 = v200;
        v190 = v201[0];
        v191 = v201[1];
        v184 = v196[3];
        v185 = v196[4];
        v186 = v197;
        v187 = v198;
        v180 = v195;
        v181 = v196[0];
        v182 = v196[1];
        v183 = v196[2];
      }

      else
      {

        sub_188AA7808(&v192);
        sub_188AA72A8(v83, &v168);
        v74 = v163;
        if (BYTE8(v173))
        {
          sub_188AA7808(&v168);
          v188 = v199;
          v189 = v200;
          v190 = v201[0];
          v191 = v201[1];
          v184 = v196[3];
          v185 = v196[4];
          v186 = v197;
          v187 = v198;
          v180 = v195;
          v181 = v196[0];
          v182 = v196[1];
          v183 = v196[2];
          sub_188A3F5FC(&v180, &qword_1EA9367F8);
LABEL_56:
          v98 = v166;
          sub_188A3F29C(*&v164.f64[0], v17, &qword_1EA9367E8);
          if (v72(v17, 1, v74) == 1)
          {
            v99 = &qword_1EA9367E8;
          }

          else
          {
            if (swift_getEnumCaseMultiPayload() == 3)
            {
              v100 = *(v17 + 1);
              sub_188AA72A8(v98, &v195);
              if (BYTE8(v196[4]) == 3 && (v101 = vorrq_s8(vorrq_s8(*(v196 + 8), *(&v196[2] + 8)), vorrq_s8(*(&v196[1] + 8), *(&v196[3] + 8))), !(*&vorr_s8(*v101.i8, *&vextq_s8(v101, v101, 8uLL)) | *&v196[0] | *(&v195 + 1) | v195)) || (sub_188AA7808(&v195), sub_188AA72A8(v98, &v195), BYTE8(v196[4]) == 3) && v195 == 1 && (v102 = vorrq_s8(vorrq_s8(*(v196 + 8), *(&v196[2] + 8)), vorrq_s8(*(&v196[1] + 8), *(&v196[3] + 8))), !(*&vorr_s8(*v102.i8, *&vextq_s8(v102, v102, 8uLL)) | *&v196[0] | *(&v195 + 1))))
              {
                sub_188CD0030(v157);

                sub_188AA7808(&v195);
                v103 = v165;
                *v165 = v162;
                *(v103 + 8) = v100;
                swift_storeEnumTagMultiPayload();
              }

              sub_188AA7808(&v195);
              sub_188AA72A8(v98, &v195);
              if (!BYTE8(v196[4]))
              {

                sub_188F099A8(v98, v156, v100, v162, v165);

                sub_188CD0030(v157);
              }

              sub_188AA7808(&v195);
              goto LABEL_67;
            }

            v99 = &qword_1EA936598;
          }

          sub_188A3F5FC(v17, v99);
LABEL_67:
          v104 = *&v160.f64[0];
          sub_188A3F29C(*&v164.f64[0], *&v160.f64[0], &qword_1EA9367E8);
          if (v72(v104, 1, v74) == 1)
          {
            sub_188A3F5FC(v104, &qword_1EA9367E8);
            v105 = 1;
            v106 = v156;
          }

          else
          {
            sub_188A3F29C(v104, v159, &qword_1EA936598);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload > 1)
            {
              if (EnumCaseMultiPayload == 2)
              {
                v114 = v158;
                sub_188A3F704(v159, v158, &qword_1EA936590);
                v105 = sub_188EF5078();
                v115 = v114;
                v104 = *&v160.f64[0];
                v98 = v166;
                sub_188A3F5FC(v115, &qword_1EA936590);
              }

              else
              {
                v105 = *(v159 + 1);
              }
            }

            else if (EnumCaseMultiPayload)
            {

              v104 = *&v160.f64[0];

              v105 = 0;
            }

            else
            {
              v108 = *(v159 + 9);
              v199 = *(v159 + 8);
              v200 = v108;
              v109 = *(v159 + 11);
              v201[0] = *(v159 + 10);
              v201[1] = v109;
              v110 = *(v159 + 5);
              v196[3] = *(v159 + 4);
              v196[4] = v110;
              v111 = *(v159 + 7);
              v197 = *(v159 + 6);
              v198 = v111;
              v112 = *(v159 + 1);
              v195 = *v159;
              v196[0] = v112;
              v113 = *(v159 + 3);
              v196[1] = *(v159 + 2);
              v196[2] = v113;
              v105 = *&v201[0];

              sub_188A3F5FC(&v195, &qword_1EA9367F8);
            }

            v106 = v156;
            sub_188A3F5FC(v104, &qword_1EA936598);
          }

          sub_188F099A8(v98, v106, v105, v162, v165);
          sub_188CD0030(v157);
          return sub_188CD0030(v105);
        }

        *&v193[16] = v170;
        *&v193[32] = v171;
        *&v193[48] = v172;
        *&v193[64] = v173;
        v192 = v168;
        *v193 = v169;
        v116 = *(&v170 + 1);
        if ((a3 & 1) == 0)
        {
          if ((*&v193[24] & 0x8000000000000000) != 0 && *&v193[56] > 0.0)
          {
            sub_188F0AA6C(&v201[1], *(v7 + 32), *&v193[56]);
          }

          sub_188CD0030(*(v7 + 32));
          *(v7 + 32) = 1;
          *v7 = 0;
        }

        v117 = v157;
        if (v116 < 0)
        {
          v131 = *&v193[64];
          if (*&v193[64] > 0.0 && v157 != 1)
          {
            v132 = *&v192;

            v133 = sub_188CD18C0(v162, v117);
            if (v133)
            {
              v135 = *(v133 + 16);
              if (v135)
              {
                *&v134 = 6.28318531 / v132 * (6.28318531 / v132) * v131;
                v166 = v134;
                *&v180 = MEMORY[0x1E69E7CC0];
                v136 = v133;
                sub_188CCF904(0, v135, 0);
                v137 = *&v166;
                v138 = v180;
                v139 = *(v180 + 16);
                v140 = 32 * v139;
                v141 = (v136 + 48);
                do
                {
                  v142 = v141[-1];
                  v143 = *v141;
                  *&v180 = v138;
                  v144 = *(v138 + 24);
                  v145 = v139 + 1;
                  if (v139 >= v144 >> 1)
                  {
                    v164 = v142;
                    v160 = v143;
                    sub_188CCF904((v144 > 1), v139 + 1, 1);
                    v143 = v160;
                    v142 = v164;
                    v137 = *&v166;
                    v138 = v180;
                  }

                  *(v138 + 16) = v145;
                  v146 = (v138 + v140);
                  v146[2] = vmulq_n_f64(v142, v137);
                  v146[3] = vmulq_n_f64(v143, v137);
                  v140 += 32;
                  v141 += 2;
                  v139 = v145;
                  --v135;
                }

                while (v135);
              }

              else
              {

                v138 = MEMORY[0x1E69E7CC0];
              }

              v147 = v161;
              if (v161)
              {
                v148 = *(v161 + 16);
                v149 = *(v138 + 16);
                if (v148 == v149)
                {

                  v151 = sub_188EF6C40(v150, v138);

                  swift_bridgeObjectRelease_n();
                  sub_188CD0030(v117);

                  *&v201[0] = v151;
                }

                else if (v149 >= v148)
                {

                  sub_188CD0030(v117);

                  *&v201[0] = v138;
                }

                else
                {
                  sub_188CD0030(v117);

                  *&v201[0] = v147;
                }
              }

              else
              {
                sub_188CD0030(v117);
                *&v201[0] = v138;
              }
            }

            else
            {
              sub_188CD0030(v117);
              *&v201[0] = v161;
            }
          }
        }

        sub_188AA79A0(&v192, 0);
        sub_188CD0030(v117);
        v118 = v162;

        *(&v200 + 1) = v118;
        v119 = v200;
        v120 = v201[0];
        v178 = v201[0];
        v179 = v201[1];
        v121 = v196[3];
        v122 = v196[2];
        v172 = v196[3];
        v173 = v196[4];
        v123 = v196[4];
        v124 = v197;
        v174 = v197;
        v175 = v198;
        v168 = v195;
        v169 = v196[0];
        v126 = v195;
        v125 = v196[0];
        v127 = v196[1];
        v170 = v196[1];
        v171 = v196[2];
        v128 = v198;
        v176 = v199;
        v177 = v200;
        v129 = v165;
        v165[8] = v199;
        v129[9] = v119;
        v130 = v201[1];
        v129[10] = v120;
        v129[11] = v130;
        v129[4] = v121;
        v129[5] = v123;
        v129[6] = v124;
        v129[7] = v128;
        *v129 = v126;
        v129[1] = v125;
        v129[2] = v127;
        v129[3] = v122;
        swift_storeEnumTagMultiPayload();
        v188 = v199;
        v189 = v200;
        v190 = v201[0];
        v191 = v201[1];
        v184 = v196[3];
        v185 = v196[4];
        v186 = v197;
        v187 = v198;
        v180 = v195;
        v181 = v196[0];
        v182 = v196[1];
        v183 = v196[2];
      }

      sub_188A3F29C(&v168, v167, &qword_1EA9367F8);
      return sub_188A3F5FC(&v180, &qword_1EA9367F8);
    }

    v47 = (v7 + 32);
    if (*(v7 + 32) == 1)
    {
      v155 = 0;
      *v47 = 0;
      goto LABEL_45;
    }

    *&v195 = v162;
    v157 = v7;
    v48 = *(v7 + 16);

    if (v48 != 1)
    {
      sub_188F0D090(v48);
      v49 = sub_188CD18C0(v162, v48);
      sub_188CD0030(v48);

      *&v195 = v49;
    }

    sub_188CD1B20(1.0 / v43);
    sub_188CD1B20(0.25);
    v50 = *v47;
    if (*v47 == 1)
    {
      v155 = 0;
      v7 = v157;
LABEL_44:

      goto LABEL_45;
    }

    if (v195)
    {
      v51 = *(v195 + 16);
      if (v51)
      {
        *&v180 = MEMORY[0x1E69E7CC0];
        v52 = v195;
        sub_188CCF904(0, v51, 0);
        v53 = v180;
        v54 = *(v180 + 16);
        v55 = 32 * v54;
        v56 = v52 + 3;
        __asm { FMOV            V2.2D, #0.75 }

        do
        {
          v62 = v56[-1];
          v63 = *v56;
          *&v180 = v53;
          v64 = *(v53 + 24);
          v65 = v54 + 1;
          if (v54 >= v64 >> 1)
          {
            v155 = v54 + 1;
            v153 = v62;
            v154 = _Q2;
            v152 = v63;
            sub_188CCF904((v64 > 1), v54 + 1, 1);
            v63 = v152;
            v62 = v153;
            v65 = v155;
            _Q2 = v154;
            v53 = v180;
          }

          *(v53 + 16) = v65;
          v66 = (v53 + v55);
          v66[2] = vmulq_f64(v62, _Q2);
          v66[3] = vmulq_f64(v63, _Q2);
          v55 += 32;
          v56 += 2;
          v54 = v65;
          --v51;
        }

        while (v51);
        v50 = *v47;
        v7 = v157;
        if (!*v47)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v155 = 0;
        v53 = MEMORY[0x1E69E7CC0];
        v7 = v157;
        if (!v50)
        {
          goto LABEL_43;
        }
      }

      v67 = *(v50 + 16);
      v68 = *(v53 + 16);
      if (v67 == v68)
      {
        v69 = v53;

        v157 = sub_188EF6C40(v70, v69);
        v155 = 0;
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v53 = v157;
      }

      else
      {
        if (v68 >= v67)
        {
          v71 = v53;

          v53 = v71;
LABEL_42:
          v155 = 0;
          goto LABEL_43;
        }

        v155 = 0;
        v53 = v50;
      }
    }

    else
    {
      v155 = 0;
      v53 = v50;
      v7 = v157;
    }

LABEL_43:
    *v47 = v53;
    goto LABEL_44;
  }

  v32 = v195;
  v33 = BYTE8(v195);
  sub_188A3F29C(*&v164.f64[0], v23, &qword_1EA9367E8);
  if ((*(v161 + 48))(v23, 1, v163) == 1)
  {
    sub_188A3F5FC(v23, &qword_1EA9367E8);
    v34 = v30;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_188A3F704(v23, v29, &qword_1EA936590);
      sub_188EF7804(v32, v162);

      sub_188A3F704(v29, v165, &qword_1EA936590);
      return swift_storeEnumTagMultiPayload();
    }

    v34 = v30;
    sub_188A3F5FC(v23, &qword_1EA936598);
  }

  v44 = v165;
  *v165 = 0;
  *(v44 + 40) = 0;
  sub_188CCF32C();
  v45 = v162;

  sub_18A4A49B8();
  v46 = *(v24 + 64);
  *(v44 + 8) = v32;
  *(v44 + 16) = v34;
  *(v44 + 24) = v34;
  *(v44 + 32) = v45;
  *(v44 + v46) = v33;
  swift_storeEnumTagMultiPayload();
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_188CD121C(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936590);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936598);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  sub_188A3F704(v2, &v29 - v8, &qword_1EA936598);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v9, v6, &qword_1EA936590);
      v17 = sub_188CD14F4(a1);
      sub_188A3F704(v6, v2, &qword_1EA936590);
      swift_storeEnumTagMultiPayload();
      return v17;
    }

    v29 = *v9;
    *v2 = v29;
    swift_storeEnumTagMultiPayload();
    v17 = v29;
LABEL_8:

    return v17;
  }

  if (EnumCaseMultiPayload)
  {
    v24 = *(v9 + 2);
    v25 = *(v9 + 5);
    v42 = *v9;
    v44 = *(v9 + 24);
    v43 = v24;
    v45 = v25;
    v17 = sub_188F0CD3C(a1);
    v26 = v43;
    v27 = v45;
    *v2 = v42;
    *(v2 + 16) = v26;
    *(v2 + 24) = v44;
    *(v2 + 40) = v27;
    swift_storeEnumTagMultiPayload();
    goto LABEL_8;
  }

  v11 = *(v9 + 9);
  v38 = *(v9 + 8);
  v39 = v11;
  v12 = *(v9 + 11);
  v40 = *(v9 + 10);
  v41 = v12;
  v13 = *(v9 + 5);
  v34 = *(v9 + 4);
  v35 = v13;
  v14 = *(v9 + 7);
  v36 = *(v9 + 6);
  v37 = v14;
  v15 = *(v9 + 1);
  v30 = *v9;
  v31 = v15;
  v16 = *(v9 + 3);
  v32 = *(v9 + 2);
  v33 = v16;
  v17 = sub_188EE299C(a1);
  v18 = v39;
  *(v2 + 128) = v38;
  *(v2 + 144) = v18;
  v19 = v41;
  *(v2 + 160) = v40;
  *(v2 + 176) = v19;
  v20 = v35;
  *(v2 + 64) = v34;
  *(v2 + 80) = v20;
  v21 = v37;
  *(v2 + 96) = v36;
  *(v2 + 112) = v21;
  v22 = v31;
  *v2 = v30;
  *(v2 + 16) = v22;
  v23 = v33;
  *(v2 + 32) = v32;
  *(v2 + 48) = v23;
  swift_storeEnumTagMultiPayload();
  return v17;
}

uint64_t sub_188CD14F4(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365A8);
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  *v2 = *v2 + a1;
  if (*(v2 + 41) > 1u)
  {
    if (*(v2 + 41) != 2)
    {
      goto LABEL_9;
    }

    v11 = 3;
  }

  else
  {
    if (*(v2 + 41))
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    *v2 = 0;
  }

  *(v2 + 41) = v11;
LABEL_9:
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936590) + 60);
  (*(v5 + 16))(v7, v2 + v20, v4);
  sub_188CCF32C();
  sub_18A4A4D68();
  v19 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365B0);
  sub_188A34360(&qword_1EA9365B8, &qword_1EA9365B0);
  sub_18A4A4D98();
  v12 = *(v2 + 32);
  v13 = *(v2 + 16);
  v22 = sub_188CD18C0(v12, v13);
  sub_18A4A6C68();

  sub_18A4A4D88();
  (*(v5 + 40))(v2 + v20, v7, v19);
  v14 = v23;
  if (v23 != 1)
  {
    if (v13)
    {
      if (!v23)
      {

        goto LABEL_19;
      }

      v15 = *(v13 + 16);
      v16 = *(v23 + 16);
      if (v15 == v16)
      {

        sub_188F0D090(v14);
        v17 = sub_188EF6C40(v13, v14);

        sub_188CD0030(v14);
        sub_188CD0030(v14);
        v13 = v17;
LABEL_19:
        (*(v21 + 8))(v10, v8);

        *(v2 + 24) = v13;
        return v13;
      }

      if (v16 < v15)
      {

        sub_188CD0030(v14);
        goto LABEL_19;
      }
    }

    v13 = v23;
    goto LABEL_19;
  }

  (*(v21 + 8))(v10, v8);
  *(v2 + 40) = 1;

  return v12;
}

uint64_t sub_188CD18C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (!a2)
    {
    }

    v2 = *(a1 + 16);
    v3 = *(a2 + 16);
    if (v2 == v3)
    {

      v6 = sub_188CD24F8(v5, a2);

      return v6;
    }

    if (v3 < v2)
    {
    }

    v19 = a2;
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    v8 = *(a2 + 16);
    result = MEMORY[0x1E69E7CC0];
    if (!v8)
    {
      return result;
    }

    v22 = MEMORY[0x1E69E7CC0];

    sub_188CCF904(0, v8, 0);
    v10 = v22;
    v11 = *(v22 + 16);
    v12 = 32 * v11;
    v13 = (a2 + 48);
    do
    {
      v14 = v13[-1];
      v15 = *v13;
      v23 = v10;
      v16 = *(v10 + 24);
      v17 = v11 + 1;
      if (v11 >= v16 >> 1)
      {
        v20 = *v13;
        v21 = v13[-1];
        sub_188CCF904((v16 > 1), v11 + 1, 1);
        v15 = v20;
        v14 = v21;
        v10 = v23;
      }

      *(v10 + 16) = v17;
      v18 = (v10 + v12);
      v18[2] = vnegq_f64(v14);
      v18[3] = vnegq_f64(v15);
      v12 += 32;
      v13 += 2;
      v11 = v17;
      --v8;
    }

    while (v8);
    v19 = v10;
  }

  return v19;
}

double sub_188CD1A44(uint64_t a1)
{
  result = 0.0;
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      if (v2 < 4)
      {
        v3 = 0;
LABEL_8:
        v7 = v2 - v3;
        v8 = (a1 + 32 * v3 + 48);
        do
        {
          v9 = vmulq_f64(v8[-1], v8[-1]);
          v10 = vmulq_f64(*v8, *v8);
          result = result + vaddq_f64(vaddq_f64(vaddq_f64(v9, vdupq_laneq_s64(v9, 1)), v10), vdupq_laneq_s64(v10, 1)).f64[0];
          v8 += 2;
          --v7;
        }

        while (v7);
        return result;
      }

      v3 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      v4 = (a1 + 96);
      v5 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v6 = v4 - 8;
        v11 = vld4q_f64(v6);
        v12 = vld4q_f64(v4);
        v11.val[0] = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_f64(v11.val[0], v11.val[0]), vmulq_f64(v11.val[1], v11.val[1])), vmulq_f64(v11.val[2], v11.val[2])), vmulq_f64(v11.val[3], v11.val[3]));
        v11.val[1] = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_f64(v12.val[0], v12.val[0]), vmulq_f64(v12.val[1], v12.val[1])), vmulq_f64(v12.val[2], v12.val[2])), vmulq_f64(v12.val[3], v12.val[3]));
        result = result + v11.val[0].f64[0] + v11.val[0].f64[1] + v11.val[1].f64[0] + v11.val[1].f64[1];
        v4 += 16;
        v5 -= 4;
      }

      while (v5);
      if (v2 != v3)
      {
        goto LABEL_8;
      }
    }
  }

  return result;
}

void sub_188CD1B20(double a1)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v16 = MEMORY[0x1E69E7CC0];
      sub_188CCF904(0, v3, 0);
      v4 = a1;
      v5 = *(v16 + 16);
      v6 = 32 * v5;
      v7 = (v2 + 48);
      do
      {
        v8 = v7[-1];
        v9 = *v7;
        v10 = *(v16 + 24);
        v11 = v5 + 1;
        if (v5 >= v10 >> 1)
        {
          v13 = *v7;
          v14 = v7[-1];
          sub_188CCF904((v10 > 1), v5 + 1, 1);
          v9 = v13;
          v8 = v14;
          v4 = a1;
        }

        *(v16 + 16) = v11;
        v12 = (v16 + v6);
        v12[2] = vmulq_n_f64(v8, v4);
        v12[3] = vmulq_n_f64(v9, v4);
        v6 += 32;
        v7 += 2;
        v5 = v11;
        --v3;
      }

      while (v3);

      *v1 = v16;
    }

    else
    {

      *v1 = MEMORY[0x1E69E7CC0];
    }
  }
}

uint64_t sub_188CD1C40(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_188CD18C0(*a1, *a2);

  *a1 = v3;
  return result;
}

uint64_t sub_188CD1C88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936590);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v23 - v2 + 16;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936598);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8 + 16;
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA936598);
  sub_188A3F29C(v9, v6, &qword_1EA936598);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F5FC(v9, &qword_1EA936598);
      sub_188A3F704(v6, v3, &qword_1EA936590);
      v20 = v3[40];
      sub_188A3F5FC(v3, &qword_1EA936590);
    }

    else
    {
      sub_188A3F5FC(v9, &qword_1EA936598);

      v20 = 1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v20 = sub_188F0D61C(*(v6 + 2), *(v6 + 5));
    }

    else
    {
      v12 = *(v6 + 8);
      v13 = *(v6 + 10);
      v14 = *(v6 + 11);
      v23[9] = *(v6 + 9);
      v23[10] = v13;
      v23[11] = v14;
      v15 = *(v6 + 5);
      v23[4] = *(v6 + 4);
      v23[5] = v15;
      v16 = *(v6 + 7);
      v23[6] = *(v6 + 6);
      v23[7] = v16;
      v23[8] = v12;
      v17 = *(v6 + 1);
      v23[0] = *v6;
      v18 = *(v6 + 2);
      v19 = *(v6 + 3);
      v23[1] = v17;
      v23[2] = v18;
      v23[3] = v19;
      v20 = sub_188EE8E28();
      sub_188A3F5FC(v23, &qword_1EA9367F8);
    }

    sub_188A3F5FC(v9, &qword_1EA936598);
  }

  return v20 & 1;
}

uint64_t sub_188CD1F3C(uint64_t a1)
{
  v3 = **(v1 + 16);

  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_188CD1F8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936590);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936598);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA936598);
  sub_188A3F704(v9, v6, &qword_1EA936598);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v6, v3, &qword_1EA936590);
      v18 = *(v3 + 4);

      sub_188A3F5FC(v3, &qword_1EA936590);
      return v18;
    }

    v18 = *v6;
LABEL_8:

    return v18;
  }

  if (EnumCaseMultiPayload)
  {
    v18 = *(v6 + 5);

    goto LABEL_8;
  }

  v12 = *(v6 + 9);
  v20[8] = *(v6 + 8);
  v21 = v12;
  v13 = *(v6 + 11);
  v22 = *(v6 + 10);
  v23 = v13;
  v14 = *(v6 + 5);
  v20[4] = *(v6 + 4);
  v20[5] = v14;
  v15 = *(v6 + 7);
  v20[6] = *(v6 + 6);
  v20[7] = v15;
  v16 = *(v6 + 1);
  v20[0] = *v6;
  v20[1] = v16;
  v17 = *(v6 + 3);
  v20[2] = *(v6 + 2);
  v20[3] = v17;
  v18 = *(&v21 + 1);

  sub_188A3F5FC(v20, &qword_1EA9367F8);
  return v18;
}

unint64_t sub_188CD2200(uint64_t a1)
{
  result = sub_188CC538C();
  *(a1 + 8) = result;
  return result;
}

uint64_t UIViewController.contentUnavailableConfiguration.setter(uint64_t a1)
{
  sub_188A3F29C(a1, v17, &qword_1EA9374C8);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
    if (swift_dynamicCast())
    {
      [v1 setContentUnavailableConfiguration_];

      v3 = a1;
      return sub_188A3F5FC(v3, &qword_1EA9374C8);
    }
  }

  else
  {
    sub_188A3F5FC(v17, &qword_1EA9374C8);
  }

  sub_188A3F29C(a1, &v14, &qword_1EA9374C8);
  if (v15)
  {
    sub_188A5EBAC(&v14, v17);
    v4 = type metadata accessor for _UICustomContentConfiguration();
    sub_188A53994(v17, &v14);
    v5 = v15;
    v6 = v16;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(&v14, v15);
    v8 = MEMORY[0x1EEE9AC00](v7);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v10, v8);
    v12 = sub_188C7D408(v10, v4, v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(&v14);
    [v1 setContentUnavailableConfiguration_];

    sub_188A3F5FC(a1, &qword_1EA9374C8);
    return __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  sub_188A3F5FC(&v14, &qword_1EA9374C8);
  [v1 setContentUnavailableConfiguration_];
  v3 = a1;
  return sub_188A3F5FC(v3, &qword_1EA9374C8);
}

unint64_t sub_188CD24A4()
{
  result = qword_1EA930FE0;
  if (!qword_1EA930FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930FE0);
  }

  return result;
}

uint64_t sub_188CD24F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v43 = *(a2 + 16);
  if (v43 >= v4)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v44 = MEMORY[0x1E69E7CC0];
  sub_188CCF904(0, v5, 0);
  result = v44;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = a1 + 32;
    v10 = a2 + 32;
    v11 = v43;
    v12 = a2;
    while (v7 != v4)
    {
      if (v7 >= v4)
      {
        goto LABEL_34;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_35;
      }

      if (v8 == v11)
      {
        break;
      }

      if (v8 >= v11)
      {
        goto LABEL_36;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_37;
      }

      v16 = (v9 + 32 * v7);
      v20 = *v16;
      v21 = v16[1];
      v17 = (v10 + 32 * v8);
      v18 = *v17;
      v19 = v17[1];
      ++v7;
      ++v8;
      v45 = result;
      v14 = *(result + 16);
      v13 = *(result + 24);
      if (v14 >= v13 >> 1)
      {
        v41 = v12;
        v39 = v9;
        v37 = v10;
        v34 = v21;
        v35 = v20;
        v32 = v17[1];
        v33 = *v17;
        sub_188CCF904((v13 > 1), v14 + 1, 1);
        v19 = v32;
        v18 = v33;
        v21 = v34;
        v20 = v35;
        v10 = v37;
        v9 = v39;
        v12 = v41;
        v11 = v43;
        result = v45;
      }

      *(result + 16) = v14 + 1;
      v15 = (result + 32 * v14);
      v15[2] = vsubq_f64(v20, v18);
      v15[3] = vsubq_f64(v21, v19);
      if (!--v5)
      {
        goto LABEL_19;
      }
    }

LABEL_38:
    __break(1u);
    return result;
  }

  v8 = 0;
  v7 = 0;
  v11 = v43;
  v12 = a2;
LABEL_19:
  if (v7 != v4)
  {
    v22 = (v12 + 32 * v8 + 48);
    v23 = (a1 + 32 * v7 + 48);
    while (v7 < v4)
    {
      v24 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_31;
      }

      if (v11 == v8)
      {
        return result;
      }

      if (v8 >= v11)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_33;
      }

      v25 = v23[-1];
      v26 = *v23;
      v28 = v22[-1];
      v27 = *v22;
      v46 = result;
      v30 = *(result + 16);
      v29 = *(result + 24);
      if (v30 >= v29 >> 1)
      {
        v40 = *v23;
        v42 = v23[-1];
        v36 = v22[-1];
        v38 = *v22;
        sub_188CCF904((v29 > 1), v30 + 1, 1);
        v28 = v36;
        v27 = v38;
        v26 = v40;
        v25 = v42;
        v11 = v43;
        result = v46;
      }

      *(result + 16) = v30 + 1;
      v31 = (result + 32 * v30);
      ++v7;
      v31[2] = vsubq_f64(v25, v28);
      v31[3] = vsubq_f64(v26, v27);
      v22 += 2;
      v23 += 2;
      ++v8;
      if (v24 == v4)
      {
        return result;
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
    __break(1u);
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_188CD27A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v4 = *(a1 + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v19 = MEMORY[0x1E69E7CC0];
      sub_188B221A4(0, v4, 0);
      v5 = v19;
      v6 = (a1 + 56);
      do
      {
        v7 = *v6;
        v8 = 0.0;
        v9 = 0.0;
        v10 = 0.0;
        if (*v6 > 0.0)
        {
          v10 = *(v6 - 3) / v7;
          v9 = *(v6 - 2) / v7;
          v8 = *(v6 - 1) / v7;
        }

        v11 = [objc_allocWithZone(UIColor) initWithRed:v10 green:v9 blue:v8 alpha:v7];
        v12 = [v11 CGColor];

        type metadata accessor for CGColor(0);
        v18 = v13;
        v19 = v5;
        *&v17 = v12;
        v15 = *(v5 + 16);
        v14 = *(v5 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_188B221A4((v14 > 1), v15 + 1, 1);
          v5 = v19;
        }

        *(v5 + 16) = v15 + 1;
        sub_188A55538(&v17, (v5 + 32 * v15 + 32));
        v6 += 4;
        --v4;
      }

      while (v4);
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E330);
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93E338);
    v5 = MEMORY[0x1E69E7CC0];
  }

  a2[3] = result;
  *a2 = v5;
  return result;
}

void sub_188CD335C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a42);
  objc_destroyWeak((v42 - 176));
  objc_destroyWeak((v42 - 136));
  objc_destroyWeak((v42 - 128));
  _Unwind_Resume(a1);
}

void sub_188CD3560(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_findsParentScrollView);
  *(v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_findsParentScrollView) = a1;
  if (v2 != (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_parentScrollViewNeedsUpdate) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [Strong setNeedsUpdateProperties];
    }
  }
}

uint64_t sub_188CD35F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *MEMORY[0x1E69E7D40] & *v3;
  if ([*(v4 + *a2) sectionIdentifierForIndex_])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  v7 = *(v6 + 80);
  v8 = swift_dynamicCast();
  return (*(*(v7 - 8) + 56))(a3, v8 ^ 1u, 1, v7);
}

void UIListSeparatorConfiguration.visualEffect.setter(void *a1)
{
  sub_188CCC2EC(a1);
}

id static NSCollectionLayoutSection.list(using:layoutEnvironment:)(uint64_t a1, uint64_t a2)
{
  [*(*a1 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188C2E864();
  swift_dynamicCast();
  v3 = [objc_opt_self() sectionWithListConfiguration:v5 layoutEnvironment:a2];

  return v3;
}

double _UIRectSubtractingRectYieldingDirectionalInsets(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  MinY = CGRectGetMinY(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v17 = MinY - CGRectGetMinY(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetMaxY(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  CGRectGetMaxY(v22);
  v23.origin.x = a5;
  v23.origin.y = a6;
  v23.size.width = a7;
  v23.size.height = a8;
  CGRectGetMinX(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetMinX(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  CGRectGetMaxX(v25);
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  CGRectGetMaxX(v26);
  return v17;
}

void std::vector<_UIAuxillarySolveResult>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<_UIAuxillarySolveResult>>(a2);
  }

  std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
}

void ***std::unique_ptr<_UIItemSolveResult>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    v3 = v2 + 11;
    std::vector<_UIAuxillarySolveResult>::__destroy_vector::operator()[abi:nn200100](&v3);
    v3 = v2 + 8;
    std::vector<_UIAuxillarySolveResult>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x18CFE8670);
  }

  return result;
}

id sub_188CD48DC(uint64_t a1)
{
  v3 = *(v1 + qword_1EA940A40);
  v4 = sub_18A4A7258();
  v5 = sub_18A4A2B08();
  v6 = [v3 _viewForSupplementaryElementOfKind_atIndexPath_collectionView_];

  return v6;
}

uint64_t sub_188CD496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 24);
  v9 = swift_dynamicCastUnknownClassUnconditional();
  return v8(v9, a2, a3, a4);
}

char *sub_188CD4D80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934210);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void std::vector<_UIAuxillarySolveResult>::__assign_with_size[abi:nn200100]<_UIAuxillarySolveResult*,_UIAuxillarySolveResult*>(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<_UIAuxillarySolveResult>::__vdeallocate(a1);
    if (a4 <= 0x555555555555555)
    {
      v8 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v9 = 0x555555555555555;
      }

      else
      {
        v9 = v8;
      }

      std::vector<_UIAuxillarySolveResult>::__vallocate[abi:nn200100](a1, v9);
    }

    std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
  }

  v10 = *(a1 + 8) - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 4) >= a4)
  {
    v16 = std::__copy_impl::operator()[abi:nn200100]<_UIAuxillarySolveResult *,_UIAuxillarySolveResult *,_UIAuxillarySolveResult *>(a2, a3, v7);
    v17 = *(a1 + 8);
    if (v17 != v16)
    {
      do
      {
        v18 = v17 - 48;

        v17 = v18;
      }

      while (v18 != v16);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v11 = (a2 + v10);
    std::__copy_impl::operator()[abi:nn200100]<_UIAuxillarySolveResult *,_UIAuxillarySolveResult *,_UIAuxillarySolveResult *>(a2, (a2 + v10), v7);
    v12 = *(a1 + 8);
    if (v11 != a3)
    {
      v13 = *(a1 + 8);
      do
      {
        v14 = *v11;
        v15 = v11[1];
        *(v13 + 32) = *(v11 + 4);
        *v13 = v14;
        *(v13 + 16) = v15;
        *(v13 + 40) = *(v11 + 5);
        v11 += 3;
        v13 += 48;
        v12 += 48;
      }

      while (v11 != a3);
    }

    *(a1 + 8) = v12;
  }
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<_UIAuxillarySolveResult *,_UIAuxillarySolveResult *,_UIAuxillarySolveResult *>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      *(a3 + 32) = *(v5 + 4);
      *a3 = v6;
      *(a3 + 16) = v7;
      objc_storeStrong((a3 + 40), *(v5 + 5));
      v5 += 3;
      a3 += 48;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t std::__split_buffer<_UIRegionSolveResult>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 152;
    std::allocator_traits<std::allocator<_UIRegionSolveResult>>::destroy[abi:nn200100]<_UIRegionSolveResult,void,0>((i - 152));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}