void sub_188F79B44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFB0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A64BFA0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v2 childSettingsKeyPath:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = sub_188A34624(0, &qword_1EA934BA8);
  *(v1 + 56) = v6;
  *(v1 + 32) = v5;
  v7 = sub_18A4A7258();
  v8 = sub_18A4A7258();
  v9 = [v4 rowWithTitle:v7 childSettingsKeyPath:v8];

  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = objc_opt_self();
  *(v1 + 88) = v6;
  *(v1 + 64) = v9;
  v11 = sub_18A4A7518();

  v12 = sub_18A4A7258();
  v13 = [v10 sectionWithRows:v11 title:v12];

  if (v13)
  {
    *(v0 + 56) = sub_188A34624(0, &qword_1EA934B98);
    *(v0 + 32) = v13;
    v14 = sub_18A4A7258();
    v15 = sub_18A4A7518();

    [v10 moduleWithTitle:v14 contents:v15];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_188F79DE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64C6E0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A64C6E0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v2 childSettingsKeyPath:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = sub_188A34624(0, &qword_1EA934BA8);
  *(v1 + 56) = v6;
  *(v1 + 32) = v5;
  v7 = sub_18A4A7258();
  v8 = sub_18A4A7258();
  v9 = [v4 rowWithTitle:v7 childSettingsKeyPath:v8];

  if (!v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v1 + 88) = v6;
  *(v1 + 64) = v9;
  v10 = sub_18A4A7258();
  v11 = sub_18A4A7258();
  v12 = objc_opt_self();
  v13 = [v12 rowWithTitle:v10 valueKeyPath:v11];

  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = sub_188A34624(0, &qword_1EA934B90);
  *(v1 + 120) = v14;
  *(v1 + 96) = v13;
  v15 = sub_18A4A7258();
  v16 = sub_18A4A7258();
  v17 = [objc_opt_self() rowWithTitle:v15 valueKeyPath:v16];

  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = objc_opt_self();
  *(v1 + 152) = sub_188A34624(0, &unk_1EA936980);
  *(v1 + 128) = v17;
  v19 = sub_18A4A7518();

  v20 = sub_18A4A7258();
  v21 = [v18 sectionWithRows:v19 title:v20];

  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v56 = sub_188A34624(0, &qword_1EA934B98);
  *(v0 + 56) = v56;
  *(v0 + 32) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_18A64D660;
  v23 = sub_18A4A7258();
  v24 = sub_18A4A7258();
  v25 = [v12 rowWithTitle:v23 valueKeyPath:v24];

  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v22 + 56) = v14;
  *(v22 + 32) = v25;
  v26 = sub_18A4A7258();
  v27 = sub_18A4A7258();
  v28 = [v12 rowWithTitle:v26 valueKeyPath:v27];

  if (!v28)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v22 + 88) = v14;
  *(v22 + 64) = v28;
  v29 = sub_18A4A7258();
  v30 = sub_18A4A7258();
  v31 = [v12 rowWithTitle:v29 valueKeyPath:v30];

  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v22 + 120) = v14;
  *(v22 + 96) = v31;
  v32 = sub_18A4A7518();

  v33 = sub_18A4A7258();
  v34 = [v18 sectionWithRows:v32 title:v33];

  if (!v34)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v0 + 88) = v56;
  *(v0 + 64) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_18A64D660;
  v36 = sub_18A4A7258();
  v37 = sub_18A4A7258();
  v38 = [v12 rowWithTitle:v36 valueKeyPath:v37];

  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v35 + 56) = v14;
  *(v35 + 32) = v38;
  v39 = sub_18A4A7258();
  v40 = sub_18A4A7258();
  v41 = [v12 rowWithTitle:v39 valueKeyPath:v40];

  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v35 + 88) = v14;
  *(v35 + 64) = v41;
  v42 = sub_18A4A7258();
  v43 = sub_18A4A7258();
  v44 = [v12 rowWithTitle:v42 valueKeyPath:v43];

  if (!v44)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v35 + 120) = v14;
  *(v35 + 96) = v44;
  v45 = sub_18A4A7518();

  v46 = sub_18A4A7258();
  v47 = [v18 sectionWithRows:v45 title:v46];

  if (!v47)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v0 + 120) = v56;
  *(v0 + 96) = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_18A64BFB0;
  v49 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v50 = sub_18A4A7258();
  v51 = [objc_opt_self() rowWithTitle:v50 action:v49];

  if (!v51)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v48 + 56) = sub_188A34624(0, &qword_1EA934BA0);
  *(v48 + 32) = v51;
  v52 = sub_18A4A7518();

  v53 = [v18 sectionWithRows_];

  if (v53)
  {
    *(v0 + 152) = v56;
    *(v0 + 128) = v53;
    v54 = sub_18A4A7258();
    v55 = sub_18A4A7518();

    [v18 moduleWithTitle:v54 contents:v55];

    return;
  }

LABEL_31:
  __break(1u);
}

id sub_188F7A700()
{
  v1 = [v0 configuration];
  v2 = [v1 _isTextViewConfiguration];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 configuration];
  v4 = [v3 _isTextAnimationsConfiguration];

  if (v4)
  {
    return 0;
  }

  v5 = [v0 configuration];
  v6 = [v5 _hasPopoverPresentation];

  if (v6)
  {
    return 0;
  }

  result = [v0 _editResponder];
  if (result)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 traitCollection];
      swift_unknownObjectRelease();
      v10 = [v9 horizontalSizeClass];

      return (v10 == 1);
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

id sub_188F7A85C()
{
  if (![v0 _editResponder])
  {
    goto LABEL_8;
  }

  v10 = &unk_1EFE896F0;
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (!v1 || (v2 = v1, ([v1 respondsToSelector_] & 1) == 0))
  {
    swift_unknownObjectRelease();
LABEL_8:
    v4 = 2;
    goto LABEL_9;
  }

  v3 = [v2 _shouldAdjustKeyboardGuidesForTextFormattingIfNeeded];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

LABEL_9:
  if (![v0 _editResponder])
  {
LABEL_14:
    v8 = 0;
    return [v0 modifyKeyboardTrackingIfNeededForType:v4 start:0 force:1 immediate:v8];
  }

  v5 = swift_dynamicCastObjCProtocolConditional();
  if (!v5 || (v6 = v5, ([v5 respondsToSelector_] & 1) == 0))
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v7 = [v6 _shouldAdjustKeyboardGuidesForTextFormattingIfNeeded];
  swift_unknownObjectRelease();
  v8 = v7 ^ 1;
  return [v0 modifyKeyboardTrackingIfNeededForType:v4 start:0 force:1 immediate:v8];
}

void sub_188F7A9FC(uint64_t a1, char a2, char a3, char a4)
{
  if (sub_188F7A700())
  {
    v9 = [v4 presentedViewController];
    if (!v9 || (v9, (a3 & 1) != 0))
    {
      if ([v4 _editResponder])
      {
        v10 = swift_dynamicCastObjCProtocolConditional();
        if (v10 && (v11 = v10, ([v10 respondsToSelector_] & 1) != 0))
        {
          v12 = [v11 _shouldAdjustKeyboardGuidesForTextFormattingIfNeeded];
          swift_unknownObjectRelease();
          if ((v12 & 1) == 0 && (a3 & 1) == 0)
          {
            return;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v13 = [v4 view];
      if (!v13)
      {
        __break(1u);
        goto LABEL_43;
      }

      v14 = v13;
      v15 = [v13 window];

      if (v15)
      {
LABEL_13:
        [v15 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v24 = [v4 view];
        if (v24)
        {
          v25 = v24;
          rect_8 = v23;
          v26 = v17;
          v27 = [v4 view];
          if (v27)
          {
            v28 = v27;
            [v27 frame];
            v30 = v29;
            v32 = v31;
            v34 = v33;
            v36 = v35;

            [v25 convertRect:v15 toCoordinateSpace:{v30, v32, v34, v36}];
            rect = v37;
            v39 = v38;
            v41 = v40;
            v43 = v42;

            v60.origin.x = v26;
            v60.origin.y = v19;
            v60.size.width = v21;
            v60.size.height = rect_8;
            Height = CGRectGetHeight(v60);
            v61.origin.x = rect;
            v61.origin.y = v39;
            v61.size.width = v41;
            v61.size.height = v43;
            v45 = Height - CGRectGetHeight(v61);
            v62.origin.x = v26;
            v62.origin.y = v19;
            v62.size.width = v21;
            v62.size.height = rect_8;
            v46 = CGRectGetHeight(v62);
            if (a1 == 2)
            {
              v47 = v45;
            }

            else
            {
              v47 = v46;
            }

            if (a1 == 2)
            {
              v48 = v46;
            }

            else
            {
              v48 = v45;
            }

            v49 = [v15 windowScene];
            if (!v49)
            {
              goto LABEL_40;
            }

            v50 = v49;
            v51 = [objc_opt_self() trackingCoordinatorForScene_];
            v52 = 0;
            if (a1 == 3)
            {
              if ((a4 & 1) == 0)
              {
                [objc_opt_self() defaultDurationForTransition_];
              }
            }

            else if (a1 == 2)
            {
              if ((a4 & 1) == 0)
              {
                [objc_opt_self() defaultDurationForTransition_];
              }

              v53 = 1;
              if (a2)
              {
                goto LABEL_37;
              }

LABEL_36:
              if ((a4 & 1) == 0)
              {
                [v51 animateTrackingElementsFromStart:v53 toEnd:0.0 duration:v48 forShow:{v41, v43, 0.0, v47, v41, v43, v52}];
                goto LABEL_39;
              }

LABEL_37:
              [v51 moveKeyboardTrackingElementsFromStartFrame:a2 & 1 endFrame:v53 duration:0.0 isStart:v48 forShow:{v41, v43, 0.0, v47, v41, v43, v52}];
LABEL_39:

LABEL_40:
              return;
            }

            v53 = a1 == 1;
            if (a2)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          goto LABEL_44;
        }

LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v54 = [v4 presentationController];
      if (v54)
      {
        v55 = v54;
        v56 = [v54 _sourceViewController];

        if (v56)
        {
          v57 = [v56 view];

          if (!v57)
          {
LABEL_45:
            __break(1u);
            return;
          }

          v15 = [v57 window];

          if (!v15)
          {
            return;
          }

          goto LABEL_13;
        }
      }
    }
  }
}

void sub_188F7AEA4(uint64_t a1, char a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if ((sub_188F7A700() & 1) == 0)
  {
    return;
  }

  v21 = [v10 presentedViewController];
  if (!v21)
  {
    if ([v10 _editResponder])
    {
      v37 = &unk_1EFE896F0;
      v22 = swift_dynamicCastObjCProtocolConditional();
      if (v22 && (v23 = v22, ([v22 respondsToSelector_] & 1) != 0))
      {
        v24 = [v23 _shouldAdjustKeyboardGuidesForTextFormattingIfNeeded];
        swift_unknownObjectRelease();
        if ((v24 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v25 = [v10 view];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 window];

      if (v27)
      {
        goto LABEL_14;
      }

      v33 = [v10 presentationController];
      if (!v33)
      {
        return;
      }

      v34 = v33;
      v35 = [v33 _sourceViewController];

      if (!v35)
      {
        return;
      }

      v36 = [v35 view];

      if (v36)
      {
        v27 = [v36 window];

        if (!v27)
        {
          return;
        }

LABEL_14:
        v28 = [v27 windowScene];
        if (!v28)
        {
LABEL_28:

          return;
        }

        v29 = v28;
        v30 = [objc_opt_self() trackingCoordinatorForScene_];
        if (a1 == 2)
        {
          [objc_opt_self() defaultDurationForTransition_];
          v32 = 1;
          if (a2)
          {
LABEL_19:
            [v30 moveKeyboardTrackingElementsFromStartFrame:a2 & 1 endFrame:v32 duration:a3 isStart:a4 forShow:{a5, a6, a7, a8, a9, a10, v31, v37}];
LABEL_27:

            goto LABEL_28;
          }
        }

        else
        {
          v31 = 0;
          if (a1 == 3)
          {
            [objc_opt_self() defaultDurationForTransition_];
          }

          v32 = a1 == 1;
          if (a2)
          {
            goto LABEL_19;
          }
        }

        [v30 animateTrackingElementsFromStart:v32 toEnd:a3 duration:a4 forShow:{a5, a6, a7, a8, a9, a10, v31, v37}];
        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }
}

void sub_188F7B2B8()
{
  v1 = v0;
  if ([v0 _editResponder])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v2 = [objc_opt_self() defaultCenter];
      if ([v0 _editResponder])
      {
        v3 = swift_dynamicCastObjCProtocolConditional();
        if (v3 && (v4 = v3, ([v3 respondsToSelector_] & 1) != 0))
        {
          v5 = [v4 _shouldAdjustKeyboardGuidesForTextFormattingIfNeeded];
          swift_unknownObjectRelease();
          if ((v5 & 1) == 0)
          {
            v6 = sel__textFormattingDidFinish;
            v7 = sub_188F7B4D0();
            [v2 addObserver:v0 selector:sel__textFormattingDidFinish name:@"UIApplicationDidEnterBackgroundNotification" object:v7];

            v8 = &UIApplicationWillResignActiveNotification;
LABEL_13:
            v10 = *v8;
            v11 = sub_188F7B4D0();
            [v2 addObserver:v1 selector:v6 name:v10 object:v11];

            swift_unknownObjectRelease();
            return;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v6 = sel__resumeKeyboardSuppressionIfNeeded;
      v9 = sub_188F7B4D0();
      [v2 addObserver:v0 selector:sel__resumeKeyboardSuppressionIfNeeded name:@"UIApplicationWillEnterForegroundNotification" object:v9];

      v8 = &UIApplicationDidBecomeActiveNotification;
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
  }
}

id sub_188F7B4D0()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
  }

  else
  {
    result = [v0 nextResponder];
    if (!result)
    {
      return result;
    }

    v5 = result;
    v2 = sub_188F7B4D0();
  }

  return v2;
}

id sub_188F7B610()
{
  result = [v0 _editResponder];
  if (result)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2 || ![v2 isFirstResponder] || (v3 = objc_msgSend(v0, sel_presentingViewController)) == 0 || (v3, v4 = objc_msgSend(v0, sel_configuration), v5 = objc_msgSend(v4, sel__hasPopoverPresentation), v4, (v5 & 1) != 0))
    {

      return swift_unknownObjectRelease();
    }

    v6 = swift_dynamicCastObjCProtocolConditional();
    if (!v6)
    {
      return swift_unknownObjectRelease();
    }

    v7 = v6;
    v8 = [v6 respondsToSelector_];
    swift_unknownObjectRetain();
    if (v8)
    {
      [v7 _startSuppressingKeyboardForTextFormatting_];
    }

    [v0 _modifyKeyboardTrackingIfNeededForType_start_];
    return swift_unknownObjectRelease_n();
  }

  return result;
}

id sub_188F7B7E4(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() livingLightWithPalette:a1 seed:0];

  return v1;
}

id sub_188F7B884(void *a1, int a2)
{
  aBlock[6] = [a1 hash];
  v4 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v4);

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = a1;
  v8 = sub_18A4A7258();

  aBlock[4] = sub_188F7BBA0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188DF2768;
  aBlock[3] = &block_descriptor_45;
  v9 = _Block_copy(aBlock);
  v10 = [v6 initWithIdentifier:v8 lightSourceViewProvider:v9];

  _Block_release(v9);

  return v10;
}

uint64_t sub_188F7BA08(void *a1, int a2, double a3, double a4, double a5, double a6)
{
  v11 = [a1 colors];
  sub_188EA580C();
  v12 = sub_18A4A7548();

  if (v12 >> 62)
  {
    result = sub_18A4A7F68();
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else if (((2 * result) & 0x8000000000000000) == 0)
  {
    *&v16 = v12;
    *(&v16 + 1) = 2 * result;
    v17 = xmmword_18A655620;
    v18 = xmmword_18A655630;
    v19 = 0x3FE0000000000000;
    LOBYTE(v20) = 0;
    v21 = 0x4014000000000000;
    LODWORD(v22) = a2;
    v14 = objc_allocWithZone(type metadata accessor for _UICloudChamber());
    v15 = _UICloudChamber.init(frame:configuration:)(&v16, a3, a4, a5, a6);
    [v15 setClipsToBounds_];
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_188F7BBAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

float32x4_t sub_188F7BBF0(float32x4_t *a1)
{
  v2 = vmulq_f32(a1[1], v1[1]);
  *v1 = vmulq_f32(*a1, *v1);
  v1[1] = v2;
  v3 = vmulq_f32(a1[3], v1[3]);
  v1[2] = vmulq_f32(a1[2], v1[2]);
  v1[3] = v3;
  result = vmulq_f32(a1[4], v1[4]);
  v1[4] = result;
  return result;
}

uint64_t sub_188F7BC2C()
{
  if ((~*v0 & 0x7F800000) == 0)
  {
    return 1;
  }

  v2.i64[0] = 0x7F0000007FLL;
  v2.i64[1] = 0x7F0000007FLL;
  v3 = vnegq_f32(v2);
  if (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(*(v0 + 4), v3), v3))))
  {
    return 1;
  }

  if ((~*(v0 + 20) & 0x7F800000) == 0)
  {
    return 1;
  }

  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v5 = vnegq_f32(v4);
  if (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(*(v0 + 24), v5), v5))))
  {
    return 1;
  }

  if ((~*(v0 + 40) & 0x7F800000) == 0)
  {
    return 1;
  }

  v6.i64[0] = 0x7F0000007FLL;
  v6.i64[1] = 0x7F0000007FLL;
  v7 = vnegq_f32(v6);
  if (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(*(v0 + 44), v7), v7))))
  {
    return 1;
  }

  if ((~*(v0 + 60) & 0x7F800000) == 0)
  {
    return 1;
  }

  result = 1;
  if ((~*(v0 + 64) & 0x7F800000) != 0)
  {
    v8 = (~*(v0 + 76) & 0x7F800000) == 0;
    if ((*(v0 + 72) & 0x7F800000) == 0x7F800000)
    {
      v8 = 1;
    }

    return (*(v0 + 68) & 0x7F800000) == 0x7F800000 || v8;
  }

  return result;
}

BOOL sub_188F7BD48()
{
  if ((~*v0 & 0x7F800000) == 0)
  {
    return 1;
  }

  if ((~v0[1] & 0x7F800000) == 0)
  {
    return 1;
  }

  if ((~v0[2] & 0x7F800000) == 0)
  {
    return 1;
  }

  if ((~v0[3] & 0x7F800000) != 0)
  {
    return (~v0[4] & 0x7F800000) == 0;
  }

  return 1;
}

BOOL sub_188F7BDB0(float *a1, float a2)
{
  if (vabds_f32(*v2, *a1) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[1], a1[1]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[2], a1[2]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[3], a1[3]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[4], a1[4]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[5], a1[5]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[6], a1[6]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[7], a1[7]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[8], a1[8]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[9], a1[9]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[10], a1[10]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[11], a1[11]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[12], a1[12]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[13], a1[13]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[14], a1[14]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[15], a1[15]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[16], a1[16]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[17], a1[17]) > a2)
  {
    return 0;
  }

  if (vabds_f32(v2[18], a1[18]) <= a2)
  {
    return vabds_f32(v2[19], a1[19]) <= a2;
  }

  return 0;
}

double sub_188F7BFE0(float32x2_t *a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934210);
  inited = swift_initStackObject();
  v5 = v2[1];
  v6 = a1[1];
  v7 = vdup_lane_s32(*&a2, 0);
  v8 = vdiv_f32(vabd_f32(*v2, *a1), v7);
  v9 = vcvtq_f64_f32(v8);
  *(inited + 16) = xmmword_18A6510E0;
  *(inited + 32) = v9;
  v10 = vcvtq_f64_f32(vdiv_f32(vabd_f32(v5, v6), v7));
  *(inited + 48) = v10;
  v11 = (vabds_f32(v2[2].f32[0], a1[2].f32[0]) / *&a2);
  *(inited + 64) = v11;
  v12 = vcgt_f32(vdup_lane_s32(v8, 1), v8).u8[0];
  v13 = v9.f64[1];
  if ((v12 & 1) == 0)
  {
    v13 = v9.f64[0];
  }

  if (v13 < v10.f64[0])
  {
    v13 = v10.f64[0];
  }

  v10.f64[0] = v10.f64[1];
  if (v13 >= v10.f64[1])
  {
    v10.f64[0] = v13;
  }

  if (v10.f64[0] >= v11)
  {
    v14 = v10.f64[0];
  }

  else
  {
    v14 = v11;
  }

  swift_setDeallocating();
  return v14;
}

void sub_188F7C0E4(uint64_t a1, double a2)
{
  LODWORD(a2) = 1008981770;
  v3 = sub_188F7BFE0(a1, a2);
  LODWORD(v3) = 1008981770;
  v4 = sub_188F7BFE0((a1 + 20), v3);
  LODWORD(v4) = 1008981770;
  v5 = sub_188F7BFE0((a1 + 40), v4);
  LODWORD(v5) = 1008981770;
  sub_188F7BFE0((a1 + 60), v5);
}

__n128 sub_188F7C188@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_188A55598(a1, v11);
  sub_188A921E4();
  swift_dynamicCast();
  [v10 CAColorMatrixValue];

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  result = v9;
  a2[4] = v9;
  return result;
}

