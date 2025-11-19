void sub_189005748()
{
  if (*(*(v0 + OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture) + OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_recognizedAxis) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong effectiveUserInterfaceLayoutDirection];
      [v2 bounds];
      Width = CGRectGetWidth(v16);
      type metadata accessor for _UIDismissInteractionSettingsDomain();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if (v3 == 1)
      {
        v14.receiver = ObjCClassFromMetadata;
        v14.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
        v6 = objc_msgSendSuper2(&v14, sel_rootSettings);
        if (v6)
        {
          v7 = v6;

          type metadata accessor for _UIDismissInteractionSettings();
          v8 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);

          v9 = *&v8[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_effectiveDistanceFactor];
          if (-(Width * v9) > 0.0)
          {
            __break(1u);
          }

          return;
        }
      }

      else
      {
        v15.receiver = ObjCClassFromMetadata;
        v15.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
        v10 = objc_msgSendSuper2(&v15, sel_rootSettings);
        if (!v10)
        {
LABEL_12:
          __break(1u);
          return;
        }

        v11 = v10;

        type metadata accessor for _UIDismissInteractionSettings();
        v12 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);

        v13 = *&v12[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_effectiveDistanceFactor];
        if (Width * v13 >= 0.0)
        {
          return;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_12;
    }
  }
}

void sub_189005920()
{
  if (*(*(v0 + OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture) + OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_recognizedAxis) == 2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      [Strong bounds];
      Height = CGRectGetHeight(v9);
      type metadata accessor for _UIDismissInteractionSettingsDomain();
      v8.receiver = swift_getObjCClassFromMetadata();
      v8.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
      v4 = objc_msgSendSuper2(&v8, sel_rootSettings);
      if (v4)
      {
        v5 = v4;

        type metadata accessor for _UIDismissInteractionSettings();
        v6 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);

        v7 = *&v6[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_effectiveDistanceFactor];
        if (Height * v7 >= 0.0)
        {
          return;
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_189005A44(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a1 view];
    [a1 locationInView_];
    v7 = v6;
    v9 = v8;

    v10 = [a1 view];
    [a1 translationInView_];
    v12 = v11;
    v14 = v13;

    v15 = [a1 view];
    [a1 velocityInView_];
    v17 = v16;
    v19 = v18;

    v25 = 1;
    v26[0] = v7;
    v26[1] = v9;
    v26[2] = v12;
    v26[3] = v14;
    v26[4] = v17;
    v26[5] = v19;
    v27 = xmmword_18A64B720;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 1;
    v24.receiver = a1;
    v24.super_class = type metadata accessor for _UIContentSwipeDismissGestureRecognizer();
    v20 = objc_msgSendSuper2(&v24, sel_state);
    if ((v20 - 3) < 2)
    {
      sub_18923AC2C(v1, v26, v4);
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_18A4A7F68())
      {
        sub_188FC0114(MEMORY[0x1E69E7CC0]);
        v21 = v23;
      }

      else
      {
        v21 = MEMORY[0x1E69E7CD0];
      }

      v22 = OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_conflictingScrollViews;
      swift_beginAccess();
      *(v1 + v22) = v21;
    }

    else
    {
      if (v20 == 2)
      {
        sub_18923951C(v1, v26, v4);
      }

      else if (v20 == 1)
      {
        sub_18923B758(v26, v4);
        sub_189005C68();
      }
    }
  }
}

void sub_189005C68()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for _UIDismissInteractionSettingsDomain();
  v71.receiver = swift_getObjCClassFromMetadata();
  v71.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
  v2 = objc_msgSendSuper2(&v71, sel_rootSettings);
  if (!v2)
  {
    __break(1u);
    goto LABEL_30;
  }

  v3 = v2;
  type metadata accessor for _UIDismissInteractionSettings();
  v4 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_showDebugUI);

  if (v4 == 1)
  {
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 _window];
      if (!v7)
      {
        v24 = v6;
LABEL_27:

        return;
      }

      v8 = v7;
      if (!qword_1EA9950F0)
      {
        v9 = [objc_allocWithZone(_UIShapeView) init];
        v10 = qword_1EA9950F0;
        qword_1EA9950F0 = v9;
      }

      if (!qword_1EA9950F8)
      {
        v11 = [objc_allocWithZone(_UIShapeView) init];
        v12 = qword_1EA9950F8;
        qword_1EA9950F8 = v11;
      }

      if (!qword_1EA995100)
      {
        v13 = [objc_opt_self() systemBlueColor];
        v14 = sub_18A4A7258();
        v15 = [objc_opt_self() dotWithTitle:v14 color:v13];

        v16 = qword_1EA995100;
        qword_1EA995100 = v15;
      }

      [qword_1EA995108 invalidate];
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = ObjectType;
      v69 = sub_189007670;
      v70 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v66 = 1107296256;
      v67 = sub_1890552D0;
      v68 = &block_descriptor_70;
      v19 = _Block_copy(&aBlock);

      v20 = [v17 scheduledTimerWithTimeInterval:0 repeats:v19 block:5.0];
      _Block_release(v19);
      v21 = qword_1EA995108;
      qword_1EA995108 = v20;

      v22 = objc_opt_self();
      v69 = sub_1890075E0;
      v70 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v66 = 1107296256;
      v67 = sub_188A4A8F0;
      v68 = &block_descriptor_14_2;
      v23 = _Block_copy(&aBlock);

      [v22 animateWithDuration:v23 animations:0.0];
      _Block_release(v23);
      v24 = v8;
      [v0 _initialLocationInView_];
      v27 = qword_1EA9950F0;
      if (qword_1EA9950F0)
      {
        v28 = v25;
        v29 = v26;
        v30 = *&v0[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_angleRange];
        v31 = *&v0[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_angleRange + 8];
        v32 = objc_allocWithZone(UIBezierPath);
        v33 = v27;
        v34 = [v32 init];
        [v34 moveToPoint_];
        [v34 addArcWithCenter:1 radius:v28 startAngle:v29 endAngle:300.0 clockwise:{v30 * 3.14159265 / 180.0, v31 * 3.14159265 / 180.0}];
        [v34 closePath];
        [v33 setAlpha_];
        v35 = [v33 shapeLayer];
        v36 = [v34 CGPath];
        [v35 setPath_];

        v37 = [v33 shapeLayer];
        v38 = OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_recognizedAxis;
        if (*&v0[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_recognizedAxis] == 2)
        {
          v39 = objc_opt_self();
          v40 = &selRef_systemGreenColor;
        }

        else
        {
          v64.receiver = v0;
          v64.super_class = ObjectType;
          v41 = objc_msgSendSuper2(&v64, sel_state);
          v39 = objc_opt_self();
          v40 = &selRef_systemRedColor;
          if (v41 == 1)
          {
            v40 = &selRef_systemOrangeColor;
          }
        }

        v42 = [v39 *v40];
        v43 = [v42 CGColor];

        [v37 setFillColor_];
        [v33 setUserInteractionEnabled_];
        [v24 addSubview_];

        if ([objc_opt_self() isContentBackSwipeEnabled])
        {
          if (!qword_1EA9950F8)
          {
LABEL_33:
            __break(1u);
            return;
          }

          v44 = qword_1EA9950F8;
          sub_189006CDC();
          v46 = v45;
          v48 = v47;
          v49 = [objc_allocWithZone(UIBezierPath) init];
          [v49 moveToPoint_];
          [v49 addArcWithCenter:1 radius:v28 startAngle:v29 endAngle:300.0 clockwise:{v46 * 3.14159265 / 180.0, v48 * 3.14159265 / 180.0}];
          [v49 closePath];
          [v44 setAlpha_];
          v50 = [v44 shapeLayer];
          v51 = [v49 CGPath];
          [v50 setPath_];

          v52 = [v44 shapeLayer];
          if (*&v0[v38] == 1)
          {
            v53 = objc_opt_self();
            v54 = &selRef_systemGreenColor;
          }

          else
          {
            v63.receiver = v0;
            v63.super_class = ObjectType;
            v55 = objc_msgSendSuper2(&v63, sel_state);
            v53 = objc_opt_self();
            v54 = &selRef_systemRedColor;
            if (v55 == 1)
            {
              v54 = &selRef_systemOrangeColor;
            }
          }

          v56 = [v53 *v54];
          v57 = [v56 CGColor];

          [v52 setFillColor_];
          [v44 setUserInteractionEnabled_];
          [v24 addSubview_];
        }

        if (qword_1EA995100)
        {
          v58 = qword_1EA995100;
          [v0 locationInView_];
          v60 = v59;
          v62 = v61;

          [v58 setCenter_];
          if (qword_1EA995100)
          {
            [v24 addSubview_];

            goto LABEL_27;
          }

          goto LABEL_32;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }
}

void sub_189006730()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {

    return;
  }

  v37 = v2;

  v4 = OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_conflictingScrollViews;
  swift_beginAccess();
  v36 = v0;
  v5 = *(v0 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    sub_18A4A7F18();
    sub_188A34624(0, &qword_1EA9310A8);
    sub_189007678();
    sub_18A4A77D8();
    v5 = v39;
    v6 = v40;
    v7 = v41;
    v8 = v42;
    v9 = v43;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 56);

    v8 = 0;
  }

  v35 = v7;
  while (v5 < 0)
  {
    if (!sub_18A4A7FB8() || (sub_188A34624(0, &qword_1EA9310A8), swift_dynamicCast(), (v15 = v38) == 0))
    {
LABEL_31:
      v21 = 1;
LABEL_32:
      sub_188E036A4();
      v22 = *(v36 + OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture);
      v23 = [v22 view];
      [v22 locationInView_];
      v25 = v24;
      v27 = v26;

      v28 = [v22 view];
      [v22 translationInView_];

      v29 = [v22 view];
      [v22 velocityInView_];
      v31 = v30;
      v33 = v32;

      v34 = [v37 delegate];
      if (v34)
      {
        [v34 dismissInteraction:v37 shouldBeginWithAxis:*&v22[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_recognizedAxis] location:v21 velocity:v25 proposal:{v27, v31, v33}];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }

LABEL_22:
    v16 = [v15 panGestureRecognizer];
    v17 = [v16 state];

    if (v17 == 5)
    {
    }

    else
    {
      type metadata accessor for _UIContentSwipeDismissGestureRecognizer();
      v18 = swift_dynamicCastClass();
      if (v18 && *(v18 + OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_recognizedAxis) == 1)
      {
        if ([v15 effectiveUserInterfaceLayoutDirection])
        {
          v19 = 8;
        }

        else
        {
          v19 = 2;
        }
      }

      else
      {
        v19 = 1;
      }

      v20 = [v15 _canScrollFromEdge_];

      if (v20)
      {
        v21 = 0;
        goto LABEL_32;
      }
    }
  }

  v13 = v8;
  v14 = v9;
  if (v9)
  {
LABEL_18:
    v9 = (v14 - 1) & v14;
    v15 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v8 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v8 >= ((v7 + 64) >> 6))
    {
      goto LABEL_31;
    }

    v14 = *(v6 + 8 * v8);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_189006BB0(void *a1)
{
  v2 = v1;
  type metadata accessor for _UIContentSwipeDismissGestureRecognizer();
  if (swift_dynamicCastClass())
  {
    v4 = a1;
    sub_189005C68();
  }

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_18A4A7F68())
  {
    sub_188FC0114(MEMORY[0x1E69E7CC0]);
    v5 = v8;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CD0];
  }

  v6 = OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_conflictingScrollViews;
  swift_beginAccess();
  *(v2 + v6) = v5;
}

void sub_189006CDC()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 effectiveUserInterfaceLayoutDirection];

    if (v3 == 1)
    {
      if (*&v0[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_angleRange] + 90.0 <= *&v0[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_angleRange + 8] + 90.0)
      {
        return;
      }

      __break(1u);
    }
  }

  if (*&v0[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_angleRange] + -90.0 > *&v0[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_angleRange + 8] + -90.0)
  {
    __break(1u);
  }
}

uint64_t sub_189006D9C()
{
  result = [objc_opt_self() isContentBackSwipeEnabled];
  if (result)
  {
    [v0 translationInView_];
    v3 = v2;
    v5 = v4;
      ;
    }

      ;
    }

    v7 = hypot(v3, v5);
    [v0 _hysteresis];
    if (v8 < v7)
    {
      sub_189006CDC();
      if (v10 <= i && i <= v9)
      {
        return 1;
      }

      [v0 _hysteresis];
      v13 = v12;
      type metadata accessor for _UIDismissInteractionSettingsDomain();
      v17.receiver = swift_getObjCClassFromMetadata();
      v17.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
      result = objc_msgSendSuper2(&v17, sel_rootSettings);
      if (!result)
      {
        __break(1u);
        return result;
      }

      v14 = result;
      type metadata accessor for _UIDismissInteractionSettings();
      v15 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);

      v16 = *&v15[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_hysteresisPadding];
      if (v13 + v16 < v7)
      {
        sub_189006F84(5);
      }
    }

    return 0;
  }

  return result;
}

void sub_189006F84(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  if (a1 == 1)
  {
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v1 translationInView_];
      v7 = v6;
      v9 = v8;

      v10 = 2;
      if (fabs(v9) < fabs(v7))
      {
        v10 = 1;
      }

      *&v1[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_recognizedAxis] = v10;
    }
  }

  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_setState_, a1);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  if (objc_msgSendSuper2(&v17, sel_state) == 1)
  {
    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      [v1 translationInView_];
      v15 = *&v1[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_recognizedAxis];
      if (v15 == 1)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = v14;
      }

      if (v15 == 2)
      {
        v13 = 0.0;
      }

      else
      {
        v14 = v16;
      }

      [v1 setTranslation:v12 inView:{v13, v14, 0.0, v16}];
    }
  }
}

