uint64_t sub_189237654(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C760);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_18A4A28D8();
    v10 = sub_18A4A28E8();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_18A4A28E8();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_188A3F5FC(v8, &qword_1EA93C760);
}

uint64_t sub_18923784C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_5Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t UITextFormattingViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  sub_189238460(a1, a2);

  return swift_unknownObjectRelease();
}

void sub_189237974(uint64_t a1, void *a2)
{
  v5 = v2 + OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    static UITextFormattingViewController.ChangeValue._unconditionallyBridgeFromObjectiveC(_:)(a2, &v11);
    v7 = v11;
    v8 = v12;
    v9 = v13;
    ObjectType = swift_getObjectType();
    v11 = v7;
    v12 = v8;
    v13 = v9;
    (*(v6 + 8))(a1, &v11, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_188FE9BA0(v7, v8, v9);
  }
}

id sub_189238024()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UITextFormattingViewControllerDelegateBox();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*UITextFormattingViewController.delegate.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  *(v3 + 24) = UITextFormattingViewController.delegate.getter();
  *(v4 + 32) = v5;
  return sub_1892380E8;
}

uint64_t _sSo30UITextFormattingViewControllerC5UIKitE8delegateAbCE8Delegate_pSgvg_0()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1EA9410B0);
  swift_endAccess();
  if (v1)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    type metadata accessor for _UITextFormattingViewControllerDelegateBox();
    if (swift_dynamicCast())
    {
      Strong = swift_unknownObjectWeakLoadStrong();

      return Strong;
    }
  }

  else
  {
    sub_188A553EC(v7);
  }

  return 0;
}

uint64_t sub_1892381F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  sub_189238460(v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t (*UITextFormattingViewController._delegate.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  *(v3 + 24) = UITextFormattingViewController.delegate.getter();
  *(v4 + 32) = v5;
  return sub_189238604;
}

void sub_1892382BC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = objc_allocWithZone(type metadata accessor for _UITextFormattingViewControllerDelegateBox());
  v6 = v3[5];
  if (a2)
  {
    v7 = v5;
    swift_unknownObjectRetain();
    v8 = [v7 init];
    *&v8[OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate + 8] = v4;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    objc_setAssociatedObject(v6, &unk_1EA9410B0, v8, 1);
    swift_endAccess();
    [v6 setDelegate_];

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = [v5 init];
    *&v9[OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate + 8] = v4;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    objc_setAssociatedObject(v6, &unk_1EA9410B0, v9, 1);
    swift_endAccess();
    [v6 setDelegate_];
  }

  swift_unknownObjectRelease();

  free(v3);
}

void sub_189238460(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for _UITextFormattingViewControllerDelegateBox()) init];
  *&v4[OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate + 8] = a2;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  objc_setAssociatedObject(v2, &unk_1EA9410B0, v4, 1);
  swift_endAccess();
  [v2 setDelegate_];
}

unint64_t sub_1892385A4()
{
  result = qword_1EA9410D0;
  if (!qword_1EA9410D0)
  {
    type metadata accessor for ComponentKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9410D0);
  }

  return result;
}

uint64_t UITextItem.content.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_18A4A28E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 contentType];
  if (v9 == 2)
  {
    v11 = [v2 tagIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = sub_18A4A7288();
      v15 = v14;

      *a1 = v13;
      a1[1] = v15;
      type metadata accessor for UITextItem.Content();
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  if (v9 != 1)
  {
    if (v9)
    {
LABEL_16:
      result = sub_18A4A8398();
      __break(1u);
      return result;
    }

    v17 = [v2 link];
    if (v17)
    {
      v18 = v17;
      sub_18A4A28D8();

      (*(v5 + 32))(a1, v8, v4);
      type metadata accessor for UITextItem.Content();
      return swift_storeEnumTagMultiPayload();
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = [v2 textAttachment];
  if (!v10)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *a1 = v10;
  type metadata accessor for UITextItem.Content();
LABEL_7:

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for UITextItem.Content()
{
  result = qword_1EA9410E0;
  if (!qword_1EA9410E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id UITextItemMenuConfiguration.init(preview:menu:)(void **a1, void *a2)
{
  v3 = *a1;
  if (!*a1)
  {
    v5 = [objc_opt_self() defaultPreview];
LABEL_6:
    v6 = v5;
    sub_188DC900C(v3);
    v4 = v6;
    goto LABEL_7;
  }

  if (v3 != 1)
  {
    v5 = [objc_allocWithZone(UITextItemMenuPreview) initWithView_];
    goto LABEL_6;
  }

  v4 = 0;
LABEL_7:
  v7 = [swift_getObjCClassFromMetadata() configurationWithPreview:v4 menu:a2];

  return v7;
}

unint64_t sub_18923895C()
{
  result = sub_18A4A28E8();
  if (v1 <= 0x3F)
  {
    result = sub_1892389D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1892389D8()
{
  result = qword_1EA92FED8;
  if (!qword_1EA92FED8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA92FED8);
  }

  return result;
}

void sub_189238A48(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a1 view];
    [a1 locationInView_];
    v7 = v6;
    v9 = v8;

    [a1 translation];
    v11 = v10;
    v13 = v12;
    [a1 rotation];
    v15 = v14;
    [a1 scale];
    v17 = v16;
    [a1 transform];
    v18 = v22;
    v19 = v23;
    v20 = v24;
    *&v22 = v7;
    *(&v22 + 1) = v9;
    *&v23 = v11;
    *(&v23 + 1) = v13;
    v24 = 0uLL;
    v25 = v15;
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = 0;
    v21 = [a1 state];
    if ((v21 - 3) < 2)
    {
      sub_18923B034(v1, &v22, v4, &OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_pinch, &OBJC_IVAR____TtC5UIKit29_UIPinchDismissSubInteraction_axis);
    }

    else if (v21 == 2)
    {
      sub_18923A478(v1, &v22, v4);
    }

    else if (v21 == 1)
    {
      sub_189238BD8();
      sub_18923B404(&v22, v4);
    }
  }
}

void sub_189238BD8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v58 = Strong;
  v2 = [Strong window];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v59 = *(v0 + OBJC_IVAR____TtC5UIKit29_UIPinchDismissSubInteraction_gesture);
  v4 = [v59 _activeEventOfType_];
  if (!v4)
  {
LABEL_8:
    v13 = [v59 _allActiveTouches];
    if (v13)
    {
      v14 = v13;
      v54 = v3;
      sub_188A34624(0, &qword_1EA9342F0);
      sub_188C09790(&qword_1EA941110, &qword_1EA9342F0);
      v15 = sub_18A4A77A8();

      if ((v15 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_18A4A7F18();
        sub_18A4A77D8();
        v15 = v62;
        v16 = v63;
        v18 = v64;
        v17 = v65;
        v19 = v66;
      }

      else
      {
        v31 = -1 << *(v15 + 32);
        v16 = v15 + 56;
        v18 = ~v31;
        v32 = -v31;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        else
        {
          v33 = -1;
        }

        v19 = v33 & *(v15 + 56);

        v17 = 0;
      }

      v52 = v18;
      v34 = (v18 + 64) >> 6;
      v56 = v15;
      v57 = v16;
      v55 = v34;
      while (1)
      {
        if (v15 < 0)
        {
          if (!sub_18A4A7FB8())
          {
            goto LABEL_71;
          }

          swift_dynamicCast();
          v39 = v61;
          v37 = v17;
          v38 = v19;
          if (!v61)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v35 = v17;
          v36 = v19;
          v37 = v17;
          if (!v19)
          {
            while (1)
            {
              v37 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                goto LABEL_76;
              }

              if (v37 >= v34)
              {
                break;
              }

              v36 = *(v16 + 8 * v37);
              ++v35;
              if (v36)
              {
                goto LABEL_49;
              }
            }

LABEL_71:
            sub_188E036A4();

            return;
          }

LABEL_49:
          v38 = (v36 - 1) & v36;
          v39 = *(*(v15 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v36)))));
          if (!v39)
          {
            goto LABEL_71;
          }
        }

        v40 = [v39 gestureRecognizers];
        if (v40)
        {
          break;
        }

LABEL_43:

        v17 = v37;
        v19 = v38;
      }

      v41 = v40;
      sub_188A34624(0, &unk_1EA930B30);
      v42 = sub_18A4A7548();

      if (v42 >> 62)
      {
        v43 = sub_18A4A7F68();
        if (v43)
        {
LABEL_56:
          v44 = 0;
          do
          {
            if ((v42 & 0xC000000000000001) != 0)
            {
              v45 = sub_188E4AFF8(v44, v42);
            }

            else
            {
              if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_74;
              }

              v45 = *(v42 + 8 * v44 + 32);
            }

            v46 = v45;
            v47 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              __break(1u);
LABEL_74:
              __break(1u);
              goto LABEL_75;
            }

            if ([v45 isEnabled])
            {
              v48 = v59;
              v49 = sub_18A4A7C88();

              if ((v49 & 1) == 0)
              {
                v50 = [v46 view];
                if (v50)
                {
                  v51 = v50;
                  if ([v50 isDescendantOfView_])
                  {
                    [v46 setEnabled_];
                    [v46 setEnabled_];
                  }
                }
              }
            }

            ++v44;
          }

          while (v47 != v43);
        }
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43)
        {
          goto LABEL_56;
        }
      }

      v15 = v56;
      v16 = v57;
      v34 = v55;
      goto LABEL_43;
    }