id sub_188F7C240@<X0>(void *a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = v1[1];
  v8[0] = *v1;
  v8[1] = v4;
  v5 = v1[3];
  v8[2] = v1[2];
  v8[3] = v5;
  v8[4] = v1[4];
  result = [v3 valueWithCAColorMatrix_];
  if (result)
  {
    v7 = result;
    result = sub_188A921E4();
    a1[3] = result;
    *a1 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_188F7C2BC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_188D22388(v8, v9);
}

__n128 sub_188F7C368@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, void (*a3)(_OWORD *__return_ptr, _OWORD *, _OWORD *)@<X4>, uint64_t a4@<X8>)
{
  v5 = a1[3];
  v12[2] = a1[2];
  v12[3] = v5;
  v12[4] = a1[4];
  v6 = a1[1];
  v12[0] = *a1;
  v12[1] = v6;
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v13[4] = a2[4];
  v8 = a2[1];
  v13[0] = *a2;
  v13[1] = v8;
  a3(v11, v12, v13);
  v9 = v11[3];
  *(a4 + 32) = v11[2];
  *(a4 + 48) = v9;
  *(a4 + 64) = v11[4];
  result = v11[1];
  *a4 = v11[0];
  *(a4 + 16) = result;
  return result;
}

float32_t sub_188F7C3EC(float32x4_t *a1)
{
  v2 = a1[1].f32[0];
  *v1 = vmulq_f32(*a1, *v1);
  result = v2 * v1[1].f32[0];
  v1[1].f32[0] = result;
  return result;
}

void sub_188F7C458(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

float32_t sub_188F7C464@<S0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  result = a1[1].f32[0] + a2[1].f32[0];
  *a3 = vaddq_f32(*a1, *a2);
  a3[1].f32[0] = result;
  return result;
}

float32_t sub_188F7C488(float32x4_t *a1, float32x4_t *a2)
{
  result = a2[1].f32[0] + a1[1].f32[0];
  *a1 = vaddq_f32(*a2, *a1);
  a1[1].f32[0] = result;
  return result;
}

float32_t sub_188F7C4AC@<S0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  result = a1[1].f32[0] - a2[1].f32[0];
  *a3 = vsubq_f32(*a1, *a2);
  a3[1].f32[0] = result;
  return result;
}

float32_t sub_188F7C4D0(float32x4_t *a1, float32x4_t *a2)
{
  result = a1[1].f32[0] - a2[1].f32[0];
  *a1 = vsubq_f32(*a1, *a2);
  a1[1].f32[0] = result;
  return result;
}

uint64_t sub_188F7C52C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UIAnimatableColorMatrix.Row(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UIAnimatableColorMatrix.Row(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

unint64_t sub_188F7C5C0()
{
  result = qword_1EA9382D0;
  if (!qword_1EA9382D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9382D0);
  }

  return result;
}

unint64_t sub_188F7C618()
{
  result = qword_1EA9382D8;
  if (!qword_1EA9382D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9382D8);
  }

  return result;
}

unint64_t sub_188F7C66C(uint64_t a1)
{
  result = sub_188F7C694();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188F7C694()
{
  result = qword_1EA9382E0;
  if (!qword_1EA9382E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9382E0);
  }

  return result;
}

void __swiftcall _UIScenePresenterGeometryDriverStorage.init()(_UIScenePresenterGeometryDriverStorage *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for _UIScenePresenterGeometryDriverStorage()
{
  result = qword_1EA9382F0;
  if (!qword_1EA9382F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9382F0);
  }

  return result;
}

__n128 UITransitionEntityLayoutModel.bounds.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 32);
  result = *(v1 + 41);
  *(a1 + 41) = result;
  return result;
}

__n128 UITransitionEntityLayoutModel.bounds.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  *(v1 + 32) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 41) = result;
  return result;
}

__n128 UITransitionEntityLayoutModel.center.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 104);
  *a1 = *(v1 + 64);
  *(a1 + 16) = v2;
  result = *(v1 + 88);
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  return result;
}

__n128 UITransitionEntityLayoutModel.center.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v2;
  result = *(a1 + 24);
  *(v1 + 88) = result;
  *(v1 + 104) = v3;
  return result;
}

__n128 UITransitionEntityLayoutModel.alpha.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[7].n128_u8[8];
  v3 = v1[9].n128_u8[0];
  a1->n128_u64[0] = v1[7].n128_u64[0];
  a1->n128_u8[8] = v2;
  result = v1[8];
  a1[1] = result;
  a1[2].n128_u8[0] = v3;
  return result;
}

__n128 UITransitionEntityLayoutModel.alpha.setter(__n128 *a1)
{
  v2 = a1->n128_u8[8];
  v3 = a1[2].n128_u8[0];
  v1[7].n128_u64[0] = a1->n128_u64[0];
  v1[7].n128_u8[8] = v2;
  result = a1[1];
  v1[8] = result;
  v1[9].n128_u8[0] = v3;
  return result;
}

__n128 UITransitionEntityLayoutModel.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 168);
  v3 = *(v1 + 200);
  *(a1 + 32) = *(v1 + 184);
  *(a1 + 48) = v3;
  *(a1 + 57) = *(v1 + 209);
  *a1 = *(v1 + 152);
  *(a1 + 16) = result;
  return result;
}

__n128 UITransitionEntityLayoutModel.transform.setter(__int128 *a1)
{
  v2 = *a1;
  *(v1 + 168) = a1[1];
  v3 = a1[3];
  *(v1 + 184) = a1[2];
  *(v1 + 200) = v3;
  result = *(a1 + 57);
  *(v1 + 209) = result;
  *(v1 + 152) = v2;
  return result;
}

__n128 UITransitionEntityLayoutModel.init(bounds:center:alpha:transform:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  *v13 = a1[2];
  *&v13[9] = *(a1 + 41);
  v5 = *(a2 + 16);
  v6 = *(a2 + 40);
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 32);
  *&v12[7] = *a4;
  *&v12[64] = *(a4 + 57);
  *&v12[55] = a4[3];
  *&v12[39] = a4[2];
  *&v12[23] = a4[1];
  v10 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v10;
  *(a5 + 32) = *v13;
  *(a5 + 48) = *&v13[16];
  *(a5 + 64) = *a2;
  *(a5 + 80) = v5;
  *(a5 + 88) = *(a2 + 24);
  *(a5 + 104) = v6;
  *(a5 + 112) = v7;
  *(a5 + 120) = v8;
  *(a5 + 128) = *(a3 + 1);
  *(a5 + 144) = v9;
  *(a5 + 145) = *v12;
  result = *&v12[48];
  *(a5 + 209) = *&v12[64];
  *(a5 + 193) = *&v12[48];
  *(a5 + 177) = *&v12[32];
  *(a5 + 161) = *&v12[16];
  return result;
}

__n128 UITransitionEntityLayoutModel.defaultAnimated()@<Q0>(uint64_t a1@<X8>)
{
  *(v1 + 208) = xmmword_18A655850;
  *(v1 + 224) = 0;
  *(v1 + 40) = xmmword_18A655850;
  *(v1 + 56) = 0;
  *(v1 + 88) = xmmword_18A655850;
  *(v1 + 104) = 0;
  *(v1 + 128) = xmmword_18A655850;
  *(v1 + 144) = 0;
  *(a1 + 224) = 0;
  v2 = *(v1 + 176);
  *(a1 + 160) = *(v1 + 160);
  *(a1 + 176) = v2;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  v4 = *(v1 + 208);
  *(a1 + 192) = *(v1 + 192);
  *(a1 + 208) = v4;
  v5 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v5;
  v6 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v6;
  v7 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v7;
  result = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

__n128 UITransitionEntityLayoutModel.fromCurrent()@<Q0>(uint64_t a1@<X8>)
{
  *(v1 + 184) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 200) = 2;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 2;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 2;
  *(v1 + 112) = 0;
  *(v1 + 120) = 2;
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(v1 + 96);
  v7 = *(v1 + 112);
  v8 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(v1 + 160);
  v10 = *(v1 + 176);
  v11 = *(v1 + 192);
  v12 = *(v1 + 208);
  *(a1 + 224) = *(v1 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

double static UITransitionEntityLayoutModel.fromCurrent()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 2;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 200) = 2;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 2;
  return result;
}

BOOL _s5UIKit29UITransitionEntityLayoutModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v2;
  v37[0] = *(a1 + 32);
  *(v37 + 9) = *(a1 + 41);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v26 = *(a1 + 96);
  v27 = *(a1 + 88);
  v6 = *(a1 + 104);
  v31 = *(a1 + 112);
  v30 = *(a1 + 120);
  v21 = *(a1 + 136);
  v22 = *(a1 + 128);
  v24 = *(a1 + 144);
  v7 = *(a1 + 168);
  v8 = *(a1 + 200);
  v32[2] = *(a1 + 184);
  v33[0] = v8;
  *(v33 + 9) = *(a1 + 209);
  v32[0] = *(a1 + 152);
  v32[1] = v7;
  v9 = *(a2 + 16);
  v38[0] = *a2;
  v38[1] = v9;
  v39[0] = *(a2 + 32);
  *(v39 + 9) = *(a2 + 41);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v14 = *(a2 + 88);
  v13 = *(a2 + 96);
  v15 = *(a2 + 104);
  v29 = *(a2 + 112);
  v28 = *(a2 + 120);
  *&v23 = *(a2 + 136);
  *(&v23 + 1) = *(a2 + 128);
  v25 = *(a2 + 144);
  v16 = *(a2 + 152);
  *(v35 + 9) = *(a2 + 209);
  v17 = *(a2 + 200);
  v34[2] = *(a2 + 184);
  v35[0] = v17;
  v18 = *(a2 + 168);
  v34[0] = v16;
  v34[1] = v18;
  if (!sub_188F8C764(v36, v38) || !sub_188F8E858(v3, v4, v5, v10, v11, v12))
  {
    return 0;
  }

  if (!v6)
  {
    v19 = 0;
    if (v15)
    {
      return v19;
    }

LABEL_8:
    if (v27 != v14 || v26 != v13)
    {
      return v19;
    }

LABEL_13:
    if (sub_188F8E7FC(v31, v30, v29, v28))
    {
      if (v24)
      {
        if (v24 != 1)
        {
          v19 = 0;
          if (v25 != 2 || v23 != 0)
          {
            return v19;
          }

          return sub_188F8C8C0(v32, v34);
        }

        if (v25 == 1)
        {
LABEL_17:
          v19 = 0;
          if (v22 != *(&v23 + 1) || v21 != *&v23)
          {
            return v19;
          }

          return sub_188F8C8C0(v32, v34);
        }
      }

      else if (!v25)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

  if (v6 == 1)
  {
    if (v15 != 1)
    {
      return 0;
    }

    v19 = 0;
    goto LABEL_8;
  }

  v19 = 0;
  if (v15 == 2 && !(*&v13 | *&v14))
  {
    goto LABEL_13;
  }

  return v19;
}

__n128 __swift_memcpy225_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_188F7CEF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 225))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_188F7CF3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 216) = 0;
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
    *(result + 224) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 225) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 225) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

id sub_188F7D414()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIToolbarPaddingSpec();
  result = objc_msgSendSuper2(&v2, sel_setDefaultValues);
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_top] = 0x4024000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneBottom] = 0x403C000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneSides] = 0x403C000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneCompactHeightBottom] = 0x4038000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneCompactHeightSides] = 0x4043000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_padBottom] = 0x4024000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_padSides] = 0x4024000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_macBottom] = 0x4024000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_macSides] = 0x4024000000000000;
  return result;
}

id sub_188F7D534()
{
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_top] = 0x4024000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneKeyboard] = 0x4028000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneBottom] = 0x403C000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneSides] = 0x403C000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneCompactHeightBottom] = 0x4038000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_phoneCompactHeightSides] = 0x4043000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_padBottom] = 0x4024000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_padSides] = 0x4024000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_macBottom] = 0x4024000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit21_UIToolbarPaddingSpec_macSides] = 0x4024000000000000;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIToolbarPaddingSpec();
  return objc_msgSendSuper2(&v2, sel_initWithDefaultValues);
}

id sub_188F7D630(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_188F7D68C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFA0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A64BFB0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = [objc_opt_self() rowWithTitle:v2 childSettingsKeyPath:v3];

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = objc_opt_self();
  *(v1 + 56) = sub_188A34624(0, &qword_1EA934BA8);
  *(v1 + 32) = v4;
  v6 = sub_18A4A7518();

  v7 = sub_18A4A7258();
  v8 = [v5 sectionWithRows:v6 title:v7];

  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = sub_188A34624(0, &qword_1EA934B98);
  *(v0 + 56) = v9;
  *(v0 + 32) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18A64BFB0;
  v11 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v12 = sub_18A4A7258();
  v13 = [objc_opt_self() rowWithTitle:v12 action:v11];

  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v10 + 56) = sub_188A34624(0, &qword_1EA934BA0);
  *(v10 + 32) = v13;
  v14 = sub_18A4A7518();

  v15 = [v5 sectionWithRows_];

  if (v15)
  {
    *(v0 + 88) = v9;
    *(v0 + 64) = v15;
    v16 = sub_18A4A7258();
    v17 = sub_18A4A7518();

    [v5 moduleWithTitle:v16 contents:v17];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_188F7D9B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A6539E0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A64BFB0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v2 valueKeyPath:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = objc_opt_self();
  v7 = sub_188A34624(0, &qword_1EA934B90);
  *(v1 + 56) = v7;
  *(v1 + 32) = v5;
  v8 = sub_18A4A7518();

  v9 = sub_18A4A7258();
  v10 = [v6 sectionWithRows:v8 title:v9];

  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v59 = sub_188A34624(0, &qword_1EA934B98);
  *(v0 + 56) = v59;
  *(v0 + 32) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18A64BFA0;
  v12 = sub_18A4A7258();
  v13 = sub_18A4A7258();
  v14 = [v4 rowWithTitle:v12 valueKeyPath:v13];

  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v11 + 56) = v7;
  *(v11 + 32) = v14;
  v15 = sub_18A4A7258();
  v16 = sub_18A4A7258();
  v17 = [v4 rowWithTitle:v15 valueKeyPath:v16];

  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v11 + 88) = v7;
  *(v11 + 64) = v17;
  v18 = sub_18A4A7518();

  v19 = sub_18A4A7258();
  v20 = [v6 sectionWithRows:v18 title:v19];

  if (!v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v0 + 88) = v59;
  *(v0 + 64) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18A64BFA0;
  v22 = sub_18A4A7258();
  v23 = sub_18A4A7258();
  v24 = [v4 rowWithTitle:v22 valueKeyPath:v23];

  if (!v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v21 + 56) = v7;
  *(v21 + 32) = v24;
  v25 = sub_18A4A7258();
  v26 = sub_18A4A7258();
  v27 = [v4 rowWithTitle:v25 valueKeyPath:v26];

  if (!v27)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v21 + 88) = v7;
  *(v21 + 64) = v27;
  v28 = sub_18A4A7518();

  v29 = sub_18A4A7258();
  v30 = [v6 sectionWithRows:v28 title:v29];

  if (!v30)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v0 + 120) = v59;
  *(v0 + 96) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_18A64BFA0;
  v32 = sub_18A4A7258();
  v33 = sub_18A4A7258();
  v34 = [v4 rowWithTitle:v32 valueKeyPath:v33];

  if (!v34)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v31 + 56) = v7;
  *(v31 + 32) = v34;
  v35 = sub_18A4A7258();
  v36 = sub_18A4A7258();
  v37 = [v4 rowWithTitle:v35 valueKeyPath:v36];

  if (!v37)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v31 + 88) = v7;
  *(v31 + 64) = v37;
  v38 = sub_18A4A7518();

  v39 = sub_18A4A7258();
  v40 = [v6 sectionWithRows:v38 title:v39];

  if (!v40)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v0 + 152) = v59;
  *(v0 + 128) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_18A64BFA0;
  v42 = sub_18A4A7258();
  v43 = sub_18A4A7258();
  v44 = [v4 rowWithTitle:v42 valueKeyPath:v43];

  if (!v44)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v41 + 56) = v7;
  *(v41 + 32) = v44;
  v45 = sub_18A4A7258();
  v46 = sub_18A4A7258();
  v47 = [v4 rowWithTitle:v45 valueKeyPath:v46];

  if (!v47)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v41 + 88) = v7;
  *(v41 + 64) = v47;
  v48 = sub_18A4A7518();

  v49 = sub_18A4A7258();
  v50 = [v6 sectionWithRows:v48 title:v49];

  if (!v50)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(v0 + 184) = v59;
  *(v0 + 160) = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_18A64BFB0;
  v52 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v53 = sub_18A4A7258();
  v54 = [objc_opt_self() rowWithTitle:v53 action:v52];

  if (!v54)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *(v51 + 56) = sub_188A34624(0, &qword_1EA934BA0);
  *(v51 + 32) = v54;
  v55 = sub_18A4A7518();

  v56 = [v6 sectionWithRows_];

  if (v56)
  {
    *(v0 + 216) = v59;
    *(v0 + 192) = v56;
    v57 = sub_18A4A7258();
    v58 = sub_18A4A7518();

    [v6 moduleWithTitle:v57 contents:v58];

    return;
  }

LABEL_33:
  __break(1u);
}

void sub_188F7E2D4(uint64_t a1@<X0>, __int128 *a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = *(a1 + 16);
  v9 = _s15InstantlyStableVMa();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v62 - v10;
  v11 = _s7SwiftUIVMa();
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  v14 = _s14FrictionBounceVMa();
  v62 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  Description = v8[-1].Description;
  MEMORY[0x1EEE9AC00](v17);
  v68 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = _s6SpringVMa();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8 == &type metadata for UIAnimatableColorMatrix)
  {

    sub_188C56278(a2, a3);
    return;
  }

  v70 = a2;
  if (v8 == &type metadata for UIAnimatableSize)
  {
    v33 = sub_188C55C38(a3);
    goto LABEL_22;
  }

  v28 = v4;
  if (v8 == &type metadata for UIAnimatableColorArray)
  {
    v36 = sub_188CD121C(a3);
    *v70 = v36;
    return;
  }

  if (v8 == &type metadata for UIAnimatableCornerRadii)
  {
    v37 = v70;

    sub_188EF0608(v37, a3);
    return;
  }

  if (v8 == &type metadata for UIAnimatableVector)
  {
    v38 = v70;
    *v38 = sub_188D758A4(a3);
    return;
  }

  if (v8 == &type metadata for UIAnimatableMeshTransform)
  {
    v39 = v70;
    sub_188EF082C(&v71, a3);
    v40 = *v72;
    *v39 = v71;
    v39[1] = v40;
    *(v39 + 29) = *&v72[13];
    return;
  }

  if (v8 == &type metadata for UIAnimatableFloat)
  {
    v41 = v70;
    *v41 = sub_188EF10E0(a3);
    return;
  }

  if (v8 == &type metadata for UIAnimatableNormalizedPoint)
  {
    v42 = v70;
    *v42 = sub_188EF13C8(a3);
    *(v42 + 1) = v43;
    return;
  }

  if (v8 == &type metadata for UIAnimatableColor)
  {
    v44 = v70;
    *v44 = sub_188C53BC8(a3);
    *(v44 + 1) = v45;
    *(v44 + 2) = v46;
    *(v44 + 3) = v47;
    return;
  }

  if (v8 == &type metadata for UIAnimatableScaledFloat)
  {
    v48 = v70;
    *v48 = sub_188EF1740(a3);
    return;
  }

  if (v8 == &type metadata for UIAnimatableRect)
  {
    v49 = sub_188EF1A28(a3);
LABEL_35:
    v53 = v70;
    *v70 = v49;
    *(v53 + 1) = v50;
    *(v53 + 2) = v51;
    *(v53 + 3) = v52;
    return;
  }

  if (v8 == &type metadata for UIAnimatableNormalizedRect)
  {
    v49 = sub_188EF1CC0(a3);
    goto LABEL_35;
  }

  if (v8 != &type metadata for UIAnimatableTransform)
  {
    if (v8 != &type metadata for UIAnimatablePoint)
    {
      v29 = v24;
      (*(v23 + 32))(v27, v28, a1, v25);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      Description += 4;
      if (EnumCaseMultiPayload > 1)
      {
        v55 = v28;
        if (EnumCaseMultiPayload == 2)
        {
          v56 = v64;
          v57 = *(v63 + 32);
          v57(v13, v27, v64);
          v32 = v68;
          sub_188FBA678(v56, v68, a3);
          v57(v55, v13, v56);
        }

        else
        {
          v59 = v65;
          v60 = *(v66 + 32);
          v61 = v67;
          v60(v65, v27, v67);
          v32 = v68;
          sub_188E6A0B4(v61, v68);
          v60(v55, v59, v61);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        v58 = *(v62 + 32);
        v58(v16, v27, v14);
        v32 = v68;
        sub_188FB58D8(v14);
        v58(v28, v16, v14);
      }

      else
      {
        v31 = *(v29 + 32);
        v31(v21, v27, v19);
        v32 = v68;
        sub_188F3DE0C(v19, v68, a3);
        v31(v28, v21, v19);
      }

      swift_storeEnumTagMultiPayload();
      (*Description)(v70, v32, v8);
      return;
    }

    v33 = sub_188EF1F58(a3);
LABEL_22:
    v35 = v70;
    *v70 = v33;
    *(v35 + 1) = v34;
    return;
  }

  v54 = v70;

  sub_188AABCFC(v54, a3);
}