uint64_t sub_189007114()
{
  [v0 translationInView_];
  v2 = v1;
  v4 = v3;
    ;
  }

    ;
  }

  v6 = hypot(v2, v4);
  [v0 _hysteresis];
  if (v7 >= v6)
  {
    return 0;
  }

  if (*&v0[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_angleRange] <= i && i <= *&v0[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_angleRange + 8])
  {
    return 1;
  }

  [v0 _hysteresis];
  v9 = v8;
  type metadata accessor for _UIDismissInteractionSettingsDomain();
  v14.receiver = swift_getObjCClassFromMetadata();
  v14.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
  result = objc_msgSendSuper2(&v14, sel_rootSettings);
  if (result)
  {
    v11 = result;
    type metadata accessor for _UIDismissInteractionSettings();
    v12 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);

    v13 = *&v12[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_hysteresisPadding];
    if (v9 + v13 < v6)
    {
      sub_189006F84(5);
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_189007418()
{
  v0 = objc_opt_self();
  v7 = sub_189007554;
  v8 = 0;
  v3 = MEMORY[0x1E69E9820];
  v4 = 1107296256;
  v5 = sub_188A4A8F0;
  v6 = &block_descriptor_17_0;
  v1 = _Block_copy(&v3);

  v7 = sub_18900755C;
  v8 = 0;
  v3 = MEMORY[0x1E69E9820];
  v4 = 1107296256;
  v5 = sub_188ABD010;
  v6 = &block_descriptor_20;
  v2 = _Block_copy(&v3);

  [v0 animateWithDuration:v1 animations:v2 completion:2.0];
  _Block_release(v2);
  _Block_release(v1);
}

uint64_t sub_18900755C(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return result;
  }

  result = qword_1EA9950F0;
  if (!qword_1EA9950F0)
  {
    __break(1u);
    goto LABEL_10;
  }

  [qword_1EA9950F0 removeFromSuperview];
  result = qword_1EA9950F8;
  if (!qword_1EA9950F8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [qword_1EA9950F8 removeFromSuperview];
  result = qword_1EA995100;
  if (!qword_1EA995100)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [result removeFromSuperview];
}

id sub_1890075E8(double a1)
{
  result = qword_1EA9950F0;
  if (!qword_1EA9950F0)
  {
    __break(1u);
    goto LABEL_8;
  }

  [qword_1EA9950F0 setAlpha_];
  result = qword_1EA9950F8;
  if (!qword_1EA9950F8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [qword_1EA9950F8 setAlpha_];
  result = qword_1EA995100;
  if (!qword_1EA995100)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return [result setAlpha_];
}

unint64_t sub_189007678()
{
  result = qword_1EA939E20;
  if (!qword_1EA939E20)
  {
    sub_188A34624(255, &qword_1EA9310A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939E20);
  }

  return result;
}

uint64_t sub_1890076E0(void *a1)
{
  result = [a1 _isGestureType_];
  if (result)
  {
    result = [a1 view];
    if (result)
    {
      v3 = result;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        swift_beginAccess();
        v6 = v3;
        sub_188E719D4(&v7, v5);
        swift_endAccess();

        return 1;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1890077BC(void *a1)
{
  if ([a1 _isGestureType_])
  {
    v2 = [a1 view];
    if (v2)
    {
      v3 = v2;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v6 = [objc_opt_self() environment:Strong containsEnvironment:v3];

        return v6;
      }
    }
  }

  if ([a1 _isGestureType_])
  {
    return 1;
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 delegate];
    if (v9)
    {
      [v9 hysteresisForInteraction_];
      v11 = v10;

      swift_unknownObjectRelease();
      if (v11 == 0.0)
      {
        return 0;
      }
    }

    else
    {
      [objc_opt_self() _defaultHysteresis];
      v13 = v12;

      if (v13 == 0.0)
      {
        return 0;
      }
    }
  }

  v6 = 1;
  if (([a1 _isGestureType_] & 1) == 0)
  {
    return [a1 _isGestureType_];
  }

  return v6;
}

uint64_t sub_18900795C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v6 = a2[1];
    if (*(a1 + 16) == 1)
    {
      if (v5 == 1)
      {
        if (v3 == v4 && a1[1] == v6)
        {
          return 1;
        }

        else
        {
          return sub_18A4A86C8();
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return v5 == 2 && (v6 | v4) == 0;
    }
  }

  else
  {
    return !*(a2 + 16) && v3 == v4;
  }
}

void *UIBarButtonItem.Badge.foregroundColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *UIBarButtonItem.Badge.backgroundColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *UIBarButtonItem.Badge.font.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t static UIBarButtonItem.Badge.count(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t static UIBarButtonItem.Badge.string(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
}

void static UIBarButtonItem.Badge.indicator()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
}

unint64_t sub_189007B7C()
{
  result = qword_1EA939E30;
  if (!qword_1EA939E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939E30);
  }

  return result;
}

uint64_t sub_189007BD0()
{
  if (!*(v0 + 16))
  {
    v1 = sub_18A4A8618();
    MEMORY[0x18CFE22D0](v1);

    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    MEMORY[0x18CFE22D0](*v0, *(v0 + 8));
LABEL_5:
    MEMORY[0x18CFE22D0](34, 0xE100000000000000);
    return 34;
  }

  return 0x6F74616369646E69;
}

void sub_189007C98(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  a1[4] = 0;
  a1[5] = 0;
}

void UIBarButtonItem.badge.getter(void *a1@<X8>)
{
  v3 = [(UIBarButtonItem *)v1 _typedStorage];
  sub_18901F084(a1);
}

double sub_189007D08@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = [(UIBarButtonItem *)*a1 _typedStorage];
  sub_18901F084(v6);

  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  result = *&v7;
  a2[2] = v7;
  return result;
}

void sub_189007D60(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = *a1;
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v5;
  sub_188EC2284(v6[0], v1, v2, v3, v4, v5);
  UIBarButtonItem.badge.setter(v6);
}

void UIBarButtonItem.badge.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 40);
  v70 = *a1;
  v71 = *(a1 + 32);
  v7 = [(UIBarButtonItem *)v1 _typedStorage];
  v8 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v9 = *(&v7->super.isa + v8);
  if (!*(v9 + 16) || (v10 = sub_188A403F4(&_s8BadgeKeyVN), (v11 & 1) == 0))
  {
    swift_endAccess();

    v19 = 0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v23 = 0;
    v17 = v6;
    v18 = v5;
    if (v4 != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  v68 = v2;
  v12 = *(*(v9 + 56) + 8 * v10);
  swift_endAccess();
  v13 = v12[2];
  v14 = v12[4];
  v15 = v12[5];
  v16 = v12[7];
  v62 = v12[6];
  v63 = v12[3];
  sub_188EC2284(v13, v63, v14, v15, v62, v16);

  if (v15 == 1)
  {
    v2 = v68;
    v17 = v6;
    v18 = v5;
    v19 = v16;
    v21 = v62;
    v20 = v63;
    v22 = v14;
    v23 = v13;
    if (v4 != 1)
    {
LABEL_5:
      v24 = v4;
      v25 = v3;
      v68 = v2;
      v26 = v22;
      v27 = v20;
      v28 = v21;
      v29 = v17;
      v30 = v19;
      sub_188EC2284(v23, v20, v22, 1, v21, v19);
      v31 = v70;
      v32 = v25;
      v69 = v29;
      v33 = v29;
      v34 = v25;
      v35 = v28;
      v36 = v27;
      v37 = 1;
      sub_188EC2284(v70, v32, v18, v24, v71, v33);
      goto LABEL_6;
    }

LABEL_9:
    v44 = v23;
    v45 = 1;
    goto LABEL_10;
  }

  v78 = v13;
  v79 = v63;
  v80 = v14;
  v81 = v15;
  v82 = v62;
  v83 = v16;
  v18 = v5;
  v46 = v16;
  v69 = v6;
  if (v4 != 1)
  {
    v72 = v70;
    v73 = v3;
    v74 = v5;
    v75 = v4;
    v76 = v71;
    v77 = v6;
    v60 = v13;
    v48 = v13;
    v35 = v62;
    v49 = v14;
    v50 = v6;
    v51 = v46;
    sub_188EC2284(v48, v63, v14, v15, v62, v46);
    v61 = v3;
    v24 = v4;
    sub_188EC2284(v70, v3, v18, v4, v71, v50);
    v38 = v60;
    v36 = v63;
    sub_188EC2284(v60, v63, v49, v15, v62, v51);
    v66 = _sSo15UIBarButtonItemC5UIKitE5BadgeV2eeoiySbAE_AEtFZ_0(&v78, &v72);
    v67 = v18;
    v52 = v51;
    v53 = v75;
    v54 = v76;
    v55 = v77;
    sub_188EC226C(v72, v73, v74);

    v56 = v81;
    v57 = v82;
    v58 = v83;
    sub_188EC226C(v78, v79, v80);

    v59 = v49;
    sub_188EC2210(v60, v63, v49, v15, v62, v52);
    if (v66)
    {
      sub_188EC2210(v60, v63, v49, v15, v62, v52);
      v44 = v70;
      v21 = v71;
      v20 = v61;
      v22 = v67;
      v45 = v24;
      v19 = v69;
      goto LABEL_10;
    }

    v34 = v61;
    v64 = v59;
    v65 = v52;
    v37 = v15;
    v39 = v70;
    goto LABEL_7;
  }

  v23 = v13;
  v47 = v13;
  v35 = v62;
  v26 = v14;
  v30 = v46;
  sub_188EC2284(v47, v63, v14, v15, v62, v46);
  v34 = v3;
  sub_188EC2284(v70, v3, v18, 1, v71, v6);
  sub_188EC2284(v23, v63, v14, v15, v62, v30);
  v36 = v63;
  sub_188EC226C(v23, v63, v26);

  v24 = 1;
  v37 = v15;
  v31 = v70;
LABEL_6:
  v64 = v26;
  v65 = v30;
  v67 = v18;
  sub_188EC2210(v23, v36, v26, v37, v35, v30);
  sub_188EC2210(v31, v34, v18, v24, v71, v69);
  v38 = v23;
  v39 = v31;
LABEL_7:
  v40 = [(UIBarButtonItem *)v68 _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E38);
  v41 = swift_allocObject();
  v41[2] = v39;
  v41[3] = v34;
  v41[4] = v67;
  v41[5] = v24;
  v41[6] = v71;
  v41[7] = v69;
  v42 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *(&v40->super.isa + v42);
  *(&v40->super.isa + v42) = 0x8000000000000000;
  sub_188A40430(v41, &_s8BadgeKeyVN, isUniquelyReferenced_nonNull_native);
  *(&v40->super.isa + v42) = v72;
  swift_endAccess();

  [v68 _updateView];
  v44 = v38;
  v20 = v36;
  v22 = v64;
  v19 = v65;
  v45 = v37;
  v21 = v35;
LABEL_10:
  sub_188EC2210(v44, v20, v22, v45, v21, v19);
}

void (*UIBarButtonItem.badge.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = [(UIBarButtonItem *)v1 _typedStorage];
  v6 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v7 = *(&v5->super.isa + v6);
  if (*(v7 + 16) && (v8 = sub_188A403F4(&_s8BadgeKeyVN), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v11 = v10[2];
    v12 = v10[3];
    v13 = v10[4];
    v14 = v10[5];
    v15 = v10[6];
    v16 = v10[7];
    *v4 = v11;
    v4[1] = v12;
    v4[2] = v13;
    v4[3] = v14;
    v4[4] = v15;
    v4[5] = v16;
    sub_188EC2284(v11, v12, v13, v14, v15, v16);
  }

  else
  {
    swift_endAccess();
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = 1;
    v4[4] = 0;
    v4[5] = 0;
  }

  return sub_1890083A8;
}

void sub_1890083A8(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v8;
  v10[5] = v9;
  if (a2)
  {
    sub_188EC2284(v4, v5, v6, v7, v8, v9);
    UIBarButtonItem.badge.setter(v10);
    sub_188EC2210(*v3, v3[1], v3[2], v3[3], v3[4], v3[5]);
  }

  else
  {
    UIBarButtonItem.badge.setter(v10);
  }

  free(v3);
}

char *UIBarButtonItem.__badge.getter()
{
  v1 = [(UIBarButtonItem *)v0 _typedStorage];
  v2 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v3 = *(&v1->super.isa + v2);
  if (*(v3 + 16) && (v4 = sub_188A403F4(&_s8BadgeKeyVN), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();
    v7 = v6[2];
    v8 = v6[3];
    v9 = v6[4];
    v10 = v6[5];
    v11 = v6[6];
    v12 = v6[7];
    sub_188EC2284(v7, v8, v9, v10, v11, v12);

    if (v10 != 1)
    {
      v13 = [objc_allocWithZone(UIBarButtonItemBadge) init];
      v14 = &v13[OBJC_IVAR___UIBarButtonItemBadge_backingBadge];
      v15 = *&v13[OBJC_IVAR___UIBarButtonItemBadge_backingBadge];
      v16 = *&v13[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 8];
      v17 = *&v13[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 24];
      v18 = *&v13[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 32];
      v22 = *&v13[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 40];
      *v14 = v7;
      *(v14 + 1) = v8;
      v19 = v14[16];
      v14[16] = v9;
      *(v14 + 3) = v10;
      *(v14 + 4) = v11;
      *(v14 + 5) = v12;
      v20 = v13;
      sub_188EC226C(v15, v16, v19);

      return v20;
    }
  }

  else
  {
    swift_endAccess();
  }

  return 0;
}

id UIBarButtonItemBadge.init()()
{
  v1 = v0 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 0;
  v3.super_class = UIBarButtonItemBadge;
  return objc_msgSendSuper2(&v3, sel_init);
}

char *sub_189008694(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = &v2[OBJC_IVAR___UIBarButtonItemBadge_backingBadge];
  v4 = *&v2[OBJC_IVAR___UIBarButtonItemBadge_backingBadge];
  v5 = *&v2[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 8];
  v6 = *&v2[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 24];
  v7 = *&v2[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 32];
  v8 = *&v2[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 40];
  *v3 = a1;
  *(v3 + 1) = 0;
  v9 = v3[16];
  v3[16] = 0;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0;
  *(v3 + 3) = 0;
  sub_188EC226C(v4, v5, v9);

  return v2;
}

char *sub_189008760(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = &v4[OBJC_IVAR___UIBarButtonItemBadge_backingBadge];
  v6 = *&v4[OBJC_IVAR___UIBarButtonItemBadge_backingBadge];
  v7 = *&v4[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 8];
  v8 = *&v4[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 24];
  v9 = *&v4[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 32];
  v10 = *&v4[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 40];
  *v5 = a1;
  *(v5 + 1) = a2;
  LOBYTE(a1) = v5[16];
  v5[16] = 1;
  *(v5 + 4) = 0;
  *(v5 + 5) = 0;
  *(v5 + 3) = 0;

  sub_188EC226C(v6, v7, a1);

  return v4;
}

uint64_t UIBarButtonItemBadge.stringValue.getter()
{
  if (*(v0 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 16))
  {
    if (*(v0 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 16) == 1)
    {
      v1 = *(v0 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge);

      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_189007B7C();
    return sub_18A4A7DD8();
  }
}

void *UIBarButtonItemBadge.foregroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 24);
  v2 = v1;
  return v1;
}

void UIBarButtonItemBadge.foregroundColor.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 24);
  *(v1 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 24) = a1;
}

void *UIBarButtonItemBadge.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 32);
  v2 = v1;
  return v1;
}

void UIBarButtonItemBadge.backgroundColor.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 32);
  *(v1 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 32) = a1;
}

void *UIBarButtonItemBadge.font.getter()
{
  v1 = *(v0 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 40);
  v2 = v1;
  return v1;
}

void UIBarButtonItemBadge.font.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 40);
  *(v1 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 40) = a1;
}

uint64_t UIBarButtonItemBadge.isEqual(_:)(uint64_t a1)
{
  v2 = sub_188C85D28(a1, &v34);
  if (!v37)
  {
    sub_188A553EC(&v34);
    goto LABEL_5;
  }

  type metadata accessor for UIBarButtonItemBadge(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v20 = 0;
    return v20 & 1;
  }

  v3 = v28;
  v4 = *(v1 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 8);
  v5 = *(v1 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 24);
  v6 = *(v1 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 32);
  v7 = *(v1 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 40);
  v8 = *(v1 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 16);
  v34 = *(v1 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge);
  v35 = v4;
  v36 = v8;
  v37 = v5;
  v38 = v6;
  v39 = v7;
  v9 = *&v28[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 8];
  v10 = *&v28[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 24];
  v11 = *&v28[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 32];
  v12 = *&v28[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 40];
  v13 = v28[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 16];
  v28 = *&v28[OBJC_IVAR___UIBarButtonItemBadge_backingBadge];
  v29 = v9;
  v30 = v13;
  v31 = v10;
  v32 = v11;
  v33 = v12;
  sub_188EC22E0(v34, v4, v8);
  v14 = v7;
  v15 = v5;
  v16 = v6;
  sub_188EC22E0(v28, v9, v13);
  v17 = v12;
  v18 = v10;
  v19 = v11;
  v20 = _sSo15UIBarButtonItemC5UIKitE5BadgeV2eeoiySbAE_AEtFZ_0(&v34, &v28);

  v21 = v31;
  v22 = v32;
  v23 = v33;
  sub_188EC226C(v28, v29, v30);

  v24 = v37;
  v25 = v38;
  v26 = v39;
  sub_188EC226C(v34, v35, v36);

  return v20 & 1;
}

uint64_t UIBarButtonItemBadge.description.getter()
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000017, 0x800000018A69E810);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](8251, 0xE200000000000000);
  v0 = sub_189007BD0();
  MEMORY[0x18CFE22D0](v0);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

id UIBarButtonItemBadge.init(coder:)(void *a1)
{
  v2 = sub_18900A0F4(a1);

  return v2;
}

void sub_18900903C(void *a1)
{
  v3 = v1 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge;
  v4 = *(v1 + OBJC_IVAR___UIBarButtonItemBadge_backingBadge);
  if (*(v3 + 16))
  {
    if (*(v3 + 16) != 1)
    {
      goto LABEL_6;
    }

    v5 = *(v3 + 8);

    v6 = sub_18A4A7258();
    sub_188EC226C(v4, v5, 1);
    v7 = sub_18A4A7258();
    [a1 encodeObject:v6 forKey:v7];
  }

  else
  {
    v7 = sub_18A4A7258();
    [a1 encodeInteger:v4 forKey:v7];
  }

LABEL_6:
  v8 = *(v3 + 24);
  if (v8)
  {
    v9 = v8;
    v10 = sub_18A4A7258();
    [a1 encodeObject:v9 forKey:v10];
  }

  v11 = *(v3 + 32);
  if (v11)
  {
    v12 = v11;
    v13 = sub_18A4A7258();
    [a1 encodeObject:v12 forKey:v13];
  }

  v14 = *(v3 + 40);
  if (v14)
  {
    v15 = v14;
    v16 = sub_18A4A7258();
    [a1 encodeObject:v15 forKey:v16];
  }
}

uint64_t static UIBarButtonItem._Badge.count(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t static UIBarButtonItem._Badge.string(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
}

void static UIBarButtonItem._Badge.indicator()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
}

uint64_t _sSo15UIBarButtonItemC5UIKitE5BadgeV11stringValueSSSgvg_0()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v1 = *v0;

      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_189007B7C();
    return sub_18A4A7DD8();
  }
}

uint64_t static UIBarButtonItem._Badge.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  v32 = *a1;
  v33 = v2;
  v34 = v11;
  v35 = v3;
  v36 = v4;
  v37 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v12;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  sub_188EC22E0(v32, v2, v11);
  v13 = v5;
  v14 = v3;
  v15 = v4;
  sub_188EC22E0(v6, v7, v12);
  v16 = v10;
  v17 = v8;
  v18 = v9;
  LOBYTE(v6) = _sSo15UIBarButtonItemC5UIKitE5BadgeV2eeoiySbAE_AEtFZ_0(&v32, &v26);
  v19 = v29;
  v20 = v30;
  v21 = v31;
  sub_188EC226C(v26, v27, v28);

  v22 = v35;
  v23 = v36;
  v24 = v37;
  sub_188EC226C(v32, v33, v34);

  return v6 & 1;
}