LABEL_12:

    return;
  }

  v5 = v4;
  v6 = [v4 _gestureRecognizersForWindow_];
  if (!v6)
  {

    goto LABEL_8;
  }

  v7 = v6;
  v53 = v3;
  sub_188A34624(0, &unk_1EA930B30);
  sub_188C09790(&qword_1EA941120, &unk_1EA930B30);
  v8 = sub_18A4A77A8();

  v60 = v5;
  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18A4A7F18();
    sub_18A4A77D8();
    v8 = v62;
    v9 = v63;
    v10 = v64;
    v11 = v65;
    v12 = v66;
  }

  else
  {
    v20 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v10 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v12 = v22 & *(v8 + 56);

    v11 = 0;
  }

  v23 = (v10 + 64) >> 6;
  while (v8 < 0)
  {
    if (!sub_18A4A7FB8() || (swift_dynamicCast(), (v26 = v61) == 0))
    {
LABEL_36:
      sub_188E036A4();

      return;
    }

LABEL_31:
    if ([v26 isEnabled])
    {
      v27 = v59;
      v28 = sub_18A4A7C88();

      if ((v28 & 1) == 0)
      {
        v29 = [v26 view];
        if (v29)
        {
          v30 = v29;
          if ([v29 isDescendantOfView_])
          {
            [v26 setEnabled_];
            [v26 setEnabled_];
          }
        }
      }
    }
  }

  v24 = v11;
  v25 = v12;
  if (v12)
  {
LABEL_27:
    v12 = (v25 - 1) & v25;
    v26 = *(*(v8 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v26)
    {
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  while (1)
  {
    v11 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v11 >= v23)
    {
      goto LABEL_36;
    }

    v25 = *(v9 + 8 * v11);
    ++v24;
    if (v25)
    {
      goto LABEL_27;
    }
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
}

void sub_18923951C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3[OBJC_IVAR____UIDismissInteraction__isActive] != 1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v71 = Strong;
  v70 = [a3 view];
  if (v70)
  {
    v7 = [v71 _window];
    if (v7)
    {

      type metadata accessor for _UIDismissInteractionSettingsDomain();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v80.receiver = ObjCClassFromMetadata;
      v80.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
      v9 = objc_msgSendSuper2(&v80, sel_rootSettings);
      if (!v9)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v10 = v9;
      type metadata accessor for _UIDismissInteractionSettings();
      v11 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);

      v12 = a3[OBJC_IVAR____UIDismissInteraction_trackingViewDidBecomeVisible];
      if ((v12 & 1) == 0)
      {
        a3[OBJC_IVAR____UIDismissInteraction_trackingViewDidBecomeVisible] = 1;
        [v71 center];
        v14 = v13;
        v16 = v15;
        v17 = &a3[OBJC_IVAR____UIDismissInteraction_originalTrackingViewPosition];
        *v17 = v13;
        v17[1] = v15;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          v18 = [v71 superview];
          if (!v18)
          {
LABEL_51:
            __break(1u);
            return;
          }

          v19 = v18;
          [v18 convertPoint:v70 toCoordinateSpace:{*v17, v17[1]}];
          v14 = v20;
          v16 = v21;
        }

        v22 = *&a3[OBJC_IVAR____UIDismissInteraction_originalTouchPosition + 8] - v16;
        v23 = &a3[OBJC_IVAR____UIDismissInteraction_touchAdjustment];
        *v23 = *&a3[OBJC_IVAR____UIDismissInteraction_originalTouchPosition] - v14;
        v23[1] = v22;
      }

      v24 = &a3[OBJC_IVAR____UIDismissInteraction_translation];
      *&a3[OBJC_IVAR____UIDismissInteraction_translation] = *(a2 + 16);
      [v70 bounds];
      Width = CGRectGetWidth(v82);
      [v70 bounds];
      Height = CGRectGetHeight(v83);
      if (Height >= Width)
      {
        v27 = Width;
      }

      else
      {
        v27 = Height;
      }

      if (v27 < 0.0)
      {
        __break(1u);
        goto LABEL_45;
      }

      sub_189005748();
      v29 = v28;
      v31 = v30;
      sub_189005920();
      v33 = v32;
      v35 = v34;
      v79 = *v24;
      sub_1891F04F0(v29, v31, -v27, v27);
      v78 = v24[1];
      sub_1891F04F0(v33, v35, -v27, v27);
      v36 = *(a2 + 56);
      v77 = v36;
      v37 = *(a1 + OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture);
      v38 = OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_recognizedAxis;
      v39 = *(v37 + OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_recognizedAxis);
      if (v39 == 2)
      {
        v42 = v78 / v35;
        if ((*(a2 + 112) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else if (v39 == 1)
      {
        v40 = [v70 effectiveUserInterfaceLayoutDirection];
        v41 = fabs(v79 / v29);
        if (v40)
        {
          v42 = v41;
        }

        else
        {
          v42 = v79 / v31;
        }

        if ((*(a2 + 112) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v76.receiver = ObjCClassFromMetadata;
        v76.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
        v47 = objc_msgSendSuper2(&v76, sel_rootSettings);
        if (!v47)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v48 = v47;
        v49 = 1.0 - v36;
        v50 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);

        v51 = *&v50[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_minScale];
        v42 = v49 / (1.0 - v51);
        if ((*(a2 + 112) & 1) == 0)
        {
LABEL_31:
          v74.receiver = ObjCClassFromMetadata;
          v74.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
          v52 = objc_msgSendSuper2(&v74, sel_rootSettings);
          if (!v52)
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          v53 = v52;
          v54 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);

          v55 = *&v54[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_minScale];
          if (v55 <= 1.0)
          {
            v73.receiver = ObjCClassFromMetadata;
            v73.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
            v56 = objc_msgSendSuper2(&v73, sel_rootSettings);
            if (!v56)
            {
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v57 = v56;
            v58 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);

            v59 = *&v58[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_scaleStretchinessLowerBound];
            v60 = *&v58[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_scaleStretchinessUpperBound];

            if (v59 <= v60)
            {
              sub_1891F04F0(v55, 1.0, v59, v60);
              v44 = v77;
              CGAffineTransformMakeScale(&v75, v77, v77);
              CGAffineTransformRotate(&v72, &v75, *(a2 + 48));
              v68 = *&v72.a;
              v69 = *&v72.c;
              tx = v72.tx;
              ty = v72.ty;
              goto LABEL_36;
            }

            goto LABEL_46;
          }

LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }
      }

      v44 = _UILerp_0(v42, *&v11[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_minScale]);
      CGAffineTransformMakeScale(&v75, v44, v44);
      v68 = *&v75.a;
      v69 = *&v75.c;
      tx = v75.tx;
      ty = v75.ty;
LABEL_36:
      v61 = v79 + (1.0 - v44) * *&a3[OBJC_IVAR____UIDismissInteraction_touchAdjustment];
      v62 = v78 + (1.0 - v44) * *&a3[OBJC_IVAR____UIDismissInteraction_touchAdjustment + 8];
      v63 = [objc_allocWithZone(_UIDismissInteractionUpdate) init];
      [v63 setOriginalTrackingViewPosition_];
      CGAffineTransformMakeTranslation(&v75, v61, v62);
      [v63 setTranslation_];
      *&v75.a = v68;
      *&v75.c = v69;
      v75.tx = tx;
      v75.ty = ty;
      [v63 setTransform_];
      [v63 setScale_];
      [v63 setProgressToMinScale_];
      v64 = OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_updateSpring;
      v65 = &selRef_trackingDampingRatio;
      if (v12)
      {
        v66 = &selRef_trackingResponse;
      }

      else
      {
        v65 = &selRef_dampingRatio;
        v66 = &selRef_response;
      }

      [*&v11[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_updateSpring] *v65];
      [v63 setDampingRatio_];
      [*&v11[v64] *v66];
      [v63 setResponse_];
      [v63 setIsTracking_];
      [v63 setWantsHeightClamping_];
      v67 = [a3 delegate];
      if (v67)
      {
        [v67 dismissInteraction:a3 didIssueUpdate:v63];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }

    v43 = v70;
  }

  else
  {
    v43 = v71;
  }
}

void sub_189239CD8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3[OBJC_IVAR____UIDismissInteraction__isActive] != 1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v66 = Strong;
  v65 = [a3 view];
  if (v65)
  {
    v7 = [v66 _window];
    if (v7)
    {

      type metadata accessor for _UIDismissInteractionSettingsDomain();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v75.receiver = ObjCClassFromMetadata;
      v75.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
      v9 = objc_msgSendSuper2(&v75, sel_rootSettings);
      if (!v9)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v10 = v9;
      type metadata accessor for _UIDismissInteractionSettings();
      v11 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_edgePan);

      v12 = a3[OBJC_IVAR____UIDismissInteraction_trackingViewDidBecomeVisible];
      if ((v12 & 1) == 0)
      {
        a3[OBJC_IVAR____UIDismissInteraction_trackingViewDidBecomeVisible] = 1;
        [v66 center];
        v14 = v13;
        v16 = v15;
        v17 = &a3[OBJC_IVAR____UIDismissInteraction_originalTrackingViewPosition];
        *v17 = v13;
        v17[1] = v15;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          v18 = [v66 superview];
          if (!v18)
          {
LABEL_51:
            __break(1u);
            return;
          }

          v19 = v18;
          [v18 convertPoint:v65 toCoordinateSpace:{*v17, v17[1]}];
          v14 = v20;
          v16 = v21;
        }

        v22 = *&a3[OBJC_IVAR____UIDismissInteraction_originalTouchPosition + 8] - v16;
        v23 = &a3[OBJC_IVAR____UIDismissInteraction_touchAdjustment];
        *v23 = *&a3[OBJC_IVAR____UIDismissInteraction_originalTouchPosition] - v14;
        v23[1] = v22;
      }

      v24 = &a3[OBJC_IVAR____UIDismissInteraction_translation];
      *&a3[OBJC_IVAR____UIDismissInteraction_translation] = *(a2 + 16);
      [v65 bounds];
      Width = CGRectGetWidth(v77);
      [v65 bounds];
      Height = CGRectGetHeight(v78);
      if (Height >= Width)
      {
        v27 = Width;
      }

      else
      {
        v27 = Height;
      }

      if (v27 < 0.0)
      {
        __break(1u);
        goto LABEL_45;
      }

      sub_18913C888();
      v29 = v28;
      v31 = v30;
      v74 = *v24;
      sub_1891F04F0(v28, v30, -v27, v27);
      v73 = v24[1];
      sub_1891F04F0(0.0, 0.0, -v27, v27);
      v32 = *(a2 + 56);
      v72 = v32;
      v33 = OBJC_IVAR____TtC5UIKit31_UIEdgePanDismissSubInteraction_axis;
      v34 = *(a1 + OBJC_IVAR____TtC5UIKit31_UIEdgePanDismissSubInteraction_axis);
      if (v34 == 2)
      {
        v37 = v73 / 0.0;
        if ((*(a2 + 112) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else if (v34 == 1)
      {
        v35 = [v65 effectiveUserInterfaceLayoutDirection];
        v36 = fabs(v74 / v29);
        if (v35)
        {
          v37 = v36;
        }

        else
        {
          v37 = v74 / v31;
        }

        if ((*(a2 + 112) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v71.receiver = ObjCClassFromMetadata;
        v71.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
        v42 = objc_msgSendSuper2(&v71, sel_rootSettings);
        if (!v42)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v43 = v42;
        v44 = 1.0 - v32;
        v45 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_edgePan);

        v46 = *&v45[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_minScale];
        v37 = v44 / (1.0 - v46);
        if ((*(a2 + 112) & 1) == 0)
        {
LABEL_31:
          v69.receiver = ObjCClassFromMetadata;
          v69.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
          v47 = objc_msgSendSuper2(&v69, sel_rootSettings);
          if (!v47)
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          v48 = v47;
          v49 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_edgePan);

          v50 = *&v49[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_minScale];
          if (v50 <= 1.0)
          {
            v68.receiver = ObjCClassFromMetadata;
            v68.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
            v51 = objc_msgSendSuper2(&v68, sel_rootSettings);
            if (!v51)
            {
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v52 = v51;
            v53 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_edgePan);

            v54 = *&v53[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_scaleStretchinessLowerBound];
            v55 = *&v53[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_scaleStretchinessUpperBound];

            if (v54 <= v55)
            {
              sub_1891F04F0(v50, 1.0, v54, v55);
              v39 = v72;
              CGAffineTransformMakeScale(&v70, v72, v72);
              CGAffineTransformRotate(&v67, &v70, *(a2 + 48));
              v63 = *&v67.a;
              v64 = *&v67.c;
              tx = v67.tx;
              ty = v67.ty;
              goto LABEL_36;
            }

            goto LABEL_46;
          }

LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }
      }

      v39 = _UILerp_0(v37, *&v11[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_minScale]);
      CGAffineTransformMakeScale(&v70, v39, v39);
      v63 = *&v70.a;
      v64 = *&v70.c;
      tx = v70.tx;
      ty = v70.ty;
LABEL_36:
      v56 = v74 + (1.0 - v39) * *&a3[OBJC_IVAR____UIDismissInteraction_touchAdjustment];
      v57 = v73 + (1.0 - v39) * *&a3[OBJC_IVAR____UIDismissInteraction_touchAdjustment + 8];
      v58 = [objc_allocWithZone(_UIDismissInteractionUpdate) init];
      [v58 setOriginalTrackingViewPosition_];
      CGAffineTransformMakeTranslation(&v70, v56, v57);
      [v58 setTranslation_];
      *&v70.a = v63;
      *&v70.c = v64;
      v70.tx = tx;
      v70.ty = ty;
      [v58 setTransform_];
      [v58 setScale_];
      [v58 setProgressToMinScale_];
      v59 = OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_updateSpring;
      v60 = &selRef_trackingDampingRatio;
      if (v12)
      {
        v61 = &selRef_trackingResponse;
      }

      else
      {
        v60 = &selRef_dampingRatio;
        v61 = &selRef_response;
      }

      [*&v11[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_updateSpring] *v60];
      [v58 setDampingRatio_];
      [*&v11[v59] *v61];
      [v58 setResponse_];
      [v58 setIsTracking_];
      [v58 setWantsHeightClamping_];
      v62 = [a3 delegate];
      if (v62)
      {
        [v62 dismissInteraction:a3 didIssueUpdate:v58];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }

    v38 = v65;
  }

  else
  {
    v38 = v66;
  }
}

void sub_18923A478(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3[OBJC_IVAR____UIDismissInteraction__isActive] != 1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v60 = Strong;
  v59 = [a3 view];
  if (v59)
  {
    v7 = [v60 _window];
    if (v7)
    {

      type metadata accessor for _UIDismissInteractionSettingsDomain();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v69.receiver = ObjCClassFromMetadata;
      v69.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
      v9 = objc_msgSendSuper2(&v69, sel_rootSettings);
      if (!v9)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v10 = v9;
      type metadata accessor for _UIDismissInteractionSettings();
      v11 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_pinch);

      v12 = a3[OBJC_IVAR____UIDismissInteraction_trackingViewDidBecomeVisible];
      if ((v12 & 1) == 0)
      {
        a3[OBJC_IVAR____UIDismissInteraction_trackingViewDidBecomeVisible] = 1;
        [v60 center];
        v14 = v13;
        v16 = v15;
        v17 = &a3[OBJC_IVAR____UIDismissInteraction_originalTrackingViewPosition];
        *v17 = v13;
        v17[1] = v15;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          v18 = [v60 superview];
          if (!v18)
          {
LABEL_50:
            __break(1u);
            return;
          }

          v19 = v18;
          [v18 convertPoint:v59 toCoordinateSpace:{*v17, v17[1]}];
          v14 = v20;
          v16 = v21;
        }

        v22 = *&a3[OBJC_IVAR____UIDismissInteraction_originalTouchPosition + 8] - v16;
        v23 = &a3[OBJC_IVAR____UIDismissInteraction_touchAdjustment];
        *v23 = *&a3[OBJC_IVAR____UIDismissInteraction_originalTouchPosition] - v14;
        v23[1] = v22;
      }

      v24 = &a3[OBJC_IVAR____UIDismissInteraction_translation];
      *&a3[OBJC_IVAR____UIDismissInteraction_translation] = *(a2 + 16);
      [v59 bounds];
      Width = CGRectGetWidth(v71);
      [v59 bounds];
      Height = CGRectGetHeight(v72);
      if (Height < Width)
      {
        Width = Height;
      }

      if (Width < 0.0)
      {
        __break(1u);
        goto LABEL_44;
      }

      v68 = *v24;
      sub_1891F04F0(-1.79769313e308, 1.79769313e308, -Width, Width);
      v67 = v24[1];
      sub_1891F04F0(-1.79769313e308, 1.79769313e308, -Width, Width);
      v27 = *(a2 + 56);
      v66 = v27;
      v28 = OBJC_IVAR____TtC5UIKit29_UIPinchDismissSubInteraction_axis;
      v29 = *(a1 + OBJC_IVAR____TtC5UIKit29_UIPinchDismissSubInteraction_axis);
      if (v29 == 2)
      {
        v32 = v67 / 1.79769313e308;
        if ((*(a2 + 112) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if (v29 == 1)
      {
        v30 = [v59 effectiveUserInterfaceLayoutDirection];
        v31 = fabs(v68 / -1.79769313e308);
        if (v30)
        {
          v32 = v31;
        }

        else
        {
          v32 = v68 / 1.79769313e308;
        }

        if ((*(a2 + 112) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v65.receiver = ObjCClassFromMetadata;
        v65.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
        v37 = objc_msgSendSuper2(&v65, sel_rootSettings);
        if (!v37)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v38 = v37;
        v39 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_pinch);

        v40 = *&v39[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_minScale];
        v32 = (1.0 - v27) / (1.0 - v40);
        if ((*(a2 + 112) & 1) == 0)
        {
LABEL_30:
          v63.receiver = ObjCClassFromMetadata;
          v63.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
          v41 = objc_msgSendSuper2(&v63, sel_rootSettings);
          if (!v41)
          {
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v42 = v41;
          v43 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_pinch);

          v44 = *&v43[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_minScale];
          if (v44 <= 1.0)
          {
            v62.receiver = ObjCClassFromMetadata;
            v62.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
            v45 = objc_msgSendSuper2(&v62, sel_rootSettings);
            if (!v45)
            {
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

            v46 = v45;
            v47 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_pinch);

            v48 = *&v47[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_scaleStretchinessLowerBound];
            v49 = *&v47[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_scaleStretchinessUpperBound];

            if (v48 <= v49)
            {
              sub_1891F04F0(v44, 1.0, v48, v49);
              v34 = v66;
              CGAffineTransformMakeScale(&v64, v66, v66);
              CGAffineTransformRotate(&v61, &v64, *(a2 + 48));
              v57 = *&v61.a;
              v58 = *&v61.c;
              tx = v61.tx;
              ty = v61.ty;
              goto LABEL_35;
            }

            goto LABEL_45;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v34 = _UILerp_0(v32, *&v11[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_minScale]);
      CGAffineTransformMakeScale(&v64, v34, v34);
      v57 = *&v64.a;
      v58 = *&v64.c;
      tx = v64.tx;
      ty = v64.ty;
LABEL_35:
      v50 = v68 + (1.0 - v34) * *&a3[OBJC_IVAR____UIDismissInteraction_touchAdjustment];
      v51 = v67 + (1.0 - v34) * *&a3[OBJC_IVAR____UIDismissInteraction_touchAdjustment + 8];
      v52 = [objc_allocWithZone(_UIDismissInteractionUpdate) init];
      [v52 setOriginalTrackingViewPosition_];
      CGAffineTransformMakeTranslation(&v64, v50, v51);
      [v52 setTranslation_];
      *&v64.a = v57;
      *&v64.c = v58;
      v64.tx = tx;
      v64.ty = ty;
      [v52 setTransform_];
      [v52 setScale_];
      [v52 setProgressToMinScale_];
      v53 = OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_updateSpring;
      v54 = &selRef_trackingDampingRatio;
      if (v12)
      {
        v55 = &selRef_trackingResponse;
      }

      else
      {
        v54 = &selRef_dampingRatio;
        v55 = &selRef_response;
      }

      [*&v11[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_updateSpring] *v54];
      [v52 setDampingRatio_];
      [*&v11[v53] *v55];
      [v52 setResponse_];
      [v52 setIsTracking_];
      [v52 setWantsHeightClamping_];
      v56 = [a3 delegate];
      if (v56)
      {
        [v56 dismissInteraction:a3 didIssueUpdate:v52];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }

    v33 = v59;
  }

  else
  {
    v33 = v60;
  }
}

void sub_18923AC2C(uint64_t a1, double *a2, char *a3)
{
  v3 = OBJC_IVAR____UIDismissInteraction__isActive;
  if (a3[OBJC_IVAR____UIDismissInteraction__isActive] == 1)
  {
    v7 = [a3 delegate];
    if (v7)
    {
      v8 = v7;
      v9 = [a3 view];
      if (v9)
      {
        v10 = v9;
        a3[v3] = 0;
        a3[OBJC_IVAR____UIDismissInteraction_trackingViewDidBecomeVisible] = 0;
        type metadata accessor for _UIDismissInteractionSettingsDomain();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v37.receiver = ObjCClassFromMetadata;
        v37.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
        v12 = objc_msgSendSuper2(&v37, sel_rootSettings);
        if (v12)
        {
          v13 = v12;
          v14 = a2[7];
          type metadata accessor for _UIDismissInteractionSettings();
          v15 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);

          v16 = *&v15[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_scaleDismissThreshold];
          if (v14 < v16)
          {
LABEL_6:
            [v8 dismissInteraction:a3 didDismissWithVelocity:{a2[4], a2[5]}];
LABEL_21:
            swift_unknownObjectRelease();

            return;
          }

          if (*(*(a1 + OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture) + OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_recognizedAxis) == 1)
          {
            v17 = a2[4];
            v18 = a2[2] + v17 * 0.099;
            if (![v10 effectiveUserInterfaceLayoutDirection])
            {
              v34.receiver = ObjCClassFromMetadata;
              v34.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
              v30 = objc_msgSendSuper2(&v34, sel_rootSettings);
              if (v30)
              {
                v31 = v30;
                v32 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);

                v33 = *&v32[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_dismissThreshold];
                if (v33 < v18)
                {
                  goto LABEL_6;
                }

                goto LABEL_20;
              }

LABEL_26:
              __break(1u);
              return;
            }

            v35.receiver = ObjCClassFromMetadata;
            v35.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
            v19 = objc_msgSendSuper2(&v35, sel_rootSettings);
            if (v19)
            {
              v20 = v19;
              v21 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);

              v22 = *&v21[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_dismissThreshold];
              if (v18 < -v22)
              {
                goto LABEL_6;
              }

LABEL_20:
              [v8 dismissInteraction:a3 didCancelWithVelocity:v17 originalPosition:{a2[5], *&a3[OBJC_IVAR____UIDismissInteraction_originalTrackingViewPosition], *&a3[OBJC_IVAR____UIDismissInteraction_originalTrackingViewPosition + 8]}];
              goto LABEL_21;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v23 = *&a3[OBJC_IVAR____UIDismissInteraction_translation + 8];
          v24 = a2[5];
          v36.receiver = ObjCClassFromMetadata;
          v36.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
          v25 = objc_msgSendSuper2(&v36, sel_rootSettings);
          if (v25)
          {
            v26 = v25;
            v27 = v23 + v24 * 0.099;
            v28 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);

            v29 = *&v28[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_dismissThreshold];
            if (v29 < v27)
            {
              goto LABEL_6;
            }

            v17 = a2[4];
            goto LABEL_20;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_25;
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_18923B034(uint64_t a1, double *a2, char *a3, void *a4, void *a5)
{
  v5 = OBJC_IVAR____UIDismissInteraction__isActive;
  if (a3[OBJC_IVAR____UIDismissInteraction__isActive] == 1)
  {
    v11 = [a3 delegate];
    if (v11)
    {
      v12 = v11;
      v13 = [a3 view];
      if (v13)
      {
        v14 = v13;
        a3[v5] = 0;
        a3[OBJC_IVAR____UIDismissInteraction_trackingViewDidBecomeVisible] = 0;
        type metadata accessor for _UIDismissInteractionSettingsDomain();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v41.receiver = ObjCClassFromMetadata;
        v41.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
        v16 = objc_msgSendSuper2(&v41, sel_rootSettings);
        if (v16)
        {
          v17 = v16;
          v18 = a2[7];
          type metadata accessor for _UIDismissInteractionSettings();
          v19 = *(swift_dynamicCastClassUnconditional() + *a4);

          v20 = *&v19[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_scaleDismissThreshold];
          if (v18 < v20)
          {
LABEL_6:
            [v12 dismissInteraction:a3 didDismissWithVelocity:{a2[4], a2[5]}];
LABEL_21:
            swift_unknownObjectRelease();

            return;
          }

          if (*(a1 + *a5) == 1)
          {
            v21 = a2[4];
            v22 = a2[2] + v21 * 0.099;
            if (![v14 effectiveUserInterfaceLayoutDirection])
            {
              v38.receiver = ObjCClassFromMetadata;
              v38.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
              v34 = objc_msgSendSuper2(&v38, sel_rootSettings);
              if (v34)
              {
                v35 = v34;
                v36 = *(swift_dynamicCastClassUnconditional() + *a4);

                v37 = *&v36[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_dismissThreshold];
                if (v37 < v22)
                {
                  goto LABEL_6;
                }

                goto LABEL_20;
              }

LABEL_26:
              __break(1u);
              return;
            }

            v39.receiver = ObjCClassFromMetadata;
            v39.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
            v23 = objc_msgSendSuper2(&v39, sel_rootSettings);
            if (v23)
            {
              v24 = v23;
              v25 = *(swift_dynamicCastClassUnconditional() + *a4);

              v26 = *&v25[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_dismissThreshold];
              if (v22 < -v26)
              {
                goto LABEL_6;
              }

LABEL_20:
              [v12 dismissInteraction:a3 didCancelWithVelocity:v21 originalPosition:{a2[5], *&a3[OBJC_IVAR____UIDismissInteraction_originalTrackingViewPosition], *&a3[OBJC_IVAR____UIDismissInteraction_originalTrackingViewPosition + 8]}];
              goto LABEL_21;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v27 = *&a3[OBJC_IVAR____UIDismissInteraction_translation + 8];
          v28 = a2[5];
          v40.receiver = ObjCClassFromMetadata;
          v40.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
          v29 = objc_msgSendSuper2(&v40, sel_rootSettings);
          if (v29)
          {
            v30 = v29;
            v31 = v27 + v28 * 0.099;
            v32 = *(swift_dynamicCastClassUnconditional() + *a4);

            v33 = *&v32[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_dismissThreshold];
            if (v33 < v31)
            {
              goto LABEL_6;
            }

            v21 = a2[4];
            goto LABEL_20;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_25;
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_18923B404(void *a1, char *a2)
{
  v2 = OBJC_IVAR____UIDismissInteraction__isActive;
  if ((a2[OBJC_IVAR____UIDismissInteraction__isActive] & 1) == 0)
  {
    v5 = [a2 delegate];
    if (v5)
    {
      a2[v2] = 1;
      v6 = &a2[OBJC_IVAR____UIDismissInteraction_translation];
      *v6 = 0;
      *(v6 + 1) = 0;
      v7 = a1[1];
      v8 = &a2[OBJC_IVAR____UIDismissInteraction_originalTouchPosition];
      *v8 = *a1;
      *(v8 + 1) = v7;
      v9 = &a2[OBJC_IVAR____UIDismissInteraction_touchAdjustment];
      *v9 = 0;
      *(v9 + 1) = 0;
      v10 = v5;
      [v5 dismissInteraction:a2 didBeginAtLocation:? withVelocity:?];
      v11 = [v10 trackingViewForInteraction_];
      swift_unknownObjectRelease();
      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_18923B520()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit29_UIPinchDismissSubInteraction_gesture);
  [v1 scale];
  if (v2 >= 1.0)
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [v1 view];
    [v1 locationInView_];
    v7 = v6;
    v9 = v8;

    [v1 translation];
    [v1 rotation];
    [v1 scale];
    [v1 transform];
    v10 = [v4 delegate];
    if (v10)
    {
      v11 = [v10 dismissInteraction:v4 shouldBeginWithAxis:*(v0 + OBJC_IVAR____TtC5UIKit29_UIPinchDismissSubInteraction_axis) location:1 velocity:v7 proposal:{v9, 0.0, 0.0}];

      swift_unknownObjectRelease();
      return v11;
    }

    else
    {

      return 1;
    }
  }

  return result;
}

id sub_18923B690(void *a1, id a2)
{
  if ([a2 _isGestureType_] & 1) != 0 || (objc_msgSend(a2, sel__isGestureType_, 20))
  {
    return 0;
  }

  result = [a1 view];
  if (result)
  {
    v5 = result;
    v6 = [a2 view];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 isDescendantOfView_];

      v5 = v7;
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

id sub_18923B75C(double a1, double a2)
{
  v5 = v2;
  v6 = [v5 _morphView];
  v7 = [v6 traitCollection];
  v8 = sub_188E1AC70();
  if (!v8)
  {

    goto LABEL_9;
  }

  v9 = *(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x58));
  v10 = v8;

  v9(&v21);

  v11 = v21;
  if (!v21)
  {
LABEL_9:

    return v5;
  }

  [v6 bounds];
  v12 = fmax(CGRectGetWidth(v22), 20.0);
  [v6 bounds];
  Height = CGRectGetHeight(v23);
  v14 = v12 + a1;
  v15 = [v11 _morphView];
  [v15 bounds];
  v17 = v16;
  v19 = v18;

  if (v14 <= v17 && fmax(Height, 20.0) + a2 <= v19 || v17 * v19 > 0.0 && v19 / v17 >= 5.0)
  {
    swift_unknownObjectRelease();
  }

  else
  {

    return v11;
  }

  return v5;
}

__n128 sub_18923B914@<Q0>(uint64_t a1@<X8>)
{
  v3 = [(UITargetedPreview *)v1 _typedStorage];
  v4 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v14 = xmmword_18A65B690;
  if (*(v5 + 16) && (v6 = sub_188A403F4(&_s18GenieParametersKeyVN), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v13 = *(v8 + 32);
    v14 = *(v8 + 16);
    v11 = *(v8 + 64);
    v12 = *(v8 + 48);
    v9 = *(v8 + 80);
  }

  else
  {
    v9 = 0;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  swift_endAccess();

  *a1 = v14;
  *(a1 + 16) = v13;
  result = v12;
  *(a1 + 32) = v12;
  *(a1 + 48) = v11;
  *(a1 + 64) = v9;
  return result;
}

__n128 sub_18923B9EC@<Q0>(uint64_t a1@<X8>)
{
  v3 = [(UITargetedPreview *)v1 _typedStorage];
  v4 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (*(v5 + 16) && (v6 = sub_188A403F4(&_s19OverrideGeometryKeyVN), (v7 & 1) != 0))
  {
    memmove(__dst, (*(*(v5 + 56) + 8 * v6) + 16), 0x82uLL);
  }

  else
  {
    sub_18923C658(__dst);
  }

  swift_endAccess();

  v8 = __dst[7];
  *(a1 + 96) = __dst[6];
  *(a1 + 112) = v8;
  *(a1 + 128) = v13;
  v9 = __dst[3];
  *(a1 + 32) = __dst[2];
  *(a1 + 48) = v9;
  v10 = __dst[5];
  *(a1 + 64) = __dst[4];
  *(a1 + 80) = v10;
  result = __dst[1];
  *a1 = __dst[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18923BAD0(uint64_t a1)
{
  v3 = [(UITargetedPreview *)v1 _typedStorage];
  sub_188D73128(a1, v12);
  sub_188D73128(v12, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FAA0);
  v4 = swift_allocObject();
  v5 = v10[1];
  *(v4 + 16) = v10[0];
  *(v4 + 32) = v5;
  *(v4 + 48) = v11;
  v6 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v6);
  *(v3 + v6) = 0x8000000000000000;
  sub_188A40430(v4, &_s19OverrideMaterialKeyVN, isUniquelyReferenced_nonNull_native);
  *(v3 + v6) = v9;
  swift_endAccess();

  sub_18912C22C(a1);
  return sub_18912C22C(v12);
}

void *sub_18923BBD8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  tx = 0.0;
  v11 = *(a1 + 32);
  if (v11)
  {
    v55 = 0;
    v56 = 0.0;
  }

  else
  {
    v12 = [v3 target];
    v13 = [v12 container];

    [v13 convertRect:0 fromView:{v7, v6, v8, v9}];
    v15 = v14;
    v17 = v16;
    v8 = v18;
    v9 = v19;

    Center = UIRectGetCenter(v15, v17, v8);
    v55 = v21;
    v56 = Center;
    v7 = 0.0;
    v6 = 0.0;
  }

  v57 = v6;
  if (a3)
  {
    ty = 0.0;
    v23 = [v3 target];
  }

  else
  {
    CGAffineTransformMakeScale(&v62, *&a2, *&a2);
    tx = v62.tx;
    ty = v62.ty;
    v23 = [v3 target];
  }

  v24 = v23;
  v25 = [v24 container];

  v26 = [v3 target];
  [v26 center];
  v28 = v27;
  v30 = v29;

  v31 = objc_allocWithZone(UIPreviewTarget);
  *&v62.a = v53;
  *&v62.c = v54;
  v62.tx = tx;
  v62.ty = ty;
  v32 = [v31 initWithContainer:v25 center:&v62 transform:{v28, v30}];

  v33 = [v3 retargetedPreviewWithTarget_];
  v34 = v33;
  v35 = v7;
  v36 = v7;
  v37 = v57;
  v38 = v8;
  v39 = v9;
  if (v11)
  {
    [v33 size];
    v38 = v40;
    v39 = v41;
    v36 = 0.0;
    v37 = 0.0;
  }

  v65.origin.x = v36;
  v65.origin.y = v37;
  v65.size.width = v38;
  v65.size.height = v39;
  Height = CGRectGetHeight(v65);
  v66.origin.x = v36;
  v66.origin.y = v37;
  v66.size.width = v38;
  v66.size.height = v39;
  Width = CGRectGetWidth(v66);
  if (Width >= Height)
  {
    Width = Height;
  }

  CACornerRadiiMake(v60, Width * 0.5, Width * 0.5, Width * 0.5, Width * 0.5);
  *&v59[7] = v60[0];
  *&v59[23] = v60[1];
  *&v59[39] = v60[2];
  *&v59[55] = v61;
  v62.a = v35;
  v62.b = v57;
  v62.c = v8;
  v62.d = v9;
  LOBYTE(v62.tx) = v11 & 1;
  v62.ty = v56;
  *v63 = v55;
  v63[8] = v11 & 1;
  *&v63[9] = *v59;
  *&v63[72] = *(&v61 + 1);
  *&v63[57] = *&v59[48];
  *&v63[41] = *&v59[32];
  *&v63[25] = *&v59[16];
  LOBYTE(v64) = 0;
  sub_1891D7A90(&v62);
  v44 = [(UITargetedPreview *)v34 _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA70);
  v45 = swift_allocObject();
  v46 = *&v63[64];
  *(v45 + 112) = *&v63[48];
  *(v45 + 128) = v46;
  *(v45 + 144) = v64;
  v47 = *v63;
  *(v45 + 48) = *&v62.tx;
  *(v45 + 64) = v47;
  v48 = *&v63[32];
  *(v45 + 80) = *&v63[16];
  *(v45 + 96) = v48;
  v49 = *&v62.c;
  *(v45 + 16) = *&v62.a;
  *(v45 + 32) = v49;
  v50 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *(v44 + v50);
  *(v44 + v50) = 0x8000000000000000;
  sub_188A40430(v45, &_s19OverrideGeometryKeyVN, isUniquelyReferenced_nonNull_native);
  *(v44 + v50) = v58;
  swift_endAccess();

  return v34;
}

id sub_18923BFBC()
{
  v1 = [v0 view];
  v2 = sub_18923B75C(16.0, 32.0);

  v3 = [v2 _morphView];
  v4 = [v7 view];

  if (v3 == v4)
  {
    swift_unknownObjectRelease();

    return v7;
  }

  else
  {
    v5 = [v2 _morphPreviewFromCurrentState_fallbackBackgroundColor_contentScale_];
    swift_unknownObjectRelease();
    return v5;
  }
}

double sub_18923C150()
{
  sub_18923B9EC(v7);
  v16[0] = v7[0];
  v16[1] = v7[1];
  v1 = v9;
  v22 = v13;
  v23 = v14;
  v24[0] = *v15;
  *(v24 + 9) = *&v15[9];
  v21 = v12;
  v2 = v11;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  if (sub_188F36334(v16) != 1 && (v2 & 1) == 0)
  {
    return v1;
  }

  v3 = [v0 target];
  [v3 center];
  v5 = v4;

  return v5;
}

uint64_t sub_18923C340(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 129))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18923C360(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
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

  *(result + 129) = v3;
  return result;
}

uint64_t sub_18923C3E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_18923C574(v11, v13) & 1;
}

__n128 sub_18923C464@<Q0>(uint64_t a1@<X8>)
{
  sub_18923C658(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7;
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

double sub_18923C4CC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 50) = 0u;
  return result;
}

double sub_18923C4EC()
{
  qword_1EA941148 = 0;
  result = 0.0;
  xmmword_1EA941128 = 0u;
  unk_1EA941138 = 0u;
  return result;
}

uint64_t sub_18923C504@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EA932058 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_188D73128(&xmmword_1EA941128, v2);
}

uint64_t sub_18923C574(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*(a2 + 32))
    {
      goto LABEL_14;
    }

    v2 = a1;
    v3 = a2;
    v4 = CGRectEqualToRect(*a1, *a2);
    a2 = v3;
    v5 = v4;
    a1 = v2;
    if (!v5)
    {
      return v5 & 1;
    }
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    if ((*(a2 + 56) & 1) == 0 && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
    {
      goto LABEL_16;
    }

LABEL_14:
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  if ((*(a2 + 56) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_16:
  LOBYTE(v5) = *(a1 + 128) & *(a2 + 128);
  if ((*(a1 + 128) & 1) == 0 && (*(a2 + 128) & 1) == 0)
  {
    LOBYTE(v5) = sub_18A4A7918();
  }

  return v5 & 1;
}

double sub_18923C658(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 256;
  return result;
}

uint64_t (*UICollectionViewCell.backgroundConfiguration.modify(void *a1))()
{
  a1[1] = v1;
  v3 = [v1 backgroundConfiguration];
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
    v3 = swift_allocObject();
    v3[2] = v4;
  }

  *a1 = v3;
  return sub_18923ED98;
}

uint64_t (*UITableViewCell.backgroundConfiguration.modify(void *a1))()
{
  a1[1] = v1;
  v3 = [v1 backgroundConfiguration];
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
    v3 = swift_allocObject();
    v3[2] = v4;
  }

  *a1 = v3;
  return sub_18923ED98;
}

void *sub_18923C798@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 backgroundConfiguration];
  if (result)
  {
    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
    result = swift_allocObject();
    result[2] = v4;
  }

  *a2 = result;
  return result;
}

uint64_t (*UITableViewHeaderFooterView.backgroundConfiguration.modify(void *a1))()
{
  a1[1] = v1;
  v3 = [v1 backgroundConfiguration];
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
    v3 = swift_allocObject();
    v3[2] = v4;
  }

  *a1 = v3;
  return sub_18923C888;
}

void sub_18923C88C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    if (v2)
    {
      v3 = *(v2 + 16);
    }

    else
    {
      v3 = 0;
    }

    [a1[1] setBackgroundConfiguration_];
  }

  else
  {
    v4 = a1[1];
    if (v2)
    {
      v6 = *(v2 + 16);
      [v4 setBackgroundConfiguration_];
    }

    else
    {
      v5 = a1[1];

      [v5 setBackgroundConfiguration_];
    }
  }
}

uint64_t sub_18923C974@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 defaultBackgroundConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t UIConfigurationColorTransformer.transform.getter()
{
  v1 = *v0;

  return v1;
}

UIColor __swiftcall UIConfigurationColorTransformer.callAsFunction(_:)(UIColor a1)
{
  v2 = (*v1)(a1.super.isa, a1._systemColorName, a1._cachedStyleString);
  result._cachedStyleString = v4;
  result._systemColorName = v3;
  result.super.isa = v2;
  return result;
}

void *sub_18923CA30()
{
  v0 = swift_allocObject();
  *(v0 + 16) = &__block_literal_global_221;
  qword_1EA941150 = sub_188F4839C;
  *algn_1EA941158 = v0;

  return _Block_copy(&__block_literal_global_221);
}

void *sub_18923CAC8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = &__block_literal_global_2_10;
  qword_1EA941160 = sub_188F4839C;
  *algn_1EA941168 = v0;

  return _Block_copy(&__block_literal_global_2_10);
}

void *sub_18923CB60()
{
  v0 = swift_allocObject();
  *(v0 + 16) = &__block_literal_global_4_3;
  qword_1EA941170 = sub_188F4839C;
  *algn_1EA941178 = v0;

  return _Block_copy(&__block_literal_global_4_3);
}

uint64_t sub_18923CBF8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    swift_once();
    a2 = v7;
    a4 = v9;
    a3 = v8;
  }

  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
}

unint64_t UIVisualEffectView._BlurClippingMode.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

id UIBackgroundConfiguration.customView.getter()
{
  v1 = [*(*v0 + 16) customView];

  return v1;
}

void (*UIBackgroundConfiguration.customView.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) customView];
  return sub_18923CD4C;
}

id (*UIBackgroundConfiguration.cornerRadius.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) cornerRadius];
  *a1 = v3;
  return sub_18923CDC4;
}

id UIBackgroundConfiguration.backgroundInsets.setter(double a1, double a2, double a3, double a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    v11 = *(v10 + 16);
  }

  else
  {
    [*(v10 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_18923EC58();
    swift_dynamicCast();
    v11 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
    v12 = swift_allocObject();
    *(v12 + 16) = v14;

    *v4 = v12;
  }

  return [v11 setBackgroundInsets_];
}

void (*UIBackgroundConfiguration.backgroundInsets.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  [*(*v1 + 16) backgroundInsets];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  return sub_18923CF94;
}

void sub_18923CF94(double **a1)
{
  v1 = *a1;
  UIBackgroundConfiguration.backgroundInsets.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

id (*UIBackgroundConfiguration.edgesAddingLayoutMarginsToBackgroundInsets.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) edgesAddingLayoutMarginsToBackgroundInsets];
  return sub_18923D050;
}

id UIBackgroundConfiguration.backgroundColor.getter()
{
  v1 = [*(*v0 + 16) backgroundColor];

  return v1;
}

void (*UIBackgroundConfiguration.backgroundColor.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) backgroundColor];
  return sub_18923D110;
}

void sub_18923D11C(uint64_t *a1, char a2, SEL *a3)
{
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    sub_188BC7090(v6, a3);

    v5 = v4;
  }

  else
  {
    sub_188BC7090(*a1, a3);
    v5 = v6;
  }
}

void *UIBackgroundConfiguration.backgroundColorTransformer.getter@<X0>(id (**a1)(uint64_t a1)@<X8>)
{
  result = [*(*v1 + 16) backgroundColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188F478CC;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = result;
  return result;
}

void *sub_18923D214@<X0>(uint64_t a1@<X0>, id (**a2)(uint64_t)@<X8>)
{
  result = [*(*a1 + 16) backgroundColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

void (*UIBackgroundConfiguration.backgroundColorTransformer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) backgroundColorTransformer];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188F4839C;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_18923D368;
}

id UIBackgroundConfiguration.visualEffect.getter()
{
  v1 = [*(*v0 + 16) visualEffect];

  return v1;
}

void (*UIBackgroundConfiguration.visualEffect.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) visualEffect];
  return sub_18923D420;
}

id UIBackgroundConfiguration.image.getter()
{
  v1 = [*(*v0 + 16) image];

  return v1;
}

void UIBackgroundConfiguration.image.setter(void *a1)
{
  sub_188BC7090(a1, &selRef_setImage_);
}

void (*UIBackgroundConfiguration.image.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) image];
  return sub_18923D508;
}

id (*UIBackgroundConfiguration.imageContentMode.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) imageContentMode];
  return sub_18923D58C;
}

id UIBackgroundConfiguration.strokeColor.getter()
{
  v1 = [*(*v0 + 16) strokeColor];

  return v1;
}

void UIBackgroundConfiguration.strokeColor.setter(void *a1)
{
  sub_188BC7090(a1, &selRef_setStrokeColor_);
}

void (*UIBackgroundConfiguration.strokeColor.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) strokeColor];
  return sub_18923D68C;
}

