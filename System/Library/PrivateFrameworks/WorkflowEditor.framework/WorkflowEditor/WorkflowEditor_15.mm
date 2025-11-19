uint64_t sub_274561AA8(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_274564748;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_142;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

double sub_274561CD0(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0.0;
  }

  v4 = (a1 + 40);
  v5 = 0.0;
  v6 = 1.79769313e308;
  do
  {
    v7 = sqrt((*(v4 - 1) - a2) * (*(v4 - 1) - a2) + (*v4 - a3) * (*v4 - a3));
    if (v7 < v6)
    {
      v5 = *(v4 - 1);
      v6 = v7;
    }

    v4 += 2;
    --v3;
  }

  while (v3);
  return v5;
}

uint64_t sub_274561D3C(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_274564740;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_132;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_274561EEC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  swift_beginAccess();
  v3 = 0.0;
  if (*(a1 + v2) == 3)
  {
    v3 = 1.0;
  }

  sub_27456360C(v3);
}

uint64_t sub_274561F48(void *a1, char a2, double a3, double a4)
{
  v8 = objc_opt_self();
  sub_27463BC8C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_274564730;
  *(v16 + 24) = v15;
  v23[4] = sub_27440CBD0;
  v23[5] = v16;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_2745F36FC;
  v23[3] = &block_descriptor_122;
  v17 = _Block_copy(v23);
  v18 = a1;

  LODWORD(v19) = v10;
  LODWORD(v20) = v12;
  LODWORD(v21) = v14;
  [v8 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v17);

  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

id sub_274562114(char *a1, char a2)
{
  v4 = *&a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
  [v4 frame];
  [v4 setFrame_];
  [a1 setNeedsLayout];
  result = [a1 layoutIfNeeded];
  if (a2)
  {
    v6 = &a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate];
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(v6 + 1);
      ObjectType = swift_getObjectType();
      (*(v7 + 24))(a1, ObjectType, v7);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_274562208(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v5 = &a4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      (*(v6 + 32))(a4, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    [a4 removeFromSuperview];
  }
}

id sub_2745622B0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
  swift_beginAccess();
  result = *(a1 + v2);
  if (result)
  {
    return [result setBounces_];
  }

  return result;
}

void sub_27456230C(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      v4 = sub_27455CBF4();
      sub_27455C20C(v4);
      v6 = v5;

      if (v6)
      {
        goto LABEL_14;
      }

      break;
    case 2:
      v2 = sub_27455CBF4()[2];

      v3 = sub_27455CBF4();
      if (v2 == 3)
      {
        if (v3[2] >= 2)
        {
          goto LABEL_7;
        }

        __break(1u);
        goto LABEL_13;
      }

      sub_27455C20C(v3);
      v8 = v7;

      if (v8)
      {
        goto LABEL_15;
      }

      break;
    case 3:
      if (sub_27455CBF4()[2])
      {
LABEL_7:
      }

      else
      {
LABEL_13:

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
      }

      break;
    default:
      [v1 bounds];
      CGRectGetHeight(v9);
      break;
  }
}

uint64_t sub_27456242C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  result = OUTLINED_FUNCTION_29_3();
  if (v4[v8] != v7)
  {
    if (v4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_completedInitialValidLayoutPass] != 1)
    {
      OUTLINED_FUNCTION_2_6();
      v18 = swift_allocObject();
      *(v18 + 16) = v4;
      *(v18 + 24) = v7;
      *(v18 + 32) = a2;
      *(v18 + 40) = a3;
      v19 = &v4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_pendingLayoutWork];
      v20 = *&v4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_pendingLayoutWork];
      *v19 = sub_274563BF8;
      v19[1] = v18;
      v21 = v4;
      sub_2744069F0(a2);
      return sub_274406A94(v20);
    }

    if ((v4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture] & 1) == 0)
    {
      v25[0] = v7;
      sub_27455D8B0(v25);
      if (v7 != 1)
      {
        goto LABEL_11;
      }

      v10 = sub_27455CBF4();
      v11 = COERCE_DOUBLE(sub_27455C20C(v10));
      v13 = v12;

      if (v13)
      {
        __break(1u);
        return result;
      }

      [v4 bounds];
      if (CGRectGetHeight(v26) < v11)
      {
        v14 = &v4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate];
        OUTLINED_FUNCTION_29_3();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v15 = *(v14 + 1);
          ObjectType = swift_getObjectType();
          (*(v15 + 24))(v4, ObjectType, v15);
          swift_unknownObjectRelease();
        }

        v17 = 1;
      }

      else
      {
LABEL_11:
        v17 = 0;
      }

      v22 = swift_allocObject();
      *(v22 + 16) = v4;
      *(v22 + 24) = v7;
      OUTLINED_FUNCTION_2_6();
      v23 = swift_allocObject();
      *(v23 + 16) = v17;
      *(v23 + 24) = v4;
      *(v23 + 32) = a2;
      *(v23 + 40) = a3;
      v24 = v4;
      sub_2744069F0(a2);
      sub_274562840(sub_274563C08, v22, sub_274563C14, v23);
    }
  }

  return result;
}

id sub_2745626BC(char *a1, char a2)
{
  v4 = 0.0;
  if (a2 == 3)
  {
    v4 = 1.0;
  }

  sub_27456360C(v4);
  v5 = *&a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
  v7 = a2;
  sub_27456230C(&v7);
  [v5 frame];
  [v5 setFrame_];
  [a1 setNeedsLayout];

  return [a1 layoutIfNeeded];
}

uint64_t sub_27456277C(uint64_t result, char *a2, uint64_t (*a3)(uint64_t))
{
  if (result)
  {
    v5 = &a2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      (*(v6 + 32))(a2, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    result = [a2 removeFromSuperview];
  }

  if (a3)
  {
    return a3(result);
  }

  return result;
}

void sub_274562840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  OUTLINED_FUNCTION_39();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v18 = sub_274563C24;
  v19 = v9;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_27443E0E8;
  v17 = &block_descriptor_30;
  v10 = _Block_copy(&v14);

  OUTLINED_FUNCTION_39();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v18 = sub_274563C44;
  v19 = v11;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_27456009C;
  v17 = &block_descriptor_20;
  v12 = _Block_copy(&v14);
  sub_2744069F0(a3);

  OUTLINED_FUNCTION_0_39();
  [v8 v13];
  _Block_release(v12);
  _Block_release(v10);
}

uint64_t sub_2745629EC(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2744830C4;
  *(v12 + 24) = v11;
  v18[4] = sub_27440D744;
  v18[5] = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_2745F36FC;
  v18[3] = &block_descriptor_269;
  v13 = _Block_copy(v18);

  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  LODWORD(v16) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_274562BA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a3)
  {

    a3(v4);

    sub_274406A94(a3);
  }
}

void sub_274562BF8()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_automaticallyAdjustsScrollViewInsets;
  OUTLINED_FUNCTION_29_3();
  if (v0[v1] == 1)
  {
    v2 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
    OUTLINED_FUNCTION_29_3();
    v3 = *&v0[v2];
    if (v3)
    {
      v4 = v3;
      v5 = sub_27455CBF4();
      if (v5[2])
      {
        v6 = *(v5 + 4);

        v7 = [v0 traitCollection];
        [v7 displayCornerRadius];

        [v4 contentInset];
        [v4 setContentInset_];
        [v4 setAutomaticallyAdjustsScrollIndicatorInsets_];
        v8 = [v0 traitCollection];
        [v8 displayCornerRadius];
        v10 = v9;

        [v4 setVerticalScrollIndicatorInsets_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_274562D50()
{
  v1 = sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  v21 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  sub_274412734(0, &qword_28094AF90);
  v14 = sub_27463BCEC();
  OUTLINED_FUNCTION_5();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = sub_274564820;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_7_19();
  aBlock[2] = v16;
  aBlock[3] = &block_descriptor_275;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  sub_27463B20C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27446E608();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
  sub_274454390();
  sub_27463C1EC();
  MEMORY[0x277C58440](0, v13, v7, v17);
  _Block_release(v17);

  (*(v3 + 8))(v7, v1);
  (*(v9 + 8))(v13, v21);
  v19 = *&v18[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView];
  v20 = sub_27455D9E0();
  [v19 setBackgroundColor_];

  sub_274563164();
}

uint64_t sub_274562FE8()
{
  v0 = sub_274638E7C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-1] - v5;
  sub_274638E6C();
  sub_274638E5C();
  v7 = *(v1 + 8);
  v7(v3, v0);
  (*(v1 + 16))(v3, v6, v0);
  v10[3] = sub_274638E8C();
  v10[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_274638E9C();
  sub_27463BEFC();
  return (v7)(v6, v0);
}

void sub_274563164()
{
  v4 = [*&v0[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView] layer];
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle] == 2;

  LODWORD(v3) = dword_274659EC0[v2];
  [v4 setShadowOpacity_];
}

id sub_274563210()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberVisibility;
  OUTLINED_FUNCTION_29_3();
  v2 = *(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberView);
  if (v2)
  {
    v4 = v2 != 1;
  }

  else
  {
    v5 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal;
    OUTLINED_FUNCTION_29_3();
    v4 = *(v0 + v5);
  }

  return [v3 setHidden_];
}

uint64_t sub_27456329C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27456330C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951258);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_27456337C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951258);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2745633E4(double a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  objc_allocWithZone(MEMORY[0x277D75348]);
  v4 = v1;
  v5 = sub_27451A6B0(sub_2745646EC, v3);
  [v4 setBackgroundColor_];

  if (_UISolariumEnabled() && a1 <= 0.0 == *&v4[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction] > 0.0)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v7 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v8 = v4;
    v9 = sub_2745FB6C4(sub_2745646F4, v6, 0.4, 1.0);
    [v9 startAnimation];
  }
}

id sub_274563550(void *a1, uint64_t a2)
{
  v3 = [a1 userInterfaceStyle];
  v4 = *(a2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction);
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);
  v6 = 0.175;
  if (v3 == 2)
  {
    v6 = 0.25;
  }

  return [v5 initWithWhite:0.0 alpha:v4 * v6];
}

id sub_2745635D4(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction) > 0.0)
  {
    v1 = 1.0;
  }

  return [*(a1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_opaqueOverlayFillView) setAlpha_];
}

void sub_27456360C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction);
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction) = a1;
  sub_2745633E4(v2);
}

id sub_274563624(uint64_t a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = type metadata accessor for WFSheetView();
  v7 = objc_msgSendSuper2(&v17, sel_hitTest_withEvent_, a1, a2, a3);
  v8 = [v3 backgroundColor];
  if (!v8)
  {
    if (!v7)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v8 CGColor];

  Alpha = CGColorGetAlpha(v10);
  if (Alpha <= 0.0 && v7 != 0)
  {
LABEL_9:
    sub_274412734(0, &qword_28094A4D8);
    v13 = v7;
    v14 = v3;
    v15 = sub_27463BF7C();

    if (v15)
    {

      return 0;
    }
  }

  return v7;
}

id WFSheetView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFSheetView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall WFSheetView.gestureRecognizer(_:shouldReceive:)(UIGestureRecognizer *_, UITouch shouldReceive)
{
  v3 = [(objc_class *)shouldReceive.super.isa view];
  v4 = [(UIGestureRecognizer *)_ view];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      sub_274412734(0, &qword_28094A4D8);
      v6 = sub_27463BF7C();
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v6 = 1;
      return v6 & 1;
    }

    v6 = 0;
    v3 = v4;
  }

  return v6 & 1;
}

id sub_274563A90(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x28223BE20](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_27463C69C();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_274563C4C()
{
  result = qword_2809512F0;
  if (!qword_2809512F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809512F0);
  }

  return result;
}

unint64_t sub_274563CA4()
{
  result = qword_2809512F8;
  if (!qword_2809512F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809512F8);
  }

  return result;
}

uint64_t keypath_get_23Tm()
{
  OUTLINED_FUNCTION_16_1();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WFSheetViewState(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WFSheetViewGrabberVisibility(_BYTE *result, unsigned int a2, unsigned int a3)
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

id OUTLINED_FUNCTION_18_9()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_20_13()
{

  return sub_27463C56C();
}

uint64_t OUTLINED_FUNCTION_29_10@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

void OUTLINED_FUNCTION_30_9()
{

  sub_274450D6C();
}

id OUTLINED_FUNCTION_31_8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a9 = v16;
  a10 = v17;
  a11 = v18;
  a12 = v19;
  a13 = v20;
  a14 = v21;

  return [a1 (v14 + 248)];
}

uint64_t OUTLINED_FUNCTION_32_7()
{
  *(v0 - 1) = 1;

  return sub_27456242C((v0 - 1), 0, 0);
}

id OUTLINED_FUNCTION_33_5()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_39_5(uint64_t a1)
{

  return CGSizeMake(a1);
}

void *OUTLINED_FUNCTION_40_5()
{

  return sub_27451A6B0(v0, 0);
}

id OUTLINED_FUNCTION_41_5()
{

  return [v0 (v1 + 3192)];
}

id OUTLINED_FUNCTION_42_5()
{

  return [v0 (v1 + 3192)];
}

uint64_t sub_274564B90(uint64_t *a1, unsigned int a2)
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

uint64_t sub_274564BE4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_274564C64@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951310);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = v61 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951318);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = v61 - v11;
  v13 = type metadata accessor for WorkflowOutputPreviewView();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = (v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951320);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = v61 - v19;
  if (a2)
  {
    if (a1)
    {
      v21 = a1;
      if ([v21 numberOfItems] >= 1)
      {
        v66 = v21;
        sub_27440FB1C(v66, v16);
        sub_2744127F8(v16, v12);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FF0);
        sub_274565240();
        sub_2744E9360();
        sub_274639DDC();

        sub_274565370(v16);
LABEL_12:
        sub_274565298(v20, v9);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FF0);
        sub_274565210();
        sub_2744E9360();
        sub_274639DDC();
        return sub_274565308(v20);
      }
    }

    v61[1] = v13;
    v62 = v20;
    v65 = v17;
    v66 = a3;
    v63 = v6;
    sub_27463B70C();
    if (qword_2809492C0 != -1)
    {
      OUTLINED_FUNCTION_2_22();
    }

    v42 = qword_28094BB00;
    v43 = sub_27463B66C();
    v44 = sub_27463B66C();

    v45 = [v42 localizedStringForKey:v43 value:v44 table:0];

    v46 = sub_27463B6AC();
    v48 = v47;

    v67 = v46;
    v68 = v48;
    sub_274412BBC();
    v49 = sub_27463A53C();
    v51 = v50;
    LOBYTE(v48) = v52;
    v53 = sub_27463A51C();
    v55 = v54;
    v57 = v56;
    sub_274412C10(v49, v51, v48 & 1);

    sub_27463A32C();
    OUTLINED_FUNCTION_2_29();
    *v12 = v53;
    *(v12 + 1) = v55;
    v12[16] = v58;
    *(v12 + 3) = v57;
    v12[32] = v59;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    v12[72] = v60;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FF0);
    sub_274565240();
    sub_2744E9360();
    v20 = v62;
    sub_274639DDC();
    goto LABEL_12;
  }

  v65 = v17;
  v66 = a3;
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    OUTLINED_FUNCTION_2_22();
  }

  v22 = qword_28094BB00;
  v23 = sub_27463B66C();
  v24 = sub_27463B66C();

  v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

  v26 = sub_27463B6AC();
  v28 = v27;

  v67 = v26;
  v68 = v28;
  sub_274412BBC();
  v29 = sub_27463A53C();
  v31 = v30;
  LOBYTE(v28) = v32;
  v33 = sub_27463A51C();
  v35 = v34;
  v37 = v36;
  sub_274412C10(v29, v31, v28 & 1);

  sub_27463A32C();
  OUTLINED_FUNCTION_2_29();
  *v9 = v33;
  *(v9 + 1) = v35;
  v9[16] = v38;
  *(v9 + 3) = v37;
  v9[32] = v39;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  v9[72] = v40;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FF0);
  sub_274565210();
  sub_2744E9360();
  return sub_274639DDC();
}

unint64_t sub_274565240()
{
  result = qword_280951330;
  if (!qword_280951330)
  {
    type metadata accessor for WorkflowOutputPreviewView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951330);
  }

  return result;
}

uint64_t sub_274565298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274565308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274565370(uint64_t a1)
{
  v2 = type metadata accessor for WorkflowOutputPreviewView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2745653CC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_2744E9360();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WFDateFieldParameter.hintText(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_274637E8C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v67 - v11;
  v13 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274565B58(a1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    (*(v15 + 32))(v18, v12, v13);
    v19 = sub_2746382BC();
    v20 = sub_274453594(v19);

    if (v20)
    {
LABEL_4:
      v21 = OUTLINED_FUNCTION_0_40();
      v22(v21);
      return 0;
    }

    v25 = sub_27463826C();
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {
      v54 = OUTLINED_FUNCTION_0_40();
      v55(v54);

      return 0;
    }

    v28 = objc_opt_self();
    v29 = sub_27463B66C();

    v30 = [v28 detectedDatesInString:v29 error:0];

    sub_274565C30();
    v31 = sub_27463B81C();

    if (!sub_274453594(v31))
    {

      v56 = [v2 localizedIncompleteHintString];
      if (!v56)
      {
        goto LABEL_4;
      }

      v57 = v56;
      v23 = sub_27463B6AC();

LABEL_34:
      v65 = OUTLINED_FUNCTION_0_40();
      v66(v65);
      return v23;
    }

    sub_2744535A4(0, (v31 & 0xC000000000000001) == 0);
    if ((v31 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x277C58B20](0, v31);
    }

    else
    {
      v32 = *(v31 + 32);
    }

    v33 = v32;

    v34 = [v33 date];
    sub_274637E6C();

    v35 = [v2 dateOnlyMode];
    v36 = [v2 timeOnlyMode];
    v37 = v36;
    v70 = v33;
    if ((v35 & 1) != 0 || v36)
    {
      v58 = [v2 hintDateFormatter];
      v47 = v6;
      v59 = v58;
      if (v37)
      {
        v60 = 0;
      }

      else
      {
        v60 = 2;
      }

      [v58 setDateStyle_];

      v61 = [v2 hintDateFormatter];
      [v61 setTimeStyle_];

      v62 = [v2 hintDateFormatter];
      v63 = sub_274637E5C();
      v64 = [v62 stringFromDate_];

      v23 = sub_27463B6AC();
      goto LABEL_33;
    }

    v38 = [v2 detectsAllDayDates];
    v39 = [v2 forcesAllDayDates];
    LODWORD(v68) = [v2 displaysAllDayString];
    v69 = v6;
    if ((v39 & 1) == 0 && v38)
    {
      v39 = [v33 timeIsSignificant] ^ 1;
    }

    v40 = [v2 hintDateFormatter];
    [v40 setDateStyle_];

    v41 = [v2 hintDateFormatter];
    LOBYTE(v40) = v39 ^ 1;
    [v41 setTimeStyle_];

    v42 = [v2 hintDateFormatter];
    v43 = sub_274637E5C();
    v44 = [v42 stringFromDate_];

    v23 = sub_27463B6AC();
    v46 = v45;

    if (v40)
    {
    }

    else
    {
      v47 = v69;
      if ((v68 & 1) == 0)
      {

        goto LABEL_33;
      }

      sub_27463B70C();
      v68 = sub_27463B70C();
      if (qword_2809492C0 != -1)
      {
        swift_once();
      }

      v67 = qword_28094BB00;
      v48 = sub_27463B66C();

      v49 = sub_27463B66C();

      v50 = [v67 localizedStringForKey:v48 value:v49 table:0];

      v51 = sub_27463B6AC();
      v53 = v52;

      v71 = v23;
      v72 = v46;
      MEMORY[0x277C57EA0](0x20A280E220, 0xA500000000000000);
      MEMORY[0x277C57EA0](v51, v53);

      v23 = v71;
    }

    v47 = v69;
LABEL_33:
    (*(v47 + 8))(v9, v4);
    goto LABEL_34;
  }

  sub_274565BC8(v12);
  return 0;
}

uint64_t sub_274565B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274565BC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274565C30()
{
  result = qword_280951348;
  if (!qword_280951348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280951348);
  }

  return result;
}

uint64_t ParameterRowView.init(parameter:stateStore:processing:shouldFocus:layoutMode:isArrayElement:variableProvider:editorOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t *a5@<X4>, char a6@<W5>, id a7@<X7>, uint64_t a8@<X8>)
{
  v13 = *a5;
  v14 = *(a5 + 8);
  swift_unknownObjectWeakInit();
  *(a8 + 56) = sub_2746390EC() & 1;
  *(a8 + 64) = v15;
  *(a8 + 72) = v16 & 1;
  v17 = type metadata accessor for ParameterRowView();
  v18 = *(v17 + 52);
  *(a8 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  swift_storeEnumTagMultiPayload();
  v19 = a8 + *(v17 + 56);
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 17) = a4;
  *(a8 + 24) = v13;
  *(a8 + 32) = v14;
  *(a8 + 33) = a6;
  swift_unknownObjectWeakAssign();
  if (!a7)
  {
    a7 = [objc_allocWithZone(type metadata accessor for WorkflowEditorOptions(0)) init];
  }

  result = swift_unknownObjectRelease();
  *(a8 + 48) = a7;
  return result;
}