uint64_t sub_1890094F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  v32 = *a1;
  v33 = v2;
  v34 = v11;
  v35 = v3;
  v36 = v4;
  v37 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v12;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  sub_188EC22E0(v32, v2, v11);
  v13 = v5;
  v14 = v3;
  v15 = v4;
  sub_188EC22E0(v6, v7, v12);
  v16 = v10;
  v17 = v8;
  v18 = v9;
  LOBYTE(v6) = _sSo15UIBarButtonItemC5UIKitE5BadgeV2eeoiySbAE_AEtFZ_0(&v32, &v26);
  v19 = v29;
  v20 = v30;
  v21 = v31;
  sub_188EC226C(v26, v27, v28);

  v22 = v35;
  v23 = v36;
  v24 = v37;
  sub_188EC226C(v32, v33, v34);

  return v6 & 1;
}

void UIBarButtonItem._badge.getter(void *a1@<X8>)
{
  v3 = [(UIBarButtonItem *)v1 _typedStorage];
  v4 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v5 = *(&v3->super.isa + v4);
  if (!*(v5 + 16) || (v6 = sub_188A403F4(&_s8BadgeKeyVN), (v7 & 1) == 0))
  {
    swift_endAccess();

    goto LABEL_8;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  swift_endAccess();
  v9 = v8[2];
  v10 = v8[3];
  v11 = v8[4];
  v12 = v8[5];
  v13 = v8[6];
  v14 = v8[7];
  sub_188EC2284(v9, v10, v11, v12, v13, v14);

  if (v12 == 1)
  {
LABEL_8:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 1;
    goto LABEL_9;
  }

  if (v11)
  {
    if (v11 == 1)
    {
      v15 = 1;
      sub_188EC22E0(v9, v10, 1);
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v15 = v11;
  }

  sub_188EC2210(v9, v10, v11, v12, v13, v14);
  *a1 = v9;
  a1[1] = v10;
  a1[2] = v15;
  a1[3] = 0;
LABEL_9:
  a1[4] = 0;
  a1[5] = 0;
}

void sub_189009748(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v3;
  if (v4 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a1;
  }

  if (v4 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 + 8);
  }

  if (v4 == 1)
  {
    v7 = 0;
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 32);
  }

  if (v4 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 40);
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v7;
  v12[3] = v4;
  v12[4] = v10;
  v12[5] = v11;
  sub_188EC2284(v1, v2, v3, v4, v5, v6);
  UIBarButtonItem.badge.setter(v12);
}

void (*UIBarButtonItem._badge.modify(void *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  v3[6] = v1;
  UIBarButtonItem._badge.getter(v3);
  return sub_189009830;
}

void sub_189009830(__int128 **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *v2;
    v4 = *(v2 + 1);
    v5 = *(v2 + 2);
    v6 = *(v2 + 3);
    v7 = *(v2 + 4);
    v8 = *(v2 + 5);
    v9 = v5;
    if (v6 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *v2;
    }

    if (v6 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v2 + 1);
    }

    if (v6 == 1)
    {
      v9 = 0;
      v12 = 0;
    }

    else
    {
      v12 = *(v2 + 4);
    }

    if (v6 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v2 + 5);
    }

    *&v18 = v10;
    *(&v18 + 1) = v11;
    v19 = v9;
    v20 = v6;
    *&v21 = v12;
    *(&v21 + 1) = v13;
    sub_188EC2284(v3, v4, v5, v6, v7, v8);
    UIBarButtonItem.badge.setter(&v18);
    sub_188EC2210(*v2, *(v2 + 1), *(v2 + 2), *(v2 + 3), *(v2 + 4), *(v2 + 5));
  }

  else
  {
    v14 = *(v2 + 3);
    if (v14 == 1)
    {
      v15 = 0;
      v16 = 0uLL;
      v17 = 0uLL;
    }

    else
    {
      v17 = v2[2];
      v15 = *(v2 + 16);
      v16 = *v2;
    }

    v18 = v16;
    v19 = v15;
    v20 = v14;
    v21 = v17;
    UIBarButtonItem.badge.setter(&v18);
  }

  free(v2);
}

char *UIBarButtonItem.___badge.getter()
{
  UIBarButtonItem._badge.getter(v15);
  v0 = v17;
  if (v17 == 1)
  {
    return 0;
  }

  v2 = v18;
  v14 = v19;
  v3 = v15[1];
  v4 = v16;
  v5 = v15[0];
  v6 = [objc_allocWithZone(_UIBarButtonItemBadge) init];
  v7 = &v6[OBJC_IVAR___UIBarButtonItemBadge_backingBadge];
  v8 = *&v6[OBJC_IVAR___UIBarButtonItemBadge_backingBadge];
  v9 = *&v6[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 8];
  v10 = *&v6[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 24];
  v11 = *&v6[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 32];
  v12 = *&v6[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 40];
  *v7 = v5;
  *(v7 + 1) = v3;
  LOBYTE(v3) = v7[16];
  v7[16] = v4;
  *(v7 + 3) = v0;
  *(v7 + 4) = v2;
  *(v7 + 5) = v14;
  v13 = v6;
  sub_188EC226C(v8, v9, v3);

  return v13;
}

void sub_189009A30(void *a1, uint64_t a2, _BYTE *a3)
{
  if (a3)
  {
    v5 = *&a3[OBJC_IVAR___UIBarButtonItemBadge_backingBadge];
    v6 = *&a3[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 8];
    v8 = *&a3[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 24];
    v7 = *&a3[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 32];
    v9 = *&a3[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 40];
    v10 = a3[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 16];
    sub_188EC22E0(v5, v6, a3[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 16]);
    v11 = v9;
    v12 = v8;
    v13 = v7;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v10 = 0;
    v7 = 0;
    v9 = 0;
    v8 = 1;
  }

  v16[0] = v5;
  v16[1] = v6;
  v16[2] = v10;
  v16[3] = v8;
  v16[4] = v7;
  v16[5] = v9;
  v15 = a1;
  v14 = a3;
  UIBarButtonItem.badge.setter(v16);
}

void _sSo15UIBarButtonItemC5UIKitE7__badgeSo0abC5BadgeCSgvs_0(_BYTE *a1)
{
  if (a1)
  {
    v1 = *&a1[OBJC_IVAR___UIBarButtonItemBadge_backingBadge];
    v2 = *&a1[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 8];
    v4 = *&a1[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 24];
    v3 = *&a1[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 32];
    v5 = *&a1[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 40];
    v6 = a1[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 16];
    sub_188EC22E0(v1, v2, a1[OBJC_IVAR___UIBarButtonItemBadge_backingBadge + 16]);
    v7 = v5;
    v8 = v4;
    v9 = v3;
  }

  else
  {
    v1 = 0;
    v2 = 0;
    v6 = 0;
    v3 = 0;
    v5 = 0;
    v4 = 1;
  }

  v11[0] = v1;
  v11[1] = v2;
  v11[2] = v6;
  v11[3] = v4;
  v11[4] = v3;
  v11[5] = v5;
  UIBarButtonItem.badge.setter(v11);
}

id static _UIBarButtonItemBadge._badge(withCount:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() badgeWithCount_];

  return v1;
}

id static _UIBarButtonItemBadge._badge(with:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = sub_18A4A7258();
  v2 = [ObjCClassFromMetadata badgeWithString_];

  return v2;
}

id sub_189009D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_18A4A7288();
  v7 = v6;
  swift_getObjCClassMetadata();
  v8 = a4(v5, v7);

  return v8;
}

id _sSo20UIBarButtonItemBadgeC5UIKitE5coderABSgSo7NSCoderC_tcfC_0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id _UIBarButtonItemBadge.init(coder:)(void *a1)
{
  v4.super_class = _UIBarButtonItemBadge;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

uint64_t _sSo15UIBarButtonItemC5UIKitE5BadgeV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = *a2;
  v7 = *(a2 + 16);
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  if (*(a1 + 16))
  {
    v11 = a2[1];
    if (*(a1 + 16) == 1)
    {
      if (v7 != 1 || (v2 != v6 || a1[1] != v11) && (sub_18A4A86C8() & 1) == 0)
      {
        return 0;
      }

LABEL_13:
      if (v3)
      {
        if (!v8)
        {
          return 0;
        }

        sub_188A34624(0, qword_1ED4913C0);
        v13 = v8;
        v14 = v3;
        v15 = sub_18A4A7C88();

        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      if (v4)
      {
        if (!v9)
        {
          return 0;
        }

        sub_188A34624(0, qword_1ED4913C0);
        v16 = v9;
        v17 = v4;
        v18 = sub_18A4A7C88();

        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      if (v5)
      {
        if (v10)
        {
          sub_188A34624(0, &qword_1ED48C4A0);
          v19 = v10;
          v20 = v5;
          v21 = sub_18A4A7C88();

          if (v21)
          {
            return 1;
          }
        }
      }

      else if (!v10)
      {
        return 1;
      }

      return 0;
    }

    result = 0;
    if (v7 == 2 && !(v11 | v6))
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = 0;
    if (!*(a2 + 16) && v2 == v6)
    {
      goto LABEL_13;
    }
  }

  return result;
}

id sub_18900A0F4(void *a1)
{
  v2 = v1;
  v4 = sub_18A4A7258();
  v5 = [a1 containsValueForKey_];

  if (v5)
  {
    v6 = sub_18A4A7258();
    v7 = [a1 decodeIntegerForKey_];

    v8 = 0;
  }

  else
  {
    v9 = sub_18A4A7258();
    v10 = [a1 containsValueForKey_];

    if (v10)
    {
      sub_188A34624(0, &qword_1ED48F7A0);
      v11 = sub_18A4A7C18();
      if (v11)
      {
        v12 = v11;
        sub_18A4A7278();
      }
    }

    v7 = 0;
    v8 = 2;
  }

  sub_188A34624(0, qword_1ED4913C0);
  v13 = sub_18A4A7C18();
  v14 = sub_18A4A7C18();
  sub_188A34624(0, &qword_1ED48C4A0);
  v15 = sub_18A4A7C18();
  v16 = &v2[OBJC_IVAR___UIBarButtonItemBadge_backingBadge];
  *v16 = v7;
  *(v16 + 1) = 0;
  v16[16] = v8;
  *(v16 + 3) = v13;
  *(v16 + 4) = v14;
  *(v16 + 5) = v15;
  sub_188EC22E0(v7, 0, v8);
  v17 = v15;
  v18 = v13;
  v19 = v14;
  sub_188EC226C(v7, 0, v8);

  v21.receiver = v2;
  v21.super_class = UIBarButtonItemBadge;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t sub_18900A3B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_18900A40C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_18900A480(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id sub_18900A588()
{
  v0 = objc_allocWithZone(UIMenu);
  v1 = sub_18A4A7258();
  sub_188FDEE50();
  v2 = sub_18A4A7518();
  v3 = [v0 initWithTitle:v1 image:0 imageName:0 identifier:0 options:0 children:v2];

  v4 = v3;
  [v4 setSubtitle_];
  [v4 setPreferredElementSize_];

  return v4;
}

uint64_t sub_18900A650@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id IntelligenceUI.PromptComposeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_18A4A7258();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id IntelligenceUI.PromptComposeViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI27PromptComposeViewController_promptComposeView;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for IntelligenceUI.PromptComposeView()) initWithFrame_];
  if (a2)
  {
    v7 = sub_18A4A7258();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for IntelligenceUI.PromptComposeViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id IntelligenceUI.PromptComposeViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id IntelligenceUI.PromptComposeViewController.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI27PromptComposeViewController_promptComposeView;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for IntelligenceUI.PromptComposeView()) initWithFrame_];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for IntelligenceUI.PromptComposeViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id IntelligenceUI.PromptComposeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceUI.PromptComposeViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18900B018@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_18A4A2668();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A2588();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v35 - v18;
  v42 = v2;
  v20 = [v2 attributedText];
  if (v20)
  {
    v21 = v20;
    v39 = v9;
    v40 = a1;
    swift_getKeyPath();
    sub_18A4A39F8();
    sub_18900C508(&qword_1EA92FA88, MEMORY[0x1E69DBB48]);
    v22 = v21;
    sub_18A4A25B8();
    v36 = *(v7 + 56);
    v36(v15, 0, 1, v6);
    v35[0] = *(v7 + 32);
    v35[1] = v7 + 32;
    (v35[0])(v12, v15, v6);
    v38 = *off_1E70EC918;
    v37 = [v22 length];
    v29 = swift_allocObject();
    *(v29 + 16) = v12;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_18900C550;
    *(v30 + 24) = v29;
    v47 = sub_188ECA51C;
    v48 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_18914E7A8;
    v46 = &block_descriptor_71;
    v31 = _Block_copy(&aBlock);

    [v22 enumerateAttribute:v38 inRange:0 options:v37 usingBlock:{0, v31}];

    _Block_release(v31);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return result;
    }

    (*(v7 + 16))(v19, v12, v6);
    v36(v19, 0, 1, v6);
    (*(v7 + 8))(v12, v6);

    v34 = (*(v7 + 48))(v19, 1, v6);
    v9 = v39;
    a1 = v40;
    if (v34 != 1)
    {
      return (v35[0])(v40, v19, v6);
    }
  }

  else
  {
    (*(v7 + 56))(v19, 1, 1, v6);
  }

  sub_188A3F5FC(v19, &qword_1EA935C40);
  v23 = v42;
  v24 = [v42 text];
  if (v24)
  {
    v25 = v24;
    sub_18A4A7288();
  }

  sub_18A4A2658();
  sub_18A4A2598();
  v26 = [v23 font];
  if (v26)
  {
    v27 = v26;
    [v26 pointSize];
    aBlock = v28;
    LOBYTE(v44) = 0;
    sub_18A4A39D8();
    sub_18900C508(&qword_1EA92FA90, MEMORY[0x1E69DBB30]);
    sub_18A4A25D8();
  }

  return (*(v7 + 32))(a1, v9, v6);
}

uint64_t sub_18900B698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a3;
  v7 = sub_18A4A2588();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E88);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v25 - v16;
  sub_188C85D28(a1, v28);
  if (v29)
  {
    sub_188A34624(0, &qword_1ED48C4A0);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v19 = v26;
    (*(v8 + 16))(v10, a5, v7);
    sub_18900C508(&qword_1EA92FAC0, MEMORY[0x1E6968848]);
    sub_18A4A78F8();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      v20 = &qword_1EA939E80;
      v21 = v13;
    }

    else
    {
      sub_18900C434(v13, v17);
      [v19 pointSize];
      v23 = v22;
      sub_18900C4A4();
      v24 = sub_18A4A25E8();
      v26 = v23;
      v27 = 0;
      sub_18A4A39D8();
      sub_18900C508(&qword_1EA92FA90, MEMORY[0x1E69DBB30]);
      sub_18A4A26D8();
      v24(v28, 0);

      v20 = &qword_1EA939E88;
      v21 = v17;
    }
  }

  else
  {
    v20 = &qword_1EA934050;
    v21 = v28;
  }

  return sub_188A3F5FC(v21, v20);
}

id _sSo11UITextFieldC5UIKitE27_intelligenceCollectContent2in9collectorySo6CGRectV_21UIIntelligenceSupport0J16ElementCollectorCtF_0(uint64_t a1)
{
  v2 = v1;
  v70 = a1;
  v71 = sub_18A4A3BA8();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v63 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18A4A3A28();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v62 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E78);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v53 - v9;
  v10 = sub_18A4A3A48();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_18A4A3A18();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v73 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E80);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v56 = &v53 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E88);
  v15 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v17 = &v53 - v16;
  v74 = sub_18A4A2588();
  v18 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v53 - v23;
  v25 = [v1 isSecureTextEntry];
  v26 = [v1 textContentType];
  v72 = v24;
  if (v25)
  {
    goto LABEL_6;
  }

  result = [v1 textInputTraits];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v28 = result;
  v29 = [result wasEverSecureTextEntry];

  if (v29 & 1) != 0 || v26 && (v30 = v26, v31 = sub_188F64DEC(), v30, (v31))
  {
LABEL_6:
    sub_18A4A2578();
  }

  else
  {
    sub_18900B018(v24);
    v45 = [v2 selectedTextRange];
    if (v45)
    {
      v46 = v45;
      if ([v45 isEmpty])
      {
      }

      else
      {
        v47 = [v2 beginningOfDocument];
        v48 = [v46 start];
        v53 = [v2 offsetFromPosition:v47 toPosition:v48];

        v49 = [v46 start];
        v54 = v46;
        v50 = [v46 end];
        [v2 offsetFromPosition:v49 toPosition:v50];

        v24 = v72;
        (*(v18 + 16))(v20);
        sub_18900C508(&qword_1EA92FAC0, MEMORY[0x1E6968848]);
        v51 = v56;
        sub_18A4A78F8();
        if ((*(v15 + 48))(v51, 1, v55) == 1)
        {

          sub_188A3F5FC(v51, &qword_1EA939E80);
        }

        else
        {
          sub_18900C434(v51, v17);
          sub_18900C4A4();
          v52 = sub_18A4A25E8();
          v75 = 1;
          sub_18A4A39E8();
          sub_18900C508(&qword_1EA939E90, MEMORY[0x1E69DBB40]);
          sub_18A4A26D8();
          v52(v76, 0);

          sub_188A3F5FC(v17, &qword_1EA939E88);
        }
      }
    }
  }

  v32 = [v2 placeholder];
  if (v32)
  {
    v33 = v32;
    sub_18A4A7288();
  }

  v57 = v26;
  if (v26)
  {
    sub_18A4A7288();
  }

  [v2 isFirstResponder];
  v34 = v73;
  sub_18A4A3A08();
  (*(v18 + 16))(v20, v24, v74);
  v35 = v58;
  v37 = v59;
  v36 = v60;
  (*(v58 + 16))(v60, v34, v59);
  (*(v35 + 56))(v36, 0, 1, v37);
  v38 = sub_18A4A3EE8();
  (*(*(v38 - 8) + 56))(v62, 1, 1, v38);
  v39 = v61;
  sub_18A4A39C8();
  (*(v67 + 104))(v66, *MEMORY[0x1E69DBB58], v68);
  sub_18A4A3A38();
  v40 = v63;
  v41 = v64;
  v42 = v65;
  (*(v64 + 16))(v63, v39, v65);
  v43 = v69;
  v44 = v71;
  (*(v69 + 104))(v40, *MEMORY[0x1E69DBBC8], v71);
  sub_18A4A3418();

  (*(v43 + 8))(v40, v44);
  (*(v41 + 8))(v39, v42);
  (*(v35 + 8))(v73, v37);
  return (*(v18 + 8))(v72, v74);
}