void *UIBackgroundConfiguration.strokeColorTransformer.getter@<X0>(id (**a1)(uint64_t)@<X8>)
{
  result = [*(*v1 + 16) strokeColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = result;
  return result;
}

void *sub_18923D710@<X0>(uint64_t a1@<X0>, id (**a2)(uint64_t)@<X8>)
{
  result = [*(*a1 + 16) strokeColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

void sub_18923D788(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = *a1;
  v9 = a1[1];
  sub_188D738F4(*a1);
  v10 = sub_188D0D804();
  v11 = v10;
  if (v8)
  {
    v15[4] = v8;
    v15[5] = v9;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_188BC2240;
    v15[3] = a5;
    v12 = _Block_copy(v15);
    v13 = v11;
  }

  else
  {
    v14 = v10;
    v12 = 0;
  }

  [v11 *a6];
  _Block_release(v12);
}

void sub_18923D87C(uint64_t *a1, uint64_t a2, SEL *a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_188D0D804();
  v8 = v7;
  if (v5)
  {
    v12[4] = v5;
    v12[5] = v6;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_188BC2240;
    v12[3] = a2;
    v9 = _Block_copy(v12);
    v10 = v8;
  }

  else
  {
    v11 = v7;
    v9 = 0;
  }

  [v8 *a3];
  _Block_release(v9);
}

void (*UIBackgroundConfiguration.strokeColorTransformer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) strokeColorTransformer];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188F4839C;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_18923DA14;
}

void sub_18923DA30(uint64_t a1, char a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  if (a2)
  {
    sub_188D738F4(*(*a1 + 48));
    v10 = sub_188D0D804();
    v11 = v10;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_188BC2240;
      v6[3] = a5;
      v12 = _Block_copy(v6);
      v13 = v11;
    }

    else
    {
      v19 = v10;
      v12 = 0;
    }

    [v11 *a4];
    _Block_release(v12);

    sub_188EB09A0(v6[6], v6[7]);
  }

  else
  {
    v15 = sub_188D0D804();
    v16 = v15;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_188BC2240;
      v6[3] = a3;
      v17 = _Block_copy(v6);
      v18 = v16;
    }

    else
    {
      v20 = v15;
      v17 = 0;
    }

    [v16 *a4];
    _Block_release(v17);
  }

  free(v6);
}

UIColor __swiftcall UIBackgroundConfiguration.resolvedStrokeColor(for:)(UIColor a1)
{
  v2 = [*(*v1 + 16) resolvedStrokeColorForTintColor_];

  v3 = v2;
  result._cachedStyleString = v5;
  result._systemColorName = v4;
  result.super.isa = v3;
  return result;
}

id (*UIBackgroundConfiguration.strokeWidth.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) strokeWidth];
  *a1 = v3;
  return sub_18923DC80;
}

id (*UIBackgroundConfiguration.strokeOutset.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) strokeOutset];
  *a1 = v3;
  return sub_18923DD20;
}

id (*UIBackgroundConfiguration._maskedCorners.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) _maskedCorners];
  return sub_18923DDC0;
}

uint64_t UIBackgroundConfiguration._visualEffectGroupName.getter()
{
  v1 = [*(*v0 + 16) _visualEffectGroupName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18A4A7288();

  return v3;
}

void sub_18923DE50(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(*a1 + 16) _visualEffectGroupName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18A4A7288();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_18923DEBC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_188D0D804();
  v3 = v2;
  if (v1)
  {
    v4 = sub_18A4A7258();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 _setVisualEffectGroupName_];
}

void UIBackgroundConfiguration._visualEffectGroupName.setter(uint64_t a1, uint64_t a2)
{
  v3 = sub_188D0D804();
  v4 = v3;
  if (a2)
  {
    v5 = sub_18A4A7258();
  }

  else
  {
    v5 = 0;
  }

  [v3 _setVisualEffectGroupName_];
}

void (*UIBackgroundConfiguration._visualEffectGroupName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [*(*v1 + 16) _visualEffectGroupName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18A4A7288();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_18923E068;
}

void sub_18923E068(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    v3 = sub_188D0D804();
    v6 = v3;
    if (v2)
    {
      v4 = sub_18A4A7258();

      v3 = v6;
    }

    else
    {
      v4 = 0;
    }

    [v3 _setVisualEffectGroupName_];
  }

  else
  {
    v6 = sub_188D0D804();
    v5 = v6;
    if (v2)
    {
      v4 = sub_18A4A7258();
    }

    else
    {
      v4 = 0;
    }

    [v6 _setVisualEffectGroupName_];
  }
}

unint64_t UIBackgroundConfiguration._visualEffectAllowsTransparentBlurring.getter()
{
  result = [*(*v0 + 16) _visualEffectblurClippingMode];
  if (result <= 2)
  {
    return 1u >> (result & 7);
  }

  __break(1u);
  return result;
}

id UIBackgroundConfiguration._visualEffectblurClippingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [*(*v1 + 16) _visualEffectblurClippingMode];
  if (result > 2)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id UIBackgroundConfiguration._visualEffectblurClippingMode.setter(unsigned __int8 *a1)
{
  v2 = *a1;
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
    sub_18923EC58();
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 _setVisualEffectblurClippingMode_];
}

uint64_t (*UIBackgroundConfiguration._visualEffectAllowsTransparentBlurring.modify(uint64_t a1))()
{
  *a1 = v1;
  result = [*(*v1 + 16) _visualEffectblurClippingMode];
  if (!result)
  {
    *(a1 + 8) = 1;
    return sub_18923E3A0;
  }

  if (result == 1)
  {
    *(a1 + 8) = 0;
    return sub_18923EDAC;
  }

  if (result == 2)
  {
    *(a1 + 8) = 0;
    return sub_18923EDAC;
  }

  __break(1u);
  return result;
}

id sub_18923E3A4(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = (*(a1 + 8) & 1) == 0;
    v2 = &v4;
  }

  else
  {
    v5 = (*(a1 + 8) & 1) == 0;
    v2 = &v5;
  }

  return UIBackgroundConfiguration._visualEffectblurClippingMode.setter(v2);
}

id (*UIBackgroundConfiguration._visualEffectblurClippingMode.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  result = [*(*v1 + 16) _visualEffectblurClippingMode];
  if (result > 2)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = result;
    return sub_18923E464;
  }

  return result;
}

id sub_18923E464(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return UIBackgroundConfiguration._visualEffectblurClippingMode.setter(v2);
}

void UIBackgroundConfiguration.shadowProperties.getter(_OWORD *a1@<X8>)
{
  v3 = [*(*v1 + 16) shadowProperties];
  v4 = &v3[OBJC_IVAR___UIShadowProperties__backingProperties];
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = *(v4 + 3);
  v11[2] = *(v4 + 2);
  v11[3] = v7;
  v11[0] = v5;
  v11[1] = v6;
  v8 = *(v4 + 1);
  *a1 = *v4;
  a1[1] = v8;
  v9 = *(v4 + 3);
  a1[2] = *(v4 + 2);
  a1[3] = v9;
  sub_188BFAE70(v11, v10);
}

double sub_18923E550@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = [*(*a1 + 16) shadowProperties];
  v4 = &v3[OBJC_IVAR___UIShadowProperties__backingProperties];
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = *(v4 + 2);
  v15 = *(v4 + 3);
  v13 = v6;
  v14 = v7;
  v12 = v5;
  sub_188BFAE70(&v12, v11);

  v8 = v13;
  *a2 = v12;
  a2[1] = v8;
  result = *&v14;
  v10 = v15;
  a2[2] = v14;
  a2[3] = v10;
  return result;
}

void sub_18923E600(__int128 *a1)
{
  v1 = a1[1];
  v15 = *a1;
  v16 = v1;
  v2 = a1[3];
  v17 = a1[2];
  v18 = v2;
  sub_188BFAE70(&v15, v19);
  v3 = sub_188D0D804();
  v4 = objc_allocWithZone(UIShadowProperties);
  v5 = v3;
  v6 = [v4 init];
  v7 = &v6[OBJC_IVAR___UIShadowProperties__backingProperties];
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 3);
  v19[2] = *(v7 + 2);
  v19[3] = v10;
  v19[0] = v8;
  v19[1] = v9;
  v11 = v15;
  v12 = v16;
  v13 = v18;
  *(v7 + 2) = v17;
  *(v7 + 3) = v13;
  *v7 = v11;
  *(v7 + 1) = v12;
  v14 = v6;
  sub_188D0D8D0(v19);

  [v5 _setShadowProperties_];
}

void UIBackgroundConfiguration.shadowProperties.setter(_OWORD *a1)
{
  v2 = sub_188D0D804();
  v3 = objc_allocWithZone(UIShadowProperties);
  v4 = v2;
  v5 = [v3 init];
  v6 = &v5[OBJC_IVAR___UIShadowProperties__backingProperties];
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = *(v6 + 3);
  v13[2] = *(v6 + 2);
  v13[3] = v9;
  v13[0] = v7;
  v13[1] = v8;
  v10 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v10;
  v11 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v11;
  v12 = v5;
  sub_188D0D8D0(v13);

  [v4 _setShadowProperties_];
}

uint64_t UIBackgroundConfiguration.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

uint64_t UIBackgroundConfiguration.customMirror.getter()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v10 - v6;
  v10[1] = *v0;
  v10[0] = MEMORY[0x1E69E7CC0];
  v8 = sub_18A4A8908();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220);
  sub_188E32958();
  return sub_18A4A8928();
}

uint64_t sub_18923EA90()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v10 - v6;
  v10[1] = *v0;
  v10[0] = MEMORY[0x1E69E7CC0];
  v8 = sub_18A4A8908();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220);
  sub_188E32958();
  return sub_18A4A8928();
}

unint64_t sub_18923EC58()
{
  result = qword_1ED48BEA8;
  if (!qword_1ED48BEA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED48BEA8);
  }

  return result;
}