uint64_t type metadata accessor for ParameterRowView()
{
  result = qword_280951480;
  if (!qword_280951480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274565E10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274438F4C();
  *a1 = result;
  return result;
}

uint64_t sub_274565E6C()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ParameterRowView() + 56);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_27463BC0C();
    v7 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t ParameterRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v109 = a1;
  v3 = type metadata accessor for ParameterRowView();
  v108 = *(v3 - 8);
  v113 = *(v108 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v112 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27463A19C();
  OUTLINED_FUNCTION_1();
  v101 = v6;
  v102 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951358) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v86 - v10;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951360) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_40_1();
  v92 = v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951368) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_40_1();
  v90 = v15;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951370) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_40_1();
  v91 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951378) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_40_1();
  v89 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951380) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_40_1();
  v88 = v23;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951388) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_40_1();
  v96 = v25;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951390) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_40_1();
  v93 = v27;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951398) - 8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_40_1();
  v99 = v29;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809513A0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_40_1();
  v110 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809513A8);
  OUTLINED_FUNCTION_1();
  v106 = v33;
  v107 = v32;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_40_1();
  v111 = v35;
  sub_274566958();
  KeyPath = swift_getKeyPath();
  v37 = *v1;
  v118 = KeyPath;
  v119 = v37;
  v38 = v37;
  sub_27463A18C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809513B0);
  sub_274566E98();
  sub_27463A82C();
  (*(v101 + 8))(v8, v102);
  sub_27440CB1C(v115, &qword_2809513B0);
  v39 = *(v1 + 16);
  v40 = swift_getKeyPath();
  v41 = &v11[*(v94 + 44)];
  *v41 = v40;
  v41[8] = v39 & 1;
  v42 = sub_274565E6C() & ~v39;
  v43 = swift_getKeyPath();
  v44 = v92;
  sub_27445EA84(v11, v92, &qword_280951358);
  OUTLINED_FUNCTION_3_33();
  *v45 = v43;
  *(v45 + 8) = v42 & 1;
  v46 = *(v2 + 17);
  v47 = swift_getKeyPath();
  v48 = v44;
  v49 = v90;
  sub_27445EA84(v48, v90, &qword_280951360);
  OUTLINED_FUNCTION_3_33();
  *v50 = v47;
  *(v50 + 8) = v46;
  Strong = swift_unknownObjectWeakLoadStrong();
  v52 = swift_getKeyPath();
  v53 = v49;
  v54 = v91;
  sub_27445EA84(v53, v91, &qword_280951368);
  OUTLINED_FUNCTION_3_33();
  *v55 = v52;
  v55[1] = Strong;
  LOBYTE(v52) = *(v2 + 33);
  v56 = swift_getKeyPath();
  v57 = v89;
  sub_27445EA84(v54, v89, &qword_280951370);
  v58 = v57 + *(v18 + 44);
  *v58 = v56;
  *(v58 + 8) = v52;
  v59 = *(v2 + 24);
  LOBYTE(v54) = *(v2 + 32);
  v60 = swift_getKeyPath();
  v61 = v57;
  v62 = v88;
  sub_27445EA84(v61, v88, &qword_280951378);
  v63 = v62 + *(v21 + 44);
  *v63 = v60;
  *(v63 + 8) = v59;
  *(v63 + 16) = v54;
  v64 = *(v2 + 48);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27444C230(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  v65 = sub_274638EEC();
  v66 = v96;
  sub_27445EA84(v62, v96, &qword_280951380);
  OUTLINED_FUNCTION_3_33();
  *v67 = v65;
  v67[1] = v64;
  v68 = v93;
  sub_27445EA84(v66, v93, &qword_280951388);
  *(v68 + *(v100 + 44)) = 256;
  v69 = v112;
  sub_274567204(v2, v112);
  v70 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v108 = *(v108 + 80);
  v71 = swift_allocObject();
  sub_274567268(v69, v71 + v70);
  v72 = v99;
  sub_27445EA84(v68, v99, &qword_280951390);
  OUTLINED_FUNCTION_3_33();
  *v73 = sub_2745672CC;
  v73[1] = v71;
  v73[2] = 0;
  v73[3] = 0;
  sub_274567204(v2, v69);
  v74 = swift_allocObject();
  sub_274567268(v69, v74 + v70);
  v75 = v72;
  v76 = v110;
  sub_27445EA84(v75, v110, &qword_280951398);
  v77 = (v76 + *(v105 + 36));
  *v77 = 0;
  v77[1] = 0;
  v77[2] = sub_274567348;
  v77[3] = v74;
  v87 = v2;
  LOBYTE(v18) = *(v2 + 56);
  v78 = *(v2 + 64);
  LOBYTE(v2) = *(v2 + 72);
  v115[0] = v18;
  v116 = v78;
  v117 = v2;
  v79 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951420);
  sub_2746390DC();
  sub_2745673D4();
  v80 = v110;
  sub_27463A99C();

  sub_274401BE0(v80);
  v115[0] = v18;
  v116 = v78;
  v117 = v2;
  sub_2746390BC();
  LOBYTE(v64) = v114;
  v81 = v112;
  sub_274567204(v87, v112);
  v82 = swift_allocObject();
  sub_274567268(v81, v82 + v70);
  v83 = v109;
  (*(v106 + 32))(v109, v111, v107);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951478);
  v85 = v83 + *(result + 36);
  *v85 = v64;
  *(v85 + 8) = sub_274567D44;
  *(v85 + 16) = v82;
  return result;
}

uint64_t sub_274566958()
{
  v1 = sub_274639B9C();
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v3 = *v0;
  if ([*v0 allowsMultipleValues] && objc_msgSend(v3, sel_displaysMultipleValueEditor) && (*(v0 + 33) & 1) == 0)
  {
    v15 = *(v0 + 8);
    type metadata accessor for ParameterStateStore();
    sub_27444C230(&qword_28094B550, type metadata accessor for ParameterStateStore);
    swift_retain_n();
    v16 = v3;
    v17 = sub_27463950C();
    v19 = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_27456842C;
    *(v20 + 24) = v15;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_274458A90;
    *(v21 + 24) = v15;
    v24 = v17;
    v25 = v19;
    v26 = sub_274458A60;
    v27 = v20;
    v28 = sub_274458A98;
    v29 = v21;

    sub_274544A7C(v16, &v24, sub_274542524, 0, v22);
    sub_2745457E8(v22, &v24);
    v30 = 0;
    sub_274567068();
    sub_274639DDC();
    sub_27445EAD4(v23, &v24, &qword_2809513D8);
    v31 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809513D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809513F0);
    sub_274566FDC();
    sub_2745670BC();
    sub_274639DDC();
    sub_27440CB1C(v23, &qword_2809513D8);
    return sub_274568434(v22);
  }

  else
  {
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v3))
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      v7 = *(v0 + 8);
      v8 = *(v5 + 16);
      v9 = v3;
      v24 = v8(v7, ObjectType, v5);
      v30 = 1;
      sub_274567068();

      sub_274639DDC();
      sub_27445EAD4(v23, &v24, &qword_2809513D8);
      v31 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809513D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809513F0);
      sub_274566FDC();
      sub_2745670BC();
      sub_274639DDC();

      return sub_27440CB1C(v23, &qword_2809513D8);
    }

    else
    {
      sub_274639B8C();
      sub_274639B7C();
      v11 = NSStringFromClass([v3 classForCoder]);
      sub_27463B6AC();

      sub_274639B6C();

      sub_274639B7C();
      sub_274639BBC();
      v24 = sub_27463A52C();
      v25 = v12;
      LOBYTE(v26) = v13 & 1;
      v27 = v14;
      v28 = sub_27463AB4C();
      LOBYTE(v29) = sub_27463A32C();
      v31 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809513D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809513F0);
      sub_274566FDC();
      sub_2745670BC();
      return sub_274639DDC();
    }
  }
}

unint64_t sub_274566E98()
{
  result = qword_2809513B8;
  if (!qword_2809513B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809513B0);
    sub_274566F50();
    sub_27440CA78(&qword_280951408, &unk_280951410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809513B8);
  }

  return result;
}

unint64_t sub_274566F50()
{
  result = qword_2809513C0;
  if (!qword_2809513C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809513C8);
    sub_274566FDC();
    sub_2745670BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809513C0);
  }

  return result;
}

unint64_t sub_274566FDC()
{
  result = qword_2809513D0;
  if (!qword_2809513D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809513D8);
    sub_274567068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809513D0);
  }

  return result;
}

unint64_t sub_274567068()
{
  result = qword_2809513E0;
  if (!qword_2809513E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809513E0);
  }

  return result;
}

unint64_t sub_2745670BC()
{
  result = qword_2809513E8;
  if (!qword_2809513E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809513F0);
    sub_27440CA78(&qword_28094A710, &qword_280951400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809513E8);
  }

  return result;
}

uint64_t sub_274567174(id *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    [*a1 wasAddedToWorkflow];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951420);
  return sub_2746390CC();
}

uint64_t sub_274567204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterRowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274567268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterRowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2745672E4(void **a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    v3 = *a1;

    return [v3 wasRemovedFromWorkflow];
  }
}

uint64_t sub_274567360(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ParameterRowView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2745673D4()
{
  result = qword_280951428;
  if (!qword_280951428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809513A0);
    sub_274567460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951428);
  }

  return result;
}

unint64_t sub_274567460()
{
  result = qword_280951430;
  if (!qword_280951430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951398);
    sub_2745674EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951430);
  }

  return result;
}

unint64_t sub_2745674EC()
{
  result = qword_280951438;
  if (!qword_280951438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951390);
    sub_274567578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951438);
  }

  return result;
}

unint64_t sub_274567578()
{
  result = qword_280951440;
  if (!qword_280951440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951388);
    sub_274567630();
    sub_27440CA78(&qword_2809548A0, &unk_28094B170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951440);
  }

  return result;
}

unint64_t sub_274567630()
{
  result = qword_280951448;
  if (!qword_280951448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951380);
    sub_2745676E8();
    sub_27440CA78(&qword_28094AD58, &qword_28094AD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951448);
  }

  return result;
}

unint64_t sub_2745676E8()
{
  result = qword_280951450;
  if (!qword_280951450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951378);
    sub_2745677A0();
    sub_27440CA78(&unk_280954AE0, &unk_28094AD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951450);
  }

  return result;
}

unint64_t sub_2745677A0()
{
  result = qword_280951458;
  if (!qword_280951458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951370);
    sub_274567858();
    sub_27440CA78(&unk_280949420, &unk_28094C3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951458);
  }

  return result;
}

unint64_t sub_274567858()
{
  result = qword_280951460;
  if (!qword_280951460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951368);
    sub_274567910();
    sub_27440CA78(&unk_280954AE0, &unk_28094AD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951460);
  }

  return result;
}

unint64_t sub_274567910()
{
  result = qword_280951468;
  if (!qword_280951468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951360);
    sub_2745679C8();
    sub_27440CA78(&unk_280954AE0, &unk_28094AD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951468);
  }

  return result;
}

unint64_t sub_2745679C8()
{
  result = qword_280951470;
  if (!qword_280951470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951358);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809513B0);
    sub_274566E98();
    swift_getOpaqueTypeConformance2();
    sub_27440CA78(&unk_280954AE0, &unk_28094AD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951470);
  }

  return result;
}

_BYTE *sub_274567ABC(_BYTE *result)
{
  if (*result == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      objc_opt_self();
      v1 = swift_dynamicCastObjCClass();
      if (v1)
      {
        MEMORY[0x28223BE20](v1);
        sub_27463B13C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7F0);
        sub_27463946C();
        swift_unknownObjectRelease();
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for ParameterRowView();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  MEMORY[0x277C5A3A0](v2 + 5);

  v3 = *(v1 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_27463969C();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  sub_2743F45E8(*(v2 + *(v1 + 56)), *(v2 + *(v1 + 56) + 8));

  return swift_deallocObject();
}

_BYTE *sub_274567D44(_BYTE *a1)
{
  type metadata accessor for ParameterRowView();

  return sub_274567ABC(a1);
}

uint64_t sub_274567DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v21 = a3;
  v20 = a2;
  v4 = sub_274639ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = type metadata accessor for ParameterRowView();
  sub_27445EAD4(a1 + *(v14 + 52), v10, &unk_28094D140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2745683BC(v10, v13);
  }

  else
  {
    sub_27463BC0C();
    v15 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  v16 = sub_27463969C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_27440CB1C(v13, &unk_28094D7C0);
  }

  else
  {
    v22 = v20;
    sub_27463B1BC();
    sub_27463968C();
    result = (*(*(v16 - 8) + 8))(v13, v16);
  }

  *v21 = EnumTagSinglePayload == 1;
  return result;
}

void sub_2745680E4()
{
  sub_274439BAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ParameterStateStore();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WorkflowEditorOptions(319);
      if (v2 <= 0x3F)
      {
        sub_2745681F0();
        if (v3 <= 0x3F)
        {
          sub_274568248();
          if (v4 <= 0x3F)
          {
            sub_27453EAA0();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2745681F0()
{
  if (!qword_280953A40)
  {
    v0 = sub_27463910C();
    if (!v1)
    {
      atomic_store(v0, &qword_280953A40);
    }
  }
}

void sub_274568248()
{
  if (!qword_280950D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D7C0);
    v0 = sub_27463919C();
    if (!v1)
    {
      atomic_store(v0, &qword_280950D10);
    }
  }
}

unint64_t sub_2745682AC()
{
  result = qword_280951498;
  if (!qword_280951498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809513A0);
    sub_2745673D4();
    swift_getOpaqueTypeConformance2();
    sub_27440CA78(&unk_28094DDA0, &qword_280953AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951498);
  }

  return result;
}

uint64_t sub_2745683BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2745684BC()
{
  sub_27456C2E4();
  sub_274639ACC();
  return v1;
}

uint64_t ModuleSummaryModalCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  ModuleSummaryModalCoordinator.init()();
  return v0;
}

void View.moduleSummaryModal(coordinator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_55_1();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v24 = type metadata accessor for ModuleSummaryModalViewModifier(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  v27 = &a9 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_27456919C(v27);
  MEMORY[0x277C57160](v27, v23, v24, v21);
  sub_27456C7F4(v27, type metadata accessor for ModuleSummaryModalViewModifier);
  OUTLINED_FUNCTION_56_0();
}

uint64_t sub_27456864C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();
}

void sub_2745686C4()
{
  OUTLINED_FUNCTION_55_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0);
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_48_2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2744342DC();

  sub_274638FBC();
  sub_27440CB1C(v1, &qword_2809514B0);
  OUTLINED_FUNCTION_56_0();
}

uint64_t sub_27456879C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  return v1;
}

uint64_t sub_274568810()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274638FBC();
}

uint64_t ModuleSummaryModalCoordinator.init()()
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514A0);
  OUTLINED_FUNCTION_1();
  v18 = v1;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514A8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC14WorkflowEditor29ModuleSummaryModalCoordinator__presentedModal;
  v14 = type metadata accessor for ModuleSummaryModalOptions(0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
  sub_2744342DC();
  sub_274638F6C();
  sub_27440CB1C(v12, &qword_2809514B0);
  v15 = v19;
  (*(v7 + 32))(v19 + v13, v0, v5);
  v16 = OBJC_IVAR____TtC14WorkflowEditor29ModuleSummaryModalCoordinator__currentState;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380);
  sub_274638F6C();
  (*(v18 + 32))(v15 + v16, v4, v20);
  return v15;
}

BOOL sub_274568B04()
{
  v0 = OUTLINED_FUNCTION_5_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_53_0(v1);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  v5 = type metadata accessor for ModuleSummaryModalOptions(0);
  v6 = __swift_getEnumTagSinglePayload(v4, 1, v5) != 1;
  sub_27440CB1C(v4, &qword_2809514B0);
  return v6;
}

int *ModuleSummaryModalOptions.init(stateStore:parameter:slot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_274637EDC();
  result = type metadata accessor for ModuleSummaryModalOptions(0);
  *(a4 + result[5]) = a1;
  *(a4 + result[6]) = a2;
  *(a4 + result[7]) = a3;
  return result;
}

void sub_274568C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_55_1();
  a17 = v19;
  a18 = v20;
  v21 = type metadata accessor for ModuleSummaryModalOptions(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  v24 = &a9 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0);
  OUTLINED_FUNCTION_53_0(v25);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_48_2();
  swift_unknownObjectRetain();
  sub_274568810();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  if (__swift_getEnumTagSinglePayload(v18, 1, v21))
  {
    sub_27440CB1C(v18, &qword_2809514B0);
  }

  else
  {
    sub_27456CCE0();
    sub_27440CB1C(v18, &qword_2809514B0);

    sub_27456C7F4(v24, type metadata accessor for ModuleSummaryModalOptions);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2746385BC();
  }

  OUTLINED_FUNCTION_56_0();
}

uint64_t sub_274568E14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0);
  OUTLINED_FUNCTION_53_0(v0);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  v4 = type metadata accessor for ModuleSummaryModalOptions(0);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  sub_2745686C4();
  return sub_274568810();
}

uint64_t ModuleSummaryModalCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor29ModuleSummaryModalCoordinator__presentedModal;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514A8);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC14WorkflowEditor29ModuleSummaryModalCoordinator__currentState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514A0);
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t ModuleSummaryModalCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor29ModuleSummaryModalCoordinator__presentedModal;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514A8);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC14WorkflowEditor29ModuleSummaryModalCoordinator__currentState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514A0);
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(v0 + v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_274569030@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ModuleSummaryModalCoordinator(0);
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

uint64_t ModuleSummaryModalOptions.stateStore.getter()
{
  type metadata accessor for ModuleSummaryModalOptions(0);
}

id ModuleSummaryModalOptions.parameter.getter()
{
  v1 = *(v0 + *(type metadata accessor for ModuleSummaryModalOptions(0) + 24));

  return v1;
}

id ModuleSummaryModalOptions.slot.getter()
{
  v1 = *(v0 + *(type metadata accessor for ModuleSummaryModalOptions(0) + 28));

  return v1;
}

uint64_t static ModuleSummaryModalOptions.== infix(_:_:)()
{
  if (sub_274637EBC() & 1) != 0 && (sub_274412734(0, &qword_28094C5E0), type metadata accessor for ModuleSummaryModalOptions(0), (sub_27463BF7C()))
  {
    return sub_27463BF7C() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27456919C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27456C1A8(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  *(a1 + 16) = sub_27463979C();
  *(a1 + 24) = v2;
  *(a1 + 32) = swift_getKeyPath();
  *(a1 + 40) = 0;
  *(a1 + 48) = swift_getKeyPath();
  *(a1 + 56) = 0;
  v3 = type metadata accessor for ModuleSummaryModalViewModifier(0);
  v4 = v3[8];
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  swift_storeEnumTagMultiPayload();
  v5 = a1 + v3[9];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = v3[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951568);
  sub_27463ACDC();
  *(a1 + v6) = v10;
  v7 = (a1 + v3[11]);
  type metadata accessor for NativeViewControllerContext();
  *(swift_allocObject() + 16) = 0;
  sub_27463ACDC();
  *v7 = v10;
  type metadata accessor for ModuleSummaryModalCoordinator(0);
  sub_27456C1A8(&qword_280950BA0, type metadata accessor for ModuleSummaryModalCoordinator);
  result = sub_27463950C();
  *a1 = result;
  *(a1 + 8) = v9;
  return result;
}

uint64_t sub_274569390@<X0>(uint64_t *a1@<X8>)
{
  result = OUTLINED_FUNCTION_1_2();
  *a1 = result;
  return result;
}

uint64_t sub_2745693B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a1;
  v32 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - v4;
  v5 = type metadata accessor for ModuleSummaryModalViewModifier(0);
  v6 = v5 - 8;
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951580);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951588);
  MEMORY[0x28223BE20](v34);
  v33 = &v27 - v12;
  v13 = (v3 + *(v6 + 52));
  v15 = *v13;
  v14 = v13[1];
  v37 = v15;
  v38[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951590);
  sub_27463ACEC();
  v16 = v36[0];
  sub_27463B0CC();
  sub_27463973C();
  v17 = sub_27463B0CC();
  v19 = v18;
  v36[0] = v16;
  memcpy(&v36[1], v35, 0x70uLL);
  v36[15] = v17;
  v36[16] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951598);
  (*(*(v20 - 8) + 16))(v11, v28, v20);
  memcpy(&v11[*(v9 + 44)], v36, 0x88uLL);
  v37 = v16;
  memcpy(v38, v35, 0x70uLL);
  v38[14] = v17;
  v38[15] = v19;
  sub_2744342DC();
  sub_27440CB1C(&v37, &unk_2809515A0);
  sub_27456CCE0();
  v21 = swift_allocObject();
  sub_27456C79C();
  v22 = v33;
  sub_274433B6C();
  v23 = &v22[*(v34 + 36)];
  *v23 = sub_27456C338;
  v23[1] = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v30;
  sub_274638FAC();

  sub_27456CCE0();
  swift_allocObject();
  sub_27456C79C();
  sub_27456C54C();
  sub_27456C6E8();
  v25 = v33;
  sub_27463AA3C();

  sub_27440CB1C(v24, &qword_2809514B0);
  return sub_27440CB1C(v25, &qword_280951588);
}

void sub_274569888(BOOL *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  if (*a1)
  {
    v5 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    v6 = type metadata accessor for ModuleSummaryModalOptions(0);
    v5 = __swift_getEnumTagSinglePayload(v4, 1, v6) != 1;
    sub_27440CB1C(v4, &qword_2809514B0);
  }

  *a1 = v5;
}

uint64_t sub_2745699A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for ModuleSummaryModalOptions(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModuleSummaryModalViewModifier(0);
  v11 = *(v10 + 40);
  v23 = a3;
  v12 = (a3 + v11);
  v13 = *v12;
  v14 = v12[1];
  v25 = *v12;
  v26 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809515F0);
  sub_27463ACEC();
  v15 = v24;
  if (v24)
  {
    v16 = *(v24 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_presenter);

    [v16 dismiss];
  }

  v25 = v13;
  v26 = v14;
  v24 = 0;
  sub_27463ACFC();
  sub_2744342DC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_27440CB1C(v6, &qword_2809514B0);
  }

  sub_27456C79C();
  v18 = (v23 + *(v10 + 44));
  v20 = *v18;
  v19 = v18[1];
  v25 = v20;
  v26 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951590);
  sub_27463ACEC();
  v21 = v24[2];
  v22 = v21;

  if (v21)
  {
    sub_274569C00(v9, v22);
  }

  return sub_27456C7F4(v9, type metadata accessor for ModuleSummaryModalOptions);
}