uint64_t sub_188F7EA98(uint64_t a1)
{
  v2 = v1;
  v4 = _s7SwiftUIVMa();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v5 + 32))(v8, v11, v4);
    v12 = v8[*(v4 + 64)];
    (*(v5 + 8))(v8, v4);
    v13 = (v12 == 2) | v12;
  }

  else
  {
    (*(v9 + 8))(v11, a1);
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_188F7EEE0()
{
  v1 = v0;
  [v0 fallbackCornerRadius];
  v3 = v2;
  v4 = [v1 maskedCorners];
  v5 = ((v4 << 63) >> 63) & v3;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  v7 = [v1 maskedCorners];
  v8 = v3 & ((v7 << 62) >> 63);
  if ((v7 & 2) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  v10 = [v1 maskedCorners];
  v11 = v3 & ((v10 << 61) >> 63);
  if ((v10 & 4) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

  v13 = [v1 maskedCorners];
  if ((v13 & 8) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = -1;
  }

  *&v26 = v5;
  BYTE8(v26) = v6;
  *&v27 = v8;
  BYTE8(v27) = v9;
  *&v28 = v11;
  BYTE8(v28) = v12;
  *&v29 = v3 & ((v13 << 60) >> 63);
  BYTE8(v29) = v14;
  v30 = MEMORY[0x1E69E7CC0];
  v15 = [v1 clippingView];
  if (v15)
  {
    v16 = v15;
    [v15 setClipsToBounds_];
  }

  v17 = [v1 clippingView];
  if (v17)
  {
    v18 = v17;
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v26;
    v22 = v27;
    sub_188E41F80(&v26, v20);
    UIView.cornerConfiguration.setter(&v21);
  }

  v23 = v28;
  v24 = v29;
  v25 = v30;
  v21 = v26;
  v22 = v27;
  return UIView.cornerConfiguration.setter(&v21);
}

id sub_188F7F0E0()
{
  v1 = [v0 clippingView];
  if (v1)
  {
    v2 = v1;
    [v1 setHidden_];
  }

  v3 = [v0 contentView];
  if (v3)
  {
    v4 = v3;
    v5 = [v0 containerView];
    [v5 addSubview_];
  }

  v6 = [v0 dimmingView];
  if (v6)
  {
    v7 = v6;
    v8 = [v0 containerView];
    [v8 addSubview_];
  }

  return [v0 updateCornerConfiguration];
}

void sub_188F7F25C()
{
  v1 = [v0 level];
  v2 = [(UIView *)v0 _traitOverridesIfExist];
  v3 = v2;
  if (v1)
  {
    if (!v2 || (v4 = sub_18A4A7258(), v5 = [(_UITraitOverrides *)v3 _hasTransformWithIdentifier:v4], v4, v3, (v5 & 1) == 0))
    {
      v6 = sub_18A4A7258();
      aBlock[4] = sub_188E26818;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A8528C;
      aBlock[3] = &block_descriptor_46;
      v7 = _Block_copy(aBlock);

      [(UIView *)v0 _addTraitCollectionTransformWithIdentifier:v6 transform:v7];
      _Block_release(v7);
    }
  }

  else if (v2)
  {
    v8 = sub_18A4A7258();
    [(_UITraitOverrides *)v3 _removeTransformWithIdentifier:v8];
  }
}

void sub_188F7F444()
{
  [v0 dimmingLevel];
  if (v1 <= 0.0)
  {
    v2 = [v0 dimmingView];
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = [v0 prepareDimmingView];
  }

  v3 = v2;
  [v0 dimmingLevel];
  [v3 setAlpha_];
}

id sub_188F7F638()
{
  result = [v0 dimmingView];
  if (!result)
  {
    v2 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:sel_tapGestureDidChange_];
    [v2 setNumberOfTapsRequired_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_18A64E3F0;
    v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v5 = v2;
    *(v3 + 32) = [v4 initWithInteger_];
    *(v3 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_188A34624(0, &qword_1ED48FD80);
    v6 = sub_18A4A7518();

    [v5 setAllowedTouchTypes_];

    [v0 bounds];
    v11 = [objc_allocWithZone(_s11DimmingViewCMa()) initWithFrame_];
    [v11 setAlpha_];
    [v11 addGestureRecognizer_];
    v12 = [v0 containerView];
    [v12 addSubview_];

    [v0 setDimmingView_];
    return v11;
  }

  return result;
}

id sub_188F7F890(uint64_t a1)
{
  if (a1 == 2)
  {
    result = [v1 leftScrollPocketInteraction];
    if (result)
    {
      return result;
    }

    v4 = &selRef_setLeftScrollPocketInteraction_;
    goto LABEL_7;
  }

  if (a1 != 8)
  {
    result = sub_18A4A8398();
    __break(1u);
    return result;
  }

  result = [v1 rightScrollPocketInteraction];
  if (!result)
  {
    v4 = &selRef_setRightScrollPocketInteraction_;
LABEL_7:
    v5 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle_];
    [v5 _setEdge_];
    v6 = [v1 prepareScrollPocketCollectorInteraction];
    [v5 _setCollectorInteraction_];

    [v1 addInteraction_];
    [v1 *v4];
    return v5;
  }

  return result;
}

uint64_t sub_188F7FB74()
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD00000000000002BLL, 0x800000018A697CD0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0x6E6D756C6F63203BLL, 0xEB00000000203D20);
  v3 = [v0 splitViewControllerColumn];
  v1 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v1);

  MEMORY[0x18CFE22D0](0x20656D617266203BLL, 0xEA0000000000203DLL);
  [v0 frame];
  type metadata accessor for CGRect(0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

id _UISplitViewControllerAdaptiveColumnView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

id sub_188F80030(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_188F80094()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_clippingView) = 0;
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_dimmingView) = 0;
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_ownedContentView) = 0;
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_scrollPocketCollectorInteraction) = 0;
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_leftScrollPocketInteraction) = 0;
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_rightScrollPocketInteraction) = 0;
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_background) = 0;
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_maskedCorners) = 0;
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_dimmingLevel) = 0;
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_fallbackCornerRadius) = 0;
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_level) = 0;
  *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_scrollPocketInsets) = UIEdgeInsetsZero;
  sub_18A4A8398();
  __break(1u);
}

void sub_188F801AC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleView);
  v3 = 0uLL;
  if (!v2)
  {
    v10 = 0;
    v11 = -1;
    v12 = 0uLL;
LABEL_15:
    v24 = v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements;
    v25 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements);
    v26 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 8);
    v27 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 16);
    v28 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 24);
    v29 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 32);
    *v24 = v3;
    *(v24 + 16) = v12;
    *(v24 + 32) = v10;
    v30 = *(v24 + 40);
    *(v24 + 40) = v11;
    sub_188F865E0(v25, v26, v27, v28, v29, v30);
    goto LABEL_16;
  }

  v4 = OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_reparentingHelper;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v13 = *&v2[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
    v14 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView);
    v15 = v13;
    if (v13)
    {
      v16 = v15;
      if (v14)
      {
        v17 = v14;
        v18 = v16;
        v19 = [v18 window];
        if (v19)
        {

          v10 = [v18 snapshotViewAfterScreenUpdates_];
          if (v10)
          {
            [v18 bounds];
            [v17 convertRect:v18 fromCoordinateSpace:?];
            v131 = v20;
            v132 = v21;
            v130 = v22;
            v133 = v23;

            *&v12 = v130;
            *&v3 = v131;
            *(&v3 + 1) = v132;
            *(&v12 + 1) = v133;
            v11 = 1;
            goto LABEL_15;
          }
        }

        else
        {

          v10 = 0;
        }
      }

      else
      {

        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = -1;
    v12 = 0uLL;
    v3 = 0uLL;
    goto LABEL_15;
  }

  v6 = Strong;
  v7 = v2;

  v8 = *&v2[v4];
  sub_189172A60();

LABEL_16:
  v31 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView;
  v32 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView);
  v33 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout;
  if (v32 && *(*(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout) + 56))
  {
    *&v131 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer;
    v34 = *(*&v32[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer);
    MEMORY[0x1EEE9AC00](v9);
    v129[2] = v34;
    *&v132 = v32;
    v35 = v34;
    v36 = sub_188FE3F04(sub_188F86670, v129);
    v37 = *&v35[OBJC_IVAR____UINavigationBarHostedViewContainer_wrapperViews];

    sub_188B62BD4(MEMORY[0x1E69E7CC0], 0);
    if (v37 >> 62)
    {
      v38 = sub_18A4A7F68();
      *&v133 = v31;
      if (v38)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *&v133 = v31;
      if (v38)
      {
LABEL_20:
        if (v38 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v38; ++i)
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v40 = sub_188E4A628(i, v37);
          }

          else
          {
            v40 = *(v37 + 8 * i + 32);
          }

          v41 = v40;
          [v36 addSubview_];
        }
      }
    }

    v42 = [(UIView *)v36 _traitOverrides];
    v43 = [(_UITraitOverrides *)v42 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    inited = swift_initStackObject();
    *(inited + 16) = v43;
    v134 = inited;
    sub_188AF8D18(0);
    v45 = v134;
    v46 = [(UIView *)v36 _traitOverrides];
    v47 = *(v45 + 16);

    [(_UITraitOverrides *)v46 _replaceWithOverrides:v47];

    [v36 frame];
    v48 = v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements;
    v49 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 144);
    v50 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 152);
    v51 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 160);
    v52 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 168);
    v53 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 176);
    *(v48 + 144) = v54;
    *(v48 + 152) = v55;
    *(v48 + 160) = v56;
    *(v48 + 168) = v57;
    *(v48 + 176) = v36;
    v58 = *(v48 + 184);
    *(v48 + 184) = 2;
    v59 = v36;
    sub_188F865E0(v49, v50, v51, v52, v53, v58);
    v60 = v131;
    v61 = OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromPlatters;
    *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromPlatters) = *(*&v32[v131] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content + 8);

    v62 = v132;
    sub_188EBEC48();
    v63 = *&v32[v60];
    v64 = *(v1 + v61);
    v65 = v63;

    sub_188FE3A9C(MEMORY[0x1E69E7CC0], v64, 0, 1);

    v33 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout;
    v31 = v133;
  }

  v66 = *(v1 + v33);
  v67 = v66[19];
  if (v67 && v67 != *(*(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout) + 152))
  {
    v68 = *(v1 + v31);
    v69 = 0uLL;
    if (v68)
    {
      v70 = v67;
      v71 = v68;
      v72 = v70;
      v73 = v71;
      v74 = v72;
      v75 = [v74 window];
      if (v75)
      {

        v68 = [v74 snapshotViewAfterScreenUpdates_];
        if (v68)
        {
          [v74 bounds];
          [v73 convertRect:v74 fromCoordinateSpace:?];
          v131 = v76;
          v132 = v77;
          v130 = v78;
          v133 = v79;

          *&v80 = v130;
          *&v69 = v131;
          *(&v69 + 1) = v132;
          *(&v80 + 1) = v133;
          v81 = 1;
LABEL_38:
          v82 = v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements;
          v83 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 48);
          v84 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 56);
          v85 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 64);
          v86 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 72);
          v87 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 80);
          *(v82 + 48) = v69;
          *(v82 + 64) = v80;
          *(v82 + 80) = v68;
          v88 = *(v82 + 88);
          *(v82 + 88) = v81;
          sub_188F865E0(v83, v84, v85, v86, v87, v88);
          goto LABEL_39;
        }
      }

      else
      {

        v68 = 0;
      }

      v81 = -1;
      v80 = 0uLL;
      v69 = 0uLL;
      goto LABEL_38;
    }

    v81 = -1;
    v80 = 0uLL;
    goto LABEL_38;
  }

LABEL_39:
  v89 = v66[20];
  if (v89 && v89 != *(*(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout) + 160))
  {
    v90 = *(v1 + v31);
    v91 = 0uLL;
    if (v90)
    {
      v92 = v89;
      v93 = v90;
      v94 = v92;
      v95 = v93;
      v96 = v94;
      v97 = [v96 window];
      if (v97)
      {

        v90 = [v96 snapshotViewAfterScreenUpdates_];
        if (v90)
        {
          [v96 bounds];
          [v95 convertRect:v96 fromCoordinateSpace:?];
          v131 = v98;
          v132 = v99;
          v130 = v100;
          v133 = v101;

          *&v102 = v130;
          *&v91 = v131;
          *(&v91 + 1) = v132;
          *(&v102 + 1) = v133;
          v103 = 1;
LABEL_49:
          v104 = v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements;
          v105 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 96);
          v106 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 104);
          v107 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 112);
          v108 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 120);
          v109 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 128);
          *(v104 + 96) = v91;
          *(v104 + 112) = v102;
          *(v104 + 128) = v90;
          v110 = *(v104 + 136);
          *(v104 + 136) = v103;
          sub_188F865E0(v105, v106, v107, v108, v109, v110);
          goto LABEL_50;
        }
      }

      else
      {

        v90 = 0;
      }

      v103 = -1;
      v102 = 0uLL;
      v91 = 0uLL;
      goto LABEL_49;
    }

    v103 = -1;
    v102 = 0uLL;
    goto LABEL_49;
  }

LABEL_50:
  v111 = v66[18];
  if (v111 && v66[7] && v111 != *(*(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout) + 144))
  {
    v112 = *(v1 + v31);
    if (v112)
    {
      v113 = v111;
      v114 = v112;
      [v113 bounds];
      [v114 convertRect:v113 fromCoordinateSpace:?];
      v131 = v115;
      v132 = v116;
      v130 = v117;
      v133 = v118;

      *&v121 = v130;
      *&v120 = v131;
      v119 = 0;
      *(&v120 + 1) = v132;
      *(&v121 + 1) = v133;
    }

    else
    {
      v111 = 0;
      v120 = 0uLL;
      v119 = -1;
      v121 = 0uLL;
    }

    v122 = v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements;
    v123 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 192);
    v124 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 200);
    v125 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 208);
    v126 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 216);
    v127 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 224);
    *(v122 + 192) = v120;
    *(v122 + 208) = v121;
    *(v122 + 224) = v111;
    v128 = *(v122 + 232);
    *(v122 + 232) = v119;
    sub_188F865E0(v123, v124, v125, v126, v127, v128);
  }
}