unint64_t sub_18923ECA8()
{
  result = qword_1EA941180;
  if (!qword_1EA941180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA941180);
  }

  return result;
}

unint64_t sub_18923ED00()
{
  result = qword_1EA941188;
  if (!qword_1EA941188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA941188);
  }

  return result;
}

id keypath_setTm_3(uint64_t a1, id *a2)
{
  if (*a1)
  {
    v2 = *(*a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return [*a2 setBackgroundConfiguration_];
}

id getTUIPressAndHoldViewClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_968;
  v7 = _MergedGlobals_968;
  if (!_MergedGlobals_968)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIPressAndHoldViewClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getTUIPressAndHoldViewClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18923EF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTUIPressAndHoldViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49C4E8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E70F2F40;
    v8 = 0;
    qword_1ED49C4E8 = _sl_dlopen();
  }

  if (!qword_1ED49C4E8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIPressAndHoldPopoverController.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUIPressAndHoldView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIPressAndHoldViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIPressAndHoldPopoverController.m" lineNumber:20 description:{@"Unable to find class %s", "TUIPressAndHoldView"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_968 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextInputUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49C4E8 = result;
  return result;
}

void sub_189243E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getTUIEmojiSearchInputViewControllerClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIEmojiSearchInputViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIEmojiSearchInputViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIEmojiSearchInputViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiPopoverController.m" lineNumber:38 description:{@"Unable to find class %s", "TUIEmojiSearchInputViewController"}];

    __break(1u);
  }
}

uint64_t __TextInputUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  TextInputUILibraryCore_frameworkLibrary = result;
  return result;
}

void __getTUIEmojiSearchTextFieldClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIEmojiSearchTextField");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIEmojiSearchTextFieldClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIEmojiSearchTextFieldClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardEmojiPopoverController.m" lineNumber:37 description:{@"Unable to find class %s", "TUIEmojiSearchTextField"}];

    __break(1u);
  }
}

void sub_1892475C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVAssetClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAsset");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_3 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVAssetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIContinuousPathIntroductionView.m" lineNumber:26 description:{@"Unable to find class %s", "AVAsset"}];

    __break(1u);
  }
}

void *AVFoundationLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E70F2FE8;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIContinuousPathIntroductionView.m" lineNumber:21 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AVFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

void __getAVPlayerItemClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVPlayerItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED499F70 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVPlayerItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIContinuousPathIntroductionView.m" lineNumber:24 description:{@"Unable to find class %s", "AVPlayerItem"}];

    __break(1u);
  }
}

void __getAVQueuePlayerClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVQueuePlayer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED499F78 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVQueuePlayerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIContinuousPathIntroductionView.m" lineNumber:25 description:{@"Unable to find class %s", "AVQueuePlayer"}];

    __break(1u);
  }
}

void __getAVPlayerLooperClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVPlayerLooper");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED499F80 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVPlayerLooperClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIContinuousPathIntroductionView.m" lineNumber:23 description:{@"Unable to find class %s", "AVPlayerLooper"}];

    __break(1u);
  }
}

void __getAVAudioSessionClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED499F88 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVAudioSessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIContinuousPathIntroductionView.m" lineNumber:27 description:{@"Unable to find class %s", "AVAudioSession"}];

    __break(1u);
  }
}

void *__getAVAudioSessionCategoryAmbientSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVAudioSessionCategoryAmbient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED499F90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVPlayerLayerClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVPlayerLayer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED499F98 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVPlayerLayerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIContinuousPathIntroductionView.m" lineNumber:22 description:{@"Unable to find class %s", "AVPlayerLayer"}];

    __break(1u);
  }
}

void sub_189248774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189249980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189249BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL ExtendAttributedRangeForAttribute(void *a1, NSUInteger location, NSUInteger length, void *a4, NSUInteger *a5)
{
  v9 = a1;
  v10 = a4;
  v15.location = 0;
  v15.length = 0;
  v11 = [v9 attribute:v10 atIndex:location effectiveRange:0];
  if (v11)
  {
    v12 = [v9 attribute:v10 atIndex:location longestEffectiveRange:&v15 inRange:{0, objc_msgSend(v9, "length")}];
    v16.location = location;
    v16.length = length;
    v13 = NSUnionRange(v15, v16);
    location = v13.location;
    length = v13.length;
  }

  if (a5)
  {
    *a5 = location;
    a5[1] = length;
  }

  return v11 != 0;
}

uint64_t _UIAccessibilityInitialize()
{
  _kUIAccessibilityStartedWithInitialization = 1;
  result = [UIApp _accessibilityInit];
  _kUIAccessibilityStartedWithInitialization = 0;
  return result;
}

id _UIAccessibilityContentSizeCategoryName()
{
  v0 = _AXSCopyPreferredContentSizeCategoryName();

  return v0;
}

void UIAccessibilityRegisterGestureConflictWithZoom(void)
{
  if (_AXSZoomTouchEnabled())
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    [v3 setObject:_UIMainBundleIdentifier() forKey:@"BundleID"];
    v0 = [MEMORY[0x1E696AAE8] mainBundle];
    v1 = [v0 objectForInfoDictionaryKey:*MEMORY[0x1E695E120]];
    if (v1 || (v1 = [v0 objectForInfoDictionaryKey:*MEMORY[0x1E695E4F8]]) != 0 || (v1 = objc_msgSend(v0, "objectForInfoDictionaryKey:", *MEMORY[0x1E695E4E8])) != 0 || (v1 = objc_msgSend(v0, "bundleIdentifier")) != 0)
    {
      [v3 setObject:v1 forKey:@"AppName"];
    }

    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:UIAXZoomRegisterConflict object:0 userInfo:v3];
  }
}

void UIAccessibilityZoomFocusChanged(UIAccessibilityZoomType type, CGRect frame, UIView *view)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (_AXSZoomTouchEnabled())
  {
    [(UIView *)view bounds];
    v11 = v10 < 1.0 || v9 < 1.0;
    if (!v11 && ![(UIView *)view isHiddenOrHasHiddenAncestor])
    {
      if (view)
      {
        v12 = [(UIView *)view window];
        [(UIView *)view convertRect:v12 toView:x, y, width, height];
        x = v13;
        y = v14;
        width = v15;
        height = v16;
      }

      else
      {
        v12 = 0;
      }

      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      if (!CGRectIsEmpty(v20))
      {
        v18 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
        v21.origin.x = x;
        v21.origin.y = y;
        v21.size.width = width;
        v21.size.height = height;
        [v18 setObject:NSStringFromRect(v21) forKey:@"frame"];
        [v18 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", type), @"type"}];
        if (v12)
        {
          [v18 setObject:v12 forKey:@"window"];
        }

        v17 = [MEMORY[0x1E696AD88] defaultCenter];
        [v17 postNotificationName:UIAXZoomFocusChangedNotification object:0 userInfo:v18];
      }
    }
  }
}

void _UIAccessibilityHandleVisualAlert()
{
  if (_AXSVisualAlertEnabled())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AXVisualAlert", 0, 0, 1u);
  }
}

double _UIAccessibilityDepthAdjustment(void *a1, double a2)
{
  if (a1 && [objc_msgSend(a1 "traitCollection")] == 6 && _AXSReduceMotionEnabled())
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v3 = 0.2;
    if (_UIInternalPreferencesRevisionVar >= 1)
    {
      v5 = _UIInternalPreference_UIReduceMotionZOffsetMultiplier;
      if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_UIReduceMotionZOffsetMultiplier)
      {
        v6 = _UIInternalPreferencesRevisionVar;
        while (v6 >= v5)
        {
          _UIInternalPreferenceSync(v6, &_UIInternalPreference_UIReduceMotionZOffsetMultiplier, @"UIReduceMotionZOffsetMultiplier", _UIInternalPreferenceUpdateDouble);
          v5 = _UIInternalPreference_UIReduceMotionZOffsetMultiplier;
          if (v6 == _UIInternalPreference_UIReduceMotionZOffsetMultiplier)
          {
            v3 = 0.2;
            return v3 * a2;
          }
        }

        v3 = *&qword_1EA95E0D8;
      }
    }

    return v3 * a2;
  }

  return a2;
}

uint64_t _preferredFontSizeChange()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  v1 = UIApp;

  return [v0 postNotificationName:@"UIAccessibilityLargeTextChangedNotification" object:v1];
}

uint64_t _accessibilityQuickSpeakStatusChanged(uint64_t a1, void *a2)
{
  result = _AXSQuickSpeakEnabled();
  if (result)
  {

    return [a2 _accessibilitySetUpQuickSpeak];
  }

  return result;
}

uint64_t _axPrefEnabledChange(int a1, int a2, CFTypeRef cf1)
{
  if (CFEqual(cf1, *MEMORY[0x1E69E4F80]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityVoiceOverTouchStatusChanged";
LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4E20]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityMonoAudioStatusChanged";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4CD0]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityClosedCaptioningChanged";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4DD8]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityInvertColorsChanged";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4D50]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityGrayscaleStatusDidChangeNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4C78]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilitySwitchControlStatusDidChangeNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4E80]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilitySpeakSelectionStatusDidChangeNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4EF8]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilitySpeakScreenStatusDidChangeNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4C60]))
  {
    result = UIAccessibilityIsGuidedAccessEnabled();
    if (!result)
    {
      return result;
    }

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityAssistiveTouchStatusDidChangeNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4ED8]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityShakeToUndoDidChangeNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4D10]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityBoldTextStatusDidChangeNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4CB8]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityCarPlayBoldTextStatusDidChangeNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4EB8]))
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityReduceMotionChangedNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4EC8]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityPrefersCrossFadeTransitionsStatusDidChangeNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4EB0]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityVideoAutoplayStatusDidChangeNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4D00]))
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityEnhanceBackgroundContrastChangedNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4CE0]))
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityDarkenSystemColorsChangedNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4DA0]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityHearingDevicePairedEarDidChangeNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4CF0]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityShouldDifferentiateWithoutColorDidChangeNotification";
    goto LABEL_17;
  }

  v8 = MEMORY[0x1E69E4CB0];
  if (CFEqual(cf1, *MEMORY[0x1E69E4CB0]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *v8))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityButtonShapesChangedNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4ED0]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityWhitePointStatusChangedNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4D18]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityForceTouchStatusChangedNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4D20]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityForceTouchSensitivityChangedNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4DA8]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityHighContrastFocusIndicatorChangedNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4DD0]))
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityOnOffSwitchLabelsChangedNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4F50]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilityUseDarkerKeyboardNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4F58]))
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = @"UIAccessibilitySingleSystemColorChangedNotification";
    goto LABEL_17;
  }

  if (CFEqual(cf1, *MEMORY[0x1E69E4D28]))
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v9 = MEMORY[0x1E696AD88];
  }

  else
  {
    result = CFEqual(cf1, *MEMORY[0x1E69E4C50]);
    if (!result)
    {
      return result;
    }

    v9 = MEMORY[0x1E696AD88];
  }

  v4 = [v9 defaultCenter];
  v5 = @"_UIFocusBehaviorDidChangeNotification";
  v6 = UIApp;
LABEL_18:

  return [v4 postNotificationName:v5 object:v6];
}

id UIAccessibilityFocusedElement(UIAccessibilityAssistiveTechnologyIdentifier assistiveTechnologyIdentifier)
{
  if (__UIAccessibilityFocusedElementCallback)
  {
    return __UIAccessibilityFocusedElementCallback(assistiveTechnologyIdentifier);
  }

  else
  {
    return 0;
  }
}

CGRect UIAccessibilityConvertFrameToScreenCoordinates(CGRect rect, UIView *view)
{
  if (__UIAccessibilityConvertFrameCallback)
  {
    __UIAccessibilityConvertFrameCallback(view, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  }

  return rect;
}

UIBezierPath *__cdecl UIAccessibilityConvertPathToScreenCoordinates(UIBezierPath *path, UIView *view)
{
  if (__UIAccessibilityConvertPathCallback)
  {
    return __UIAccessibilityConvertPathCallback(path, view);
  }

  return path;
}

UIBezierPath *UIAccessibilityConvertPathToScreenCoordinatesWithFallback(void *a1, uint64_t a2)
{
  v4 = __UIAccessibilityConvertPathCallback;
  if (__UIAccessibilityConvertPathCallback)
  {

    return v4();
  }

  else
  {
    v6[5] = v2;
    v6[6] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __UIAccessibilityConvertPathToScreenCoordinatesWithFallback_block_invoke;
    v6[3] = &unk_1E70F3190;
    v6[4] = a2;
    return _UIAccessibilityPathForPathUIKitFallback(a1, v6);
  }
}

UIBezierPath *_UIAccessibilityPathForPathUIKitFallback(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = [a1 CGPath];
  Mutable = CGPathCreateMutable();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___UIAccessibilityPathForPathUIKitFallback_block_invoke;
  v7[3] = &unk_1E70F3268;
  v7[4] = a2;
  v7[5] = Mutable;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  info[0] = MEMORY[0x1E69E9820];
  info[1] = 3221225472;
  info[2] = ___UIAX_CGPathEnumerateElementsUsingBlock_block_invoke;
  info[3] = &unk_1E70F3290;
  info[4] = v7;
  info[5] = v10;
  info[6] = v9;
  CGPathApply(v3, info, _UIAX_CGPathEnumerationIteration);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v10, 8);
  v5 = [UIBezierPath bezierPathWithCGPath:Mutable];
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v5;
}

void sub_18924C494(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __UIAccessibilityConvertPathToScreenCoordinatesWithFallback_block_invoke(uint64_t a1, double a2, double a3)
{
  v6 = [*(a1 + 32) window];
  result = [*(a1 + 32) convertPoint:v6 toView:{a2, a3}];
  if (v6)
  {

    return [v6 convertPoint:0 toWindow:?];
  }

  return result;
}

uint64_t UIAccessibilityConvertAccessibilityPathToViewCoordinates()
{
  if (__UIAccessibilityConvertAccessibilityPathToViewCallback)
  {
    return __UIAccessibilityConvertAccessibilityPathToViewCallback();
  }

  return result;
}

UIBezierPath *UIAccessibilityConvertAccessibilityPathToViewCoordinatesWithFallback(void *a1, uint64_t a2)
{
  v4 = __UIAccessibilityConvertAccessibilityPathToViewCallback;
  if (__UIAccessibilityConvertAccessibilityPathToViewCallback)
  {

    return v4();
  }

  else
  {
    v6[5] = v2;
    v6[6] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __UIAccessibilityConvertAccessibilityPathToViewCoordinatesWithFallback_block_invoke;
    v6[3] = &unk_1E70F3190;
    v6[4] = a2;
    return _UIAccessibilityPathForPathUIKitFallback(a1, v6);
  }
}

uint64_t __UIAccessibilityConvertAccessibilityPathToViewCoordinatesWithFallback_block_invoke(uint64_t a1, double a2, double a3)
{
  v6 = [*(a1 + 32) window];
  [v6 convertPoint:0 fromWindow:{a2, a3}];
  v7 = *(a1 + 32);

  return [v7 convertPoint:v6 fromView:?];
}

BOOL UIAccessibilityIsGuidedAccessEnabled(void)
{
  if (dyld_program_sdk_at_least())
  {
    if (pthread_main_np() != 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v2 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v2, OS_LOG_TYPE_FAULT, "Unsupported use of UIKit API off the main thread: UIAccessibilityIsGuidedAccessEnabled()", buf, 2u);
        }
      }

      else
      {
        v1 = *(__UILogGetCategoryCachedImpl("Assert", &UIAccessibilityIsGuidedAccessEnabled___s_category) + 8);
        if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
        {
          *v3 = 0;
          _os_log_impl(&dword_188A29000, v1, OS_LOG_TYPE_ERROR, "Unsupported use of UIKit API off the main thread: UIAccessibilityIsGuidedAccessEnabled()", v3, 2u);
        }
      }
    }

    +[UIApplication _accessibilityLoadSettingsLoaderIfNeeded];
  }

  return [MEMORY[0x1E69E58C0] __accessibilityGuidedAccessStateEnabled];
}

UIGuidedAccessRestrictionState UIGuidedAccessRestrictionStateForIdentifier(NSString *restrictionIdentifier)
{
  if (dyld_program_sdk_at_least())
  {
    if (pthread_main_np() != 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v4 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Unsupported use of UIKit API off the main thread: UIGuidedAccessRestrictionStateForIdentifier()", buf, 2u);
        }
      }

      else
      {
        v3 = *(__UILogGetCategoryCachedImpl("Assert", &UIGuidedAccessRestrictionStateForIdentifier___s_category) + 8);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          *v5 = 0;
          _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Unsupported use of UIKit API off the main thread: UIGuidedAccessRestrictionStateForIdentifier()", v5, 2u);
        }
      }
    }

    +[UIApplication _accessibilityLoadSettingsLoaderIfNeeded];
  }

  return [MEMORY[0x1E69E58C0] __accessibilityGuidedAccessRestrictionStateForIdentifier:restrictionIdentifier];
}

void UIAccessibilityRequestGuidedAccessSession(BOOL enable, void *completionHandler)
{
  v3 = enable;
  if (dyld_program_sdk_at_least())
  {
    if (pthread_main_np() != 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v5 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Unsupported use of UIKit API off the main thread: UIAccessibilityRequestGuidedAccessSession()", buf, 2u);
        }
      }

      else
      {
        v4 = *(__UILogGetCategoryCachedImpl("Assert", &UIAccessibilityRequestGuidedAccessSession___s_category) + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *v6 = 0;
          _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Unsupported use of UIKit API off the main thread: UIAccessibilityRequestGuidedAccessSession()", v6, 2u);
        }
      }
    }

    +[UIApplication _accessibilityLoadSettingsLoaderIfNeeded];
  }

  [MEMORY[0x1E69E58C0] __accessibilityRequestGuidedAccessSession:v3 completion:completionHandler];
}

BOOL UIAccessibilityIsAssistiveTouchRunning(void)
{
  if (dyld_program_sdk_at_least() && pthread_main_np() != 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v2 = __UIFaultDebugAssertLog();
      IsGuidedAccessEnabled = os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
      if (!IsGuidedAccessEnabled)
      {
        return IsGuidedAccessEnabled;
      }

      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v2, OS_LOG_TYPE_FAULT, "Unsupported use of UIKit API off the main thread: UIAccessibilityIsAssistiveTouchRunning()", buf, 2u);
    }

    else
    {
      v1 = *(__UILogGetCategoryCachedImpl("Assert", &UIAccessibilityIsAssistiveTouchRunning___s_category) + 8);
      IsGuidedAccessEnabled = os_log_type_enabled(v1, OS_LOG_TYPE_ERROR);
      if (!IsGuidedAccessEnabled)
      {
        return IsGuidedAccessEnabled;
      }

      *v4 = 0;
      _os_log_impl(&dword_188A29000, v1, OS_LOG_TYPE_ERROR, "Unsupported use of UIKit API off the main thread: UIAccessibilityIsAssistiveTouchRunning()", v4, 2u);
    }

    LOBYTE(IsGuidedAccessEnabled) = 0;
  }

  else
  {
    IsGuidedAccessEnabled = UIAccessibilityIsGuidedAccessEnabled();
    if (IsGuidedAccessEnabled)
    {
      LOBYTE(IsGuidedAccessEnabled) = _AXSAssistiveTouchEnabled() != 0;
    }
  }

  return IsGuidedAccessEnabled;
}

UIAccessibilityHearingDeviceEar UIAccessibilityHearingDevicePairedEar(void)
{
  result = _AXSHearingDevicePairedEars();
  if ((result & 0xFFFFFFFFFFFFFFFBLL) != 2 && result != 4)
  {
    return 0;
  }

  return result;
}

UIColor *_UIAccessibilitySingleSystemColor()
{
  _AXSNamedSingleSystemColor();
  _AXSSingleSystemColorValues();
  return [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
}

void _UIAccessibilityReportNilNameErroneouslyProvided(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Accessibility", &_UIAccessibilityReportNilNameErroneouslyProvided___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "An instance of %@ was erroneously provided a nil name or attributed name. This is a programming error and may become a hard error in a future release. Break on _UIAccessibilityReportNilNameErroneouslyProvided to debug.", &v3, 0xCu);
  }
}

void sub_18924D334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAXColorStringForColorSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49C510)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AccessibilityUIUtilitiesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E70F32B0;
    v8 = 0;
    qword_1ED49C510 = _sl_dlopen();
  }

  v2 = qword_1ED49C510;
  if (!qword_1ED49C510)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AccessibilityUIUtilitiesLibrary(void)"];
    v3 = [a1 handleFailureInFunction:v5 file:@"UIAccessibility.m" lineNumber:62 description:{@"%s", v6[0]}];
    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "AXColorStringForColor");
  *(*(a1[4] + 8) + 24) = result;
  off_1ED49C508 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __AccessibilityUIUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49C510 = result;
  return result;
}

void _UITransformEventCommonInit(void *a1)
{
  v1 = MEMORY[0x1E696AD18];
  v6 = a1;
  v2 = [v1 strongToStrongObjectsMapTable];
  v3 = *(v6 + 16);
  *(v6 + 16) = v2;

  v4 = MEMORY[0x1E695EFD0];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *(v6 + 152) = *MEMORY[0x1E695EFD0];
  *(v6 + 168) = v5;
  *(v6 + 184) = *(v4 + 32);
}