void sub_274569C00(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ModuleSummaryModalViewModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_274639ABC();
  v76 = *(v9 - 1);
  v77 = v9;
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v74 = v7;
  v75 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v16 = v15;
  sub_274412734(0, &unk_2809515F8);
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = sub_27456A3E4(a2, v14, v18, v20, v22, v24);
  objc_allocWithZone(type metadata accessor for PresenterContainer());
  v78 = v25;

  v27 = sub_27456AD08(v26);
  v28 = type metadata accessor for ModuleSummaryModalOptions(0);
  v29 = *(a1 + *(v28 + 28));
  v72 = *(a1 + *(v28 + 24));
  v71 = [v29 identifier];
  swift_getObjectType();
  v70 = sub_2746385AC();
  v30 = *(v3 + 48);
  if (*(v3 + 56) != 1)
  {

    sub_27463BC0C();
    v31 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v30, 0);
    (*(v76 + 8))(v12, v77);
    LOBYTE(v30) = v80;
  }

  v32 = *(v3 + 32);
  if (*(v3 + 40) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_27463BC0C();
    v33 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v32, 0);
    (*(v76 + 8))(v12, v77);
    v32 = v80;
  }

  v34 = v3 + *(v6 + 36);
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = v27;
  v73 = v6;
  if (v36 != 1)
  {
    sub_27456C84C(v35, 0);
    sub_27463BC0C();
    v38 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v35, 0);
    (*(v76 + 8))(v12, v77);
    LOBYTE(v35) = v80;
  }

  sub_274412734(0, &qword_2809507E0);
  v39 = v72;
  swift_getObjectType();
  v40 = sub_27456B8B8(v39, v71, v70, v30 & 1, v32, v37, v78, v35 & 1);
  v41 = *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_presenter];
  *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_presenter] = v40;
  v77 = v40;

  sub_27456CCE0();
  v42 = swift_allocObject();
  sub_27456C79C();
  v43 = &v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onShowActionOutputPicker];
  v44 = *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onShowActionOutputPicker];
  *v43 = sub_27456C858;
  v43[1] = v42;
  sub_274406A94(v44);
  sub_27456CCE0();
  v45 = swift_allocObject();
  sub_27456C79C();
  v46 = &v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onRevealAction];
  v47 = *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onRevealAction];
  *v46 = sub_27456C8E0;
  v46[1] = v45;
  sub_274406A94(v47);
  sub_27456CCE0();
  v48 = swift_allocObject();
  sub_27456C79C();
  v49 = &v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onFinish];
  v50 = *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onFinish];
  *v49 = sub_27456C970;
  v49[1] = v48;
  sub_274406A94(v50);
  sub_27456CCE0();
  sub_27463B9CC();
  v51 = sub_27463B9BC();
  v52 = swift_allocObject();
  v69 = v3;
  v53 = MEMORY[0x277D85700];
  *(v52 + 16) = v51;
  *(v52 + 24) = v53;
  v54 = v53;
  sub_27456C79C();
  sub_27456CCE0();
  v55 = sub_27463B9BC();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v54;
  sub_27456C79C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C298);
  sub_27463AF0C();
  v57 = v81;
  v58 = &v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_parameterEditingHint];
  v59 = *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_parameterEditingHint];
  v60 = *&v37[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_parameterEditingHint + 8];
  v61 = v82;
  *v58 = v80;
  *(v58 + 1) = v57;
  *(v58 + 1) = v61;
  sub_27456CBDC(v59, v60);
  v62 = v77;
  [v77 setDelegate_];
  v63 = v62;
  [v62 present];
  v64 = (v69 + *(v73 + 40));
  v65 = v64[1];
  v80 = *v64;
  v66 = v80;
  v81 = v65;
  v79 = v37;

  v67 = v37;
  v68 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809515F0);
  sub_27463ACFC();
}

id sub_27456A3E4(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSourceViewController:a1 sourceView:a2 sourceRect:{a3, a4, a5, a6}];

  return v8;
}

void sub_27456A470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (v5)
  {
    v6 = v5;
    swift_unknownObjectRetain();

    sub_27443CA58();
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27456C1A8(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_27456A54C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a2;
  v11 = sub_274639ABC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a6 + 32);
  if (*(a6 + 40) == 1)
  {
    result = swift_unknownObjectRetain();
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    v22 = v13;

    sub_27463BC0C();
    v18 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v16, 0);
    result = (*(v12 + 8))(v15, v22);
    v16 = v24;
    if (!v24)
    {
      return result;
    }
  }

  MEMORY[0x28223BE20](result);
  *(&v22 - 2) = a6;
  *(&v22 - 1) = a1;
  sub_27463B13C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7F0);
  sub_27463946C();

  v19 = *(a6 + 16);
  if (v19)
  {
    v24 = a1;
    v25 = v16;
    v26 = v23;
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v30 = 1;
    v20 = v19;
    v21 = a1;
    swift_unknownObjectRetain();

    sub_27443CA58();

    return swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27456C1A8(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27456A828@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v16 = a2;
  v15 = a1;
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  type metadata accessor for ModuleSummaryModalViewModifier(0);
  sub_2744342DC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274433B6C();
  }

  else
  {
    sub_27463BC0C();
    v10 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v11 = sub_27463969C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_27440CB1C(v9, &unk_28094D7C0);
  }

  else
  {
    v17 = v15;
    sub_27463B1BC();
    sub_27463968C();
    result = (*(*(v11 - 8) + 8))(v9, v11);
  }

  *v16 = EnumTagSinglePayload == 1;
  return result;
}

uint64_t sub_27456AB20()
{
  type metadata accessor for ModuleSummaryModalViewModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809515F0);
  return sub_27463ACFC();
}

void sub_27456AB84(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = sub_27443CDC8();
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27456C1A8(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

void sub_27456AC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4)
  {
    v5 = v4;

    sub_27443CE38();
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27456C1A8(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

id sub_27456AD08(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_presenter] = 0;
  v2 = &v1[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onShowActionOutputPicker];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v1[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onRevealAction];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onFinish];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_parameterEditingHint];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_coordinator] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PresenterContainer();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_27456AE30(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(v8, a4);

  swift_unknownObjectRelease();
}

uint64_t sub_27456AEB8()
{
  result = sub_274568E14();
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onFinish);
  if (v2)
  {

    v2(v3);

    return sub_274406A94(v2);
  }

  return result;
}

uint64_t sub_27456AF9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onShowActionOutputPicker);
  if (v5)
  {
    v9 = result;

    v5(a2, v9 & 1, a3, a4);

    return sub_274406A94(v5);
  }

  return result;
}

uint64_t sub_27456B0F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_onRevealAction);
  if (v8)
  {
    v12 = result;
    if (a6)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = a6;
      *(v14 + 24) = a7;
      v15 = sub_2744830C4;
    }

    else
    {
      v15 = CGSizeMake;
      v14 = 0;
    }

    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v14;
    sub_2744069F0(v8);
    sub_2744069F0(a6);
    v8(v12, sub_27456CCA4, v16, a4, a5);
    sub_274406A94(v8);
  }

  return result;
}

uint64_t sub_27456B3A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_parameterEditingHint + 8);
  if (v1)
  {
    sub_27456CC54(*(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_460410A17E70035D97A591FA113148C318PresenterContainer_parameterEditingHint), v1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951620);
    sub_27463AEBC();
  }

  return result;
}

id sub_27456B524()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresenterContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t View.trackModuleSummaryModal(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3;
  return MEMORY[0x277C57160](v6, a4, &type metadata for ModuleSummaryModalTrackingModifier, a5);
}

uint64_t sub_27456B638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951608);
  (*(*(v11 - 8) + 16))(a5, a1, v11);
  v12 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280951610) + 36));
  *v12 = sub_27456CC48;
  v12[1] = v10;
}

void *sub_27456B790(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = (v4 | *a1) & 1;
  return result;
}

void sub_27456B7E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2744342DC();
  sub_2745686C4();
}

id sub_27456B8B8(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return sub_27456B954(a1, a2, a3, a4, a5, a6, a7, a8, v18);
}

id sub_27456B954(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7, char a8, id a9)
{
  LOBYTE(v14) = a8;
  v12 = [a9 initWithParameter:a1 slotIdentifier:a2 initialState:a3 isProcessing:a4 & 1 variableProvider:a5 variableUIDelegate:a6 presentationAnchor:a7 allowsPickingVariables:v14];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v12;
}

void sub_27456BA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_55_1();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809514B0);
  OUTLINED_FUNCTION_53_0(v26);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  swift_getObjectType();
  sub_2746385AC();
  sub_274568810();
  sub_274637EDC();
  v30 = type metadata accessor for ModuleSummaryModalOptions(0);
  *&v29[v30[5]] = v21;
  *&v29[v30[6]] = v25;
  *&v29[v30[7]] = v23;
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);

  v31 = v25;
  v32 = v23;
  sub_2745686C4();
  OUTLINED_FUNCTION_56_0();
}

void sub_27456BB20()
{
  sub_27456C1F0(319, &qword_2809514E0, &qword_2809514B0, &unk_27465A468, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_27456C1F0(319, &unk_2809514E8, &unk_28094B380, &unk_27464B110, MEMORY[0x277CBCED0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_27456BD00()
{
  result = sub_274637EEC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ParameterStateStore();
    if (v2 <= 0x3F)
    {
      result = sub_27456BDC4();
      if (v3 <= 0x3F)
      {
        result = sub_274412734(319, &qword_28094BD80);
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

unint64_t sub_27456BDC4()
{
  result = qword_280951508;
  if (!qword_280951508)
  {
    sub_274412734(255, &qword_28094AE40);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280951508);
  }

  return result;
}

unint64_t sub_27456BE60()
{
  result = qword_280951540;
  if (!qword_280951540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951540);
  }

  return result;
}

uint64_t sub_27456BEB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_27456BEF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27456BF6C()
{
  sub_27456C114();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_274481024();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_27456C1F0(319, &qword_280950080, &unk_28094D7B0, &unk_2746507D0, MEMORY[0x277CDF468]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_27453EAA0();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_27456C1F0(319, &qword_280950D10, &unk_28094D7C0, &unk_274651B60, MEMORY[0x277CDF468]);
          if (v10 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_27456C1F0(319, &qword_280951560, &qword_280951568, &unk_27465A630, MEMORY[0x277CE10B8]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_27456C254();
              v1 = v13;
              if (v14 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_27456C114()
{
  if (!qword_280951558)
  {
    type metadata accessor for ModuleSummaryModalCoordinator(255);
    sub_27456C1A8(&qword_280950BA0, type metadata accessor for ModuleSummaryModalCoordinator);
    v0 = sub_27463953C();
    if (!v1)
    {
      atomic_store(v0, &qword_280951558);
    }
  }
}

uint64_t sub_27456C1A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_27456C1F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_27456C254()
{
  if (!qword_280951570)
  {
    type metadata accessor for NativeViewControllerContext();
    v0 = sub_27463AD1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280951570);
    }
  }
}

unint64_t sub_27456C2E4()
{
  result = qword_280951578;
  if (!qword_280951578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951578);
  }

  return result;
}

void sub_27456C338(BOOL *a1)
{
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_30_2();

  sub_274569888(a1);
}

uint64_t objectdestroyTm_18()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ModuleSummaryModalViewModifier(0);
  OUTLINED_FUNCTION_3_14();
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  OUTLINED_FUNCTION_14_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_27463969C();
    if (!OUTLINED_FUNCTION_73_0(v5))
    {
      (*(*(v1 - 8) + 8))(v4 + v2, v1);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_20();

  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_27456C4DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_30_2();

  return sub_2745699A0(a1, a2, v2 + v5);
}

unint64_t sub_27456C54C()
{
  result = qword_2809515B0;
  if (!qword_2809515B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951588);
    sub_27456C604();
    sub_27440CA78(&qword_2809515D0, &qword_2809515D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809515B0);
  }

  return result;
}

unint64_t sub_27456C604()
{
  result = qword_2809515B8;
  if (!qword_2809515B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951580);
    sub_27440CA78(&qword_2809515C0, &qword_280951598);
    sub_27440CA78(&qword_2809515C8, &unk_2809515A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809515B8);
  }

  return result;
}

unint64_t sub_27456C6E8()
{
  result = qword_2809515E0;
  if (!qword_2809515E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809514B0);
    sub_27456C1A8(&qword_2809515E8, type metadata accessor for ModuleSummaryModalOptions);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809515E0);
  }

  return result;
}

uint64_t sub_27456C79C()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

uint64_t sub_27456C7F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_27456C84C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_27456C858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_30_2();

  sub_27456A470(a1, a2, a3, a4, v4 + v9);
}

uint64_t sub_27456C8E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_30_2();

  return sub_27456A54C(a1, a2, a3, a4, a5, v5 + v11);
}

uint64_t sub_27456C970()
{
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_30_2();

  return sub_27456AB20();
}

void sub_27456C9C0(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_1_32();
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_27456AB84(v4, a1);
}

uint64_t objectdestroy_61Tm()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ModuleSummaryModalViewModifier(0);
  OUTLINED_FUNCTION_3_14();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_14_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_27463969C();
    if (!OUTLINED_FUNCTION_73_0(v5))
    {
      (*(*(v1 - 8) + 8))(v0 + v4 + v2, v1);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_20();

  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

void sub_27456CB74(uint64_t a1)
{
  OUTLINED_FUNCTION_1_32();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_27456AC2C(a1, v4, v5, v6);
}

uint64_t sub_27456CBDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_27456CC54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_27456CCE0()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

unint64_t sub_27456CD58()
{
  result = qword_280951628;
  if (!qword_280951628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280951610);
    sub_27440CA78(&qword_280951630, &qword_280951608);
    sub_27440CA78(&qword_280951638, qword_280951640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951628);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_34()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_9_20()
{
  sub_2743F45E8(*(v1 + *(v0 + 36)), *(v1 + *(v0 + 36) + 8));
  v2 = *(v1 + *(v0 + 40));
}

uint64_t sub_27456CEF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_27456CF90()
{
  sub_27463C74C();
  sub_274506E4C(v2, *v0);
  return sub_27463C7AC();
}

uint64_t sub_27456CFD0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_27463AC2C();
  v14 = *v1;
  v15 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20);
  MEMORY[0x277C575F0](&v13, v4);
  if (v13)
  {
    v5 = 1.57079633;
  }

  else
  {
    v5 = 0.0;
  }

  sub_27463B1DC();
  v7 = v6;
  v9 = v8;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_280951760) + 36));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA48);
  sub_27456D0FC(v10 + *(v11 + 28));
  result = swift_getKeyPath();
  *v10 = result;
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_27456D0FC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CE1058];
  v3 = sub_27463AC8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_27456D170@<X0>(uint64_t a1@<X8>)
{
  v12 = *v1;
  v13 = *(v1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20);
  MEMORY[0x277C575F0](&v11, v3);
  v4 = 24;
  if (v11)
  {
    v4 = 40;
  }

  v5 = *(v1 + v4);

  *&v12 = v5;
  *(&v12 + 1) = v6;
  sub_274412BBC();
  result = sub_27463A53C();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_27456D22C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809516D0);
  v3 = *(a1 + 16);
  sub_27463C0AC();
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  v4 = sub_27463AE6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  v11 = *(a1 + 24);
  v16 = v3;
  v17 = v11;
  v18 = v1;
  sub_274415324();
  sub_27463AE5C();
  OUTLINED_FUNCTION_45_0();
  WitnessTable = swift_getWitnessTable();
  sub_2744E9688(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_2744E9688(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t sub_27456D424@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v47 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v45 - v9;
  v51 = sub_27463C0AC();
  v54 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809516D8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809516D0);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  memcpy(v22 + 4, a1, 0x49uLL);
  v59 = a2;
  v60 = a3;
  v61 = a1;
  v23 = type metadata accessor for CollapsibleDisclosureView();
  (*(*(v23 - 8) + 16))(&v65, a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809516E0);
  sub_27456E260();
  sub_27463AD5C();
  v24 = sub_27440CA78(&qword_280951740, &qword_2809516D8);
  v25 = sub_274482428();
  v58 = v21;
  v49 = v24;
  v48 = v25;
  sub_27463A6AC();
  v26 = *(v15 + 8);
  v50 = v14;
  v26(v17, v14);
  v65 = *a1;
  LOBYTE(v66) = *(a1 + 16);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20);
  v28 = MEMORY[0x277C575F0](v64, v27);
  if (LOBYTE(v64[0]) == 1)
  {
    v29 = v46;
    (*(a1 + 7))(v28);
    v30 = v45;
    sub_2744E9688(v29, a2, a3);
    v31 = v47;
    v32 = *(v47 + 8);
    v32(v29, a2);
    sub_2744E9688(v30, a2, a3);
    v32(v30, a2);
    (*(v31 + 32))(v11, v29, a2);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = v11;
  __swift_storeEnumTagSinglePayload(v11, v33, 1, a2);
  v35 = v56;
  sub_2745758B8(v11, v56);
  v36 = v54;
  v37 = *(v54 + 8);
  v38 = v11;
  v39 = v51;
  v37(v38, v51);
  v40 = v53;
  v41 = v52;
  v42 = v55;
  (*(v53 + 16))(v52, v58, v55);
  v64[0] = v41;
  (*(v36 + 16))(v34, v35, v39);
  v63[0] = v42;
  v63[1] = v39;
  v64[1] = v34;
  *&v65 = v50;
  *(&v65 + 1) = &type metadata for ParameterRowButtonStyle;
  v66 = v49;
  v67 = v48;
  *&v65 = swift_getOpaqueTypeConformance2();
  v62 = a3;
  *(&v65 + 1) = swift_getWitnessTable();
  sub_274575750(v64, 2, v63);
  v37(v35, v39);
  v43 = *(v40 + 8);
  v43(v58, v42);
  v37(v34, v39);
  return (v43)(v41, v42);
}

uint64_t sub_27456DAE8()
{
  sub_27463B13C();
  sub_27463946C();
}

uint64_t sub_27456DB58(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v11 = v2;
  v7 = v2;
  v8 = v1;
  v9 = v3;
  sub_27445E9E4(&v11, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20);
  MEMORY[0x277C575F0](&v10);
  v5[0] = v2;
  v5[1] = v1;
  v6 = v3;
  sub_27463AEBC();
  sub_274501A18(&v11);
}

uint64_t sub_27456DC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v39 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951738);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951728);
  MEMORY[0x28223BE20](v38);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951718);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951708);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809516F8);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  *v6 = sub_274639B2C();
  *(v6 + 1) = 0x4010000000000000;
  v6[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951748);
  sub_27456E02C(&v6[*(v18 + 44)]);
  if (*(a1 + 72))
  {
    v19 = sub_27463ABCC();
  }

  else
  {
    v19 = sub_27463ABBC();
  }

  v20 = v19;
  KeyPath = swift_getKeyPath();
  sub_2744CE5D8(v6, v8, &qword_280951738);
  v22 = &v8[*(v38 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = sub_27463A3AC();
  v24 = swift_getKeyPath();
  sub_2744CE5D8(v8, v11, &qword_280951728);
  v25 = &v11[*(v9 + 36)];
  *v25 = v24;
  v25[1] = v23;
  LOBYTE(v23) = sub_27463A31C();
  sub_2746390AC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_2744CE5D8(v11, v14, &qword_280951718);
  v34 = &v14[*(v12 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  sub_27456E3A4();
  sub_27457574C();
  sub_27463973C();
  sub_2744CE5D8(v14, v17, &qword_280951708);
  memcpy(&v17[*(v15 + 36)], __src, 0x70uLL);
  sub_27456E318();
  sub_2744E8F6C();
  LOBYTE(v23) = sub_2744E19A0();
  v35 = v39;
  sub_2744CE5D8(v17, v39, &qword_2809516F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809516E0);
  *(v35 + *(result + 36)) = v23 & 1;
  return result;
}

uint64_t sub_27456E02C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951750);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-1] - v7;
  type metadata accessor for CollapsibleDisclosureView();
  sub_27456D170(v19);
  v9 = v19[0];
  v10 = v19[1];
  v11 = v20;
  v12 = v22;
  v18 = v21;
  sub_27456CFD0(v8);
  v13 = sub_27463ABCC();
  KeyPath = swift_getKeyPath();
  v15 = &v8[*(v3 + 44)];
  *v15 = KeyPath;
  v15[1] = v13;
  sub_27456E5CC(v8, v5);
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v18;
  *(a1 + 32) = v12;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951758);
  sub_27456E5CC(v5, a1 + *(v16 + 64));
  sub_27440B094(v9, v10, v11);

  sub_27456E63C(v8);
  sub_27456E63C(v5);
  sub_274412C10(v9, v10, v11);
}

unint64_t sub_27456E260()
{
  result = qword_2809516E8;
  if (!qword_2809516E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809516E0);
    sub_27456E318();
    sub_27440CA78(&unk_28094DE30, &qword_28094AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809516E8);
  }

  return result;
}

unint64_t sub_27456E318()
{
  result = qword_2809516F0;
  if (!qword_2809516F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809516F8);
    sub_27456E3A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809516F0);
  }

  return result;
}

unint64_t sub_27456E3A4()
{
  result = qword_280951700;
  if (!qword_280951700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951708);
    sub_27456E430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951700);
  }

  return result;
}

unint64_t sub_27456E430()
{
  result = qword_280951710;
  if (!qword_280951710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951718);
    sub_27456E4E8();
    sub_27440CA78(&unk_28094AA00, &qword_28094CC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951710);
  }

  return result;
}

unint64_t sub_27456E4E8()
{
  result = qword_280951720;
  if (!qword_280951720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951728);
    sub_27440CA78(&qword_280951730, &qword_280951738);
    sub_27440CA78(&unk_28094D180, &qword_28094C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951720);
  }

  return result;
}

uint64_t sub_27456E5CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27456E63C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_27456E6CC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_27456E7CC()
{
  OUTLINED_FUNCTION_25_13();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_27_9();
  v1 = OUTLINED_FUNCTION_26();
  v2(v1);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_28_12();
}

uint64_t sub_27456E878()
{
  OUTLINED_FUNCTION_25_13();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_27_9();
  v1 = OUTLINED_FUNCTION_26();
  v2(v1);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_28_12();
}

uint64_t sub_27456E9A8()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_274438758();
  *v0 = result & 1;
  return result;
}

uint64_t sub_27456E9FC()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_2744387D8();
  *v0 = result;
  return result;
}

uint64_t ModuleSummaryRowView.init(parameter:stateStore:style:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 40) = sub_274542524;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274575490(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  v12 = a2[1];
  v13 = *a2;
  *(a3 + 80) = sub_27463979C();
  *(a3 + 88) = v6;
  *(a3 + 96) = swift_getKeyPath();
  *(a3 + 104) = 0;
  *(a3 + 112) = swift_getKeyPath();
  *(a3 + 152) = 0;
  *(a3 + 160) = swift_getKeyPath();
  *(a3 + 168) = 0;
  *(a3 + 176) = swift_getKeyPath();
  *(a3 + 184) = 0;
  *(a3 + 192) = swift_getKeyPath();
  *(a3 + 200) = 0;
  v7 = type metadata accessor for ModuleSummaryRowView();
  v8 = *(v7 + 64);
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  swift_storeEnumTagMultiPayload();
  v9 = a3 + *(v7 + 68);
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  *(a3 + 24) = v12;
  *(a3 + 8) = v13;
  *a3 = a1;
  result = sub_27456ED58();
  *(a3 + 64) = result;
  *(a3 + 72) = v11;
  return result;
}

uint64_t sub_27456EC10(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_24_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  sub_27445EAD4(a1, &v7 - v4, &unk_28094D7C0);
  return sub_2744B2F78(v5);
}

uint64_t sub_27456ECB0()
{
  type metadata accessor for ModuleSummaryModalCoordinator(0);
  sub_274575490(&qword_280950BA0, type metadata accessor for ModuleSummaryModalCoordinator);

  return sub_27463920C();
}