void sub_188F80A54()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
  v2 = *(v1 + 144);
  v3 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
  v4 = *(v3 + 144);
  if (v2)
  {
    if (v2 == v4)
    {
      return;
    }

LABEL_5:
    v27 = *(v1 + 144);
    v29 = *(v3 + 144);
    v5 = v2;
    v6 = v29;
    sub_188F80D0C(1);
    if (*(v1 + 25) == 1)
    {

      v27 = 0;
    }

    if (*(v3 + 25) == 1)
    {

      v29 = 0;
    }

    if (v27)
    {
      if (*(v3 + 26) == 1)
      {
        [v27 setAlpha_];
        goto LABEL_21;
      }
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar);
      v9 = v8;
      if (v8)
      {
        v10 = v9;
        [v9 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v31.origin.x = v12;
        v31.origin.y = v14;
        v31.size.width = v16;
        v31.size.height = v18;
        MaxY = CGRectGetMaxY(v31);
      }

      else
      {
        MaxY = 0.0;
      }

      sub_188CCAC84();
      x = v32.origin.x;
      y = v32.origin.y;
      width = v32.size.width;
      height = v32.size.height;
      v7 = CGRectGetMaxY(v32);
      if (v29)
      {
        v25 = y + MaxY - v7;
        [v29 setAlpha_];
        [v29 setFrame_];
      }

      if (*(v3 + 26))
      {
LABEL_21:
        if (*(v3 + 25) != *(v1 + 25))
        {

          v26 = v29;
LABEL_29:

          return;
        }

        if (v29)
        {
          [v29 setAlpha_];
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

    if (v29)
    {
      [v29 setAlpha_];
LABEL_27:
      sub_188CCAC84();
      [v29 setFrame_];
    }

LABEL_28:
    [v29 layoutIfNeeded];

    v26 = v28;
    goto LABEL_29;
  }

  if (v4)
  {
    goto LABEL_5;
  }

  v20 = 0;
}

void sub_188F80D0C(char a1)
{
  if ((*(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_transition) - 1) <= 1)
  {
    v2 = *(*(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout) + 136);
    if (v2)
    {
      v3 = *(*(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout) + 136);
      if (v3 && v2 != v3)
      {
        v9 = v2;
        v6 = v3;
        v7 = v6;
        v8 = &selRef__navigationBarSlideTransitionWillBegin;
        if ((a1 & 1) == 0)
        {
          v8 = &selRef__navigationBarSlideTransitionDidEnd;
        }

        [v9 *v8];
        [v7 _navigationBarSlideTransitionDidEnd];
      }
    }
  }
}

void sub_188F80DFC(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  if (a2 && a2 != a1)
  {
    v11 = a2;
    [v11 setFrame_];
    [v11 layoutIfNeeded];
    [v11 setTransitioning_];
  }
}

void sub_188F80EB0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements;
  if (*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithLargeTitle) == 1)
  {
    v3 = (v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements);
    v4 = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 40);
    if (v4 != 255)
    {
      v6 = v3[3];
      v5 = v3[4];
      v8 = v3[1];
      v7 = v3[2];
      v9 = *v3;
      v10 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromMatchingView);
      v171 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v11 + 24) = v8;
      *(v11 + 32) = v7;
      *(v11 + 40) = v6;
      *(v11 + 48) = v5;
      *(v11 + 56) = v4;
      *(v11 + 64) = v10;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_188F86788;
      *(v12 + 24) = v11;
      v178 = sub_188E3FE50;
      v179 = v12;
      aBlock = MEMORY[0x1E69E9820];
      v175 = 1107296256;
      v176 = sub_188A4A968;
      v177 = &block_descriptor_292;
      v13 = _Block_copy(&aBlock);
      sub_188F865B0(v9, v8, v7, v6, v5, v4);
      sub_188F865B0(v9, v8, v7, v6, v5, v4);
      sub_188F865B0(v9, v8, v7, v6, v5, v4);
      v14 = v10;

      [v171 performWithoutAnimation_];
      sub_188F865E0(v9, v8, v7, v6, v5, v4);
      _Block_release(v13);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      sub_188F865E0(v9, v8, v7, v6, v5, v4);
      if (v10)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v2 = OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements;
      v1 = v173;
    }
  }

  v15 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromMatchingView);
  v16 = v1 + v2;
  v17 = *(v1 + v2 + 184);
  if (v17 != 255)
  {
    v19 = *(v16 + 168);
    v18 = *(v16 + 176);
    v21 = *(v16 + 152);
    v20 = *(v16 + 160);
    v22 = *(v16 + 144);
    v167 = objc_opt_self();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;
    *(v23 + 32) = v20;
    *(v23 + 40) = v19;
    *(v23 + 48) = v18;
    *(v23 + 56) = v17;
    *(v23 + 64) = v15;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_188F86788;
    *(v24 + 24) = v23;
    v178 = sub_188E3FE50;
    v179 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v175 = 1107296256;
    v176 = sub_188A4A968;
    v177 = &block_descriptor_281;
    v25 = _Block_copy(&aBlock);
    sub_188F865B0(v22, v21, v20, v19, v18, v17);
    sub_188F865B0(v22, v21, v20, v19, v18, v17);
    sub_188F865B0(v22, v21, v20, v19, v18, v17);
    v26 = v15;

    [v167 performWithoutAnimation_];
    sub_188F865E0(v22, v21, v20, v19, v18, v17);
    _Block_release(v25);
    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();
    v1 = v173;

    sub_188F865E0(v22, v21, v20, v19, v18, v17);
    if (v25)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }
  }

  v27 = *(v16 + 88);
  if (v27 != 255)
  {
    v29 = *(v16 + 72);
    v28 = *(v16 + 80);
    v31 = *(v16 + 56);
    v30 = *(v16 + 64);
    v32 = *(v16 + 48);
    v168 = objc_opt_self();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v31;
    *(v33 + 32) = v30;
    *(v33 + 40) = v29;
    *(v33 + 48) = v28;
    *(v33 + 56) = v27;
    *(v33 + 64) = v15;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_188F86788;
    *(v34 + 24) = v33;
    v178 = sub_188E3FE50;
    v179 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v175 = 1107296256;
    v176 = sub_188A4A968;
    v177 = &block_descriptor_270;
    v35 = _Block_copy(&aBlock);
    sub_188F865B0(v32, v31, v30, v29, v28, v27);
    sub_188F865B0(v32, v31, v30, v29, v28, v27);
    v36 = v15;
    sub_188F865B0(v32, v31, v30, v29, v28, v27);

    [v168 performWithoutAnimation_];
    sub_188F865E0(v32, v31, v30, v29, v28, v27);
    _Block_release(v35);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();
    v1 = v173;

    sub_188F865E0(v32, v31, v30, v29, v28, v27);
    if (v35)
    {
      goto LABEL_49;
    }
  }

  v37 = *(v16 + 136);
  if (v37 != 255)
  {
    v39 = *(v16 + 120);
    v38 = *(v16 + 128);
    v41 = *(v16 + 104);
    v40 = *(v16 + 112);
    v42 = *(v16 + 96);
    v169 = objc_opt_self();
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = v41;
    *(v43 + 32) = v40;
    *(v43 + 40) = v39;
    *(v43 + 48) = v38;
    *(v43 + 56) = v37;
    *(v43 + 64) = v15;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_188F86788;
    *(v44 + 24) = v43;
    v178 = sub_188E3FE50;
    v179 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v175 = 1107296256;
    v176 = sub_188A4A968;
    v177 = &block_descriptor_259;
    v45 = _Block_copy(&aBlock);
    sub_188F865B0(v42, v41, v40, v39, v38, v37);
    sub_188F865B0(v42, v41, v40, v39, v38, v37);
    v46 = v15;
    sub_188F865B0(v42, v41, v40, v39, v38, v37);

    [v169 performWithoutAnimation_];
    sub_188F865E0(v42, v41, v40, v39, v38, v37);
    _Block_release(v45);
    LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();
    v1 = v173;

    sub_188F865E0(v42, v41, v40, v39, v38, v37);
    if (v45)
    {
      goto LABEL_50;
    }
  }

  v47 = *(v16 + 232);
  if (v47 != 255)
  {
    v49 = *(v16 + 216);
    v48 = *(v16 + 224);
    v51 = *(v16 + 200);
    v50 = *(v16 + 208);
    v52 = *(v16 + 192);
    v170 = objc_opt_self();
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *(v53 + 24) = v51;
    *(v53 + 32) = v50;
    *(v53 + 40) = v49;
    *(v53 + 48) = v48;
    *(v53 + 56) = v47;
    *(v53 + 64) = v15;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_188F86788;
    *(v54 + 24) = v53;
    v178 = sub_188E3FE50;
    v179 = v54;
    aBlock = MEMORY[0x1E69E9820];
    v175 = 1107296256;
    v176 = sub_188A4A968;
    v177 = &block_descriptor_248_0;
    v55 = _Block_copy(&aBlock);
    sub_188F865B0(v52, v51, v50, v49, v48, v47);
    sub_188F865B0(v52, v51, v50, v49, v48, v47);
    v56 = v15;
    sub_188F865B0(v52, v51, v50, v49, v48, v47);

    [v170 performWithoutAnimation_];
    sub_188F865E0(v52, v51, v50, v49, v48, v47);
    _Block_release(v55);
    LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();
    v1 = v173;

    sub_188F865E0(v52, v51, v50, v49, v48, v47);
    if (v55)
    {
      goto LABEL_51;
    }
  }

  v57 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
  v58 = v57[7];
  if (v58)
  {
    v59 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer;
    *(v173 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toPlatters) = *(*&v58[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content + 8);
    v60 = v58;

    v61 = *&v58[v59];
    v1 = v173;
    v62 = v61;

    v63 = *&v62[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content];

    *(v173 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toHostedViews) = v63;
  }

  *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_lastPlatterSource) = 0;
  v64 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromPlatters);
  v65 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toPlatters);
  aBlock = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toHostedViews);
  v175 = v64;

  sub_188F823B4(v65, 0.0);

  v66 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView;
  v67 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView);
  if (v67)
  {
    v69 = aBlock;
    v68 = v175;
    v70 = *(v67 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer);
    sub_188FE3A9C(v69, v68, 0, 1);
  }

  sub_188B4B09C();
  if (*(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithLargeTitle) == 1)
  {
    v71 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleView);
    if (v71)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
      }

      else
      {
        v73 = *(v1 + v66);
        v74 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toMatchingView);
        if (!v73)
        {
          goto LABEL_26;
        }

        v75 = v71;
        v76 = v73;
        [v75 bounds];
        [v76 convertRect:v75 fromCoordinateSpace:?];
        v78 = v77;
        v80 = v79;
        v82 = v81;
        v84 = v83;

        v172 = objc_opt_self();
        v85 = swift_allocObject();
        *(v85 + 16) = v78;
        *(v85 + 24) = v80;
        *(v85 + 32) = v82;
        *(v85 + 40) = v84;
        *(v85 + 48) = v71;
        *(v85 + 56) = 0;
        *(v85 + 64) = v74;
        v86 = swift_allocObject();
        *(v86 + 16) = sub_188F86788;
        *(v86 + 24) = v85;
        v178 = sub_188E3FE50;
        v179 = v86;
        aBlock = MEMORY[0x1E69E9820];
        v175 = 1107296256;
        v176 = sub_188A4A968;
        v177 = &block_descriptor_237_1;
        v87 = _Block_copy(&aBlock);
        v88 = v75;
        v89 = v74;

        v1 = v173;

        [v172 performWithoutAnimation_];

        _Block_release(v87);
        LOBYTE(v87) = swift_isEscapingClosureAtFileLocation();

        if (v87)
        {
LABEL_57:
          __break(1u);
          return;
        }
      }
    }
  }

  v90 = *(v1 + v66);
  v74 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toMatchingView);
  if (v90)
  {
    v91 = *(*&v90[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer);
    v92 = v90;
    [v91 bounds];
    [v92 convertRect:v91 fromCoordinateSpace:?];
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v100 = v99;

    v101 = objc_opt_self();
    v102 = swift_allocObject();
    *(v102 + 16) = v94;
    *(v102 + 24) = v96;
    *(v102 + 32) = v98;
    *(v102 + 40) = v100;
    *(v102 + 48) = v91;
    *(v102 + 56) = 0;
    *(v102 + 64) = v74;
    v103 = swift_allocObject();
    *(v103 + 16) = sub_188F865A4;
    *(v103 + 24) = v102;
    v178 = sub_188E3FE50;
    v179 = v103;
    aBlock = MEMORY[0x1E69E9820];
    v175 = 1107296256;
    v176 = sub_188A4A968;
    v177 = &block_descriptor_193;
    v104 = _Block_copy(&aBlock);
    v105 = v91;
    v74 = v74;

    [v101 performWithoutAnimation_];

    _Block_release(v104);
    LOBYTE(v104) = swift_isEscapingClosureAtFileLocation();

    if ((v104 & 1) == 0)
    {
      v1 = v173;
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_26:
  v106 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
  v107 = v106[19];
  v108 = v57[19];
  if (v107)
  {
    if (v107 == v108)
    {
      goto LABEL_33;
    }
  }

  else if (!v108)
  {
    goto LABEL_33;
  }

  if (v108)
  {
    v109 = *(v1 + v66);
    if (v109)
    {
      v110 = v109;
      v111 = v108;
      [v111 bounds];
      [v110 convertRect:v111 fromCoordinateSpace:?];
      v113 = v112;
      v115 = v114;
      v117 = v116;
      v119 = v118;

      v120 = objc_opt_self();
      v121 = swift_allocObject();
      *(v121 + 16) = v113;
      *(v121 + 24) = v115;
      *(v121 + 32) = v117;
      *(v121 + 40) = v119;
      *(v121 + 48) = v108;
      *(v121 + 56) = 0;
      *(v121 + 64) = v74;
      v122 = swift_allocObject();
      *(v122 + 16) = sub_188F86788;
      *(v122 + 24) = v121;
      v178 = sub_188E3FE50;
      v179 = v122;
      aBlock = MEMORY[0x1E69E9820];
      v175 = 1107296256;
      v176 = sub_188A4A968;
      v177 = &block_descriptor_226;
      v123 = _Block_copy(&aBlock);
      v124 = v111;
      v125 = v74;
      v126 = v124;

      v1 = v173;

      [v120 performWithoutAnimation_];

      _Block_release(v123);
      LOBYTE(v123) = swift_isEscapingClosureAtFileLocation();

      if (v123)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }
  }

LABEL_33:
  v127 = v106[20];
  v128 = v57[20];
  if (!v127)
  {
    if (!v128)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v127 != v128)
  {
LABEL_37:
    if (!v128)
    {
      goto LABEL_40;
    }

    v129 = *(v1 + v66);
    if (!v129)
    {
      goto LABEL_40;
    }

    v130 = v129;
    v131 = v128;
    [v131 bounds];
    [v130 convertRect:v131 fromCoordinateSpace:?];
    v133 = v132;
    v135 = v134;
    v137 = v136;
    v139 = v138;

    v140 = objc_opt_self();
    v141 = swift_allocObject();
    *(v141 + 16) = v133;
    *(v141 + 24) = v135;
    *(v141 + 32) = v137;
    *(v141 + 40) = v139;
    *(v141 + 48) = v128;
    *(v141 + 56) = 0;
    *(v141 + 64) = v74;
    v142 = swift_allocObject();
    *(v142 + 16) = sub_188F86788;
    *(v142 + 24) = v141;
    v178 = sub_188E3FE50;
    v179 = v142;
    aBlock = MEMORY[0x1E69E9820];
    v175 = 1107296256;
    v176 = sub_188A4A968;
    v177 = &block_descriptor_215_0;
    v143 = _Block_copy(&aBlock);
    v144 = v131;
    v145 = v74;
    v146 = v144;

    v1 = v173;

    [v140 performWithoutAnimation_];

    _Block_release(v143);
    LOBYTE(v143) = swift_isEscapingClosureAtFileLocation();

    if ((v143 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_40:
  v147 = v57[18];
  if (v147 && v147 != v106[18] && v57[7])
  {
    v148 = *(v1 + v66);
    if (!v148)
    {
      return;
    }

    v149 = v147;
    v150 = v148;
    [v149 bounds];
    [v150 convertRect:v149 fromCoordinateSpace:?];
    v152 = v151;
    v154 = v153;
    v156 = v155;
    v158 = v157;

    v159 = objc_opt_self();
    v160 = swift_allocObject();
    *(v160 + 16) = v152;
    *(v160 + 24) = v154;
    *(v160 + 32) = v156;
    *(v160 + 40) = v158;
    *(v160 + 48) = v147;
    *(v160 + 56) = 0;
    *(v160 + 64) = v74;
    v161 = swift_allocObject();
    *(v161 + 16) = sub_188F86788;
    *(v161 + 24) = v160;
    v178 = sub_188E3FE50;
    v179 = v161;
    aBlock = MEMORY[0x1E69E9820];
    v175 = 1107296256;
    v176 = sub_188A4A968;
    v177 = &block_descriptor_204;
    v162 = _Block_copy(&aBlock);
    v163 = v149;
    v164 = v74;
    v165 = v163;

    [v159 performWithoutAnimation_];

    _Block_release(v162);
    LOBYTE(v162) = swift_isEscapingClosureAtFileLocation();

    if (v162)
    {
      goto LABEL_56;
    }
  }

  v166 = *(v1 + v66);
  if (v166)
  {
    [v166 layoutIfNeeded];
  }
}

uint64_t sub_188F823B4(uint64_t a1, double a2)
{
  v3 = *(v2 + 8);
  result = sub_188F86150(a1, v3);
  v5 = *(result + 16);
  if (v5 != *(v3 + 16))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v6 = result;
  if (v5)
  {
    v29 = v2;
    v7 = 0;
    while (v7 < *(v3 + 16))
    {
      result = sub_188C45F1C(v3 + 192 * v7 + 32, &rect.size);
      if (v7 >= *(v6 + 16))
      {
        goto LABEL_23;
      }

      v8 = v40;
      v10 = v41;
      v9 = v42;
      v36 = v44;
      rect.origin.x = y;
      v11 = v6 + 32 + 48 * v7;
      v12 = *(v11 + 8);
      v13 = *(v11 + 16);
      v31 = *(v11 + 24);
      v32 = *(v11 + 32);
      v33 = v43;
      v34 = *(v11 + 40);
      rect.origin.y = _UILerp_1(a2, y, *v11);
      v14 = v8;
      v15 = _UILerp_1(a2, v8, v12);
      v16 = v10;
      v17 = _UILerp_1(a2, v10, v13);
      v18 = v9;
      v19 = _UILerp_1(a2, v9, v31);
      v20 = _UILerp_1(a2, v33, v32);
      v21 = _UILerp_1(a2, v36, v34);
      v22 = v21;
      v23 = v45;
      v24 = *(v45 + 16);
      if (v24)
      {
        v35 = v21;
        v37 = v20;
        v25 = 0;
        v26 = 56;
        while (1)
        {
          v47.origin.x = rect.origin.x;
          v47.origin.y = v14;
          v47.size.width = v16;
          v47.size.height = v18;
          Width = CGRectGetWidth(v47);
          v48.origin.x = rect.origin.y;
          v48.origin.y = v15;
          v48.size.width = v17;
          v48.size.height = v19;
          v28 = CGRectGetWidth(v48);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_189212BC4(v23);
            v23 = result;
          }

          if (v25 >= *(v23 + 16))
          {
            break;
          }

          ++v25;
          *(v23 + v26) = *(v23 + v26) + (Width - v28) * -0.5;
          v26 += 160;
          if (v24 == v25)
          {
            v45 = v23;
            v22 = v35;
            v20 = v37;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      y = rect.origin.y;
      v40 = v15;
      v41 = v17;
      v42 = v19;
      v43 = v20;
      v44 = v22;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_188C46144(v3);
        v3 = result;
      }

      if (v7 >= *(v3 + 16))
      {
        goto LABEL_24;
      }

      result = sub_188F8646C(&rect.size, v3 + 192 * v7++ + 32);
      if (v7 == v5)
      {

        *(v29 + 8) = v3;
        return result;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }
}

void sub_188F82688()
{
  v1 = v0;
  sub_188FF48D8();
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar);
  v4 = v3;
  if (v3)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = 0.0;
    v9 = 0.0;
  }

  UIFloorToScale(v9, 6.0);
  v11 = v7 == *(v2 + 224) && v10 == *(v2 + 232);
  if (v11 && *(v2 + 40) == 1)
  {
    goto LABEL_22;
  }

  *(v2 + 224) = v7;
  *(v2 + 232) = v10;
  sub_188B38ED0(v7);
  swift_beginAccess();
  v12 = *(v2 + 344);
  v13 = v12;
  if (!v12)
  {
    v13 = *(v2 + 352);
    v14 = v13;
  }

  swift_beginAccess();
  v15 = *(v2 + 232);
  v16 = v12;

  sub_188B3A13C(v17, v13, v15);

  swift_beginAccess();
  v18 = *(v2 + 400);
  if (v18 >> 62)
  {
    v19 = sub_18A4A7F68();
    if (v19)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_14:
      if (v19 < 1)
      {
        __break(1u);
        return;
      }

      v20 = 0;
      v21 = 0.0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v22 = sub_188E4A488(v20, v18);
        }

        else
        {
          v22 = *(v18 + 8 * v20 + 32);
        }

        ++v20;
        v23 = &v22[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
        *v23 = v21;
        *(v23 + 8) = 0;
        v24 = *&v22[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

        v21 = v21 + v24;
      }

      while (v19 != v20);
    }
  }

  *(v2 + 40) = 1;
  sub_188B386EC();

LABEL_22:
  [*(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout) layoutViews];
  [*(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout) layoutViews];
  v25 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleView);
  if (v25)
  {
    [v25 layoutIfNeeded];
  }

  sub_188F80A54();
  sub_188F82978();
  sub_188F80EB0();
  v26 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView;
  v27 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView);
  if (v27)
  {
    [*(*(v27 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer) + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_underGlassTransitionContainer) addSubview_];
    v28 = *(v1 + v26);
    if (v28)
    {
      [*(*(v28 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer) + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_underGlassTransitionContainer) addSubview_];
    }
  }
}

id sub_188F82978()
{
  sub_188FF5DF4();
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
  v2 = *(v1 + 152);
  if (v2 && v2 != *(*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout) + 152))
  {
    [v2 removeFromSuperview];
  }

  result = *(v1 + 160);
  if (result && result != *(*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout) + 160))
  {

    return [result removeFromSuperview];
  }

  return result;
}

void sub_188F82A24()
{
  v1 = [*&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_stack] transitionAssistant];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 transitionCoordinator];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4 && (v5 = v4, (v6 = [v4 _mainContext]) != 0))
      {
        v19 = v6;
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          v8 = v7;
          if (([v7 isCurrentlyInteractive] & 1) == 0)
          {
            v0[OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_lastPlatterSource] = 1;
            v9 = *&v0[OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toPlatters];
            v10 = *&v0[OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromPlatters];
            aBlock = *&v0[OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toHostedViews];
            v21 = v9;

            sub_188F823B4(v10, 0.0);

            v11 = *&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView];
            if (v11)
            {
              v12 = *(v11 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer);
              sub_188FE3A9C(aBlock, v21, 1, 1);
            }
          }

          v13 = swift_allocObject();
          *(v13 + 16) = v0;
          v24 = sub_188F86140;
          v25 = v13;
          aBlock = MEMORY[0x1E69E9820];
          v21 = 1107296256;
          v22 = sub_188F82EF4;
          v23 = &block_descriptor_118_1;
          v14 = _Block_copy(&aBlock);
          v15 = v0;

          [v8 _addInteractiveUpdateHandler_];
          _Block_release(v14);
          v16 = swift_allocObject();
          *(v16 + 16) = v15;
          v24 = sub_188F86148;
          v25 = v16;
          aBlock = MEMORY[0x1E69E9820];
          v21 = 1107296256;
          v22 = sub_188C577F0;
          v23 = &block_descriptor_124_0;
          v17 = _Block_copy(&aBlock);
          v18 = v15;

          [v5 notifyWhenInteractionChangesUsingBlock_];
          _Block_release(v17);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_188F82DC0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_lastPlatterSource);
  *(a5 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_lastPlatterSource) = v6;
  if (v6)
  {
    v7 = 1.0 - a1;
  }

  else
  {
    v7 = a1;
  }

  v8 = OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toPlatters;
  if (v6)
  {
    v9 = OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toPlatters;
  }

  else
  {
    v9 = OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromPlatters;
  }

  v10 = *(a5 + v9);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromPlatters;
  }

  v11 = *(a5 + v8);

  v15 = *(a5 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toHostedViews);
  v16 = v10;

  sub_188F823B4(v11, v7 * 0.5);

  v12 = *(a5 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView);
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer);
    sub_188FE3A9C(v15, v16, 1, 0);
  }
}

void sub_188F82EF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v9 = *(a1 + 32);

  v10 = a4;
  v9(a2, a3, a4, a5);
}

uint64_t sub_188F82F8C(void *a1, uint64_t a2)
{
  result = [a1 isInteractive];
  if ((result & 1) == 0)
  {
    if ([a1 isCancelled])
    {
      *(a2 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_lastPlatterSource) = 0;
      v5 = *(a2 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromPlatters);
      v6 = OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toPlatters;
    }

    else
    {
      *(a2 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_lastPlatterSource) = 1;
      v5 = *(a2 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toPlatters);
      v6 = OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromPlatters;
    }

    v7 = *(a2 + v6);
    v10 = *(a2 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toHostedViews);
    v11 = v5;

    sub_188F823B4(v7, 0.0);

    v8 = *(a2 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView);
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer);
      sub_188FE3A9C(v10, v11, 1, 1);
    }
  }

  return result;
}