void sub_1892514F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

UIView *makeSpacerView()
{
  v0 = [UIView alloc];
  v1 = [(UIView *)v0 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v2 = [(UIView *)v1 widthAnchor];
  v3 = [v2 constraintEqualToConstant:1.0];
  [v3 setActive:1];

  [(UIView *)v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v1;
}

double _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection(void *a1)
{
  v2 = a1;
  v3 = v2;
  if (!v2 || ([v2 preferredContentSizeCategory], v1 = objc_claimAutoreleasedReturnValue(), v1 == @"_UICTContentSizeCategoryUnspecified"))
  {
    v4 = [UIApp preferredContentSizeCategory];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = [v3 preferredContentSizeCategory];
  }

  [v3 displayScale];
  if (v5 != 0.0)
  {
    [v3 displayScale];
    v7 = v6;
    goto LABEL_8;
  }

LABEL_7:
  v8 = [objc_opt_self() mainScreen];
  [v8 scale];
  v7 = v9;

LABEL_8:
  v10 = 1.5;
  if ([v4 isEqualToString:@"UICTContentSizeCategoryAccessibilityM"])
  {
    goto LABEL_16;
  }

  if ([v4 isEqualToString:@"UICTContentSizeCategoryAccessibilityL"])
  {
    v11 = 2.0;
    v12 = v7 <= 2.0;
    v13 = 1.8;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"UICTContentSizeCategoryAccessibilityXL"])
  {
    v11 = 2.0;
    v12 = v7 <= 2.0;
    v13 = 2.2;
LABEL_13:
    if (v12)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }

    goto LABEL_16;
  }

  v10 = 2.5;
  if (([v4 isEqualToString:@"UICTContentSizeCategoryAccessibilityXXL"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"UICTContentSizeCategoryAccessibilityXXXL"])
    {
      v10 = 3.0;
    }

    else
    {
      v10 = 1.0;
    }
  }

LABEL_16:

  return v10;
}

id formatDate(void *a1)
{
  v1 = qword_1ED49C520;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED49C520, &__block_literal_global_3);
  }

  v3 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [_MergedGlobals_970 setTimeZone:v3];

  v4 = [_MergedGlobals_970 stringFromDate:v2];

  return v4;
}

void sub_189256B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __formatDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = _MergedGlobals_970;
  _MergedGlobals_970 = v0;

  v2 = _MergedGlobals_970;

  return [v2 setFormatOptions:4083];
}

double unionRectValues(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v15 + 1) + 8 * v9) CGRectValue];
        v23.origin.x = v10;
        v23.origin.y = v11;
        v23.size.width = v12;
        v23.size.height = v13;
        v21.origin.x = x;
        v21.origin.y = y;
        v21.size.width = width;
        v21.size.height = height;
        v22 = CGRectUnion(v21, v23);
        x = v22.origin.x;
        y = v22.origin.y;
        width = v22.size.width;
        height = v22.size.height;
        ++v9;
      }

      while (v7 != v9);
      v7 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return x;
}

__CFString *_NSStringFromUIEventDeferringScope(uint64_t a1)
{
  v1 = &stru_1EFB14550;
  if (a1 == 1)
  {
    v1 = @"remote";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"local";
  }
}

void UIGuidedAccessConfigureAccessibilityFeatures(UIGuidedAccessAccessibilityFeature features, BOOL enabled, void *completion)
{
  v3 = enabled;
  v5 = completion;
  v6 = v5;
  if (GuidedAccessConfigureAccessibilityFeaturesEnabledCallback)
  {
    GuidedAccessConfigureAccessibilityFeaturesEnabledCallback(features, v3, v5);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __UIGuidedAccessConfigureAccessibilityFeatures_block_invoke;
    block[3] = &unk_1E70F0F78;
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __UIGuidedAccessConfigureAccessibilityFeatures_block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = _UINSLocalizedStringWithDefaultValue(@"The application is not locked into Single App Mode.", @"The application is not locked into Single App Mode.");
    v3 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A578];
    v7[0] = v2;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v5 = [v3 errorWithDomain:@"UIGuidedAccessErrorDomain" code:0 userInfo:v4];

    (*(*(a1 + 32) + 16))();
  }
}

Class __getLPLinkViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED499FB8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __LinkPresentationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E70F36B0;
    v8 = 0;
    qword_1ED499FB8 = _sl_dlopen();
  }

  if (!qword_1ED499FB8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkPresentationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIDocumentMovedPopoverViewController.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("LPLinkView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPLinkViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIDocumentMovedPopoverViewController.m" lineNumber:17 description:{@"Unable to find class %s", "LPLinkView"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_3_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LinkPresentationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED499FB8 = result;
  return result;
}

void sub_18925F700(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1892619DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189262310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189264344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _UIEventHIDHitTestPointForChild(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  IntegerValue = IOHIDEventGetIntegerValue();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v1 pathAttributes];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      if ([v8 pathIndex] == IntegerValue)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = v8;

    if (!v9)
    {
      goto LABEL_12;
    }

    [v9 hitTestLocationX];
    v11 = v10;
    [v9 hitTestLocationY];
  }

  else
  {
LABEL_9:

LABEL_12:
    IOHIDEventGetFloatValue();
    v11 = v12;
    IOHIDEventGetFloatValue();
    v9 = 0;
  }

  return v11;
}

void sub_1892648CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _RestoreKeyWindow()
{
  if (!+[UIWindow _applicationKeyWindow])
  {
    v2 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1];
    v3 = [v2 count] - 1;
    while ((v3 & 0x8000000000000000) == 0)
    {
      v4 = [v2 objectAtIndex:v3--];
      if (([v4 _isTextEffectsWindow] & 1) == 0)
      {

        return [v4 makeKey:0];
      }
    }
  }

  v0 = [+[UIWindow _applicationKeyWindow](UIWindow "_applicationKeyWindow")];

  return [v0 _windowBecameKey];
}

uint64_t _shouldUseSolariumDesign(void *a1)
{
  v1 = [a1 action];
  v2 = [v1 titleAlignment];

  LODWORD(result) = _UISolariumEnabled();
  if (v2 == 1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void sub_189272978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_189275068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1892752D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189276A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1892795FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL ___dequeueRepresentationViewWithIdenticalAction_block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = [a2 action];
  *a4 = v6 == *(a1 + 32);

  return *a4;
}

void sub_18927CF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18927D258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18927D83C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_18927DDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18927EC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void __newSpringLoadingInteractionForRepView_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 view];
  [v2 invokeInterfaceAction];
}

id constraintWithAnchorRelatedToAnchor(void *a1, uint64_t a2)
{
  if (a2 == 1)
  {
    [a1 constraintGreaterThanOrEqualToAnchor:?];
  }

  else
  {
    [a1 constraintEqualToAnchor:?];
  }
  v2 = ;

  return v2;
}

uint64_t compareConstraintsForInsertionPerformance(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [v3 relation];
    if (v6 < 0)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6;
    }

    if (v7 >= 1)
    {
      v7 = 1;
    }

    v8 = _insertionPerformanceComparisonOfLayoutRelations_ordinal[v7 + 1];
    v9 = [v5 relation];
    if (v9 < 0)
    {
      v10 = -1;
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= 1)
    {
      v10 = 1;
    }

    v11 = _insertionPerformanceComparisonOfLayoutRelations_ordinal[v10 + 1];
    v12 = v8 == v11;
    if (v8 > v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = -1;
    }

    if (v12)
    {
      v14 = v3;
      v15 = v5;
      [v14 priority];
      v17 = v16;
      [v15 priority];
      if (v17 == v18)
      {

        v14 = v14;
        v15 = v15;
        v19 = [v14 firstItem];
        v20 = [v15 firstItem];

        if (v19 == v20)
        {
          v13 = 0;
        }

        else
        {
          v21 = [v14 firstItem];
          v22 = [v15 firstItem];
          if (v21 > v22)
          {
            v13 = -1;
          }

          else
          {
            v13 = 1;
          }
        }
      }

      else
      {
        [v14 priority];
        v25 = v24;
        [v15 priority];
        if (v25 <= v26)
        {
          v13 = 1;
        }

        else
        {
          v13 = -1;
        }
      }
    }
  }

  else
  {
    if (v4)
    {
      v23 = -1;
    }

    else
    {
      v23 = 0;
    }

    if (v3)
    {
      v13 = 1;
    }

    else
    {
      v13 = v23;
    }
  }

  return v13;
}

void sub_189288F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18928FCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1892903B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189290970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189290DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189294F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189296A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

void _UIWindowHostingScenePerformUpdateWithEffectiveSettings(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___UIWindowHostingScenePerformUpdateWithEffectiveSettings_block_invoke;
  v7[3] = &unk_1E70F35B8;
  v8 = v3;
  v9 = v4;
  v5 = v4;
  v6 = v3;
  [UIView performWithoutAnimation:v7];
}

void _UIUpdateSettingsWithOcclusionRects(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  [v6 setApplicationOcclusionRects:a2];
  [v6 setSystemOcclusionRects:v5];
}

void _UIRegionSolveResult::~_UIRegionSolveResult(_UIRegionSolveResult *this)
{
  v2 = (this + 120);
  std::vector<_UIAuxillarySolveResult>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = (this + 96);
  std::vector<_UIAuxillarySolveResult>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void sub_1892A2814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __WritingToolsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49A548 = result;
  return result;
}

uint64_t IsWebBrowserAvailable()
{
  if (qword_1ED49C6C8 != -1)
  {
    dispatch_once(&qword_1ED49C6C8, &__block_literal_global_17);
  }

  if (!qword_1ED49C6C0)
  {
    return 1;
  }

  v0 = [qword_1ED49C6C0 appState];
  v1 = [v0 isRestricted] ^ 1;

  return v1;
}

id getSSReadingListClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_977;
  v7 = _MergedGlobals_977;
  if (!_MergedGlobals_977)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSSReadingListClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getSSReadingListClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1892A70E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1892A7778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *DataDetectorsUILibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DataDetectorsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E70F47C8;
    v6 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = DataDetectorsUILibraryCore_frameworkLibrary;
  if (!DataDetectorsUILibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DataDetectorsUILibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"_UITextItemInteractionHandler.m" lineNumber:38 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSSReadingListClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49C6B8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SafariServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E70F47E0;
    v8 = 0;
    qword_1ED49C6B8 = _sl_dlopen();
  }

  if (!qword_1ED49C6B8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UITextItemInteractionHandler.m" lineNumber:63 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SSReadingList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSReadingListClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UITextItemInteractionHandler.m" lineNumber:64 description:{@"Unable to find class %s", "SSReadingList"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_977 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49C6B8 = result;
  return result;
}

void __IsWebBrowserAvailable_block_invoke()
{
  v0 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.mobilesafari"];
  v1 = qword_1ED49C6C0;
  qword_1ED49C6C0 = v0;

  if (!qword_1ED49C6C0)
  {
    v2 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.safari"];
    v3 = qword_1ED49C6C0;
    qword_1ED49C6C0 = v2;
  }
}

void __getDDContextMenuActionClass_block_invoke(uint64_t a1)
{
  DataDetectorsUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DDContextMenuAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49C6D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDDContextMenuActionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UITextItemInteractionHandler.m" lineNumber:40 description:{@"Unable to find class %s", "DDContextMenuAction"}];

    __break(1u);
  }
}

void *__getkDataDetectorsSourceRectKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary();
  result = dlsym(v2, "kDataDetectorsSourceRectKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49C6D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getDDDetectionControllerClass_block_invoke(uint64_t a1)
{
  DataDetectorsUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DDDetectionController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDDetectionControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDDDetectionControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UITextItemInteractionHandler.m" lineNumber:42 description:{@"Unable to find class %s", "DDDetectionController"}];

    __break(1u);
  }
}

__CFString *_NSStringFromUIPhysicalButtonSource(uint64_t a1)
{
  v1 = &stru_1EFB14550;
  if (a1 == 1)
  {
    v1 = @"accessibility";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"unspecified";
  }
}

__CFString *_NSStringFromUIPhysicalButtonState(unint64_t a1)
{
  if (a1 > 3)
  {
    return &stru_1EFB14550;
  }

  else
  {
    return off_1E70F4860[a1];
  }
}

__CFString *_NSStringFromUIPhysicalButtonBehavior(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_1EFB14550;
  }

  else
  {
    return off_1E70F48B8[a1];
  }
}

uint64_t _UIPhysicalButtonSetForPhysicalButton(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 0;
  }

  else
  {
    return 1 << a1;
  }
}

void sub_1892B1A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___isBusinessChatViewService_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  _MergedGlobals_9_0 = [v0 isEqualToString:@"com.apple.BusinessChatViewService"];
}