uint64_t sub_18900C434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18900C4A4()
{
  result = qword_1EA92F7C0;
  if (!qword_1EA92F7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA939E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F7C0);
  }

  return result;
}

uint64_t sub_18900C508(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_18900C580()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIDirectionalMaskView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18900C5D8()
{
  result = qword_1EA939EC8;
  if (!qword_1EA939EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939EC8);
  }

  return result;
}

void sub_18900C62C()
{
  *(v0 + OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_mode) = 0;
  v1 = v0 + OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_maskPosition;
  *v1 = 0;
  *(v1 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_additionalOutset) = 0;
  v2 = v0 + OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_additionalDistance;
  *v2 = 0x3FC999999999999ALL;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_blurRadius) = 0x4044000000000000;
  v3 = OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_circle;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_18900C710(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_189010A84(a1, a2, a3, a4);
  if (v4)
  {

    __break(1u);
  }

  else
  {
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_18900C770(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0 && ((*(a1 + 9) ^ *(a2 + 9)) & 1) == 0 && *(a1 + 16) == *(a2 + 16))
  {
    v2 = *(a2 + 24) ^ *(a1 + 24) ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_18900C7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_18A4A7D38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-v7 - 8];
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_188A53994(a2, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939FC8);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, a3);
    (*(v9 + 32))(v12, v8, a3);
    v15 = sub_18A4A7248();
    (*(v9 + 8))(v12, a3);
  }

  else
  {
    v14(v8, 1, 1, a3);
    (*(v6 + 8))(v8, v5);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_18900C9F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_18A4A86C8(), result = 0, (v7 & 1) != 0))
  {
    sub_188F8D138(v2, v4);
    return v9 & (v3 == v5);
  }

  return result;
}

uint64_t sub_18900CA78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1890100E0(v5, v7) & 1;
}

uint64_t sub_18900CAC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_189010194(v5, v7) & 1;
}

BOOL sub_18900CB20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_18900FB14(v9, v10);
}

uint64_t sub_18900CBB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_18900FC30(v11, v13) & 1;
}

uint64_t sub_18900CC24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v2;
  v14 = *(a1 + 96);
  v3 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v3;
  v4 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v4;
  v5 = *(a1 + 104);
  v6 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v6;
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 64);
  v10 = *(a2 + 80);
  v16 = *(a2 + 96);
  v15[4] = v9;
  v15[5] = v10;
  v15[2] = v7;
  v15[3] = v8;
  v11 = *(a2 + 104);
  return sub_18900FC30(v13, v15) & (v5 == v11);
}

uint64_t sub_18900CCB0(char **a1, char **a2)
{
  v4 = v2;
  sub_188B6D84C(v2 + 16, &v123);
  v122 = v2;
  if (v132 <= 1u)
  {
    if (v132)
    {
      v147 = v127;
      v148 = v128;
      v149 = v129;
      v143 = v123;
      v144 = v124;
      v145 = v125;
      v146 = v126;
      v25 = v130;
      v117 = v131;
      v3 = [objc_allocWithZone(type metadata accessor for UISDFView()) initWithFrame_];
      v26 = *(v2 + 280);
      v27 = &v3[OBJC_IVAR____TtC5UIKit9UISDFView_filter];
      *v27 = *(v2 + 264);
      v27[16] = v26;
      *&v3[OBJC_IVAR____TtC5UIKit9UISDFView_containerRegistry] = a2;

      v28 = OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization;
      v29 = *&v3[OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization];
      *&v3[OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization] = v25;
      if (v25 != v29)
      {
        v40 = *&v3[OBJC_IVAR____TtC5UIKit9UISDFView_containerView];
        if (v40)
        {

          v41 = v40;
          v42 = [v41 subviews];
          sub_188A34624(0, &qword_1ED48F680);
          v22 = sub_18A4A7548();

          if (v22 >> 62)
          {
            goto LABEL_66;
          }

          v43 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v43)
          {
            goto LABEL_67;
          }

          goto LABEL_26;
        }
      }

      goto LABEL_17;
    }

    v17 = *&v123;
    v18 = BYTE8(v123);
    v16 = [objc_allocWithZone(type metadata accessor for UISDFBackdropView()) initWithFrame_];
    v19 = [v16 layer];
    [v19 setScale_];

    v20 = [v16 layer];
    [v20 setTracksLuma_];

    sub_18900F7CC();
    sub_18900F8B8();

    goto LABEL_36;
  }

  if (v132 != 2)
  {
    if (v132 == 3)
    {
      v7 = *a1;
      if (*(*a1 + 2))
      {
        v8 = v124;
        v9 = BYTE1(v124);
        v10 = sub_188B0944C(v123, *(&v123 + 1));
        if (v11)
        {
          v12 = v10;

          v13 = *(*(v7 + 7) + 8 * v12);
          v14 = objc_allocWithZone(_UIPortalView);
          v15 = v13;
          v16 = [v14 initWithSourceView_];
          [v16 setMatchesTransform_];
          [v16 setMatchesPosition_];
          [v16 setHidesSourceView_];

          goto LABEL_36;
        }
      }

      goto LABEL_70;
    }

    v23 = LODWORD(v130) | (v131 << 32);
    if (v23 || *(&v129 + 1) | v123 | v129 | *(&v128 + 1) | v128 | *(&v127 + 1) | v127 | *(&v126 + 1) | v126 | *(&v125 + 1) | v125 | *(&v124 + 1) | v124 | *(&v123 + 1))
    {
      if (!v23 && v123 == 1 && !(v129 | *(&v129 + 1) | *(&v128 + 1) | v128 | *(&v127 + 1) | v127 | *(&v126 + 1) | v126 | *(&v125 + 1) | v125 | *(&v124 + 1) | v124 | *(&v123 + 1)))
      {
        v16 = [objc_allocWithZone(type metadata accessor for _UIMaterialDefinitionView()) initWithFrame_];
        v16[OBJC_IVAR____TtC5UIKit25_UIMaterialDefinitionView_ignoresSyncingMasksToBounds] = *(v2 + 237);
        goto LABEL_36;
      }

      v24 = UIView;
    }

    else
    {
      v24 = type metadata accessor for ContentLensingView();
    }

    v16 = [objc_allocWithZone(v24) initWithFrame_];
    while (1)
    {
LABEL_36:
      v60 = v4[1];
      v28 = &selRef_keyboardSceneDelegate_inputViewSetVisibilityDidChange_includedReset_;
      if (v60)
      {
        v61 = *v4;

        v62 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v123 = *a1;
        sub_188B6D924(v62, v61, v60, isUniquelyReferenced_nonNull_native);

        *a1 = v123;
        v64 = [v62 layer];
        v65 = sub_18A4A7258();
        [v64 setName_];
      }

      v66 = v4[32];

      v22 = v16;
      v121 = a1;
      v67 = a1;
      a1 = a2;
      v68 = sub_18900C710(v66, v67, a2, v22);
      v41 = v68;
      a2 = &selRef_keyboardSceneDelegate_inputViewSetVisibilityDidChange_includedReset_;
      if (v68 >> 62)
      {
        v69 = sub_18A4A7F68();
        if (!v69)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v69)
        {
          goto LABEL_54;
        }
      }

      if (v69 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_66:
      v43 = sub_18A4A7F68();
      if (v43)
      {
LABEL_26:
        v115 = v41;
        v119 = a2;
        v120 = a1;
        if (v43 < 1)
        {
          __break(1u);
          goto LABEL_69;
        }

        v44 = 0;
        v45 = v22 & 0xC000000000000001;
        p_cb = &OBJC_PROTOCOL___UIMutableTraits.cb;
        v116 = v28;
        do
        {
          if (v45)
          {
            v47 = sub_188E49300(v44, v22);
          }

          else
          {
            v47 = *(v22 + 8 * v44 + 32);
          }

          v48 = v47;
          type metadata accessor for UISDFElementView();
          v49 = swift_dynamicCastClassUnconditional();
          v50 = *(v28 + v3);
          v51 = *(p_cb + 489);
          v52 = *&v49[v51];
          *&v49[v51] = v50;
          if (v50 != v52)
          {
            v53 = v45;
            v54 = v43;
            v55 = p_cb;
            v56 = v49;
            v57 = v22;
            v58 = [v49 layer];
            v59 = *&v56[v51];
            p_cb = v55;
            v43 = v54;
            v45 = v53;
            [v58 setGradientOvalization_];

            v22 = v57;
            v28 = v116;
          }

          ++v44;
        }

        while (v43 != v44);

        a2 = v119;
        a1 = v120;
      }

      else
      {
LABEL_67:
      }

LABEL_17:
      sub_18900EE60(v117);
      v16 = v3;
      v30 = [v16 layer];
      objc_opt_self();
      v31 = swift_dynamicCastObjCClassUnconditional();
      v32 = sub_188B6DF7C();
      [v31 setEffect_];

      v33 = [v16 layer];
      objc_opt_self();
      v34 = swift_dynamicCastObjCClassUnconditional();
      v35 = *(&v149 + 1);
      [v34 setEffectOffset_];

      v36 = [v16 layer];
      objc_opt_self();
      v37 = swift_dynamicCastObjCClassUnconditional();
      v38 = sub_18A4A7258();
      [v37 setName_];

      [v16 setAutoresizingMask_];
      v39 = [v16 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEffectOffset_];
      sub_188B6E97C(&v143);

      v4 = v122;
    }

    v70 = 0;
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v71 = sub_188E49300(v70, v41);
      }

      else
      {
        v71 = *(v41 + 8 * v70 + 32);
      }

      v72 = v71;
      ++v70;
      [v71 setAutoresizingMask_];
      [v22 addSubview_];
    }

    while (v69 != v70);
LABEL_54:

    v76 = [v22 &selRef_lastOperation];
    v77 = v122;
    [v76 setCornerRadius_];

    v78 = [v22 &selRef_lastOperation];
    v79 = v78;
    v80 = *(v122 + 240);
    v81 = *(v80 + 16);
    if (v81)
    {
      v118 = v78;
      v139[0] = MEMORY[0x1E69E7CC0];
      sub_188B221A4(0, v81, 0);
      v82 = v139[0];
      v83 = (v80 + 64);
      do
      {
        v84 = *(v83 - 3);
        v85 = *(v83 - 2);
        v86 = *(v83 - 1);
        v87 = *v83;
        v140[0] = *(v83 - 4);
        v140[1] = v84;
        v140[2] = v85;
        v141 = v86;
        v142 = v87;
        v88 = v87;

        sub_188B6E9AC();
        v90 = v89;
        *(&v124 + 1) = sub_188A34624(0, &qword_1ED48EE50);

        *&v123 = v90;
        v139[0] = v82;
        v92 = *(v82 + 16);
        v91 = *(v82 + 24);
        if (v92 >= v91 >> 1)
        {
          sub_188B221A4((v91 > 1), v92 + 1, 1);
          v82 = v139[0];
        }

        v83 += 5;
        *(v82 + 16) = v92 + 1;
        sub_188A55538(&v123, (v82 + 32 * v92 + 32));
        --v81;
      }

      while (v81);
      v93 = v121;
      v77 = v122;
      a2 = &selRef_keyboardSceneDelegate_inputViewSetVisibilityDidChange_includedReset_;
      v79 = v118;
    }

    else
    {
      v93 = v121;
    }

    v94 = sub_18A4A7518();

    [v79 setFilters_];

    v95 = [v22 a2[334]];
    v96 = sub_18A4A7FF8();
    [v95 setCompositingFilter_];

    v97 = *(v77 + 208);
    *(&v124 + 1) = sub_188A34624(0, qword_1ED4913C0);
    *&v125 = &protocol witness table for UIColor;
    *&v123 = v97;
    v98 = v97;
    UIView._background.setter(&v123);
    [v22 setAlpha_];
    v99 = [v22 a2[334]];
    [v99 setAllowsGroupBlending_];

    v100 = [v22 a2[334]];
    v101 = *(v77 + 288);
    [v100 setAllowsHitTesting_];

    v102 = [v22 a2[334]];
    [v102 setSkipHitTesting_];

    v103 = [v22 a2[334]];
    v104 = *(v77 + 232);
    *&v105 = v104;
    [v103 setGain_];

    v106 = [v22 a2[334]];
    [v106 setWantsExtendedDynamicRangeContent_];

    v107 = *(v77 + 248);
    if (v107)
    {
      if (*(v107 + 16))
      {
        sub_188B6CFA8(v107 + 32, &v123);
        v108 = sub_18900CCB0(v93, a1);
        [v22 setMaskView_];
        [v22 bounds];
        UIRectInset(v109, v110, v111, v112, v133, v136, v135, v134);
        [v108 setBounds_];
        [v22 bounds];
        MidX = CGRectGetMidX(v150);
        [v22 bounds];
        [v108 setCenter_];

        sub_188B6D288(&v123);
      }
    }

    return v22;
  }

  sub_188A5EBAC(&v123, &v143);
  sub_188A53994(&v143, v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939FD0);
  if (swift_dynamicCast())
  {
    sub_188A5EBAC(v137, v140);
    __swift_project_boxed_opaque_existential_0(v140, v141);
    v21 = sub_1890679D0();
    if (v21)
    {
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_0Tm(v140);
LABEL_51:
      __swift_destroy_boxed_opaque_existential_0Tm(&v143);
      return v22;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v140);
  }

  else
  {
    v138 = 0;
    memset(v137, 0, sizeof(v137));
    sub_188A3F5FC(v137, &unk_1EA939FD8);
  }

  __swift_project_boxed_opaque_existential_0(&v143, *(&v144 + 1));
  v73 = sub_18A4A5918();
  v74 = type metadata accessor for _UIMaterialDefinitionView();
  if (!v73)
  {
    v22 = [objc_allocWithZone(v74) initWithFrame_];
    goto LABEL_51;
  }

  v75 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLayer_];
  if (v75)
  {
    v22 = v75;

    goto LABEL_51;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

double sub_18900DAC4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id sub_18900DAF4(void *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 2) | (*(a2 + 3) << 32);
  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  v9 = a2[96];
  if (v9 > 3)
  {
    if (a2[96] > 5u)
    {
      if (v9 == 6)
      {
        v19 = sub_188B6DF7C();
        [a1 setEffect_];
LABEL_41:

        return [a1 setEffectOffset_];
      }

      sub_188A34624(0, &qword_1ED48CC30);
      v81 = [a1 effect];
      v82 = [v81 isKindOfClass_];

      if (v82)
      {
        v18 = sub_18A4A2D28();
        v19 = sub_18A4A7258();
        [a1 setValue:v18 forKeyPath:v19];
        goto LABEL_40;
      }

      goto LABEL_32;
    }

    if (v9 == 4)
    {
      sub_188A34624(0, &unk_1EA93A008);
      v20 = [a1 effect];
      v21 = [v20 isKindOfClass_];

      if (!v21)
      {
        goto LABEL_32;
      }

      v22 = [v4 | (v5 << 8) | (v6 << 16) CGColor];
      v23 = sub_18A4A7258();
      [a1 setValue:v22 forKeyPath:v23];

      v24 = sub_18A4A2D28();
      v25 = sub_18A4A7258();
      [a1 setValue:v24 forKeyPath:v25];

      v26 = sub_18A4A2D28();
      v27 = a1;
      v28 = sub_18A4A7258();
      [v27 setValue:v26 forKeyPath:v28];

      v29 = sub_18A4A2D28();
      v30 = sub_18A4A7258();
      [v27 setValue:v29 forKeyPath:v30];

      a1 = v27;
      v31 = sub_18A4A2D28();
      v32 = sub_18A4A7258();
      [v27 setValue:v31 forKeyPath:v32];

      v18 = sub_18A4A2D28();
      v19 = sub_18A4A7258();
    }

    else
    {
      v44 = *(a2 + 7);
      sub_188A34624(0, &qword_1ED48CC10);
      v45 = [a1 effect];
      v46 = [v45 isKindOfClass_];

      if (!v46)
      {
        goto LABEL_32;
      }

      v47 = sub_18A4A2D28();
      v48 = sub_18A4A7258();
      [a1 setValue:v47 forKeyPath:v48];

      v49 = sub_18A4A7668();
      v50 = sub_18A4A7258();
      [a1 setValue:v49 forKeyPath:v50];

      v51 = [v7 CGColor];
      v27 = a1;
      v52 = sub_18A4A7258();
      [v27 setValue:v51 forKeyPath:v52];

      a1 = v27;
      v53 = sub_18A4A2D28();
      v54 = sub_18A4A7258();
      [v27 setValue:v53 forKeyPath:v54];

      v55 = sub_18A4A2D28();
      v56 = sub_18A4A7258();
      [v27 setValue:v55 forKeyPath:v56];

      v57 = sub_18A4A2D28();
      v58 = sub_18A4A7258();
      [v27 setValue:v57 forKeyPath:v58];

      v59 = sub_18A4A2D28();
      v60 = sub_18A4A7258();
      [v27 setValue:v59 forKeyPath:v60];

      v61 = [v44 CGColor];
      v62 = sub_18A4A7258();
      [v27 setValue:v61 forKeyPath:v62];

      v63 = sub_18A4A2D28();
      v64 = sub_18A4A7258();
      [v27 setValue:v63 forKeyPath:v64];

      v65 = sub_18A4A2D28();
      v66 = sub_18A4A7258();
      [v27 setValue:v65 forKeyPath:v66];

      v67 = sub_18A4A2D28();
      v68 = sub_18A4A7258();
      [v27 setValue:v67 forKeyPath:v68];

      v18 = sub_18A4A2D28();
      v19 = sub_18A4A7258();
    }

    v69 = v27;
LABEL_39:
    [v69 setValue:v18 forKeyPath:v19];
    goto LABEL_40;
  }

  if (a2[96] > 1u)
  {
    if (v9 != 2)
    {
      sub_188A34624(0, &unk_1EA939FF8);
      v70 = [a1 effect];
      v71 = [v70 isKindOfClass_];

      if (v71)
      {
        v72 = sub_18A4A7668();
        v73 = a1;
        v74 = sub_18A4A7258();
        [v73 setValue:v72 forKeyPath:v74];

        v75 = sub_18A4A7668();
        v76 = sub_18A4A7258();
        [v73 setValue:v75 forKeyPath:v76];

        v77 = sub_18A4A2D28();
        v78 = sub_18A4A7258();
        [v73 setValue:v77 forKeyPath:v78];

        v79 = sub_18A4A7BD8();
        v80 = sub_18A4A7258();
        [v73 setValue:v79 forKeyPath:v80];

        a1 = v73;
        v18 = [v8 CGColor];
        v19 = sub_18A4A7258();
        [v73 setValue:v18 forKeyPath:v19];
        goto LABEL_40;
      }

LABEL_32:
      sub_18900FAB0();
      swift_allocError();
      *v83 = 0;
      return swift_willThrow();
    }

    sub_188A34624(0, &unk_1EA9311D0);
    v33 = [a1 effect];
    v34 = [v33 isKindOfClass_];

    if (!v34)
    {
      goto LABEL_32;
    }

    v18 = [v4 | (v5 << 8) | (v6 << 16) CGColor];
    v19 = sub_18A4A7258();
    goto LABEL_38;
  }

  v92 = *(a2 + 1);
  if (!a2[96])
  {
    sub_188A34624(0, &qword_1EA930898);
    v10 = [a1 effect];
    v11 = [v10 isKindOfClass_];

    if (v11)
    {
      v12 = sub_18A4A2D28();
      v13 = sub_18A4A7258();
      [a1 setValue:v12 forKeyPath:v13];

      v14 = sub_18A4A2D28();
      v15 = sub_18A4A7258();
      [a1 setValue:v14 forKeyPath:v15];

      v16 = sub_18A4A2D28();
      v17 = sub_18A4A7258();
      [a1 setValue:v16 forKeyPath:v17];

      v18 = sub_18A4A2D28();
      v19 = sub_18A4A7258();
      [a1 setValue:v18 forKeyPath:v19];
LABEL_40:

      goto LABEL_41;
    }

    goto LABEL_32;
  }

  sub_188A34624(0, &qword_1EA931230);
  v35 = [a1 effect];
  v36 = [v35 isKindOfClass_];

  if (!v36)
  {
    goto LABEL_32;
  }

  v37 = (v4 | (v5 << 8)) | (v6 << 16);
  if ((v6 << 16) & 0x8000000000000000 | v6 & 0x400000000000)
  {
    v38 = sub_18A4A7F68();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v38)
  {
LABEL_34:
    type metadata accessor for CGColor(0);
    v84 = sub_18A4A7518();

    v85 = sub_18A4A7258();
    [a1 setValue:v84 forKeyPath:v85];

    v86 = *(v92 + 16);
    if (v86)
    {
      sub_18A4A8208();
      v87 = (v92 + 32);
      do
      {
        v88 = *v87++;
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        sub_18A4A81D8();
        sub_18A4A8218();
        sub_18A4A8228();
        sub_18A4A81E8();
        --v86;
      }

      while (v86);
    }

    sub_188A34624(0, &qword_1ED48FD80);
    v89 = sub_18A4A7518();

    v90 = sub_18A4A7258();
    [a1 setValue:v89 forKeyPath:v90];

    sub_188A34624(0, &unk_1ED48CFE0);
    v18 = sub_18A4A7518();
    v19 = sub_18A4A7258();
LABEL_38:
    v69 = a1;
    goto LABEL_39;
  }

  v91 = a1;
  result = sub_18A4A8208();
  if ((v38 & 0x8000000000000000) == 0)
  {
    v40 = 0;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v41 = sub_188E48DA0(v40, v37);
      }

      else
      {
        v41 = *(v37 + 8 * v40 + 32);
      }

      v42 = v41;
      ++v40;
      v43 = [v41 CGColor];

      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
    }

    while (v38 != v40);
    a1 = v91;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