void sub_188F830CC()
{
  v1 = [*&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_stack] transitionAssistant];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 transitionCoordinator];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4 && (v27 = [v4 _mainContext]) != 0)
      {
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (v5)
        {
          v6 = v5;
          v7 = v27;
          v8 = [v6 containerView];
          v9 = [v8 _shouldReverseLayoutDirection];

          v10 = [v6 containerView];
          [v10 bounds];
          v12 = v11;
          v14 = v13;

          sub_188F83514(v9, v34, 0.0, 0.0, v12, v14);
          v15 = objc_opt_self();
          v16 = swift_allocObject();
          v16[3] = 0.0;
          v16[4] = 0.0;
          *(v16 + 2) = v0;
          v16[5] = v12;
          v16[6] = v14;
          v16[7] = 0.0;
          v16[8] = 0.0;
          v16[9] = v12;
          v16[10] = v14;
          v16[11] = 1.0;
          v17 = swift_allocObject();
          *(v17 + 16) = sub_188F86524;
          *(v17 + 24) = v16;
          v32 = sub_188E3FE50;
          v33 = v17;
          aBlock = MEMORY[0x1E69E9820];
          v29 = 1107296256;
          v30 = sub_188A4A968;
          v31 = &block_descriptor_150_0;
          v18 = _Block_copy(&aBlock);
          v19 = v0;

          [v15 performWithoutAnimation_];
          _Block_release(v18);
          LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

          if (v18)
          {
            __break(1u);
          }

          else
          {
            v20 = sub_188F836FC();
            v21 = *&v19[OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromMatchingView];
            v22 = swift_allocObject();
            *(v22 + 48) = v12;
            *(v22 + 56) = v14;
            *(v22 + 80) = v12;
            *(v22 + 88) = v14;
            v23 = v34[0];
            *(v22 + 120) = v34[1];
            v24 = v34[3];
            *(v22 + 136) = v34[2];
            *(v22 + 16) = v20 & 1;
            *(v22 + 32) = 0;
            *(v22 + 40) = 0;
            *(v22 + 24) = v21;
            *(v22 + 64) = 0;
            *(v22 + 72) = 0;
            *(v22 + 96) = 0x3FF0000000000000;
            *(v22 + 152) = v24;
            *(v22 + 168) = v35;
            *(v22 + 104) = v23;
            v32 = sub_188F8654C;
            v33 = v22;
            aBlock = MEMORY[0x1E69E9820];
            v29 = 1107296256;
            v30 = sub_188D85708;
            v31 = &block_descriptor_156_1;
            v25 = _Block_copy(&aBlock);
            v26 = v21;

            [v15 _animateInProcessAlongsideTransition_];
            _Block_release(v25);

            swift_unknownObjectRelease();
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_188F83514(char a1@<W0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = *(v6 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_transition);
  v8 = 0.0;
  if (v7 <= 2)
  {
    switch(v7)
    {
      case 0:
        v9 = a3;
        v10 = a5;
        goto LABEL_3;
      case 1:
        v10 = a5 * 0.3;
        if (a1)
        {
          v11 = v10 + a3;
          v12 = a4;
          v13 = a5;
          v14 = a6;
          v15 = a2;
          MaxX = CGRectGetMaxX(*&a3);
          a5 = v13;
          a4 = v12;
          a2 = v15;
          a6 = v14;
          v9 = MaxX;
          v8 = 1.0;
          a3 = v11;
          v10 = v13;
        }

        else
        {
          a3 = a3 - v10;
          v8 = 1.0;
          v9 = a3;
        }

        goto LABEL_3;
      case 2:
        v18 = a3;
        v19 = a4;
        v20 = a5;
        v21 = a6;
        v22 = a2;
        Width = CGRectGetWidth(*&a3);
        a5 = v20;
        a4 = v19;
        a2 = v22;
        a6 = v21;
        if (a1)
        {
          v24 = -Width;
        }

        else
        {
          v24 = Width;
        }

        a3 = v24 + v18;
        v8 = 1.0;
        v9 = v24 + v18;
        v10 = v20;
        goto LABEL_3;
    }
  }

  else
  {
    v9 = a3;
    v10 = a5;
    if ((v7 - 3) < 4)
    {
LABEL_3:
      *a2 = a3;
      a2[1] = a4;
      a2[2] = a5;
      a2[3] = a6;
      a2[4] = v9;
      a2[5] = a4;
      a2[6] = v10;
      a2[7] = a6;
      a2[8] = v8;
      return;
    }
  }

  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000019, 0x800000018A698020);
  type metadata accessor for _UINavigationBarTransition(0);
  sub_18A4A82D8();
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_188F836FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_transition);
  if (v1 < 7)
  {
    return (0x6Fu >> v1) & 1;
  }

  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000019, 0x800000018A698020);
  type metadata accessor for _UINavigationBarTransition(0);
  sub_18A4A82D8();
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

id sub_188F837E8(char a1, char *a2, double *a3, double *a4, double a5)
{
  if (a1)
  {
    v8 = a3[1];
    v9 = a3[2];
    v10 = a3[3];
    v11 = a4[1];
    v12 = a4[2];
    v13 = a4[3];
    v70 = _UILerp_1(a5, *a3, *a4);
    v69 = _UILerp_1(a5, v8, v11);
    v68 = _UILerp_1(a5, v9, v12);
    v67 = _UILerp_1(a5, v10, v13);
    v15 = a3[5];
    v16 = a3[6];
    v17 = a3[7];
    v18 = a4[5];
    v19 = a4[6];
    v20 = a4[7];
    v21 = _UILerp_1(a5, a3[4], a4[4]);
    v22 = _UILerp_1(a5, v15, v18);
    v23 = _UILerp_1(a5, v16, v19);
    v24 = _UILerp_1(a5, v17, v20);
    v25 = _UILerp_1(a5, a3[8], a4[8]);
    [a2 setFrame_];
    v26 = *&a2[OBJC_IVAR____TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView_contentView];
    v27 = [a2 superview];
    [a2 convertRect:v27 fromView:{v70, v69, v68, v67}];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    [v26 setFrame_];
    v36 = v26;
    v37 = v25;
  }

  else if (a5 <= 0.0)
  {
    [a2 setFrame_];
    v52 = *&a2[OBJC_IVAR____TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView_contentView];
    v53 = *a3;
    v54 = a3[1];
    v55 = a3[2];
    v56 = a3[3];
    v57 = [a2 superview];
    [a2 convertRect:v57 fromView:{v53, v54, v55, v56}];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    [v52 setFrame_];
    v37 = a3[8];
    v36 = v52;
  }

  else
  {
    [a2 setFrame_];
    v38 = *&a2[OBJC_IVAR____TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView_contentView];
    v39 = *a4;
    v40 = a4[1];
    v41 = a4[2];
    v42 = a4[3];
    v43 = [a2 superview];
    [a2 convertRect:v43 fromView:{v39, v40, v41, v42}];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;

    [v38 setFrame_];
    v37 = a4[8];
    v36 = v38;
  }

  return [v36 setAlpha_];
}

void sub_188F83B24()
{
  v1 = [*&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_stack] transitionAssistant];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 transitionCoordinator];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4 && (v29 = [v4 _mainContext]) != 0)
      {
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (v5)
        {
          v6 = v5;
          v7 = v29;
          v8 = [v6 containerView];
          [v8 bounds];
          v10 = v9;
          v12 = v11;

          v13 = [v6 containerView];
          LOBYTE(v8) = [v13 _shouldReverseLayoutDirection];

          sub_188F83F6C(v8, &v36, 0.0, 0.0, v10, v12);
          v14 = objc_opt_self();
          v15 = swift_allocObject();
          *(v15 + 16) = v0;
          v16 = v36;
          *(v15 + 40) = v37;
          v17 = v39;
          *(v15 + 56) = v38;
          *(v15 + 72) = v17;
          *(v15 + 88) = v40;
          *(v15 + 24) = v16;
          v18 = swift_allocObject();
          *(v18 + 16) = sub_188F864E8;
          *(v18 + 24) = v15;
          v34 = sub_188E3FE50;
          v35 = v18;
          aBlock = MEMORY[0x1E69E9820];
          v31 = 1107296256;
          v32 = sub_188A4A968;
          v33 = &block_descriptor_134;
          v19 = _Block_copy(&aBlock);
          v20 = v0;

          [v14 performWithoutAnimation_];
          _Block_release(v19);
          LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

          if (v19)
          {
            __break(1u);
          }

          else
          {
            v21 = sub_188F836FC();
            v22 = *&v20[OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toMatchingView];
            v23 = swift_allocObject();
            *(v23 + 16) = v21 & 1;
            *(v23 + 24) = v22;
            v24 = v39;
            *(v23 + 64) = v38;
            *(v23 + 80) = v24;
            v25 = v40;
            v26 = v37;
            *(v23 + 32) = v36;
            *(v23 + 48) = v26;
            *(v23 + 104) = 0;
            *(v23 + 112) = 0;
            *(v23 + 96) = v25;
            *(v23 + 120) = v10;
            *(v23 + 128) = v12;
            *(v23 + 136) = 0;
            *(v23 + 144) = 0;
            *(v23 + 152) = v10;
            *(v23 + 160) = v12;
            *(v23 + 168) = 0x3FF0000000000000;
            v34 = sub_188F86510;
            v35 = v23;
            aBlock = MEMORY[0x1E69E9820];
            v31 = 1107296256;
            v32 = sub_188D85708;
            v33 = &block_descriptor_140_0;
            v27 = _Block_copy(&aBlock);
            v28 = v22;

            [v14 _animateInProcessAlongsideTransition_];
            _Block_release(v27);

            swift_unknownObjectRelease();
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_188F83F6C(char a1@<W0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = *(v6 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_transition);
  v8 = 0.0;
  if (v7 > 2)
  {
    v9 = a3;
    v10 = a5;
    if ((v7 - 3) >= 4)
    {
      goto LABEL_16;
    }

LABEL_10:
    *a2 = a3;
    a2[1] = a4;
    a2[2] = a5;
    a2[3] = a6;
    a2[4] = v9;
    a2[5] = a4;
    a2[6] = v10;
    a2[7] = a6;
    a2[8] = v8;
    return;
  }

  switch(v7)
  {
    case 0:
LABEL_9:
      v9 = a3;
      v10 = a5;
      goto LABEL_10;
    case 1:
      v11 = -a5;
      if ((a1 & 1) == 0)
      {
        v11 = a5;
      }

      a3 = v11 + a3;
      v8 = 1.0;
      goto LABEL_9;
    case 2:
      v13 = a2;
      v14 = a3;
      v15 = a4;
      v16 = a5;
      v17 = a6;
      v18 = CGRectGetWidth(*&a3) * 0.3;
      if (a1)
      {
        v19 = v18 + v14;
        v23.origin.x = v14;
        v23.origin.y = v15;
        v23.size.width = v16;
        v23.size.height = v17;
        MaxX = CGRectGetMaxX(v23);
        a5 = v16;
        a4 = v15;
        a6 = v17;
        v9 = MaxX;
        v8 = 1.0;
        a3 = v19;
        v10 = v16;
      }

      else
      {
        v21 = v14 - v18;
        v24.origin.x = v14;
        v24.origin.y = v15;
        v24.size.width = v16;
        v24.size.height = v17;
        Width = CGRectGetWidth(v24);
        a5 = v16;
        a4 = v15;
        a6 = v17;
        v9 = v14 - Width * 0.3;
        v10 = v16 * 0.3;
        v8 = 1.0;
        a3 = v21;
      }

      a2 = v13;
      goto LABEL_10;
  }

LABEL_16:
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000019, 0x800000018A698020);
  type metadata accessor for _UINavigationBarTransition(0);
  sub_18A4A82D8();
  sub_18A4A8398();
  __break(1u);
}

id sub_188F8417C(uint64_t a1, double *a2, void *a3)
{
  v4 = *(a1 + *a3);
  [v4 setFrame_];
  v5 = OBJC_IVAR____TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView_contentView;
  v6 = *&v4[OBJC_IVAR____TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView_contentView];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = [v4 superview];
  [v4 convertRect:v11 fromView:{v7, v8, v9, v10}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v6 setFrame_];
  v20 = *&v4[v5];
  v21 = a2[8];

  return [v20 setAlpha_];
}

id sub_188F84280(char a1, char *a2, double *a3, double *a4, double a5)
{
  if (a1)
  {
    v8 = a3[1];
    v9 = a3[2];
    v10 = a3[3];
    v11 = a4[1];
    v12 = a4[2];
    v13 = a4[3];
    v70 = _UILerp_1(a5, *a3, *a4);
    v69 = _UILerp_1(a5, v8, v11);
    v68 = _UILerp_1(a5, v9, v12);
    v67 = _UILerp_1(a5, v10, v13);
    v15 = a3[5];
    v16 = a3[6];
    v17 = a3[7];
    v18 = a4[5];
    v19 = a4[6];
    v20 = a4[7];
    v21 = _UILerp_1(a5, a3[4], a4[4]);
    v22 = _UILerp_1(a5, v15, v18);
    v23 = _UILerp_1(a5, v16, v19);
    v24 = _UILerp_1(a5, v17, v20);
    v25 = _UILerp_1(a5, a3[8], a4[8]);
    [a2 setFrame_];
    v26 = *&a2[OBJC_IVAR____TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView_contentView];
    v27 = [a2 superview];
    [a2 convertRect:v27 fromView:{v70, v69, v68, v67}];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    [v26 setFrame_];
    v36 = v26;
    v37 = v25;
  }

  else if (a5 >= 1.0)
  {
    [a2 setFrame_];
    v52 = *&a2[OBJC_IVAR____TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView_contentView];
    v53 = *a4;
    v54 = a4[1];
    v55 = a4[2];
    v56 = a4[3];
    v57 = [a2 superview];
    [a2 convertRect:v57 fromView:{v53, v54, v55, v56}];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    [v52 setFrame_];
    v37 = a4[8];
    v36 = v52;
  }

  else
  {
    [a2 setFrame_];
    v38 = *&a2[OBJC_IVAR____TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView_contentView];
    v39 = *a3;
    v40 = a3[1];
    v41 = a3[2];
    v42 = a3[3];
    v43 = [a2 superview];
    [a2 convertRect:v43 fromView:{v39, v40, v41, v42}];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;

    [v38 setFrame_];
    v37 = a3[8];
    v36 = v38;
  }

  return [v36 setAlpha_];
}

void sub_188F845C0()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout];
  v2 = *(v1 + 56);
  v3 = *(*&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout] + 144);
  if (!v3)
  {
    v14 = *(v1 + 144);
    if (!v14)
    {
      return;
    }

    v15 = v2 == 0;
    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v14;
    *(v17 + 32) = v0;
    v29 = sub_188F86560;
    v30 = v17;
    v25 = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_188D85708;
    v28 = &block_descriptor_162_1;
    v18 = _Block_copy(&v25);
    v19 = v14;
    v20 = v0;
    v12 = v19;

    [v16 _animateInProcessAlongsideTransition_];
    v21 = v18;
    goto LABEL_7;
  }

  v4 = *(v1 + 144);
  if (!v4)
  {
    v22 = objc_opt_self();
    v23 = swift_allocObject();
    *(v23 + 16) = v3;
    v29 = sub_188F8656C;
    v30 = v23;
    v25 = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_188D85708;
    v28 = &block_descriptor_168;
    v24 = _Block_copy(&v25);
    v12 = v3;

    [v22 _animateInProcessAlongsideTransition_];
    v21 = v24;
LABEL_7:
    _Block_release(v21);
    goto LABEL_8;
  }

  v5 = v2 == 0;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v0;
  *(v7 + 40) = v3;
  v29 = sub_188F86580;
  v30 = v7;
  v25 = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_188D85708;
  v28 = &block_descriptor_174_1;
  v8 = _Block_copy(&v25);
  v9 = v3;
  v10 = v4;
  v11 = v9;
  v12 = v10;
  v13 = v0;

  [v6 _animateInProcessAlongsideTransition_];
  _Block_release(v8);

LABEL_8:
}

id sub_188F848C0(char a1, id a2, double a3, uint64_t a4, id a5)
{
  if (a1)
  {
    v7 = a3 < 1.0;
    v8 = 0.0;
    if (!v7)
    {
      v8 = 1.0;
    }

    [a2 setAlpha_];
  }

  sub_188CCAC84();
  result = [a2 setFrame_];
  if (a5 != a2)
  {

    return [a5 setAlpha_];
  }

  return result;
}

id sub_188F8496C(char a1, id a2, double a3)
{
  if (a1)
  {
    v4 = a3 < 1.0;
    v5 = 0.0;
    if (!v4)
    {
      v5 = 1.0;
    }

    [a2 setAlpha_];
  }

  sub_188CCAC84();

  return [a2 setFrame_];
}

void *sub_188F849E4(void *result, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (!result)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result == a2)
  {
    return result;
  }

  v15 = a2;
  v19 = result;
  [v19 setTransitioning_];
  [v19 setFrame_];

  a2 = v15;
  if (v15)
  {
LABEL_6:
    v22 = a2;
    [v22 setFrame_];
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    v20 = sub_188F3660C;
    goto LABEL_7;
  }

  v20 = signpost_c2_entryLock_start;
  v21 = 0;
LABEL_7:
  v23 = *&v10[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar];
  v24 = v23;
  if (v23)
  {
    v25 = v24;
    v26 = [v24 _canPreemptTransition];

    if (v26)
    {
      v27 = 71;
    }

    else
    {
      v27 = 69;
    }
  }

  else
  {
    v27 = 69;
  }

  v28 = objc_opt_self();
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v10;
  v29[5] = 0xBFD6666666666666;
  v29[6] = v20;
  v29[7] = v21;
  v32[4] = sub_188F64D68;
  v32[5] = v29;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 1107296256;
  v32[2] = sub_188A4A8F0;
  v32[3] = &block_descriptor_180;
  v30 = _Block_copy(v32);
  v31 = v10;

  [v28 animateKeyframesWithDuration:v27 delay:v30 options:0 animations:0.0 completion:0.0];
  _Block_release(v30);
}

void sub_188F84C50()
{
  sub_188FF5164();
  sub_188F845C0();
  sub_188FF57E8();
  sub_188F830CC();
  sub_188F83B24();

  sub_188F82A24();
}

void sub_188F84C88()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromMatchingView);
  sub_188F851F8();
  [v2 removeFromSuperview];
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toMatchingView);
  sub_188F851F8();
  [v3 removeFromSuperview];
  v4 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView;
  v5 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView);
  if (v5 && (v6 = *(v5 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer), v7 = &v6[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_overrideContent], (v8 = *&v6[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_overrideContent]) != 0) && (*v7 = 0, *(v7 + 1) = 0, v9 = v6, sub_188CAE284(v8), v10 = objc_opt_self(), v11 = swift_allocObject(), *(v11 + 16) = v9, *(v11 + 24) = 1, *(v11 + 26) = 1, v12 = swift_allocObject(), *(v12 + 16) = sub_188B62BBC, *(v12 + 24) = v11, *&aBlock[2] = sub_188A4B574, *(&aBlock[2] + 1) = v12, *&aBlock[0] = MEMORY[0x1E69E9820], *(&aBlock[0] + 1) = 1107296256, *&aBlock[1] = sub_188A4A968, *(&aBlock[1] + 1) = &block_descriptor_47, v13 = _Block_copy(aBlock), v14 = v9, , , [(UITraitCollection *)v10 _performWithFallbackEnvironment:v14 block:v13], _Block_release(v13), LOBYTE(v10) = swift_isEscapingClosureAtFileLocation(), v14, , , (v10 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v15 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
    v16 = *(v15 + 144);
    if (v16)
    {
      [v16 setAlpha_];
    }

    v17 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
    v18 = *(v17 + 144);
    if (v18)
    {
      [v18 setAlpha_];
    }

    v19 = *(v15 + 144);
    if (v19)
    {
      v20 = v19;
      sub_188CCAC84();
      [v20 setFrame_];
    }

    v21 = *(v17 + 144);
    if (v21)
    {
      v22 = v21;
      sub_188CCAC84();
      [v22 setFrame_];
    }

    sub_188F80D0C(0);
    v23 = *(v1 + v4);
    if (v23)
    {
      if (*(v23 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled) == 1)
      {
        v24 = v23;
        sub_188B55154();
        v25 = *&v24[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl];
        v26 = v25;

        if (v25)
        {
          v27 = [v26 titleLabel];

          if (v27)
          {
            aBlock[0] = 0x3FF0000000000000uLL;
            *&aBlock[1] = 0;
            *(&aBlock[1] + 1) = 0x3FF0000000000000;
            aBlock[2] = 0uLL;
            [v27 setTransform_];
          }
        }
      }

      v28 = *(v1 + v4);
      if (v28)
      {
        v29 = *(v28 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton);
        if (v29)
        {
          v30 = [v29 visualProvider];
          v31 = [v30 contentView];

          if (v31)
          {
            aBlock[0] = 0x3FF0000000000000uLL;
            *&aBlock[1] = 0;
            *(&aBlock[1] + 1) = 0x3FF0000000000000;
            aBlock[2] = 0uLL;
            [v31 setTransform_];
          }
        }
      }
    }

    v32 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleView);
    if (v32)
    {
      v33 = *(v32 + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_reparentingHelper);
      sub_189172D50();
    }

    if (*(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithLargeTitle) == 1)
    {
      v34 = *(v1 + v4);
      if (v34)
      {
        if ((v34[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_hideTitleElementsForLargeTitle] & 1) == 0)
        {
          v34[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_hideTitleElementsForLargeTitle] = 1;
          v35 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult;
          memcpy(__dst, &v34[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], sizeof(__dst));
          memmove(v42, &v34[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
          if (sub_188BAAB78(v42) == 1)
          {
            memcpy(aBlock, &v34[v35], 0x20AuLL);
            memcpy(&v34[v35], __dst, 0x20AuLL);
            v36 = v34;
            sub_188A3F5FC(aBlock, &unk_1EA9362C0);
            [v36 setNeedsLayout];
          }

          else
          {
            memcpy(v39, &v34[v35], 0x20AuLL);
            memmove(__src, &v34[v35], 0x20AuLL);
            if (sub_188BAAB78(__src) != 1)
            {
              memcpy(aBlock, __src, 0x20AuLL);
              v37 = v34;
              sub_188A3F29C(v39, &v38, &unk_1EA9362C0);
              sub_188B3CBC4(aBlock, 0);

              sub_188A3F5FC(v39, &unk_1EA9362C0);
            }
          }
        }
      }
    }
  }
}

void sub_188F851F8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView_contentView) subviews];
  sub_188AF7A44();
  v2 = sub_18A4A7548();

  if (v2 >> 62)
  {
    v3 = sub_18A4A7F68();
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_188E49300(i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 setHidesSourceView_];
    }

    [v6 removeFromSuperview];
  }

LABEL_12:
}

uint64_t sub_188F85378(void *a1, uint64_t (*a2)(void))
{
  sub_188F84C88();
  [*(v2 + *a1) removeContent];

  return a2();
}

id sub_188F853D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = objc_allocWithZone(v7);
  v15 = MEMORY[0x1E69E7CC0];
  *&v14[OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromPlatters] = MEMORY[0x1E69E7CC0];
  *&v14[OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toPlatters] = v15;
  *&v14[OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toHostedViews] = v15;
  v16 = OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromMatchingView;
  v17 = type metadata accessor for ViewControllerMatchingView();
  *&v14[v16] = [objc_allocWithZone(v17) init];
  v18 = OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_toMatchingView;
  *&v14[v18] = [objc_allocWithZone(v17) init];
  v19 = &v14[OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v19[40] = -1;
  *(v19 + 10) = 0;
  *(v19 + 3) = 0u;
  *(v19 + 4) = 0u;
  v19[88] = -1;
  *(v19 + 16) = 0;
  *(v19 + 6) = 0u;
  *(v19 + 7) = 0u;
  v19[136] = -1;
  *(v19 + 22) = 0;
  *(v19 + 9) = 0u;
  *(v19 + 10) = 0u;
  v19[184] = -1;
  *(v19 + 12) = 0u;
  *(v19 + 13) = 0u;
  *(v19 + 28) = 0;
  v19[232] = -1;
  v14[OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_lastPlatterSource] = 0;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPartAnimationBaseDuration] = 0;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPartAnimationOverlapDuration] = 0;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_clippingViews] = 0;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout] = 0;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout] = 0;
  v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleTransitionType] = 0;
  v20 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar] = 0;
  v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_isPushOperation] = 0;
  v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_compact] = 0;
  v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_usesBarBackground] = 0;
  v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_allowLargeTitles] = 0;
  v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPart] = 0;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_apiVersion] = 0;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundAlpha] = 0;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_promptView] = 0;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView] = 0;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView] = 0;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleView] = 0;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_tabBarHostedView] = 0;
  v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithLargeTitle] = 0;
  v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithLargeTitle] = 0;
  v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithTransparencyAllowed] = 0;
  v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithTransparencyAllowed] = 0;
  v21 = &v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_startingContentOffsetForObservedScrollView];
  *v21 = 0;
  v21[1] = 0;
  v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_observedScrollViewOffsetIsApplicable] = 0;
  v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_sharesContentViewLayouts] = 0;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_transitionOverlayView] = 0;
  *&v14[v20] = a1;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_transition] = a2;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_stack] = a3;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout] = a4;
  *&v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout] = a5;
  v22 = &v14[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_completionHandler];
  *v22 = a6;
  v22[1] = a7;
  v26.receiver = v14;
  v26.super_class = type metadata accessor for NavigationBarTransitionContext();
  v23 = objc_msgSendSuper2(&v26, sel_init);

  return v23;
}

uint64_t sub_188F85740()
{

  v1 = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 208);
  v9[12] = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 192);
  v10[0] = v1;
  *(v10 + 9) = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 217);
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 128);
  v9[9] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 176);
  v9[10] = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 160);
  v9[11] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC5UIKit41NavigationBarTransitionContextInteractive_fromElements + 32);
  v9[3] = v7;
  return sub_188F85D68(v9);
}

uint64_t sub_188F85A3C(double *a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  if (*(a1 + 40))
  {
    v4 = *(a2 + OBJC_IVAR____TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView_contentView);
    v5 = v3;
    [v4 addSubview_];
    [v5 setFrame_];
  }

  else
  {
    v7 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
    [v7 setHidesSourceView_];
    v8 = *(a2 + OBJC_IVAR____TtC5UIKitP33_23AF3A73A27963965B0057B8F7DCBABB26ViewControllerMatchingView_contentView);
    v9 = v7;
    [v8 addSubview_];
    [v9 setFrame_];
  }

  return sub_188F86640(a1);
}

uint64_t get_enum_tag_for_layout_string_5UIKit41NavigationBarTransitionContextInteractiveC23TransformMatchedElementVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_188F85C34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 233))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_188F85C80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
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
    *(result + 232) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 233) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 233) = 0;
    }

    if (a2)
    {
      *(result + 40) = ~a2;
    }
  }

  return result;
}