uint64_t sub_27456ED58()
{
  type metadata accessor for ParameterStateStore();
  sub_274575490(&qword_28094B550, type metadata accessor for ParameterStateStore);

  return sub_27463950C();
}

uint64_t sub_27456EDD4()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 96);
  if (*(v0 + 104) != 1)
  {

    sub_27463BC0C();
    v6 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_27456EF1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_27445EAD4(v1 + 112, v10, &qword_28094E078);
  if (v12 == 1)
  {
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v11;
  }

  else
  {
    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_27456F08C(_BYTE *a1@<X8>)
{
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 160);
  if (*(v1 + 168) == 1)
  {
    *a1 = v7;
  }

  else
  {

    sub_27463BC0C();
    v8 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v7, 0);
    (*(v4 + 8))(v6, v3);
  }
}

void ModuleSummaryRowView.body.getter()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v58 = v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809517F0);
  v55 = *(v2 + 16);
  type metadata accessor for SlotParameterPicker();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809517F8);
  OUTLINED_FUNCTION_22();
  sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280951800);
  OUTLINED_FUNCTION_22();
  sub_274639DEC();
  sub_27463965C();
  OUTLINED_FUNCTION_22();
  sub_274639DEC();
  OUTLINED_FUNCTION_22();
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  v4 = sub_27463ADAC();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  sub_274639DEC();
  OUTLINED_FUNCTION_1();
  v56 = v12;
  v57 = v11;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  v16 = sub_27456F818();
  if (v16)
  {
    v17 = v16;
    v53 = &v53;
    MEMORY[0x28223BE20](v16);
    v54 = v10;
    *(&v53 - 4) = v55;
    *(&v53 - 3) = v0;
    *(&v53 - 2) = v18;
    sub_274639B2C();
    sub_27463AD9C();
    OUTLINED_FUNCTION_5_1();
    WitnessTable = swift_getWitnessTable();
    v20 = v54;
    v21 = OUTLINED_FUNCTION_18_10();
    sub_2744E9688(v21, v22, WitnessTable);
    v23 = *(v6 + 8);
    v24 = OUTLINED_FUNCTION_18_10();
    v23(v24);
    sub_2744E9688(v20, v4, WitnessTable);
    sub_274573A5C();
    OUTLINED_FUNCTION_18_10();
    sub_27456E7CC();

    v25 = OUTLINED_FUNCTION_18_10();
    v23(v25);
    (v23)(v20, v4);
  }

  else
  {
    v54 = v15;
    v55 = v4;
    *&v88[0] = 31524;
    *(&v88[0] + 1) = 0xE200000000000000;
    v26 = v0;
    v27 = *v0;
    v28 = [*v0 key];
    sub_27463B6AC();

    v29 = OUTLINED_FUNCTION_24_5();
    MEMORY[0x277C57EA0](v29);

    MEMORY[0x277C57EA0](125, 0xE100000000000000);
    v53 = *(&v88[0] + 1);
    v30 = *&v88[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274648560;
    *(inited + 32) = v27;
    if (sub_274453594(inited))
    {
      v32 = v27;
      sub_274573900(inited, v33, v34, v35, v36, v37, v38, v39, v53);
      v41 = v40;
    }

    else
    {
      swift_setDeallocating();
      v42 = v27;
      sub_2744EBB98();
      v41 = MEMORY[0x277D84FA0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951810);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_274648570;
    v44 = [v27 key];
    v45 = sub_27463B6AC();
    v47 = v46;

    *(v43 + 32) = v45;
    *(v43 + 40) = v47;
    *(v43 + 48) = v26[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809521A0);
    OUTLINED_FUNCTION_6_19();
    v48 = sub_2746387CC();
    KeyPath = swift_getKeyPath();
    v75 = 0;
    v76 = swift_getKeyPath();
    v77 = 0;
    v78 = swift_getKeyPath();
    v79 = 0;
    v80 = swift_getKeyPath();
    v81 = 0;
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280951040);
    sub_27463ACDC();
    v82 = v88[0];
    v83 = v88[1];
    v84 = v88[2];
    v86 = 0;
    v87 = 0;
    v64[0] = v30;
    v64[1] = v53;
    v64[2] = v41;
    v64[3] = v48;
    v64[4] = 0;
    v65 = 2;
    v85 = sub_274550400;
    v73 = 0;
    v67 = 0;
    v68 = 0;
    v66 = MEMORY[0x277D84F90];
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    sub_274556FE0(v64, v88);
    OUTLINED_FUNCTION_5_1();
    swift_getWitnessTable();
    sub_274573A5C();
    v15 = v54;
    sub_27456E878();
    sub_274573AB0(v88);
  }

  OUTLINED_FUNCTION_5_1();
  v49 = swift_getWitnessTable();
  v50 = sub_274573A5C();
  v59 = v49;
  v60 = v50;
  OUTLINED_FUNCTION_9_0();
  v51 = v57;
  v52 = swift_getWitnessTable();
  sub_2744E9688(v15, v51, v52);
  (*(v56 + 8))(v15, v51);
  OUTLINED_FUNCTION_23();
}

id sub_27456F818()
{
  v1 = *v0;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata respondsToSelector_])
  {
    v3 = [ObjCClassFromMetadata supportsEditingMultipleValues];
  }

  else
  {
    v3 = 0;
  }

  if ([v1 allowsMultipleValues])
  {
    if ((sub_27456EDD4() & 1) == 0)
    {
      v4 = 0;
      if ([v1 isRangedSizeArray] & 1) != 0 || ((v3 ^ 1))
      {
        return v4;
      }
    }
  }

  v5 = sub_27456FFE0();
  if (v5)
  {
    v6 = v5;
    if (WFParameterStateIsMultipleValue(v5) && (([v1 isRangedSizeArray] & 1) != 0 || (v3 & 1) == 0))
    {
      goto LABEL_22;
    }

    IsVariable = WFParameterStateIsVariable(v6);
    swift_unknownObjectRelease();
    if (IsVariable)
    {
      return 0;
    }
  }

  if (([v1 respondsToSelector_] & 1) == 0)
  {
    if ([v1 respondsToSelector_])
    {
      v4 = [v1 moduleSummarySlotForState_];
      goto LABEL_23;
    }

    return 0;
  }

  v4 = [v1 moduleSummarySlotsForState_];
  if (!v4)
  {
LABEL_23:
    swift_unknownObjectRelease();
    return v4;
  }

  sub_274412734(0, &qword_28094BD80);
  v8 = sub_27463B81C();
  swift_unknownObjectRelease();

  if (sub_274453594(v8) != 1)
  {
    if ((sub_27456EDD4() & 1) == 0)
    {
      goto LABEL_27;
    }

    if (sub_27456FFE0())
    {

LABEL_22:
      swift_unknownObjectRelease();
      return 0;
    }
  }

  if (!sub_274453594(v8))
  {
LABEL_27:

    return 0;
  }

  sub_2744535A4(0, (v8 & 0xC000000000000001) == 0);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x277C58B20](0, v8);
  }

  else
  {
    v9 = *(v8 + 32);
  }

  v4 = v9;

  return v4;
}

uint64_t sub_27456FA88@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v48 = a3;
  type metadata accessor for SlotParameterPicker();
  v4 = sub_27463965C();
  v5 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809517F8);
  v43 = v5;
  v6 = sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280951800);
  v45 = v6;
  v44 = sub_274639DEC();
  v46 = sub_27463965C();
  v7 = sub_274639DEC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v34 - v12;
  v13 = *a1;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  type metadata accessor for ModuleSummaryRowView();
  if (!v14)
  {
    goto LABEL_8;
  }

  v41 = v4;
  v15 = v13;
  if (!sub_27456FFE0())
  {

    goto LABEL_8;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16 || (v17 = [v14 accessoryColorForPossibleState_]) == 0)
  {

    swift_unknownObjectRelease();
LABEL_8:
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    goto LABEL_9;
  }

  v18 = v17;
  sub_27463B0CC();
  sub_2746392FC();
  v39 = v60;
  v40 = v58;
  v35 = v61;
  v36 = v59;
  v37 = v63;
  v38 = v62;
  v19 = [v18 platformColor];
  v34 = sub_27463AB0C();

  swift_unknownObjectRelease();
  KeyPath = swift_getKeyPath();
  LOBYTE(v57[0]) = v35;
  *&v64 = v40;
  BYTE8(v64) = v36;
  *&v65 = v39;
  BYTE8(v65) = v35;
  *&v66 = v38;
  *(&v66 + 1) = v37;
  *&v67 = KeyPath;
  *(&v67 + 1) = v34;
LABEL_9:
  sub_274570074();
  WitnessTable = swift_getWitnessTable();
  v56[12] = WitnessTable;
  v56[13] = MEMORY[0x277CDFC60];
  v22 = swift_getWitnessTable();
  v23 = MEMORY[0x277CDFC48];
  v56[10] = v22;
  v56[11] = MEMORY[0x277CDFC48];
  v24 = swift_getWitnessTable();
  v25 = sub_27440CA78(&qword_280951978, &qword_2809517F8);
  v56[8] = v24;
  v56[9] = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_274574990();
  v56[6] = v26;
  v56[7] = v27;
  v28 = swift_getWitnessTable();
  v56[4] = WitnessTable;
  v56[5] = v23;
  v29 = swift_getWitnessTable();
  v56[2] = v28;
  v56[3] = v29;
  v30 = swift_getWitnessTable();
  v31 = v47;
  sub_2744E9688(v10, v7, v30);
  v32 = *(v8 + 8);
  v32(v10, v7);
  v52 = v64;
  v53 = v65;
  v54 = v66;
  v55 = v67;
  v56[0] = &v52;
  (*(v8 + 16))(v10, v31, v7);
  v56[1] = v10;
  sub_27445EAD4(&v64, v57, &qword_2809517F0);
  v51[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809517F0);
  v51[1] = v7;
  v49 = sub_274574DEC();
  v50 = v30;
  sub_274575750(v56, 2, v51);
  sub_27440CB1C(&v64, &qword_2809517F0);
  v32(v31, v7);
  v32(v10, v7);
  v57[0] = v52;
  v57[1] = v53;
  v57[2] = v54;
  v57[3] = v55;
  return sub_27440CB1C(v57, &qword_2809517F0);
}

uint64_t sub_27456FFE0()
{
  sub_27456ECB0();
  v0 = sub_274568B04();

  if (v0)
  {
    sub_27456ECB0();
    v1 = sub_27456879C();
  }

  else
  {

    swift_getObjectType();
    v1 = sub_2746385AC();
  }

  v2 = v1;

  return v2;
}

void sub_274570074()
{
  OUTLINED_FUNCTION_24();
  v186 = v3;
  v187 = v2;
  v174 = v4;
  v177 = *(v4 + 16);
  v5 = type metadata accessor for SlotParameterPicker();
  v6 = sub_27463965C();
  OUTLINED_FUNCTION_1();
  v176 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v175 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v163 = &v158 - v12;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809519B0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_27_9();
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A28);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_40_1();
  v167 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280951800);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_40_1();
  v172 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809517F8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_40_1();
  v160 = v21;
  v22 = sub_27463965C();
  v23 = sub_27463965C();
  v169 = v19;
  sub_274639DEC();
  OUTLINED_FUNCTION_1();
  v171 = v24;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_40_1();
  v170 = v26;
  v183 = v27;
  v178 = v16;
  sub_274639DEC();
  OUTLINED_FUNCTION_1();
  v180 = v28;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_40_1();
  v179 = v30;
  v190 = v5;
  v165 = *(v5 - 8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_40_1();
  v164 = v32;
  v189 = v22;
  v161 = *(v22 - 8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v33);
  v188 = v23;
  v34 = *(v23 - 8);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v173 = &v158 - v40;
  v182 = v41;
  sub_274639DEC();
  OUTLINED_FUNCTION_1();
  v184 = v43;
  v185 = v42;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_40_1();
  v181 = v45;
  v47 = *(v0 + 8);
  v46 = *(v0 + 16);
  v48 = *(v0 + 24);
  v49 = *(v0 + 32);
  v162 = v38;
  v175 = v34;
  v176 = v6;
  v50 = v1;
  v51 = v47;
  v52 = v49;
  v53 = v48;
  switch(v46)
  {
    case 0uLL:
      goto LABEL_5;
    case 1uLL:
      v54 = v48;
      sub_274575008(v47, 1uLL);
      v55 = sub_274639B2C();
      v56 = v160;
      *v160 = v55;
      v56[1] = 0x4020000000000000;
      *(v56 + 16) = 0;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A38);
      sub_2745719BC(v187, v47, 1, v54, v49, v56 + *(v57 + 44));
      OUTLINED_FUNCTION_0_41();
      WitnessTable = swift_getWitnessTable();
      v209 = WitnessTable;
      v210 = MEMORY[0x277CDFC60];
      OUTLINED_FUNCTION_15_16();
      v207 = swift_getWitnessTable();
      v208 = MEMORY[0x277CDFC48];
      v59 = swift_getWitnessTable();
      v60 = OUTLINED_FUNCTION_1_33(&qword_280951978, &qword_2809517F8);
      v61 = v170;
      sub_27456E878();
      v205 = v59;
      v206 = v60;
      v62 = OUTLINED_FUNCTION_36_6();
      v63 = sub_274574990();
      v64 = v179;
      sub_27456E7CC();
      (*(v171 + 8))(v61, v52);
      v203 = v62;
      v204 = v63;
      v65 = MEMORY[0x277CDFC60];
      v66 = v182;
      swift_getWitnessTable();
      v201 = WitnessTable;
      v202 = MEMORY[0x277CDFC48];
      swift_getWitnessTable();
      v67 = v66;
      v68 = v181;
      sub_27456E7CC();
      OUTLINED_FUNCTION_38_5();
      v69(v64, v67);
      v70 = v56;
      v71 = &qword_2809517F8;
      goto LABEL_6;
    case 2uLL:
      goto LABEL_4;
    case 3uLL:
      sub_274575008(v47, 3uLL);
      v115 = sub_274639B2C();
      v223 = 0;
      sub_2745725C4(v187, v226);
      memcpy(v224, v226, sizeof(v224));
      memcpy(v225, v226, sizeof(v225));
      sub_27445EAD4(v224, v221, &qword_280951A30);
      sub_27440CB1C(v225, &qword_280951A30);
      memcpy(&v222[7], v224, 0xA0uLL);
      v116 = v223;
      sub_27463B0CC();
      sub_2746392FC();
      *v226 = v115;
      *&v226[8] = 0x4020000000000000;
      v226[16] = v116;
      memcpy(&v226[17], v222, 0xA7uLL);
      memcpy(v167, v226, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_27445EAD4(v226, v221, &qword_280951990);
      v117 = OUTLINED_FUNCTION_24_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(v117);
      sub_274574A1C();
      sub_274574AD4();
      v118 = v172;
      OUTLINED_FUNCTION_44_4();
      OUTLINED_FUNCTION_0_41();
      v187 = swift_getWitnessTable();
      v219 = v187;
      v65 = MEMORY[0x277CDFC60];
      v220 = MEMORY[0x277CDFC60];
      OUTLINED_FUNCTION_4_29();
      v217 = swift_getWitnessTable();
      v218 = MEMORY[0x277CDFC48];
      v119 = OUTLINED_FUNCTION_35_5();
      v120 = OUTLINED_FUNCTION_1_33(&qword_280951978, &qword_2809517F8);
      v215 = v119;
      v216 = v120;
      OUTLINED_FUNCTION_12_15();
      v121 = OUTLINED_FUNCTION_36_6();
      v122 = sub_274574990();
      v123 = v179;
      sub_27456E878();
      sub_27440CB1C(v118, &unk_280951800);
      v213 = v121;
      v214 = v122;
      v124 = v182;
      swift_getWitnessTable();
      v211 = v187;
      v212 = MEMORY[0x277CDFC48];
      OUTLINED_FUNCTION_42_6();
      v68 = v181;
      sub_27456E7CC();
      sub_27440CB1C(v226, &qword_280951990);
      OUTLINED_FUNCTION_38_5();
      v125(v123, v124);
      break;
    case 4uLL:
      v51 = 0;
      v52 = 0;
      v53 = 0;
      if ([v187 preferContextMenu])
      {
LABEL_4:
        v72 = OUTLINED_FUNCTION_18_10();
        sub_274575008(v72, v73);
        sub_27456FFE0();
        *v226 = v51;
        *&v226[8] = 2;
        *&v226[16] = v53;
        *&v226[24] = v52;
        v74 = v187;
        sub_27457162C();
        swift_unknownObjectRelease();
        v75 = *v0;

        v76 = v74;
        v77 = v75;
        v78 = v164;
        sub_27453BF94();
        OUTLINED_FUNCTION_0_41();
        v156 = v190;
        v157 = swift_getWitnessTable();
        sub_27457574C();
        sub_27463A90C();
        (*(v165 + 8))(v78, v156);
        v199 = v157;
        v200 = MEMORY[0x277CDFC60];
        v79 = v189;
        v80 = swift_getWitnessTable();
        sub_27456E994(v79, v80);
        v81 = OUTLINED_FUNCTION_24_5();
        v82(v81);
        v197 = v80;
        v198 = MEMORY[0x277CDFC48];
        v83 = v188;
        v84 = swift_getWitnessTable();
        v85 = OUTLINED_FUNCTION_21_12();
        sub_2744E9688(v85, v86, v84);
        v87 = *(v175 + 8);
        v175 += 8;
        v187 = v87;
        v88 = OUTLINED_FUNCTION_21_12();
        v89(v88);
        v90 = OUTLINED_FUNCTION_24_5();
        sub_2744E9688(v90, v91, v84);
        v92 = OUTLINED_FUNCTION_1_33(&qword_280951978, &qword_2809517F8);
        OUTLINED_FUNCTION_21_12();
        sub_27456E7CC();
        v195 = v84;
        v196 = v92;
        v93 = OUTLINED_FUNCTION_36_6();
        v94 = sub_274574990();
        v95 = v179;
        OUTLINED_FUNCTION_26();
        sub_27456E7CC();
        v96 = OUTLINED_FUNCTION_26();
        v97(v96);
        v193 = v93;
        v194 = v94;
        v98 = v182;
        swift_getWitnessTable();
        v191 = v157;
        v192 = MEMORY[0x277CDFC48];
        swift_getWitnessTable();
        v68 = v181;
        OUTLINED_FUNCTION_18_10();
        sub_27456E7CC();
        OUTLINED_FUNCTION_38_5();
        v99 = v95;
        v65 = MEMORY[0x277CDFC60];
        v100(v99, v98);
        v101 = v187;
        (v187)(v162, v83);
        v101(v173, v83);
      }

      else
      {
LABEL_5:
        *v226 = v51;
        *&v226[8] = 0;
        *&v226[16] = v53;
        *&v226[24] = v52;
        v102 = OUTLINED_FUNCTION_18_10();
        sub_274575008(v102, v103);
        v159 = v50;
        sub_274571F1C(v187, v226, v174, v50);
        sub_27445EAD4(v50, v167, &qword_2809519B0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951990);
        sub_274574A1C();
        sub_274574AD4();
        v104 = v172;
        OUTLINED_FUNCTION_44_4();
        OUTLINED_FUNCTION_0_41();
        v105 = swift_getWitnessTable();
        v235 = v105;
        v236 = MEMORY[0x277CDFC60];
        OUTLINED_FUNCTION_4_29();
        v233 = swift_getWitnessTable();
        v234 = MEMORY[0x277CDFC48];
        v106 = OUTLINED_FUNCTION_35_5();
        v107 = OUTLINED_FUNCTION_1_33(&qword_280951978, &qword_2809517F8);
        v231 = v106;
        v232 = v107;
        OUTLINED_FUNCTION_12_15();
        v108 = OUTLINED_FUNCTION_36_6();
        v109 = sub_274574990();
        v110 = v179;
        sub_27456E878();
        sub_27440CB1C(v104, &unk_280951800);
        v229 = v108;
        v230 = v109;
        v111 = v182;
        swift_getWitnessTable();
        v227 = v105;
        v228 = MEMORY[0x277CDFC48];
        OUTLINED_FUNCTION_42_6();
        OUTLINED_FUNCTION_18_10();
        v68 = v112;
        sub_27456E7CC();
        OUTLINED_FUNCTION_38_5();
        v113 = v110;
        v65 = MEMORY[0x277CDFC60];
        v114(v113, v111);
        v70 = v159;
        v71 = &qword_2809519B0;
LABEL_6:
        sub_27440CB1C(v70, v71);
      }

      break;
    default:
      v126 = *v0;
      v127 = v48;

      v128 = OUTLINED_FUNCTION_18_10();
      v158 = v127;
      sub_274575008(v128, v129);
      v130 = v187;

      v131 = v126;

      v132 = v164;
      OUTLINED_FUNCTION_18_10();
      sub_27453BF94();
      OUTLINED_FUNCTION_0_41();
      v133 = v190;
      v134 = swift_getWitnessTable();
      v135 = v175;
      sub_27456E994(v133, v134);
      (*(v165 + 8))(v132, v133);
      v257 = v134;
      v258 = MEMORY[0x277CDFC48];
      OUTLINED_FUNCTION_4_29();
      v136 = swift_getWitnessTable();
      v137 = v163;
      v180 = v136;
      sub_2744E9688(v135, v47, v136);
      v187 = *(v176 + 8);
      v176 += 8;
      (v187)(v135, v47);
      sub_2744E9688(v137, v47, v136);
      v255 = v134;
      v256 = MEMORY[0x277CDFC60];
      v253 = swift_getWitnessTable();
      v254 = MEMORY[0x277CDFC48];
      v138 = OUTLINED_FUNCTION_35_5();
      v139 = OUTLINED_FUNCTION_1_33(&qword_280951978, &qword_2809517F8);
      v251 = v138;
      v252 = v139;
      v140 = OUTLINED_FUNCTION_36_6();
      v141 = sub_274574990();
      v249 = v140;
      v250 = v141;
      swift_getWitnessTable();
      v142 = v181;
      v143 = v175;
      sub_27456E878();
      v144 = v47;
      v65 = MEMORY[0x277CDFC60];
      v68 = v142;
      sub_274575060(v144, v46);
      v145 = v187;
      (v187)(v143, v51);
      v145(v163, v51);
      break;
  }

  OUTLINED_FUNCTION_0_41();
  v146 = swift_getWitnessTable();
  v247 = v146;
  v248 = v65;
  OUTLINED_FUNCTION_15_16();
  v245 = swift_getWitnessTable();
  v147 = MEMORY[0x277CDFC48];
  v246 = MEMORY[0x277CDFC48];
  v148 = swift_getWitnessTable();
  v149 = OUTLINED_FUNCTION_1_33(&qword_280951978, &qword_2809517F8);
  v243 = v148;
  v244 = v149;
  v150 = swift_getWitnessTable();
  v151 = sub_274574990();
  v241 = v150;
  v242 = v151;
  v152 = swift_getWitnessTable();
  v239 = v146;
  v240 = v147;
  v153 = swift_getWitnessTable();
  v237 = v152;
  v238 = v153;
  v154 = v185;
  v155 = swift_getWitnessTable();
  sub_2744E9688(v68, v154, v155);
  (*(v184 + 8))(v68, v154);
  OUTLINED_FUNCTION_23();
}