uint64_t _UIFocusResponderMovementForPhysicalKeyboardEvent(void *a1, char *a2)
{
  v3 = a1;
  v4 = [v3 _keyCode];
  v5 = [v3 _modifierFlags];
  v6 = v5 & 0xFFFFFFFFFFDEFFFFLL;
  if ([v3 _isKeyDown])
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  v8 = [v3 _pressesForPhase:v7];

  v9 = [v8 anyObject];

  if ((v4 - 81) >= 0xFFFFFFFFFFFFFFFELL && !v6)
  {
    v10 = 0;
    v11 = 1;
    if (!a2)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if ((v4 - 83) >= 0xFFFFFFFFFFFFFFFELL && !v6)
  {
    v10 = 0;
    v11 = 2;
    if (!a2)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v4 > 87)
  {
    if (v4 != 88 && v4 != 158)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v4 == 40)
  {
LABEL_19:
    if (!v6)
    {
      v10 = 0;
      v11 = 4;
      if (!a2)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_20:
    v12 = [v9 key];
    v13 = [v12 characters];
    v14 = [v13 isEqualToString:@"UIKeyInputEscape"];

    v10 = 0;
    if (v14)
    {
      v11 = 5;
    }

    else
    {
      v11 = 0;
    }

    if (a2)
    {
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (v4 != 43)
  {
    goto LABEL_20;
  }

  if ((v5 & 0xFFFFFFFFFFDCFFFFLL) == 0x40000)
  {
    v10 = 1;
  }

  else
  {
    if ((v5 & 0xFFFFFFFFFFDCFFFFLL | 0x20000) != 0x20000)
    {
      v10 = 0;
      v11 = 0;
      if (!a2)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v10 = 0;
  }

  v11 = 3;
  if (a2)
  {
LABEL_30:
    *a2 = v10;
  }

LABEL_31:

  return v11;
}

id _UIAlertControllerEffectivePreferredActionGivenActions(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  if (a4 == 1)
  {
    if (v11)
    {
      v14 = v11;
      goto LABEL_16;
    }

    if (_UISolariumEnabled())
    {
      v14 = 0;
    }

    else
    {
      v14 = v10;
    }
  }

  else if (a4)
  {
    v14 = 0;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (_UISolariumEnabled())
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  v15 = [v12 preferredActionForActions:v9 suggestedPreferredAction:v14];

  v14 = v15;
LABEL_16:

  return v14;
}

uint64_t _UISheetInteractionGestureIsForInteractiveDismiss(void *a1)
{
  v1 = [a1 name];
  v2 = [v1 isEqualToString:@"_UISheetInteractionBackgroundDismissRecognizer"];

  return v2;
}

void sub_1892B78A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1892BF3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1892C0808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _UIHyperAnimatorClasses()
{
  if (qword_1ED49C738 != -1)
  {
    dispatch_once(&qword_1ED49C738, &__block_literal_global_23);
  }

  v1 = _MergedGlobals_982;

  return v1;
}

void sub_1892C1EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t currentAnimationTime()
{
  if (!_UIUpdateCycleMainScheduler || *(_UIUpdateCycleMainScheduler + 568) != 1)
  {
    mach_absolute_time();
  }

  result = UCTimeToSeconds();
  if (*&v1 < *&currentAnimationTime_lastTime)
  {
    v1 = currentAnimationTime_lastTime;
  }

  currentAnimationTime_lastTime = v1;
  return result;
}

void sub_1892C5C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

long double _UIDynamicAnimationStepFrictionOnly(double *a1, uint64_t a2)
{
  v3 = a1[9];
  v4 = pow(v3, a2);
  a1[5] = a1[5] + a1[11] * ((v4 + -1.0) * (v3 * a1[6]) / (v3 + -1.0));
  result = v4 * a1[6];
  a1[6] = result;
  return result;
}

BOOL _UIDynamicAnimationIsAtRest(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = *(a1 + 96);
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v28;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = *(a1 + 40);
        [v10 minimumActiveValue];
        if (v11 >= v12)
        {
          v13 = *(a1 + 40);
          [v10 maximumActiveValue];
          if (v13 <= v14)
          {
            v15 = [v10 type];
            if (v15)
            {
              if (v15 == 1)
              {
                if ((v16 = *(a1 + 40), [v10 minimumActiveValue], v16 >= v17) && (v18 = *(a1 + 40), objc_msgSend(v10, "value"), v18 >= v19 + *(a1 + 56) * 0.5) || (v20 = *(a1 + 40), objc_msgSend(v10, "maximumActiveValue"), v20 <= v21) && (v22 = *(a1 + 40), objc_msgSend(v10, "value"), v22 <= v23 + *(a1 + 56) * -0.5))
                {
                  v6 = 1;
                }
              }
            }

            else
            {
              ++v5;
              [v10 value];
              v8 = v8 + v24 - *(a1 + 40);
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v4);
    if (v6)
    {
      return 0;
    }
  }

  else
  {
    v5 = 0;
    v8 = 0.0;
  }

  v25 = *(a1 + 56);
  return *(a1 + 48) * *(a1 + 48) < v25 * v25 * 0.0001 && (v5 < 1 || fabs(v8 / v5) <= v25);
}

void _UIDynamicAnimationStepFrictionAndSoftStopOnly(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = *(a1 + 96);
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    v12 = -1.79769313e308;
    v13 = 1.79769313e308;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        if ([v15 _isLowerBoundary])
        {
          [v15 value];
          if (v12 < v16)
          {
            v12 = v16;
          }
        }

        else if ([v15 _isUpperBoundary])
        {
          [v15 value];
          if (v13 >= v17)
          {
            v13 = v17;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = -1.79769313e308;
    v13 = 1.79769313e308;
  }

  if (v12 >= v13)
  {
    v13 = v12;
  }

  if (v4 >= v12 && v4 <= v13)
  {
    if (v5 == 0.0)
    {
      goto LABEL_55;
    }

    v20 = a2;
    v21 = v7 * a2;
    if (v21 >= -0.5)
    {
      v22 = v21 * (v21 * 0.5 + 1.0) + 1.0;
    }

    else
    {
      v22 = exp(v21);
    }

    v23 = v5 * (v6 * ((1.0 - v22) / (1.0 - v6)));
    v24 = *(a1 + 40) + *(a1 + 88) * v23;
    *(a1 + 40) = v24;
    v19 = 0.0;
    v25 = v24 < v12 || v24 > v13;
    v26 = a2;
    if (v25)
    {
      if (v24 >= v12)
      {
        v27 = (v13 - v4) * v20;
        v28 = v24 - v4;
      }

      else
      {
        v27 = (v4 - v12) * v20;
        v28 = v4 - v24;
      }

      v26 = v27 / v28;
      v19 = v20 - v26;
    }

    if (v26 > 0.0)
    {
      if (v26 != v20)
      {
        v29 = v7 * v26;
        if (v7 * v26 >= -0.5)
        {
          v22 = v29 * (v29 * 0.5 + 1.0) + 1.0;
        }

        else
        {
          v22 = exp(v29);
        }

        v23 = v5 * (v6 * ((1.0 - v22) / (1.0 - v6)));
      }

      *(a1 + 40) = v4 + v23 * *(a1 + 88);
      v5 = v5 * v22;
    }
  }

  else
  {
    v19 = a2;
  }

  if (v19 > 0.0)
  {
    v30 = v7 * v19;
    if (v7 * v19 >= -0.5)
    {
      v31 = v30 * (v30 * 0.5 + 1.0) + 1.0;
    }

    else
    {
      v31 = exp(v30);
    }

    v32 = v19 * -0.01005;
    if (v19 * -0.01005 >= -0.5)
    {
      v33 = v32 * (v32 * 0.5 + 1.0) + 1.0;
    }

    else
    {
      v33 = exp(v32);
    }

    v34 = *(a1 + 40);
    if (v34 >= v12)
    {
      v35 = v13;
    }

    else
    {
      v35 = v12;
    }

    *(a1 + 40) = (1.0 - v31) * (v5 * (v6 * v33)) / (1.0 - v6) + v35 + v33 * (v34 - v35);
    v5 = v5 * (v31 * v33);
  }

LABEL_55:
  *(a1 + 48) = v5;
}

uint64_t _UIDynamicAnimationStep(uint64_t result, uint64_t a2)
{
  v2 = result;
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(result + 40);
  v4 = *(result + 48);
  v21 = v4;
  if (a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      v21 = *(v2 + 72) * v21;
      v22 = v3 + v21 * *(v2 + 88);
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = *(v2 + 96);
      result = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (result)
      {
        v8 = result;
        v9 = *v18;
        do
        {
          v10 = 0;
          do
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v17 + 1) + 8 * v10);
            v12 = v22;
            [v11 minimumActiveValue];
            if (v12 >= v13)
            {
              v14 = v22;
              [v11 maximumActiveValue];
              if (v14 <= v15)
              {
                v16 = [v11 _applier];
                if (v16)
                {
                  (*(v16 + 16))(v16, v11, &v21, &v22, v3);
                }
              }
            }

            ++v10;
          }

          while (v8 != v10);
          result = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
          v8 = result;
        }

        while (result);
      }

      v3 = v22;
    }

    v4 = v21;
  }

  *(v2 + 48) = v4;
  *(v2 + 40) = v3;
  return result;
}

void _UIPasteboardAnalyticsReportEvent(void *a1, void *a2)
{
  v3 = a1;
  if (v3 && a2)
  {
    [a2 timeIntervalSinceNow];
    v4 = v3;
    AnalyticsSendEventLazy();
  }
}

id keyboardPerfLog_Staging()
{
  if (keyboardPerfLog_Staging_onceToken != -1)
  {
    dispatch_once(&keyboardPerfLog_Staging_onceToken, &__block_literal_global_26);
  }

  v1 = keyboardPerfLog_Staging_log;

  return v1;
}

void sub_1892CA9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _UIVPA_CATransformDisplacement(__int128 *a1, __int128 *a2, double *a3)
{
  v6 = a1[5];
  v53 = a1[4];
  v54 = v6;
  v7 = a1[7];
  v55 = a1[6];
  v56 = v7;
  v8 = a1[1];
  v49 = *a1;
  v50 = v8;
  v9 = a1[3];
  v51 = a1[2];
  v52 = v9;
  result = MEMORY[0x18CFE42C0](&v49);
  if (result)
  {
    v11 = a2[5];
    v53 = a2[4];
    v54 = v11;
    v12 = a2[7];
    v55 = a2[6];
    v56 = v12;
    v13 = a2[1];
    v49 = *a2;
    v50 = v13;
    v14 = a2[3];
    v51 = a2[2];
    v52 = v14;
    result = MEMORY[0x18CFE42C0](&v49);
    if (result)
    {
      v15 = objc_alloc_init(MEMORY[0x1E6979398]);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___UIVPA_CATransformDisplacement_block_invoke;
      aBlock[3] = &unk_1E70F5E68;
      v48 = v15;
      v16 = v15;
      v17 = _Block_copy(aBlock);
      v46 = 0.0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v18 = v17[2];
      v19 = a1[5];
      v53 = a1[4];
      v54 = v19;
      v20 = a1[7];
      v55 = a1[6];
      v56 = v20;
      v21 = a1[1];
      v49 = *a1;
      v50 = v21;
      v22 = a1[3];
      v51 = a1[2];
      v52 = v22;
      v18(&v42);
      v41 = 0.0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v23 = v17[2];
      v24 = a2[5];
      v53 = a2[4];
      v54 = v24;
      v25 = a2[7];
      v55 = a2[6];
      v56 = v25;
      v26 = a2[1];
      v49 = *a2;
      v50 = v26;
      v27 = a2[3];
      v51 = a2[2];
      v52 = v27;
      v23(&v37, v17, &v49);
      if (a3)
      {
        v28 = (*&v40 - *&v45) * (*&v40 - *&v45);
        v29 = (*(&v40 + 1) - *(&v45 + 1)) * (*(&v40 + 1) - *(&v45 + 1)) + v28;
        v30 = (v41 - v46) * (v41 - v46) + v29;
        v31 = (*(&v38 + 1) - *(&v43 + 1)) * (*(&v38 + 1) - *(&v43 + 1)) + v30;
        v32 = (*&v39 - *&v44) * (*&v39 - *&v44) + v31;
        v33 = (*(&v39 + 1) - *(&v44 + 1)) * (*(&v39 + 1) - *(&v44 + 1)) + v32;
        v34 = (*&v37 - *&v42) * (*&v37 - *&v42) + v33;
        v35 = (*(&v37 + 1) - *(&v42 + 1)) * (*(&v37 + 1) - *(&v42 + 1)) + v34;
        v36 = (*&v38 - *&v43) * (*&v38 - *&v43) + v35;
        *a3 = sqrtf(v36);
      }

      return 1;
    }
  }

  return result;
}

void sub_1892D00A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1892D24D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose((v70 - 232), 8);
  _Block_object_dispose((v70 - 200), 8);
  _Block_object_dispose((v70 - 168), 8);
  _Block_object_dispose((v70 - 136), 8);
  _Unwind_Resume(a1);
}

double computeInverseOfTimingFunction(void *a1, double a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
    v5 = [v3 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __computeInverseOfTimingFunction_block_invoke;
      v7[3] = &unk_1E70F6200;
      v8 = v3;
      a2 = computeInverseOfFunction(v7, a2);
    }
  }

  return a2;
}

void sub_1892D37B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1892D3E1C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

double computeTimingProvider(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 springTimingParameters];

  if (v6)
  {
    v7 = [v5 springTimingParameters];
    v8 = [MEMORY[0x1E69794A8] animation];
    [v8 setDuration:a2];
    [v7 mass];
    [v8 setMass:?];
    [v7 stiffness];
    [v8 setStiffness:?];
    [v7 damping];
    [v8 setDamping:?];
    [v8 setFromValue:&unk_1EFE2E1C8];
    [v8 setToValue:&unk_1EFE2E1D8];
LABEL_5:
    *&v9 = a3;
    [v8 _solveForInput:v9];
    a3 = v11;

    goto LABEL_6;
  }

  v10 = [v5 cubicTimingParameters];

  if (v10)
  {
    v7 = [v5 cubicTimingParameters];
    v8 = [v7 _mediaTimingFunction];
    goto LABEL_5;
  }

LABEL_6:

  return a3;
}

double computeInverseOfTimingProvider(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 springTimingParameters];

  if (v6)
  {
    v7 = [v5 springTimingParameters];
    v8 = [MEMORY[0x1E69794A8] animation];
    [v8 setDuration:a2];
    [v7 mass];
    [v8 setMass:?];
    [v7 stiffness];
    [v8 setStiffness:?];
    [v7 damping];
    [v8 setDamping:?];
    [v8 setFromValue:&unk_1EFE2E1C8];
    [v8 setToValue:&unk_1EFE2E1D8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __computeInverseOfSpring_block_invoke;
    v12[3] = &unk_1E70F6200;
    v13 = v8;
    v9 = v8;
    a3 = computeInverseOfFunction(v12, a3);

LABEL_5:
    goto LABEL_6;
  }

  v10 = [v5 cubicTimingParameters];

  if (v10)
  {
    v7 = [v5 cubicTimingParameters];
    v9 = [v7 _mediaTimingFunction];
    a3 = computeInverseOfTimingFunction(v9, a3);
    goto LABEL_5;
  }

LABEL_6:

  return a3;
}

double computeInverseOfFunction(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 1.0;
  if (a2 < 1.0)
  {
    v6 = a2;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = 0.0;
  if (v6 > 0.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = 0.5;
  v10 = (v3[2])(0.5);
  if (vabdd_f64(v8, v10) > 0.0001)
  {
    v11 = 1001;
    v12 = 0.5;
    while (--v11)
    {
      if (v10 < v8)
      {
        v9 = v12 + (v5 - v12) * 0.5;
      }

      else
      {
        v9 = v12 + (v12 - v7) * -0.5;
      }

      if (v10 >= v8)
      {
        v5 = v12;
      }

      else
      {
        v7 = v12;
      }

      v10 = v4[2](v4, v9);
      v12 = v9;
      if (vabdd_f64(v8, v10) <= 0.0001)
      {
        goto LABEL_19;
      }
    }

    v9 = v12;
  }

LABEL_19:

  return v9;
}

double __computeInverseOfTimingFunction_block_invoke(uint64_t a1, double a2)
{
  *&a2 = a2;
  [*(a1 + 32) _solveForInput:a2];
  return v2;
}

double __computeInverseOfSpring_block_invoke(uint64_t a1, double a2)
{
  *&a2 = a2;
  [*(a1 + 32) _solveForInput:a2];
  return v2;
}

uint64_t _UIActiveViewServiceSessionProviderIsPrimary(void *a1)
{
  if ([a1 _providerType] || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || !_NSIsNSObject() || !objc_msgSend(a1, "__isKindOfUIViewController"))
  {
    return 0;
  }

  v2 = objc_opt_class();

  return [a1 isMemberOfClass:v2];
}

id _UIViewServiceSessionActivityRecordsByUUID()
{
  if (qword_1ED49C7B0 != -1)
  {
    dispatch_once(&qword_1ED49C7B0, &__block_literal_global_201);
  }

  v1 = qword_1ED49C7B8;

  return v1;
}

void sub_1892D8F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _UICalendarViewGetPlatformMetrics(uint64_t a1)
{
  if (qword_1ED49C7C8 != -1)
  {
    dispatch_once(&qword_1ED49C7C8, &__block_literal_global_274);
  }

  v2 = _MergedGlobals_986;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    if (!_MergedGlobals_986)
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
      v6 = _MergedGlobals_986;
      _MergedGlobals_986 = v5;
    }

    v7 = [_UIVisualStyleRegistry registryForIdiom:a1];
    v4 = [v7 visualStyleClassForStylableClass:objc_opt_class()];

    if (v4)
    {
      v4 = objc_opt_new();
      v8 = _MergedGlobals_986;
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
      [v8 setObject:v4 forKey:v9];
    }
  }

  return v4;
}

id _UICalendarFont(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:a2];
  v11 = v10;
  if (a3)
  {
    v12 = [v10 fontDescriptorWithSymbolicTraits:a3];

    v11 = v12;
  }

  if (a5 > 0.0)
  {
    v22 = *off_1E70ECCC0;
    v20 = *off_1E70ECD38;
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
    v21 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v23[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v16 = [v11 fontDescriptorByAddingAttributes:v15];

    v11 = v16;
  }

  if (v9 && ([v9 isEqual:*off_1E70ECCA8] & 1) == 0)
  {
    v17 = [v11 fontDescriptorWithDesign:v9];

    v11 = v17;
  }

  v18 = [off_1E70ECC18 fontWithDescriptor:v11 size:0.0];

  return v18;
}

void _alertForMinimumWidthErrorIfNecessary(void *a1, double a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 _shouldDisplayCalendarView];
  v5 = v3[52];
  if (v4)
  {
    [v5 inlineDateViewMinimumWidth];
  }

  else
  {
    [v5 inlineTimeViewMinimumWidth];
  }

  v7 = v6;
  if (a2 < v6)
  {
    v8 = v3;
    v9 = v8;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v10 = [v9 superview];

      v9 = v10;
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    v11 = *(__UILogGetCategoryCachedImpl("DatePicker", &_alertForMinimumWidthErrorIfNecessary___s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218240;
      v13 = v8;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "UIDatePicker %p is being laid out below its minimum width of %g. This may not look like expected, especially with larger than normal font sizes.", &v12, 0x16u);
    }
  }

LABEL_12:
}

__CFString *_UIApplicationShortcutIconSystemImageNameForType(unint64_t a1)
{
  if (a1 > 0x1C)
  {
    return @"questionmark";
  }

  else
  {
    return off_1E70F6518[a1];
  }
}

uint64_t _UIApplicationShortcutIconTypeForTypeString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeCompose"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypePlay"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypePause"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeAdd"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeLocation"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeSearch"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeShare"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeProhibit"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeContact"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeHome"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeMarkLocation"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeFavorite"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeLove"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeCloud"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeInvitation"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeConfirmation"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeMail"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeMessage"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeDate"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeTime"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeCapturePhoto"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeCaptureVideo"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeTask"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeTaskCompleted"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeAlarm"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeBookmark"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeShuffle"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeAudio"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"UIApplicationShortcutIconTypeUpdate"])
  {
    v2 = 28;
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

void sub_1892DD5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1892DD6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1892DD880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1892DDAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void __getSBSApplicationShortcutCustomImageIconClass_block_invoke(uint64_t a1)
{
  SpringBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SBSApplicationShortcutCustomImageIcon");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBSApplicationShortcutCustomImageIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSBSApplicationShortcutCustomImageIconClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIApplicationShortcutItem.m" lineNumber:24 description:{@"Unable to find class %s", "SBSApplicationShortcutCustomImageIcon"}];

    __break(1u);
  }
}

void __getSBSApplicationShortcutIconClass_block_invoke(uint64_t a1)
{
  SpringBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SBSApplicationShortcutIcon");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBSApplicationShortcutIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSBSApplicationShortcutIconClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIApplicationShortcutItem.m" lineNumber:21 description:{@"Unable to find class %s", "SBSApplicationShortcutIcon"}];

    __break(1u);
  }
}

_UIIntelligenceContentLightEffect *_UIWritingToolsProofreadingUnderlineEffect()
{
  v0 = [_UIDirectionalLightConfiguration alloc];
  v1 = +[_UIColorPalette textAssistantPonderingFillPalette];
  v2 = [(_UIDirectionalLightConfiguration *)v0 initWithColorPalette:v1];

  [(_UIDirectionalLightConfiguration *)v2 setDirection:2];
  [(_UIDirectionalLightConfiguration *)v2 setDuration:3.0];
  v3 = [_UIIntelligenceLightSourceDescriptor directionalLightWithConfiguration:v2];
  v4 = [[_UIIntelligenceContentLightEffect alloc] initWithLightSource:v3];

  return v4;
}

void _UISceneLayoutPreferencesEvaluateSize3D(void *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  if (v5)
  {
    v6 = *a2;
    v32 = v5;
    [v5 preferredMinimumWidth];
    v8 = v7;
    [v32 preferredMaximumWidth];
    if (v8 < 0.0 || v9 < 0.0)
    {
      if (v6 <= v9)
      {
        v13 = v6;
      }

      else
      {
        v13 = v9;
      }

      if (v9 >= 0.0)
      {
        v14 = v13;
      }

      else
      {
        v14 = v6;
      }

      if (v6 >= v8)
      {
        v15 = v6;
      }

      else
      {
        v15 = v8;
      }

      if (v8 >= 0.0)
      {
        v11 = v15;
      }

      else
      {
        v11 = v14;
      }
    }

    else
    {
      if (v8 >= v6)
      {
        v10 = v8;
      }

      else
      {
        v10 = v6;
      }

      if (v9 <= v10)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }
    }

    v16 = a2[1];
    [v32 preferredMinimumHeight];
    v18 = v17;
    [v32 preferredMaximumHeight];
    if (v18 < 0.0 || v19 < 0.0)
    {
      if (v16 <= v19)
      {
        v22 = v16;
      }

      else
      {
        v22 = v19;
      }

      if (v19 >= 0.0)
      {
        v23 = v22;
      }

      else
      {
        v23 = v16;
      }

      if (v16 >= v18)
      {
        v24 = v16;
      }

      else
      {
        v24 = v18;
      }

      if (v18 >= 0.0)
      {
        v21 = v24;
      }

      else
      {
        v21 = v23;
      }
    }

    else
    {
      if (v18 >= v16)
      {
        v20 = v18;
      }

      else
      {
        v20 = v16;
      }

      if (v19 <= v20)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }
    }

    v25 = a2[2];
    [v32 preferredMinimumDepth];
    v27 = v26;
    [v32 preferredMaximumDepth];
    if (v27 < 0.0 || v28 < 0.0)
    {
      if (v25 <= v28)
      {
        v30 = v25;
      }

      else
      {
        v30 = v28;
      }

      if (v28 >= 0.0)
      {
        v28 = v30;
      }

      else
      {
        v28 = v25;
      }

      if (v25 >= v27)
      {
        v31 = v25;
      }

      else
      {
        v31 = v27;
      }

      if (v27 >= 0.0)
      {
        v28 = v31;
      }
    }

    else
    {
      if (v27 >= v25)
      {
        v29 = v27;
      }

      else
      {
        v29 = v25;
      }

      if (v28 > v29)
      {
        v28 = v29;
      }
    }

    *a3 = v11;
    *(a3 + 8) = v21;
    *(a3 + 16) = v28;
    *(a3 + 24) = 0;
    v5 = v32;
  }

  else
  {
    v12 = *(a2 + 1);
    *a3 = *a2;
    *(a3 + 16) = v12;
  }
}

void __UIExternalIvarStorageSetPayload(unsigned __int8 **a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3 + 2;
  v9 = *a1;
  if (!*a1)
  {
    if (a5 == a4)
    {
      return;
    }

    v62 = 0;
    v14 = 0;
    goto LABEL_16;
  }

  v10 = v9 + 1;
  v11 = *v9;
  v12 = (v8 * v11 + v11) >> 3;
  if (v12 == (v8 * v11) >> 3)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10[v12] << 8;
  }

  v15 = -1 << v11;
  v16 = ~(-1 << v11);
  if ((v16 & ((v13 | v9[((v8 * v11) >> 3) + 1]) >> ((v8 * v11) & 7))) != 0)
  {
    *&v9[8 * vcvtps_u32_f32(vcvts_n_f32_u64(vcvtps_u32_f32(vcvts_n_f32_u64((a2 + 2) * v11, 3uLL)) + 1, 3uLL)) - 8 + 8 * (v16 & ((v13 | v9[((v8 * v11) >> 3) + 1]) >> ((v8 * v11) & 7)))] = a5;
    return;
  }

  if (a5 != a4)
  {
    v14 = (*v10 & ~v15);
    v17 = v11 >> 3;
    v18 = v11 & 7;
    v19 = v11 >> 2;
    v20 = v10[v11 >> 3];
    if (v11 >> 2 == v11 >> 3)
    {
      v21 = 0;
    }

    else
    {
      v21 = v10[v19] << 8;
    }

    v22 = ((v21 | v20) >> v18) & ~v15;
    if (v22 < v14)
    {
      v23 = *a1;
LABEL_43:
      v49 = (v22 + 1);
      v23[v17 + 1] = v20 & ~(v16 << v18) | (v49 << v18);
      if (v19 != v17)
      {
        v23[v19 + 1] = v23[v19 + 1] & (v15 >> (8 - v18)) | ((v49 << v18) >> 8);
      }

      v50 = *a1;
      *&(*a1)[8 * v22 + 8 * vcvtps_u32_f32(vcvts_n_f32_u64(vcvtps_u32_f32(vcvts_n_f32_u64((a2 + 2) * **a1, 3uLL)) + 1, 3uLL))] = a5;
      v52 = *v50;
      v51 = v50 + 1;
      v53 = v8 * v52;
      v54 = (v53 + v52) >> 3;
      v55 = v49 << (v53 & 7);
      v56 = -1 << v52;
      v51[v53 >> 3] = v51[v53 >> 3] & ~(~(-1 << v52) << (v53 & 7)) | v55;
      if (v54 != v53 >> 3)
      {
        v51[v54] = v51[v54] & (v56 >> (8 - (v53 & 7u))) | BYTE1(v55);
      }

      return;
    }

    v62 = ((v21 | v20) >> v18) & ~v15;
LABEL_16:
    v24 = vcvtpd_u64_f64(log2((v14 + 1)));
    if (a2 < 0x10)
    {
      v25 = 2;
    }

    else
    {
      v25 = 3;
    }

    if (v25 <= v24 + 1)
    {
      v26 = v24 + 1;
    }

    else
    {
      v26 = v25;
    }

    v27 = -1 << v26;
    if (~v27 < a2)
    {
      v28 = ~v27;
    }

    else
    {
      v28 = a2;
    }

    v29 = vcvtpd_u64_f64(log2((v28 + 1)));
    v30 = v29;
    v31 = a2 + 2;
    v32 = v29;
    v63 = v28;
    v61 = vcvtps_u32_f32(vcvts_n_f32_u64(vcvtps_u32_f32(vcvts_n_f32_u64(v29 * (a2 + 2), 3uLL)) + 1, 3uLL));
    v33 = 8 * (v28 + v61);
    v23 = malloc_type_calloc(v33, 1uLL, 0x100004015230203uLL);
    if (!v23)
    {
      v60 = v8;
      v57 = [MEMORY[0x1E696AAA8] currentHandler];
      v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"size_t _nextIndexForStoringPayloadIncreasingCapacityIfNeeded(_UIExternalIvarStorageAllocation * _Nullable * _Nonnull, const NSUInteger)"}];
      v59 = v57;
      v8 = v60;
      [v59 handleFailureInFunction:v58 file:@"_UIExternalIvarStorage_Implementation_Internal.h" lineNumber:179 description:{@"Failed to allocate memory for _UIExternalIvarStorage with newAllocatedCount: %ld (%ld bytes total)", v63, v33}];
    }

    *v23 = v30;
    if (v9)
    {
      if (v31 >= 3)
      {
        v34 = v9 + 1;
        v35 = v23 + 1;
        v36 = 3 * v32;
        v37 = 2 * v32;
        v38 = 2;
        v39 = a2;
        do
        {
          v40 = *v9;
          v41 = (v38 * v40 + v40) >> 3;
          if (v41 == (v38 * v40) >> 3)
          {
            v42 = 0;
          }

          else
          {
            v42 = v34[v41] << 8;
          }

          v43 = (((v42 | v34[(v38 * v40) >> 3]) >> ((v38 * v40) & 7)) & ~(-1 << v40)) << (v37 & 7);
          v35[v37 >> 3] = v35[v37 >> 3] & ~(~(-1 << v32) << (v37 & 7)) | v43;
          if (v36 >> 3 != v37 >> 3)
          {
            v35[v36 >> 3] = v35[v36 >> 3] & (-1 << v32 >> (8 - (v37 & 7u))) | BYTE1(v43);
          }

          ++v38;
          v36 += v32;
          v37 += v32;
          --v39;
        }

        while (v39);
      }

      v44 = *v9;
      v45 = vcvtps_u32_f32(vcvts_n_f32_u64(vcvtps_u32_f32(vcvts_n_f32_u64(v31 * v44, 3uLL)) + 1, 3uLL));
      if (v44 >> 2 == v44 >> 3)
      {
        v46 = 0;
      }

      else
      {
        v46 = v9[(v44 >> 2) + 1] << 8;
      }

      memcpy(&v23[8 * v61], &v9[8 * v45], 8 * (((v46 | v9[(v44 >> 3) + 1]) >> (v44 & 7)) & ~(-1 << v44)));
      v30 = *v23;
    }

    v47 = v23 + 1;
    v23[1] = v23[1] & (-1 << v30) | v63;
    if (v30 >= 8)
    {
      v47[v30 >> 3] &= (-1 << v30) >> 8;
    }

    free(v9);
    *a1 = v23;
    v48 = *v23;
    v17 = v48 >> 3;
    v18 = v48 & 7;
    v19 = v48 >> 2;
    v15 = -1 << v48;
    LOBYTE(v20) = v47[v17];
    LOBYTE(v16) = ~v15;
    v22 = v62;
    goto LABEL_43;
  }
}