unint64_t sub_188F85D14()
{
  result = qword_1EA938408;
  if (!qword_1EA938408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA938408);
  }

  return result;
}

char *sub_188F85D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = a2 + 32;
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_188C45F1C(v5, v59);
      sub_188C46270(v59, &v26);
      if (v66)
      {
        v24 = v65;
        v25 = v66;

        sub_18A4A8048();
      }

      else
      {
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
      }

      v6 = sub_188BBA230(v67, v54);
      v7 = v60;
      v8 = v61;
      v9 = v62;
      *&v53[0] = v28;
      *(&v53[2] + 1) = v39;
      v51 = v26;
      v52 = v27;
      *(v53 + 8) = v37;
      *(&v53[1] + 8) = v38;
      *(&v55 + 1) = v60;
      v56 = v61;
      *&v57 = v62;
      BYTE8(v57) = v67[64];
      v58 = v68;
      MEMORY[0x1EEE9AC00](v6);
      v21[2] = &v51;
      v11 = v10;

      v12 = sub_188C4F818(sub_188F864C8, v21, a3);
      sub_188A3F29C(v53 + 8, &v26, &unk_1EA937A80);
      v13 = *(&v27 + 1);
      sub_188A3F5FC(&v26, &unk_1EA937A80);
      if (v13)
      {
        if (!*(v12 + 16))
        {

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v26 = 0u;
          goto LABEL_14;
        }

        sub_188E5B14C(v12 + 32, &v26);
      }

      else
      {
        sub_188C4F6D0(v12, &v26);
      }

LABEL_14:
      v48 = v34;
      v49 = v35;
      v50 = v36;
      v44 = v30;
      v45 = v31;
      v46 = v32;
      v47 = v33;
      v40 = v26;
      v41 = v27;
      v42 = v28;
      v43 = v29;
      sub_188C4F518(&v51);
      if (*(&v41 + 1))
      {
        v56 = v48;
        v57 = v49;
        v58 = v50;
        v53[2] = v44;
        v54[0] = v45;
        v54[1] = v46;
        v55 = v47;
        v51 = v40;
        v52 = v41;
        v53[0] = v42;
        v53[1] = v43;
        if (MEMORY[0x18CFE2F70](&v51, v22))
        {
          v14 = v63;
          v15 = v64;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_188E4C13C(0, *(v23 + 2) + 1, 1, v23);
          }

          v17 = *(v23 + 2);
          v16 = *(v23 + 3);
          if (v17 >= v16 >> 1)
          {
            v23 = sub_188E4C13C((v16 > 1), v17 + 1, 1, v23);
          }

          sub_188C4F518(&v51);
          sub_188C460F0(v59);
          v18 = v23;
          *(v23 + 2) = v17 + 1;
          v19 = &v18[48 * v17];
          *(v19 + 4) = v7;
          *(v19 + 40) = v8;
          *(v19 + 7) = v9;
          *(v19 + 8) = v14;
          *(v19 + 9) = v15;
        }

        else
        {
          sub_188C4F518(&v51);
          sub_188C460F0(v59);
        }
      }

      else
      {
        sub_188C460F0(v59);
        sub_188A3F5FC(&v40, &qword_1EA934730);
      }

      v5 += 192;
      if (!--v3)
      {
        return v23;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_188F86150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v63 = MEMORY[0x1E69E7CC0];
    sub_188C46250(0, v2, 0);
    v5 = v63;
    v6 = a2 + 32;
    v7 = a2 + 32;
    v8 = v2;
    do
    {
      sub_188C45F1C(v7, v51);
      sub_188C46270(v51, v49);
      if (v54)
      {

        sub_18A4A8048();
      }

      else
      {
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
      }

      sub_188BBA230(v55, v60);
      v57 = v49[0];
      v58 = v49[1];
      *&v59[8] = v46;
      *v59 = v50;
      *&v59[24] = v47;
      *&v59[40] = v48;
      *&v61[8] = v52;
      *&v61[24] = v53;
      v61[40] = v55[64];
      v62 = v56;
      v9 = v56;
      sub_188C460F0(v51);
      v63 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_188C46250((v10 > 1), v11 + 1, 1);
        v5 = v63;
      }

      *(v5 + 16) = v11 + 1;
      v12 = (v5 + 176 * v11);
      v13 = v57;
      v14 = *v59;
      v12[3] = v58;
      v12[4] = v14;
      v12[2] = v13;
      v15 = *&v59[16];
      v16 = *&v59[32];
      v17 = v60[1];
      v12[7] = v60[0];
      v12[8] = v17;
      v12[5] = v15;
      v12[6] = v16;
      v18 = *v61;
      v19 = *&v61[16];
      v20 = v62;
      v12[11] = *&v61[32];
      v12[12] = v20;
      v12[9] = v18;
      v12[10] = v19;
      v7 += 192;
      --v8;
    }

    while (v8);
    v21 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v22 = (v6 + 192 * v21);
      v23 = v22[5];
      v24 = v22[6];
      v25 = v22[7];
      v26 = v22[8];
      v27 = v22[9];
      v28 = v22[10];
      v29 = sub_188F85D98(v22, a1, v5);
      v30 = *(v29 + 2);
      if (v30)
      {
        v31 = v29 + 56;
        v32 = *(v29 + 7);
        v33 = *(v29 + 4);
        v34 = *(v29 + 5);
        v35 = *(v29 + 6);
        do
        {
          *&v33 = CGRectUnion(*&v33, *(v31 - 24));
          v31 += 48;
          --v30;
        }

        while (v30);
        v25 = v35;
        v24 = v34;
        v23 = v33;
        v26 = v32;
      }

      else
      {
        v28 = 0x3FE6666666666666;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_188E4C13C(0, *(v3 + 2) + 1, 1, v3);
      }

      v37 = *(v3 + 2);
      v36 = *(v3 + 3);
      if (v37 >= v36 >> 1)
      {
        v43 = sub_188E4C13C((v36 > 1), v37 + 1, 1, v3);
        v41 = v25;
        v40 = v24;
        v39 = v23;
        v38 = v26;
        v3 = v43;
      }

      else
      {
        v38 = v26;
        v39 = v23;
        v40 = v24;
        v41 = v25;
      }

      ++v21;
      *(v3 + 2) = v37 + 1;
      v42 = &v3[48 * v37];
      *(v42 + 4) = v39;
      *(v42 + 5) = v40;
      *(v42 + 6) = v41;
      *(v42 + 7) = v38;
      *(v42 + 8) = v27;
      *(v42 + 9) = v28;
    }

    while (v21 != v2);
  }

  return v3;
}

void sub_188F86590(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

id sub_188F865B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_188F865CC(a5, a6);
  }

  return result;
}

id sub_188F865CC(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

void sub_188F865E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    sub_188F86590(a5, a6);
  }
}

uint64_t objectdestroy_185Tm()
{
  sub_188F86590(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_188F86678(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_188F866C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

id sub_188F8678C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong interactions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938610);
    v4 = sub_18A4A7548();

    if (v4 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
    {
      v6 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        sub_188E4A804(v6, v4);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_16;
        }

LABEL_11:
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          i = v8;

          goto LABEL_20;
        }

        swift_unknownObjectRelease();
        ++v6;
        if (v7 == i)
        {

          i = 0;
          goto LABEL_20;
        }
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      swift_unknownObjectRetain();
      v7 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_11;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }
  }

  else
  {
    i = 0;
  }

LABEL_20:
  type metadata accessor for UIIndirectScribbleInteraction();
  v9 = type metadata accessor for _UIIndirectScribbleInteractionWrapper();
  v10 = v0;
  v11 = objc_allocWithZone(v9);
  return sub_188F88A48(i, v0);
}

id sub_188F869FC(void *a1)
{
  v1 = a1;
  v2 = sub_188F8678C();

  return v2;
}

id sub_188F86A40()
{
  v0 = sub_188F86A74();

  return v0;
}

id UIIndirectScribbleInteraction.__allocating_init(delegate:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_188F8B7F8();
  swift_unknownObjectRelease();
  return v2;
}

id UIIndirectScribbleInteraction.init(delegate:)()
{
  v0 = sub_188F8B7F8();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_188F86BB8()
{
  v1 = qword_1EA938420;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_188F86BFC(char a1)
{
  v3 = qword_1EA938420;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_188F86C4C()
{
  v1 = qword_1EA938428;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = qword_1EA938420;
  result = swift_beginAccess();
  if (v2 > 0 != *(v0 + v3))
  {
    v5 = qword_1EA938420;
    result = swift_beginAccess();
    *(v0 + v5) = v2 > 0;
  }

  return result;
}

uint64_t (*sub_188F86CF4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_188F86D58;
}

uint64_t sub_188F86D58(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_188F86C4C();
  }

  return result;
}

id UIIndirectScribbleInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UIIndirectScribbleInteraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIIndirectScribbleInteraction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_188F86EAC(uint64_t a1)
{
  MEMORY[0x18CFEA6E0](a1 + qword_1EA938410);

  JUMPOUT(0x18CFEA6E0);
}

uint64_t sub_188F86EF8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_188EC93B4;

  return UIIndirectScribbleInteractionDelegate.indirectScribbleInteraction(_:requestElementsIn:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t UIIndirectScribbleInteractionDelegate.indirectScribbleInteraction(_:requestElementsIn:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  *(v8 + 72) = a3;
  *(v8 + 80) = v7;
  *(v8 + 64) = a2;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 24) = a1;
  *(v8 + 88) = sub_18A4A76A8();
  *(v8 + 96) = sub_18A4A7698();
  v10 = sub_18A4A7678();
  *(v8 + 104) = v10;
  *(v8 + 112) = v9;

  return MEMORY[0x1EEE6DFA0](sub_188F87080, v10, v9);
}

uint64_t sub_188F87080()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 48);
  v10 = *(v0 + 72);
  v3 = sub_18A4A7698();
  *(v0 + 120) = v3;
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v10;
  *(v4 + 40) = v2;
  *(v4 + 48) = v8;
  *(v4 + 64) = v9;
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  swift_getAssociatedTypeWitness();
  sub_18A4A7648();
  *v5 = v0;
  v5[1] = sub_188F871DC;
  v6 = MEMORY[0x1E69E85E0];

  return sub_188F879DC(v0 + 16, v3, v6, sub_188F8B92C, v4);
}

uint64_t sub_188F871DC()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_188F8733C, v3, v2);
}

uint64_t sub_188F8733C()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_188F873A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_188F21174;

  return UIIndirectScribbleInteractionDelegate.indirectScribbleInteraction(_:focusElementIfNeeded:referencePoint:)(a1, a2, a3, a4, a5, a6);
}

uint64_t UIIndirectScribbleInteractionDelegate.indirectScribbleInteraction(_:focusElementIfNeeded:referencePoint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v7 + 128) = a4;
  *(v7 + 136) = v6;
  *(v7 + 120) = a3;
  *(v7 + 104) = a5;
  *(v7 + 112) = a6;
  *(v7 + 88) = a1;
  *(v7 + 96) = a2;
  *(v7 + 144) = sub_18A4A76A8();
  *(v7 + 152) = sub_18A4A7698();
  v9 = sub_18A4A7678();
  *(v7 + 160) = v9;
  *(v7 + 168) = v8;

  return MEMORY[0x1EEE6DFA0](sub_188F8751C, v9, v8);
}

uint64_t sub_188F8751C()
{
  v1 = sub_18A4A7698();
  *(v0 + 176) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_18A4A7678();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_188F875B0, v2, v4);
}

uint64_t sub_188F875B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 17);
  v3 = *(v0 + 15);
  v5 = v0[13];
  v4 = v0[14];
  v7 = *(v0 + 11);
  v6 = *(v0 + 12);
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 10;
  *(v0 + 3) = sub_188F876A0;
  v8 = swift_continuation_init();
  sub_188F87BF0(v8, v5, v4, v1, v7, v6, v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_188F876A0()
{
  v1 = *v0;
  *(*v0 + 184) = *(*v0 + 80);
  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_188F877BC, v3, v2);
}

uint64_t sub_188F877BC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 184);

  return v1(v2);
}

uint64_t sub_188F87830(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  v17[2] = a8;
  v17[3] = a9;
  v17[4] = a1;
  (*(a9 + 24))(a7, sub_188F8C2B8, v17, a8, a9, a2, a3, a4, a5);
}

uint64_t sub_188F87910(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  swift_getAssociatedTypeWitness();
  v3 = sub_18A4A7648();
  v4 = *(*(a2 + 64) + 40);
  v5 = *(*(v3 - 8) + 32);

  v5(v4, &v7, v3);
  return swift_continuation_resume();
}

uint64_t sub_188F879DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_18A4A7678();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_188F87A70, v6, v8);
}

uint64_t sub_188F87A70()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_188F87B18;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_188F87B18()
{
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t sub_188F87BF0(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  (*(a8 + 56))(a5, a6, sub_188F8C264, v15, a7, a8, a2, a3);
}

void *sub_188F87CF8(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = *(v5 + 0x60);
  v7 = sub_18A4A7D38();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = *((v4 & v3) + 0x78);
  v13 = *(v6 - 8);
  v14 = *(v13 + 56);
  v14(&v1[v12], 1, 1, v6, v9);
  v21 = *(v5 + 80);
  v22 = v6;
  v23 = *(v5 + 104);
  v15 = type metadata accessor for _UIIndirectScribbleInteractionWrapper.ElementWrapper();
  v24.receiver = v1;
  v24.super_class = v15;
  v16 = objc_msgSendSuper2(&v24, sel_init);
  (*(v13 + 32))(v11, a1, v6);
  (v14)(v11, 0, 1, v6);
  v17 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x78);
  swift_beginAccess();
  v18 = *(v8 + 40);
  v19 = v16;
  v18(v16 + v17, v11, v7);
  swift_endAccess();

  return v19;
}

uint64_t sub_188F87F44@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  v4 = sub_18A4A7D38();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

id sub_188F88004@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for _UIIndirectScribbleInteractionWrapper.ElementWrapper();
  *a1 = v3;

  return v3;
}

uint64_t sub_188F880B0()
{
  sub_188F88004(v2);
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  v0 = sub_18A4A86A8();
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  return v0;
}

uint64_t sub_188F88108(void *a1)
{
  v1 = a1;
  v2 = sub_188F8813C();

  return v2;
}

uint64_t sub_188F8813C()
{
  v0 = sub_18A4A7D38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  sub_188F87F44(&v6 - v2);
  v4 = sub_18A4A7D58();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_188F8824C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v41 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = *((v5 & v4) + 0x60);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v40 = &v36 - v8;
  v9 = sub_18A4A7D38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v36 - v11;
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  sub_188C85D28(a1, v46);
  if (!v47)
  {
    sub_188A553EC(v46);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v27 = 0;
    return v27 & 1;
  }

  v21 = v45;
  sub_188F87F44(v20);
  v39 = v21;
  sub_188F87F44(v17);
  v36 = TupleTypeMetadata2;
  v22 = *(TupleTypeMetadata2 + 48);
  v23 = v44;
  v24 = *(v44 + 16);
  v24(v12, v20, v9);
  v38 = v22;
  v24(&v12[v22], v17, v9);
  v37 = v7;
  v25 = *(v7 + 48);
  if (v25(v12, 1, v6) != 1)
  {
    v28 = v43;
    v24(v43, v12, v9);
    v29 = v38;
    if (v25(&v12[v38], 1, v6) != 1)
    {
      v32 = v37;
      v33 = v40;
      (*(v37 + 32))(v40, &v12[v29], v6);
      v27 = sub_18A4A7248();

      v34 = *(v32 + 8);
      v34(v33, v6);
      v35 = *(v44 + 8);
      v35(v17, v9);
      v35(v20, v9);
      v34(v43, v6);
      v35(v12, v9);
      return v27 & 1;
    }

    v30 = *(v44 + 8);
    v30(v17, v9);
    v30(v20, v9);
    (*(v37 + 8))(v28, v6);
    goto LABEL_9;
  }

  v26 = *(v23 + 8);
  v26(v17, v9);
  v26(v20, v9);
  if (v25(&v12[v38], 1, v6) != 1)
  {
LABEL_9:
    (*(v42 + 8))(v12, v36);
    goto LABEL_10;
  }

  v26(v12, v9);
  v27 = 1;
  return v27 & 1;
}

id sub_188F887F8()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for _UIIndirectScribbleInteractionWrapper.ElementWrapper();
  return objc_msgSendSuper2(&v5, sel_dealloc, v2, v3, v4);
}

uint64_t sub_188F8888C(char *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x78);
  v3 = sub_18A4A7D38();
  v4 = *(*(v3 - 8) + 8);

  return v4(&a1[v2], v3);
}

id sub_188F88928(void *a1)
{
  v1 = a1;
  v2 = sub_188F8896C();

  return v2;
}

uint64_t sub_188F8896C()
{
  sub_188F8B624();
  v1 = [v0 view];
  result = swift_unknownObjectRelease();
  if (v1)
  {
    return v1;
  }

  __break(1u);
  return result;
}

id sub_188F889BC(void *a1)
{
  v1 = a1;
  v2 = sub_188F88A00();

  return v2;
}

id sub_188F88A00()
{
  sub_188F8B624();
  v1 = [v0 view];
  swift_unknownObjectRelease();
  return v1;
}