void sub_2745712E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_9();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  v30 = sub_27456FFE0();
  v31 = sub_274571404(v27, v30);
  v33 = v32;
  swift_unknownObjectRelease();
  if (v33)
  {
    a11 = v31;
    a12 = v33;
    sub_274412BBC();
    v34 = sub_27463A53C();
    v36 = v35;
    v38 = v37;
    sub_27456F08C(&a11);
    if (a11 == 2)
    {
      sub_27463ABCC();
    }

    else
    {
      sub_27463ABBC();
    }

    v39 = sub_27463A4DC();
    v40 = v43;
    v45 = v44;
    v42 = v46;

    sub_274412C10(v34, v36, v38 & 1);

    v41 = v45 & 1;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  *v29 = v39;
  v29[1] = v40;
  v29[2] = v41;
  v29[3] = v42;
  OUTLINED_FUNCTION_16_10();
}

uint64_t sub_274571404(void *a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    return v2;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = [v4 parameterStates]) != 0)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50);
    v7 = sub_27463B81C();

    v8 = sub_274453594(v7);

    v2 = 0;
    if (!v8 || !a1)
    {
      return v2;
    }
  }

  else if (!a1)
  {
    return 0;
  }

  v9 = [a1 contentAttributedString];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [v9 string];
  v2 = sub_27463B6AC();
  v13 = v12;

  sub_27463B72C();
  v14 = sub_27463B73C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A40);
  sub_27440CA78(&qword_280951A48, &qword_280951A40);
  sub_274412BBC();
  v15 = sub_27463C06C();
  if ([v10 containsAttachmentsInRange_])
  {
    v17 = sub_274573708(v14, v2, v13);
    v2 = MEMORY[0x277C57E40](v17);
  }

  return v2;
}

void sub_27457162C()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = v0;
  v5 = *(v4 + 8);
  if (v5)
  {
    if (v5 == 1)
    {
      sub_27463B70C();
      if (qword_2809492C0 != -1)
      {
        OUTLINED_FUNCTION_2_22();
      }

      v6 = qword_28094BB00;
      v7 = sub_27463B66C();
      v8 = sub_27463B66C();

      v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

      sub_27463B6AC();
      OUTLINED_FUNCTION_34_8();
    }

    else
    {
      v11 = [v0 localizedPlaceholder];
      if (v11)
      {
        v12 = v11;
        sub_27463B6AC();
        OUTLINED_FUNCTION_34_8();
      }

      else
      {
        v17 = [v3 languageCode];
        if (v17)
        {
          v18 = v17;
          sub_27463B6AC();
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        sub_27463B70C();
        if (qword_2809492C0 != -1)
        {
          OUTLINED_FUNCTION_2_22();
        }

        v26 = qword_28094BB00;
        v27 = sub_27463B66C();
        v28 = sub_27463B66C();

        if (v20)
        {
          OUTLINED_FUNCTION_21_12();
          v29 = sub_27463B66C();
        }

        else
        {
          v29 = 0;
        }

        v12 = [v26 localizedStringForKey:v27 value:v28 table:0 localization:v29];

        sub_27463B6AC();
        OUTLINED_FUNCTION_34_8();
      }

      sub_274571404(v3, v2);
      if (v30)
      {
      }
    }
  }

  else
  {
    sub_274571404(v0, v1);
    if (v10)
    {
      OUTLINED_FUNCTION_34_8();
    }

    else
    {
      v13 = [v3 languageCode];
      if (v13)
      {
        v14 = v13;
        sub_27463B6AC();
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      sub_27463B70C();
      if (qword_2809492C0 != -1)
      {
        OUTLINED_FUNCTION_2_22();
      }

      v21 = qword_28094BB00;
      v22 = sub_27463B66C();
      v23 = sub_27463B66C();

      if (v16)
      {
        v24 = sub_27463B66C();
      }

      else
      {
        v24 = 0;
      }

      v25 = [v21 localizedStringForKey:v22 value:v23 table:0 localization:v24];

      sub_27463B6AC();
      OUTLINED_FUNCTION_34_8();
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2745719BC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  *&v45 = a2;
  *(&v45 + 1) = a3;
  v50 = a6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A50);
  MEMORY[0x28223BE20](v49);
  v10 = &v45 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A58);
  MEMORY[0x28223BE20](v46);
  v48 = &v45 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A60);
  MEMORY[0x28223BE20](v47);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809519B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  v20 = type metadata accessor for ModuleSummaryRowView();
  sub_27456F08C(&v54 + 7);
  if (HIBYTE(v54) > 1u)
  {
    sub_2745712E4(a1, v20, v21, v22, v23, v24, v25, v26, v45, *(&v45 + 1), v46, v47, v48, v49, v50, v51, *(&v51 + 1), v52, v53, v54, v55, v56, v57, v58);
    v39 = v51;
    v40 = a4;
    v42 = v52;
    v41 = v53;
    v51 = v45;
    v52 = v40;
    v53 = a5;
    sub_274571F1C(a1, &v51, v20, v19);
    sub_27445EAD4(v19, v16, &qword_2809519B0);
    *v10 = v39;
    *(v10 + 2) = v42;
    *(v10 + 3) = v41;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A68);
    sub_27445EAD4(v16, &v10[*(v43 + 48)], &qword_2809519B0);
    sub_274483EE8(v39, *(&v39 + 1), v42, v41);
    sub_274483EE8(v39, *(&v39 + 1), v42, v41);
    sub_27440CB1C(v16, &qword_2809519B0);
    sub_274483F2C(v39, *(&v39 + 1), v42, v41);
    sub_27445EAD4(v10, v48, &qword_280951A50);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_280951A70, &qword_280951A60);
    sub_27440CA78(&qword_280951A78, &qword_280951A50);
    sub_274639DDC();
    sub_274483F2C(v39, *(&v39 + 1), v42, v41);
    v37 = v10;
    v38 = &qword_280951A50;
  }

  else
  {
    v51 = v45;
    v52 = a4;
    v53 = a5;
    sub_274571F1C(a1, &v51, v20, v19);
    sub_2745712E4(a1, v20, v27, v28, v29, v30, v31, v32, v45, *(&v45 + 1), v46, v47, v48, v49, v50, v51, *(&v51 + 1), v52, v53, v54, v55, v56, v57, v58);
    v33 = v51;
    v34 = v52;
    v35 = v53;
    sub_27445EAD4(v19, v16, &qword_2809519B0);
    sub_27445EAD4(v16, v13, &qword_2809519B0);
    v36 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A80) + 48)];
    *v36 = v33;
    *(v36 + 2) = v34;
    *(v36 + 3) = v35;
    sub_274483EE8(v33, *(&v33 + 1), v34, v35);
    sub_274483EE8(v33, *(&v33 + 1), v34, v35);
    sub_274483F2C(v33, *(&v33 + 1), v34, v35);
    sub_27440CB1C(v16, &qword_2809519B0);
    sub_27445EAD4(v13, v48, &qword_280951A60);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_280951A70, &qword_280951A60);
    sub_27440CA78(&qword_280951A78, &qword_280951A50);
    sub_274639DDC();
    sub_274483F2C(v33, *(&v33 + 1), v34, v35);
    v37 = v13;
    v38 = &qword_280951A60;
  }

  sub_27440CB1C(v37, v38);
  return sub_27440CB1C(v19, &qword_2809519B0);
}

uint64_t sub_274571F1C@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a2;
  v47 = a1;
  v54 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951AC0);
  MEMORY[0x28223BE20](v51);
  v53 = &v43 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809519C0);
  MEMORY[0x28223BE20](v52);
  v43 = &v43 - v7;
  v49 = sub_274639EFC();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809519D8);
  MEMORY[0x28223BE20](v45);
  v44 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809519D0);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v4, a3, v16);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = *(a3 + 16);
  *(v20 + 16) = v21;
  (*(v13 + 32))(v20 + v18, v17, a3);
  v22 = v47;
  *(v20 + v19) = v47;
  v23 = v12;
  v24 = v10;
  v55 = v21;
  v56 = v4;
  v57 = v22;
  v25 = *v48;
  v59 = v48[1];
  v58 = v25;
  v26 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951AC8);
  sub_27440CA78(&unk_280951AD0, &qword_280951AC8);
  v27 = v44;
  sub_27463AD5C();
  *(v27 + *(v45 + 36)) = 256;
  v28 = v46;
  sub_274639EEC();
  sub_274574D34();
  sub_274575490(&qword_28094A6B8, MEMORY[0x277CDE0B8]);
  v29 = v49;
  sub_27463A69C();
  (*(v50 + 8))(v28, v29);
  sub_27440CB1C(v27, &qword_2809519D8);
  sub_27456ECB0();
  sub_27456919C(v23 + *(v24 + 36));
  sub_27456EF1C(v60);
  v30 = v61;
  sub_27440CB1C(v60, &unk_2809507C0);
  if ((v30 || (sub_27456F08C(v60), v60[0] == 2)) && (sub_27456EDD4() & 1) == 0)
  {
    v31 = sub_27463A38C();
    sub_2746390AC();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = v43;
    sub_27445EAD4(v23, v43, &qword_2809519D0);
    v41 = v40 + *(v52 + 36);
    *v41 = v31;
    *(v41 + 8) = v33;
    *(v41 + 16) = v35;
    *(v41 + 24) = v37;
    *(v41 + 32) = v39;
    *(v41 + 40) = 0;
    sub_27445EAD4(v40, v53, &qword_2809519C0);
    swift_storeEnumTagMultiPayload();
    sub_274574B60();
    sub_274574BEC();
    sub_274639DDC();

    sub_27440CB1C(v40, &qword_2809519C0);
  }

  else
  {
    sub_27445EAD4(v23, v53, &qword_2809519D0);
    swift_storeEnumTagMultiPayload();
    sub_274574B60();
    sub_274574BEC();
    sub_274639DDC();
  }

  return sub_27440CB1C(v23, &qword_2809519D0);
}

uint64_t sub_2745725C4@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v38 = a1;
  v3 = sub_27463AC3C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModuleSummaryRowView();
  if (!sub_27456FFE0())
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7 || (v8 = v7, v39 = &unk_2883D82C8, (v9 = swift_dynamicCastObjCProtocolConditional()) == 0) || (v10 = [v9 wf:v8 pickerLocalizedImageForState:?]) == 0)
  {
    swift_unknownObjectRelease();
LABEL_9:
    sub_2745750A8(__src);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 representationType];
  v37 = v11;
  if (v12 == 4)
  {
    v13 = [v11 tintColor];
    v14 = sub_27463BF5C();
    v15 = v14;
    if (v13)
    {
      v36 = v13;
      v16 = sub_27463AB2C();
      KeyPath = swift_getKeyPath();
      *&__src[0] = v15;
      *(&__src[0] + 1) = KeyPath;
      *&__src[1] = v16;
      BYTE8(__src[1]) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951AB0);
      sub_274575164();
      sub_274639DDC();
    }

    else
    {
      *&__src[1] = 0;
      __src[0] = v14;
      BYTE8(__src[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951AB0);
      sub_274575164();
      sub_274639DDC();
    }

    v29 = BYTE8(v42[1]);
    v34 = v42[0];
    __src[0] = v42[0];
    *&__src[1] = *&v42[1];
    BYTE8(__src[1]) = BYTE8(v42[1]);
    v30 = *&v42[1];
    v35 = *&v42[1];
    LODWORD(v36) = BYTE8(v42[1]);
    sub_2745752A0(__src);
    memcpy(v42, __src, 0x79uLL);
    v31 = v34;
    sub_2745752A8(v34, *(&v34 + 1), v30, v29);
    sub_2745752A8(v31, *(&v31 + 1), v30, v29);
    *&v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A90);
    sub_2745750D8();
    sub_27457521C();
    sub_274639DDC();

    swift_unknownObjectRelease();
    v32 = v35;
    v33 = v36;
    sub_2745752F8(v31, *(&v31 + 1), v35, v36);
    sub_2745752F8(v31, *(&v31 + 1), v32, v33);
  }

  else
  {
    sub_27463BF5C();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v36 = sub_27463AC9C();

    (*(v4 + 8))(v6, v3);
    sub_27463B0CC();
    sub_27463973C();
    v41[0] = v36;
    memcpy(__src, v41, 0x78uLL);
    sub_2745750CC(__src);
    memcpy(v42, __src, 0x79uLL);
    sub_27445EAD4(v41, v43, &qword_280951A90);
    sub_27445EAD4(v41, v43, &qword_280951A90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951A90);
    sub_2745750D8();
    sub_27457521C();
    sub_274639DDC();

    swift_unknownObjectRelease();
    sub_27440CB1C(v41, &qword_280951A90);
    sub_27440CB1C(v41, &qword_280951A90);
  }

  memcpy(v42, v43, 0x79uLL);
  memcpy(v43, v42, 0x79uLL);
  CGSizeMake(v43);
  memcpy(__src, v43, 0x79uLL);
LABEL_10:
  v18 = sub_27456FFE0();
  v19 = sub_274571404(v38, v18);
  v21 = v20;
  swift_unknownObjectRelease();
  if (v21)
  {
    *&v42[0] = v19;
    *(&v42[0] + 1) = v21;
    sub_274412BBC();
    v22 = sub_27463A53C();
    v21 = v23;
    v25 = v24;
    v27 = v26 & 1;
    sub_27440B094(v22, v23, v26 & 1);
  }

  else
  {
    v22 = 0;
    v27 = 0;
    v25 = 0;
  }

  memcpy(v40, __src, sizeof(v40));
  memcpy(v41, __src, 0x79uLL);
  memcpy(v42, __src, 0x79uLL);
  sub_27445EAD4(v41, v43, &qword_280951A88);
  sub_274483EE8(v22, v21, v27, v25);
  sub_274483F2C(v22, v21, v27, v25);
  memcpy(a2, v42, 0x80uLL);
  a2[16] = v22;
  a2[17] = v21;
  a2[18] = v27;
  a2[19] = v25;
  sub_274483F2C(v22, v21, v27, v25);
  memcpy(v43, v40, 0x79uLL);
  return sub_27440CB1C(v43, &qword_280951A88);
}

uint64_t sub_274572CAC()
{
  sub_27463B13C();
  sub_27463946C();
}

void *sub_274572DB0@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  type metadata accessor for ModuleSummaryRowView();
  sub_27456EF1C(v24);
  v14 = v25 == 0;
  sub_27440CB1C(v24, &unk_2809507C0);
  v15 = sub_274639B2C();
  v21 = 0;
  sub_274572F0C(a1, a2, a3, a4, a5, 2 * v14, a6, __src);
  memcpy(__dst, __src, 0xBAuLL);
  memcpy(v23, __src, 0xBAuLL);
  sub_27445EAD4(__dst, &v18, &unk_280951AE0);
  sub_27440CB1C(v23, &unk_280951AE0);
  memcpy(&v20[7], __dst, 0xBAuLL);
  v16 = v21;
  *a7 = v15;
  *(a7 + 8) = 0x4018000000000000;
  *(a7 + 16) = v16;
  return memcpy((a7 + 17), v20, 0xC1uLL);
}

uint64_t sub_274572F0C@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, int a6@<W6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v58 = a6;
  *(&v55 + 1) = a3;
  v56 = a4;
  *&v55 = a2;
  v57 = a8;
  v11 = sub_27463AC3C();
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D678);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52 - v15;
  type metadata accessor for ModuleSummaryRowView();
  sub_27456EF1C(&v84);
  v17 = *(&v85 + 1);
  sub_27440CB1C(&v84, &unk_2809507C0);
  if (!v17)
  {
    v61 = 0;
    v62 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    v59 = 0;
    v60 = 0;
    goto LABEL_22;
  }

  v54 = a5;
  v18 = [a1 contentAttributedString];
  if (!v18)
  {
LABEL_20:
    v61 = 0;
    v62 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    v59 = 0;
    v60 = 0;
    goto LABEL_21;
  }

  v19 = v18;
  v20 = [v18 string];
  v21 = sub_27463B6AC();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    if ([v19 attribute:*MEMORY[0x277D74060] atIndex:0 effectiveRange:0])
    {
      sub_27463C13C();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v72, 0, 32);
    }

    v84 = v72[0];
    v85 = v72[1];
    if (*(&v72[1] + 1))
    {
      sub_274412734(0, &qword_280951B08);
      if (swift_dynamicCast())
      {
        v65 = v74[0];
        v25 = [v74[0] image];
        if (v25)
        {
          v26 = v25;
          v61 = sub_27463B0CC();
          v69 = v27;
          v28 = v26;
          v64 = v28;
          sub_27463AC5C();
          v29 = [v28 renderingMode];
          v30 = sub_27463AC7C();
          v31 = MEMORY[0x277CE1010];
          if (v29 != 1)
          {
            v31 = MEMORY[0x277CE1020];
          }

          (*(*(v30 - 8) + 104))(v16, *v31, v30);
          __swift_storeEnumTagSinglePayload(v16, 0, 1, v30);
          sub_27463AC4C();

          sub_27440CB1C(v16, &qword_28094D678);
          v33 = v66;
          v32 = v67;
          (*(v66 + 104))(v13, *MEMORY[0x277CE0FE0], v67);
          v68 = sub_27463AC9C();

          (*(v33 + 8))(v13, v32);
          sub_27463B0CC();
          sub_2746392FC();

          LOBYTE(v84) = 1;
          LOBYTE(v72[0]) = 1;
          v66 = v99;
          v67 = v98;
          v64 = v101;
          v65 = v100;
          v62 = v103;
          v63 = v102;
          v59 = 1;
          v60 = 1;
          goto LABEL_21;
        }
      }

      else
      {
      }
    }

    else
    {

      sub_27440CB1C(&v84, &unk_28094A230);
    }

    goto LABEL_20;
  }

  v61 = 0;
  v62 = 0;
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v59 = 0;
  v60 = 0;
LABEL_21:
  a5 = v54;
LABEL_22:
  sub_27456FFE0();
  v84 = v55;
  *&v85 = v56;
  *(&v85 + 1) = a5;
  sub_27457162C();
  v35 = v34;
  v37 = v36;
  swift_unknownObjectRelease();
  *&v84 = v35;
  *(&v84 + 1) = v37;
  sub_274412BBC();
  v38 = sub_27463A53C();
  v40 = v39;
  v42 = v41;
  v56 = v43;
  sub_27456EF1C(v72);
  if (!*(&v72[1] + 1))
  {
    sub_27440CB1C(v72, &unk_2809507C0);
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0B0);
  if (!swift_dynamicCast())
  {
LABEL_28:
    v84 = 0u;
    v85 = 0u;
    v86 = xmmword_274653F30;
    v44 = 5;
    goto LABEL_29;
  }

  if (v86 == 1)
  {
    v44 = 5;
  }

  else
  {
    v44 = 1;
  }

LABEL_29:
  sub_27440CB1C(&v84, &qword_280951AF0);
  KeyPath = swift_getKeyPath();
  v46 = swift_getKeyPath();
  *&v55 = v46;
  v47 = v42 & 1;
  v97 = v47;
  v95 = 0;
  DWORD2(v55) = sub_27456EDD4() & 1;
  *&v72[0] = v61;
  *(&v72[0] + 1) = v69;
  *&v72[1] = 0;
  *(&v72[1] + 1) = v59;
  *&v72[2] = 0;
  *(&v72[2] + 1) = v60;
  *&v72[3] = v68;
  *(&v72[3] + 1) = v67;
  *&v72[4] = v66;
  *(&v72[4] + 1) = v65;
  *&v72[5] = v64;
  *(&v72[5] + 1) = v63;
  *&v72[6] = v62;
  memcpy(v71, v72, 0x68uLL);
  v73[0] = v38;
  v73[1] = v40;
  LOBYTE(v73[2]) = v47;
  v53 = v38;
  v54 = v40;
  *(&v73[2] + 1) = *v96;
  HIDWORD(v73[2]) = *&v96[3];
  v48 = v56;
  v73[3] = v56;
  v73[4] = KeyPath;
  v73[5] = v44;
  LOBYTE(v73[6]) = 0;
  *(&v73[6] + 1) = *v94;
  HIDWORD(v73[6]) = *&v94[3];
  v73[7] = v46;
  LOBYTE(v46) = v58;
  LOBYTE(v73[8]) = v58;
  memcpy(&v71[104], v73, 0x41uLL);
  v49 = DWORD2(v55) == 0;
  v70 = DWORD2(v55) == 0;
  v50 = v57;
  memcpy(v57, v71, 0xB0uLL);
  v50[22] = 0;
  *(v50 + 184) = BYTE8(v55);
  *(v50 + 185) = v49;
  v74[0] = v53;
  v74[1] = v54;
  v75 = v47;
  *v76 = *v96;
  *&v76[3] = *&v96[3];
  v77 = v48;
  v78 = KeyPath;
  v79 = v44;
  v80 = 0;
  *v81 = *v94;
  *&v81[3] = *&v94[3];
  v82 = v55;
  v83 = v46;
  sub_27445EAD4(v72, &v84, &qword_280951AF8);
  sub_27445EAD4(v73, &v84, &qword_280951B00);
  sub_27440CB1C(v74, &qword_280951B00);
  *&v84 = v61;
  *(&v84 + 1) = v69;
  *&v85 = 0;
  *(&v85 + 1) = v59;
  *&v86 = 0;
  *(&v86 + 1) = v60;
  v87 = v68;
  v88 = v67;
  v89 = v66;
  v90 = v65;
  v91 = v64;
  v92 = v63;
  v93 = v62;
  return sub_27440CB1C(&v84, &qword_280951AF8);
}

unint64_t sub_274573708(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_27463B7AC();

    return v4;
  }

  return result;
}