void sub_18900EE60(char a1)
{
  v2 = v1[OBJC_IVAR____TtC5UIKit9UISDFView_mergeElements];
  v1[OBJC_IVAR____TtC5UIKit9UISDFView_mergeElements] = a1;
  if (v2 != (a1 & 1))
  {
    v3 = sel_registerName("mergeElements");
    v4 = [v1 layer];
    LOBYTE(v3) = [v4 respondsToSelector_];

    if (v3)
    {
      v5 = [v1 layer];
      v6 = sub_18A4A7668();
      v7 = sub_18A4A7258();
      [v5 setValue:v6 forKey:v7];
    }
  }
}

void sub_18900EF90()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit9UISDFView_applySmoothnessViaGaussianRadius) == 1)
  {
    v1 = [v0 layer];
    objc_opt_self();
    v2 = swift_dynamicCastObjCClassUnconditional();
    v3 = sub_18A4A7258();
    v4 = [v2 valueForKey_];

    if (v4)
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    if (*(&v7 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_188A3F5FC(v8, &qword_1EA934050);
    }
  }

  else
  {
    v5 = [v0 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() smoothness];
  }
}

uint64_t sub_18900F14C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit9UISDFView_containerView);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_189010928(v2);

  return v3;
}

id sub_18900F19C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC5UIKit9UISDFView_filter];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *&v4[OBJC_IVAR____TtC5UIKit9UISDFView_containerRegistry] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization] = 0;
  v4[OBJC_IVAR____TtC5UIKit9UISDFView_mergeElements] = 0;
  v4[OBJC_IVAR____TtC5UIKit9UISDFView_applySmoothnessViaGaussianRadius] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit9UISDFView_containerView] = 0;
  v4[OBJC_IVAR____TtC5UIKit9UISDFView_isUsingPortaledContainer] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit9UISDFView_trackedElements] = MEMORY[0x1E69E7CC8];
  v11.receiver = v4;
  v11.super_class = type metadata accessor for UISDFView();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_18900F274(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC5UIKit9UISDFView_filter];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  *&v1[OBJC_IVAR____TtC5UIKit9UISDFView_containerRegistry] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization] = 0;
  v1[OBJC_IVAR____TtC5UIKit9UISDFView_mergeElements] = 0;
  v1[OBJC_IVAR____TtC5UIKit9UISDFView_applySmoothnessViaGaussianRadius] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit9UISDFView_containerView] = 0;
  v1[OBJC_IVAR____TtC5UIKit9UISDFView_isUsingPortaledContainer] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit9UISDFView_trackedElements] = MEMORY[0x1E69E7CC8];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for UISDFView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_18900F370()
{
}

void sub_18900F434()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for UISDFElementView();
  objc_msgSendSuper2(&v16, sel__prepareForLayerDump);
  v1 = [v0 layer];
  v2 = sub_18A4A7258();
  v3 = [v1 animationForKey_];

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && (v5 = [v4 sourceLayer]) != 0 && (v6 = v5, v7 = objc_msgSend(v5, sel_delegate), v6, v7))
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        v10 = [v0 layer];
        v11 = [v9 description];
        v12 = sub_18A4A7288();
        v14 = v13;

        MEMORY[0x18CFE22D0](v12, v14);

        v15 = sub_18A4A7258();

        [v10 setName_];

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_18900F7CC()
{
  v1 = sub_18A4A7258();
  v2 = NSSelectorFromString(v1);

  v3 = [v0 layer];
  v4 = [v3 respondsToSelector_];

  if (v4)
  {
    v5 = [v0 layer];
    v6 = sub_18A4A2D28();
    [v5 performSelector:v2 withObject:v6];

    v7 = v5;
  }
}

void sub_18900F8B8()
{
  v1 = sub_18A4A7258();
  v2 = NSSelectorFromString(v1);

  v3 = [v0 layer];
  LODWORD(v2) = [v3 respondsToSelector_];

  if (v2)
  {
    v4 = [v0 layer];
    v5 = sub_18A4A7668();
    v6 = sub_18A4A7258();
    [v4 setValue:v5 forKey:v6];
  }
}

id sub_18900FA08(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_18900FA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18900FAB0()
{
  result = qword_1EA9311E0;
  if (!qword_1EA9311E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9311E0);
  }

  return result;
}

id sub_18900FB04(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

BOOL sub_18900FB14(double *a1, double *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  if (a1[1] == a2[1])
  {
    sub_188A34624(0, &qword_1ED490230);
    if ((sub_18A4A7C88() & 1) != 0 && a1[3] == a2[3] && a1[4] == a2[4] && a1[5] == a2[5] && a1[6] == a2[6] && (sub_18A4A7C88() & 1) != 0 && a1[8] == a2[8] && a1[9] == a2[9] && a1[10] == a2[10])
    {
      return a1[11] == a2[11];
    }
  }

  return 0;
}

uint64_t sub_18900FC30(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 2) | (*(a1 + 3) << 32);
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  v7 = *(a1 + 4);
  v8 = a1[96];
  if (v8 > 3)
  {
    if (a1[96] > 5u)
    {
      if (v8 != 6)
      {
        if (a2[96] == 7 && *a2 == COERCE_DOUBLE(v2 | (v3 << 8) | (v4 << 16)))
        {
          v10 = *(a2 + 1) == v6;
          if (*(a2 + 2) != v5)
          {
            v10 = 0;
          }

          return v10 & 1;
        }

        goto LABEL_48;
      }

      if (a2[96] == 6 && *a2 == COERCE_DOUBLE(v2 | (v3 << 8) | (v4 << 16)) && *(a2 + 1) == v6)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v8 != 4)
      {
        if (a2[96] != 5)
        {
          goto LABEL_48;
        }

        if ((v2 ^ *a2))
        {
          goto LABEL_48;
        }

        if (*(a2 + 1) != v6)
        {
          goto LABEL_48;
        }

        v27 = *(a1 + 4);
        v28 = *(a1 + 5);
        v30 = *(a2 + 40);
        v32 = *(a2 + 24);
        v25 = *(a2 + 4);
        v26 = *(a2 + 5);
        v38 = *(a1 + 3);
        v34 = *(a1 + 6);
        v36 = *(a1 + 5);
        sub_188A34624(0, &qword_1ED490230);
        v22 = sub_18A4A7C88();
        v23.f64[0] = v36;
        v24.f64[0] = v38;
        if ((v22 & 1) == 0)
        {
          goto LABEL_48;
        }

        v24.f64[1] = v7;
        v23.f64[1] = v34;
        if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v32, v24), vceqq_f64(v30, v23)), xmmword_18A650B80)) & 0xF) != 0 || (sub_18A4A7C88() & 1) == 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v27, v25), vceqq_f64(v28, v26)), xmmword_18A650B80)) & 0xF) != 0)
        {
          goto LABEL_48;
        }

        goto LABEL_42;
      }

      if (a2[96] == 4)
      {
        v11 = *(a1 + 6);
        v12 = a2[48];
        v13 = *(a2 + 5);
        v33 = *(a1 + 4);
        v37 = *(a1 + 3);
        v35 = *(a1 + 5);
        sub_188A34624(0, &qword_1ED490230);
        v29 = *(a2 + 24);
        v31 = *(a2 + 8);
        v15 = sub_18A4A7C88();
        v16.f64[0] = v6;
        v16.f64[1] = v5;
        v17.f64[0] = v37;
        v17.f64[1] = v33;
        v10 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v16, v31), vceqq_f64(v17, v29)))) & (v35 == v13) & v15 & (v11 ^ v12 ^ 1);
        return v10 & 1;
      }
    }

LABEL_48:
    v10 = 0;
    return v10 & 1;
  }

  if (a1[96] > 1u)
  {
    if (v8 == 2)
    {
      if (a2[96] != 2)
      {
        goto LABEL_48;
      }

LABEL_20:
      sub_188A34624(0, &qword_1ED490230);
      return sub_18A4A7C88() & 1;
    }

    if (a2[96] != 3)
    {
      goto LABEL_48;
    }

    if ((v2 ^ *a2))
    {
      goto LABEL_48;
    }

    if ((v3 ^ a2[1]))
    {
      goto LABEL_48;
    }

    if (*(a2 + 1) != v6)
    {
      goto LABEL_48;
    }

    if (*(a2 + 2) != v5)
    {
      goto LABEL_48;
    }

    if (*(a1 + 3) != *(a2 + 3))
    {
      goto LABEL_48;
    }

    sub_188A34624(0, &qword_1ED490230);
    if ((sub_18A4A7C88() & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_42:
    v10 = 1;
    return v10 & 1;
  }

  if (!a1[96])
  {
    if (!a2[96])
    {
      *&v9.f64[0] = v2 | (v3 << 8) | (v4 << 16);
      v9.f64[1] = *(a1 + 1);
      v10 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *a2), vceqq_f64(*(a1 + 1), *(a2 + 1)))));
      return v10 & 1;
    }

    goto LABEL_48;
  }

  if (a2[96] != 1)
  {
    goto LABEL_48;
  }

  v21 = *(a2 + 1);
  v20 = *(a2 + 2);
  if ((sub_189014FCC(v2 | (v3 << 8) | (v4 << 16), *a2) & 1) == 0 || (sub_189014FF4(*&v6, v21) & 1) == 0)
  {
    goto LABEL_48;
  }

  return sub_189015050(*&v5, v20);
}