uint64_t __UIExternalIvarStorageGetPayload(unsigned __int8 **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *v4;
    v6 = (a3 + 2) * v5;
    v7 = (v6 + v5) >> 3;
    if (v7 == v6 >> 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v4[v7 + 1] << 8;
    }

    v9 = ~(-1 << v5) & ((v8 | v4[(v6 >> 3) + 1]) >> (v6 & 7));
    if (v9)
    {
      return *&v4[8 * vcvtps_u32_f32(vcvts_n_f32_u64(vcvtps_u32_f32(vcvts_n_f32_u64((a2 + 2) * v5, 3uLL)) + 1, 3uLL)) - 8 + 8 * v9];
    }
  }

  return a4;
}

void __UIExternalIvarStorageSetRetainedObject(void *a1, id a2)
{
  v3 = a2;
}

uint64_t _UIImageOrientationForEXIFOrientation(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 0;
  }

  else
  {
    return (0x27365140u >> (4 * a1 - 4)) & 7;
  }
}

uint64_t _EXIFOrientationForUIImageOrientation(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 0;
  }

  else
  {
    return (0x75426831u >> (4 * a1)) & 0xF;
  }
}

id _UIImageJPEGRepresentation(void *a1, char a2, double a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___UIImageJPEGRepresentation_block_invoke;
  v5[3] = &__block_descriptor_41_e29_v16__0__NSMutableDictionary_8l;
  *&v5[4] = a3;
  v6 = a2;
  v3 = _UIImageDataRepresentation(a1, @"public.jpeg", v5);

  return v3;
}

void __GQHighColorTintDisabled_block_invoke()
{
  v0 = [[UIColor alloc] initWithRed:0.501960784 green:0.501960784 blue:0.501960784 alpha:1.0];
  v1 = qword_1ED49C7F8;
  qword_1ED49C7F8 = v0;
}

void __GQHighColorTintSelected_block_invoke()
{
  v0 = [[UIColor alloc] initWithWhite:0.4 alpha:1.0];
  v1 = qword_1ED49C808;
  qword_1ED49C808 = v0;
}

void _UIHomeAffordanceNotifyObserversDoubleTapGestureDidSucceed(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = [a1 _scene];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 _hasInvalidated];

    if ((v10 & 1) == 0)
    {
      if ([a2 count])
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = a2;
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            v15 = 0;
            do
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v19 + 1) + 8 * v15);
              if (v16)
              {
                WeakRetained = objc_loadWeakRetained((v16 + 8));
                if (WeakRetained && (!a4 || (*(a4 + 16))(a4, v16)))
                {
                  [WeakRetained _notifier:a1 homeAffordanceDoubleTapGestureDidSucceed:{a3, v19}];
                }
              }

              else
              {
                WeakRetained = 0;
              }

              ++v15;
            }

            while (v13 != v15);
            v18 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
            v13 = v18;
          }

          while (v18);
        }
      }
    }
  }
}

void sub_1892EC854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1892EF308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _UIHyperInteractorDirtyEffectiveVelocity(void *a1)
{
  v1 = a1;
  v2 = v1[42];
  if ((v2 & 0x10) != 0)
  {
    v1[42] = v2 & 0xFFFFFFCF;
    if ((v2 & 0x8000) != 0)
    {
      v1[42] = v2 & 0xFFFF7FCF;
    }
  }
}

void __GQHighColorTintDisabled_block_invoke_0()
{
  v0 = [[UIColor alloc] initWithRed:0.501960784 green:0.501960784 blue:0.501960784 alpha:1.0];
  v1 = qword_1ED49C828;
  qword_1ED49C828 = v0;
}

void __GQHighColorTintSelected_block_invoke_0()
{
  v0 = [[UIColor alloc] initWithRed:0.031372549 green:0.262745098 blue:0.560784314 alpha:1.0];
  v1 = qword_1ED49C838;
  qword_1ED49C838 = v0;
}

void __GQHighColorTintSelected_block_invoke_1()
{
  v0 = [[UIColor alloc] initWithWhite:0.4 alpha:1.0];
  v1 = qword_1ED49C848;
  qword_1ED49C848 = v0;
}

id MeshTransformForZoom(double a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v11 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
  memset(v12, 0, sizeof(v12));
  v13 = xmmword_18A677E60;
  v14 = 0x3FF0000000000000;
  v15 = 0;
  v16 = 0;
  __asm { FMOV            V3.2D, #1.0 }

  v17 = vdupq_n_s64(0x3FEFF7CED916872BuLL);
  v18 = _Q3;
  v19 = xmmword_18A677E70;
  v20 = xmmword_18A677E80;
  v21 = xmmword_18A64B730;
  v22 = vdupq_n_s64(0x3F747AE147AE147BuLL);
  v23 = a1;
  v24 = a1;
  v25 = xmmword_18A677E90;
  v26 = 0x3F747AE147AE147BLL;
  v27 = 1.0 - a1;
  v28 = a1;
  v29 = xmmword_18A677E90;
  v30 = 0x3FEFD70A3D70A3D7;
  v31 = 1.0 - a1;
  v32 = 1.0 - a1;
  v33 = xmmword_18A677EA0;
  v34 = 0x3FEFD70A3D70A3D7;
  v35 = a1;
  v36 = 1.0 - a1;
  v37 = 0;
  v38 = v11;
  v39 = a1;
  v41 = 0;
  v40 = 0;
  v42 = 0x3FEFF7CED916872BLL;
  v43 = 0x3F50624DD2F1A9FCLL;
  v44 = 1.0 - a1;
  v46 = 0;
  v45 = 0;
  v47 = vdupq_n_s64(0x3FEFD70A3D70A3D7uLL);
  v48 = 1.0 - a1;
  v49 = 0x3FF0000000000000;
  v50 = xmmword_18A677EA0;
  v51 = 0x3FEFD70A3D70A3D7;
  v52 = a1;
  v53 = xmmword_18A64B730;
  v54 = v22;
  v55 = 0;
  v56 = a1;
  v57 = xmmword_18A677E90;
  v58 = xmmword_18A677EB0;
  v59 = a1;
  v60 = 0;
  v61 = v47;
  v62 = 0x3FF0000000000000;
  v63 = 1.0 - a1;
  v64 = xmmword_18A677EA0;
  v65 = xmmword_18A677EC0;
  v66 = 1.0 - a1;
  v67 = 0;
  if (a1 == 0.0)
  {
    v6 = v12;
    v7 = 16;
    do
    {
      *(v6 - 1) = *v6;
      v6 = (v6 + 40);
      --v7;
    }

    while (v7);
  }

  memcpy(v10, &unk_18A677EE0, sizeof(v10));
  v8 = [MEMORY[0x1E69793F8] meshTransformWithVertexCount:16 vertices:&v11 faceCount:9 faces:v10 depthNormalization:*MEMORY[0x1E6979700]];
  [v8 setSubdivisionSteps:0];

  return v8;
}

id _UIBackdropViewSettingsColorCancelRed()
{
  if (_MergedGlobals_9_1 != -1)
  {
    dispatch_once(&_MergedGlobals_9_1, &__block_literal_global_37);
  }

  v1 = qword_1ED499C08;

  return v1;
}

id _UIBackdropViewSettingsColorAcceptGreen()
{
  if (qword_1ED499C10 != -1)
  {
    dispatch_once(&qword_1ED499C10, &__block_literal_global_2_0);
  }

  v1 = qword_1ED499C18;

  return v1;
}

void _UIBackdropViewComputeLegibleColorWithColorSettings(void *a1)
{
  v1 = a1;
  [v1 averageBrightness];
  v3 = v2;
  [v1 contrast];
  v5 = v4;

  _UI2DInterpolation(&unk_18A678098, 16, v3, v5);
}

void _UIBlurEffectAddAverageColorFilterEntry(void *a1, void *a2, double a3)
{
  v7 = a1;
  if ([a2 allowsBlurring])
  {
    v5 = [_UIVisualEffectFilterEntry alloc];
    v6 = [(_UIVisualEffectFilterEntry *)v5 initWithFilterType:*MEMORY[0x1E6979810] configurationValues:MEMORY[0x1E695E0F8] requestedValues:MEMORY[0x1E695E0F8] identityValues:MEMORY[0x1E695E0F8]];
    [(_UIVisualEffectFilterEntry *)v6 setRequestedScaleHint:a3];
    [v7 addFilterEntry:v6];
    [v7 setDisableInPlaceFiltering:1];
    [v7 setRequestAlphaTransition:1];
  }
}

void _UIBlurEffectEncodeModernStyleWithCoder(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2 != 0x8000000000000000)
  {
    v5 = 0;
    v6 = 0;
    v4 = v3;
    [v3 encodeInteger:a2 forKey:@"UIBlurEffectMaterialStyle"];
    _UIStyledEffectFallbackStylesForCoreMaterialStyle(a2, &v6, &v5);
    if (v6 != 0x8000000000000000)
    {
      [v4 encodeInteger:v6 forKey:@"UIBlurEffectAutomaticStyle"];
    }

    if (v5 != 0x8000000000000000)
    {
      [v4 encodeInteger:v5 forKey:@"UIBlurEffectStyle"];
    }

    v3 = v4;
  }
}

void ___lightMaterialStyles_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{11, 5}];
  v1 = _MergedGlobals_13_0;
  _MergedGlobals_13_0 = v0;
}

void ___darkMaterialStyles_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{16, 5}];
  v1 = qword_1ED498EC8;
  qword_1ED498EC8 = v0;
}

void sub_189302240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIRemoteInputViewHostLogger()
{
  if (qword_1ED49C868 != -1)
  {
    dispatch_once(&qword_1ED49C868, &__block_literal_global_39);
  }

  v1 = _MergedGlobals_993;

  return v1;
}

void sub_189303E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRTIInputViewInfoClass_block_invoke(uint64_t a1)
{
  RemoteTextInputLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RTIInputViewInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRTIInputViewInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRTIInputViewInfoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIRemoteInputViewHost.m" lineNumber:40 description:{@"Unable to find class %s", "RTIInputViewInfo"}];

    __break(1u);
  }
}

void RemoteTextInputLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!RemoteTextInputLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __RemoteTextInputLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E70F68A0;
    v5 = 0;
    RemoteTextInputLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!RemoteTextInputLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RemoteTextInputLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIRemoteInputViewHost.m" lineNumber:37 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __RemoteTextInputLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  RemoteTextInputLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getTUIAssistantButtonSizeProviderClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49C878)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke_1;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E70F68B8;
    v8 = 0;
    qword_1ED49C878 = _sl_dlopen();
  }

  if (!qword_1ED49C878)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIRemoteInputViewHost.m" lineNumber:46 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUIAssistantButtonSizeProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIAssistantButtonSizeProviderClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIRemoteInputViewHost.m" lineNumber:47 description:{@"Unable to find class %s", "TUIAssistantButtonSizeProvider"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49C870 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextInputUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  qword_1ED49C878 = result;
  return result;
}

void __getRTIBarButtonGroupClass_block_invoke(uint64_t a1)
{
  RemoteTextInputLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RTIBarButtonGroup");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49C880 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRTIBarButtonGroupClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIRemoteInputViewHost.m" lineNumber:38 description:{@"Unable to find class %s", "RTIBarButtonGroup"}];

    __break(1u);
  }
}

void __getRTIAssistantItemClass_block_invoke(uint64_t a1)
{
  RemoteTextInputLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RTIAssistantItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRTIAssistantItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRTIAssistantItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIRemoteInputViewHost.m" lineNumber:39 description:{@"Unable to find class %s", "RTIAssistantItem"}];

    __break(1u);
  }
}

float32x4_t _UIColorEffectMakeCAColorMatrixFromUI@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>)
{
  v3.f64[0] = *(a1 + 120);
  v2.f64[0] = *(a1 + 128);
  v2.f64[1] = *(a1 + 32);
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(v2), *(a1 + 40));
  *a2 = vcvt_hight_f32_f64(vcvt_f32_f64(*a1), *(a1 + 16));
  a2[1] = v4;
  v5.f64[0] = *(a1 + 56);
  v5.f64[1] = *(a1 + 136);
  v6.f64[0] = *(a1 + 144);
  v6.f64[1] = *(a1 + 96);
  v7 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 80)), v6);
  a2[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v5), *(a1 + 64));
  a2[3] = v7;
  v3.f64[1] = *(a1 + 152);
  result = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 104)), v3);
  a2[4] = result;
  return result;
}

float64_t _UIColorEffectMakeUIColorMatrixFromCA@<D0>(uint64_t a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = vcvtq_f64_f32(*(a1 + 8));
  *a2 = vcvtq_f64_f32(*a1);
  a2[1] = v2;
  v3 = vcvtq_f64_f32(*(a1 + 28));
  a2[2] = vcvtq_f64_f32(*(a1 + 20));
  a2[3] = v3;
  v4 = vcvtq_f64_f32(*(a1 + 48));
  a2[4] = vcvtq_f64_f32(*(a1 + 40));
  a2[5] = v4;
  v5 = vcvtq_f64_f32(*(a1 + 68));
  a2[6] = vcvtq_f64_f32(*(a1 + 60));
  a2[7] = v5;
  v5.f64[0] = *(a1 + 36);
  a2[8].f64[0] = *(a1 + 16);
  a2[8].f64[1] = v5.f64[0];
  result = *(a1 + 56);
  v5.f64[0] = *(a1 + 76);
  a2[9].f64[0] = result;
  a2[9].f64[1] = v5.f64[0];
  return result;
}

uint64_t _UIColorEffectSourceOverCAMatrix(uint64_t a1, void *a2)
{
  v5 = 0;
  v6 = 0;
  v3 = 0;
  v4 = 0;
  [a2 getRed:&v6 green:&v5 blue:&v4 alpha:&v3];
  return CAColorMatrixMakeColorSourceOver();
}

void _UIColorEffectEncodeDictionary(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = *MEMORY[0x1E6979AA0];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6979AA0]];

  v10 = *MEMORY[0x1E6979AB8];
  v11 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6979AB8]];

  v12 = *MEMORY[0x1E6979AC0];
  v13 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6979AC0]];
  v14 = v7;
  v15 = v14;
  if (v9)
  {
    v16 = 0;
  }

  else
  {
    v16 = v11 == 0;
  }

  v17 = v16 && v13 == 0;
  v18 = v14;
  if (!v17)
  {
    v18 = [v14 mutableCopy];
    if (v9)
    {
      v19 = [UIColor colorWithCGColor:v9];
      [v18 setObject:v19 forKeyedSubscript:v8];
    }

    if (v11)
    {
      v20 = [UIImage imageWithCGImage:v11];
      v21 = UIImagePNGRepresentation(v20);
      [v18 setObject:v21 forKeyedSubscript:v10];
    }

    if (v13)
    {
      [v13 CAColorMatrixValue];
      v23 = _UIVisualEffectModelEncodeCAColorMatrix(v24, v22);
      [v18 setObject:v23 forKeyedSubscript:v12];
    }
  }

  [v5 encodeObject:v18 forKey:v6];
}

id _UIColorEffectDecodeDictionary(void *a1, uint64_t a2)
{
  v2 = [a1 decodeObjectForKey:a2];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x1E6979AA0];
    v5 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6979AA0]];
    v6 = *MEMORY[0x1E6979AB8];
    v7 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6979AB8]];
    v8 = *MEMORY[0x1E6979AC0];
    v9 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6979AC0]];
    v10 = v9;
    if (v5)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7 == 0;
    }

    if (v11 && v9 == 0)
    {
      v17 = v3;
    }

    else
    {
      v13 = [v3 mutableCopy];
      if (v5)
      {
        [v13 setObject:objc_msgSend(v5 forKeyedSubscript:{"CGColor"), v4}];
      }

      if (v7)
      {
        v14 = [UIImage imageWithData:v7];
        [v13 setObject:objc_msgSend(v14 forKeyedSubscript:{"CGImage"), v6}];
      }

      if (v10)
      {
        v15 = MEMORY[0x1E696B098];
        _UIVisualEffectModelDecodeCAColorMatrix(v10, v19);
        v16 = [v15 valueWithCAColorMatrix:v19];
        [v13 setObject:v16 forKeyedSubscript:v8];
      }

      v17 = [v13 copy];
    }
  }

  else
  {
    v17 = MEMORY[0x1E695E0F8];
  }

  return v17;
}

id _UIColorEffectUpgradeCurve(void *a1)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 count];
  if (v2 >= 5)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSArray<NSNumber *> *_UIColorEffectUpgradeCurve(NSArray<NSNumber *> *__strong)"];
    objc_msgSend(v22, "handleFailureInFunction:file:lineNumber:description:", v23, @"UIColorEffect.m", 498, @"Too many values specified for a cubic bezier curve (no more than 4, got %li"), v2;
  }

  v3 = 0;
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = &unk_1EFE2B4A0;
      goto LABEL_16;
    }

    if (v2 != 1)
    {
      goto LABEL_16;
    }

    v4 = [v1 firstObject];
    v26[0] = v4;
    v26[1] = v4;
    v26[2] = v4;
    v26[3] = v4;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
LABEL_14:

    goto LABEL_16;
  }

  switch(v2)
  {
    case 2:
      v4 = [v1 firstObject];
      v5 = [v1 lastObject];
      [v4 doubleValue];
      v7 = v6;
      [v5 doubleValue];
      v9 = v8;
      v25[0] = v4;
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:(v7 + v7 + v8) / 3.0];
      v25[1] = v10;
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:(v9 + v7 + v9) / 3.0];
      v25[2] = v11;
      v25[3] = v5;
      v12 = MEMORY[0x1E695DEC8];
      v13 = v25;
LABEL_13:
      v3 = [v12 arrayWithObjects:v13 count:4];

      goto LABEL_14;
    case 3:
      v4 = [v1 objectAtIndexedSubscript:0];
      v5 = [v1 objectAtIndexedSubscript:2];
      [v4 doubleValue];
      v15 = v14;
      [v5 doubleValue];
      v17 = v16;
      v18 = [v1 objectAtIndexedSubscript:1];
      [v18 doubleValue];
      v20 = v19;

      v24[0] = v4;
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:(v20 + v15 + v20) / 3.0];
      v24[1] = v10;
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:(v17 + v17 + v20) / 3.0];
      v24[2] = v11;
      v24[3] = v5;
      v12 = MEMORY[0x1E695DEC8];
      v13 = v24;
      goto LABEL_13;
    case 4:
      v3 = v1;
      break;
  }

LABEL_16:

  return v3;
}

void _inProcessAnimationManagerSoftAssert(char a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((a1 & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v6 = 138412290;
        v7 = v3;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "%@", &v6, 0xCu);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &_inProcessAnimationManagerSoftAssert___s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 138412290;
        v7 = v3;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%@", &v6, 0xCu);
      }
    }
  }
}

void sub_18930EA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _UIActivityItemsConfigurationLog()
{
  if (qword_1ED49C8C0 != -1)
  {
    dispatch_once(&qword_1ED49C8C0, &__block_literal_global_43);
  }

  v1 = _MergedGlobals_997;

  return v1;
}

_UIContentViewLabelConfiguration *_createDefaultLabelConfiguration(int a1, uint64_t a2)
{
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = _UITableConstantsForTraitCollection(v4);
  v6 = objc_alloc_init(_UIContentViewLabelConfiguration);
  if (a1)
  {
    v7 = [v5 defaultHeaderFontForTableViewStyle:a2];
    [(_UIHomeAffordanceObservationRecord *)v6 setLegacyViewServiceSessionIdentifier:v7];

    [v5 defaultHeaderTextColorForTableViewStyle:a2 focused:0];
  }

  else
  {
    v8 = [v5 defaultFooterFontForTableViewStyle:a2];
    [(_UIHomeAffordanceObservationRecord *)v6 setLegacyViewServiceSessionIdentifier:v8];

    [v5 defaultFooterTextColorForTableViewStyle:a2 focused:0];
  }
  v9 = ;
  [(UIContentUnavailableImageProperties *)v6 _setTintColor:v9];

  [(_UIContentViewLabelConfiguration *)v6 _configureWithConstants:v5 traitCollection:v4 forSidebar:0];

  return v6;
}