void sub_2745737B0()
{
  OUTLINED_FUNCTION_15_9();
  v5 = v4;
  v6 = sub_274453594(v4);
  if (v6)
  {
    v1 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280951950);
    OUTLINED_FUNCTION_6_19();
    v7 = sub_27463C35C();
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  if (sub_274453594(v5))
  {
    OUTLINED_FUNCTION_37_5();
    v20 = v8;
    while (1)
    {
      v9 = OUTLINED_FUNCTION_9_21();
      sub_2744535A4(v9, v10);
      v11 = v1 ? MEMORY[0x277C58B20](v2, v5) : *(v20 + 8 * v2);
      v12 = v11;
      v13 = __OFADD__(v2++, 1);
      if (v13)
      {
        break;
      }

      v1 = v11;
      sub_27463BF6C();
      OUTLINED_FUNCTION_8_24();
      while (1)
      {
        OUTLINED_FUNCTION_32_8();
        if (v17)
        {
          break;
        }

        type metadata accessor for WFEditorCell();
        v18 = *(*(v7 + 48) + 8 * v0);
        v1 = sub_27463BF7C();

        if (v1)
        {

          goto LABEL_17;
        }
      }

      *(v3 + 8 * v14) = v16 | v15;
      *(*(v7 + 48) + 8 * v0) = v12;
      OUTLINED_FUNCTION_23_11();
      if (v13)
      {
        goto LABEL_21;
      }

      *(v7 + 16) = v19;
LABEL_17:
      OUTLINED_FUNCTION_39_6();
      if (v17)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:

    OUTLINED_FUNCTION_16_10();
  }
}

void sub_274573900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_15_9();
  v12 = v11;
  v13 = sub_274453594(v11);
  if (v13)
  {
    v9 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954990);
    OUTLINED_FUNCTION_6_19();
    v14 = sub_27463C35C();
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  if (sub_274453594(v12))
  {
    v15 = 0;
    OUTLINED_FUNCTION_10_24();
    while (1)
    {
      v16 = OUTLINED_FUNCTION_9_21();
      sub_2744535A4(v16, v17);
      if (v9)
      {
        v18 = OUTLINED_FUNCTION_21_12();
        v19 = MEMORY[0x277C58B20](v18);
      }

      else
      {
        v19 = *(a9 + 8 * v15);
      }

      v20 = v19;
      v21 = __OFADD__(v15++, 1);
      if (v21)
      {
        break;
      }

      v9 = v19;
      sub_27463BF6C();
      OUTLINED_FUNCTION_8_24();
      while (1)
      {
        OUTLINED_FUNCTION_31_9();
        if (v23)
        {
          break;
        }

        sub_274412734(0, &qword_28094AE40);
        v24 = *(*(v14 + 48) + 8 * v10);
        v9 = sub_27463BF7C();

        if (v9)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_26_10(v22);
      *(v25 + 8 * v10) = v20;
      OUTLINED_FUNCTION_23_11();
      if (v21)
      {
        goto LABEL_21;
      }

      *(v14 + 16) = v26;
LABEL_17:
      OUTLINED_FUNCTION_39_6();
      if (v23)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:

    OUTLINED_FUNCTION_16_10();
  }
}

unint64_t sub_274573A5C()
{
  result = qword_280951818[0];
  if (!qword_280951818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280951818);
  }

  return result;
}

uint64_t sub_274573B54()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ModuleSummaryRowView.Style();
    v0 = sub_27463C0AC();
    if (v2 <= 0x3F)
    {
      sub_274573D7C();
      v0 = v3;
      if (v4 <= 0x3F)
      {
        sub_274573E10();
        v0 = v5;
        if (v6 <= 0x3F)
        {
          sub_274481024();
          v0 = v7;
          if (v8 <= 0x3F)
          {
            sub_2744335D4(319, &qword_28094C510);
            v0 = v9;
            if (v10 <= 0x3F)
            {
              sub_274431978(319, &qword_28094A5F0, &unk_2809507C0);
              if (v12 > 0x3F)
              {
                return v11;
              }

              sub_2744335D4(319, &unk_28094A600);
              if (v13 > 0x3F)
              {
                return v11;
              }

              sub_274431978(319, &qword_280950080, &unk_28094D7B0);
              if (v14 > 0x3F)
              {
                return v11;
              }

              sub_274431978(319, &qword_280950D10, &unk_28094D7C0);
              if (v15 > 0x3F)
              {
                return v11;
              }

              else
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_274573D7C()
{
  if (!qword_2809518A8)
  {
    type metadata accessor for ModuleSummaryModalCoordinator(255);
    sub_274575490(&qword_280950BA0, type metadata accessor for ModuleSummaryModalCoordinator);
    v0 = sub_27463922C();
    if (!v1)
    {
      atomic_store(v0, &qword_2809518A8);
    }
  }
}

void sub_274573E10()
{
  if (!qword_2809518B8[0])
  {
    type metadata accessor for ParameterStateStore();
    sub_274575490(&qword_28094B550, type metadata accessor for ParameterStateStore);
    v0 = sub_27463953C();
    if (!v1)
    {
      atomic_store(v0, qword_2809518B8);
    }
  }
}

uint64_t sub_274573EA4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor20ModuleSummaryRowViewV5StyleOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_274573EF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 32))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274573F4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_274573FAC(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_274573FD0(uint64_t a1)
{
  v4 = sub_274453594(a1);
  if (v4)
  {
    v2 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FFB8);
    OUTLINED_FUNCTION_6_19();
    v5 = sub_27463C35C();
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  if (sub_274453594(a1))
  {
    v6 = 0;
    v7 = v5 + 56;
    OUTLINED_FUNCTION_10_24();
    while (1)
    {
      v8 = OUTLINED_FUNCTION_9_21();
      sub_2744535A4(v8, v9);
      if (v2)
      {
        v10 = OUTLINED_FUNCTION_21_12();
        v11 = MEMORY[0x277C58B20](v10);
      }

      else
      {
        v11 = *(v25 + 8 * v6);
      }

      v12 = __OFADD__(v6++, 1);
      if (v12)
      {
        break;
      }

      v26 = v11;
      v13 = sub_274638ECC();
      OUTLINED_FUNCTION_16_15();
      sub_274575490(&unk_280951960, v14);
      v2 = &v26;
      sub_27463B55C();
      OUTLINED_FUNCTION_8_24();
      v17 = ~v16;
      while (1)
      {
        v18 = v15 & v17;
        v19 = (v15 & v17) >> 6;
        v20 = *(v7 + 8 * v19);
        v21 = v1 << (v15 & v17);
        if ((v21 & v20) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_16_15();
        sub_274575490(&qword_28094FFB0, v22);
        v2 = v13;
        if (sub_27463B5BC())
        {

          goto LABEL_17;
        }

        v15 = v18 + 1;
      }

      *(v7 + 8 * v19) = v21 | v20;
      *(*(v5 + 48) + 8 * v18) = v11;
      OUTLINED_FUNCTION_23_11();
      if (v12)
      {
        goto LABEL_21;
      }

      *(v5 + 16) = v23;
LABEL_17:
      OUTLINED_FUNCTION_39_6();
      if (v24)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:
  }
}

void sub_2745741B0(uint64_t a1)
{
  if (sub_274453594(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951970);
    OUTLINED_FUNCTION_6_19();
    v5 = sub_27463C35C();
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v18 = sub_274453594(a1);
  if (v18)
  {
    OUTLINED_FUNCTION_37_5();
    v16 = v6;
    v17 = v7;
    while (1)
    {
      sub_2744535A4(v2, v17 == 0);
      if (v17)
      {
        v8 = MEMORY[0x277C58B20](v2, a1);
      }

      else
      {
        v8 = *(v16 + 8 * v2);
      }

      v9 = __OFADD__(v2++, 1);
      if (v9)
      {
        break;
      }

      sub_27463C74C();
      (*(*v8 + 200))(v19);
      sub_27463C7AC();
      OUTLINED_FUNCTION_8_24();
      while (1)
      {
        OUTLINED_FUNCTION_32_8();
        if (v13)
        {
          break;
        }

        v14 = sub_274599D28();
        if (v14 == sub_274599D28())
        {

          goto LABEL_17;
        }
      }

      *(v3 + 8 * v10) = v12 | v11;
      *(*(v5 + 48) + 8 * v1) = v8;
      OUTLINED_FUNCTION_23_11();
      if (v9)
      {
        goto LABEL_20;
      }

      *(v5 + 16) = v15;
LABEL_17:
      if (v2 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_274574354()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v2 = sub_274639BEC();
  OUTLINED_FUNCTION_1();
  v37 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v41 = &v32 - v9;
  if (*(v1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951B18), OUTLINED_FUNCTION_6_19(), v10 = sub_27463C35C(), v11 = v10, (v36 = *(v1 + 16)) != 0))
  {
    v12 = 0;
    v40 = v10 + 56;
    v13 = *(v37 + 80);
    v34 = v1;
    v35 = v1 + ((v13 + 32) & ~v13);
    v39 = v37 + 16;
    v14 = (v37 + 8);
    v33 = (v37 + 32);
    while (v12 < *(v1 + 16))
    {
      v15 = *(v37 + 72);
      v38 = v12 + 1;
      v16 = *(v37 + 16);
      v16(v41, v35 + v15 * v12, v2);
      OUTLINED_FUNCTION_17_12();
      sub_274575490(&qword_280951B20, v17);
      v18 = sub_27463B55C();
      v19 = ~(-1 << *(v11 + 32));
      while (1)
      {
        v20 = v18 & v19;
        v21 = (v18 & v19) >> 6;
        v22 = *(v40 + 8 * v21);
        v23 = 1 << (v18 & v19);
        if ((v23 & v22) == 0)
        {
          break;
        }

        v24 = v11;
        v16(v7, *(v11 + 48) + v20 * v15, v2);
        OUTLINED_FUNCTION_17_12();
        sub_274575490(&unk_280951B28, v25);
        v26 = sub_27463B5BC();
        v27 = *v14;
        (*v14)(v7, v2);
        if (v26)
        {
          v27(v41, v2);
          v11 = v24;
          goto LABEL_12;
        }

        v18 = v20 + 1;
        v11 = v24;
      }

      v28 = v41;
      *(v40 + 8 * v21) = v23 | v22;
      (*v33)(*(v11 + 48) + v20 * v15, v28, v2);
      v29 = *(v11 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_15;
      }

      *(v11 + 16) = v31;
LABEL_12:
      v12 = v38;
      v1 = v34;
      if (v38 == v36)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    OUTLINED_FUNCTION_23();
  }
}

void sub_27457464C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951B10), OUTLINED_FUNCTION_6_19(), v2 = sub_27463C35C(), (v21 = *(v1 + 16)) != 0))
  {
    v3 = 0;
    v19 = v1;
    v20 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v20 + 8 * v3++);
      sub_27463B6AC();
      sub_27463C74C();
      v22 = v4;
      sub_27463B71C();
      v5 = sub_27463C7AC();

      OUTLINED_FUNCTION_8_24();
      v7 = ~v6;
      while (1)
      {
        v8 = v5 & v7;
        v9 = (v5 & v7) >> 6;
        if (((1 << (v5 & v7)) & *(v2 + 56 + 8 * v9)) == 0)
        {
          break;
        }

        v10 = sub_27463B6AC();
        v12 = v11;
        if (v10 == sub_27463B6AC() && v12 == v13)
        {

          goto LABEL_17;
        }

        v15 = sub_27463C6BC();

        if (v15)
        {

          goto LABEL_17;
        }

        v5 = v8 + 1;
      }

      OUTLINED_FUNCTION_26_10(v9);
      *(v16 + 8 * v8) = v22;
      OUTLINED_FUNCTION_23_11();
      if (v18)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v17;
LABEL_17:
      v1 = v19;
      if (v3 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_274574834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_15_9();
  v12 = v11;
  v13 = sub_274453594(v11);
  if (v13)
  {
    v9 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280951940);
    OUTLINED_FUNCTION_6_19();
    v14 = sub_27463C35C();
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  if (sub_274453594(v12))
  {
    v15 = 0;
    OUTLINED_FUNCTION_10_24();
    while (1)
    {
      v16 = OUTLINED_FUNCTION_9_21();
      sub_2744535A4(v16, v17);
      if (v9)
      {
        v18 = OUTLINED_FUNCTION_21_12();
        v19 = MEMORY[0x277C58B20](v18);
      }

      else
      {
        v19 = *(a9 + 8 * v15);
      }

      v20 = v19;
      v21 = __OFADD__(v15++, 1);
      if (v21)
      {
        break;
      }

      v9 = v19;
      sub_27463BF6C();
      OUTLINED_FUNCTION_8_24();
      while (1)
      {
        OUTLINED_FUNCTION_31_9();
        if (v23)
        {
          break;
        }

        sub_274412734(0, &qword_280950FD0);
        v24 = *(*(v14 + 48) + 8 * v10);
        v9 = sub_27463BF7C();

        if (v9)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_26_10(v22);
      *(v25 + 8 * v10) = v20;
      OUTLINED_FUNCTION_23_11();
      if (v21)
      {
        goto LABEL_21;
      }

      *(v14 + 16) = v26;
LABEL_17:
      OUTLINED_FUNCTION_39_6();
      if (v23)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:

    OUTLINED_FUNCTION_16_10();
  }
}

unint64_t sub_274574990()
{
  result = qword_280951980;
  if (!qword_280951980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280951800);
    sub_274574A1C();
    sub_274574AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951980);
  }

  return result;
}

unint64_t sub_274574A1C()
{
  result = qword_280951988;
  if (!qword_280951988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951990);
    sub_27440CA78(&qword_280951998, &qword_2809519A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951988);
  }

  return result;
}

unint64_t sub_274574AD4()
{
  result = qword_2809519A8;
  if (!qword_2809519A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809519B0);
    sub_274574B60();
    sub_274574BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809519A8);
  }

  return result;
}

unint64_t sub_274574B60()
{
  result = qword_2809519B8;
  if (!qword_2809519B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809519C0);
    sub_274574BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809519B8);
  }

  return result;
}

unint64_t sub_274574BEC()
{
  result = qword_2809519C8;
  if (!qword_2809519C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809519D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809519D8);
    sub_274639EFC();
    sub_274574D34();
    sub_274575490(&qword_28094A6B8, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_274575490(&qword_280950C70, type metadata accessor for ModuleSummaryModalViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809519C8);
  }

  return result;
}

unint64_t sub_274574D34()
{
  result = qword_2809519E0;
  if (!qword_2809519E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809519D8);
    sub_27440CA78(&qword_2809519E8, &qword_2809519F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809519E0);
  }

  return result;
}

unint64_t sub_274574DEC()
{
  result = qword_2809519F8;
  if (!qword_2809519F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809517F0);
    sub_274574E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809519F8);
  }

  return result;
}

unint64_t sub_274574E70()
{
  result = qword_280951A00;
  if (!qword_280951A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951A08);
    sub_274574F28();
    sub_27440CA78(&unk_28094D180, &qword_28094C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951A00);
  }

  return result;
}

unint64_t sub_274574F28()
{
  result = qword_280951A10;
  if (!qword_280951A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951A18);
    sub_274574FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951A10);
  }

  return result;
}

unint64_t sub_274574FB4()
{
  result = qword_280951A20;
  if (!qword_280951A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951A20);
  }

  return result;
}

uint64_t sub_274575008(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_274575018(a1, a2);
  }

  return a1;
}

uint64_t sub_274575018(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_274575060(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

double sub_2745750A8(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -1;
  return result;
}

unint64_t sub_2745750D8()
{
  result = qword_280951AA0;
  if (!qword_280951AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951A98);
    sub_274575164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951AA0);
  }

  return result;
}

unint64_t sub_274575164()
{
  result = qword_2809521D0;
  if (!qword_2809521D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951AB0);
    sub_27440CA78(&unk_28094D180, &qword_28094C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809521D0);
  }

  return result;
}

unint64_t sub_27457521C()
{
  result = qword_280951AB8;
  if (!qword_280951AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951AB8);
  }

  return result;
}

uint64_t sub_2745752A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }
}

uint64_t sub_2745752F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_27457535C()
{
  type metadata accessor for ModuleSummaryRowView();

  return sub_274572CAC();
}

uint64_t sub_274575410()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_274639A8C();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_274575490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_33(unint64_t *a1, uint64_t *a2)
{

  return sub_27440CA78(a1, a2);
}

uint64_t OUTLINED_FUNCTION_25_13()
{

  return MEMORY[0x282131EE8](0);
}

uint64_t OUTLINED_FUNCTION_28_12()
{

  return sub_274639DDC();
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_36_6()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_42_6()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return sub_274639DDC();
}