uint64_t sub_1890100E0(double *a1, double *a2)
{
  if (((*a1 ^ *a2) & 1) != 0 || ((*(a1 + 1) ^ *(a2 + 1)) & 1) != 0 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  sub_188A34624(0, &qword_1ED490230);
  return sub_18A4A7C88() & 1;
}

uint64_t sub_189010194(uint64_t a1, uint64_t a2)
{
  sub_188A34624(0, &qword_1ED490230);
  if ((sub_18A4A7C88() & 1) != 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    v4 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL sub_189010258(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_18A4A86C8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((sub_189010418(a1 + 16, a2 + 16) & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x18CFE2F70](a1 + 136, a2 + 136) & 1) == 0)
  {
    return 0;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 176), *(a2 + 176)), vceqq_f64(*(a1 + 192), *(a2 + 192))))) & 1) == 0)
  {
    return 0;
  }

  sub_188A34624(0, &qword_1ED490230);
  if ((sub_18A4A7C88() & 1) == 0 || *(a1 + 216) != *(a2 + 216) || *(a1 + 224) != *(a2 + 224) || *(a1 + 232) != *(a2 + 232) || *(a1 + 236) != *(a2 + 236) || *(a1 + 237) != *(a2 + 237) || (sub_189015078(*(a1 + 240), *(a2 + 240)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 248);
  v8 = *(a2 + 248);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = sub_1890151E4(v7, v8);

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (sub_1890151E4(*(a1 + 256), *(a2 + 256)))
  {
    if (*(a1 + 280))
    {
      if (*(a2 + 280))
      {
        return *(a1 + 288) == *(a2 + 288);
      }
    }

    else if (*(a2 + 280) & 1) == 0 && (sub_18A4A6D38())
    {
      return *(a1 + 288) == *(a2 + 288);
    }
  }

  return 0;
}

uint64_t sub_189010418(uint64_t a1, uint64_t a2)
{
  sub_188B6D84C(a1, &v39);
  sub_188B6D84C(a2, &v56);
  if (v55 <= 1u)
  {
    if (v55)
    {
      sub_188B6D84C(&v39, &v30);
      v27 = v34;
      v28 = v35;
      v29 = v36;
      v23 = v30;
      v24 = v31;
      v25 = v32;
      v26 = v33;
      if (v65 == 1)
      {
        v13 = v37;
        v14 = v38;
        v21[4] = v60;
        v21[5] = v61;
        v22 = v62;
        v21[0] = v56;
        v21[1] = v57;
        v21[2] = v58;
        v21[3] = v59;
        v15 = v63;
        v16 = v64;
        v66[0] = v30;
        v66[1] = v31;
        v67 = v36;
        v66[4] = v34;
        v66[5] = v35;
        v66[2] = v32;
        v66[3] = v33;
        v68[0] = v56;
        v68[1] = v57;
        v69 = v62.i8[0];
        v68[4] = v60;
        v68[5] = v61;
        v68[2] = v58;
        v68[3] = v59;
        if (sub_18900FC30(v66, v68))
        {
          sub_188B6E97C(&v23);
          sub_188B6E97C(v21);
          v17 = *(&v29 + 1) == *&v22.i64[1];
          if (v13 != v15)
          {
            v17 = 0;
          }

          v8 = v17 & (v14 ^ v16 ^ 1);
          goto LABEL_42;
        }

        sub_188B6E97C(v21);
        sub_188B6E97C(&v23);
        goto LABEL_41;
      }

      sub_188B6E97C(&v23);
    }

    else
    {
      sub_188B6D84C(&v39, &v30);
      if (!v65)
      {
        v7 = (*&v30 == *&v56) & ~(BYTE8(v30) ^ BYTE8(v56)) & ~(BYTE9(v30) ^ BYTE9(v56));
        if (*&v31 != *v57.i64)
        {
          v7 = 0;
        }

        v8 = v7 & (BYTE8(v31) ^ v57.i8[8] ^ 1);
        goto LABEL_42;
      }
    }

    goto LABEL_36;
  }

  if (v55 == 2)
  {
    sub_188B6D84C(&v39, &v30);
    if (v65 == 2)
    {
      sub_188A5EBAC(&v30, &v23);
      sub_188A5EBAC(&v56, v21);
      v9 = *(&v24 + 1);
      v10 = __swift_project_boxed_opaque_existential_0(&v23, *(&v24 + 1));
      v8 = sub_18900C7CC(v10, v21, v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      __swift_destroy_boxed_opaque_existential_0Tm(&v23);
      goto LABEL_42;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v30);
  }

  else
  {
    if (v55 == 3)
    {
      sub_188B6D84C(&v39, &v30);
      if (v65 == 3)
      {
        v3 = v31;
        v4 = BYTE1(v31);
        v5 = v57.u8[0];
        v6 = v57.i8[1];
        if (v30 == v56)
        {

          if (v3 != v5)
          {
LABEL_41:
            v8 = 0;
            goto LABEL_42;
          }
        }

        else
        {
          v18 = sub_18A4A86C8();

          v8 = 0;
          if (v18 & 1) == 0 || ((v3 ^ v5))
          {
            goto LABEL_42;
          }
        }

        v8 = v4 ^ v6 ^ 1;
LABEL_42:
        sub_188B6A1D4(&v39);
        return v8 & 1;
      }

      goto LABEL_36;
    }

    v11 = v53 | (v54 << 32);
    if (!v11 && !(v52 | v39 | v51 | v50 | v49 | v48 | v47 | v46 | v45 | v44 | v43 | v42 | v41 | v40))
    {
      if (v65 != 4)
      {
        goto LABEL_36;
      }

      if (LODWORD(v63) | (v64 << 32))
      {
        goto LABEL_36;
      }

      v12 = vorrq_s8(vorrq_s8(vorrq_s8(v59, v61), vorrq_s8(v60, v62)), vorrq_s8(v57, v58));
      if (*&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | *(&v56 + 1) | v56)
      {
        goto LABEL_36;
      }

LABEL_48:
      sub_188B6A1D4(&v39);
      v8 = 1;
      return v8 & 1;
    }

    if (v11 || v39 != 1 || v51 | v52 | v50 | v49 | v48 | v47 | v46 | v45 | v44 | v43 | v42 | v41 | v40)
    {
      if (v65 != 4 || LODWORD(v63) | (v64 << 32) || v56 != 2)
      {
        goto LABEL_36;
      }
    }

    else if (v65 != 4 || LODWORD(v63) | (v64 << 32) || v56 != 1)
    {
      goto LABEL_36;
    }

    v20 = vorrq_s8(vorrq_s8(vorrq_s8(v59, v61), vorrq_s8(v60, v62)), vorrq_s8(v57, v58));
    if (!(*&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) | *(&v56 + 1)))
    {
      goto LABEL_48;
    }
  }

LABEL_36:
  sub_188A3F5FC(&v39, &unk_1EA939FE8);
  v8 = 0;
  return v8 & 1;
}

uint64_t sub_189010928(void *a1)
{
  v1 = [a1 subviews];
  sub_188A34624(0, &qword_1ED48F680);
  v2 = sub_18A4A7548();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_18A4A7F68();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = MEMORY[0x1E69E7CC0];
  result = sub_18A4A8208();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        sub_188E49300(v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      ++v5;
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
    }

    while (v3 != v5);

    return v7;
  }

  return result;
}

void *sub_189010A84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v53 = MEMORY[0x1E69E7CC0];
  sub_18A4A8208();
  v9 = 0;
  v49 = a1 + 32;
  v47 = a3;
  while (1)
  {
    v15 = (v49 + 296 * v9);
    v16 = sub_18900CCB0(a2, a3);
    v18 = v15[22];
    v17 = v15[23];
    v19 = v15[24];
    v20 = v15[25];
    v21 = -v18;
    v22 = -v17;
    v23 = -v19;
    v24 = -v20;
    sub_188B6D84C((v15 + 2), v51);
    if (!v52)
    {
      break;
    }

    sub_188B6A1D4(v51);
LABEL_4:
    ++v9;
    [a4 bounds];
    UIRectInset(v10, v11, v12, v13, v21, v24, v23, v22);
    [v16 setBounds_];
    [a4 bounds];
    MidX = CGRectGetMidX(v54);
    [a4 bounds];
    [v16 setCenter_];
    sub_18A4A81D8();
    sub_18A4A8218();
    sub_18A4A8228();
    sub_18A4A81E8();
    if (v9 == v4)
    {
      return v53;
    }
  }

  type metadata accessor for UISDFBackdropView();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    goto LABEL_4;
  }

  v26 = v25;
  v51[0] = v5;
  v48 = v16;
  sub_188B6479C(0, 4, 0);
  v27 = v51[0];
  v29 = *(v51[0] + 16);
  v28 = *(v51[0] + 24);
  v30 = v28 >> 1;
  v31 = v29 + 1;
  if (v28 >> 1 <= v29)
  {
    sub_188B6479C((v28 > 1), v29 + 1, 1);
    v27 = v51[0];
    v28 = *(v51[0] + 24);
    v30 = v28 >> 1;
  }

  *(v27 + 16) = v31;
  *(v27 + 8 * v29 + 32) = fabs(v18);
  v32 = v29 + 2;
  if (v30 < (v29 + 2))
  {
    sub_188B6479C((v28 > 1), v29 + 2, 1);
    v27 = v51[0];
  }

  *(v27 + 16) = v32;
  *(v27 + 8 * v31 + 32) = fabs(v17);
  v33 = *(v27 + 24);
  v34 = v29 + 3;
  if ((v29 + 3) > (v33 >> 1))
  {
    sub_188B6479C((v33 > 1), v29 + 3, 1);
  }

  result = v51[0];
  *(v51[0] + 16) = v34;
  v36 = (result + 4);
  *&result[v32 + 4] = fabs(v20);
  v37 = fabs(v19);
  v38 = result[3];
  v39 = v29 + 4;
  if ((v29 + 4) > (v38 >> 1))
  {
    sub_188B6479C((v38 > 1), v29 + 4, 1);
    v46 = v51[0];
    *(v51[0] + 16) = v39;
    v36 = (v46 + 32);
    *(v46 + 32 + 8 * v34) = v37;
    if (v34 >= v39)
    {
LABEL_22:
      __break(1u);
      return v53;
    }

    goto LABEL_16;
  }

  result[2] = v39;
  v36[v34] = v37;
  if (v39 >= 1)
  {
    if (v34 >= v39)
    {
      goto LABEL_22;
    }

LABEL_16:
    v41 = *v36;
    v40 = v36 + 1;
    v42 = v41;
    do
    {
      v43 = *v40++;
      v44 = v43;
      if (v42 < v43)
      {
        v42 = v44;
      }

      --v34;
    }

    while (v34);

    v45 = [v26 layer];
    [v45 setMarginWidth_];

    v22 = 0.0;
    v21 = 0.0;
    v24 = 0.0;
    v23 = 0.0;
    v5 = MEMORY[0x1E69E7CC0];
    a3 = v47;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

char *sub_189010E24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a1)
  {
    return [objc_allocWithZone(UIView) init];
  }

  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3;
  }

  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(v8 + 2);

  if (v9)
  {
    v10 = 0;
    v11 = (v8 + 48);
    while (v10 < *(v8 + 2))
    {
      v4 = *v11;
      if (sub_18A4A6D38())
      {

        v8 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];

        return v8;
      }

      ++v10;
      v11 += 3;
      if (v9 == v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_13:

  v12 = [objc_allocWithZone(UIView) init];
  swift_beginAccess();
  v4 = *(a1 + 16);
  v8 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_21:
    v4 = sub_188E4C774(0, *(v4 + 2) + 1, 1, v4);
    *(a1 + 16) = v4;
  }

  v15 = *(v4 + 2);
  v14 = *(v4 + 3);
  if (v15 >= v14 >> 1)
  {
    v4 = sub_188E4C774((v14 > 1), v15 + 1, 1, v4);
  }

  *(v4 + 2) = v15 + 1;
  v16 = &v4[24 * v15];
  *(v16 + 4) = v6;
  *(v16 + 5) = v7;
  *(v16 + 6) = v8;
  *(a1 + 16) = v4;
  swift_endAccess();

  return v8;
}

uint64_t sub_189011034(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18901107C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1890110C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 112))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 96);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18901110C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy118_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1890111B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 118))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 117);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1890111F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 110) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 118) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 118) = 0;
    }

    if (a2)
    {
      *(result + 117) = -a2;
    }
  }

  return result;
}

uint64_t sub_18901124C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = a2 - 4;
    *(result + 109) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 117) = a2;
  return result;
}

uint64_t sub_1890112B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_189011300(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_189011390()
{
  result = qword_1EA93A018;
  if (!qword_1EA93A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93A018);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_189011410(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 97))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 96);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_189011458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_1890114D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_189011524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_189011590()
{
  result = qword_1EA93A020;
  if (!qword_1EA93A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93A020);
  }

  return result;
}

unint64_t sub_1890115E8()
{
  result = qword_1EA93A028;
  if (!qword_1EA93A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93A028);
  }

  return result;
}

unint64_t sub_189011640()
{
  result = qword_1EA93A030;
  if (!qword_1EA93A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93A030);
  }

  return result;
}

unint64_t sub_189011698()
{
  result = qword_1EA93A038;
  if (!qword_1EA93A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93A038);
  }

  return result;
}

uint64_t sub_1890116EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_189011734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1890117AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1890117F4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_18901194C(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    if ([(UIGestureRecognizer *)v2 _componentController])
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
      sub_188A55538(&v9, &v8);
      sub_18A4A7038();
      swift_dynamicCast();
      v6 = v5;

      sub_189011DE8(a1, v6, v7);

      sub_18A4A6F08();
      sub_188D0FECC(&qword_1EA93A040, MEMORY[0x1E69A2878]);
      sub_18A4A6FF8();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_189011D64()
{
  v0 = sub_18A4A4378();
  __swift_allocate_value_buffer(v0, qword_1EA995110);
  __swift_project_value_buffer(v0, qword_1EA995110);
  return sub_18A4A4368();
}

uint64_t sub_189011DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a2;
  v65 = a3;
  v63 = sub_18A4A6ED8();
  v5 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v45 - v8;
  v9 = sub_18A4A7058();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v69 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A048);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v66 = sub_18A4A6F08();
  v14 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v49 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v45 - v17;
  v51 = v3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18A4A7F18();
    sub_188E4059C();
    sub_188D0FECC(&qword_1EA941110, sub_188E4059C);
    result = sub_18A4A77D8();
    a1 = v71[5];
    v19 = v71[6];
    v20 = v71[7];
    v21 = v71[8];
    v22 = v71[9];
  }

  else
  {
    v23 = -1 << *(a1 + 32);
    v19 = a1 + 56;
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(a1 + 56);

    v21 = 0;
  }

  v50 = v20;
  v54 = *MEMORY[0x1E69A2858];
  v60 = (v5 + 104);
  v55 = *MEMORY[0x1E69A2848];
  v56 = *MEMORY[0x1E69A2850];
  v52 = *MEMORY[0x1E69A2840];
  v59 = (v5 + 32);
  v58 = (v14 + 56);
  v57 = (v14 + 48);
  v47 = v14;
  v48 = (v14 + 32);
  v53 = MEMORY[0x1E69E7CC0];
  v67 = a1;
LABEL_8:
  v26 = v21;
  if (a1 < 0)
  {
    do
    {
      v31 = sub_18A4A7FB8();
      if (!v31)
      {
        goto LABEL_31;
      }

      v70[0] = v31;
      sub_188E4059C();
      swift_dynamicCast();
      v30 = v71[0];
      v21 = v26;
      v29 = v22;
      if (!v71[0])
      {
        goto LABEL_31;
      }

LABEL_17:
      v68 = v29;
      sub_18A4A6FE8();
      sub_18A4A7048();
      v32 = [v30 phase];
      if (v32 > 7 || (v33 = v56, ((1 << v32) & 0x66) == 0) && (v33 = v55, ((1 << v32) & 0x88) == 0) && (v33 = v54, v32 != 4))
      {
        v33 = v52;
        if (v32)
        {
          v33 = v54;
        }
      }

      v34 = v62;
      v35 = v63;
      (*v60)(v62, v33, v63);
      (*v59)(v61, v34, v35);
      [v30 timestamp];
      sub_188A53994(v71, v70);
      __swift_project_boxed_opaque_existential_0(v70, v70[3]);
      sub_18A4A6EE8();
      sub_18A4A8A38();
      sub_18A4A7068();
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      [v30 locationInView_];
      sub_18A4A6EF8();
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      v36 = v66;
      (*v58)(v13, 0, 1, v66);

      if ((*v57)(v13, 1, v36) != 1)
      {
        v37 = *v48;
        v38 = v46;
        v39 = v66;
        (*v48)(v46, v13, v66);
        v37(v49, v38, v39);
        v40 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_188E4C894(0, v40[2] + 1, 1, v40);
        }

        v41 = v47;
        v43 = v40[2];
        v42 = v40[3];
        if (v43 >= v42 >> 1)
        {
          v40 = sub_188E4C894(v42 > 1, v43 + 1, 1, v40);
        }

        v40[2] = v43 + 1;
        v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v53 = v40;
        result = (v37)(v40 + v44 + *(v41 + 72) * v43, v49, v66);
        a1 = v67;
        v22 = v68;
        goto LABEL_8;
      }

      result = sub_188A3F5FC(v13, &qword_1EA93A048);
      v26 = v21;
      a1 = v67;
      v22 = v68;
    }

    while (v67 < 0);
  }

  v27 = v26;
  v28 = v22;
  v21 = v26;
  if (v22)
  {
LABEL_13:
    v29 = (v28 - 1) & v28;
    v30 = *(*(a1 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v28)))));
    if (v30)
    {
      goto LABEL_17;
    }

LABEL_31:
    sub_188E036A4();
    return v53;
  }

  while (1)
  {
    v21 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v21 >= ((v20 + 64) >> 6))
    {
      goto LABEL_31;
    }

    v28 = *(v19 + 8 * v21);
    ++v27;
    if (v28)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_189012598()
{
  result = [(UIGestureRecognizer *)v0 _componentController];
  if (result)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55598(v4, v3);
    sub_18A4A7038();
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    sub_18A4A6F08();
    sub_188D0FECC(&qword_1EA93A040, MEMORY[0x1E69A2878]);
    v2 = sub_18A4A7008();

    return (v2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void __swiftcall _UIIntelligenceSystemNoiseView.init(frame:preferringAudioReactivity:)(_UIIntelligenceSystemNoiseView *__return_ptr retstr, __C::CGRect frame, Swift::Bool preferringAudioReactivity)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v8 initWithFrame:preferringAudioReactivity preferringAudioReactivity:{x, y, width, height}];
}