id sub_188F88A48(uint64_t a1, uint64_t a2)
{
  v3 = qword_1EA938430;
  *&v2[qword_1EA938430] = 0;
  v4 = qword_1EA938438;
  *&v2[v3] = a1;
  *&v2[v4] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for _UIIndirectScribbleInteractionWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_188F88AE8(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_188C85D28(a1, v17);
  if (!v18)
  {
    sub_188A553EC(v17);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v13 = 0;
    return v13 & 1;
  }

  v4 = *(v1 + qword_1EA938430);
  v5 = *&v16[qword_1EA938430];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    sub_188F8C218();
    v6 = v5;
    v7 = v4;
    v8 = sub_18A4A7C88();

    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v5)
  {
LABEL_12:

    goto LABEL_13;
  }

  v9 = *(v2 + qword_1EA938438);
  v10 = *&v16[qword_1EA938438];
  if (!v9)
  {
    v15 = v10;

    if (!v10)
    {
      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_13;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = v9;
  v13 = sub_18A4A7C88();

  return v13 & 1;
}

uint64_t sub_188F88C90(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_188A553EC(v10);
  return v8 & 1;
}

id sub_188F88D18(void *a1)
{
  v1 = a1;
  v2 = sub_188F88D4C();

  return v2;
}

id sub_188F88D4C()
{
  sub_188F8B624();
  v1 = [v0 hash];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_188F88D8C@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _UIIndirectScribbleInteractionWrapper.ElementWrapper();
  if (swift_dynamicCastClass())
  {
    return sub_188F87F44(a1);
  }

  else
  {
    return (*(*(AssociatedTypeWitness - 8) + 56))(a1, 1, 1, AssociatedTypeWitness);
  }
}

id sub_188F88ED8()
{
  v1 = *(v0 + qword_1EA938430);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 delegate];
  if (v3)
  {
    v4 = [v3 respondsToSelector_];
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_188F88F68(void *a1)
{
  v1 = a1;
  v2 = sub_188F88ED8();

  return v2 & 1;
}

double sub_188F88FDC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_18A4A7D38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_188F88D8C(v6);
  if ((*(v7 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    (*(v4 + 8))(v6, v3);
    return *MEMORY[0x1E695F050];
  }

  else
  {
    v12 = (*(v7 + 32))(v10, v6, AssociatedTypeWitness);
    v13 = *(v0 + qword_1EA938438);
    if (v13 && (*((*MEMORY[0x1E69E7D40] & *v13) + 0xA0))(v12))
    {
      v14 = *(v1 + 48);
      v15 = v13;
      v11 = v14();

      swift_unknownObjectRelease();
    }

    else
    {
      v11 = *MEMORY[0x1E695F050];
    }

    (*(v7 + 8))(v10, AssociatedTypeWitness);
  }

  return v11;
}

double sub_188F892BC(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  v3 = sub_188F88FDC();
  swift_unknownObjectRelease();

  return v3;
}

uint64_t sub_188F89350(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_18A4A7D38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  if (a1)
  {
    sub_188F88D8C(v8);
    if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
    {
      (*(v6 + 8))(v8, v5);
LABEL_15:
      LOBYTE(v17) = 0;
      return v17 & 1;
    }

    v18 = (*(v9 + 32))(v12, v8, AssociatedTypeWitness);
    v17 = *(v1 + qword_1EA938438);
    if (v17)
    {
      if (!(*((*MEMORY[0x1E69E7D40] & *v17) + 0xA0))(v18))
      {
        (*(v9 + 8))(v12, AssociatedTypeWitness);
        goto LABEL_15;
      }

      v22 = *(v3 + 72);
      swift_unknownObjectRetain();
      v19 = v17;
      LOBYTE(v17) = v22();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    (*(v9 + 8))(v12, AssociatedTypeWitness);
  }

  else
  {
    v13 = *(v1 + qword_1EA938430);
    if (!v13)
    {
      goto LABEL_15;
    }

    v14 = v13;
    v15 = [v14 delegate];
    if (!v15)
    {

      goto LABEL_15;
    }

    v16 = v15;
    if (![v15 respondsToSelector_])
    {

      swift_unknownObjectRelease();
      goto LABEL_15;
    }

    LOBYTE(v17) = [v16 scribbleInteractionShouldDelayFocus_];

    swift_unknownObjectRelease();
  }

  return v17 & 1;
}

uint64_t sub_188F896C4(double a1, double a2)
{
  v3 = *(v2 + qword_1EA938430);
  if (v3)
  {
    v6 = v3;
    v7 = [v6 delegate];
    if (v7)
    {
      v8 = v7;
      if ([v7 respondsToSelector_])
      {
        v9 = [v8 scribbleInteraction:v6 shouldBeginAtLocation:{a1, a2}];

        swift_unknownObjectRelease();
        return v9;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return 1;
}

uint64_t sub_188F8978C(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_188F896C4(a2, a3);

  return v6 & 1;
}

void sub_188F897D8(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_18A4A7D38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  if (a1)
  {
    sub_188F88D8C(v8);
    if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
    {
      (*(v6 + 8))(v8, v5);
      return;
    }

    v16 = (*(v9 + 32))(v12, v8, AssociatedTypeWitness);
    v17 = *(v1 + qword_1EA938438);
    if (v17)
    {
      v18 = MEMORY[0x1E69E7D40];
      v19 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0xA0))(v16);
      if (v19)
      {
        v28 = v19;
        v20 = *((*v18 & *v17) + 0xF8);
        v21 = v17;
        swift_unknownObjectRetain();
        v22 = v20(v29);
        if (__OFADD__(*v23, 1))
        {
          __break(1u);
          return;
        }

        ++*v23;
        v22(v29, 0);

        v24 = *(v3 + 80);
        v25 = v21;
        v24();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    (*(v9 + 8))(v12, AssociatedTypeWitness);
  }

  else
  {
    v13 = *(v1 + qword_1EA938430);
    if (v13)
    {
      v28 = v13;
      v14 = [v28 delegate];
      if (v14)
      {
        v15 = v14;
        [v28 _setHandlingWriting_];
        if ([v15 respondsToSelector_])
        {
          [v15 scribbleInteractionWillBeginWriting_];
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v26 = v28;
      }
    }
  }
}

void sub_188F89BEC(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_18A4A7D38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  if (a1)
  {
    sub_188F88D8C(v8);
    if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
    {
      (*(v6 + 8))(v8, v5);
      return;
    }

    v16 = (*(v9 + 32))(v12, v8, AssociatedTypeWitness);
    v17 = *(v1 + qword_1EA938438);
    if (v17)
    {
      v18 = MEMORY[0x1E69E7D40];
      v19 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0xA0))(v16);
      if (v19)
      {
        v28 = v19;
        v20 = *((*v18 & *v17) + 0xF8);
        v21 = v17;
        swift_unknownObjectRetain();
        v22 = v20(v29);
        if (__OFSUB__(*v23, 1))
        {
          __break(1u);
          return;
        }

        --*v23;
        v22(v29, 0);

        v24 = *(v3 + 88);
        v25 = v21;
        v24();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    (*(v9 + 8))(v12, AssociatedTypeWitness);
  }

  else
  {
    v13 = *(v1 + qword_1EA938430);
    if (v13)
    {
      v28 = v13;
      v14 = [v28 delegate];
      if (v14)
      {
        v15 = v14;
        [v28 _setHandlingWriting_];
        if ([v15 respondsToSelector_])
        {
          [v15 scribbleInteractionDidFinishWriting_];
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v26 = v28;
      }
    }
  }
}

void sub_188F8A000(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_188F8A078(void (*a1)(void, uint64_t), uint64_t a2, double a3, double a4, double a5, double a6)
{
  v13 = *MEMORY[0x1E69E7D40];
  v14 = *MEMORY[0x1E69E7D40] & *v6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v28 - v17;
  v19 = *(v6 + qword_1EA938438);
  if (v19 && (v20 = (*((*v19 & v13) + 0xA0))(v16)) != 0)
  {
    v21 = v20;
    v22 = sub_18A4A76C8();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    sub_18A4A76A8();
    v23 = v19;
    swift_unknownObjectRetain();

    v24 = sub_18A4A7698();
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E85E0];
    *(v25 + 16) = v24;
    *(v25 + 24) = v26;
    *(v25 + 32) = *(v14 + 88);
    *(v25 + 40) = v21;
    *(v25 + 48) = v23;
    *(v25 + 56) = a3;
    *(v25 + 64) = a4;
    *(v25 + 72) = a5;
    *(v25 + 80) = a6;
    *(v25 + 88) = a1;
    *(v25 + 96) = a2;
    sub_188F18724(0, 0, v18, &unk_18A656060, v25);

    swift_unknownObjectRelease();
  }

  else
  {
    v27 = sub_18A4A2388();
    a1(MEMORY[0x1E69E7CC0], v27);
  }
}

uint64_t sub_188F8A2A0(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12[9] = a11;
  v12[10] = a12;
  v12[8] = a10;
  v12[11] = sub_18A4A76A8();
  v12[12] = sub_18A4A7698();
  v19 = *(a12 + 88);
  v12[13] = v19;
  v20 = *(v19 + 32);
  v21 = *(a12 + 80);
  v12[14] = v21;
  v28 = (v20 + *v20);
  v22 = swift_task_alloc();
  v12[15] = v22;
  *v22 = v12;
  v22[1] = sub_188F8A42C;
  v23.n128_f64[0] = a1;
  v24.n128_f64[0] = a2;
  v25.n128_f64[0] = a3;
  v26.n128_f64[0] = a4;

  return v28(a9, v21, v19, v23, v24, v25, v26);
}

uint64_t sub_188F8A42C(uint64_t a1)
{
  *(*v1 + 128) = a1;

  v3 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F8A570, v3, v2);
}

uint64_t sub_188F8A570()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v16 = v0[8];

  v0[7] = v1;
  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_18A4A7648();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[2] = v2;
  v0[3] = v4;
  v0[4] = AssociatedTypeWitness;
  v0[5] = v3;
  v0[6] = AssociatedConformanceWitness;
  v9 = type metadata accessor for _UIIndirectScribbleInteractionWrapper.ElementWrapper();
  WitnessTable = swift_getWitnessTable();
  sub_18921CAEC(sub_188F8C1BC, v5, v7, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938600);
  v12 = sub_18A4A82C8();

  v13 = sub_18A4A2388();
  v16(v12, v13);

  v14 = v0[1];

  return v14();
}

void *sub_188F8A74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v18 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = AssociatedTypeWitness;
  v18[4] = a4;
  v18[5] = AssociatedConformanceWitness;
  v15 = type metadata accessor for _UIIndirectScribbleInteractionWrapper.ElementWrapper();
  (*(v11 + 16))(v13, a1, AssociatedTypeWitness);
  v16 = objc_allocWithZone(v15);
  result = sub_188F87CF8(v13);
  *a5 = result;
  return result;
}

uint64_t sub_188F8A8A8(void *a1, int a2, void *aBlock, double a4, double a5, double a6, double a7)
{
  v12 = _Block_copy(aBlock);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = a1;
  sub_188F8A078(sub_188F8C210, v13, a4, a5, a6, a7);
}

void sub_188F8A964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938600);
  v5 = sub_18A4A7518();
  (*(a3 + 16))(a3, v5, a2);
}

uint64_t sub_188F8A9EC(double a1, double a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v50 = a4;
  v51 = a5;
  v8 = *v5;
  v9 = *MEMORY[0x1E69E7D40];
  v48 = *MEMORY[0x1E69E7D40] & *v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v42 - v11;
  v12 = *((v9 & v8) + 0x60);
  v46 = *((v9 & v8) + 0x50);
  v47 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_18A4A7D38();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v21 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - v23;
  sub_188F88D8C(v17);
  if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v25 = *(v18 + 32);
    v26 = v25(v24, v17, AssociatedTypeWitness);
    v27 = *(v5 + qword_1EA938438);
    if (v27)
    {
      v28 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0xA0))(v26);
      if (v28)
      {
        v29 = v28;
        v30 = sub_18A4A76C8();
        (*(*(v30 - 8) + 56))(v49, 1, 1, v30);
        (*(v18 + 16))(v21, v24, AssociatedTypeWitness);
        sub_18A4A76A8();
        v45 = v27;
        swift_unknownObjectRetain();

        v43 = sub_18A4A7698();
        v44 = v25;
        v31 = (*(v18 + 80) + 72) & ~*(v18 + 80);
        v32 = (v19 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
        v33 = swift_allocObject();
        v34 = MEMORY[0x1E69E85E0];
        *(v33 + 2) = v43;
        *(v33 + 3) = v34;
        *(v33 + 4) = v46;
        v35 = v47;
        *(v33 + 5) = *(v48 + 88);
        *(v33 + 6) = v35;
        v36 = v44;
        v37 = v45;
        *(v33 + 7) = v29;
        *(v33 + 8) = v37;
        v36(&v33[v31], v21, AssociatedTypeWitness);
        v38 = &v33[v32];
        *v38 = a1;
        v38[1] = a2;
        v39 = &v33[(v32 + 23) & 0xFFFFFFFFFFFFFFF8];
        v40 = v51;
        *v39 = v50;
        *(v39 + 1) = v40;
        sub_188F18724(0, 0, v49, &unk_18A656040, v33);

        swift_unknownObjectRelease();

        return (*(v18 + 8))(v24, AssociatedTypeWitness);
      }
    }

    (*(v18 + 8))(v24, AssociatedTypeWitness);
  }

  return v50(0);
}

uint64_t sub_188F8AE88(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[2] = a9;
  v10[3] = a10;
  v10[4] = sub_18A4A76A8();
  v10[5] = sub_18A4A7698();
  v16 = *(v23 + 80);
  v15 = *(v23 + 88);
  v21 = (*(v15 + 64) + **(v15 + 64));
  v17 = swift_task_alloc();
  v10[6] = v17;
  *v17 = v10;
  v17[1] = sub_188F8B000;
  v18.n128_f64[0] = a1;
  v19.n128_f64[0] = a2;

  return v21(a7, a8, v16, v15, v18, v19);
}

uint64_t sub_188F8B000(uint64_t a1)
{
  *(*v1 + 56) = a1;

  v3 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F8B144, v3, v2);
}

uint64_t sub_188F8B144()
{
  v1 = v0[7];
  v2 = v0[2];

  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_188F8B1D0(void *a1, int a2, uint64_t a3, void *aBlock, double a5, double a6)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  swift_unknownObjectRetain();
  v12 = a1;
  sub_188F8A9EC(a5, a6, a3, sub_188B17584, v11);
  swift_unknownObjectRelease();
}

uint64_t sub_188F8B2A4(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_18A4A7D38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  if (!a1)
  {
    goto LABEL_8;
  }

  sub_188F88D8C(v8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
LABEL_8:
    v16 = 0;
    return v16 & 1;
  }

  v13 = (*(v9 + 32))(v12, v8, AssociatedTypeWitness);
  v14 = *(v1 + qword_1EA938438);
  if (!v14 || !(*((*MEMORY[0x1E69E7D40] & *v14) + 0xA0))(v13))
  {
    (*(v9 + 8))(v12, AssociatedTypeWitness);
    goto LABEL_8;
  }

  v19 = *(v3 + 40);
  swift_unknownObjectRetain();
  v15 = v14;
  v16 = v19();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  return v16 & 1;
}

uint64_t sub_188F8B590(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  LOBYTE(a4) = a4(a3);
  swift_unknownObjectRelease();

  return a4 & 1;
}

id sub_188F8B5F0()
{
  sub_188F8B624();

  return v0;
}

void sub_188F8B624()
{
  v1 = *(v0 + qword_1EA938430);
  if (v1)
  {
    goto LABEL_4;
  }

  v2 = *(v0 + qword_1EA938438);
  if (v2)
  {
    v2;
    v1 = 0;
LABEL_4:
    v3 = v1;
    return;
  }

  __break(1u);
}

id sub_188F8B6D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIIndirectScribbleInteractionWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_188F8B758(uint64_t a1)
{
  v2 = *(a1 + qword_1EA938438);
}

id sub_188F8B7F8()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v0[qword_1EA938420] = 0;
  *&v0[qword_1EA938428] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIIndirectScribbleInteraction();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t dispatch thunk of UIIndirectScribbleInteractionDelegate.indirectScribbleInteraction(_:requestElementsIn:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v21 = (*(a3 + 32) + **(a3 + 32));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_188EC93B4;
  v16.n128_f64[0] = a4;
  v17.n128_f64[0] = a5;
  v18.n128_f64[0] = a6;
  v19.n128_f64[0] = a7;

  return v21(a1, a2, a3, v16, v17, v18, v19);
}

uint64_t dispatch thunk of UIIndirectScribbleInteractionDelegate.indirectScribbleInteraction(_:focusElementIfNeeded:referencePoint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v17 = (*(a4 + 64) + **(a4 + 64));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_188F21174;
  v14.n128_f64[0] = a5;
  v15.n128_f64[0] = a6;

  return v17(a1, a2, a3, a4, v14, v15);
}

uint64_t sub_188F8BE54()
{
  result = sub_18A4A7D38();
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

uint64_t sub_188F8BF30(uint64_t a1)
{
  v3 = v2;
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[7];
  v11 = v1[8];
  v12 = (v1 + v6);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v7);
  v16 = *(v1 + v7 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_188C482B4;

  return sub_188F8AE88(v13, v14, a1, v8, v9, v10, v11, v1 + v5, v15, v16);
}

uint64_t sub_188F8C0B8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  v14 = *(v1 + 11);
  v13 = *(v1 + 12);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_188C48500;

  return sub_188F8A2A0(v9, v10, v11, v12, a1, v4, v5, v7, v8, v14, v13, v6);
}

unint64_t sub_188F8C218()
{
  result = qword_1EA938608;
  if (!qword_1EA938608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA938608);
  }

  return result;
}

uint64_t sub_188F8C264(void *a1)
{
  **(*(*(v1 + 16) + 64) + 40) = a1;
  v2 = a1;

  return swift_continuation_resume();
}

id sub_188F8C474(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t UICollectionView.CellRegistration.init(cellNib:handler:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  v16[4] = sub_188CD6B34;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_188CCDED4;
  v16[3] = &block_descriptor_6_3;
  v13 = _Block_copy(v16);
  v14 = [objc_opt_self() registrationWithCellNib:a1 configurationHandler:v13];

  _Block_release(v13);

  *a6 = v14;
  return result;
}

uint64_t UICollectionView.SupplementaryRegistration.init(supplementaryNib:elementKind:handler:)@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a2;
  v10[4] = a3;

  v11 = sub_18A4A7258();

  v15[4] = sub_188F8C75C;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_188CCE214;
  v15[3] = &block_descriptor_18_4;
  v12 = _Block_copy(v15);
  v13 = [objc_opt_self() registrationWithSupplementaryNib:a1 elementKind:v11 configurationHandler:v12];

  _Block_release(v12);

  *a5 = v13;
  return result;
}

BOOL sub_188F8C764(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (*(a1 + 32) == 1)
    {
      if (v2 != 1)
      {
        return 0;
      }

      v3 = a2;
      v4 = a1;
      v5 = CGRectEqualToRect(*a1, *a2);
      a2 = v3;
      v6 = v5;
      a1 = v4;
      if (!v6)
      {
        return 0;
      }
    }

    else if (v2 != 2 || *(a2 + 8) | *a2 | *(a2 + 16) | *(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    v7 = a2;
    v8 = a1;
    v9 = CGRectEqualToRect(*a1, *a2);
    a2 = v7;
    v10 = v9;
    a1 = v8;
    if (!v10)
    {
      return 0;
    }
  }

  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  v14 = *(a2 + 40);
  v13 = *(a2 + 48);
  v15 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (*(a2 + 56))
    {
      return 0;
    }

    return v12 == v14 && v11 == v13;
  }

  if (*(a1 + 56) != 1)
  {
    return v15 == 2 && !(*&v13 | *&v14);
  }

  return v15 == 1 && v12 == v14 && v11 == v13;
}

BOOL sub_188F8C8C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (*(a1 + 48) != 1)
    {
      if (v2 != 2 || *(a2 + 8) | *a2 | *(a2 + 16) | *(a2 + 24) | *(a2 + 32) | *(a2 + 40))
      {
        return 0;
      }

      goto LABEL_10;
    }

    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (*(a2 + 48))
  {
    return 0;
  }

  v3 = a1;
  v4 = a2;
  v5 = sub_18A4A7A08();
  a2 = v4;
  v6 = v5;
  a1 = v3;
  if ((v6 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v8 = *(a2 + 56);
  v7 = *(a2 + 64);
  v9 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (*(a1 + 72) != 1)
    {
      return v9 == 2 && !(*&v7 | *&v8);
    }

    if (v9 == 1)
    {
      return *(a1 + 56) == v8 && *(a1 + 64) == v7;
    }
  }

  else if (!*(a2 + 72))
  {
    return *(a1 + 56) == v8 && *(a1 + 64) == v7;
  }

  return 0;
}

uint64_t UILayoutOutputModel.layoutInfo.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void sub_188F8CA9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(id), unint64_t *a4)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v6 = 0;
    v7 = 1 << *(a1 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a1 + 64);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v14 = v11 | (v6 << 6);
      v15 = *(*(a1 + 56) + 8 * v14);
      v16 = *(*(a1 + 48) + 8 * v14);
      v17 = v15;
      v18 = a3(v16);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_188A34624(0, a4);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_18A4A7C88();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        return;
      }

      v13 = *(a1 + 64 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_188F8CC1C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v4 = a1;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        a1 = a2;
      }

      else
      {
        a1 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      a2 = v4;

LABEL_39:
      MEMORY[0x1EEE6A200](a1, a2);
      return;
    }

    v5 = v4;
    goto LABEL_17;
  }

  if (v3)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = v2;
LABEL_17:

    sub_188F8E8C8(v5, a2);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v6 = a2;
    v7 = 0;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_32:
      v15 = v12 | (v7 << 6);
      v16 = *(*(v2 + 56) + 8 * v15);
      v17 = *(*(v2 + 48) + 8 * v15);
      v18 = v16;
      v19 = sub_188E8B55C(v17);
      v21 = v20;

      if ((v21 & 1) == 0)
      {

        return;
      }

      sub_188A34624(0, &unk_1EA9393B0);
      v22 = *(*(v6 + 56) + 8 * v19);
      v23 = sub_18A4A7C88();

      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return;
      }

      v14 = *(v2 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_39;
  }
}