uint64_t sub_274575750(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    OUTLINED_FUNCTION_3_0();
    v9 = v8 - v7;
    for (i = 0; a2 != i; ++i)
    {
      *(v9 + 8 * i) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  if (a2)
  {
    v14 = a3 & 0xFFFFFFFFFFFFFFFELL;
    v15 = v6 + 32;
    v16 = a2;
    do
    {
      v14 += 8;
      v5 += 8;
      OUTLINED_FUNCTION_17_13();
      (*(v17 + 16))(v13 + v18);
      v15 += 16;
      --v16;
    }

    while (v16);
  }

  return sub_27463B1AC();
}

uint64_t sub_2745758B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_27463C0AC();
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

uint64_t sub_27457591C(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_3_0();
  v46 = v12 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v48 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_0();
  v42 = v19 - v18;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v36 = v21;
  v37 = v20;
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v24 = sub_27463BADC();
  if (!v24)
  {
    return sub_27463B87C();
  }

  v47 = v24;
  v51 = sub_27463C49C();
  v38 = sub_27463C4AC();
  sub_27463C43C();
  result = sub_27463BACC();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v10;
    v34 = a5;
    v26 = 0;
    v39 = (v48 + 16);
    v40 = v48 + 8;
    v41 = v8;
    while (!__OFADD__(v26, 1))
    {
      v48 = v26 + 1;
      v27 = sub_27463BB3C();
      (*v39)(v16);
      v27(v50, 0);
      v28 = v49;
      v44(v16, v46);
      if (v28)
      {
        v31 = OUTLINED_FUNCTION_21_13();
        v32(v31);
        (*(v36 + 8))(v23, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      v29 = OUTLINED_FUNCTION_21_13();
      v30(v29);
      sub_27463C48C();
      result = sub_27463BB1C();
      ++v26;
      if (v48 == v47)
      {
        (*(v36 + 8))(v23, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t WFTableTemplateParameter.view(with:)()
{
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_0_42();
  sub_27457F684(v1, v2);
  v3 = v0;

  OUTLINED_FUNCTION_18_7();
  sub_27463950C();
  swift_retain_n();
  OUTLINED_FUNCTION_16_16();
  sub_274575E34(v3, v4, v5, v6, &qword_280951F80, v7);
  v8 = OUTLINED_FUNCTION_5_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_1_34(&qword_280951B40);
  return OUTLINED_FUNCTION_19_12();
}

uint64_t sub_274575E34@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X4>, unint64_t *a5@<X5>, uint64_t a6@<X8>)
{
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(a3));
  v12 = a1;
  a4();
  sub_27454E488(a5, a3);
  v13 = sub_27463950C();
  v15 = v14;

  *a6 = v13;
  *(a6 + 8) = v15;
  v16 = a2[1];
  *(a6 + 16) = *a2;
  *(a6 + 32) = v16;
  *(a6 + 48) = a2[2];
  *(a6 + 64) = swift_getKeyPath();
  *(a6 + 72) = 0;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27457F684(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  *(a6 + 80) = sub_27463979C();
  *(a6 + 88) = v17;
  type metadata accessor for SummaryCoordinatorStore();
  swift_allocObject();
  sub_274576790();
  sub_27463ACDC();
  *(a6 + 96) = v19;
  *(a6 + 104) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950C40);
  result = sub_27463ACDC();
  *(a6 + 112) = v19;
  *(a6 + 120) = v20;
  *(a6 + 128) = v21;
  return result;
}

uint64_t WFTableTemplateContentItemFilterParameter.view(with:)()
{
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_0_42();
  sub_27457F684(v1, v2);
  v3 = v0;

  OUTLINED_FUNCTION_18_7();
  sub_27463950C();
  swift_retain_n();
  OUTLINED_FUNCTION_16_16();
  sub_274575E34(v3, v4, v5, v6, &qword_280951F60, v7);
  v8 = OUTLINED_FUNCTION_5_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_1_34(&qword_280951B50);
  return OUTLINED_FUNCTION_19_12();
}

uint64_t WFTableTemplateEntityUpdaterParameter.view(with:)()
{
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_0_42();
  sub_27457F684(v1, v2);
  v3 = v0;

  OUTLINED_FUNCTION_18_7();
  sub_27463950C();
  swift_retain_n();
  OUTLINED_FUNCTION_16_16();
  sub_274575E34(v3, v4, v5, v6, &unk_280951F38, v7);
  v8 = OUTLINED_FUNCTION_5_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_1_34(&qword_280951B60);
  return OUTLINED_FUNCTION_19_12();
}

void sub_274576234(void (*a1)(), uint64_t a2)
{
  v32 = a2;
  v31 = a1;
  v3 = sub_27463B1EC();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_27463B21C();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = dispatch_group_create();
  v7 = *(v2 + 16);
  if ((v7 & 0xC000000000000001) != 0)
  {

    sub_27463C23C();
    sub_274412734(0, &qword_280950FD0);
    sub_27457FFF0();
    sub_27463BA7C();
    v7 = v46;
    v8 = v47;
    v9 = v48;
    v10 = v49;
    v11 = v50;
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v8 = v7 + 56;
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

    v11 = v14 & *(v7 + 56);

    v10 = 0;
  }

  v30 = v9;
  v15 = (v9 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v16 = v10;
    v17 = v11;
    v18 = v10;
    if (!v11)
    {
      break;
    }

LABEL_12:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
LABEL_18:
      sub_274406A24();
      sub_274412734(0, &qword_28094AF90);
      v25 = sub_27463BCEC();
      v44 = v31;
      v45 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = sub_27443E0E8;
      v43 = &block_descriptor_31;
      v26 = _Block_copy(&aBlock);

      v27 = v33;
      sub_27463B20C();
      v39 = MEMORY[0x277D84F90];
      sub_27457F684(&qword_28094E100, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
      sub_27454E488(&qword_28094E110, &unk_28094AFA0);
      v28 = v35;
      v29 = v38;
      sub_27463C1EC();
      sub_27463BCAC();
      _Block_release(v26);

      (*(v37 + 8))(v28, v29);
      (*(v34 + 8))(v27, v36);

      return;
    }

    while (1)
    {
      dispatch_group_enter(v6);
      v22 = swift_allocObject();
      *(v22 + 16) = v6;
      v44 = sub_274580070;
      v45 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = sub_27443E0E8;
      v43 = &block_descriptor_49_0;
      v23 = _Block_copy(&aBlock);
      v24 = v6;

      [v20 cancelEditingWithCompletionHandler_];
      _Block_release(v23);

      v10 = v18;
      v11 = v19;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v21 = sub_27463C2BC();
      if (v21)
      {
        v39 = v21;
        sub_274412734(0, &qword_280950FD0);
        swift_dynamicCast();
        v20 = aBlock;
        v18 = v10;
        v19 = v11;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_18;
    }

    v17 = *(v8 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_274576790()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_27463C27C())
  {
    sub_274574834(MEMORY[0x277D84F90], v3, v4, v5, v6, v7, v8, v9, vars0);
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_2745767F4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_27463869C();
  type metadata accessor for StoredParameterState();
  return StoredParameterState.wrappedValue.getter();
}

uint64_t sub_2745768BC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_27463869C();
  v3 = sub_27463C0AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *(v1 + 56);
  v11 = *(v1 + 16);
  v9 = *(v1 + 24);
  v12 = v9;
  v10 = *(v1 + 40);
  v13 = v10;
  v14 = v7;
  (*(v4 + 16))(&v9 - v5, a1, v3);
  type metadata accessor for StoredParameterState();

  StoredParameterState.wrappedValue.setter(v6);
  (*(v4 + 8))(a1, v3);
}

uint64_t sub_274576A90@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = sub_274639ABC();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = AssociatedTypeWitness;
  v5 = sub_27463869C();
  v6 = sub_27463C0AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = v1[1];
  v50 = *v1;
  v51 = v13;
  v14 = v1[3];
  v16 = *v1;
  v15 = v1[1];
  v52 = v1[2];
  v53 = v14;
  v17 = *(v1 + 89);
  v47 = *(v1 + 73);
  v48 = v17;
  v49[0] = *(v1 + 105);
  *(v49 + 15) = *(v1 + 120);
  v18 = *(v1 + 8);
  v19 = *(v1 + 72);
  v38 = v16;
  v39 = v15;
  v20 = v1[3];
  v40 = v1[2];
  v41 = v20;
  v42 = v18;
  v43 = v19;
  v44 = *(v1 + 73);
  v45 = *(v1 + 89);
  v46[0] = *(v1 + 105);
  *(v46 + 15) = *(v1 + 120);
  sub_2745767F4();
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) != 1)
  {
    return (*(*(v5 - 8) + 32))(v37, v12, v5);
  }

  v22 = *(v7 + 8);
  v21 = v7 + 8;
  v31 = v6;
  v29 = v22;
  v22(v12, v6);
  v38 = v50;
  v39 = v51;
  v40 = v52;
  v41 = v53;
  v44 = v47;
  v42 = v18;
  v43 = v19;
  v45 = v48;
  v46[0] = v49[0];
  *(v46 + 15) = *(v49 + 15);
  v23 = sub_2745767E4();
  v24 = [v23 defaultSerializedRepresentation];

  if (v24)
  {
    v30 = v21;
    swift_unknownObjectRetain();
    if (v19)
    {
      sub_27450AF48(v18, 1);
    }

    else
    {
      sub_27450AF48(v18, 0);
      sub_27463BC0C();
      v26 = sub_27463A2FC();
      sub_274638CEC();

      v27 = v32;
      sub_274639AAC();
      swift_getAtKeyPath();
      sub_274482198(v18, 0);
      (*(v33 + 8))(v27, v34);
    }

    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    v44 = v47;
    v42 = v18;
    v43 = v19;
    v45 = v48;
    v46[0] = v49[0];
    *(v46 + 15) = *(v49 + 15);
    sub_2745767E4();
    sub_27463866C();
    if (__swift_getEnumTagSinglePayload(v9, 1, v5) != 1)
    {
      swift_unknownObjectRelease();
      return (*(*(v5 - 8) + 32))(v37, v9, v5);
    }

    v29(v9, v31);
  }

  result = sub_27463C56C();
  __break(1u);
  return result;
}

uint64_t sub_274576FB8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_27463869C();
  v6 = sub_27463C0AC();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13[-v7 - 8];
  memcpy(v14, v2, sizeof(v14));
  memcpy(v13, v2, sizeof(v13));
  v9 = *(v5 - 8);
  (*(v9 + 16))(v8, a1, v5);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v5);
  v10 = *(a2 - 8);
  (*(v10 + 16))(__dst, v14, a2);
  sub_2745768BC(v8);
  (*(v9 + 8))(a1, v5);
  memcpy(__dst, v13, sizeof(__dst));
  return (*(v10 + 8))(__dst, a2);
}

uint64_t sub_2745771BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = a1[3];
  v56 = a1[2];
  v57 = v3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TableTemplateRow();
  v4 = sub_27463B92C();
  type metadata accessor for RowTemplateEditorView();
  sub_27463965C();
  sub_27463AF6C();
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  v5 = sub_27463C0AC();
  WitnessTable = swift_getWitnessTable();
  __dst[0] = v4;
  __dst[1] = MEMORY[0x277D837D0];
  __dst[2] = v5;
  __dst[3] = WitnessTable;
  __dst[4] = MEMORY[0x277D837E0];
  sub_27463AF9C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951E48);
  swift_getTupleTypeMetadata2();
  v41 = sub_27463B19C();
  v40 = swift_getWitnessTable();
  v7 = sub_27463AE6C();
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v39 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280951E50);
  v9 = sub_27463965C();
  v51 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v55 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094AF80);
  v12 = sub_27454E488(&qword_280951E60, &unk_28094AF80);
  v13 = swift_getWitnessTable();
  v38 = v13;
  v14 = sub_27454E488(&qword_280951E68, &unk_280951E50);
  v64 = v13;
  v65 = v14;
  v15 = swift_getWitnessTable();
  v49 = v12;
  v50 = v11;
  __dst[0] = v11;
  __dst[1] = v9;
  v52 = v9;
  __dst[2] = v12;
  __dst[3] = v15;
  v43 = v15;
  v16 = sub_27463971C();
  v48 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v42 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v47 = &v38 - v19;
  v20 = sub_27463869C();
  v45 = *(v20 - 8);
  AssociatedConformanceWitness = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - v21;
  memcpy(__dst, v53, 0x88uLL);
  memcpy(v63, v53, sizeof(v63));
  sub_274576A90(v22);
  sub_274639C6C();
  v24 = v56;
  v23 = v57;
  v58 = v56;
  v59 = v57;
  v60 = v22;
  v61 = __dst;
  v25 = v39;
  sub_27463AE5C();
  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = v23;
  memcpy(v26 + 4, __dst, 0x88uLL);
  v27 = *(*(a1 - 1) + 16);
  v53 = a1;
  v27(v63, __dst, a1);
  sub_27457F630();
  sub_27454E488(&qword_280951E78, &unk_280951E80);
  sub_27463A7EC();

  (*(v44 + 8))(v25, v7);
  if (__dst[10])
  {
    v62 = *(__dst[10] + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_onSavePendingChanges);
    v28 = swift_allocObject();
    v29 = v57;
    v28[2] = v56;
    v28[3] = v29;
    memcpy(v28 + 4, __dst, 0x88uLL);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_27457F6CC;
    *(v30 + 24) = v28;
    v27(v63, __dst, v53);

    v31 = v42;
    v32 = v52;
    v33 = v55;
    sub_27463AACC();

    (*(v51 + 8))(v33, v32);
    v34 = swift_getWitnessTable();
    v35 = v47;
    sub_2744E9688(v31, v16, v34);
    v36 = *(v48 + 8);
    v36(v31, v16);
    sub_2744E9688(v35, v16, v34);
    v36(v35, v16);
    return (*(v45 + 8))(v22, AssociatedConformanceWitness);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27457F684(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2745779F8@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a2;
  v76 = a5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951E90);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = v58 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951E98);
  MEMORY[0x28223BE20](v73);
  v60 = v58 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951E48);
  MEMORY[0x28223BE20](v74);
  v75 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v72 = v58 - v12;
  v68 = a4;
  v67 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = sub_27463869C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v58 - v15;
  type metadata accessor for TableTemplateRow();
  v17 = sub_27463B92C();
  type metadata accessor for RowTemplateEditorView();
  sub_27463965C();
  sub_27463AF6C();
  swift_getTupleTypeMetadata2();
  v66 = sub_27463B19C();
  v18 = sub_27463C0AC();
  v65 = v18;
  v71 = v17;
  WitnessTable = swift_getWitnessTable();
  __dst[0] = v17;
  __dst[1] = MEMORY[0x277D837D0];
  __dst[2] = v18;
  __dst[3] = WitnessTable;
  __dst[4] = MEMORY[0x277D837E0];
  v19 = sub_27463AF9C();
  v77 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v78 = v58 - v23;
  v24 = a1;
  v83[0] = sub_2745783D4(v13);
  v25 = v67;
  v79 = v67;
  v26 = v68;
  v80 = v68;
  KeyPath = swift_getKeyPath();
  (*(v14 + 16))(v16, v24, v13);
  v27 = (*(v14 + 80) + 168) & ~*(v14 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = v25;
  *(v28 + 3) = v26;
  v29 = v26;
  v30 = v70;
  memcpy(v28 + 32, v70, 0x88uLL);
  (*(v14 + 32))(&v28[v27], v16, v13);
  v31 = v25;
  v32 = v29;
  v33 = type metadata accessor for TableTemplateParameterView();
  v34 = *(v33 - 8);
  v59 = *(v34 + 16);
  v58[1] = v34 + 16;
  v59(__dst, v30, v33);
  v83[3] = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v35 = v30;
  sub_27463AF7C();
  v83[2] = v57;
  WitnessTable = swift_getWitnessTable();
  sub_2744E9688(v21, v19, WitnessTable);
  v36 = *(v77 + 8);
  v71 = v21;
  v65 = v19;
  v66 = v36;
  v36(v21, v19);
  memcpy(__dst, v30, sizeof(__dst));
  v37 = sub_2745767E4();
  LOBYTE(v30) = sub_2746386AC();

  if (v30)
  {
    v38 = swift_allocObject();
    v38[2] = v31;
    v38[3] = v32;
    v39 = memcpy(v38 + 4, v35, 0x88uLL);
    v40 = MEMORY[0x28223BE20](v39);
    v58[-4] = v31;
    v58[-3] = v32;
    v57 = v35;
    (v59)(__dst, v35, v33, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951EC0);
    sub_274580B88(&qword_280951EC8, &qword_280951EC0, &unk_27465B558, sub_27457FA00);
    v41 = v61;
    sub_27463AD5C();
    sub_27454E488(&unk_280951EB0, &qword_280951E90);
    sub_274482428();
    v42 = v60;
    v43 = v63;
    sub_27463A6AC();
    (*(v62 + 8))(v41, v43);
    v44 = sub_27463AB1C();
    v45 = swift_getKeyPath();
    v46 = v73;
    v47 = (v42 + *(v73 + 36));
    *v47 = v45;
    v47[1] = v44;
    v48 = v72;
    sub_27441277C(v42, v72, &qword_280951E98);
    v49 = 0;
    v50 = v46;
  }

  else
  {
    v49 = 1;
    v48 = v72;
    v50 = v73;
  }

  __swift_storeEnumTagSinglePayload(v48, v49, 1, v50);
  v51 = v71;
  v52 = v78;
  v53 = v65;
  (*(v77 + 16))(v71, v78, v65);
  __dst[0] = v51;
  v54 = v75;
  sub_274412C20(v48, v75, &qword_280951E48);
  __dst[1] = v54;
  v83[0] = v53;
  v83[1] = v74;
  v81 = WitnessTable;
  v82 = sub_27457F7BC();
  sub_274575750(__dst, 2, v83);
  sub_27454D6A8(v48, &qword_280951E48);
  v55 = v66;
  v66(v52, v53);
  sub_27454D6A8(v54, &qword_280951E48);
  return v55(v51, v53);
}

uint64_t sub_2745783D4(uint64_t a1)
{
  v17 = sub_27463868C();
  v2 = *(a1 + 16);
  v3 = sub_27463B92C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x277C57F10](&v18, v3, WitnessTable);

  v17 = v18;
  v5 = *(a1 + 24);
  v14 = v2;
  v15 = v5;
  v12[2] = v2;
  v12[3] = v5;
  v12[4] = sub_27457FF9C;
  v12[5] = &v13;
  v6 = sub_27463C5BC();
  v7 = type metadata accessor for TableTemplateRow();
  v16 = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  v10 = sub_27457591C(sub_27457FFA4, v12, v6, v7, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);

  return v10;
}

uint64_t sub_27457854C@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_27463849C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2745785DC@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v108 = a3;
  v111 = a2;
  v129 = a1;
  v128 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v123 = a5;
  v121 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for RowTemplateEditorView();
  v11 = sub_27463965C();
  v12 = sub_27463AF6C();
  swift_getTupleTypeMetadata2();
  v13 = sub_27463B19C();
  v115 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v104 = &v92 - v14;
  v119 = *(v12 - 8);
  MEMORY[0x28223BE20](v15);
  v118 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v117 = &v92 - v18;
  v19 = type metadata accessor for TableTemplateRow();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v103 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v120 = &v92 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v92 - v25;
  v27 = sub_27463AF4C();
  MEMORY[0x28223BE20](v27 - 8);
  v122 = &v92 - v28;
  v116 = v10;
  v107 = *(v10 - 8);
  MEMORY[0x28223BE20](v29);
  v105 = &v92 - v30;
  v109 = *(v11 - 8);
  MEMORY[0x28223BE20](v31);
  v113 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v106 = &v92 - v34;
  MEMORY[0x28223BE20](v35);
  v110 = &v92 - v36;
  v130 = v13;
  v127 = sub_27463C0AC();
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v124 = &v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v126 = &v92 - v39;
  v40 = v19;
  v41 = v129;
  v114 = AssociatedTypeWitness;
  v112 = AssociatedConformanceWitness;
  if (sub_2746384AC())
  {
    v42 = v124;
    v43 = v124;
    v44 = 1;
    v45 = v130;
  }

  else
  {
    v99 = v11;
    v46 = v20;
    v101 = *(v20 + 16);
    v102 = v20 + 16;
    v101(v26, v41, v40);
    v94 = v21;
    sub_27463B9CC();
    v47 = sub_27463B9BC();
    v48 = *(v20 + 80);
    v49 = swift_allocObject();
    v100 = v12;
    v50 = MEMORY[0x277D85700];
    *(v49 + 2) = v47;
    *(v49 + 3) = v50;
    v51 = v121;
    v52 = v123;
    *(v49 + 4) = v121;
    *(v49 + 5) = v52;
    v95 = *(v46 + 32);
    v93 = v40;
    v95(&v49[(v48 + 48) & ~v48], v26, v40);
    v101(v120, v129, v40);
    v53 = v51;
    v54 = v52;
    v97 = type metadata accessor for TableTemplateParameterView();
    v55 = *(v97 - 8);
    v96 = *(v55 + 16);
    v98 = v55 + 16;
    v56 = v111;
    v96(&v139, v111, v97);
    v57 = sub_27463B9BC();
    v58 = swift_allocObject();
    *(v58 + 2) = v57;
    *(v58 + 3) = MEMORY[0x277D85700];
    *(v58 + 4) = v53;
    *(v58 + 5) = v54;
    memcpy(v58 + 48, v56, 0x88uLL);
    v59 = v93;
    v60 = v95;
    v95(&v58[(v48 + 184) & ~v48], v120, v93);
    v61 = v114;
    sub_27463AF0C();
    v62 = v103;
    v63 = v129;
    v101(v103, v129, v59);
    v64 = (v48 + 168) & ~v48;
    v65 = swift_allocObject();
    v66 = v123;
    *(v65 + 2) = v121;
    *(v65 + 3) = v66;
    memcpy(v65 + 32, v56, 0x88uLL);
    v60(&v65[v64], v62, v59);
    v67 = *v63;
    v68 = v56;
    v96(&v139, v56, v97);
    v69 = v112;
    sub_27463869C();
    v138 = sub_27463868C();
    sub_27463B92C();
    swift_getWitnessTable();
    sub_27463BABC();

    v136 = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A498);
    sub_27457FC54();
    sub_27463B57C();
    LOBYTE(v63) = v133;
    LOBYTE(v56) = v67 == v132;
    v136 = v68[7];
    v137 = *(v68 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950BE0);
    sub_27463AD0C();
    v70 = v105;
    sub_274579C44(v122, sub_27457FC3C, v65, CGSizeMake, 0, v56 & ~v63, v67, v139, v105, *(&v139 + 1), v140, v141, v61, v69);
    v90 = v116;
    WitnessTable = swift_getWitnessTable();
    sub_27463B0CC();
    v71 = v106;
    sub_27463A90C();
    (*(v107 + 8))(v70, v90);
    v134 = WitnessTable;
    v135 = MEMORY[0x277CDFC60];
    v72 = v99;
    v73 = swift_getWitnessTable();
    v74 = v110;
    sub_2744E9688(v71, v72, v73);
    v75 = v109;
    v129 = *(v109 + 8);
    (v129)(v71, v72);
    v76 = v117;
    sub_27463AF5C();
    v77 = v113;
    (*(v75 + 16))(v113, v74, v72);
    *&v139 = v77;
    v78 = v119;
    v79 = v118;
    v80 = v100;
    (*(v119 + 16))(v118, v76, v100);
    *(&v139 + 1) = v79;
    *&v136 = v72;
    *(&v136 + 1) = v80;
    v132 = v73;
    v133 = sub_27457F684(&unk_280951F00, MEMORY[0x277CDF088]);
    v81 = v104;
    sub_274575750(&v139, 2, &v136);
    v82 = *(v78 + 8);
    v82(v76, v80);
    v83 = v129;
    (v129)(v74, v72);
    v82(v79, v80);
    (v83)(v77, v72);
    v42 = v124;
    v45 = v130;
    (*(v115 + 32))(v124, v81, v130);
    v43 = v42;
    v44 = 0;
  }

  __swift_storeEnumTagSinglePayload(v43, v44, 1, v45);
  swift_getWitnessTable();
  v84 = v126;
  sub_2745758B8(v42, v126);
  v85 = *(v125 + 8);
  v86 = v42;
  v87 = v127;
  v85(v86, v127);
  v131 = swift_getWitnessTable();
  v88 = swift_getWitnessTable();
  sub_2744E9688(v84, v87, v88);
  return (v85)(v84, v87);
}

uint64_t sub_274579374@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for TableTemplateRow();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);
  v7 = a1 + *(v5 + 36);

  return v6(a2, v7, AssociatedTypeWitness);
}

uint64_t sub_274579448(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, unint64_t *a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_27463869C();
  MEMORY[0x28223BE20](v9);
  v11 = &v22[-v10];
  v12 = *a5;
  memcpy(__dst, a4, sizeof(__dst));
  v13 = type metadata accessor for TableTemplateParameterView();
  sub_274576A90(v11);
  v14 = sub_27463867C();
  v16 = v15;
  sub_27463B92C();
  sub_27463B86C();
  sub_27457FF48(v12, *v16);
  v17 = *v16;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v19 = v17 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v19 = v17;
  }

  (*(*(AssociatedTypeWitness - 8) + 24))(v19 + ((*(*(AssociatedTypeWitness - 8) + 80) + 32) & ~*(*(AssociatedTypeWitness - 8) + 80)) + *(*(AssociatedTypeWitness - 8) + 72) * v12, a1, AssociatedTypeWitness);
  v14(v23, 0);
  memcpy(v22, a4, sizeof(v22));
  v20 = *(v13 - 8);
  (*(v20 + 16))(v23, a4, v13);
  sub_274576FB8(v11, v13);
  memcpy(v23, v22, sizeof(v23));
  return (*(v20 + 8))(v23, v13);
}

uint64_t sub_2745796B0(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for TableTemplateRow();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - v10;
  v16[0] = a1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951E88);
  sub_27463ACEC();
  (*(v9 + 16))(v11, a2, v8);
  v12 = (*(v9 + 80) + 168) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  memcpy(v13 + 32, a1, 0x88uLL);
  (*(v9 + 32))(&v13[v12], v11, v8);
  v14 = type metadata accessor for TableTemplateParameterView();
  (*(*(v14 - 8) + 16))(v16, a1, v14);
  sub_274576234(sub_27457FE70, v13);
}

uint64_t sub_2745798D4(const void *a1, uint64_t *a2)
{
  v16 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v15 - v4;
  swift_getAssociatedConformanceWitness();
  v6 = sub_27463869C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  memcpy(__dst, a1, 0x88uLL);
  v10 = type metadata accessor for TableTemplateParameterView();
  sub_274576A90(v9);
  v11 = sub_27463868C();
  (*(v7 + 8))(v9, v6);
  v20 = v11;
  sub_27463B92C();
  swift_getWitnessTable();
  sub_27463BABC();

  v17[0] = v18[0];
  v19 = *v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A498);
  result = sub_27463BB7C();
  if (result)
  {
    memcpy(v18, a1, 0x88uLL);
    sub_274576A90(v9);
    v13 = sub_27463867C();
    sub_27463B8EC();
    (*(v15 + 8))(v5, AssociatedTypeWitness);
    v13(__dst, 0);
    memcpy(v17, a1, 0x88uLL);
    v14 = *(v10 - 8);
    (*(v14 + 16))(__dst, a1, v10);
    sub_274576FB8(v9, v10);
    memcpy(__dst, v17, 0x88uLL);
    return (*(v14 + 8))(__dst, v10);
  }

  return result;
}

uint64_t sub_274579C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v21 = sub_27463AF4C();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for RowTemplateEditorView();
  v23 = (a9 + v22[9]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + v22[10]);
  *v24 = a4;
  v24[1] = a5;
  *(a9 + v22[11]) = a6;
  v25 = a9 + v22[12];
  v26 = swift_allocObject();
  *(v26 + 16) = a13;
  *(v26 + 24) = a14;
  result = sub_27457A740();
  *v25 = result;
  *(v25 + 8) = v28;
  *(v25 + 16) = v29 & 1;
  *(a9 + v22[13]) = a7;
  v30 = a9 + v22[14];
  *v30 = a8;
  *(v30 + 8) = a10;
  *(v30 + 16) = a11;
  *(v30 + 24) = a12 & 1;
  return result;
}