id _UIIntelligenceSystemNoiseView.init(frame:preferringAudioReactivity:)(char a1, double a2, double a3, double a4, double a5)
{
  v5[OBJC_IVAR____UIIntelligenceSystemNoiseView_preferAudioReactivity] = a1;
  v10 = [objc_allocWithZone(_UIIntelligenceNoiseSceneSpecification) init];
  v11 = sub_18A4A7258();
  v12 = [objc_opt_self() identityForEmbeddedApplicationIdentifier_];

  v19.receiver = v5;
  v19.super_class = _UIIntelligenceSystemNoiseView;
  v13 = objc_msgSendSuper2(&v19, sel_initWithFrame_serviceIdentity_sceneSpecification_, v12, v10, a2, a3, a4, a5);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18[4] = sub_188DEDDC4;
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_188DBEC74;
  v18[3] = &block_descriptor_72;
  v15 = _Block_copy(v18);
  v16 = v13;

  [v16 set:v15 connectionActionProvider:?];
  _Block_release(v15);

  return v16;
}

id _UIIntelligenceSystemNoiseView.init(frame:serviceIdentity:sceneSpecification:)(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:a1 serviceIdentity:a2 sceneSpecification:{a3, a4, a5, a6}];

  return v8;
}

unint64_t type metadata accessor for _UIIntelligenceSystemNoiseView()
{
  result = qword_1EA93A060;
  if (!qword_1EA93A060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93A060);
  }

  return result;
}

uint64_t sub_189012A2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5UIKit31UIPromptSuggestionContainerView_suggestionViews;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

char *sub_189012ADC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC5UIKit31UIPromptSuggestionContainerView_suggestionViews] = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtC5UIKit31UIPromptSuggestionContainerView_contentView;
  *&v4[v9] = [objc_allocWithZone(UIView) initWithFrame_];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for UIPromptSuggestionContainerView();
  v10 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor_];

  [v12 addSubview_];
  return v12;
}

id sub_189012CDC(void *a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC5UIKit31UIPromptSuggestionContainerView_suggestionViews;
  swift_beginAccess();
  v7 = a1;
  MEMORY[0x18CFE2450]();
  if (*((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18A4A7588();
  }

  sub_18A4A75F8();
  swift_endAccess();
  [*(v3 + OBJC_IVAR____TtC5UIKit31UIPromptSuggestionContainerView_contentView) addSubview_];
  result = [v3 setNeedsLayout];
  if (a2)
  {
    v9 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_isAnimating;
    v7[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_isAnimating] = 1;
    [v7 setAlpha_];
    v10 = [v3 layoutIfNeeded];
    v7[v9] = 0;
    MEMORY[0x1EEE9AC00](v10);
    v14[2] = v7;
    v14[3] = v3;
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_189012F4C;
    *(v12 + 24) = v14;
    aBlock[4] = sub_188A4B574;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_73;
    v13 = _Block_copy(aBlock);

    [v11 animateWithSpringDuration:0 bounce:v13 initialSpringVelocity:0 delay:0.5 options:0.0 animations:0.0 completion:0.0];
    _Block_release(v13);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_189012F4C()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 layoutSubviews];
}

void sub_189012F98(void *a1, char a2)
{
  v5 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v5;

  v7 = a1;
  [v2 setNeedsLayout];
  if ((a2 & 1) == 0)
  {
    [v7 removeFromSuperview];
    Strong = swift_unknownObjectUnownedLoadStrong();
    v15 = OBJC_IVAR____TtC5UIKit31UIPromptSuggestionContainerView_suggestionViews;
    swift_beginAccess();
    v16 = v7;
    v9 = sub_189014280(&Strong[v15]);

    v17 = *&Strong[v15];
    if (!(v17 >> 62))
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18 < v9)
      {
LABEL_9:
        __break(1u);
        return;
      }

LABEL_6:
      sub_188ABC354(v9, v18, type metadata accessor for UIPromptSuggestionView);
      swift_endAccess();

      return;
    }

LABEL_8:
    v18 = sub_18A4A7F68();
    if (v18 < v9)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  MEMORY[0x1EEE9AC00](v8);
  v19[2] = v7;
  v19[3] = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1890139BC;
  *(v9 + 24) = v6;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_189014510;
  *(v11 + 24) = v19;
  v24 = sub_188E3FE50;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_188A4A968;
  v23 = &block_descriptor_16_3;
  Strong = _Block_copy(&aBlock);

  v24 = sub_189014574;
  v25 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_188ABD010;
  v23 = &block_descriptor_19_4;
  v13 = _Block_copy(&aBlock);

  [v10 animateWithSpringDuration:0 bounce:Strong initialSpringVelocity:v13 delay:0.5 options:0.0 animations:0.0 completion:0.0];

  _Block_release(v13);
  _Block_release(Strong);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_8;
  }
}

void sub_189013328(void *a1)
{
  [a1 removeFromSuperview];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = OBJC_IVAR____TtC5UIKit31UIPromptSuggestionContainerView_suggestionViews;
  swift_beginAccess();
  v4 = a1;
  v5 = sub_189014280(&Strong[v3]);

  v6 = *&Strong[v3];
  if (v6 >> 62)
  {
    v7 = sub_18A4A7F68();
    if (v7 >= v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v5)
    {
LABEL_3:
      sub_188ABC354(v5, v7, type metadata accessor for UIPromptSuggestionView);
      swift_endAccess();

      return;
    }
  }

  __break(1u);
}

id sub_189013418()
{
  v1 = v0;
  v39.receiver = v0;
  v39.super_class = type metadata accessor for UIPromptSuggestionContainerView();
  objc_msgSendSuper2(&v39, sel_layoutSubviews);
  [v0 layoutMargins];
  v3 = v2 + 8.0;
  [v0 bounds];
  v4 = CGRectGetWidth(v40) - v3;
  [v0 bounds];
  Height = CGRectGetHeight(v41);
  v5 = MEMORY[0x1E695F050];
  v6 = OBJC_IVAR____TtC5UIKit31UIPromptSuggestionContainerView_suggestionViews;
  result = swift_beginAccess();
  v8 = *&v1[v6];
  if (v8 >> 62)
  {
    result = sub_18A4A7F68();
    v9 = result;
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v4 * 0.9;
  x = *v5;
  y = v5[1];
  width = v5[2];
  v14 = v5[3];
  if (!v9)
  {
LABEL_14:
    v31 = *&v1[OBJC_IVAR____TtC5UIKit31UIPromptSuggestionContainerView_contentView];
    [v1 bounds];
    v32 = CGRectGetHeight(v44);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = v14;
    v33 = v32 - CGRectGetHeight(v45) + -4.0;
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = v14;
    return [v31 setFrame_];
  }

  if (v9 >= 1)
  {
    v34 = v1;
    v35 = v3;

    v15 = 0;
    v16 = 0.0;
    v36 = v4 * 0.9;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v17 = sub_188E4ABDC(v15, v8);
      }

      else
      {
        v17 = *(v8 + 8 * v15 + 32);
      }

      v18 = v17;
      [v17 sizeThatFits_];
      v20 = v19;
      v22 = v21;
      v23 = v18;
      [v23 setFrame_];
      if (*(v23 + OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_isAnimating))
      {
      }

      else
      {
        v16 = v16 + v22 + 4.0;
        [v23 frame];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v37 = v30;

        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = v14;
        v47.origin.x = v25;
        v47.origin.y = v27;
        v47.size.width = v29;
        v10 = v36;
        v47.size.height = v37;
        v43 = CGRectUnion(v42, v47);
        x = v43.origin.x;
        y = v43.origin.y;
        width = v43.size.width;
        v14 = v43.size.height;
      }

      ++v15;
    }

    while (v9 != v15);

    v3 = v35;
    v1 = v34;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_189013738(uint64_t a1, double a2, double a3)
{
  v21.receiver = v3;
  v21.super_class = type metadata accessor for UIPromptSuggestionContainerView();
  v7 = objc_msgSendSuper2(&v21, sel_hitTest_withEvent_, a1, a2, a3);
  if (v7)
  {
    sub_188A34624(0, &qword_1ED48F680);
    v8 = v7;
    v9 = v3;
    v10 = sub_18A4A7C88();

    if (v10 & 1) != 0 || (v11 = *&v9[OBJC_IVAR____TtC5UIKit31UIPromptSuggestionContainerView_contentView], v12 = v8, v13 = v11, v14 = sub_18A4A7C88(), v13, v12, (v14) && ([v13 convertPoint:v9 fromCoordinateSpace:{a2, a3}], (v15 = objc_msgSend(v13, sel_hitTest_withEvent_, a1)) != 0) && (v16 = v15, v17 = v13, v18 = v16, v19 = sub_18A4A7C88(), v17, v18, v18, (v19))
    {

      return 0;
    }
  }

  return v7;
}

id UIPromptSuggestionContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIPromptSuggestionContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1890139C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = *v5;
  v8 = *(*v5 + 2);
  if (v8 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 3) >> 1)
  {
    if (v8 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v8;
    }

    v7 = sub_188B52BB0(isUniquelyReferenced_nonNull_native, v18, 1, v7);
    *v5 = v7;
  }

  result = sub_189013AB0(v9, a2, 1, a3, a4, a5);
  *v5 = v7;
  return result;
}

char *sub_189013AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = *v6;
  v14 = (v13 + 32 + 24 * a1);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(a3, v7);
  v17 = a3 - v7;
  if (v16)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = *(v13 + 16);
  v16 = __OFSUB__(v18, a2);
  v19 = v18 - a2;
  if (v16)
  {
    goto LABEL_21;
  }

  result = &v14[3 * a3];
  v20 = (v13 + 32 + 24 * a2);
  if (result != v20 || result >= &v20[24 * v19])
  {
    result = memmove(result, v20, 24 * v19);
  }

  v22 = *(v13 + 16);
  v16 = __OFADD__(v22, v17);
  v23 = v22 + v17;
  if (v16)
  {
    goto LABEL_22;
  }

  *(v13 + 16) = v23;
LABEL_13:
  if (a3 >= 1)
  {
    *v14 = a4;
    v14[1] = a5;
    v14[2] = a6;
    if (a3 == 1)
    {
      return result;
    }

LABEL_23:

    __break(1u);
    return result;
  }
}

unint64_t sub_189013BF4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_189013CC8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_18A4A7F68();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = sub_188E4ABDC(v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_188A34624(0, &qword_1ED490230);
    v7 = sub_18A4A7C88();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_189013DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_188A34624(0, &qword_1EA93A080);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_18A4A7F68();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_18A4A7F68();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_189013F04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for _UITimeline.Action();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_18A4A7F68();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_18A4A7F68();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t sub_18901403C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 16 * a3;
  v15 = (v9 + 32 + 16 * a2);
  v16 = 16 * v14;
  v17 = &v15[16 * v14];
  if (result != v15 || result >= v17)
  {
    result = memmove(result, v15, v16);
  }

  v19 = *(v9 + 16);
  v11 = __OFADD__(v19, v12);
  v20 = v19 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v20;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

uint64_t sub_18901417C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(a3 + 16);
  v13 = __OFSUB__(v12, v10);
  v14 = v12 - v10;
  if (v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v8 + v14;
  if (__OFADD__(v8, v14))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v15 > *(v7 + 24) >> 1)
  {
    v7 = a4();
    *v5 = v7;
  }

  result = a5(v9, a2, v12, a3);
  *v5 = v7;
  return result;
}

unint64_t sub_189014280(unint64_t *a1)
{
  v3 = *a1;
  result = sub_189013CC8(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_18A4A7F68();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &qword_1ED490230;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_18A4A7F68())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = sub_188E4ABDC(v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_188A34624(0, v8);
    v12 = sub_18A4A7C88();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = sub_188E4ABDC(v6, v3);
          v14 = sub_188E4ABDC(v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_188B8AD14(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_188B8AD14(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_18A4A7F68();
}

id sub_189014510()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 setAlpha_];
  *(v1 + OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_isAnimating) = 1;

  return [v2 layoutSubviews];
}

uint64_t sub_189014574(uint64_t result)
{
  if (result)
  {
    return (*(v1 + 16))();
  }

  return result;
}

char *sub_189014680(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(0);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_18A4A7F68();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_18A4A7F68();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1890147B8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_18A4A7F68();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v14 = sub_18A4A7F68();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = (v14 + v13);
  if (!v15)
  {
    sub_188AB3790(result);
    return sub_189014680(v8, v7, 1, v6, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1890148A0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_1890149A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_188A34624(0, a5);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_18A4A7F68();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_18A4A7F68();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_189014ADC(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v4;
    v10 = *v4 >> 62;
    if (!v10)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_18A4A7F68();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v14 = sub_18A4A7F68();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = (v14 + v13);
  if (!v15)
  {
    sub_188AB3790(result);
    return sub_1890149A4(v8, v7, 1, v6, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_189014BD4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_189014CC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); *(v3 - 6) == *(i - 6); i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      if (v5)
      {
        if (!v7 || (*(v3 - 2) != *(i - 2) || v5 != v7) && (sub_18A4A86C8() & 1) == 0)
        {
          return;
        }
      }

      else if (v7)
      {
        return;
      }

      if (v6)
      {
        if (!v8)
        {
          return;
        }

        sub_188A34624(0, &unk_1EA93A1A0);

        v9 = v8;
        v10 = v6;

        v11 = v10;
        v12 = sub_18A4A7C88();

        if ((v12 & 1) == 0)
        {
          return;
        }
      }

      else if (v8)
      {
        return;
      }

      v3 += 4;
      if (!--v2)
      {
        return;
      }
    }
  }
}

void sub_189014E28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 1);
      v7 = *(v4 - 1);
      v8 = *v4;
      if (*v3 > 1u)
      {
        if (*v3 == 2)
        {
          if (v8 != 2)
          {
            return;
          }
        }

        else if (v8 != 3)
        {
          return;
        }

        sub_188A34624(0, &qword_1ED490230);
        v13 = v6;
        v14 = v7;
        v15 = sub_18A4A7C88();

        if ((v15 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (*v3)
        {
          if (v8 != 1)
          {
            return;
          }
        }

        else if (*v4)
        {
          return;
        }

        v9 = sub_18A4A7288();
        v11 = v10;
        if (v9 == sub_18A4A7288() && v11 == v12)
        {
        }

        else
        {
          v5 = sub_18A4A86C8();

          if ((v5 & 1) == 0)
          {
            return;
          }
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_189014FF4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_189015078(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 40)
    {
      v6 = *(a1 + i + 48);
      v7 = *(a1 + i + 56);
      v8 = *(a1 + i + 64);
      v9 = *(a2 + i + 48);
      v10 = *(a2 + i + 56);
      v11 = *(a2 + i + 64);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_18A4A86C8() & 1) == 0)
      {
        break;
      }

      v13 = v11;

      v14 = v8;

      sub_188F8D138(v6, v9);
      if ((v15 & 1) == 0)
      {

        return 0;
      }

      if (v7 != v10)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1890151E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_188B6CFA8(v3, v8);
        sub_188B6CFA8(v4, v7);
        v5 = sub_18900CA74(v8, v7);
        sub_188B6D288(v7);
        sub_188B6D288(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 296;
        v4 += 296;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1890152AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_189015308(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v71 = v2;
  v72 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    v9 = v5[5];
    v56 = v5[6];
    v57 = v8;
    v10 = v5[7];
    v11 = v5[9];
    v58 = v5[8];
    v59 = v11;
    v12 = v5[3];
    v13 = v5[1];
    v52 = v5[2];
    v53 = v12;
    v14 = v5[3];
    v15 = v5[5];
    v54 = v5[4];
    v55 = v15;
    v16 = v5[1];
    v51[0] = *v5;
    v51[1] = v16;
    v47 = v56;
    v48 = v10;
    v17 = v5[9];
    v49 = v58;
    v50 = v17;
    v43 = v52;
    v44 = v14;
    v45 = v54;
    v46 = v9;
    v41 = v51[0];
    v42 = v13;
    v18 = v6[7];
    v19 = v6[5];
    v65 = v6[6];
    v66 = v18;
    v20 = v6[7];
    v21 = v6[9];
    v67 = v6[8];
    v68 = v21;
    v22 = v6[3];
    v23 = v6[1];
    v61 = v6[2];
    v62 = v22;
    v24 = v6[3];
    v25 = v6[5];
    v63 = v6[4];
    v64 = v25;
    v26 = v6[1];
    v60[0] = *v6;
    v60[1] = v26;
    v37 = v65;
    v38 = v20;
    v27 = v6[9];
    v39 = v67;
    v40 = v27;
    v33 = v61;
    v34 = v24;
    v35 = v63;
    v36 = v19;
    v31 = v60[0];
    v32 = v23;
    sub_188C464C4(v51, v30);
    sub_188C464C4(v60, v30);
    v28 = sub_188C46978(&v41, &v31);
    v69[6] = v37;
    v69[7] = v38;
    v69[8] = v39;
    v69[9] = v40;
    v69[2] = v33;
    v69[3] = v34;
    v69[4] = v35;
    v69[5] = v36;
    v69[0] = v31;
    v69[1] = v32;
    sub_188C46888(v69);
    v70[6] = v47;
    v70[7] = v48;
    v70[8] = v49;
    v70[9] = v50;
    v70[2] = v43;
    v70[3] = v44;
    v70[4] = v45;
    v70[5] = v46;
    v70[0] = v41;
    v70[1] = v42;
    sub_188C46888(v70);
    if (!v28)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 10;
    v5 += 10;
  }

  return 1;
}

uint64_t sub_1890154CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v3, *v4), vceqq_f64(v3[1], v4[1]))));
    if ((v5 & 1) == 0)
    {
      break;
    }

    v3 += 2;
    v4 += 2;
    --v2;
  }

  while (v2);
  return v5 & 1;
}