void sub_189311D68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

id filterOfTypeOnLayer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  v5 = [v3 filters];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __filterOfTypeOnLayer_block_invoke;
  v9[3] = &unk_1E70F6C30;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_189313354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189314CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __filterOfTypeOnLayer_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 type];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t _UICompositingModeForFilter(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1ED49C8D0 != -1)
    {
      dispatch_once(&qword_1ED49C8D0, &__block_literal_global_45);
    }

    v2 = [_MergedGlobals_998 objectForKeyedSubscript:v1];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 integerValue];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *_UICompositingModeName(uint64_t a1)
{
  if (a1 > 999)
  {
    if (a1 > 1005)
    {
      v2 = @"UICompositingModePinLight";
      v11 = @"UICompositingModeDarkenSourceOver";
      v12 = @"UICompositingModeLightenSourceOver";
      if (a1 != 1011)
      {
        v12 = 0;
      }

      if (a1 != 1010)
      {
        v11 = v12;
      }

      if (a1 != 1009)
      {
        v2 = v11;
      }

      v5 = @"UICompositingModeLinearBurn";
      v13 = @"UICompositingModeLinearDodge";
      v14 = @"UICompositingModeLinearLight";
      if (a1 != 1008)
      {
        v14 = 0;
      }

      if (a1 != 1007)
      {
        v13 = v14;
      }

      if (a1 != 1006)
      {
        v5 = v13;
      }

      v10 = __OFSUB__(a1, 1008);
      v8 = a1 == 1008;
      v9 = a1 - 1008 < 0;
    }

    else
    {
      v2 = @"UICompositingModeArithmeticMax";
      v3 = @"UICompositingModeArithmeticMultiply";
      v4 = @"UICompositingModeArithmeticDivide";
      if (a1 != 1005)
      {
        v4 = 0;
      }

      if (a1 != 1004)
      {
        v3 = v4;
      }

      if (a1 != 1003)
      {
        v2 = v3;
      }

      v5 = @"UICompositingModeArithmeticSubtractSource";
      v6 = @"UICompositingModeArithmeticSubtractDestination";
      v7 = @"UICompositingModeArithmeticMin";
      if (a1 != 1002)
      {
        v7 = 0;
      }

      if (a1 != 1001)
      {
        v6 = v7;
      }

      if (a1 != 1000)
      {
        v5 = v6;
      }

      v10 = __OFSUB__(a1, 1002);
      v8 = a1 == 1002;
      v9 = a1 - 1002 < 0;
    }

    if (v9 ^ v10 | v8)
    {
      return v5;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        result = @"UICompositingModeNormal";
        break;
      case 1:
        result = @"UICompositingModeMultiply";
        break;
      case 2:
        result = @"UICompositingModeScreen";
        break;
      case 3:
        result = @"UICompositingModeOverlay";
        break;
      case 4:
        result = @"UICompositingModeDarken";
        break;
      case 5:
        result = @"UICompositingModeLighten";
        break;
      case 6:
        result = @"UICompositingModeColorDodge";
        break;
      case 7:
        result = @"UICompositingModeColorBurn";
        break;
      case 8:
        result = @"UICompositingModeSoftLight";
        break;
      case 9:
        result = @"UICompositingModeHardLight";
        break;
      case 10:
        result = @"UICompositingModeDifference";
        break;
      case 11:
        result = @"UICompositingModeExclusion";
        break;
      case 12:
        result = @"UICompositingModeClear";
        break;
      case 13:
        result = @"UICompositingModeCopy";
        break;
      case 14:
        result = @"UICompositingModeSourceIn";
        break;
      case 15:
        result = @"UICompositingModeSourceOut";
        break;
      case 16:
        result = @"UICompositingModeSourceAtop";
        break;
      case 17:
        result = @"UICompositingModeDestination";
        break;
      case 18:
        result = @"UICompositingModeDestinationOver";
        break;
      case 19:
        result = @"UICompositingModeDestinationIn";
        break;
      case 20:
        result = @"UICompositingModeDestinationOut";
        break;
      case 21:
        result = @"UICompositingModeDestinationAtop";
        break;
      case 22:
        result = @"UICompositingModeXOR";
        break;
      case 23:
        result = @"UICompositingModePlusDarker";
        break;
      case 24:
        result = @"UICompositingModePlusLighter";
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

void sub_18931808C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

void _UILegacyEffectConvertLayerConfig(void *a1, void *a2, void *a3)
{
  v18 = a1;
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v18;
    v8 = [v7 filterType];
    v9 = [v7 vibrantColor];
    v10 = [v7 tintColor];
    v11 = [v7 filterAttributes];
    v12 = v11;
    if (v8)
    {
      v13 = [v11 objectForKeyedSubscript:@"inputReversed"];
      v14 = +[UIVibrancyEffect _vibrancyEntryWithType:inputColor1:inputColor2:inputReversed:](UIVibrancyEffect, "_vibrancyEntryWithType:inputColor1:inputColor2:inputReversed:", v8, v9, v10, [v13 BOOLValue]);

      v5[2](v5, v14);
      v15 = objc_alloc_init(_UITintColorViewEntry);
      v16 = +[UIColor whiteColor];
      [(_UITintColorViewEntry *)v15 setTintColor:v16];

      v6[2](v6, v15);
    }

LABEL_8:
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v18;
    v8 = objc_alloc_init(_UITintColorViewEntry);
    v17 = [v7 tintColor];
    [(_UITintColorViewEntry *)v8 setTintColor:v17];

    v6[2](v6, v8);
    v9 = [v7 filterType];
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = objc_alloc_init(_UICompositingEffectViewEntry);
    [(_UICompositingEffectViewEntry *)v10 setFilterType:v9];
    v6[2](v6, v10);
    goto LABEL_8;
  }

  v7 = [v18 filterType];
  v8 = [v18 fillColor];
  [v18 opacity];
  v9 = [_UIOverlayEffectViewEntry newEntryWithFilterType:v7 color:v8 alpha:?];
  v6[2](v6, v9);
LABEL_10:
}

uint64_t _UIStyledEffectFallbackStylesForCoreMaterialStyle(uint64_t result, void *a2, uint64_t *a3)
{
  *a2 = 0x8000000000000000;
  *a3 = 0x8000000000000000;
  if (result <= 14)
  {
    if ((result - 6) < 4)
    {
      *a2 = 4;
    }

    else if ((result - 11) >= 4)
    {
      if (result != 10)
      {
        return result;
      }

      *a2 = 5;
      goto LABEL_13;
    }

    v3 = 1;
LABEL_10:
    *a3 = v3;
    return result;
  }

  if ((result - 16) < 5)
  {
    v3 = 2;
    goto LABEL_10;
  }

  if (result == 15)
  {
LABEL_13:
    v3 = 0;
    goto LABEL_10;
  }

  return result;
}

__CFString *_UIStyledEffectConvertToString(uint64_t a1)
{
  if (a1 > 1202)
  {
    if (a1 <= 3999)
    {
      if (a1 <= 1206)
      {
        if (a1 > 1204)
        {
          if (a1 == 1205)
          {
            v3 = @"UIBlurEffectStyleSystemVibrantBackgroundUltraThinLight";
          }

          else
          {
            v3 = @"UIBlurEffectStyleSystemVibrantBackgroundThinLight";
          }
        }

        else if (a1 == 1203)
        {
          v3 = @"UIBlurEffectStyleSystemVibrantBackgroundThick";
        }

        else
        {
          v3 = @"UIBlurEffectStyleSystemVibrantBackgroundRegularLight";
        }
      }

      else if (a1 <= 1208)
      {
        if (a1 == 1207)
        {
          v3 = @"UIBlurEffectStyleSystemVibrantBackgroundThickLight";
        }

        else
        {
          v3 = @"UIBlurEffectStyleSystemVibrantBackgroundRegularDark";
        }
      }

      else
      {
        switch(a1)
        {
          case 1209:
            v3 = @"UIBlurEffectStyleSystemVibrantBackgroundUltraThinDark";

            break;
          case 1210:
            v3 = @"UIBlurEffectStyleSystemVibrantBackgroundThinDark";

            break;
          case 1211:
            v3 = @"UIBlurEffectStyleSystemVibrantBackgroundThickDark";

            break;
          default:
            goto LABEL_232;
        }
      }
    }

    else if (a1 > 4999)
    {
      if (a1 <= 5002)
      {
        if (a1 == 5000)
        {
          v3 = @"UIBlurEffectStyleATVAutomatic";
        }

        else if (a1 == 5001)
        {
          v3 = @"UIBlurEffectStyleATVSemiAutomatic";
        }

        else
        {
          v3 = @"UIBlurEffectStyleATVMediumAutomatic";
        }
      }

      else if (a1 > 5004)
      {
        if (a1 == 5005)
        {
          v3 = @"UIBlurEffectStyleATVAccessoryAutomatic";
        }

        else
        {
          if (a1 != 5006)
          {
            goto LABEL_232;
          }

          v3 = @"UIBlurEffectStyleATVTextFieldAutomatic";
        }
      }

      else if (a1 == 5003)
      {
        v3 = @"UIBlurEffectStyleATVUltraAutomatic";
      }

      else
      {
        v3 = @"UIBlurEffectStyleATVMenuAutomatic";
      }
    }

    else
    {
      switch(a1)
      {
        case 4000:
          v3 = @"UIBlurEffectStyleATVSemiLight";

          break;
        case 4001:
          v3 = @"UIBlurEffectStyleATVMediumLight";

          break;
        case 4002:
          v3 = @"UIBlurEffectStyleATVLight";

          break;
        case 4003:
          v3 = @"UIBlurEffectStyleATVUltraLight";

          break;
        case 4004:
          v3 = @"UIBlurEffectStyleATVMenuLight";

          break;
        case 4005:
          v3 = @"UIBlurEffectStyleATVSemiDark";

          break;
        case 4006:
          v3 = @"UIBlurEffectStyleATVMediumDark";

          break;
        case 4007:
          v3 = @"UIBlurEffectStyleATVDark";

          break;
        case 4008:
          v3 = @"UIBlurEffectStyleATVUltraDark";

          break;
        case 4009:
          v3 = @"UIBlurEffectStyleATVMenuDark";

          break;
        case 4010:
          v3 = @"UIBlurEffectStyleATVAdaptive";

          break;
        case 4011:
          v3 = @"UIBlurEffectStyleATVAdaptiveLighten";

          break;
        case 4012:
          v3 = @"UIBlurEffectStyleATVLightTextField";

          break;
        case 4013:
          v3 = @"UIBlurEffectStyleATVDarkTextField";

          break;
        case 4014:
          v3 = @"UIBlurEffectStyleATVAccessoryLight";

          break;
        case 4015:
          v3 = @"UIBlurEffectStyleATVAccessoryDark";

          break;
        case 4016:
          v3 = @"UIBlurEffectStyleATVBlackTextField";

          break;
        default:
          goto LABEL_232;
      }
    }
  }

  else
  {
    if (a1 <= 98)
    {
      v3 = @"UIBlurEffectStyleLight";
      switch(a1)
      {
        case 0:
          v3 = @"UIBlurEffectStyleExtraLight";

          break;
        case 1:
          goto LABEL_233;
        case 2:
          v3 = @"UIBlurEffectStyleDark";

          break;
        case 3:
          v3 = @"UIBlurEffectStyleExtraDark";

          break;
        case 4:
          v3 = @"UIBlurEffectStyleRegular";

          break;
        case 5:
          v3 = @"UIBlurEffectStyleProminent";

          break;
        case 6:
          v3 = @"UIBlurEffectStyleSystemUltraThinMaterial";

          break;
        case 7:
          v3 = @"UIBlurEffectStyleSystemThinMaterial";

          break;
        case 8:
          v3 = @"UIBlurEffectStyleSystemMaterial";

          break;
        case 9:
          v3 = @"UIBlurEffectStyleSystemThickMaterial";

          break;
        case 10:
          v3 = @"UIBlurEffectStyleSystemChromeMaterial";

          break;
        case 11:
          v3 = @"UIBlurEffectStyleSystemUltraThinMaterialLight";

          break;
        case 12:
          v3 = @"UIBlurEffectStyleSystemThinMaterialLight";

          break;
        case 13:
          v3 = @"UIBlurEffectStyleSystemMaterialLight";

          break;
        case 14:
          v3 = @"UIBlurEffectStyleSystemThickMaterialLight";

          break;
        case 15:
          v3 = @"UIBlurEffectStyleSystemChromeMaterialLight";

          break;
        case 16:
          v3 = @"UIBlurEffectStyleSystemUltraThinMaterialDark";

          break;
        case 17:
          v3 = @"UIBlurEffectStyleSystemThinMaterialDark";

          break;
        case 18:
          v3 = @"UIBlurEffectStyleSystemMaterialDark";

          break;
        case 19:
          v3 = @"UIBlurEffectStyleSystemThickMaterialDark";

          break;
        case 20:
          v3 = @"UIBlurEffectStyleSystemChromeMaterialDark";

          break;
        default:
          if (a1 != 0x8000000000000000)
          {
            goto LABEL_232;
          }

          v3 = @"UIBlurEffectStyleUndefined";

          break;
      }

      return v3;
    }

    if (a1 <= 1099)
    {
      if (a1 <= 500)
      {
        if (a1 == 99)
        {
          v3 = @"UIBlurEffectStyleUltraDark";
        }

        else
        {
          if (a1 != 100)
          {
            goto LABEL_232;
          }

          v3 = @"UIBlurEffectStyleUltraColored";
        }
      }

      else
      {
        switch(a1)
        {
          case 501:
            v3 = @"UIBlurEffectStyleLightKeyboard";

            break;
          case 502:
            v3 = @"UIBlurEffectStyleLightEmojiKeyboard";

            break;
          case 1000:
            v3 = @"UIBlurEffectStyleAutomatic";

            break;
          default:
            goto LABEL_232;
        }
      }
    }

    else if (a1 > 1199)
    {
      if (a1 == 1200)
      {
        v3 = @"UIBlurEffectStyleSystemVibrantBackgroundRegular";
      }

      else if (a1 == 1201)
      {
        v3 = @"UIBlurEffectStyleSystemVibrantBackgroundUltraThin";
      }

      else
      {
        v3 = @"UIBlurEffectStyleSystemVibrantBackgroundThin";
      }
    }

    else
    {
      switch(a1)
      {
        case 1100:
          v3 = @"UIBlurEffectStyleSystemChromeBackground";

          break;
        case 1101:
          v3 = @"UIBlurEffectStyleSystemChromeBackgroundLight";

          break;
        case 1102:
          v3 = @"UIBlurEffectStyleSystemChromeBackgroundDark";

          return v3;
        default:
LABEL_232:
          v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%li)", a1];
LABEL_233:

          return v3;
      }
    }
  }

  return v3;
}

id _UIVisualEffectModelEncodeCAColorMatrix(_DWORD *a1, double a2)
{
  v44[20] = *MEMORY[0x1E69E9840];
  LODWORD(a2) = *a1;
  v43 = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v44[0] = v43;
  LODWORD(v3) = a1[1];
  v42 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v44[1] = v42;
  LODWORD(v4) = a1[2];
  v41 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v44[2] = v41;
  LODWORD(v5) = a1[3];
  v40 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v44[3] = v40;
  LODWORD(v6) = a1[4];
  v39 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v44[4] = v39;
  LODWORD(v7) = a1[5];
  v38 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v44[5] = v38;
  LODWORD(v8) = a1[6];
  v37 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v44[6] = v37;
  LODWORD(v9) = a1[7];
  v36 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v44[7] = v36;
  LODWORD(v10) = a1[8];
  v35 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v44[8] = v35;
  LODWORD(v11) = a1[9];
  v34 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v44[9] = v34;
  LODWORD(v12) = a1[10];
  v33 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v44[10] = v33;
  LODWORD(v13) = a1[11];
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v44[11] = v14;
  LODWORD(v15) = a1[12];
  v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  v44[12] = v16;
  LODWORD(v17) = a1[13];
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  v44[13] = v18;
  LODWORD(v19) = a1[14];
  v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  v44[14] = v20;
  LODWORD(v21) = a1[15];
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  v44[15] = v22;
  LODWORD(v23) = a1[16];
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v44[16] = v24;
  LODWORD(v25) = a1[17];
  v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  v44[17] = v26;
  LODWORD(v27) = a1[18];
  v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
  v44[18] = v28;
  LODWORD(v29) = a1[19];
  v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
  v44[19] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:20];

  return v31;
}

void _UIVisualEffectModelDecodeCAColorMatrix(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v48 = a1;
  if ([v48 count])
  {
    if ([v48 count] != 20)
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CAColorMatrix _UIVisualEffectModelDecodeCAColorMatrix(NSArray<NSNumber *> *__strong _Nonnull)"];
      objc_msgSend(v35, "handleFailureInFunction:file:lineNumber:description:", v36, @"_UIVisualEffectModel.m", 29, @"Invalid coded color matrix (encoded array contains %li items, should contain 20 items"), objc_msgSend(v48, "count");
    }

    v47 = [v48 objectAtIndexedSubscript:0];
    [v47 floatValue];
    *a2 = v3;
    v46 = [v48 objectAtIndexedSubscript:1];
    [v46 floatValue];
    a2[1] = v4;
    v45 = [v48 objectAtIndexedSubscript:2];
    [v45 floatValue];
    a2[2] = v5;
    v44 = [v48 objectAtIndexedSubscript:3];
    [v44 floatValue];
    a2[3] = v6;
    v43 = [v48 objectAtIndexedSubscript:4];
    [v43 floatValue];
    a2[4] = v7;
    v42 = [v48 objectAtIndexedSubscript:5];
    [v42 floatValue];
    a2[5] = v8;
    v41 = [v48 objectAtIndexedSubscript:6];
    [v41 floatValue];
    a2[6] = v9;
    v40 = [v48 objectAtIndexedSubscript:7];
    [v40 floatValue];
    a2[7] = v10;
    v39 = [v48 objectAtIndexedSubscript:8];
    [v39 floatValue];
    a2[8] = v11;
    v38 = [v48 objectAtIndexedSubscript:9];
    [v38 floatValue];
    a2[9] = v12;
    v37 = [v48 objectAtIndexedSubscript:10];
    [v37 floatValue];
    a2[10] = v13;
    v14 = [v48 objectAtIndexedSubscript:11];
    [v14 floatValue];
    a2[11] = v15;
    v16 = [v48 objectAtIndexedSubscript:12];
    [v16 floatValue];
    a2[12] = v17;
    v18 = [v48 objectAtIndexedSubscript:13];
    [v18 floatValue];
    a2[13] = v19;
    v20 = [v48 objectAtIndexedSubscript:14];
    [v20 floatValue];
    a2[14] = v21;
    v22 = [v48 objectAtIndexedSubscript:15];
    [v22 floatValue];
    a2[15] = v23;
    v24 = [v48 objectAtIndexedSubscript:16];
    [v24 floatValue];
    a2[16] = v25;
    v26 = [v48 objectAtIndexedSubscript:17];
    [v26 floatValue];
    a2[17] = v27;
    v28 = [v48 objectAtIndexedSubscript:18];
    [v28 floatValue];
    a2[18] = v29;
    v30 = [v48 objectAtIndexedSubscript:19];
    [v30 floatValue];
    a2[19] = v31;
  }

  else
  {
    v32 = MEMORY[0x1E6979280];
    v33 = *(MEMORY[0x1E6979280] + 48);
    *(a2 + 2) = *(MEMORY[0x1E6979280] + 32);
    *(a2 + 3) = v33;
    *(a2 + 4) = v32[4];
    v34 = v32[1];
    *a2 = *v32;
    *(a2 + 1) = v34;
  }
}

__CFString *_UIVisualEffectFilterEntryDescribeColorMatrix(uint64_t a1)
{
  v2 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v2;
  v6[4] = *(a1 + 64);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  if (_UICAColorMatrixIsIdentity(v6))
  {
    v4 = @"{identity}";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{redPrimary={%f %f %f %f} greenPrimary={%f %f %f %f} bluePrimary={%f %f %f %f} alphaPrimary={%f %f %f %f} additiveColor={%f %f %f %f}}", *a1, *(a1 + 4), *(a1 + 8), *(a1 + 12), *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 52), *(a1 + 60), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 16), *(a1 + 36), *(a1 + 56), *(a1 + 76)];
  }

  return v4;
}

id _UIVisualEffectFilterEntryDescribeValue(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if (!strcmp("{CAColorMatrix=ffffffffffffffffffff}", [v2 objCType]))
    {
      if (v2)
      {
        [v2 CAColorMatrixValue];
      }

      else
      {
        memset(v7, 0, sizeof(v7));
      }

      v3 = _UIVisualEffectFilterEntryDescribeColorMatrix(v7);
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v4 = MEMORY[0x1E696AEC0], [v1 componentsJoinedByString:{@", "}], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "stringWithFormat:", @"{%@}", v5), v3 = objc_claimAutoreleasedReturnValue(), v5, !v3))
    {
LABEL_12:
      v3 = [v1 description];
    }
  }

  return v3;
}

void _UIFilterEntryAppendArrayDescription(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v7 count])
  {
    [v5 appendFormat:@"\n%@={\n", v6];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v5 appendFormat:@"\t%@\n", *(*(&v13 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    [v5 appendString:@"}"];
  }
}