uint64_t sub_274579DB0(const void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v23 = sub_27463869C();
  MEMORY[0x28223BE20](v23);
  v26 = &v22 - v3;
  v4 = sub_27463C0AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v25 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v24 = &v22 - v12;
  v27 = a1;
  memcpy(__dst, a1, 0x88uLL);
  v13 = type metadata accessor for TableTemplateParameterView();
  v14 = sub_2745767E4();
  sub_2746386BC();

  if (__swift_getEnumTagSinglePayload(v7, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v17 = v24;
  v16 = v25;
  (*(v25 + 32))(v24, v7, AssociatedTypeWitness);
  (*(v16 + 16))(v10, v17, AssociatedTypeWitness);
  v18 = v27;
  memcpy(v29, v27, sizeof(v29));
  v19 = v26;
  sub_274576A90(v26);
  v20 = sub_27463867C();
  sub_27463B92C();
  sub_27463B8CC();
  v20(__dst, 0);
  memcpy(v28, v18, sizeof(v28));
  v21 = *(v13 - 8);
  (*(v21 + 16))(__dst, v18, v13);
  sub_274576FB8(v19, v13);
  memcpy(__dst, v28, 0x88uLL);
  (*(v21 + 8))(__dst, v13);
  return (*(v16 + 8))(v17, AssociatedTypeWitness);
}

void *sub_27457A17C@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_274639B2C();
  sub_27457A2C8(a1, __src);
  v18 = __src[0];
  v5 = *&__src[1];
  v6 = BYTE8(__src[1]);
  v7 = *&__src[2];
  type metadata accessor for TableTemplateParameterView();
  sub_27463B0DC();
  sub_27463973C();
  v8 = sub_27463A31C();
  sub_2746390AC();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v18;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  result = memcpy((a2 + 64), __src, 0x70uLL);
  *(a2 + 176) = v8;
  *(a2 + 184) = v10;
  *(a2 + 192) = v12;
  *(a2 + 200) = v14;
  *(a2 + 208) = v16;
  *(a2 + 216) = 0;
  return result;
}

uint64_t sub_27457A2C8@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27463AC2C();
  memcpy(__dst, a1, sizeof(__dst));
  type metadata accessor for TableTemplateParameterView();
  v5 = sub_2745767E4();
  sub_2746386CC();

  sub_274412BBC();
  v6 = sub_27463A53C();
  v8 = v7;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  v10 = v9 & 1;
  *(a2 + 24) = v9 & 1;
  *(a2 + 32) = v11;

  sub_27440B094(v6, v8, v10);

  sub_274412C10(v6, v8, v10);
}

uint64_t sub_27457A3F0(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951E88);
  sub_27463ACEC();
  *(v3 + 16) = v1;
}

uint64_t sub_27457A46C()
{
  sub_27463B14C();
  sub_27463946C();
}

uint64_t sub_27457A55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for TableTemplateRow();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

uint64_t sub_27457A5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  return sub_27457A55C(a1, v8, a2, a3);
}

void sub_27457A6C0()
{
  sub_27463AF4C();

  JUMPOUT(0x277C575F0);
}

uint64_t sub_27457A700()
{
  sub_27463AF4C();

  return sub_27463AEEC();
}

uint64_t sub_27457A740()
{
  type metadata accessor for RowTemplateEditorViewModel();
  swift_getWitnessTable();
  return sub_2746391FC();
}

uint64_t sub_27457A7B4(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_27457A8A0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = *(v2 + 2);
  LOBYTE(v2) = *(v2 + 24);
  v8 = v3;
  v9 = v4;
  v10 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952108);
  MEMORY[0x277C575F0](&v7, v5);
  return v7;
}

uint64_t sub_27457A980@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_27463B0EC();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809520A8);
  sub_27457AA28(v2, *(a1 + 16), *(a1 + 24), a2 + *(v6 + 44));
  sub_27454E488(&qword_2809520B8, &unk_2809520B0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809520C0);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_27457AA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809520C8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v53 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809520D0);
  MEMORY[0x28223BE20](v57);
  v59 = &v53 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809520D8);
  MEMORY[0x28223BE20](v58);
  v61 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v53 - v13;
  MEMORY[0x28223BE20](v14);
  v60 = &v53 - v15;
  v64 = a2;
  v65 = a3;
  v16 = type metadata accessor for RowTemplateEditorView();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AAA0);
  v54 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA68);
  MEMORY[0x28223BE20](v23 - 8);
  v55 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v53 - v26;
  v63 = a1;
  v28 = sub_27457B13C(v16);
  v29 = 1;
  if (v28)
  {
    __src[0] = sub_27463AB7C();
    LOBYTE(__src[1]) = 0;
    (*(v17 + 16))(v19, v63, v16);
    v30 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v31 = swift_allocObject();
    v32 = v65;
    *(v31 + 16) = v64;
    *(v31 + 24) = v32;
    (*(v17 + 32))(v31 + v30, v19, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA78);
    sub_274434D4C();
    sub_27463A72C();

    (*(v54 + 32))(v27, v22, v20);
    v29 = 0;
  }

  __swift_storeEnumTagSinglePayload(v27, v29, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809520E0);
  sub_27454E488(&qword_2809520E8, &qword_2809520E0);
  *v9 = sub_27456E924();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809520F0);
  sub_27457B15C(v63, v64, v65, &v9[*(v33 + 44)]);
  sub_27454E488(&qword_2809520F8, &qword_2809520C8);
  sub_27463B0CC();
  sub_27463973C();
  v34 = v59;
  sub_27441277C(v9, v59, &qword_2809520C8);
  memcpy((v34 + *(v57 + 36)), __src, 0x70uLL);
  v35 = sub_27463A35C();
  sub_2746390AC();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v34;
  v45 = v56;
  sub_27441277C(v44, v56, &qword_2809520D0);
  v46 = v45 + *(v58 + 36);
  *v46 = v35;
  *(v46 + 8) = v37;
  *(v46 + 16) = v39;
  *(v46 + 24) = v41;
  *(v46 + 32) = v43;
  *(v46 + 40) = 0;
  v47 = v60;
  sub_27441277C(v45, v60, &qword_2809520D8);
  v48 = v55;
  sub_274412C20(v27, v55, &qword_28094AA68);
  v49 = v61;
  sub_274412C20(v47, v61, &qword_2809520D8);
  v50 = v62;
  sub_274412C20(v48, v62, &qword_28094AA68);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952100);
  sub_274412C20(v49, v50 + *(v51 + 48), &qword_2809520D8);
  sub_27454D6A8(v47, &qword_2809520D8);
  sub_27454D6A8(v27, &qword_28094AA68);
  sub_27454D6A8(v49, &qword_2809520D8);
  return sub_27454D6A8(v48, &qword_28094AA68);
}

uint64_t sub_27457B15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2746394DC();
  v65 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v63 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v52 - v11;
  v12 = sub_2746396BC();
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x28223BE20](v12);
  v60 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a2;
  v57 = a3;
  v14 = type metadata accessor for RowTemplateEditorView();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A910);
  v55 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = &v52 - v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A908);
  MEMORY[0x28223BE20](v67);
  v59 = &v52 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A8F0);
  MEMORY[0x28223BE20](v20 - 8);
  v66 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952118);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v52 - v29;
  sub_27457B888(&v52 - v29);
  v31 = sub_27457BAE0(v14);
  v32 = 1;
  if (v31)
  {
    (*(v15 + 16))(v17, a1, v14);
    v33 = *(v15 + 80);
    v53 = v8;
    v34 = a4;
    v35 = (v33 + 32) & ~v33;
    v36 = swift_allocObject();
    v37 = v57;
    *(v36 + 16) = v56;
    *(v36 + 24) = v37;
    v38 = v36 + v35;
    a4 = v34;
    (*(v15 + 32))(v38, v17, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A950);
    sub_274433BDC();
    v39 = v54;
    sub_27463AD5C();
    v40 = v60;
    sub_2746396AC();
    sub_27454E488(&qword_28094A918, &qword_28094A910);
    sub_27457F684(&qword_280949470, MEMORY[0x277CDDB18]);
    v42 = v58;
    v41 = v59;
    v43 = v62;
    sub_27463A69C();
    (*(v61 + 8))(v40, v43);
    (*(v55 + 8))(v39, v42);
    v44 = v64;
    sub_2746394CC();
    v45 = v65;
    v46 = v53;
    (*(v65 + 16))(v63, v44, v53);
    sub_27457F684(&qword_28094A980, MEMORY[0x277CDF858]);
    v47 = sub_27463934C();
    (*(v45 + 8))(v44, v46);
    *(v41 + *(v67 + 36)) = v47;
    sub_27441277C(v41, v24, &qword_28094A908);
    v32 = 0;
  }

  __swift_storeEnumTagSinglePayload(v24, v32, 1, v67);
  sub_274412C20(v30, v27, &qword_280952118);
  v48 = v66;
  sub_274412C20(v24, v66, &qword_28094A8F0);
  sub_274412C20(v27, a4, &qword_280952118);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952120);
  v50 = a4 + *(v49 + 48);
  *v50 = 0;
  *(v50 + 8) = 1;
  sub_274412C20(v48, a4 + *(v49 + 64), &qword_28094A8F0);
  sub_27454D6A8(v24, &qword_28094A8F0);
  sub_27454D6A8(v30, &qword_280952118);
  sub_27454D6A8(v48, &qword_28094A8F0);
  return sub_27454D6A8(v27, &qword_280952118);
}

uint64_t sub_27457B888@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_27463AF4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  type metadata accessor for RowTemplateEditorViewModel();
  swift_getWitnessTable();
  sub_27463920C();
  sub_27457A700();
  v8 = sub_27457E454(v7);

  (*(v5 + 8))(v7, v4);
  *a1 = sub_274639B2C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952160);
  sub_27457BBC8(v8, v2, a1 + *(v9 + 44));
  LOBYTE(v2) = sub_27463A38C();
  sub_2746390AC();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952168) + 36);
  *v18 = v2;
  *(v18 + 8) = v11;
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  LOBYTE(v2) = sub_27463A35C();
  sub_2746390AC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952118);
  v28 = a1 + *(result + 36);
  *v28 = v2;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_27457BB18(uint64_t a1)
{
  sub_27463B14C();
  sub_27463946C();

  v2 = type metadata accessor for RowTemplateEditorView();
  return (*(a1 + *(v2 + 36)))();
}

uint64_t sub_27457BBC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v95 = a3;
  v4 = *a1;
  v5 = sub_27463A01C();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x28223BE20](v5);
  v86 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 80);
  v8 = *(v4 + 88);
  v91 = type metadata accessor for RowTemplateEditorView();
  v96 = *(v91 - 8);
  v75 = *(v96 + 64);
  MEMORY[0x28223BE20](v91);
  v93 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952170);
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v76 = &v70 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952178);
  MEMORY[0x28223BE20](v79);
  v80 = &v70 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952180);
  MEMORY[0x28223BE20](v81);
  v83 = &v70 - v13;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952188);
  MEMORY[0x28223BE20](v82);
  v85 = &v70 - v14;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952190);
  MEMORY[0x28223BE20](v97);
  v84 = &v70 - v15;
  v16 = *(v7 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952198);
  MEMORY[0x28223BE20](v20 - 8);
  v94 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v70 - v23;
  v25 = a1[3];
  v90 = a1[2];
  swift_beginAccess();

  sub_2745E1D84();
  v89 = v26;
  swift_beginAccess();
  v98 = v7;
  v99 = v8;
  v100 = sub_274580A9C;
  v101 = 0;
  type metadata accessor for RowTemplateEditorViewModel.StateStore();
  type metadata accessor for ParameterStateStore();

  v27 = v7;
  sub_27463B4FC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809521A0);
  swift_allocObject();
  v28 = sub_2746387EC();
  KeyPath = swift_getKeyPath();
  v115 = 0;
  v116 = swift_getKeyPath();
  v117 = 0;
  v118 = swift_getKeyPath();
  v119 = 0;
  v120 = swift_getKeyPath();
  v121 = 0;
  v103 = 0;
  memset(&v102[16], 0, 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280951040);
  sub_27463ACDC();
  v122 = v102[0];
  v123 = v102[1];
  v124 = v102[2];
  v126 = 0;
  v127 = 0;
  v104[0] = v90;
  v104[1] = v25;
  v30 = v91;
  v29 = v92;
  v104[2] = v89;
  v104[3] = v28;
  v104[4] = 0;
  v105 = 0;
  v125 = sub_274550400;
  v113 = 0;
  v108 = 0;
  v106 = MEMORY[0x277D84F90];
  v107 = 0;
  v109 = 0;
  v111 = 0;
  v110 = 0;
  v112 = 0;
  v128 = !sub_27457B13C(v91);
  sub_27457A6C0();
  LOBYTE(v28) = sub_27463842C();
  (*(v16 + 8))(v19, v27);
  v31 = v97;
  v32 = 1;
  if (v28)
  {
    v89 = v24;
    v33 = v96;
    v34 = v93;
    v72 = *(v96 + 16);
    v73 = v96 + 16;
    v72(v93, v29, v30);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v90 = v35 + v75;
    v36 = swift_allocObject();
    *(v36 + 16) = v27;
    *(v36 + 24) = v8;
    v74 = v35;
    v75 = v8;
    v37 = v36 + v35;
    v38 = *(v33 + 32);
    v96 = v33 + 32;
    v38(v37, v34, v30);
    v39 = v29;
    v40 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809521C0);
    v71 = v27;
    sub_274580B88(&qword_2809521C8, &qword_2809521C0, &unk_27465B848, sub_274575164);
    v41 = v76;
    sub_27463AD5C();
    sub_27463B70C();
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v42 = qword_28094BB00;
    v43 = sub_27463B66C();
    v44 = sub_27463B66C();

    v45 = [v42 localizedStringForKey:v43 value:v44 table:0];

    v46 = sub_27463B6AC();
    v48 = v47;

    *&v102[0] = v46;
    *(&v102[0] + 1) = v48;
    sub_27454E488(&qword_2809521E0, &qword_280952170);
    sub_274412BBC();
    v49 = v80;
    v50 = v78;
    sub_27463A7CC();

    (*(v77 + 8))(v41, v50);
    v51 = v93;
    v72(v93, v39, v40);
    v52 = swift_allocObject();
    v53 = v74;
    v54 = v75;
    *(v52 + 16) = v71;
    *(v52 + 24) = v54;
    v38(v52 + v53, v51, v40);
    v55 = v86;
    sub_27463A00C();
    v56 = v83;
    sub_27463962C();

    (*(v87 + 8))(v55, v88);
    sub_27454D6A8(v49, &qword_280952178);
    v57 = sub_27457BAE0(v40);
    v58 = v56 + *(v81 + 36);
    *v58 = 0;
    *(v58 + 8) = v57 & 1;
    if (sub_27457BAE0(v40))
    {
      v59 = 0.0;
    }

    else
    {
      v59 = 1.0;
    }

    v60 = v85;
    sub_27441277C(v56, v85, &qword_280952180);
    *(v60 + *(v82 + 36)) = v59;
    v61 = 0;
    if ((sub_27457BAE0(v40) & 1) == 0)
    {
      sub_27463B14C();
      v61 = sub_27463B0FC();
    }

    v62 = sub_27457BAE0(v40);
    v63 = v60;
    v64 = v84;
    sub_27441277C(v63, v84, &qword_280952188);
    v31 = v97;
    v65 = v64 + *(v97 + 36);
    *v65 = v61;
    *(v65 + 8) = v62 & 1;
    v24 = v89;
    sub_27441277C(v64, v89, &qword_280952190);
    v32 = 0;
  }

  __swift_storeEnumTagSinglePayload(v24, v32, 1, v31);
  sub_274412C20(v104, v102, &qword_2809521B0);
  v66 = v94;
  sub_274412C20(v24, v94, &qword_280952198);
  v67 = v95;
  sub_274412C20(v102, v95, &qword_2809521B0);
  *(v67 + 248) = 0;
  *(v67 + 256) = 1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809521B8);
  sub_274412C20(v66, v67 + *(v68 + 64), &qword_280952198);
  sub_27454D6A8(v24, &qword_280952198);
  sub_27454D6A8(v104, &qword_2809521B0);
  sub_27454D6A8(v66, &qword_280952198);
  return sub_27454D6A8(v102, &qword_2809521B0);
}

uint64_t sub_27457C79C(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  v2 = type metadata accessor for RowTemplateEditorViewModel.StateStore();

  WitnessTable = swift_getWitnessTable();
  v4 = swift_getWitnessTable();
  return ParameterStateStore.__allocating_init<A>(_:)(a1, v2, WitnessTable, v4);
}

uint64_t sub_27457C864()
{
  sub_27463B14C();
  sub_27463946C();
}

uint64_t sub_27457C920@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_27463AC2C();
  v3 = sub_27463AB1C();
  KeyPath = swift_getKeyPath();
  v5 = sub_27463A32C();
  result = sub_2746390AC();
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_27457C9FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return sub_27463C6BC();
  }

  return 1;
}

uint64_t sub_27457CA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 0;
    return MEMORY[0x277C58EA0](v3);
  }

  if (a3 == 1)
  {
    v3 = 1;
    return MEMORY[0x277C58EA0](v3);
  }

  MEMORY[0x277C58EA0](2);

  return sub_27463B71C();
}

uint64_t sub_27457CAC8(uint64_t a1, uint64_t a2)
{
  sub_27463C74C();
  sub_27457CA48(v5, a1, a2);
  return sub_27463C7AC();
}

uint64_t sub_27457CB54()
{
  sub_27463C74C();
  sub_27457CA48(v2, *v0, v0[1]);
  return sub_27463C7AC();
}

char *sub_27457CC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;
  v6 = *(v5 + 104);
  v7 = sub_27463AF4C();
  (*(*(v7 - 8) + 32))(&v3[v6], a3, v7);
  return v3;
}

id sub_27457CCA4()
{
  v1 = v0;
  v44 = *v0;
  v2 = v44[11];
  v3 = v44[10];
  swift_getAssociatedTypeWitness();
  v46 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v42 = &v36 - v4;
  v5 = swift_checkMetadataState();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v38 = &v36 - v6;
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = sub_27463AF4C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  v24 = MEMORY[0x28223BE20](v22);
  v25 = &v36 - v23;
  v26 = *(v1 + 3);
  if (v26)
  {
    if (v26 == 1)
    {
      (*(v16 + 16))(v21, &v1[v44[13]], v15, v24);
      MEMORY[0x277C575F0](v15);
      (*(v16 + 8))(v21, v15);
      v27 = v38;
      sub_27463844C();
      (*(v45 + 8))(v11, v3);
      v28 = v40;
      sub_27463862C();
      (*(v39 + 8))(v27, v28);
      sub_274412734(0, &unk_28094C200);
      v29 = swift_dynamicCast();
      v30 = v47;
      v31 = objc_allocWithZone(MEMORY[0x277D7C6B0]);
      if (v29)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0;
      }

      v33 = [v31 initWithNumber_];
    }

    else
    {
      (*(v16 + 16))(v18, &v1[v44[13]], v15, v24);
      v34 = v37;
      MEMORY[0x277C575F0](v15);
      (*(v16 + 8))(v18, v15);
      v33 = sub_27463841C();
      (*(v45 + 8))(v34, v3);
    }
  }

  else
  {
    (*(v16 + 16))(&v36 - v23, &v1[v44[13]], v15, v24);
    MEMORY[0x277C575F0](v15);
    (*(v16 + 8))(v25, v15);
    v33 = sub_27463847C();
    (*(v45 + 8))(v14, v3);
  }

  return v33;
}

void sub_27457D208(void *a1)
{
  v2 = v1;
  v58 = a1;
  v56 = *v1;
  v3 = *(v56 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_27463C0AC();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v43 - v6;
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v7);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v43 - v10;
  v57 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_27463C0AC();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v55 = v11;
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v51 = &v43 - v19;
  MEMORY[0x28223BE20](v20);
  v21 = sub_27463AF4C();
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v28 = &v43 - v25;
  v29 = *(v2 + 3);
  if (v29)
  {
    if (v29 == 1)
    {
      if (v58)
      {
        v56 = v26;
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v59 = [v30 number];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951F18);
          v31 = v55;
          if (swift_dynamicCast())
          {
            __swift_storeEnumTagSinglePayload(v14, 0, 1, v31);
            v32 = v54;
            v33 = v51;
            (*(v54 + 32))(v51, v14, v55);
            v34 = v32;
            v35 = v33;
            v36 = v55;
            (*(v34 + 16))(v17, v35, v55);
            v37 = v52;
            sub_27463863C();
            if (__swift_getEnumTagSinglePayload(v37, 1, AssociatedTypeWitness) == 1)
            {
              (*(v54 + 8))(v35, v36);
              swift_unknownObjectRelease();
              (*(v45 + 8))(v37, v46);
            }

            else
            {
              v40 = v47;
              v41 = v53;
              (*(v47 + 32))(v53, v37, AssociatedTypeWitness);
              v42 = v56;
              (*(v56 + 16))(v23, &v2[*(*v2 + 104)], v21);
              (*(v40 + 16))(v44, v41, AssociatedTypeWitness);
              MEMORY[0x277C575F0](v21);
              sub_27463845C();
              sub_27463AEBC();
              swift_unknownObjectRelease();
              (*(v42 + 8))(v23, v21);
              (*(v40 + 8))(v53, AssociatedTypeWitness);
              (*(v54 + 8))(v35, v55);
            }
          }

          else
          {
            swift_unknownObjectRelease();
            __swift_storeEnumTagSinglePayload(v14, 1, 1, v31);
            (*(v48 + 8))(v14, v49);
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      v39 = v26;
      (*(v26 + 16))(v23, &v2[*(v56 + 104)], v21, v27);
      MEMORY[0x277C575F0](v21);
      sub_27463840C();
      sub_27463AEBC();
      swift_unknownObjectRelease();
      (*(v39 + 8))(v23, v21);
    }
  }

  else
  {
    v38 = v26;
    (*(v26 + 16))(&v43 - v25, &v2[*(v56 + 104)], v21, v27);
    if (v58)
    {
      v59 = v58;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50);
      swift_getAssociatedTypeWitness();
      swift_dynamicCast();
    }

    MEMORY[0x277C575F0](v21);
    sub_27463848C();
    sub_27463AEBC();
    swift_unknownObjectRelease();
    (*(v38 + 8))(v28, v21);
  }
}

uint64_t sub_27457DA7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v5[0] = *(a1 + 16);
  v5[1] = v3;
  sub_27457FFC8(v5[0], v3);
  type metadata accessor for RowTemplateEditorViewModel.StateStore.Mode();
  swift_getWitnessTable();
  sub_27463C31C();
  sub_27457FFC8(*(a2 + 16), *(a2 + 24));
  sub_27463C31C();
  LOBYTE(a2) = MEMORY[0x277C58A40](v6, v5);
  sub_274430664(v5);
  sub_274430664(v6);
  return a2 & 1;
}

uint64_t sub_27457DB44()
{
  sub_27457FFDC(*(v0 + 16), *(v0 + 24));
  v1 = *(*v0 + 104);
  v2 = sub_27463AF4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_27457DBD8()
{
  v0 = sub_27457DB44();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_27457DC2C()
{
  sub_27463C74C();
  sub_27457DA48(v1);
  return sub_27463C7AC();
}