uint64_t sub_188F8CE30(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(*(v2 + 56) + 8 * v11);
    v13 = *(*(v2 + 48) + 8 * v11);

    sub_188B00858(v13);
    v15 = v14;

    if ((v15 & 1) == 0)
    {

      return 0;
    }

    sub_189014E28(v16, v12);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188F8CF8C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_14:
    v11 = v8 | (v3 << 6);
    v12 = *(v2 + 48) + 16 * v11;
    v13 = *v12;
    v14 = *(*(v2 + 56) + 8 * v11);
    v15 = *(v12 + 8);
    v16 = *v12;
    v17 = v14;
    sub_188E8B480(v13, v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v20 = sub_18A4A7288();
    v22 = v21;
    if (v20 == sub_18A4A7288() && v22 == v23)
    {
    }

    else
    {
      v25 = sub_18A4A86C8();

      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_188F8D138(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;
    while (v6)
    {
      v8 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_14:
      v11 = v8 | (v3 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(a1 + 56) + 8 * v11);
      v16 = v15;

      v17 = sub_188B0944C(v13, v14);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
LABEL_20:

        return;
      }

      v20 = *(*(a2 + 56) + 8 * v17);
      if (v20)
      {
        if (!v15)
        {
          return;
        }

        sub_188A34624(0, &qword_1ED490230);
        v21 = v20;
        v22 = sub_18A4A7C88();

        if ((v22 & 1) == 0)
        {
          return;
        }
      }

      else if (v15)
      {
        goto LABEL_20;
      }
    }

    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= v7)
      {
        return;
      }

      v10 = *(a1 + 64 + 8 * v3);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v6 = (v10 - 1) & v10;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

uint64_t sub_188F8D2D0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v56 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v58 = result;
  v57 = v7;
  if (v6)
  {
    do
    {
      v8 = __clz(__rbit64(v6));
      v66 = (v6 - 1) & v6;
LABEL_12:
      v11 = 48 * (v8 | (v3 << 6));
      v12 = result;
      sub_188C46604(*(result + 48) + v11, &v73);
      v13 = *(v12 + 56) + v11;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      v16 = *(v13 + 32);
      v17 = *(v13 + 40);
      v71 = v74;
      v68 = v73;
      v18 = v75;
      v19 = v76;
      *&v70 = *(v13 + 8);
      *(&v70 + 1) = *v13;
      sub_188EC22E0(*v13, v70, *(v13 + 16));
      v20 = v15;
      v21 = v16;
      v22 = v17;
      if (v15 == 1)
      {
        return 1;
      }

      v60 = v22;
      v73 = v68;
      v74 = v71;
      v75 = v18;
      v76 = v19;
      v23 = sub_188C46540(&v73);
      v25 = v24;
      sub_188C4680C(&v73);
      if ((v25 & 1) == 0)
      {
        goto LABEL_50;
      }

      v26 = *(v2 + 56) + 48 * v23;
      v27 = *(v26 + 8);
      v72 = *v26;
      v28 = *(v26 + 16);
      v29 = *(v26 + 24);
      v67 = v17;
      v69 = *(v26 + 32);
      v30 = *(v26 + 40);
      if (*(v26 + 16))
      {
        if (v28 == 1)
        {
          if (v14 != 1)
          {
            goto LABEL_50;
          }

          v31 = v72 == *(&v70 + 1) && v27 == v70;
          if (!v31 && (sub_18A4A86C8() & 1) == 0)
          {
            v53 = *(&v70 + 1);
            v54 = v70;
            v55 = 1;
LABEL_51:
            sub_188EC226C(v53, v54, v55);
LABEL_52:

LABEL_53:
            return 0;
          }
        }

        else if (v14 != 2 || v70 != 0)
        {
LABEL_50:
          v53 = *(&v70 + 1);
          v54 = v70;
          v55 = v14;
          goto LABEL_51;
        }
      }

      else
      {
        if (v14)
        {
          goto LABEL_50;
        }

        if (v72 != *(&v70 + 1))
        {
          v53 = *(&v70 + 1);
          v54 = v70;
          v55 = 0;
          goto LABEL_51;
        }
      }

      v64 = v28;
      v65 = v14;
      v61 = v29;
      v62 = v21;
      v63 = v27;
      if (v29)
      {
        if (!v15)
        {
          sub_188EC226C(*(&v70 + 1), v70, v14);
          v20 = v21;
          v21 = v60;
          goto LABEL_53;
        }

        sub_188A34624(0, qword_1ED4913C0);
        sub_188EC22E0(v72, v27, v28);
        v33 = v30;
        v34 = v30;
        v35 = v20;
        v36 = v34;
        v37 = v35;
        v38 = v35;
        v39 = v29;
        v40 = v69;
        v41 = v69;
        v42 = sub_18A4A7C88();

        if ((v42 & 1) == 0)
        {
          sub_188EC226C(v72, v63, v64);

          sub_188EC226C(*(&v70 + 1), v70, v65);
          v21 = v62;
          v20 = v38;
          goto LABEL_53;
        }

        v20 = v37;
        if (!v69)
        {
LABEL_40:
          v21 = v62;
          v43 = v67;
          if (v16)
          {
            sub_188EC226C(v72, v63, v64);

            v53 = *(&v70 + 1);
            v54 = v70;
            v55 = v65;
            goto LABEL_51;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (v15)
        {
          goto LABEL_50;
        }

        sub_188EC22E0(v72, v27, v28);
        v33 = v30;
        v47 = v30;
        v40 = v69;
        v48 = v69;
        if (!v69)
        {
          goto LABEL_40;
        }
      }

      v43 = v67;
      if (!v16)
      {
        sub_188EC226C(v72, v63, v64);

        sub_188EC226C(*(&v70 + 1), v70, v65);
        v21 = v60;
        goto LABEL_53;
      }

      sub_188A34624(0, qword_1ED4913C0);
      v21 = v62;
      v44 = v62;
      v45 = v40;
      v46 = sub_18A4A7C88();

      if ((v46 & 1) == 0)
      {
        sub_188EC226C(v72, v63, v64);

        sub_188EC226C(*(&v70 + 1), v70, v65);
        v21 = v44;
        goto LABEL_53;
      }

LABEL_41:
      if (v33)
      {
        v49 = v33;
        v2 = a2;
        if (!v43)
        {
          sub_188EC226C(v72, v63, v64);

          sub_188EC226C(*(&v70 + 1), v70, v65);
          goto LABEL_53;
        }

        sub_188A34624(0, &qword_1ED48C4A0);
        v50 = v60;
        v51 = v49;
        v52 = sub_18A4A7C88();

        sub_188EC226C(v72, v63, v64);
        sub_188EC226C(*(&v70 + 1), v70, v65);

        if ((v52 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        sub_188EC226C(v72, v63, v64);

        sub_188EC226C(*(&v70 + 1), v70, v65);
        v2 = a2;
        if (v43)
        {
          goto LABEL_52;
        }
      }

      v7 = v57;
      result = v58;
      v6 = v66;
    }

    while (v66);
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v56 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v66 = (v10 - 1) & v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188F8D880(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v76 = result + 64;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v6 = (v3 + 63) >> 6;
  v77 = v6;
  v78 = result;
  if (v5)
  {
    while (1)
    {
      v91 = (v5 - 1) & v5;
      v7 = __clz(__rbit64(v5)) | (v2 << 6);
LABEL_15:
      v12 = *(*(result + 48) + 8 * v7);
      v13 = *(result + 56) + 232 * v7;
      v125 = *(v13 + 192);
      v126 = *(v13 + 208);
      v14 = *(v13 + 224);
      v122 = *(v13 + 128);
      v123 = *(v13 + 144);
      v124 = *(v13 + 160);
      v118 = *(v13 + 64);
      v119 = *(v13 + 80);
      v120 = *(v13 + 96);
      v121 = *(v13 + 112);
      v114 = *v13;
      v115 = *(v13 + 16);
      v116 = *(v13 + 32);
      v117 = *(v13 + 48);
      *&v135[32] = *(v13 + 176);
      v136 = v125;
      v137 = v126;
      v133 = v121;
      v134 = v122;
      *v135 = v123;
      *&v135[16] = v124;
      v129 = v117;
      v130 = v118;
      v131 = v119;
      v132 = v120;
      *&v127[8] = v114;
      *&v127[24] = v115;
      *v127 = v12;
      v138 = v14;
      v128 = v116;
      signpost_c2_entryLock_start(*&v114, *&v116);
      v16 = *v127;
      v15 = *&v127[16];
      v17 = *&v127[32];
      v18 = v128;
      v145[0] = *(&v128 + 1);
      *(v145 + 3) = DWORD1(v128);
      v19 = *(&v128 + 1);
      v20 = v129;
      v21 = BYTE8(v129);
      v144[0] = *(&v129 + 9);
      *(v144 + 3) = HIDWORD(v129);
      v22 = *(&v130 + 1);
      v23 = v130;
      v24 = v131;
      *(v143 + 3) = DWORD1(v131);
      v143[0] = *(&v131 + 1);
      v25 = *(&v131 + 1);
      v26 = v132;
      v27 = BYTE8(v132);
      v142[0] = *(&v132 + 9);
      *(v142 + 3) = HIDWORD(v132);
      v28 = *&v133;
      v29 = BYTE8(v133);
      v141[0] = *(&v133 + 9);
      *(v141 + 3) = HIDWORD(v133);
      v30 = *(&v134 + 1);
      v31 = v134;
      v32 = v135[0];
      *(v140 + 3) = *&v135[4];
      v140[0] = *&v135[1];
      v34 = *&v135[8];
      v33 = *&v135[24];
      v35 = *&v135[40];
      v36 = v136;
      v37 = BYTE8(v136);
      *(v139 + 3) = HIDWORD(v136);
      v139[0] = *(&v136 + 9);
      v38 = *(&v137 + 1);
      v39 = v137;
      v90 = v2;
LABEL_16:
      v40 = v138;
      v113 = v16;
      *(&v128 + 1) = v145[0];
      DWORD1(v128) = *(v145 + 3);
      *(&v129 + 9) = v144[0];
      HIDWORD(v129) = *(v144 + 3);
      *(&v131 + 1) = v143[0];
      DWORD1(v131) = *(v143 + 3);
      HIDWORD(v132) = *(v142 + 3);
      *(&v132 + 9) = v142[0];
      HIDWORD(v133) = *(v141 + 3);
      *(&v133 + 9) = v141[0];
      *&v135[1] = v140[0];
      *&v135[4] = *(v140 + 3);
      *(&v136 + 9) = v139[0];
      HIDWORD(v136) = *(v139 + 3);
      *v127 = v16;
      *&v127[16] = v15;
      rect2 = v15;
      v41 = v17;
      *&v127[32] = v17;
      v42 = v18;
      LOBYTE(v128) = v18;
      *&v107 = v20;
      *(&v107 + 1) = v19;
      *(&v128 + 1) = v19;
      *&v129 = v20;
      v108 = v21;
      BYTE8(v129) = v21;
      *&v104 = v22;
      *(&v104 + 1) = v23;
      *&v130 = v23;
      *(&v130 + 1) = v22;
      v106 = v24;
      LOBYTE(v131) = v24;
      *&v102 = v26;
      *(&v102 + 1) = v25;
      *(&v131 + 1) = v25;
      *&v132 = v26;
      v103 = v27;
      BYTE8(v132) = v27;
      v100 = v28;
      *&v133 = v28;
      v101 = v29;
      BYTE8(v133) = v29;
      *&v98 = v30;
      *(&v98 + 1) = v31;
      *&v134 = v31;
      *(&v134 + 1) = v30;
      v99 = v32;
      v135[0] = v32;
      v96 = v34;
      *&v135[8] = v34;
      *&v135[24] = v33;
      v112 = v33;
      v94 = v36;
      v95 = v35;
      *&v135[40] = v35;
      *&v136 = v36;
      v97 = v37;
      BYTE8(v136) = v37;
      *&v93 = v38;
      *(&v93 + 1) = v39;
      *&v137 = v39;
      *(&v137 + 1) = v38;
      result = sub_188F8EB08(v127);
      if (result == 1)
      {
        return result;
      }

      v92 = v40;
      v43 = sub_188E8B63C(v113);
      v44 = v112;
      if ((v45 & 1) == 0)
      {
        return 0;
      }

      v46 = *(a2 + 56) + 232 * v43;
      v87 = *(v46 + 48);
      v88 = *(v46 + 40);
      v105 = *(v46 + 56);
      v48 = *(v46 + 64);
      v47 = *(v46 + 72);
      v49 = *(v46 + 80);
      v51 = *(v46 + 88);
      v50 = *(v46 + 96);
      v52 = *(v46 + 104);
      v53 = *(v46 + 112);
      v54 = *(v46 + 120);
      v56 = *(v46 + 128);
      v55 = *(v46 + 136);
      v57 = *(v46 + 144);
      v59 = *(v46 + 152);
      v58 = *(v46 + 160);
      v60 = *(v46 + 168);
      v61 = *(v46 + 176);
      v63 = *(v46 + 184);
      v62 = *(v46 + 192);
      v64 = *(v46 + 200);
      v86 = *(v46 + 208);
      v85 = *(v46 + 216);
      v89 = *(v46 + 224);
      if (!*(v46 + 32))
      {
        break;
      }

      if (*(v46 + 32) == 1)
      {
        if (v42 != 1)
        {
          return 0;
        }

        goto LABEL_23;
      }

      if (v42 != 2 || rect2 | *(&v113 + 1) | *(&rect2 + 1) | *&v41)
      {
        return 0;
      }

LABEL_27:
      if (!v105)
      {
        if (v108)
        {
          return 0;
        }

LABEL_32:
        if (v88 != *(&v107 + 1) || v87 != *&v107)
        {
          return 0;
        }

        goto LABEL_37;
      }

      if (v105 == 1)
      {
        if (v108 != 1)
        {
          return 0;
        }

        goto LABEL_32;
      }

      if (v108 != 2 || v107 != 0)
      {
        return 0;
      }

LABEL_37:
      if (!v49)
      {
        if (v106)
        {
          return 0;
        }

LABEL_42:
        if (v48 != *(&v104 + 1) || v47 != *&v104)
        {
          return 0;
        }

        goto LABEL_47;
      }

      if (v49 == 1)
      {
        if (v106 != 1)
        {
          return 0;
        }

        goto LABEL_42;
      }

      if (v106 != 2 || v104 != 0)
      {
        return 0;
      }

LABEL_47:
      if (!v52)
      {
        if (v103)
        {
          return 0;
        }

LABEL_52:
        if (v51 != *(&v102 + 1) || v50 != *&v102)
        {
          return 0;
        }

        goto LABEL_57;
      }

      if (v52 == 1)
      {
        if (v103 != 1)
        {
          return 0;
        }

        goto LABEL_52;
      }

      if (v103 != 2 || v102 != 0)
      {
        return 0;
      }

LABEL_57:
      if (!v54)
      {
        if (v101)
        {
          return 0;
        }

LABEL_62:
        if (v53 != v100)
        {
          return 0;
        }

        goto LABEL_66;
      }

      if (v54 == 1)
      {
        if (v101 != 1)
        {
          return 0;
        }

        goto LABEL_62;
      }

      if (v101 != 2 || v100 != 0.0)
      {
        return 0;
      }

LABEL_66:
      if (!v57)
      {
        if (v99)
        {
          return 0;
        }

LABEL_71:
        if (v56 != *(&v98 + 1) || v55 != *&v98)
        {
          return 0;
        }

        goto LABEL_76;
      }

      if (v57 == 1)
      {
        if (v99 != 1)
        {
          return 0;
        }

        goto LABEL_71;
      }

      if (v99 != 2 || v98 != 0)
      {
        return 0;
      }

LABEL_76:
      if (!v64)
      {
        if (v97)
        {
          return 0;
        }

        v152 = v96;
        v153 = v44;
        v154 = v95;
        v155 = v94;
        v146 = v59;
        v147 = v58;
        v148 = v60;
        v149 = v61;
        v150 = v63;
        v151 = v62;
LABEL_82:
        if ((sub_18A4A7A08() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_86;
      }

      if (v64 == 1)
      {
        if (v97 != 1)
        {
          return 0;
        }

        v162 = v96;
        v163 = v44;
        v164 = v95;
        v165 = v94;
        v156 = v59;
        v157 = v58;
        v158 = v60;
        v159 = v61;
        v160 = v63;
        v161 = v62;
        goto LABEL_82;
      }

      if (v97 != 2)
      {
        return 0;
      }

      v75 = vorrq_s8(v96, v44);
      if (*&vorr_s8(*v75.i8, *&vextq_s8(v75, v75, 8uLL)) | v94 | v95)
      {
        return 0;
      }

LABEL_86:
      if (!v89)
      {
        if (v92)
        {
          return 0;
        }

LABEL_91:
        if (v86 != *(&v93 + 1) || v85 != *&v93)
        {
          return 0;
        }

        goto LABEL_96;
      }

      if (v89 == 1)
      {
        if (v92 != 1)
        {
          return 0;
        }

        goto LABEL_91;
      }

      if (v92 != 2 || v93 != 0)
      {
        return 0;
      }

LABEL_96:
      v2 = v90;
      v5 = v91;
      v6 = v77;
      result = v78;
      if (!v91)
      {
        goto LABEL_7;
      }
    }

    if (v42)
    {
      return 0;
    }

LABEL_23:
    v166.origin.x = *(&v113 + 1);
    v166.size.height = v41;
    *&v166.origin.y = rect2;
    v65 = *(v46 + 192);
    v66 = *(v46 + 184);
    v83 = *(v46 + 88);
    v84 = *(v46 + 96);
    v67 = *(v46 + 176);
    v82 = *(v46 + 104);
    v68 = *(v46 + 168);
    v79 = *(v46 + 160);
    v80 = *(v46 + 64);
    v81 = *(v46 + 72);
    v69 = *(v46 + 152);
    rect2a = *(v46 + 120);
    v70 = *(v46 + 200);
    v71 = *(v46 + 136);
    v72 = *(v46 + 128);
    v73 = *(v46 + 144);
    v74 = CGRectEqualToRect(*v46, v166);
    v57 = v73;
    v56 = v72;
    v55 = v71;
    v64 = v70;
    v54 = rect2a;
    v59 = v69;
    v48 = v80;
    v47 = v81;
    v58 = v79;
    v60 = v68;
    v52 = v82;
    v61 = v67;
    v51 = v83;
    v50 = v84;
    v63 = v66;
    v62 = v65;
    v44 = v112;
    if (!v74)
    {
      return 0;
    }

    goto LABEL_27;
  }

LABEL_7:
  if (v6 <= v2 + 1)
  {
    v8 = v2 + 1;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8 - 1;
  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      v90 = v9;
      sub_188F8EB1C(v127);
      v91 = 0;
      v16 = *v127;
      v15 = *&v127[16];
      v17 = *&v127[32];
      v18 = v128;
      v145[0] = *(&v128 + 1);
      *(v145 + 3) = DWORD1(v128);
      v19 = *(&v128 + 1);
      v20 = v129;
      v21 = BYTE8(v129);
      v144[0] = *(&v129 + 9);
      *(v144 + 3) = HIDWORD(v129);
      v22 = *(&v130 + 1);
      v23 = v130;
      v24 = v131;
      *(v143 + 3) = DWORD1(v131);
      v143[0] = *(&v131 + 1);
      v25 = *(&v131 + 1);
      v26 = v132;
      v27 = BYTE8(v132);
      v142[0] = *(&v132 + 9);
      *(v142 + 3) = HIDWORD(v132);
      v28 = *&v133;
      v29 = BYTE8(v133);
      v141[0] = *(&v133 + 9);
      *(v141 + 3) = HIDWORD(v133);
      v30 = *(&v134 + 1);
      v31 = v134;
      v32 = v135[0];
      *(v140 + 3) = *&v135[4];
      v140[0] = *&v135[1];
      v34 = *&v135[8];
      v33 = *&v135[24];
      v35 = *&v135[40];
      v36 = v136;
      v37 = BYTE8(v136);
      *(v139 + 3) = HIDWORD(v136);
      v139[0] = *(&v136 + 9);
      v38 = *(&v137 + 1);
      v39 = v137;
      goto LABEL_16;
    }

    v11 = *(v76 + 8 * v10);
    ++v2;
    if (v11)
    {
      v91 = (v11 - 1) & v11;
      v7 = __clz(__rbit64(v11)) | (v10 << 6);
      v2 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_188F8E1C4(uint64_t a1)
{
  result = sub_188F8E1EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188F8E1EC()
{
  result = qword_1EA9386E8;
  if (!qword_1EA9386E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9386E8);
  }

  return result;
}

uint64_t sub_188F8E240(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_17:
    v15 = *(*(v3 + 48) + 8 * v10);
    sub_188F8EA58(*(v3 + 56) + 16 * v10, v21);
    v22 = v15;
    sub_188E8FC60(v21, v23);
LABEL_18:
    sub_188A3F704(&v22, &v24, &unk_1EA93CB10);
    if (!v25[0] && v25[1] == 1)
    {
      return 1;
    }

    v16 = v24;
    sub_188E8FC60(v25, &v22);
    v17 = sub_188A403F4(v16);
    if ((v18 & 1) == 0)
    {
      sub_188F8EAB4(&v22);
      return 0;
    }

    sub_188F8EA58(*(a2 + 56) + 16 * v17, v21);
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = swift_unknownObjectWeakLoadStrong();
    sub_188F8EAB4(v21);
    result = sub_188F8EAB4(&v22);
    if (Strong)
    {
      if (!v20)
      {
LABEL_28:
        swift_unknownObjectRelease();
        return 0;
      }

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (Strong != v20)
      {
        return 0;
      }
    }

    else if (v20)
    {
      goto LABEL_28;
    }
  }

  if (v8 <= v4 + 1)
  {
    v11 = v4 + 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 - 1;
  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v8)
    {
      v7 = 0;
      v22 = 0;
      v23[0] = 0;
      v4 = v12;
      v23[1] = 1;
      goto LABEL_18;
    }

    v14 = *(v3 + 64 + 8 * v13);
    ++v4;
    if (v14)
    {
      v7 = (v14 - 1) & v14;
      v10 = __clz(__rbit64(v14)) | (v13 << 6);
      v4 = v13;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188F8E45C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_17:
    v15 = 8 * v10;
    v16 = *(*(v3 + 48) + v15);
    sub_188A3F29C(*(v3 + 56) + v15, v22, &unk_1EA93B9E0);
    v23 = v16;
    sub_188A3F704(v22, &v24, &unk_1EA93B9E0);
LABEL_18:
    sub_188A3F704(&v23, &v25, &qword_1EA938700);
    v17 = v25;
    if (!v25)
    {
      return 1;
    }

    sub_188A3F704(&v26, &v23, &unk_1EA93B9E0);
    v18 = sub_188A403F4(v17);
    if ((v19 & 1) == 0)
    {
      sub_188A3F5FC(&v23, &unk_1EA93B9E0);
      return 0;
    }

    sub_188A3F29C(*(a2 + 56) + 8 * v18, v22, &unk_1EA93B9E0);
    Strong = swift_weakLoadStrong();
    v21 = swift_weakLoadStrong();
    sub_188A3F5FC(v22, &unk_1EA93B9E0);
    result = sub_188A3F5FC(&v23, &unk_1EA93B9E0);
    if (Strong)
    {
      if (!v21)
      {
LABEL_27:

        return 0;
      }

      if (Strong != v21)
      {
        return 0;
      }
    }

    else if (v21)
    {
      goto LABEL_27;
    }
  }

  if (v8 <= v4 + 1)
  {
    v11 = v4 + 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 - 1;
  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v8)
    {
      v7 = 0;
      v23 = 0;
      v24 = 0;
      v4 = v12;
      goto LABEL_18;
    }

    v14 = *(v3 + 64 + 8 * v13);
    ++v4;
    if (v14)
    {
      v7 = (v14 - 1) & v14;
      v10 = __clz(__rbit64(v14)) | (v13 << 6);
      v4 = v13;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188F8E6AC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    v14 = v13 == 3;
    if (v13 != 3)
    {
      result = sub_188C4585C(*(*(v3 + 48) + 8 * v12));
      if ((v15 & 1) != 0 && *(*(a2 + 56) + result) == v13)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188F8E7FC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        return 0;
      }

      return *&a1 == *&a3;
    }

    if (a4 == 2 && *&a3 == 0.0)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return *&a1 == *&a3;
  }

  return 0;
}

BOOL sub_188F8E858(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return a6 == 2 && !(a5 | a4);
    }

    if (a6 != 1)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  return *&a2 == *&a5 && *&a1 == *&a4;
}

void sub_188F8E8C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_18A4A7F68())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a2 + 56) + 8 * v12);
      v14 = *(*(a2 + 48) + 8 * v12);
      v15 = v13;
      v16 = sub_18A4A8358();

      if (!v16)
      {

        return;
      }

      sub_188A34624(0, &unk_1EA9393B0);
      swift_dynamicCast();
      v17 = sub_18A4A7C88();

      if ((v17 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_188F8EB08(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_188F8EB1C(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 255;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 217) = 0u;
  return result;
}

uint64_t sub_188F8EB4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18A4A4E78();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      v8 = v7;
      result = sub_18A4A5C48();
    }

    else
    {
      result = sub_18A4A5C38();
    }

    v14 = v19;
    v15 = v18;
    v13 = v20;
  }

  else
  {
    v10 = *(v4 + 20);
    v11 = *MEMORY[0x1E697F468];
    v12 = sub_18A4A53E8();
    (*(*(v12 - 8) + 104))(&v6[v10], v11, v12);
    *v6 = v7;
    *(v6 + 1) = v7;
    sub_18A4A4E68();
    v16 = v18;
    v17 = v19;
    v13 = v20;
    result = sub_188F8FF5C(v6);
    v15 = v16;
    v14 = v17;
  }

  *a1 = v15;
  *(a1 + 16) = v14;
  *(a1 + 32) = v13;
  return result;
}