BOOL sub_189015550(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    v4 = a2 + 32;
    while (1)
    {
      sub_188FA952C(v3, v12);
      sub_188FA952C(v4, v11);
      if (v12[0] != v11[0])
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      v6 = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        if (!v6)
        {
          goto LABEL_16;
        }

        v7 = v6;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (Strong != v7)
        {
          break;
        }
      }

      else if (v6)
      {
LABEL_16:
        swift_unknownObjectRelease();
        break;
      }

      if (v12[2] != v11[2])
      {
        break;
      }

      v8 = v12[3];
      v9 = v11[3];
      sub_188FFD074(v11);
      sub_188FFD074(v12);
      result = v8 == v9;
      if (v8 == v9)
      {
        v3 += 32;
        v4 += 32;
        if (--v2)
        {
          continue;
        }
      }

      return result;
    }

    sub_188FFD074(v11);
    sub_188FFD074(v12);
  }

  return 0;
}

uint64_t sub_189015698(unint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    v34 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = a3(0);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = a4(v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = a4(v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_18A4A7C88();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v5 += 32;
    v21 = (a2 + 32);
    v22 = *(v34 + 16);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v7 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v5;
      v5 += 8;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v28 = v27;
      v20 = sub_18A4A7C88();

      v30 = v24-- != 0;
      if (v20)
      {
        --v23;
        --v22;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a3;
    v32 = sub_18A4A7F68();
    a3 = v31;
    v7 = v32;
  }

  v33 = a3;
  result = sub_18A4A7F68();
  a3 = v33;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

id _UISliderTickConfiguration.init(ticks:behavior:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_188A34624(0, &unk_1EA92FD90);
  v4 = sub_18A4A7518();

  v5 = [v3 initWithTicks:v4 behavior:a2];

  return v5;
}

{
  v2[OBJC_IVAR____UISliderTickConfiguration__ticksAreEvenlySpaced] = 0;
  *&v2[OBJC_IVAR____UISliderTickConfiguration_tickStyle] = 0;
  *&v2[OBJC_IVAR____UISliderTickConfiguration_neutralPosition] = 0;
  *&v2[OBJC_IVAR____UISliderTickConfiguration_snappingDistance] = 1028443341;
  *&v2[OBJC_IVAR____UISliderTickConfiguration__behavior] = a2;

  v6 = sub_188DF7288(v3, sub_188AF0A60, sub_1892139BC);
  sub_189016440(&v6);

  *&v2[OBJC_IVAR____UISliderTickConfiguration__ticks] = v6;
  v5.receiver = v2;
  v5.super_class = _UISliderTickConfiguration;
  return objc_msgSendSuper2(&v5, sel_init);
}

id _UISliderTickConfiguration.init(numberOfTicks:behavior:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithNumberOfTicks:a1 behavior:a2];
}

_BYTE *_UISliderTickConfiguration.init(numberOfTicks:behavior:)(uint64_t a1, uint64_t a2)
{
  sub_189017030(a1);
  sub_188A34624(0, &unk_1EA92FD90);
  v4 = sub_18A4A7518();

  v5 = [v2 initWithTicks:v4 behavior:a2];

  v5[OBJC_IVAR____UISliderTickConfiguration__ticksAreEvenlySpaced] = 1;
  return v5;
}

uint64_t _UISliderTickConfiguration.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjCClassFromObject = swift_getObjCClassFromObject();
  v4 = *&v1[OBJC_IVAR____UISliderTickConfiguration__behavior];
  v5 = objc_allocWithZone(ObjCClassFromObject);
  sub_188A34624(0, &unk_1EA92FD90);

  v6 = sub_18A4A7518();

  v7 = [v5 initWithTicks:v6 behavior:v4];

  [v7 setTickStyle_];
  [v1 neutralPosition];
  [v7 setNeutralPosition_];
  [v1 snappingDistance];
  result = type metadata accessor for _UISliderTickConfiguration([v7 setSnappingDistance_]);
  a1[3] = result;
  *a1 = v7;
  return result;
}

BOOL _UISliderTickConfiguration.isEqual(_:)(uint64_t a1)
{
  sub_188C85D28(a1, v28);
  v3 = v29;
  if (v29)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v28, v29);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_18A4A86A8();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }

  else
  {
    v9 = 0;
  }

  v27.receiver = v1;
  v27.super_class = _UISliderTickConfiguration;
  v10 = objc_msgSendSuper2(&v27, sel_isEqual_, v9);
  swift_unknownObjectRelease();
  if (v10)
  {
    v11 = sub_188C85D28(a1, v28);
    if (v29)
    {
      type metadata accessor for _UISliderTickConfiguration(v11);
      if (swift_dynamicCast())
      {
        v12 = v26;
        if (*&v26[OBJC_IVAR____UISliderTickConfiguration__behavior] == *&v1[OBJC_IVAR____UISliderTickConfiguration__behavior])
        {
          v13 = *&v26[OBJC_IVAR____UISliderTickConfiguration__ticks];
          v14 = *&v1[OBJC_IVAR____UISliderTickConfiguration__ticks];

          v15 = sub_188B2A0A0(v13, v14, &unk_1EA92FD90, off_1E70EC298, sub_188E4AD7C);

          if (v15)
          {
            v16 = [v12 tickStyle];
            if (v16 == [v1 tickStyle])
            {
              [v12 neutralPosition];
              v18 = v17;
              [v1 neutralPosition];
              if (v18 == v19)
              {
                [v12 snappingDistance];
                v21 = v20;
                [v1 snappingDistance];
                v23 = v22;

                return v21 == v23;
              }
            }
          }
        }
      }
    }

    else
    {
      sub_188A553EC(v28);
    }
  }

  return 0;
}

void __swiftcall _UISliderTickConfiguration.init()(_UISliderTickConfiguration *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_189016440(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1891803FC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1890164BC(v6);
  return sub_18A4A81E8();
}

void sub_1890164BC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_18A4A85F8();
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
        sub_188A34624(0, &unk_1EA92FD90);
        v6 = sub_18A4A75D8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1890166CC(v8, v9, a1, v4);
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
    sub_1890165D0(0, v2, 1, a1);
  }
}

void sub_1890165D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 position];
      v15 = v14;
      [v13 position];
      v17 = v16;

      if (v17 < v15)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1890166CC(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_18917EF5C(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_189016D44((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_18917EF5C(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_18917EED0(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 position];
      v19 = v18;
      [v17 position];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 position];
        v27 = v26;
        [v25 position];
        v29 = v28;

        ++v22;
        ++v14;
        if (v21 >= v19 == v29 < v27)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v21 >= v19)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v9 + a4);
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_188E4B688(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_188E4B688((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
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

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_189016D44((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_18917EF5C(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_18917EED0(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 position];
    v48 = v47;
    [v46 position];
    v50 = v49;

    if (v50 < v48)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if ((v110 + 1) != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
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

uint64_t sub_189016D44(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 position];
        v35 = v34;
        [v33 position];
        v37 = v36;

        if (v37 >= v35)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 position];
        v19 = v18;
        [v17 position];
        v21 = v20;

        if (v21 >= v19)
        {
          break;
        }

        v22 = v4;
        v23 = v6 == v4++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v13;
      v23 = v6 == v13++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_189017030(uint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  if (a1 >= 2)
  {
    for (i = 0; i != a1; ++i)
    {
      v3 = objc_allocWithZone(_UISliderTick);
      *&v4 = i / (a1 - 1);
      v5 = [v3 initWithPosition:0 title:0 image:v4];
      MEMORY[0x18CFE2450]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();
    }

    return v9;
  }

  if (a1 == 1)
  {
    v6 = objc_allocWithZone(_UISliderTick);
    LODWORD(v7) = 0.5;
    [v6 initWithPosition:0 title:0 image:v7];
    MEMORY[0x18CFE2450]();
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
    return v9;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1890171D4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v4);
  (*(v5 + 8))(v14, v4, v5);
  v6 = __swift_project_boxed_opaque_existential_0(v14, v14[3]);
  if (sub_188C26B20(*v6, *(v6 + 8)) == 5)
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v7);
    v9 = (*(v8 + 16))(v7, v8) == 0;
  }

  else
  {
    v9 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_0(a1, v10);
  result = sub_188C26D5C(v12, v10, v11);
  *(a2 + 24) = &_s13ListBehaviorsVN;
  *(a2 + 32) = &off_1EFADA628;
  *a2 = v9;
  *(a2 + 8) = result;
  return result;
}

uint64_t _s13ListBehaviorsVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s13ListBehaviorsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

id sub_189017410()
{
  v1 = [v0 modifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_18A4A2D28();
    [v2 setValue:v3 velocity:0];
  }

  v4 = [v0 modifier];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 group];

    if (v6)
    {
      [v6 flushWithTargetTime_];
    }
  }

  return [v0 updateBackgroundSuppressionIfNeeded];
}

id _UIViewAlphaOverrideAssertion.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____UIViewAlphaOverrideAssertion_assertion] = 0;
  *&v0[OBJC_IVAR____UIViewAlphaOverrideAssertion_modifier] = 0;
  *&v0[OBJC_IVAR____UIViewAlphaOverrideAssertion_backgroundSuppressionAssertion] = 0;
  v2.receiver = v0;
  v2.super_class = _UIViewAlphaOverrideAssertion;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for _UIViewAlphaOverrideAssertion()
{
  result = qword_1EA93A1D8;
  if (!qword_1EA93A1D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93A1D8);
  }

  return result;
}

void sub_18901770C(void *a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();

  if (Strong == a1)
  {
    v4 = OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_presentationLayer;
    v16 = *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_presentationLayer);
    v5 = [a1 _outermostLayer];
    if (v5)
    {
      v6 = *(v1 + v4);
      *(v1 + v4) = v5;

      v7 = *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_modifiers);
      v8 = 1 << *(v7 + 32);
      v9 = -1;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      v10 = v9 & *(v7 + 64);
      v11 = (v8 + 63) >> 6;

      v12 = 0;
      if (v10)
      {
        while (1)
        {
          v13 = v12;
LABEL_11:
          v14 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
          v15 = *(*(v7 + 56) + ((v13 << 9) | (8 * v14)));
          [v16 removePresentationModifier_];
          [*(v1 + v4) addPresentationModifier_];

          if (!v10)
          {
            goto LABEL_7;
          }
        }
      }

      while (1)
      {
LABEL_7:
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_17;
        }

        if (v13 >= v11)
        {
          break;
        }

        v10 = *(v7 + 64 + 8 * v13);
        ++v12;
        if (v10)
        {
          v12 = v13;
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_17:
      __break(1u);
    }
  }
}

void sub_1890179C8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_modifiers;
  v11 = *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_modifiers);

  v9 = sub_1891E9CC4(a1);
  v5 = *(v1 + v4);
  *(v2 + v4) = v11;
  v6 = *(v11 + 16);
  if ((*(v5 + 16) != 0) != (v6 == 0))
  {

    if (!v9)
    {
      return;
    }

    goto LABEL_3;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = Strong;
  if (v6)
  {
    [(UIView *)Strong _registerMultiLayerDelegate:v2];
  }

  else
  {
    [(UIView *)Strong _removeMultiLayerDelegate:v2];
  }

  if (v9)
  {
LABEL_3:
    [*(v2 + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject_presentationLayer) removePresentationModifier_];
  }
}

id _UISliderFluidTickConfiguration.init(ticks:behavior:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_188A34624(0, &unk_1EA92FD90);
  v4 = sub_18A4A7518();

  v5 = [v3 initWithTicks:v4 behavior:a2];

  return v5;
}

{
  v2[OBJC_IVAR____UISliderFluidTickConfiguration__ticksAreEvenlySpaced] = 0;
  *&v2[OBJC_IVAR____UISliderFluidTickConfiguration_tickStyle] = 0;
  *&v2[OBJC_IVAR____UISliderFluidTickConfiguration_neutralPosition] = 0;
  *&v2[OBJC_IVAR____UISliderFluidTickConfiguration_snappingDistance] = 1028443341;
  *&v2[OBJC_IVAR____UISliderFluidTickConfiguration__behavior] = a2;

  v6 = sub_189017004(v3);
  sub_189016440(&v6);

  *&v2[OBJC_IVAR____UISliderFluidTickConfiguration__ticks] = v6;
  v5.receiver = v2;
  v5.super_class = _UISliderFluidTickConfiguration;
  return objc_msgSendSuper2(&v5, sel_init);
}

id _UISliderFluidTickConfiguration.init(numberOfTicks:behavior:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithNumberOfTicks:a1 behavior:a2];
}

_BYTE *_UISliderFluidTickConfiguration.init(numberOfTicks:behavior:)(uint64_t a1, uint64_t a2)
{
  sub_189017030(a1);
  sub_188A34624(0, &unk_1EA92FD90);
  v4 = sub_18A4A7518();

  v5 = [v2 initWithTicks:v4 behavior:a2];

  v5[OBJC_IVAR____UISliderFluidTickConfiguration__ticksAreEvenlySpaced] = 1;
  return v5;
}

id _UISliderFluidTickConfiguration.copy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8.super_class = _UISliderFluidTickConfiguration;
  objc_msgSendSuper2(&v8, sel_copyWithZone_, a1);
  sub_18A4A7DE8();
  v4 = swift_unknownObjectRelease();
  v5 = type metadata accessor for _UISliderFluidTickConfiguration(v4);
  swift_dynamicCast();
  *&v7[OBJC_IVAR____UISliderFluidTickConfiguration__behavior] = *&v2[OBJC_IVAR____UISliderFluidTickConfiguration__behavior];
  *&v7[OBJC_IVAR____UISliderFluidTickConfiguration__ticks] = *&v2[OBJC_IVAR____UISliderFluidTickConfiguration__ticks];

  [v7 setTickStyle_];
  [v2 neutralPosition];
  [v7 setNeutralPosition_];
  [v2 snappingDistance];
  result = [v7 setSnappingDistance_];
  a2[3] = v5;
  *a2 = v7;
  return result;
}

BOOL _UISliderFluidTickConfiguration.isEqual(_:)(uint64_t a1)
{
  sub_188C85D28(a1, v28);
  v3 = v29;
  if (v29)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v28, v29);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_18A4A86A8();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }

  else
  {
    v9 = 0;
  }

  v27.receiver = v1;
  v27.super_class = _UISliderFluidTickConfiguration;
  v10 = objc_msgSendSuper2(&v27, sel_isEqual_, v9);
  swift_unknownObjectRelease();
  if (v10)
  {
    v11 = sub_188C85D28(a1, v28);
    if (v29)
    {
      type metadata accessor for _UISliderFluidTickConfiguration(v11);
      if (swift_dynamicCast())
      {
        v12 = v26;
        if (*&v26[OBJC_IVAR____UISliderFluidTickConfiguration__behavior] == *&v1[OBJC_IVAR____UISliderFluidTickConfiguration__behavior])
        {
          v13 = *&v26[OBJC_IVAR____UISliderFluidTickConfiguration__ticks];
          v14 = *&v1[OBJC_IVAR____UISliderFluidTickConfiguration__ticks];

          v15 = sub_189015928(v13, v14);

          if (v15)
          {
            v16 = [v12 tickStyle];
            if (v16 == [v1 tickStyle])
            {
              [v12 neutralPosition];
              v18 = v17;
              [v1 neutralPosition];
              if (v18 == v19)
              {
                [v12 snappingDistance];
                v21 = v20;
                [v1 snappingDistance];
                v23 = v22;

                return v21 == v23;
              }
            }
          }
        }
      }
    }

    else
    {
      sub_188A553EC(v28);
    }
  }

  return 0;
}

int8x16_t sub_189018588@<Q0>(SEL *a1@<X0>, int8x16_t *a2@<X8>)
{
  [v2 *a1];
  y = v15.origin.y;
  x = v15.origin.x;
  width = v15.size.width;
  height = v15.size.height;
  IsNull = CGRectIsNull(v15);
  *v5.i64 = x;
  *&v5.i64[1] = y;
  *v6.i64 = width;
  *&v6.i64[1] = height;
  if (IsNull)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  v8 = vdupq_n_s64(v7);
  v9 = vbicq_s8(v5, v8);
  result = vbicq_s8(v6, v8);
  *a2 = v9;
  a2[1] = result;
  a2[2].i8[0] = IsNull;
  return result;
}

uint64_t sub_18901860C()
{
  v0 = qword_1EA93A2B8;

  return v0;
}

uint64_t sub_189018644()
{
  v0 = qword_1EA93A2A8;

  return v0;
}

uint64_t sub_18901867C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    result = sub_18A4A2388();
LABEL_4:
    *a2 = result;
    return result;
  }

  result = *a1;
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1890186BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_18A4A2388();
  if (v3 == result)
  {
    v5 = 0;
LABEL_4:
    *a2 = v5;
    *(a2 + 8) = 0;
    *(a2 + 9) = v3 == result;
    return result;
  }

  v5 = v3;
  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}