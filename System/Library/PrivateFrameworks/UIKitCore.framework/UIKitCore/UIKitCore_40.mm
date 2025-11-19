unint64_t sub_188F163F4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = (a7[7] + 32 * result);
  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_188F16440(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
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

uint64_t sub_188F16488(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_18A4A29D8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_188F16548(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2 & 1;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

uint64_t sub_188F16594(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_18A4A5448();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

double sub_188F166FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_188F14D80(a1, a2);
  [v2 bounds];
  v4 = v3;

  return v4;
}

void sub_188F16760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_188F14D80(a2, a3);
  [v4 insertSubview:a1 atIndex:0];
}

char *sub_188F167B8()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController__textureWindow] = 0;
  v2 = type metadata accessor for _UISharedTextureController();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_delegate];
  *&v3[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_sharingContexts] = sub_188E8E398(MEMORY[0x1E69E7CC0]);
  *(v4 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v8.receiver = v3;
  v8.super_class = v2;
  *&v0[OBJC_IVAR____TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController_manager] = objc_msgSendSuper2(&v8, sel_init);
  swift_unknownObjectWeakAssign();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  *(*&v5[OBJC_IVAR____TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController_manager] + OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_delegate + 8) = &off_1EFACAE58;
  swift_unknownObjectWeakAssign();
  return v5;
}

void sub_188F168E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_188F14B84(a1, a2);
  v5 = *&v4[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_containerView];
  v6 = v5;

  if (v5)
  {
    [v6 removeFromSuperview];
  }

  v7 = sub_188F14B84(a1, a2);
  v8 = *&v7[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_containerView];
  *&v7[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_containerView] = 0;
}

uint64_t sub_188F16994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_188F16A10()
{
  result = qword_1EA936E90;
  if (!qword_1EA936E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA936E90);
  }

  return result;
}

uint64_t UITextEffectView.ReplacementTextEffect.__allocating_init(chunk:view:delegate:fromColor:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = sub_188F1FB70(a1, a2, v11, a4, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v12;
}

void sub_188F16B1C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

void *sub_188F16B74()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_188F16BB8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void sub_188F16C50(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;
}

id sub_188F16CA8()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_188F16CEC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_188F16DA4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for UITextEffectView.EffectID();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188ECA980(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_id;
  swift_beginAccess();
  sub_188F1FC88(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_188F16E5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_id;
  swift_beginAccess();
  return sub_188ECA980(v1 + v3, a1);
}

uint64_t sub_188F16EB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_id;
  swift_beginAccess();
  sub_188F1FC88(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_188F16F74()
{
  v1 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_lineAnimationEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_188F16FB8(char a1)
{
  v3 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_lineAnimationEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_188F17068@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_188F21164;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_188A52E38(v4);
}

uint64_t sub_188F17108(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188F21178;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_188A52E38(v3);
  return sub_188A55B8C(v8);
}

uint64_t sub_188F17270@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_188E3FE50;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_188A52E38(v4);
}

uint64_t sub_188F17310(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188EB2CAC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_188A52E38(v3);
  return sub_188A55B8C(v8);
}

uint64_t sub_188F17478@<X0>(void *a1@<X0>, uint64_t (**a2)(float *a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_188F20F60;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_188A52E38(v4);
}

uint64_t sub_188F17518(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188F20F58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_188A52E38(v3);
  return sub_188A55B8C(v8);
}

uint64_t sub_188F17680@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_188A4B574;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_188A52E38(v4);
}

uint64_t sub_188F17720(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188A6D638;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_188A52E38(v3);
  return sub_188A55B8C(v8);
}

uint64_t sub_188F17808(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_188F17890(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void sub_188F17954(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_188F179B4()
{
  v1 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_188F17A00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_188F17AB8()
{
  result = 2.0;
  xmmword_1EA92ECD0 = xmmword_18A651880;
  return result;
}

uint64_t UITextEffectView.ReplacementTextEffect.__allocating_init(chunk:view:delegate:)(void *a1, void *a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_188F1FCEC(a1, a2, a3);

  return v6;
}

uint64_t UITextEffectView.ReplacementTextEffect.init(chunk:view:delegate:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_188F1FCEC(a1, a2, a3);

  return v5;
}

uint64_t UITextEffectView.ReplacementTextEffect.init(chunk:view:delegate:fromColor:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a3, v10);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  v17 = sub_188F1F888(a1, a2, v15, a4, v5, v10, v11);

  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v17;
}

unint64_t sub_188F17C94(void *a1)
{
  v2 = [a1 parameters];
  v3 = [v2 _textLineRects];

  if (v3)
  {
    sub_188A921E4();
    v4 = sub_18A4A7548();

    if (v4 >> 62)
    {
      v5 = sub_18A4A7F68();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v5 > 1;
  }

  if (UIAccessibilityIsReduceMotionEnabled())
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_lineAnimationEnabled;
  swift_beginAccess();
  if ((*(v1 + v6) & 1) == 0)
  {
    return 0;
  }

  return v3;
}

uint64_t sub_188F17D80(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v51[-v5];
  result = swift_beginAccess();
  v8 = *(v1 + 16);
  if (v8 && *(v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) == 1)
  {
    v9 = *(v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_18A64BFB0;
    v11 = v8;
    v12 = [a1 view];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v53.origin.x = v14;
    v53.origin.y = v16;
    v53.size.width = v18;
    v53.size.height = v20;
    Width = CGRectGetWidth(v53);
    v22 = sub_1890005B8();
    v23 = objc_allocWithZone(UIColor);
    aBlock[4] = sub_18913686C;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188BC2240;
    aBlock[3] = &block_descriptor_26;
    v24 = _Block_copy(aBlock);
    v25 = [v23 initWithDynamicProvider_];
    _Block_release(v24);

    v26 = [a1 parameters];
    v27 = [v26 _textLineRects];

    if (v27)
    {
      sub_188A921E4();
      v28 = sub_18A4A7548();

      if (v28 >> 62)
      {
        v29 = sub_18A4A7F68();
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v29 == 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }
    }

    else
    {
      v30 = 2;
    }

    *(v10 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.OutgoingEffect;
    *(v10 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.OutgoingEffect;
    v31 = swift_allocObject();
    *(v10 + 32) = v31;
    v32 = [objc_opt_self() functionWithName_];
    *(v31 + 5) = v30;
    *(v31 + 6) = v32;
    v31[2] = Width;
    v31[3] = v22;
    *(v31 + 4) = v25;
    *(*&v9[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v10;

    sub_189230C30();
    [v11 addSubview_];
    sub_188F18320(v9, a1);
    if (sub_188F17C94(a1))
    {
      v33 = [a1 view];
      type metadata accessor for TextLineWaveAnimator();
      swift_allocObject();
      v34 = a1;
      v35 = sub_1891EC6CC(v34, v33);

      v36 = (v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation);
      swift_beginAccess();
      v38 = *v36;
      v37 = v36[1];
      v39 = swift_allocObject();
      v39[2] = v35;
      v39[3] = v38;
      v39[4] = v37;
      v40 = &v9[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v41 = *v40;
      *v40 = sub_188F21170;
      v40[1] = v39;
      sub_188A52E38(v38);

      sub_188A55B8C(v41);
      *(v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_fromLineAnimator) = v35;
    }

    else
    {
      v42 = (v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation);
      swift_beginAccess();
      v44 = *v42;
      v43 = v42[1];
      v45 = &v9[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v46 = *v45;
      *v45 = v44;
      v45[1] = v43;
      sub_188A52E38(v44);
      sub_188A55B8C(v46);
    }

    v47 = sub_18A4A76C8();
    (*(*(v47 - 8) + 56))(v6, 1, 1, v47);
    sub_18A4A76A8();

    v48 = sub_18A4A7698();
    v49 = swift_allocObject();
    v50 = MEMORY[0x1E69E85E0];
    v49[2] = v48;
    v49[3] = v50;
    v49[4] = v2;
    sub_188F18724(0, 0, v6, &unk_18A6518A8, v49);
  }

  return result;
}

void sub_188F18320(void *a1, id a2)
{
  v5 = [a2 view];
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = *(v2 + 16);
  }

  else
  {
    v7 = a1;
    v6 = 0;
  }

  v8 = v6;
  [v5 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [a2 target];
  v18 = [v17 container];

  [v7 convertRect:v18 fromCoordinateSpace:{v10, v12, v14, v16}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [a1 setCenter_];
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = v24;
  v27.size.height = v26;
  v28 = CGRectInset(v27, 0.0, -80.0);
  [a1 setBounds_];
  [v5 setFrame_];
  [a1 setMaskView_];
}

uint64_t sub_188F184DC()
{
  v0[2] = sub_18A4A76A8();
  v0[3] = sub_18A4A7698();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_188F18588;

  return sub_188F18D18();
}

uint64_t sub_188F18588()
{

  v1 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F186C4, v1, v0);
}

uint64_t sub_188F186C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_188F18724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_188F20F68(a3, v25 - v10);
  v12 = sub_18A4A76C8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_188A3F5FC(v11, &qword_1EA934728);
  }

  else
  {
    sub_18A4A76B8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_18A4A7678();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_18A4A7318() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_188A3F5FC(a3, &qword_1EA934728);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_188A3F5FC(a3, &qword_1EA934728);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_188F18A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_188F20F68(a3, v25 - v10);
  v12 = sub_18A4A76C8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_188A3F5FC(v11, &qword_1EA934728);
  }

  else
  {
    sub_18A4A76B8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_18A4A7678();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_18A4A7318() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_188A3F5FC(a3, &qword_1EA934728);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_188A3F5FC(a3, &qword_1EA934728);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_188F18D18()
{
  v1[30] = v0;
  sub_18A4A76A8();
  v1[31] = sub_18A4A7698();
  v3 = sub_18A4A7678();
  v1[32] = v3;
  v1[33] = v2;

  return MEMORY[0x1EEE6DFA0](sub_188F18DB0, v3, v2);
}

uint64_t sub_188F18DB0()
{
  v1 = v0[30];
  if (*(v1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) == 1 && (swift_beginAccess(), v2 = *(v1 + 16), (v0[34] = v2) != 0))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[35] = Strong;
    if (Strong)
    {
      v4 = Strong;
      v5 = v0[30];
      swift_beginAccess();
      v6 = *(v5 + 24);
      v0[36] = v6;
      v0[2] = v0;
      v0[3] = sub_188F190BC;
      v7 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_188F194AC;
      v0[13] = &block_descriptor_102_0;
      v0[14] = v7;
      v8 = v2;
      [v4 updateTextChunkVisibilityForAnimation:v6 visible:0 completionHandler:v0 + 10];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    else
    {
      v10 = v0[30];
      v11 = swift_allocObject();
      v12 = v2;
      swift_weakInit();
      v13 = (v10 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion);
      swift_beginAccess();
      v15 = *v13;
      v14 = v13[1];
      v16 = swift_allocObject();
      v0[37] = v16;
      v16[2] = v11;
      v16[3] = v15;
      v16[4] = v14;
      sub_188A52E38(v15);
      sub_189230A38(0, sub_188F20E04, v16);
      v17 = swift_task_alloc();
      v0[38] = v17;
      *v17 = v0;
      v17[1] = sub_188F19318;

      return sub_188F19C10();
    }
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_188F190BC()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);

  return MEMORY[0x1EEE6DFA0](sub_188F191C4, v2, v1);
}

uint64_t sub_188F191C4()
{
  v1 = v0[36];
  swift_unknownObjectRelease();

  v2 = v0[30];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = (v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  v0[37] = v7;
  v7[2] = v3;
  v7[3] = v6;
  v7[4] = v5;
  sub_188A52E38(v6);
  sub_189230A38(0, sub_188F20E04, v7);
  v8 = swift_task_alloc();
  v0[38] = v8;
  *v8 = v0;
  v8[1] = sub_188F19318;

  return sub_188F19C10();
}

uint64_t sub_188F19318()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_188F19438, v3, v2);
}

uint64_t sub_188F19438()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_188F194AC(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t sub_188F194E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[27] = a4;
  sub_18A4A76A8();
  v6[30] = sub_18A4A7698();
  v8 = sub_18A4A7678();
  v6[31] = v8;
  v6[32] = v7;

  return MEMORY[0x1EEE6DFA0](sub_188F1957C, v8, v7);
}

uint64_t sub_188F1957C()
{
  v1 = v0[27];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[33] = v2;
  if (v2 && (swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (v0[34] = Strong) != 0))
  {
    v4 = Strong;
    v5 = v0[27];
    swift_beginAccess();
    v6 = *(v5 + 24);
    v0[35] = v6;
    v0[2] = v0;
    v0[3] = sub_188F19768;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_188F194AC;
    v0[13] = &block_descriptor_114_0;
    v0[14] = v7;
    v8 = v2;
    [v4 finishAnimationFor:v6 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v10 = v0[28];
    if (v10)
    {
      v10(v9);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_188F19768()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return MEMORY[0x1EEE6DFA0](sub_188F19870, v2, v1);
}

uint64_t sub_188F19870()
{
  v1 = v0[35];
  v2 = v0[33];

  swift_unknownObjectRelease();

  v3 = v0[28];
  if (v3)
  {
    v3();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_188F19904()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_18A4A76C8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_18A4A76A8();

  v6 = sub_18A4A7698();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_188F18724(0, 0, v4, &unk_18A6518B8, v7);
}

uint64_t sub_188F19A28()
{
  v0[2] = sub_18A4A76A8();
  v0[3] = sub_18A4A7698();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_188F19AD4;

  return sub_188F19C10();
}

uint64_t sub_188F19AD4()
{

  v1 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F2117C, v1, v0);
}

uint64_t sub_188F19C10()
{
  v1[80] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  v1[81] = swift_task_alloc();
  type metadata accessor for UITextEffectView.EffectID();
  v1[82] = swift_task_alloc();
  v1[83] = sub_18A4A76A8();
  v1[84] = sub_18A4A7698();
  v3 = sub_18A4A7678();
  v1[85] = v3;
  v1[86] = v2;

  return MEMORY[0x1EEE6DFA0](sub_188F19D14, v3, v2);
}

uint64_t sub_188F19D14()
{
  v1 = *(v0 + 640);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 696) = v2;
  if (v2 && (v3 = *(v0 + 640), *(v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) == 1))
  {
    v4 = qword_1EA92ECC8;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
      v3 = *(v0 + 640);
    }

    v6 = xmmword_1EA92ECD0;
    *(v0 + 704) = xmmword_1EA92ECD0;
    v7 = v3[7];
    v8 = v3[8];
    __swift_project_boxed_opaque_existential_0(v3 + 4, v7);
    swift_beginAccess();
    v9 = v3[3];
    *(v0 + 720) = v9;
    *(v0 + 600) = v6;
    *(v0 + 608) = *(&v6 + 1) + *(&v6 + 1);
    v10 = *(v8 + 8);
    v11 = v9;
    v16 = (v10 + *v10);
    v12 = swift_task_alloc();
    *(v0 + 728) = v12;
    *v12 = v0;
    v12[1] = sub_188F19F68;
    v13 = *(v0 + 640);

    return v16(v11, v13, v0 + 600, v7, v8);
  }

  else
  {

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_188F19F68(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  *(*v1 + 736) = a1;

  v4 = *(v2 + 688);
  v5 = *(v2 + 680);

  return MEMORY[0x1EEE6DFA0](sub_188F1A0B0, v5, v4);
}

uint64_t sub_188F1A0B0()
{
  v1 = *(v0 + 736);
  if (v1)
  {
    v2 = *(v0 + 640);
    v3 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
    swift_beginAccess();
    v4 = *(v2 + v3);
    v5 = *(v0 + 640);
    if (v4)
    {
      v6 = *(v5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_18A64BFB0;
      v8 = v4;
      v9 = [v1 view];
      [v9 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v106.origin.x = v11;
      v106.origin.y = v13;
      v106.size.width = v15;
      v106.size.height = v17;
      Width = CGRectGetWidth(v106);
      v19 = v1;
      v20 = sub_1890005B8();

      v21 = v19;
      v22 = [v21 parameters];
      v23 = [v22 _textLineRects];

      if (v23)
      {
        sub_188A921E4();
        v24 = sub_18A4A7548();

        if (v24 >> 62)
        {
          v25 = sub_18A4A7F68();
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v25 == 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }
      }

      else
      {

        v26 = 2;
      }

      *(v7 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      *(v7 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      v57 = swift_allocObject();
      *(v7 + 32) = v57;
      v58 = *MEMORY[0x1E6979ED0];
      v59 = objc_opt_self();
      v60 = v8;
      v61 = [v59 functionWithName_];
      *(v57 + 5) = v26;
      *(v57 + 6) = v61;
      v57[2] = Width;
      v57[3] = v20;
      *(v57 + 4) = v60;
      *(*&v6[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v7;

      sub_189230C30();
    }

    else
    {
      v6 = *(v5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_18A64BFB0;
      v39 = [v1 view];
      [v39 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v107.origin.x = v41;
      v107.origin.y = v43;
      v107.size.width = v45;
      v107.size.height = v47;
      v48 = CGRectGetWidth(v107);
      v49 = v1;
      v50 = sub_1890005B8();

      v51 = v49;
      v52 = [v51 parameters];
      v53 = [v52 _textLineRects];

      if (v53)
      {
        sub_188A921E4();
        v54 = sub_18A4A7548();

        if (v54 >> 62)
        {
          v55 = sub_18A4A7F68();
        }

        else
        {
          v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v55 == 1)
        {
          v56 = 1;
        }

        else
        {
          v56 = 2;
        }
      }

      else
      {

        v56 = 2;
      }

      v62 = [objc_opt_self() labelColor];
      *(v38 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      *(v38 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      v63 = swift_allocObject();
      *(v38 + 32) = v63;
      v64 = [objc_opt_self() functionWithName_];
      *(v63 + 5) = v56;
      *(v63 + 6) = v64;
      v63[2] = v48;
      v63[3] = v50;
      *(v63 + 4) = v62;
      *(*&v6[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v38;

      sub_189230C30();
    }

    v65 = *(v0 + 696);
    v66 = *(*(v0 + 640) + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut);
    v67 = v1;
    [v65 insertSubview:v6 belowSubview:v66];
    v68 = v67;
    sub_188F18320(v6, v68);

    [v6 frame];
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    [v66 frame];
    v110.origin.x = v77;
    v110.origin.y = v78;
    v110.size.width = v79;
    v110.size.height = v80;
    v108.origin.x = v70;
    v108.origin.y = v72;
    v108.size.width = v74;
    v108.size.height = v76;
    v109 = CGRectUnion(v108, v110);
    [v66 setFrame_];
    LOBYTE(v66) = sub_188F17C94(v68);

    v81 = *(v0 + 640);
    if (v66)
    {
      v82 = v68;

      v83 = [v82 view];
      type metadata accessor for TextLineWaveAnimator();
      swift_allocObject();
      v104 = sub_1891EC6CC(v82, v83);

      v84 = (v81 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
      swift_beginAccess();
      v86 = *v84;
      v85 = v84[1];
      v87 = swift_allocObject();
      v87[2] = v104;
      v87[3] = v86;
      v87[4] = v85;
      v88 = &v6[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v89 = *v88;
      *v88 = sub_188F20CF0;
      v88[1] = v87;
      sub_188A52E38(v86);

      sub_188A55B8C(v89);
      *(v81 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_toLineAnimator) = v104;
    }

    else
    {

      v90 = (v81 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
      swift_beginAccess();
      v92 = *v90;
      v91 = v90[1];
      v93 = &v6[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v94 = *v93;
      *v93 = v92;
      v93[1] = v91;
      sub_188A52E38(v92);
      sub_188A55B8C(v94);
    }

    v95 = *(v0 + 696);
    v96 = *(v0 + 640);
    v97 = swift_allocObject();
    swift_weakInit();
    v98 = (v96 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
    swift_beginAccess();
    v100 = *v98;
    v99 = v98[1];
    v101 = swift_allocObject();
    v101[2] = v97;
    v101[3] = v100;
    v101[4] = v99;
    sub_188A52E38(v100);
    sub_189230A38(0, sub_188F20CB4, v101);

    v102 = *(v0 + 8);

    return v102();
  }

  else
  {
    v27 = *(v0 + 704);
    v28 = *(v0 + 640);
    v29 = *(v0 + 712) + *(v0 + 712);
    v30 = v28[7];
    v31 = v28[8];
    __swift_project_boxed_opaque_existential_0(v28 + 4, v30);
    v32 = v28[3];
    *(v0 + 744) = v32;
    *(v0 + 616) = v27;
    *(v0 + 624) = v29;
    v33 = *(v31 + 16);
    v34 = v32;
    v103 = (v33 + *v33);
    v35 = swift_task_alloc();
    *(v0 + 752) = v35;
    *v35 = v0;
    v35[1] = sub_188F1A9D0;
    v36 = *(v0 + 640);

    return v103(v34, v36, v0 + 616, v30, v31);
  }
}

uint64_t sub_188F1A9D0()
{
  v1 = *v0;
  v2 = *(*v0 + 744);

  v3 = *(v1 + 688);
  v4 = *(v1 + 680);

  return MEMORY[0x1EEE6DFA0](sub_188F1AB10, v4, v3);
}

uint64_t sub_188F1AB10()
{
  v0[95] = OBJC_IVAR____TtC5UIKit16UITextEffectView_source;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[96] = Strong;
  if (Strong)
  {
    v0[97] = swift_getObjectType();
    v2 = swift_task_alloc();
    v0[98] = v2;
    *v2 = v0;
    v2[1] = sub_188F1AD4C;

    return sub_1890007EC();
  }

  else
  {
    v4 = v0[87];
    v5 = v0[81];
    v6 = v0[80];

    v7 = v6[7];
    v8 = v6[8];
    __swift_project_boxed_opaque_existential_0(v6 + 4, v7);
    (*(v8 + 24))(v6, v7, v8);
    v9 = sub_18A4A76C8();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);

    v10 = sub_18A4A7698();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v6;
    sub_188F18724(0, 0, v5, &unk_18A651A48, v11);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_188F1AD4C(char a1)
{
  v2 = *v1;
  *(*v1 + 848) = a1;

  v3 = *(v2 + 688);
  v4 = *(v2 + 680);

  return MEMORY[0x1EEE6DFA0](sub_188F1AE74, v4, v3);
}

uint64_t sub_188F1AE74()
{
  if (*(v0 + 848) == 1)
  {
    v1 = *(*(v0 + 640) + 24);
    *(v0 + 792) = v1;
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 800) = v3;
    *v3 = v0;
    v3[1] = sub_188F1B09C;

    return sub_189000AD8(v2);
  }

  else
  {
    swift_unknownObjectRelease();
    v5 = *(v0 + 696);
    v6 = *(v0 + 648);
    v7 = *(v0 + 640);

    v8 = v7[7];
    v9 = v7[8];
    __swift_project_boxed_opaque_existential_0(v7 + 4, v8);
    (*(v9 + 24))(v7, v8, v9);
    v10 = sub_18A4A76C8();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);

    v11 = sub_18A4A7698();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v7;
    sub_188F18724(0, 0, v6, &unk_18A651A48, v12);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_188F1B09C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  *(*v1 + 849) = a1;

  v4 = *(v2 + 688);
  v5 = *(v2 + 680);

  return MEMORY[0x1EEE6DFA0](sub_188F1B1E4, v5, v4);
}

uint64_t sub_188F1B1E4()
{
  if (*(v0 + 849) != 1)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v1 = *(v0 + 696);
  v2 = *(v0 + 656);
  v3 = *(v0 + 640);
  v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_id;
  swift_beginAccess();
  sub_188ECA980(v3 + v4, v2);
  v5 = OBJC_IVAR____TtC5UIKit16UITextEffectView_textEffects;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
LABEL_9:
    swift_unknownObjectRelease();
    sub_188ECAA48(*(v0 + 656));
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0;
    sub_188A3F5FC(v0 + 272, &qword_1EA936EA0);
    goto LABEL_10;
  }

  v7 = *(v0 + 656);

  v8 = sub_188E8B92C(v7);
  if ((v9 & 1) == 0)
  {

    goto LABEL_9;
  }

  v10 = *(v0 + 656);
  sub_188A53994(*(v6 + 56) + 40 * v8, v0 + 272);
  sub_188ECAA48(v10);

  sub_188A3F5FC(v0 + 272, &qword_1EA936EA0);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 808) = Strong;
  if (Strong)
  {
    v12 = Strong;
    v13 = v0 + 16;
    v14 = *(*(v0 + 640) + 24);
    *(v0 + 816) = v14;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 632;
    *(v0 + 24) = sub_188F1BE08;
    v15 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EA8);
    *(v0 + 144) = MEMORY[0x1E69E9820];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_188F1D34C;
    *(v0 + 168) = &block_descriptor_81_0;
    *(v0 + 176) = v15;
    [v12 targetedPreviewFor:v14 completionHandler:v0 + 144];
LABEL_16:

    return MEMORY[0x1EEE6DEC8](v13);
  }

  *(v0 + 824) = 0;
  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 832) = v27;
  if (v27)
  {
    v28 = v27;
    v13 = v0 + 80;
    v29 = *(*(v0 + 640) + 24);
    *(v0 + 840) = v29;
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_188F1C94C;
    v30 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_188F194AC;
    *(v0 + 232) = &block_descriptor_84_0;
    *(v0 + 240) = v30;
    [v28 prepareForAnimationFor:v29 completionHandler:v0 + 208];
    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  v31 = *(v0 + 824);
  if (v31)
  {
    v32 = *(v0 + 640);
    v33 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
    swift_beginAccess();
    v34 = *(v32 + v33);
    v35 = *(v0 + 640);
    if (v34)
    {
      v36 = *(v35 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_18A64BFB0;
      v38 = v34;
      v39 = [v31 view];
      [v39 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v123.origin.x = v41;
      v123.origin.y = v43;
      v123.size.width = v45;
      v123.size.height = v47;
      Width = CGRectGetWidth(v123);
      v49 = v31;
      v50 = sub_1890005B8();

      v51 = v49;
      v52 = [v51 parameters];
      v53 = [v52 _textLineRects];

      if (v53)
      {
        sub_188A921E4();
        v54 = sub_18A4A7548();

        if (v54 >> 62)
        {
          v55 = sub_18A4A7F68();
        }

        else
        {
          v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v55 == 1)
        {
          v56 = 1;
        }

        else
        {
          v56 = 2;
        }
      }

      else
      {

        v56 = 2;
      }

      *(v37 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      *(v37 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      v76 = swift_allocObject();
      *(v37 + 32) = v76;
      v77 = *MEMORY[0x1E6979ED0];
      v78 = objc_opt_self();
      v79 = v38;
      v80 = [v78 functionWithName_];
      *(v76 + 5) = v56;
      *(v76 + 6) = v80;
      v76[2] = Width;
      v76[3] = v50;
      *(v76 + 4) = v79;
      *(*&v36[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v37;

      sub_189230C30();
    }

    else
    {
      v36 = *(v35 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_18A64BFB0;
      v58 = [v31 view];
      [v58 bounds];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;

      v124.origin.x = v60;
      v124.origin.y = v62;
      v124.size.width = v64;
      v124.size.height = v66;
      v67 = CGRectGetWidth(v124);
      v68 = v31;
      v69 = sub_1890005B8();

      v70 = v68;
      v71 = [v70 parameters];
      v72 = [v71 _textLineRects];

      if (v72)
      {
        sub_188A921E4();
        v73 = sub_18A4A7548();

        if (v73 >> 62)
        {
          v74 = sub_18A4A7F68();
        }

        else
        {
          v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v74 == 1)
        {
          v75 = 1;
        }

        else
        {
          v75 = 2;
        }
      }

      else
      {

        v75 = 2;
      }

      v81 = [objc_opt_self() labelColor];
      *(v57 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      *(v57 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      v82 = swift_allocObject();
      *(v57 + 32) = v82;
      v83 = [objc_opt_self() functionWithName_];
      *(v82 + 5) = v75;
      *(v82 + 6) = v83;
      v82[2] = v67;
      v82[3] = v69;
      *(v82 + 4) = v81;
      *(*&v36[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v57;

      sub_189230C30();
    }

    v84 = *(v0 + 696);
    v85 = *(*(v0 + 640) + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut);
    v86 = v31;
    [v84 insertSubview:v36 belowSubview:v85];
    v87 = v86;
    sub_188F18320(v36, v87);

    [v36 frame];
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    [v85 frame];
    v127.origin.x = v96;
    v127.origin.y = v97;
    v127.size.width = v98;
    v127.size.height = v99;
    v125.origin.x = v89;
    v125.origin.y = v91;
    v125.size.width = v93;
    v125.size.height = v95;
    v126 = CGRectUnion(v125, v127);
    [v85 setFrame_];
    LOBYTE(v85) = sub_188F17C94(v87);

    v100 = *(v0 + 640);
    if (v85)
    {
      v101 = v87;

      v102 = [v101 view];
      type metadata accessor for TextLineWaveAnimator();
      swift_allocObject();
      v121 = sub_1891EC6CC(v101, v102);

      v103 = (v100 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
      swift_beginAccess();
      v105 = *v103;
      v104 = v103[1];
      v106 = swift_allocObject();
      v106[2] = v121;
      v106[3] = v105;
      v106[4] = v104;
      v107 = &v36[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v108 = *v107;
      *v107 = sub_188F20CF0;
      v107[1] = v106;
      sub_188A52E38(v105);

      sub_188A55B8C(v108);
      *(v100 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_toLineAnimator) = v121;
    }

    else
    {

      v109 = (v100 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
      swift_beginAccess();
      v111 = *v109;
      v110 = v109[1];
      v112 = &v36[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v113 = *v112;
      *v112 = v111;
      v112[1] = v110;
      sub_188A52E38(v111);
      sub_188A55B8C(v113);
    }

    v114 = *(v0 + 696);
    v115 = *(v0 + 640);
    v116 = swift_allocObject();
    swift_weakInit();
    v117 = (v115 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
    swift_beginAccess();
    v119 = *v117;
    v118 = v117[1];
    v120 = swift_allocObject();
    v120[2] = v116;
    v120[3] = v119;
    v120[4] = v118;
    sub_188A52E38(v119);
    sub_189230A38(0, sub_188F20CB4, v120);

    goto LABEL_11;
  }

LABEL_10:
  v16 = *(v0 + 696);
  v17 = *(v0 + 648);
  v18 = *(v0 + 640);

  v19 = v18[7];
  v20 = v18[8];
  __swift_project_boxed_opaque_existential_0(v18 + 4, v19);
  (*(v20 + 24))(v18, v19, v20);
  v21 = sub_18A4A76C8();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);

  v22 = sub_18A4A7698();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v18;
  sub_188F18724(0, 0, v17, &unk_18A651A48, v23);

LABEL_11:

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_188F1BE08()
{
  v1 = *(*v0 + 688);
  v2 = *(*v0 + 680);

  return MEMORY[0x1EEE6DFA0](sub_188F1BF10, v2, v1);
}

uint64_t sub_188F1BF10()
{
  v1 = v0[102];
  v2 = v0[79];
  swift_unknownObjectRelease();

  v0[103] = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[104] = Strong;
  if (Strong)
  {
    v4 = Strong;
    v5 = *(v0[80] + 24);
    v0[105] = v5;
    v0[10] = v0;
    v0[11] = sub_188F1C94C;
    v6 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_188F194AC;
    v0[29] = &block_descriptor_84_0;
    v0[30] = v6;
    [v4 prepareForAnimationFor:v5 completionHandler:v0 + 26];

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = v0[103];
    if (v7)
    {
      v8 = v0[80];
      v9 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
      swift_beginAccess();
      v10 = *(v8 + v9);
      v11 = v0[80];
      if (v10)
      {
        v12 = *(v11 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_18A64BFB0;
        v14 = v10;
        v15 = [v7 view];
        [v15 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v110.origin.x = v17;
        v110.origin.y = v19;
        v110.size.width = v21;
        v110.size.height = v23;
        Width = CGRectGetWidth(v110);
        v25 = v7;
        v26 = sub_1890005B8();

        v27 = v25;
        v28 = [v27 parameters];
        v29 = [v28 _textLineRects];

        if (v29)
        {
          sub_188A921E4();
          v30 = sub_18A4A7548();

          if (v30 >> 62)
          {
            v31 = sub_18A4A7F68();
          }

          else
          {
            v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v31 == 1)
          {
            v32 = 1;
          }

          else
          {
            v32 = 2;
          }
        }

        else
        {

          v32 = 2;
        }

        *(v13 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
        *(v13 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
        v61 = swift_allocObject();
        *(v13 + 32) = v61;
        v62 = *MEMORY[0x1E6979ED0];
        v63 = objc_opt_self();
        v64 = v14;
        v65 = [v63 functionWithName_];
        *(v61 + 5) = v32;
        *(v61 + 6) = v65;
        v61[2] = Width;
        v61[3] = v26;
        *(v61 + 4) = v64;
        *(*&v12[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v13;

        sub_189230C30();
      }

      else
      {
        v12 = *(v11 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_18A64BFB0;
        v43 = [v7 view];
        [v43 bounds];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;

        v111.origin.x = v45;
        v111.origin.y = v47;
        v111.size.width = v49;
        v111.size.height = v51;
        v52 = CGRectGetWidth(v111);
        v53 = v7;
        v54 = sub_1890005B8();

        v55 = v53;
        v56 = [v55 parameters];
        v57 = [v56 _textLineRects];

        if (v57)
        {
          sub_188A921E4();
          v58 = sub_18A4A7548();

          if (v58 >> 62)
          {
            v59 = sub_18A4A7F68();
          }

          else
          {
            v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v59 == 1)
          {
            v60 = 1;
          }

          else
          {
            v60 = 2;
          }
        }

        else
        {

          v60 = 2;
        }

        v66 = [objc_opt_self() labelColor];
        *(v42 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
        *(v42 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
        v67 = swift_allocObject();
        *(v42 + 32) = v67;
        v68 = [objc_opt_self() functionWithName_];
        *(v67 + 5) = v60;
        *(v67 + 6) = v68;
        v67[2] = v52;
        v67[3] = v54;
        *(v67 + 4) = v66;
        *(*&v12[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v42;

        sub_189230C30();
      }

      v69 = v0[87];
      v70 = *(v0[80] + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut);
      v71 = v7;
      [v69 insertSubview:v12 belowSubview:v70];
      v72 = v71;
      sub_188F18320(v12, v72);

      [v12 frame];
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;
      [v70 frame];
      v114.origin.x = v81;
      v114.origin.y = v82;
      v114.size.width = v83;
      v114.size.height = v84;
      v112.origin.x = v74;
      v112.origin.y = v76;
      v112.size.width = v78;
      v112.size.height = v80;
      v113 = CGRectUnion(v112, v114);
      [v70 setFrame_];
      LOBYTE(v70) = sub_188F17C94(v72);

      v85 = v0[80];
      if (v70)
      {
        v86 = v72;

        v87 = [v86 view];
        type metadata accessor for TextLineWaveAnimator();
        swift_allocObject();
        v108 = sub_1891EC6CC(v86, v87);

        v88 = (v85 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
        swift_beginAccess();
        v90 = *v88;
        v89 = v88[1];
        v91 = swift_allocObject();
        v91[2] = v108;
        v91[3] = v90;
        v91[4] = v89;
        v92 = &v12[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
        swift_beginAccess();
        v93 = *v92;
        *v92 = sub_188F20CF0;
        v92[1] = v91;
        sub_188A52E38(v90);

        sub_188A55B8C(v93);
        *(v85 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_toLineAnimator) = v108;
      }

      else
      {

        v94 = (v85 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
        swift_beginAccess();
        v96 = *v94;
        v95 = v94[1];
        v97 = &v12[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
        swift_beginAccess();
        v98 = *v97;
        *v97 = v96;
        v97[1] = v95;
        sub_188A52E38(v96);
        sub_188A55B8C(v98);
      }

      v99 = v0[87];
      v100 = v0[80];
      v101 = swift_allocObject();
      swift_weakInit();
      v102 = (v100 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
      swift_beginAccess();
      v104 = *v102;
      v103 = v102[1];
      v105 = swift_allocObject();
      v105[2] = v101;
      v105[3] = v104;
      v105[4] = v103;
      sub_188A52E38(v104);
      sub_189230A38(0, sub_188F20CB4, v105);
    }

    else
    {
      v33 = v0[87];
      v34 = v0[81];
      v35 = v0[80];

      v36 = v35[7];
      v37 = v35[8];
      __swift_project_boxed_opaque_existential_0(v35 + 4, v36);
      (*(v37 + 24))(v35, v36, v37);
      v38 = sub_18A4A76C8();
      (*(*(v38 - 8) + 56))(v34, 1, 1, v38);

      v39 = sub_18A4A7698();
      v40 = swift_allocObject();
      v41 = MEMORY[0x1E69E85E0];
      v40[2] = v39;
      v40[3] = v41;
      v40[4] = v35;
      sub_188F18724(0, 0, v34, &unk_18A651A48, v40);
    }

    v106 = v0[1];

    return v106();
  }
}

uint64_t sub_188F1C94C()
{
  v1 = *(*v0 + 688);
  v2 = *(*v0 + 680);

  return MEMORY[0x1EEE6DFA0](sub_188F1CA54, v2, v1);
}

uint64_t sub_188F1CA54()
{
  v1 = v0[105];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v2 = v0[103];
  if (v2)
  {
    v3 = v0[80];
    v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
    swift_beginAccess();
    v5 = *(v3 + v4);
    v6 = v0[80];
    if (v5)
    {
      v7 = *(v6 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_18A64BFB0;
      v9 = v5;
      v10 = [v2 view];
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v105.origin.x = v12;
      v105.origin.y = v14;
      v105.size.width = v16;
      v105.size.height = v18;
      Width = CGRectGetWidth(v105);
      v20 = v2;
      v21 = sub_1890005B8();

      v22 = v20;
      v23 = [v22 parameters];
      v24 = [v23 _textLineRects];

      if (v24)
      {
        sub_188A921E4();
        v25 = sub_18A4A7548();

        if (v25 >> 62)
        {
          v26 = sub_18A4A7F68();
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v26 == 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }
      }

      else
      {

        v27 = 2;
      }

      *(v8 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      *(v8 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      v56 = swift_allocObject();
      *(v8 + 32) = v56;
      v57 = *MEMORY[0x1E6979ED0];
      v58 = objc_opt_self();
      v59 = v9;
      v60 = [v58 functionWithName_];
      *(v56 + 5) = v27;
      *(v56 + 6) = v60;
      v56[2] = Width;
      v56[3] = v21;
      *(v56 + 4) = v59;
      *(*&v7[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v8;

      sub_189230C30();
    }

    else
    {
      v7 = *(v6 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_18A64BFB0;
      v38 = [v2 view];
      [v38 bounds];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v106.origin.x = v40;
      v106.origin.y = v42;
      v106.size.width = v44;
      v106.size.height = v46;
      v47 = CGRectGetWidth(v106);
      v48 = v2;
      v49 = sub_1890005B8();

      v50 = v48;
      v51 = [v50 parameters];
      v52 = [v51 _textLineRects];

      if (v52)
      {
        sub_188A921E4();
        v53 = sub_18A4A7548();

        if (v53 >> 62)
        {
          v54 = sub_18A4A7F68();
        }

        else
        {
          v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v54 == 1)
        {
          v55 = 1;
        }

        else
        {
          v55 = 2;
        }
      }

      else
      {

        v55 = 2;
      }

      v61 = [objc_opt_self() labelColor];
      *(v37 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      *(v37 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      v62 = swift_allocObject();
      *(v37 + 32) = v62;
      v63 = [objc_opt_self() functionWithName_];
      *(v62 + 5) = v55;
      *(v62 + 6) = v63;
      v62[2] = v47;
      v62[3] = v49;
      *(v62 + 4) = v61;
      *(*&v7[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v37;

      sub_189230C30();
    }

    v64 = v0[87];
    v65 = *(v0[80] + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut);
    v66 = v2;
    [v64 insertSubview:v7 belowSubview:v65];
    v67 = v66;
    sub_188F18320(v7, v67);

    [v7 frame];
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    [v65 frame];
    v109.origin.x = v76;
    v109.origin.y = v77;
    v109.size.width = v78;
    v109.size.height = v79;
    v107.origin.x = v69;
    v107.origin.y = v71;
    v107.size.width = v73;
    v107.size.height = v75;
    v108 = CGRectUnion(v107, v109);
    [v65 setFrame_];
    LOBYTE(v65) = sub_188F17C94(v67);

    v80 = v0[80];
    if (v65)
    {
      v81 = v67;

      v82 = [v81 view];
      type metadata accessor for TextLineWaveAnimator();
      swift_allocObject();
      v103 = sub_1891EC6CC(v81, v82);

      v83 = (v80 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
      swift_beginAccess();
      v85 = *v83;
      v84 = v83[1];
      v86 = swift_allocObject();
      v86[2] = v103;
      v86[3] = v85;
      v86[4] = v84;
      v87 = &v7[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v88 = *v87;
      *v87 = sub_188F20CF0;
      v87[1] = v86;
      sub_188A52E38(v85);

      sub_188A55B8C(v88);
      *(v80 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_toLineAnimator) = v103;
    }

    else
    {

      v89 = (v80 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
      swift_beginAccess();
      v91 = *v89;
      v90 = v89[1];
      v92 = &v7[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v93 = *v92;
      *v92 = v91;
      v92[1] = v90;
      sub_188A52E38(v91);
      sub_188A55B8C(v93);
    }

    v94 = v0[87];
    v95 = v0[80];
    v96 = swift_allocObject();
    swift_weakInit();
    v97 = (v95 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
    swift_beginAccess();
    v99 = *v97;
    v98 = v97[1];
    v100 = swift_allocObject();
    v100[2] = v96;
    v100[3] = v99;
    v100[4] = v98;
    sub_188A52E38(v99);
    sub_189230A38(0, sub_188F20CB4, v100);
  }

  else
  {
    v28 = v0[87];
    v29 = v0[81];
    v30 = v0[80];

    v31 = v30[7];
    v32 = v30[8];
    __swift_project_boxed_opaque_existential_0(v30 + 4, v31);
    (*(v32 + 24))(v30, v31, v32);
    v33 = sub_18A4A76C8();
    (*(*(v33 - 8) + 56))(v29, 1, 1, v33);

    v34 = sub_18A4A7698();
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E85E0];
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v30;
    sub_188F18724(0, 0, v29, &unk_18A651A48, v35);
  }

  v101 = v0[1];

  return v101();
}

uint64_t sub_188F1D34C(uint64_t a1, void *a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

void sub_188F1D3B0(uint64_t a1, void (*a2)(float), float a3)
{
  v6 = a3;
  *(a1 + 32) = a3;
  sub_1891EBD30();
  Height = CGRectGetHeight(v8);
  sub_1891EB8C0((Height + *(a1 + 48) + *(a1 + 48)) * v6 - *(a1 + 48));
  if (a2)
  {
    a2(a3);
  }
}

uint64_t sub_188F1D428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = sub_18A4A76C8();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    sub_18A4A76A8();

    sub_188A52E38(a2);
    v14 = sub_18A4A7698();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v12;
    v15[5] = a2;
    v15[6] = a3;
    sub_188F18724(0, 0, v10, a5, v15);
  }

  return result;
}

uint64_t sub_188F1D598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[50] = a5;
  v6[51] = a6;
  v6[49] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  v6[52] = swift_task_alloc();
  v6[53] = sub_18A4A76A8();
  v6[54] = sub_18A4A7698();
  v8 = sub_18A4A7678();
  v6[55] = v8;
  v6[56] = v7;

  return MEMORY[0x1EEE6DFA0](sub_188F1D670, v8, v7);
}

uint64_t sub_188F1D670()
{
  v1 = v0[49];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[57] = v2;
  if (!v2)
  {

    v11 = v0[50];
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_5:
    v11(v10);
    goto LABEL_6;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[58] = Strong;
  if (Strong)
  {
    v4 = Strong;
    v5 = v0[49];
    swift_beginAccess();
    v6 = *(v5 + 24);
    v0[59] = v6;
    v0[2] = v0;
    v0[3] = sub_188F1DA88;
    v7 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_188F194AC;
    v0[21] = &block_descriptor_96_0;
    v0[22] = v7;
    v8 = v2;
    [v4 updateTextChunkVisibilityForAnimation:v6 visible:1 completionHandler:v0 + 18];
    v9 = v0 + 2;
LABEL_11:

    return MEMORY[0x1EEE6DEC8](v9);
  }

  v22 = v2;
  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  v0[60] = v23;
  if (v23)
  {
    v24 = v23;
    v25 = v0[49];
    swift_beginAccess();
    v26 = *(v25 + 24);
    v0[61] = v26;
    v0[10] = v0;
    v0[11] = sub_188F1DE54;
    v27 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_188F194AC;
    v0[29] = &block_descriptor_99_2;
    v0[30] = v27;
    [v24 finishAnimationFor:v26 completionHandler:v0 + 26];
    v9 = v0 + 10;
    goto LABEL_11;
  }

  v28 = v0[57];

  v11 = v0[50];
  if (v11)
  {
    goto LABEL_5;
  }

LABEL_6:
  v12 = v0[52];
  v13 = v0[49];
  v14 = v13[7];
  v15 = v13[8];
  __swift_project_boxed_opaque_existential_0(v13 + 4, v14);
  (*(v15 + 24))(v13, v14, v15);
  v16 = sub_18A4A76C8();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);

  v17 = sub_18A4A7698();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v13;
  sub_188F18724(0, 0, v12, &unk_18A651A78, v18);

  v20 = v0[1];

  return v20();
}

uint64_t sub_188F1DA88()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);

  return MEMORY[0x1EEE6DFA0](sub_188F1DB90, v2, v1);
}

uint64_t sub_188F1DB90()
{
  v1 = v0[59];
  swift_unknownObjectRelease();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[60] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[49];
    swift_beginAccess();
    v5 = *(v4 + 24);
    v0[61] = v5;
    v0[10] = v0;
    v0[11] = sub_188F1DE54;
    v6 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_188F194AC;
    v0[29] = &block_descriptor_99_2;
    v0[30] = v6;
    [v3 finishAnimationFor:v5 completionHandler:v0 + 26];

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }

  else
  {
    v7 = v0[57];

    v8 = v0[50];
    if (v8)
    {
      v8();
    }

    v9 = v0[52];
    v10 = v0[49];
    v11 = v10[7];
    v12 = v10[8];
    __swift_project_boxed_opaque_existential_0(v10 + 4, v11);
    (*(v12 + 24))(v10, v11, v12);
    v13 = sub_18A4A76C8();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);

    v14 = sub_18A4A7698();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v10;
    sub_188F18724(0, 0, v9, &unk_18A651A78, v15);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_188F1DE54()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);

  return MEMORY[0x1EEE6DFA0](sub_188F1DF5C, v2, v1);
}

uint64_t sub_188F1DF5C()
{
  v1 = v0[61];
  v2 = v0[57];

  swift_unknownObjectRelease();

  v3 = v0[50];
  if (v3)
  {
    v3();
  }

  v4 = v0[52];
  v5 = v0[49];
  v6 = v5[7];
  v7 = v5[8];
  __swift_project_boxed_opaque_existential_0(v5 + 4, v6);
  (*(v7 + 24))(v5, v6, v7);
  v8 = sub_18A4A76C8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);

  v9 = sub_18A4A7698();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v5;
  sub_188F18724(0, 0, v4, &unk_18A651A78, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_188F1E0E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_18A4A76C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_18A4A76A8();
  v4 = sub_18A4A7698();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_188F18724(0, 0, v2, &unk_18A6518C8, v5);
}

uint64_t sub_188F1E1EC()
{
  sub_18A4A76A8();
  *(v0 + 16) = sub_18A4A7698();
  v2 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F1E280, v2, v1);
}

uint64_t sub_188F1E280()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_188F1E2E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_18A4A76C8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_18A4A76A8();

  v6 = sub_18A4A7698();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_188F18724(0, 0, v4, &unk_18A65EF60, v7);
}

uint64_t sub_188F1E404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[41] = a4;
  sub_18A4A76A8();
  v4[42] = sub_18A4A7698();
  v6 = sub_18A4A7678();
  v4[43] = v6;
  v4[44] = v5;

  return MEMORY[0x1EEE6DFA0](sub_188F1E49C, v6, v5);
}

uint64_t sub_188F1E49C()
{
  v1 = v0[41];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[45] = v2;
  if (v2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[46] = Strong;
    if (Strong)
    {
      v4 = Strong;
      v5 = v0 + 2;
      v6 = v0[41];
      swift_beginAccess();
      v7 = *(v6 + 24);
      v0[47] = v7;
      v0[2] = v0;
      v0[3] = sub_188F1E7E4;
      v8 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
      v0[18] = MEMORY[0x1E69E9820];
      v0[19] = 1107296256;
      v0[20] = sub_188F194AC;
      v0[21] = &block_descriptor_171;
      v0[22] = v8;
      v9 = v2;
      [v4 updateTextChunkVisibilityForAnimation:v7 visible:1 completionHandler:v0 + 18];
LABEL_10:

      return MEMORY[0x1EEE6DEC8](v5);
    }

    v13 = v2;
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    v0[48] = v14;
    if (v14)
    {
      v15 = v14;
      v5 = v0 + 10;
      v16 = v0[41];
      swift_beginAccess();
      v17 = *(v16 + 24);
      v0[49] = v17;
      v0[10] = v0;
      v0[11] = sub_188F1EAF0;
      v18 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
      v0[18] = MEMORY[0x1E69E9820];
      v0[19] = 1107296256;
      v0[20] = sub_188F194AC;
      v0[21] = &block_descriptor_174_0;
      v0[22] = v18;
      [v15 finishAnimationFor:v17 completionHandler:v0 + 18];
      goto LABEL_10;
    }

    v19 = v0[45];
  }

  else
  {
  }

  v10 = v0[41];
  *(v10 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) = 0;
  [*(v10 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut) removeFromSuperview];
  [*(v10 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn) removeFromSuperview];
  v11 = v0[1];

  return v11();
}

uint64_t sub_188F1E7E4()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);

  return MEMORY[0x1EEE6DFA0](sub_188F1E8EC, v2, v1);
}

uint64_t sub_188F1E8EC()
{
  v1 = v0[47];
  swift_unknownObjectRelease();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[48] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[41];
    swift_beginAccess();
    v5 = *(v4 + 24);
    v0[49] = v5;
    v0[10] = v0;
    v0[11] = sub_188F1EAF0;
    v6 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_188F194AC;
    v0[21] = &block_descriptor_174_0;
    v0[22] = v6;
    [v3 finishAnimationFor:v5 completionHandler:v0 + 18];

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }

  else
  {
    v7 = v0[45];

    v8 = v0[41];
    *(v8 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) = 0;
    [*(v8 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut) removeFromSuperview];
    [*(v8 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn) removeFromSuperview];
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_188F1EAF0()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);

  return MEMORY[0x1EEE6DFA0](sub_188F1EBF8, v2, v1);
}

uint64_t sub_188F1EBF8()
{
  v1 = v0[49];
  v2 = v0[45];

  swift_unknownObjectRelease();

  v3 = v0[41];
  *(v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) = 0;
  [*(v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut) removeFromSuperview];
  [*(v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn) removeFromSuperview];
  v4 = v0[1];

  return v4();
}

uint64_t sub_188F1ECB4(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_188EC93B4;

  return UITextEffectView.ReplacementTextEffect.Delegate.performReplacementAndGeneratePreview(for:effect:animation:)(a1, a2, a3, a4, a5);
}

uint64_t UITextEffectView.ReplacementTextEffect.Delegate.performReplacementAndGeneratePreview(for:effect:animation:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = *a3;
  v12 = (*(a5 + 32) + **(a5 + 32));
  v10 = swift_task_alloc();
  *(v5 + 32) = v10;
  *v10 = v5;
  v10[1] = sub_188F1EEC0;

  return v12(a1, a2, v5 + 16, a4, a5);
}

uint64_t sub_188F1EEC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1(0);
}

uint64_t UITextEffectView.ReplacementTextEffect.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  sub_188ECAA48(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_id);
  sub_188A55B8C(*(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation));
  sub_188A55B8C(*(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion));
  sub_188A55B8C(*(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation));
  sub_188A55B8C(*(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion));

  v1 = *(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementOutLightConfiguration);
  v2 = *(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementOutLightConfiguration + 8);

  v3 = *(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementInLightConfiguration);
  v4 = *(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementInLightConfiguration + 8);

  return v0;
}

uint64_t UITextEffectView.ReplacementTextEffect.__deallocating_deinit()
{
  UITextEffectView.ReplacementTextEffect.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_188F1F150@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_id;
  swift_beginAccess();
  return sub_188ECA980(v3 + v4, a1);
}

id sub_188F1F1AC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);

  return v2;
}

void *sub_188F1F1FC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

uint64_t sub_188F1F268()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_18A4A76C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_18A4A76A8();
  v4 = sub_18A4A7698();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_188F18724(0, 0, v2, &unk_18A651AB0, v5);
}

uint64_t sub_188F1F374()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = *v0;
  v5 = sub_18A4A76C8();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_18A4A76A8();

  v6 = sub_18A4A7698();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  sub_188F18724(0, 0, v3, &unk_18A651AA8, v7);
}

uint64_t sub_188F1F498()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = *v0;
  v5 = sub_18A4A76C8();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_18A4A76A8();

  v6 = sub_18A4A7698();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  sub_188F18724(0, 0, v3, &unk_18A651AA0, v7);
}

uint64_t sub_188F1F5BC(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_188F21174;

  return UITextEffectView.ReplacementTextEffect.Delegate.performReplacementAndGeneratePreview(for:effect:animation:)(a1, a2, a3, a4, a5);
}

uint64_t sub_188F1F680(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_188F1F774;

  return v5(v2 + 32);
}

uint64_t sub_188F1F774()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_188F1F888(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45[3] = a6;
  v45[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a3, a6);
  *(a5 + 16) = 0;
  sub_18A4A29C8();
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_lineAnimationEnabled) = 1;
  v14 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion);
  *v17 = 0;
  v17[1] = 0;
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor) = 0;
  v18 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut;
  v19 = type metadata accessor for UIRBDirectionalLightEffectView();
  *(a5 + v18) = [objc_allocWithZone(v19) initWithFrame_];
  v20 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn;
  *(a5 + v20) = [objc_allocWithZone(v19) initWithFrame_];
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_fromLineAnimator) = 0;
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_toLineAnimator) = 0;
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) = 1;
  swift_beginAccess();
  v21 = *(a5 + 16);
  *(a5 + 16) = a2;
  v22 = a2;

  *(a5 + 24) = a1;
  sub_188A53994(v45, a5 + 32);
  v23 = objc_opt_self();
  v24 = a1;
  v25 = a4;
  v26 = [v23 clearColor];
  if (qword_1EA92F268 != -1)
  {
    v42 = v26;
    swift_once();
    v26 = v42;
  }

  v27 = qword_1EA92F270;
  v28 = a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementOutLightConfiguration;
  *v28 = v25;
  *(v28 + 8) = v26;
  __asm { FMOV            V0.2D, #3.0 }

  *(v28 + 16) = _Q0;
  *(v28 + 32) = _Q0;
  *(v28 + 48) = v27;
  v34 = qword_1EA92F290;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_1EA92F298;
  v36 = qword_1EA92F2A0;
  v37 = qword_1EA92F2C8;
  v38 = qword_1EA92F2A0;

  v39 = v35;
  v43 = unk_1EA92F2B8;
  v44 = xmmword_1EA92F2A8;
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  v40 = a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementInLightConfiguration;
  *v40 = v39;
  *(v40 + 8) = v36;
  *(v40 + 16) = v44;
  *(v40 + 32) = v43;
  *(v40 + 48) = v37;
  return a5;
}

uint64_t sub_188F1FB70(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UITextEffectView.ReplacementTextEffect();
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a3, a6);
  return sub_188F1F888(a1, a2, v15, a4, v16, a6, a7);
}

uint64_t sub_188F1FC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UITextEffectView.EffectID();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F1FCEC(void *a1, void *a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  sub_18A4A29C8();
  *(v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_lineAnimationEnabled) = 1;
  v7 = (v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion);
  *v10 = 0;
  v10[1] = 0;
  *(v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor) = 0;
  v11 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut;
  v12 = type metadata accessor for UIRBDirectionalLightEffectView();
  *(v3 + v11) = [objc_allocWithZone(v12) initWithFrame_];
  v13 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn;
  *(v3 + v13) = [objc_allocWithZone(v12) initWithFrame_];
  *(v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_fromLineAnimator) = 0;
  *(v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_toLineAnimator) = 0;
  *(v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) = 1;
  swift_beginAccess();
  v14 = *(v3 + 16);
  *(v3 + 16) = a2;
  v15 = a2;

  *(v3 + 24) = a1;
  sub_188A53994(a3, v3 + 32);
  v16 = qword_1EA931CD8;
  v17 = a1;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_1EA934CC8;
  v19 = unk_1EA934CD0;
  v20 = qword_1EA934CF8;
  v21 = v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementOutLightConfiguration;
  v22 = xmmword_1EA934CD8;
  v23 = unk_1EA934CE8;
  *v21 = qword_1EA934CC8;
  *(v21 + 8) = v19;
  *(v21 + 16) = v22;
  *(v21 + 32) = v23;
  *(v21 + 48) = v20;
  v24 = qword_1EA92F290;
  v25 = v18;
  v26 = v19;

  if (v24 != -1)
  {
    swift_once();
  }

  v27 = qword_1EA92F298;
  v28 = qword_1EA92F2A0;
  v29 = qword_1EA92F2C8;
  v30 = qword_1EA92F2A0;

  v31 = v27;
  v34 = unk_1EA92F2B8;
  v35 = xmmword_1EA92F2A8;
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  v32 = v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementInLightConfiguration;
  *v32 = v31;
  *(v32 + 8) = v28;
  *(v32 + 16) = v35;
  *(v32 + 32) = v34;
  *(v32 + 48) = v29;
  return v3;
}

uint64_t sub_188F1FF60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_188C48500;

  return sub_188F184DC();
}

uint64_t sub_188F20014()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_188C48500;

  return sub_188F19A28();
}

uint64_t sub_188F200C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_188C48500;

  return sub_188F1E1EC();
}

uint64_t type metadata accessor for UITextEffectView.ReplacementTextEffect()
{
  result = qword_1EA92F618;
  if (!qword_1EA92F618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_188F201C8()
{
  result = sub_18A4A29D8();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of UITextEffectView.ReplacementTextEffect.Delegate.performReplacementAndGeneratePreview(for:effect:animation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_188EC93B4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of UITextEffectView.ReplacementTextEffect.Delegate.performAnimatedReplacement(for:effect:animation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_188C48500;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of UITextEffectView.ReplacementTextEffect.Delegate.performReplacement(for:effect:animation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_188C48500;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_188F20C00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C48500;

  return sub_188F1E404(a1, v4, v5, v6);
}

uint64_t sub_188F20D10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_188C482B4;

  return sub_188F1D598(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_86Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188F20E90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_188C48500;

  return sub_188F194E0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_188F20F68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F20FD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_188C48500;

  return sub_188F1F680(a1, v4);
}

uint64_t sub_188F21090(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_188C482B4;

  return sub_188F1F680(a1, v4);
}

void sub_188F21184(void *a1@<X8>)
{
  v2 = *v1;
  v3 = -1 << *(*v1 + 32);
  v4 = ~v3;
  *a1 = *v1;
  v7 = *(v2 + 64);
  v5 = v2 + 64;
  v6 = v7;
  v8 = -v3;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  a1[1] = v5;
  a1[2] = v4;
  a1[3] = 0;
  a1[4] = v9 & v6;
}

uint64_t sub_188F211CC()
{
  v1 = sub_188F213D4(*v0);

  return v1;
}

uint64_t sub_188F2120C()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  sub_18A4A7348();
  return sub_18A4A88E8();
}

uint64_t sub_188F21270()
{
  MEMORY[0x18CFE37E0](*v0);

  return sub_18A4A7348();
}

uint64_t sub_188F212C4()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  sub_18A4A7348();
  return sub_18A4A88E8();
}

uint64_t sub_188F21324(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_18A4A86C8();
  }
}

unint64_t sub_188F21380()
{
  result = qword_1EA936EC8;
  if (!qword_1EA936EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA936EC8);
  }

  return result;
}

uint64_t sub_188F213D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = 0x4EC4EC4EC4EC4EC5;
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA936EE8);
    v4 = swift_allocObject();
    v5 = 2 * ((_swift_stdlib_malloc_size(v4) - 32) / 104);
    v4[2] = v2;
    v4[3] = v5;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v5 = *(MEMORY[0x1E69E7CC0] + 24);
  }

  v6 = -1 << *(a1 + 32);
  v7 = ~v6;
  v8 = *(a1 + 64);
  v9 = -v6;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v47 = a1;
  v48 = a1 + 64;
  v11 = v4 + 4;
  v12 = v5 >> 1;
  v49 = v7;
  v50 = 0;
  v51 = v10 & v8;
  if (v2)
  {
    v12 -= v2;

    while (1)
    {
      result = sub_188A813A8(&v40);
      if (!v40)
      {
        goto LABEL_37;
      }

      v14 = v41;
      *v11 = v40;
      *(v11 + 1) = v14;
      v15 = v42;
      v16 = v43;
      v17 = v44;
      v18 = v45;
      v11[12] = v46;
      *(v11 + 4) = v17;
      *(v11 + 5) = v18;
      *(v11 + 2) = v15;
      *(v11 + 3) = v16;
      v11 += 13;
      if (!--v2)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  result = sub_188A813A8(v38);
  if (*&v38[0])
  {
    while (1)
    {
      v44 = v38[4];
      v45 = v38[5];
      v46 = v39;
      v40 = v38[0];
      v41 = v38[1];
      v42 = v38[2];
      v43 = v38[3];
      if (!v12)
      {
        v19 = v4[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA936EE8);
        v22 = swift_allocObject();
        v23 = v3;
        v24 = ((_swift_stdlib_malloc_size(v22) - 32) * v3) >> 64;
        v25 = (v24 >> 5) + (v24 >> 63);
        v22[2] = v21;
        v22[3] = 2 * v25;
        v26 = (v22 + 4);
        v27 = v4[3] >> 1;
        if (v4[2])
        {
          if (v22 != v4 || v26 >= &v4[13 * v27 + 4])
          {
            memmove(v22 + 4, v4 + 4, 104 * v27);
          }

          v4[2] = 0;
        }

        v11 = (v26 + 104 * v27);
        v12 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;

        v4 = v22;
        v3 = v23;
      }

      v29 = __OFSUB__(v12--, 1);
      if (v29)
      {
        break;
      }

      v30 = v41;
      *v11 = v40;
      *(v11 + 1) = v30;
      v31 = v42;
      v32 = v43;
      v33 = v44;
      v34 = v45;
      v11[12] = v46;
      *(v11 + 4) = v33;
      *(v11 + 5) = v34;
      *(v11 + 2) = v31;
      *(v11 + 3) = v32;
      v11 += 13;
      result = sub_188A813A8(v38);
      if (!*&v38[0])
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  sub_188E036A4();
  result = sub_188A3F5FC(v38, &qword_1EA936EE0);
  v35 = v4[3];
  if (v35 < 2)
  {
    return v4;
  }

  v36 = v35 >> 1;
  v29 = __OFSUB__(v36, v12);
  v37 = v36 - v12;
  if (!v29)
  {
    v4[2] = v37;
    return v4;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_188F216CC()
{

  sub_1890A2A38();
  v1 = MEMORY[0x1E69E7CC0];
  v2 = 0;
  if (v0)
  {
    v3 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v2)
      {
        v4 = v1[3];
        if (((v4 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v5 = v0;
        v6 = v4 & 0xFFFFFFFFFFFFFFFELL;
        if (v6 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
        v8 = swift_allocObject();
        v9 = _swift_stdlib_malloc_size(v8);
        v10 = v9 - 32;
        if (v9 < 32)
        {
          v10 = v9 - 25;
        }

        v11 = v10 >> 3;
        v8[2] = v7;
        v8[3] = (2 * (v10 >> 3)) | 1;
        v12 = (v8 + 4);
        v13 = v1[3] >> 1;
        if (v1[2])
        {
          v14 = v1 + 4;
          if (v8 != v1 || v12 >= v14 + 8 * v13)
          {
            memmove(v8 + 4, v14, 8 * v13);
          }

          v1[2] = 0;
        }

        v3 = (v12 + 8 * v13);
        v2 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v1 = v8;
        v0 = v5;
      }

      v15 = __OFSUB__(v2--, 1);
      if (v15)
      {
        break;
      }

      *v3++ = v0;
      sub_1890A2A38();
      if (!v0)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  sub_188E036A4();
  v16 = v1[3];
  if (v16 >= 2)
  {
    v17 = v16 >> 1;
    v15 = __OFSUB__(v17, v2);
    v18 = v17 - v2;
    if (v15)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v1[2] = v18;
  }
}

uint64_t sub_188F21890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 40))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_188F218EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_188F21980(uint64_t result, int a2, int a3)
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

unint64_t sub_188F219CC()
{
  result = qword_1ED48BEC0;
  if (!qword_1ED48BEC0)
  {
    type metadata accessor for AttributeScopes.UIKitAttributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48BEC0);
  }

  return result;
}

uint64_t sub_188F21A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F21AA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_188F21B08()
{
  result = qword_1EA930C60;
  if (!qword_1EA930C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA930C60);
  }

  return result;
}

void (*UINavigationItem.attributedTitle.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  if ([v2 attributedTitle])
  {
    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_188F219CC();
    v7 = 0;
    sub_18A4A25C8();
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_18A4A2588();
  (*(*(v8 - 8) + 56))(v6, v7, 1, v8);
  return sub_188F21CB0;
}

uint64_t sub_188F21CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_188F21A30(a1, &v11 - v8);
  return a5(v9);
}

void (*UINavigationItem.attributedSubtitle.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  if ([v2 attributedSubtitle])
  {
    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_188F219CC();
    v7 = 0;
    sub_18A4A25C8();
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_18A4A2588();
  (*(*(v8 - 8) + 56))(v6, v7, 1, v8);
  return sub_188F21ED8;
}

void sub_188F21EF0(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_188F21A30(v5, v4);
    a3(v4);
    sub_188F21AA0(v5);
  }

  else
  {
    a3(v5);
  }

  free(v5);

  free(v4);
}

uint64_t sub_188F21F78@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  if ([v2 *a1])
  {
    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_188F219CC();
    sub_18A4A25C8();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_18A4A2588();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t sub_188F22054@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  if ([*a1 *a2])
  {
    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_188F219CC();
    sub_18A4A25C8();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_18A4A2588();
  v6 = *(*(v5 - 8) + 56);

  return v6(a3, v4, 1, v5);
}

uint64_t sub_188F2213C(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18[-v7];
  v9 = sub_18A4A2588();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18[-v14];
  sub_188F21A30(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_188F21AA0(v8);
    [v4 *a2];
    return sub_188F21AA0(a1);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    sub_188F21B08();
    (*(v10 + 16))(v12, v15, v9);
    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_188F219CC();
    v17 = sub_18A4A7AB8();
    [v4 *a2];

    sub_188F21AA0(a1);
    return (*(v10 + 8))(v15, v9);
  }
}

void (*UINavigationItem.largeAttributedSubtitle.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  if ([v2 largeAttributedSubtitle])
  {
    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_188F219CC();
    v7 = 0;
    sub_18A4A25C8();
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_18A4A2588();
  (*(*(v8 - 8) + 56))(v6, v7, 1, v8);
  return sub_188F224E8;
}

id sub_188F22588(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_18A4A7258();
  v4 = [v2 defaultNavigationItem:a1 shouldEndRenamingWithTitle:v3];

  return v4;
}

Swift::Bool __swiftcall UINavigationItemRenameDelegate.navigationItem(_:shouldEndRenamingWith:)(UINavigationItem *_, Swift::String shouldEndRenamingWith)
{
  v3 = objc_opt_self();
  v4 = sub_18A4A7258();
  v5 = [v3 defaultNavigationItem:_ shouldEndRenamingWithTitle:v4];

  return v5;
}

id sub_188F226C8()
{
  v2.receiver = v0;
  v2.super_class = _s35_UINavigationItemSwiftRenameHandlerCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_188F2270C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 _renameHandler];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  _s35_UINavigationItemSwiftRenameHandlerCMa();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_5:
    Strong = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v6 = v5 + OBJC_IVAR____TtCE5UIKitCSo16UINavigationItem35_UINavigationItemSwiftRenameHandler_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);

LABEL_6:
  *a2 = Strong;
  a2[1] = v8;
}

void UINavigationItem.renameDelegate.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    _s35_UINavigationItemSwiftRenameHandlerCMa();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 24) = a2;
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v31 = sub_188F23A5C;
    v32 = v6;
    v27 = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_188F22E58;
    v30 = &block_descriptor_28;
    v7 = _Block_copy(&v27);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    swift_unknownObjectRetain();

    v9 = [ObjCClassFromMetadata handlerWithDidEndRenamingHandler_];
    _Block_release(v7);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 24) = a2;
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    v31 = sub_188F23A64;
    v32 = v12;
    v27 = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_188F23000;
    v30 = &block_descriptor_16_0;
    v13 = _Block_copy(&v27);
    v14 = v9;

    [v14 setShouldBeginRenamingHandler_];
    _Block_release(v13);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 24) = a2;
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v31 = sub_188F23A6C;
    v32 = v17;
    v27 = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_188F23238;
    v30 = &block_descriptor_24_0;
    v18 = _Block_copy(&v27);

    [v14 setWillBeginRenamingWithRangeHandler_];
    _Block_release(v18);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 24) = a2;
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    v31 = sub_188F23A74;
    v32 = v21;
    v27 = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_188F2341C;
    v30 = &block_descriptor_32;
    v22 = _Block_copy(&v27);

    [v14 setShouldEndRenamingHandler_];
    _Block_release(v22);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 24) = a2;
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    v31 = sub_188F23A7C;
    v32 = v25;
    v27 = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_188F23690;
    v30 = &block_descriptor_40_0;
    v26 = _Block_copy(&v27);

    [v14 setFileURLForRenaming_];
    _Block_release(v26);
    *&v14[OBJC_IVAR____TtCE5UIKitCSo16UINavigationItem35_UINavigationItemSwiftRenameHandler_delegate + 8] = a2;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    [v2 _setRenameHandler_];
    swift_unknownObjectRelease();
  }

  else
  {

    [v2 _setRenameHandler_];
  }
}

void sub_188F22D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(a4 + 24);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(v8, a1, a2, ObjectType, v9);

      swift_unknownObjectRelease();
      return;
    }
  }

  v11 = objc_opt_self();
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  v13 = sub_18A4A7258();
  [v11 defaultNavigationItem:v12 didEndRenamingWithTitle:v13];
}

uint64_t sub_188F22E58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_18A4A7288();
  v4 = v3;

  v1(v2, v4);
}

uint64_t sub_188F22EC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 16))(v4, ObjectType, v5);

      swift_unknownObjectRelease();
      return v7 & 1;
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    swift_unknownObjectRelease();
  }

  v7 = [objc_opt_self() defaultNavigationItemShouldBeginRenaming:v8 forValidDelegate:v9 != 0];

  return v7 & 1;
}

uint64_t sub_188F23000(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

uint64_t sub_188F23040(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v10 = Strong;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_6:
    v20 = objc_opt_self();
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    v22 = sub_18A4A7258();
    v23 = [v20 defaultNavigationItem:v21 willBeginRenamingWithSuggestedTitle:v22 selectedRange:a3];

    v18 = sub_18A4A7288();
    return v18;
  }

  v11 = *(a5 + 24);
  result = sub_18A4A7908();
  if ((v14 & 1) == 0)
  {
    v15 = result;
    v16 = v13;
    ObjectType = swift_getObjectType();
    v18 = (*(v11 + 24))(v10, a1, a2, v15, v16, ObjectType, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936F60);
    sub_188F23AD4();
    sub_188C72980();
    *a3 = sub_18A4A7CC8();
    a3[1] = v19;

    swift_unknownObjectRelease();
    return v18;
  }

  __break(1u);
  return result;
}

id sub_188F23238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_18A4A7288();
  v7 = v6;

  v4(v5, v7, a3);

  v8 = sub_18A4A7258();

  return v8;
}

uint64_t sub_188F232DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v8 = Strong;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_5:
    v12 = objc_opt_self();
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    v14 = sub_18A4A7258();
    v11 = [v12 defaultNavigationItem:v13 shouldEndRenamingWithTitle:v14];

    return v11 & 1;
  }

  v9 = *(a4 + 24);
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 32))(v8, a1, a2, ObjectType, v9);

  swift_unknownObjectRelease();
  return v11 & 1;
}

uint64_t sub_188F2341C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_18A4A7288();
  v4 = v3;

  LOBYTE(v2) = v1(v2, v4);

  return v2 & 1;
}

uint64_t sub_188F23484@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C760);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v6 = Strong;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

    goto LABEL_9;
  }

  v16[1] = &unk_1EFF8BFE0;
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (!v7 || (v8 = v7, ([v7 respondsToSelector_] & 1) == 0))
  {

    swift_unknownObjectRelease();
LABEL_9:
    v13 = sub_18A4A28E8();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  v9 = v6;
  swift_unknownObjectRetain();
  v10 = [v8 _navigationItemFileURLForRenaming_];
  if (v10)
  {
    v11 = v10;
    sub_18A4A28D8();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v15 = sub_18A4A28E8();
  (*(*(v15 - 8) + 56))(v4, v12, 1, v15);
  sub_188EC213C(v4, a1);

  return swift_unknownObjectRelease_n();
}

id sub_188F23690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C760);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = *(a1 + 32);

  v5(v6);

  v7 = sub_18A4A28E8();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v4, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_18A4A28C8();
    (*(v8 + 8))(v4, v7);
    v10 = v11;
  }

  return v10;
}

void (*UINavigationItem.renameDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 _renameHandler];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  _s35_UINavigationItemSwiftRenameHandlerCMa();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_5:
    Strong = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v6 = v5 + OBJC_IVAR____TtCE5UIKitCSo16UINavigationItem35_UINavigationItemSwiftRenameHandler_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);

LABEL_6:
  *a1 = Strong;
  a1[1] = v8;
  return sub_188F23874;
}

void sub_188F23874(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v3 = swift_unknownObjectRetain();
    UINavigationItem.renameDelegate.setter(v3, v2);

    swift_unknownObjectRelease();
  }

  else
  {
    UINavigationItem.renameDelegate.setter(*a1, v2);
  }
}

uint64_t _s5UIKit30UINavigationItemRenameDelegatePAAE010navigationC0_21willBeginRenamingWith13selectedRangeSS_SnySS5IndexVGtSo0bC0C_SSAItF_0(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936F60);
  sub_188F23AD4();
  sub_188C72980();
  v9[0] = sub_18A4A7CC8();
  v9[1] = v2;
  v3 = objc_opt_self();
  v4 = sub_18A4A7258();
  v5 = [v3 defaultNavigationItem:a1 willBeginRenamingWithSuggestedTitle:v4 selectedRange:v9];

  v6 = sub_18A4A7288();
  sub_18A4A7908();
  if (v7)
  {
    __break(1u);
  }

  return v6;
}

unint64_t sub_188F23AD4()
{
  result = qword_1EA936F68;
  if (!qword_1EA936F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA936F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA936F68);
  }

  return result;
}

Swift::Void __swiftcall UIHostingViewBase.transform3DDidChange(oldValue:)(CATransform3D *oldValue)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (sub_18A4A46F8())
    {
      [v3 transform3D];
      v4 = *&oldValue->m33;
      *&v8.m31 = *&oldValue->m31;
      *&v8.m33 = v4;
      v5 = *&oldValue->m43;
      *&v8.m41 = *&oldValue->m41;
      *&v8.m43 = v5;
      v6 = *&oldValue->m13;
      *&v8.m11 = *&oldValue->m11;
      *&v8.m13 = v6;
      v7 = *&oldValue->m23;
      *&v8.m21 = *&oldValue->m21;
      *&v8.m23 = v7;
      if (!CATransform3DEqualToTransform(&a, &v8))
      {
        swift_getObjectType();
        sub_18A4A5588();
        sub_18A4A58B8();
      }

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall UIHostingViewBase.transformDidChange(oldValue:)(CGAffineTransform *oldValue)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (sub_18A4A46F8())
    {
      [v2 transform];
      if ((sub_18A4A7A08() & 1) == 0)
      {
        swift_getObjectType();
        sub_18A4A5588();
        sub_18A4A58B8();
      }

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall UIHostingViewBase.clipsToBoundsDidChange(oldValue:)(Swift::Bool oldValue)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (sub_18A4A46F8())
    {
      if ([v3 clipsToBounds] != oldValue)
      {
        swift_getObjectType();
        sub_18A4A5588();
        sub_18A4A58B8();
      }

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall UIHostingViewBase.tintColorDidChange()()
{
  if (sub_18A4A46F8())
  {
    swift_getObjectType();
    sub_18A4A5538();
    sub_18A4A58B8();

    swift_unknownObjectRelease();
  }
}

uint64_t UIHostingViewBase._geometryChanged(_:forAncestor:)()
{
  result = sub_18A4A46F8();
  if (result)
  {
    v2 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges;
    swift_beginAccess();
    if (*(v0 + v2) == 1)
    {
      v3 = sub_18A4A5588();
      sub_18A4A5568();
      sub_18A4A5568();
      if (sub_18A4A5568() != v3)
      {
        sub_18A4A5568();
      }

      sub_18A4A6CD8();
      if (sub_18A4A53A8())
      {
        v4 = sub_18A4A5578();
        sub_18A4A5568();
        if (sub_18A4A5568() != v4)
        {
          sub_18A4A5568();
        }
      }

      swift_getObjectType();
      sub_18A4A58B8();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

double UIHostingViewBase._baselineOffsets(at:)(double a1, double a2)
{
  if (!sub_18A4A46F8())
  {
    return 2.22507386e-308;
  }

  if (a1 == 0.0 && a2 == 0.0)
  {
    swift_getObjectType();
    sub_18A4A4E08();
    sub_18A4A5888();
  }

  swift_getObjectType();
  sub_18A4A5368();
  v4 = COERCE_DOUBLE(sub_18A4A58A8());
  v6 = v5;
  sub_18A4A5358();
  sub_18A4A58A8();
  if (v6)
  {
    v7 = 2.22507386e-308;
  }

  else
  {
    v7 = v4;
  }

  swift_unknownObjectRelease();
  return v7;
}

Swift::Void __swiftcall UIHostingViewBase._updateTransform()()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((sub_18A4A47F8() & 1) != 0 || (v4 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges, swift_beginAccess(), *(v1 + v4) != 1))
    {
    }

    else
    {
      [v3 _unregisterForGeometryChanges];

      *(v1 + v4) = 0;
    }
  }
}

Swift::Void __swiftcall UIHostingViewBase._updateSize()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong bounds];
    sub_18A4A4728();
  }
}

uint64_t (*UIHostingViewBase.uiView.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_uiView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_188F2437C;
}

uint64_t UIHostingViewBase.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*UIHostingViewBase.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_188F2448C;
}

void sub_188F2448C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t (*UIHostingViewBase.updateDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = *(v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_viewGraph);
  *a1 = sub_18A4A46F8();
  a1[1] = v3;
  return sub_188F24568;
}

uint64_t sub_188F24568(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_18A4A4708();
  }

  swift_unknownObjectRetain();
  sub_18A4A4708();

  return swift_unknownObjectRelease();
}

uint64_t UIHostingViewBase.safeAreaRegions.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_188F2461C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    sub_18A4A6CD8();
    if (sub_18A4A53A8())
    {
      v5 = *(v1 + v3);
      v6 = (sub_18A4A4D08() & ~v5) == 0;
    }

    else
    {
      v6 = 0;
    }

    if (((v6 ^ ((sub_18A4A4D08() & ~a1) != 0)) & 1) == 0)
    {
      if (v6)
      {
        Strong = 0;
      }

      else
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
      }

      sub_188AFF7D0(Strong);
    }

    result = sub_18A4A46F8();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18A64BFA0;
      v9 = sub_18A4A5578();
      *(inited + 32) = v9;
      v10 = sub_18A4A5548();
      *(inited + 34) = v10;
      sub_18A4A5568();
      sub_18A4A5568();
      if (sub_18A4A5568() != v9)
      {
        sub_18A4A5568();
      }

      sub_18A4A5568();
      if (sub_18A4A5568() != v10)
      {
        sub_18A4A5568();
      }

      swift_getObjectType();
      sub_18A4A58B8();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*UIHostingViewBase.safeAreaRegions.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_188F2486C;
}

void sub_188F2486C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_188F2461C(v5);

  free(v1);
}

__n128 UIHostingViewBase.configuration.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_configuration);
  *a1 = result;
  return result;
}

uint64_t sub_188F24918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_188A3F29C(a1, &v9 - v6, &qword_1EA936FE0);
  sub_188A3F29C(v7, v4, &qword_1EA936FE0);
  sub_18A4A4868();
  return sub_188A3F5FC(v7, &qword_1EA936FE0);
}

void (*UIHostingViewBase.initialInheritedEnvironment.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    *a1 = swift_coroFrameAlloc();
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = *(v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_viewGraph);
  a1[2] = v4;
  a1[3] = v5;
  sub_18A4A4858();
  return sub_188F24AF8;
}

void sub_188F24AF8(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_188A3F29C(v5, v4, &qword_1EA936FE0);
  v6 = *a1;
  if (a2)
  {
    sub_188A3F29C(v4, v6, &qword_1EA936FE0);
    sub_18A4A4868();
    sub_188A3F5FC(v4, &qword_1EA936FE0);
  }

  else
  {
    sub_18A4A4868();
  }

  sub_188A3F5FC(v5, &qword_1EA936FE0);
  free(v5);
  free(v4);

  free(v6);
}

uint64_t (*UIHostingViewBase.inheritedEnvironment.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_188F27F0C;
}

uint64_t sub_188F24C4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_188A3F29C(v2 + v4, a2, &qword_1EA936FE0);
}

uint64_t sub_188F24CB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_188A3F29C(a1, &v14 - v9, &qword_1EA936FE0);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  sub_188C11DE8(v10, v11 + v12);
  swift_endAccess();
  if (sub_18A4A46F8())
  {
    swift_getObjectType();
    sub_18A4A5538();
    sub_18A4A58B8();
    swift_unknownObjectRelease();
  }

  return sub_188A3F5FC(v10, &qword_1EA936FE0);
}

uint64_t (*UIHostingViewBase.environmentOverride.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_188F24E44;
}

uint64_t sub_188F24E48(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = sub_18A4A46F8();
    if (result)
    {
      swift_getObjectType();
      sub_18A4A5538();
      sub_18A4A58B8();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *UIHostingViewBase.traitCollectionOverride.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_188F24F28(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_188F2505C(v5);
}

void UIHostingViewBase.traitCollectionOverride.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v4 != a1)
  {
LABEL_5:
    v5 = a1;
    if (sub_18A4A46F8())
    {
      swift_getObjectType();
      sub_18A4A5538();
      sub_18A4A58B8();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    a1 = v4;
  }
}

uint64_t sub_188F2505C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (!a1)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
LABEL_9:
    result = sub_18A4A46F8();
    if (result)
    {
      swift_getObjectType();
      sub_18A4A5538();
      sub_18A4A58B8();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*UIHostingViewBase.traitCollectionOverride.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_188F251A0;
}

void sub_188F251A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if ((a2 & 1) == 0)
  {
    if (v7)
    {
      if (v7 == v3)
      {
        goto LABEL_18;
      }
    }

    else if (!v3)
    {
      goto LABEL_19;
    }

    v9 = v3;
    if (sub_18A4A46F8())
    {
      swift_getObjectType();
      sub_18A4A5538();
      sub_18A4A58B8();
      swift_unknownObjectRelease();
    }

    v3 = v7;
    goto LABEL_18;
  }

  if (v7)
  {
    if (v7 == v3)
    {
      goto LABEL_17;
    }

LABEL_9:
    v8 = v3;
    if (sub_18A4A46F8())
    {
      swift_getObjectType();
      sub_18A4A5538();
      sub_18A4A58B8();
      swift_unknownObjectRelease();
    }

    goto LABEL_17;
  }

  if (v3)
  {
    goto LABEL_9;
  }

  v10 = 0;
LABEL_17:
  v3 = *v4;
LABEL_18:

LABEL_19:

  free(v2);
}

uint64_t UIHostingViewBase.canAdvanceTimeAutomatically.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_canAdvanceTimeAutomatically;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t UIHostingViewBase.canAdvanceTimeAutomatically.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_canAdvanceTimeAutomatically;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t UIHostingViewBase.allowUIKitAnimationsForNextUpdate.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_allowUIKitAnimationsForNextUpdate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_allowUIKitAnimationsForNextUpdate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t UIHostingViewBase._updateFidelity.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase__updateFidelity;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_188F25518(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase__updateFidelity;
  swift_beginAccess();
  *(v3 + v4) = v2;
  if ((sub_18A4A4D48() & 1) == 0)
  {
    UIHostingViewBase.requestUpdateForFidelity()();
  }
}

void UIHostingViewBase._updateFidelity.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase__updateFidelity;
  swift_beginAccess();
  *(v1 + v3) = a1;
  if ((sub_18A4A4D48() & 1) == 0)
  {
    UIHostingViewBase.requestUpdateForFidelity()();
  }
}

void (*UIHostingViewBase._updateFidelity.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase__updateFidelity;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_188F25678;
}

void sub_188F25678(uint64_t a1)
{
  v1 = *a1;
  *(*(*a1 + 32) + *(*a1 + 40)) = *(*a1 + 24);
  if ((sub_18A4A4D48() & 1) == 0)
  {
    UIHostingViewBase.requestUpdateForFidelity()();
  }

  free(v1);
}

Swift::Void __swiftcall UIHostingViewBase.updateRemovedState(uiView:)(UIView_optional *uiView)
{
  v2 = v1;
  if (uiView)
  {
    v3 = uiView;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = Strong;
    uiView = 0;
  }

  v5 = uiView;
  v6 = [(UIView_optional *)v3 window];
  if (v6)
  {
  }

  v7 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse;
  swift_beginAccess();
  if (*(v2 + v7))
  {
    sub_18A4A4738();
  }

  sub_18A4A47E8();
}

void (*UIHostingViewBase.isHiddenForReuse.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_188F25848;
}

void sub_188F25848(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong window];
      if (v6)
      {
      }

      if (*(v3[3] + v3[4]) == 1)
      {
        sub_18A4A4738();
      }

      sub_18A4A47E8();
    }
  }

  free(v3);
}

uint64_t UIHostingViewBase.isEnteringForeground.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isEnteringForeground;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t UIHostingViewBase.isEnteringForeground.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isEnteringForeground;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t UIHostingViewBase.isExitingForeground.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t UIHostingViewBase.isExitingForeground.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t UIHostingViewBase.isCapturingSnapshots.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isCapturingSnapshots;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t UIHostingViewBase.isCapturingSnapshots.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isCapturingSnapshots;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t UIHostingViewBase.isRotatingWindow.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isRotatingWindow;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t UIHostingViewBase.isResizingWindow.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isResizingWindow;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t UIHostingViewBase.isResizingWindow.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isResizingWindow;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t UIHostingViewBase.sceneActivationState.setter(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

void (*UIHostingViewBase.sceneActivationState.modify(uint64_t *a1))(uint64_t *a1)
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = Strong, v7 = [Strong window], v6, v8 = objc_msgSend(v7, sel__windowHostingScene), v7, v8))
  {

    v9 = *(v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState);
    v10 = *(v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState + 8);
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  *(v4 + 24) = v9;
  *(v4 + 32) = v10;
  return sub_188F25ED8;
}

void sub_188F25ED8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 32);
  v3 = *(v1 + 40) + OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState;
  *v3 = *(v1 + 24);
  *(v3 + 8) = v2;
  free(v1);
}

uint64_t UIHostingViewBase.registeredForGeometryChanges.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t UIHostingViewBase.registeredForGeometryChanges.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*UIHostingViewBase.observedWindow.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_observedWindow;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_188F27F10;
}

void sub_188F260A4(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id UIHostingViewBase.init(viewGraph:options:)(uint64_t a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a2;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
  *&v2[v7] = sub_18A4A4CF8();
  v8 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_inheritedEnvironment;
  v9 = sub_18A4A5318();
  v10 = *(*(v9 - 8) + 56);
  v10(&v2[v8], 1, 1, v9);
  v10(&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_environmentOverride], 1, 1, v9);
  *&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride] = 0;
  v11 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_cachedContainerShape;
  v12 = sub_18A4A5728();
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_canAdvanceTimeAutomatically] = 1;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_allowUIKitAnimationsForNextUpdate] = 0;
  sub_18A4A5C78();
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_pendingPreferencesUpdate] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_pendingPostDisappearPreferencesUpdate] = 0;
  v13 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase__updateFidelity;
  *&v2[v13] = sub_18A4A4D38();
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isEnteringForeground] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isCapturingSnapshots] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isRotatingWindow] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isResizingWindow] = 0;
  v14 = &v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState];
  *v14 = 0;
  v14[8] = 1;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15 = &v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardFrame];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = &v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_inactiveKeyboardFrame];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardSeed] = 0;
  *&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase____lazy_storage___trackingElement] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isUpdatingKeyboard] = 0;
  v20[0] = v6;
  v20[1] = 0;
  sub_188AFB738(v20);
  *&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_viewGraph] = a1;
  v17 = &v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_configuration];
  *v17 = v6;
  v17[1] = 0;
  v19.receiver = v2;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

id UIHostingViewBase.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UIHostingViewBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_188F2650C()
{
  result = sub_188F26530();
  byte_1EA930110 = result & 1;
  return result;
}

uint64_t sub_188F26530()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_18A4A7288();
    v4 = v3;

    if (v2 == 0xD00000000000001BLL && 0x800000018A692E10 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_18A4A86C8();
    }
  }

  return v1 & 1;
}

void sub_188F26600()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = [v3 window];
      if (v4)
      {
      }

      v5 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse;
      swift_beginAccess();
      if (v1[v5] == 1)
      {
        sub_18A4A4738();
      }

      sub_18A4A47E8();
    }

    else
    {
      v3 = v1;
    }
  }
}

Swift::Void __swiftcall UIHostingViewBase.__boundingPathMayHaveChanged(for:relativeToBoundsOriginOnly:)(UIView_optional *a1, Swift::Bool relativeToBoundsOriginOnly)
{
  if (sub_18A4A46F8())
  {
    v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges;
    swift_beginAccess();
    if (*(v2 + v3) == 1)
    {
      swift_getObjectType();
      sub_18A4A5588();
      sub_18A4A58B8();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t UIHostingViewBase.updateGraphInputs(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D48);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = sub_18A4A4908();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_6;
  }

  v14 = Strong;
  v15 = [Strong traitCollection];
  v16 = [v15 userInterfaceIdiom];

  ViewGraphHost.Idiom.init(_uiIdiom:)(v16, v8);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
LABEL_6:
    v19 = v8;
    return sub_188A3F5FC(v19, &qword_1EA935D48);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_18A4A45C8();
  if (v17(v5, 1, v9) == 1)
  {
    sub_188A3F5FC(v5, &qword_1EA935D48);
    (*(v10 + 16))(v2, v12, v9);
    (*(v10 + 56))(v2, 0, 1, v9);
    sub_18A4A45D8();
    return (*(v10 + 8))(v12, v9);
  }

  (*(v10 + 8))(v12, v9);
  v19 = v5;
  return sub_188A3F5FC(v19, &qword_1EA935D48);
}

Swift::Void __swiftcall UIHostingViewBase.startDisplayLink(delay:)(Swift::Double delay)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    v3 = v2;
    sub_18A4A4768();
  }
}

uint64_t sub_188F26BC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937038);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15[-v2];
  v4 = type metadata accessor for _GlassBackgroundStyle();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
    swift_beginAccess();
    v11 = *(v0 + v10);
    if (v11)
    {
      v12 = *(v0 + v10);
    }

    else
    {
      v12 = [v9 traitCollection];
      v11 = 0;
    }

    v13 = v11;
    v14 = [(UIView *)v9 _typedStorage];
    sub_188A61B4C(v3);

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      return sub_188A3F5FC(v3, &qword_1EA937038);
    }

    else
    {
      sub_188F27E98(v3, v7, type metadata accessor for _GlassBackgroundStyle);
      sub_188EB4730(v7, v12);

      return sub_188AD77B4(v7);
    }
  }

  return result;
}

id UIHostingViewBase.renderingRootView.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return [objc_allocWithZone(UIView) init];
  }

  return result;
}

uint64_t UIHostingViewBase.rootContainerShape()@<X0>(char *a1@<X8>)
{
  v3 = sub_18A4A5728();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_cachedContainerShape;
    swift_beginAccess();
    sub_188A3F29C(v1 + v15, v12, &qword_1EA936FF0);
    if ((*(v4 + 48))(v12, 1, v3) == 1)
    {
      sub_188A3F5FC(v12, &qword_1EA936FF0);
      v16 = v14;
      sub_188AF11B0(v16, [v16 traitCollection], v6);
      v17 = _UIViewMaskingConfigurationSPIEnabled();

      if (v17)
      {
        sub_188F27A90(v6, v9);
        (*(v4 + 56))(v9, 0, 1, v3);
        swift_beginAccess();
        sub_188F27A20(v9, v1 + v15);
        swift_endAccess();
      }

      v18 = MEMORY[0x1E697FF20];
      v19 = v6;
    }

    else
    {

      v18 = MEMORY[0x1E697FF20];
      v19 = v12;
    }

    return sub_188F27E98(v19, a1, v18);
  }

  else
  {
    (*(v4 + 56))(v9, 1, 1, v3);
    v20 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_cachedContainerShape;
    swift_beginAccess();
    sub_188F27A20(v9, v1 + v20);
    swift_endAccess();
    v21 = *(v3 + 20);
    v22 = *MEMORY[0x1E697F468];
    v23 = sub_18A4A53E8();
    (*(*(v23 - 8) + 104))(&a1[v21], v22, v23);
    result = sub_18A4A55A8();
    *a1 = v25;
    *(a1 + 1) = v26;
    *(a1 + 2) = v27;
    *(a1 + 3) = v28;
  }

  return result;
}

Swift::Void __swiftcall UIHostingViewBase.updateTransformWithoutGeometryObservation()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges;
    swift_beginAccess();
    v4 = *(v0 + v3);
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      if ((sub_18A4A47F8() & 1) != 0 || (*(v0 + v3) & 1) == 0)
      {

        if (v4)
        {
LABEL_11:

          return;
        }

LABEL_9:
        if (*(v0 + v3) == 1)
        {
          [v2 _unregisterForGeometryChanges];

          *(v0 + v3) = 0;
          return;
        }

        goto LABEL_11;
      }

      [v6 _unregisterForGeometryChanges];

      *(v0 + v3) = 0;
    }

    if (v4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }
}

uint64_t sub_188F27364(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_18A4A4808() & 1;
  result = sub_18A4A4818();
  if (v1 != v2)
  {
    result = sub_18A4A46F8();
    if (result)
    {
      swift_getObjectType();
      sub_18A4A5538();
      sub_18A4A58B8();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t UIHostingViewBase.accessibilityEnabled.setter(char a1)
{
  v1 = a1 & 1;
  v2 = sub_18A4A4808() & 1;
  result = sub_18A4A4818();
  if (v2 != v1)
  {
    result = sub_18A4A46F8();
    if (result)
    {
      swift_getObjectType();
      sub_18A4A5538();
      sub_18A4A58B8();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t (*UIHostingViewBase.accessibilityEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_viewGraph);
  *(a1 + 8) = sub_18A4A4808() & 1;
  return sub_188F274FC;
}

uint64_t sub_188F274FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_18A4A4808();
  result = sub_18A4A4818();
  if ((v1 ^ v2))
  {
    result = sub_18A4A46F8();
    if (result)
    {
      swift_getObjectType();
      sub_18A4A5538();
      sub_18A4A58B8();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_188F275A4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_18A4A2458();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2418();
  v10 = *(v7 + 8);
  v11 = a1;
  v10(v9, v6);
  v12 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isRotatingWindow;
  swift_beginAccess();
  v11[v12] = a4;
}

uint64_t sub_188F27A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F27A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_18A4A5728();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_188F27AF8()
{
  result = qword_1EA937028;
  if (!qword_1EA937028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937028);
  }

  return result;
}

unint64_t sub_188F27B50()
{
  result = qword_1EA937030;
  if (!qword_1EA937030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937030);
  }

  return result;
}

uint64_t keypath_get_40Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_188A3F29C(v4 + v5, a3, &qword_1EA936FE0);
}

uint64_t keypath_get_36Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_188F27D58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18A4A7D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for UIHostingViewBase.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_188F27E98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_188F27F58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_188A3F5FC(a1, &qword_1EA937060);
    v5 = sub_188A403F4(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA080C();
        v10 = v13;
      }

      sub_188A3F704(*(v10 + 56) + 8 * v8, &v15, &qword_1EA936E70);
      sub_188F9C63C(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_188A3F5FC(&v15, &qword_1EA937060);
  }

  else
  {
    sub_188A3F704(a1, &v15, &qword_1EA936E70);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_188E9D94C(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_188F28088(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937050);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_188A3F5FC(a1, &qword_1EA937050);
    v13 = sub_188A86B54(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA0830();
        v17 = v21;
      }

      sub_188A3F704(*(v17 + 56) + *(v10 + 72) * v15, v8, &unk_1EA935770);
      sub_188F9C650(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_188A3F5FC(v8, &qword_1EA937050);
  }

  else
  {
    sub_188A3F704(a1, v12, &unk_1EA935770);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_188E9DA70(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_188F282DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_188E9DF9C(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_188C4680C(a2);
    *v2 = v13;
  }

  else
  {
    v8 = sub_188C46540(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!v11)
      {
        sub_188FA0EE8();
        v12 = v14;
      }

      sub_188C4680C(*(v12 + 48) + 48 * v10);

      sub_188C4D458(v10, v12);
      result = sub_188C4680C(a2);
      *v3 = v12;
    }

    else
    {

      return sub_188C4680C(a2);
    }
  }

  return result;
}

void sub_188F283E4(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    v7[0] = *a1;
    v7[1] = v4;
    v8 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_188E9E140(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    sub_188A3F5FC(a1, &qword_1EA934740);
    sub_1891E9650(a2, v7);

    sub_188A3F5FC(v7, &qword_1EA934740);
  }
}

void sub_188F284A0(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    v7[0] = *a1;
    v7[1] = v4;
    v8 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_188E9E654(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    sub_188A3F5FC(a1, &unk_1EA937A80);
    sub_1891E9700(a2, v7);

    sub_188A3F5FC(v7, &unk_1EA937A80);
  }
}

unint64_t sub_188F2855C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_188E9E78C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = sub_188E8B838(a2, a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_188FA1F34();
        v13 = v15;
      }

      result = sub_188F9D40C(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

uint64_t sub_188F28630(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1] == 1;
  }

  if (v5)
  {
    sub_188A3F5FC(a1, &qword_1EA9352B8);
    v8 = sub_188A403F4(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA2094();
        v12 = v14;
      }

      sub_188E8FC60(*(v12 + 56) + 16 * v10, &v15);
      sub_188F9D5A4(v10, v12);
      *v3 = v12;
    }

    else
    {
      v15 = xmmword_18A64C520;
    }

    return sub_188A3F5FC(&v15, &qword_1EA9352B8);
  }

  else
  {
    sub_188E8FC60(a1, &v15);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_188E9E8CC(&v15, a2, v6);
    *v2 = v13;
  }

  return result;
}

uint64_t sub_188F28740(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_188A5EBAC(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_188E9EE24(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_188F29FEC(a2, type metadata accessor for UITextEffectView.EffectID);
    *v2 = v6;
  }

  else
  {
    sub_188A3F5FC(a1, &qword_1EA936EA0);
    sub_1891E9960(a2, v7);
    sub_188F29FEC(a2, type metadata accessor for UITextEffectView.EffectID);
    return sub_188A3F5FC(v7, &qword_1EA936EA0);
  }

  return result;
}

uint64_t sub_188F28824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_188E9F2D8(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_188C4585C(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_188FA39F4();
        v11 = v13;
      }

      result = sub_188FA9CDC(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_188F288E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_188A3F5FC(a1, &qword_1EA9377A0);
    v5 = sub_188A403F4(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA3E00();
        v10 = v13;
      }

      sub_188E904EC(*(v10 + 56) + 8 * v8, &v15);
      sub_188F9DDC8(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_188A3F5FC(&v15, &qword_1EA9377A0);
  }

  else
  {
    sub_188E904EC(a1, &v15);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_188E9F43C(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

_OWORD *sub_188F289F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_188A55538(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_188E9F93C(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_188A3F5FC(a1, &qword_1EA934050);
    v7 = sub_188A403F4(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_188FA45C8();
        v11 = v13;
      }

      sub_188A55538((*(v11 + 56) + 32 * v9), v14);
      sub_188F9E27C(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_188A3F5FC(v14, &qword_1EA934050);
  }

  return result;
}

void sub_188F28AF8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_188E9FBA0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v8 = sub_188E8B480(a2, a3);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v15 = *v4;
      if (!v11)
      {
        sub_188FA48D0();
        v12 = v15;
      }

      sub_188F9E3EC(v10, v12);
      *v4 = v12;
    }

    else
    {
    }
  }
}

uint64_t sub_188F28C0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_188A5EBAC(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_188E9FE18(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_188A3F5FC(a1, &qword_1EA937068);
    v7 = sub_188C4585C(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_188FA4BA8();
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

    return sub_188A3F5FC(v14, &qword_1EA937068);
  }

  return result;
}

uint64_t sub_188F28D18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_188F166A0(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_188EA018C(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_188A3F5FC(a1, &qword_1EA939C50);
    v7 = sub_188A403F4(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_188FA5400();
        v11 = v13;
      }

      sub_188F166A0(*(v11 + 56) + 32 * v9, v14);
      sub_188F9E7DC(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_188A3F5FC(v14, &qword_1EA939C50);
  }

  return result;
}

unint64_t sub_188F28E1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 32))
  {
    result = sub_188A403F4(a2);
    if (v6)
    {
      v7 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v15 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA55B8();
        v9 = v15;
      }

      result = sub_188F9E27C(v7, v9);
      *v3 = v9;
    }
  }

  else
  {
    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v13 = *a1;
    v12 = *(a1 + 8);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_188EA0454(a2, v14, v13, v12, v11, v10);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_188F28EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E6C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for UITextEffectView.EffectID();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v13) == 1)
  {
    sub_188A3F5FC(a1, &qword_1EA93E6C0);
    v16 = sub_188E8BC0C(a2, a3);
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v4;
      v24 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA5724();
        v20 = v24;
      }

      sub_188F29F84(*(v20 + 56) + *(v12 + 72) * v18, v10, type metadata accessor for UITextEffectView.EffectID);
      sub_188F9EADC(v18, v20);
      *v4 = v20;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_188A3F5FC(v10, &qword_1EA93E6C0);
  }

  else
  {
    sub_188F29F84(a1, v15, type metadata accessor for UITextEffectView.EffectID);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    result = sub_188EA0908(v15, a2, a3, v21);
    *v4 = v24;
  }

  return result;
}

uint64_t sub_188F29154(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_188EA0A6C(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_188F29FEC(a2, _s8CacheKeyVMa);
    *v2 = v15;
  }

  else
  {
    v8 = sub_188E8BC8C(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v16 = *v3;
      if (!v11)
      {
        sub_188FA5EEC();
        v12 = v16;
      }

      v13 = *(v12 + 48);
      v14 = _s8CacheKeyVMa();
      sub_188F29FEC(v13 + *(*(v14 - 8) + 72) * v10, _s8CacheKeyVMa);

      sub_188F9ECBC(v10, v12);
      result = sub_188F29FEC(a2, _s8CacheKeyVMa);
      *v3 = v12;
    }

    else
    {
      return sub_188F29FEC(a2, _s8CacheKeyVMa);
    }
  }

  return result;
}

uint64_t sub_188F292A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == 255)
  {
    sub_188A3F5FC(a1, &qword_1EA937080);
    sub_1891E9F20(a2, v9);
    sub_188F29FEC(a2, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    return sub_188A3F5FC(v9, &qword_1EA937080);
  }

  else
  {
    v4 = *(a1 + 48);
    v9[2] = *(a1 + 32);
    v9[3] = v4;
    v10 = *(a1 + 64);
    v5 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_188EA10A0(v9, a2, isUniquelyReferenced_nonNull_native);
    result = sub_188F29FEC(a2, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    *v2 = v8;
  }

  return result;
}

uint64_t sub_188F2939C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937078);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_188A3F5FC(a1, &qword_1EA937078);
    sub_1891EA018(a2, v7);
    sub_188F29FEC(a2, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    return sub_188A3F5FC(v7, &qword_1EA937078);
  }

  else
  {
    sub_188F29F84(a1, v11, type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_188EA1550(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_188F29FEC(a2, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_188F29584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    sub_188EA16FC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v19;
  }

  else
  {
    v12 = sub_188B0944C(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v20 = *v5;
      if (!v15)
      {
        sub_188FA7B88();
        v16 = v20;
      }

      v17 = *(v16 + 56) + 16 * v12;
      v18 = *v17;

      result = sub_188F9F628(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

void sub_188F29690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v5;
    sub_188EA1864(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    *v5 = v21;
  }

  else
  {
    v13 = sub_188B85570(a5);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v5;
      v22 = *v6;
      if (!v16)
      {
        sub_188FA7F80();
        v17 = v22;
      }

      v18 = *(v17 + 56) + 32 * v15;
      v19 = *(v18 + 8);
      v20 = *(v18 + 16);

      sub_188F9F7D8(v15, v17);
      *v6 = v17;
    }
  }
}

uint64_t sub_188F29788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  swift_beginAccess();
  v14 = *(v3 + 16);
  if (*(v14 + 16) && (v15 = sub_188E8B838(a2, a3), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    v18 = a1;
    v19 = *(v8 + 16);
    v19(v13, v18, a2);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_188E4B7D0(0, v17[2] + 1, 1, v17);
      v30 = v17;
    }

    v22 = v17[2];
    v21 = v17[3];
    if (v22 >= v21 >> 1)
    {
      v17 = sub_188E4B7D0((v21 > 1), v22 + 1, 1, v17);
      v30 = v17;
    }

    v19(v10, v13, a2);
    sub_188F29E00(v22, v10, &v30, a2, a3);
    (*(v8 + 8))(v13, a2);
    swift_beginAccess();
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_188E9E78C(v17, a2, a3, v23);
    v24 = v29;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934440);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_18A64BFB0;
    *(v25 + 56) = a2;
    *(v25 + 64) = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v25 + 32));
    (*(v8 + 16))(boxed_opaque_existential_0, a1, a2);
    swift_beginAccess();
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_188E9E78C(v25, a2, a3, v27);
    v24 = v30;
  }

  *(v4 + 16) = v24;
  return swift_endAccess();
}

uint64_t sub_188F29A68(uint64_t a1, uint64_t (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_beginAccess();
  v9 = *(v5 + 16);
  if (!*(v9 + 16) || (v10 = sub_188E8B838(a4, a5), (v11 & 1) == 0))
  {
    v16 = 0;
LABEL_17:
    swift_beginAccess();
    sub_188F2855C(v16, a4, a5);
    return swift_endAccess();
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  v13 = *(v12 + 16);

  if (!v13)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_16:

    goto LABEL_17;
  }

  v14 = 0;
  v15 = v12 + 32;
  v16 = MEMORY[0x1E69E7CC0];
  v23 = a4;
  v24 = a5;
  v17 = a3;
  while (v14 < *(v12 + 16))
  {
    sub_188A53994(v15, v27);
    if (sub_188F29C7C(v27, a2, v17, v6, a4))
    {
      sub_188A5EBAC(v27, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_188E6D19C(0, *(v16 + 16) + 1, 1);
        v17 = a3;
        v16 = v28;
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_188E6D19C((v19 > 1), v20 + 1, 1);
        v17 = a3;
        v16 = v28;
      }

      *(v16 + 16) = v20 + 1;
      sub_188A5EBAC(v26, v16 + 40 * v20 + 32);
      a4 = v23;
      a5 = v24;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    ++v14;
    v15 += 40;
    if (v13 == v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_0Tm(v27);

  __break(1u);
  return result;
}

BOOL sub_188F29C7C(uint64_t a1, uint64_t (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_188A53994(v11, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934448);
  swift_dynamicCast();
  LOBYTE(a4) = a2(v10, a4);
  (*(v8 + 8))(v10, a5);
  return (a4 & 1) == 0;
}

uint64_t UITransitionComponentResponseContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_188F29E00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_188A5EBAC(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_188F29F30()
{
  result = qword_1EA937040;
  if (!qword_1EA937040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937040);
  }

  return result;
}

uint64_t sub_188F29F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_188F29FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_188F2A05C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView;
  type metadata accessor for _UIMorphAnimationContainerView.TransformView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = &v4[OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_name];
  v11 = type metadata accessor for _UIMorphAnimationContainerView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v18.receiver = v4;
  v18.super_class = v11;
  v12 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView;
  v14 = *&v12[OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView];
  v15 = v12;
  v16 = v14;
  [v15 bounds];
  [v16 setFrame_];

  [*&v12[v13] setAutoresizingMask_];
  [v15 addSubview_];

  return v15;
}

id sub_188F2A49C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_188F2A56C()
{
  result = qword_1EA930EB0;
  if (!qword_1EA930EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA930EB0);
  }

  return result;
}

uint64_t sub_188F2A64C(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_188F2AF98;
  *(v4 + 24) = v3;
  v22 = sub_188A4B574;
  v23 = v4;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_188A4A968;
  v21 = &block_descriptor_30;
  v5 = _Block_copy(&v18);
  v6 = a1;
  v7 = v1;

  [v6 appendProem:v7 block:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = [v6 style];
  v11 = [v10 verbosity];

  if (v11 == 2)
  {
  }

  v12 = [objc_opt_self() succinctStyle];
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = v7;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_188F2AFA0;
  *(v14 + 24) = v13;
  v22 = sub_188E3FE50;
  v23 = v14;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_188A4A968;
  v21 = &block_descriptor_15_1;
  v15 = _Block_copy(&v18);
  v16 = v6;
  v17 = v7;

  [v16 overlayStyle:v12 block:v15];

  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_188F2A94C(void *a1, id a2)
{
  v3 = [a2 collectorInteraction];
  v4 = sub_18A4A7258();
}

uint64_t sub_188F2A9F0(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188F2AFA8;
  *(v5 + 24) = v4;
  v10[4] = sub_188E3FE50;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188A4A968;
  v10[3] = &block_descriptor_25_2;
  v6 = _Block_copy(v10);
  v7 = a2;
  v8 = a1;

  [v8 appendBodySectionWithName:0 block:v6];
  _Block_release(v6);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

void sub_188F2AB54(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____UIScrollPocketLumaObserverInteraction_lumaValues;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (*(v5 + 16) && (v6 = sub_188C4585C(1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    v9 = _NSStringFromUIUserInterfaceStyle(v8);
    v10 = sub_18A4A7258();
    [a2 appendString:v9 withName:v10];
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  v11 = *(a1 + v4);
  if (*(v11 + 16) && (v12 = sub_188C4585C(2), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = _NSStringFromUIUserInterfaceStyle(v14);
    v16 = sub_18A4A7258();
    [a2 appendString:v15 withName:v16];
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  v17 = *(a1 + v4);
  if (*(v17 + 16) && (v18 = sub_188C4585C(4), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
    swift_endAccess();
    v21 = _NSStringFromUIUserInterfaceStyle(v20);
    v22 = sub_18A4A7258();
    [a2 appendString:v21 withName:v22];
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  v23 = *(a1 + v4);
  if (*(v23 + 16) && (v24 = sub_188C4585C(8), (v25 & 1) != 0))
  {
    v26 = *(*(v23 + 56) + 8 * v24);
    swift_endAccess();
    v27 = _NSStringFromUIUserInterfaceStyle(v26);
    v28 = sub_18A4A7258();
    [a2 appendString:v27 withName:v28];
  }

  else
  {
    swift_endAccess();
  }
}

id _UIScrollPocketLumaObserverInteraction.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for _UIScrollPocketLumaObserverInteraction()
{
  result = qword_1EA9370C0;
  if (!qword_1EA9370C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9370C0);
  }

  return result;
}

id _UIFloatingContentView.setGlass(_:for:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19[-v6];
  v8 = type metadata accessor for _Glass(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19[-v13];
  sub_188A3F29C(a1, v7, &unk_1EA93BA10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_188A3F5FC(v7, &unk_1EA93BA10);
    return [v2 removeGlassForState_];
  }

  else
  {
    sub_188C4CD1C(v7, v14);
    sub_188C4C96C(v14, v11);
    v16 = [objc_allocWithZone(_UIViewGlass) init];
    v21 = v8;
    v22 = &protocol witness table for _Glass;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
    sub_188C4CD1C(v11, boxed_opaque_existential_0);
    v18 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0Tm(v16 + v18);
    sub_188A5EBAC(&v20, v16 + v18);
    swift_endAccess();
    [v2 setGlass:v16 forState:a2];

    return sub_188B7533C(v14);
  }
}

uint64_t _UIFloatingContentView.glass(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [v2 glassForState_];
  if (v4)
  {
    v5 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
    v6 = v4;
    swift_beginAccess();
    sub_188A53994(v6 + v5, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
    v7 = type metadata accessor for _Glass(0);
    swift_dynamicCast();
    return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for _Glass(0);
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

id _UIFloatingContentView.setBackgroundMaterial(_:for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_188A3F29C(a1, &v7, &unk_1EA93C9A0);
  if (v8)
  {
    sub_188A5EBAC(&v7, v9);
    v5 = v10;
    __swift_project_boxed_opaque_existential_0(v9, v10);
    [v3 setBackgroundMaterial:sub_188C8D2B4(v5) forState:a2];
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
    sub_188A3F5FC(&v7, &unk_1EA93C9A0);
    return [v2 removeBackgroundMaterialForState_];
  }
}

double _UIFloatingContentView.backgroundMaterial(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ([v2 backgroundMaterialForState_])
  {
    swift_getObjectType();
    sub_18901EB8C(a2);

    swift_unknownObjectRelease();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_188F2B4B0(uint64_t a1)
{
  result = 0;
  if (a1 > 3)
  {
    if (a1 <= 7)
    {
      if (a1 == 4)
      {
        swift_getKeyPath();
        sub_188F2E184(&qword_1ED491960);
        sub_18A4A2C08();

        return *(v1 + 176);
      }

      if (a1 != 5)
      {
        return result;
      }

      swift_getKeyPath();
      sub_188F2E184(&qword_1ED491960);
      sub_18A4A2C08();

      if (*(v1 + 152) == 1)
      {
        swift_getKeyPath();
        sub_18A4A2C08();

        if (*(v1 + 184))
        {
          return *(v1 + 176);
        }
      }

      swift_getKeyPath();
      sub_18A4A2C08();

      if (*(v1 + 152))
      {
        v11 = 0.0;
      }

      else
      {
        v11 = *(v1 + 144);
      }

      swift_getKeyPath();
      sub_18A4A2C08();

      v12 = *(v1 + 176);
      v13 = *(v1 + 184);
      goto LABEL_59;
    }

    switch(a1)
    {
      case 8:
        swift_getKeyPath();
        sub_188F2E184(&qword_1ED491960);
        sub_18A4A2C08();

        return *(v1 + 192);
      case 10:
        swift_getKeyPath();
        sub_188F2E184(&qword_1ED491960);
        sub_18A4A2C08();

        if (*(v1 + 168) != 1 || (swift_getKeyPath(), sub_18A4A2C08(), , (*(v1 + 200) & 1) == 0))
        {
          swift_getKeyPath();
          sub_18A4A2C08();

          v4 = *(v1 + 160);
          v5 = *(v1 + 168);
          goto LABEL_55;
        }

        break;
      case 12:
        swift_getKeyPath();
        sub_188F2E184(&qword_1ED491960);
        sub_18A4A2C08();

        if (*(v1 + 184) != 1 || (swift_getKeyPath(), sub_18A4A2C08(), , (*(v1 + 200) & 1) == 0))
        {
          swift_getKeyPath();
          sub_18A4A2C08();

          v4 = *(v1 + 176);
          v5 = *(v1 + 184);
LABEL_55:
          if (v5)
          {
            v11 = 0.0;
          }

          else
          {
            v11 = v4;
          }

          swift_getKeyPath();
          sub_18A4A2C08();

          v12 = *(v1 + 192);
          v13 = *(v1 + 200);
LABEL_59:
          if (v13)
          {
            v12 = 0.0;
          }

          if (v11 > v12)
          {
            v12 = v11;
          }

          return *&v12;
        }

        break;
      default:
        return result;
    }

    return *(v1 + 192);
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      swift_getKeyPath();
      sub_188F2E184(&qword_1ED491960);
      sub_18A4A2C08();

      return *(v1 + 160);
    }

    swift_getKeyPath();
    sub_188F2E184(&qword_1ED491960);
    sub_18A4A2C08();

    if (*(v1 + 152) == 1)
    {
      swift_getKeyPath();
      sub_18A4A2C08();

      if (*(v1 + 168))
      {
        return *(v1 + 160);
      }
    }

    swift_getKeyPath();
    sub_18A4A2C08();

    if (*(v1 + 152))
    {
      v11 = 0.0;
    }

    else
    {
      v11 = *(v1 + 144);
    }

    swift_getKeyPath();
    sub_18A4A2C08();

    v12 = *(v1 + 160);
    v13 = *(v1 + 168);
    goto LABEL_59;
  }

  if (a1 == -1)
  {
    swift_getKeyPath();
    sub_188F2E184(&qword_1ED491960);
    sub_18A4A2C08();

    if (*(v1 + 152) == 1)
    {
      swift_getKeyPath();
      sub_18A4A2C08();

      if (*(v1 + 168) == 1)
      {
        swift_getKeyPath();
        sub_18A4A2C08();

        if (*(v1 + 184) == 1)
        {
          swift_getKeyPath();
          sub_18A4A2C08();

          if (*(v1 + 200))
          {
            return *(v1 + 192);
          }
        }
      }
    }

    swift_getKeyPath();
    sub_18A4A2C08();

    v6 = 0.0;
    if (*(v1 + 152))
    {
      v7 = 0.0;
    }

    else
    {
      v7 = *(v1 + 144);
    }

    swift_getKeyPath();
    sub_18A4A2C08();

    if (*(v1 + 168))
    {
      v8 = 0.0;
    }

    else
    {
      v8 = *(v1 + 160);
    }

    swift_getKeyPath();
    sub_18A4A2C08();

    if (!*(v1 + 184))
    {
      v6 = *(v1 + 176);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934210);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64BFB0;
    swift_getKeyPath();
    sub_18A4A2C08();

    if (*(v1 + 200) != 1)
    {
      v10 = *(v1 + 192);
      *(inited + 32) = v10;

      if (v7 > v8)
      {
        v14 = v7;
      }

      else
      {
        v14 = v8;
      }

      if (v14 <= v6)
      {
        v14 = v6;
      }

      if (v14 > v10)
      {
        v10 = v14;
      }

      return *&v10;
    }

    *(inited + 32) = 0;

    if (v7 <= v8)
    {
      if (v8 > v6)
      {
        if (v8 > 0.0)
        {
          v10 = v8;
        }

        else
        {
          v10 = 0.0;
        }

        return *&v10;
      }
    }

    else if (v7 > v6)
    {
      if (v7 > 0.0)
      {
        v10 = v7;
      }

      else
      {
        v10 = 0.0;
      }

      return *&v10;
    }

    if (v6 > 0.0)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0.0;
    }

    return *&v10;
  }

  if (a1 == 1)
  {
    swift_getKeyPath();
    sub_188F2E184(&qword_1ED491960);
    sub_18A4A2C08();

    return *(v1 + 144);
  }

  return result;
}

void sub_188F2BE40(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4[7], v5), vceqq_f64(v4[8], v6)))))
  {
    v4[7].f64[0] = a1;
    v4[7].f64[1] = a2;
    v4[8].f64[0] = a3;
    v4[8].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188F2E184(&qword_1ED491960);
    sub_18A4A2BF8();
  }
}

uint64_t sub_188F2BF74()
{
  v1 = COERCE_DOUBLE(sub_188F2D504(1));
  v3 = v2;
  v4 = COERCE_DOUBLE(sub_188F2D504(2));
  v6 = v5;
  v7 = COERCE_DOUBLE(sub_188F2D504(4));
  v9 = v8;
  v10 = COERCE_DOUBLE(sub_188F2D504(8));
  v12 = v11;
  v13 = *(v0 + 96);
  if (!*(v13 + 16))
  {
LABEL_71:
    sub_188F2CC54(*&v1, v3 & 1);
    sub_188F2CED8(*&v4, v6 & 1);
    sub_188F2D15C(*&v7, v9 & 1);
    return sub_188F2D3E0(*&v10, v12 & 1);
  }

  v34 = *(v13 + 16);

  v14 = v34;
  v15 = 0;
  v16 = v12;
  while (v15 < *(v13 + 16))
  {
    v19 = *(v13 + 8 * v15 + 32);
    if (v19 <= 4)
    {
      if (v19 == -1)
      {
        if (v3)
        {
          v22 = 0.0;
        }

        else
        {
          v22 = v1;
        }

        if (v6)
        {
          v23 = 0.0;
        }

        else
        {
          v23 = v4;
        }

        if (v9)
        {
          v24 = 0.0;
        }

        else
        {
          v24 = v7;
        }

        v25 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934210);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18A64BFB0;
        if ((v25 & 1) == 0)
        {
          v27 = v10;
          *(inited + 32) = v10;

          if (v22 > v23)
          {
            v32 = v22;
          }

          else
          {
            v32 = v23;
          }

          if (v32 <= v24)
          {
            v32 = v24;
          }

          v14 = v34;
          if (v32 > v10)
          {
            v27 = v32;
          }

          goto LABEL_69;
        }

        *(inited + 32) = 0;

        if (v22 <= v23)
        {
          v14 = v34;
          if (v23 > v24)
          {
            if (v23 > 0.0)
            {
              v27 = v23;
            }

            else
            {
              v27 = 0.0;
            }

            goto LABEL_69;
          }
        }

        else
        {
          v14 = v34;
          if (v22 > v24)
          {
            if (v22 > 0.0)
            {
              v27 = v22;
            }

            else
            {
              v27 = 0.0;
            }

LABEL_69:
            v16 = 0;
            v9 = 0;
            v6 = 0;
            v3 = 0;
            v10 = v27;
            v7 = v27;
            v4 = v27;
            v1 = v27;
            goto LABEL_10;
          }
        }

        if (v24 > 0.0)
        {
          v27 = v24;
        }

        else
        {
          v27 = 0.0;
        }

        goto LABEL_69;
      }

      if (v19 != 3)
      {
        goto LABEL_73;
      }

      v30 = v1;
      if (v3)
      {
        v30 = 0.0;
      }

      v31 = v4;
      if (v6)
      {
        v31 = 0.0;
      }

      if (v30 <= v31)
      {
        v30 = v31;
      }

      v4 = v30;
      v1 = v30;
      v6 = 0;
      goto LABEL_54;
    }

    switch(v19)
    {
      case 5:
        v28 = v1;
        if (v3)
        {
          v28 = 0.0;
        }

        v29 = v7;
        if (v9)
        {
          v29 = 0.0;
        }

        if (v28 <= v29)
        {
          v28 = v29;
        }

        v7 = v28;
        v1 = v28;
        v9 = 0;
LABEL_54:
        v3 = 0;
        break;
      case 10:
        v17 = v4;
        if (v6)
        {
          v17 = 0.0;
        }

        v18 = v10;
        if (v16)
        {
          v18 = 0.0;
        }

        if (v17 <= v18)
        {
          v17 = v18;
        }

        v10 = v17;
        v4 = v17;
        v16 = 0;
        v6 = 0;
        break;
      case 12:
        v20 = v7;
        if (v9)
        {
          v20 = 0.0;
        }

        v21 = v10;
        if (v16)
        {
          v21 = 0.0;
        }

        if (v20 <= v21)
        {
          v20 = v21;
        }

        v10 = v20;
        v7 = v20;
        v16 = 0;
        v9 = 0;
        break;
      default:
        goto LABEL_73;
    }

LABEL_10:
    if (v14 == ++v15)
    {
      v12 = v16;

      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_73:
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000039, 0x800000018A693220);
  type metadata accessor for UIRectCorner(0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

_BYTE *sub_188F2C344(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    while ((v1 & 1) != 0)
    {
      swift_getKeyPath();
      sub_188F2E184(&qword_1ED491960);

      sub_18A4A2C08();

      if (!Strong[152])
      {
        v1 &= ~1uLL;
      }

      if ((v1 & 2) != 0)
      {
        goto LABEL_12;
      }

LABEL_14:
      if ((v1 & 4) != 0)
      {
        swift_getKeyPath();
        sub_188F2E184(&qword_1ED491960);
        sub_18A4A2C08();

        if (!Strong[184])
        {
          v1 &= ~4uLL;
        }

        if ((v1 & 8) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((v1 & 8) == 0)
      {
        goto LABEL_4;
      }

      swift_getKeyPath();
      sub_188F2E184(&qword_1ED491960);
      sub_18A4A2C08();

      if (Strong[200])
      {
        goto LABEL_5;
      }

      v1 &= ~8uLL;
LABEL_4:
      if (!v1)
      {

        return Strong;
      }

LABEL_5:
      v3 = swift_weakLoadStrong();

      Strong = v3;
      if (!v3)
      {
        return Strong;
      }
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_12:
    swift_getKeyPath();
    sub_188F2E184(&qword_1ED491960);
    sub_18A4A2C08();

    if (!Strong[168])
    {
      v1 &= ~2uLL;
    }

    goto LABEL_14;
  }

  return Strong;
}

uint64_t sub_188F2C5A8()
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  return swift_unknownObjectWeakLoadStrong();
}

double sub_188F2C638@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v10[0] = v1;
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  if (*(v1 + 152))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *(v1 + 144);
  }

  swift_getKeyPath();
  *&v10[0] = v1;
  sub_18A4A2C08();

  if (*(v1 + 168))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *(v1 + 160);
  }

  swift_getKeyPath();
  *&v10[0] = v1;
  sub_18A4A2C08();

  if (*(v1 + 184))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = *(v1 + 176);
  }

  swift_getKeyPath();
  *&v10[0] = v1;
  sub_18A4A2C08();

  if (*(v1 + 200))
  {
    v6 = 0.0;
  }

  else
  {
    v6 = *(v1 + 192);
  }

  CACornerRadiiMake(v10, v3, v4, v5, v6);
  v7 = v10[1];
  *a1 = v10[0];
  a1[1] = v7;
  result = *&v11;
  v9 = v12;
  a1[2] = v11;
  a1[3] = v9;
  return result;
}

uint64_t sub_188F2C82C@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_188F2C8C4()
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2BF8();
}

double sub_188F2C998()
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  return *(v0 + 112);
}

__n128 sub_188F2CA28@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  result = *(v3 + 112);
  v5 = *(v3 + 128);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

double *sub_188F2CAE8(double *result, double a2, double a3, double a4, double a5)
{
  result[14] = a2;
  result[15] = a3;
  result[16] = a4;
  result[17] = a5;
  return result;
}

uint64_t sub_188F2CAF4()
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  return *(v0 + 144);
}

uint64_t sub_188F2CB84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  v5 = *(v3 + 152);
  *a2 = *(v3 + 144);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_188F2CC54(uint64_t result, char a2)
{
  if ((*(v2 + 152) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 144) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 144) = *&result;
    *(v2 + 152) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2BF8();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_188F2CD78()
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  return *(v0 + 160);
}

uint64_t sub_188F2CE08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  v5 = *(v3 + 168);
  *a2 = *(v3 + 160);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_188F2CED8(uint64_t result, char a2)
{
  if ((*(v2 + 168) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 160) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 160) = *&result;
    *(v2 + 168) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2BF8();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_188F2CFFC()
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  return *(v0 + 176);
}

uint64_t sub_188F2D08C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  v5 = *(v3 + 184);
  *a2 = *(v3 + 176);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_188F2D15C(uint64_t result, char a2)
{
  if ((*(v2 + 184) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 176) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 176) = *&result;
    *(v2 + 184) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2BF8();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_188F2D280()
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  return *(v0 + 192);
}

uint64_t sub_188F2D310@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  v5 = *(v3 + 200);
  *a2 = *(v3 + 192);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_188F2D3E0(uint64_t result, char a2)
{
  if ((*(v2 + 200) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 192) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 192) = *&result;
    *(v2 + 200) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2BF8();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_188F2D504(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 80);
  v22 = *(v1 + 64);
  v23 = v4;
  v5 = *(v1 + 48);
  v21[0] = *(v1 + 32);
  v21[1] = v5;
  v16 = v22;
  v17 = *(v1 + 80);
  v24 = *(v1 + 96);
  v18 = *(v1 + 96);
  v14 = v21[0];
  v15 = v3;
  sub_188E41F80(v21, v25);
  sub_18904B624(a1, &v19);
  v25[2] = v16;
  v25[3] = v17;
  v26 = v18;
  v25[0] = v14;
  v25[1] = v15;
  sub_188E4342C(v25);
  if (v20 == 255)
  {
    return 0;
  }

  v6 = v19;
  if (v20)
  {
    sub_188F2D6AC(a1);
    v6 = v7;
  }

  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong bounds];
    v10 = CGRectGetWidth(v27) * 0.5;
    [v9 bounds];
    Height = CGRectGetHeight(v28);
    swift_unknownObjectRelease();
    v12 = Height * 0.5;
    if (Height * 0.5 >= v10)
    {
      v12 = v10;
    }

    if (v12 < v6)
    {
      v6 = v12;
    }
  }

  return *&v6;
}

uint64_t sub_188F2D6AC(uint64_t a1)
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_188F2C344(a1);
    if (!v4)
    {
      return swift_unknownObjectRelease();
    }

    v5 = v4;
    swift_getKeyPath();
    sub_18A4A2C08();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      swift_unknownObjectRelease();
    }

    v7 = Strong;
    *&v8 = COERCE_DOUBLE(sub_188F2B4B0(a1));
    if (v9)
    {
      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD000000000000047, 0x800000018A693260);
      type metadata accessor for UIRectCorner(0);
      sub_18A4A82D8();
      MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    }

    else
    {
      v10 = *&v8;
      [v7 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      rect = v17;
      swift_getKeyPath();
      sub_18A4A2C08();

      v18 = v5[15];
      v19 = v5[17];
      if (a1 > 3)
      {
        if (a1 == 4)
        {
          v33.origin.x = v12;
          v33.origin.y = v14;
          v33.size.width = v16;
          v33.size.height = rect;
          v21 = v5[16];
          v20 = CGRectGetHeight(v33) - v10 - v21;
          goto LABEL_15;
        }

        v30 = v5[16];
        if (a1 == 8)
        {
          v34.origin.x = v12;
          v34.origin.y = v14;
          v34.size.width = v16;
          v34.size.height = rect;
          v18 = CGRectGetWidth(v34) - v10 - v19;
          v35.origin.x = v12;
          v35.origin.y = v14;
          v35.size.width = v16;
          v35.size.height = rect;
          v20 = CGRectGetHeight(v35) - v10 - v30;
          goto LABEL_15;
        }
      }

      else
      {
        v20 = v5[14];
        if (a1 == 1)
        {
LABEL_15:
          [v3 bounds];
          [v3 convertRect:v7 toCoordinateSpace:?];
          v39.origin.x = v22;
          v39.origin.y = v23;
          v39.size.width = v24;
          v39.size.height = v25;
          v36.origin.x = v18;
          v36.origin.y = v20;
          v36.size.width = v10;
          v36.size.height = v10;
          v37 = CGRectIntersection(v36, v39);
          x = v37.origin.x;
          y = v37.origin.y;
          width = v37.size.width;
          height = v37.size.height;
          CGRectGetWidth(v37);
          v38.origin.x = x;
          v38.origin.y = y;
          v38.size.width = width;
          v38.size.height = height;
          CGRectGetHeight(v38);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        if (a1 == 2)
        {
          v32.origin.x = v12;
          v32.origin.y = v14;
          v32.size.width = v16;
          v32.size.height = rect;
          v18 = CGRectGetWidth(v32) - v10 - v19;
          goto LABEL_15;
        }
      }

      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD000000000000032, 0x800000018A6932B0);
      type metadata accessor for UIRectCorner(0);
      sub_18A4A82D8();
      MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    }

    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t sub_188F2DAFC()
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960);
  sub_18A4A2C08();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = sub_18A4A72F8();
    v3 = v2;
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0xE300000000000000;
    v1 = 7104878;
  }

  v4 = 0xEB00000000646569;
  v5 = 0x6669636570736E75;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000014, 0x800000018A6931D0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0x3A72656E776F203BLL, 0xE900000000000020);
  MEMORY[0x18CFE22D0](v1, v3);

  MEMORY[0x18CFE22D0](0x206969646172203BLL, 0xEB0000000028203DLL);
  swift_getKeyPath();
  sub_18A4A2C08();

  v6 = 0x6669636570736E75;
  v7 = 0xEB00000000646569;
  if ((v0[152] & 1) == 0)
  {
    v6 = sub_18A4A76F8();
    v7 = v8;
  }

  MEMORY[0x18CFE22D0](v6, v7);

  MEMORY[0x18CFE22D0](8236, 0xE200000000000000);
  swift_getKeyPath();
  sub_18A4A2C08();

  v9 = 0x6669636570736E75;
  v10 = 0xEB00000000646569;
  if ((v0[168] & 1) == 0)
  {
    v9 = sub_18A4A76F8();
    v10 = v11;
  }

  MEMORY[0x18CFE22D0](v9, v10);

  MEMORY[0x18CFE22D0](8236, 0xE200000000000000);
  swift_getKeyPath();
  sub_18A4A2C08();

  v12 = 0x6669636570736E75;
  v13 = 0xEB00000000646569;
  if ((v0[184] & 1) == 0)
  {
    v12 = sub_18A4A76F8();
    v13 = v14;
  }

  MEMORY[0x18CFE22D0](v12, v13);

  MEMORY[0x18CFE22D0](8236, 0xE200000000000000);
  swift_getKeyPath();
  sub_18A4A2C08();

  if ((v0[200] & 1) == 0)
  {
    v5 = sub_18A4A76F8();
    v4 = v15;
  }

  MEMORY[0x18CFE22D0](v5, v4);

  MEMORY[0x18CFE22D0](15913, 0xE200000000000000);
  return 0;
}

uint64_t sub_188F2DE7C()
{
  sub_188B223B8(v0 + 24);

  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC5UIKit17_UICornerProvider___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for _UICornerProvider()
{
  result = qword_1ED491AE0;
  if (!qword_1ED491AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_188F2DF84()
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

uint64_t sub_188F2E070()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](*(v1 + 16));
  return sub_18A4A88E8();
}

uint64_t sub_188F2E0E8()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](*(v1 + 16));
  return sub_18A4A88E8();
}

uint64_t sub_188F2E184(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _UICornerProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_188F2E1C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 192) = *(v0 + 24);
  *(v1 + 200) = v2;
}

void sub_188F2E1DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 176) = *(v0 + 24);
  *(v1 + 184) = v2;
}

void sub_188F2E1F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 160) = *(v0 + 24);
  *(v1 + 168) = v2;
}

void sub_188F2E204()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 144) = *(v0 + 24);
  *(v1 + 152) = v2;
}

__n128 sub_188F2E278()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 112) = result;
  *(v1 + 128) = v3;
  return result;
}

uint64_t sub_188F2E28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  swift_weakInit();
  *(a3 + 112) = UIEdgeInsetsZero;
  *(a3 + 144) = 0;
  *(a3 + 152) = 1;
  *(a3 + 160) = 0;
  *(a3 + 168) = 1;
  *(a3 + 176) = 0;
  *(a3 + 184) = 1;
  *(a3 + 192) = 0;
  *(a3 + 200) = 1;
  sub_18A4A2C38();
  swift_unknownObjectRetain();
  sub_188B223B8(a3 + 24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v6 = *(a2 + 48);
  *(a3 + 64) = *(a2 + 32);
  *(a3 + 80) = v6;
  *(a3 + 96) = *(a2 + 64);
  v7 = *(a2 + 16);
  *(a3 + 32) = *a2;
  *(a3 + 48) = v7;
  *(a3 + 16) = a1;
  return a3;
}

uint64_t sub_188F2E36C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a5)
  {
    [*(v6 + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion) increment];
    v14 = a1;
    if (a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = *(v6 + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion);
  v26 = a5;
  v27 = a6;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_188A4A8F0;
  v25 = &block_descriptor_54_0;
  v12 = _Block_copy(&aBlock);
  sub_188D738F4(a5);
  sub_188D738F4(a5);
  v13 = v11;

  [v13 addCompletion_];
  _Block_release(v12);

  sub_188A55B8C(a5);
  v14 = a1;
  if (!a1)
  {
LABEL_3:
    v14 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.4];
  }

LABEL_4:
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v26 = sub_188D84768;
  v27 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_188A4A8F0;
  v25 = &block_descriptor_31;
  v17 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_188D764CC;
  v27 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_188C3DD6C;
  v25 = &block_descriptor_51_0;
  v19 = _Block_copy(&aBlock);

  [v15 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v19);
  _Block_release(v17);
  return swift_unknownObjectRelease();
}

id sub_188F2E75C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____UIMagicMorphAnimation_intermediateStepDelayTimer;
  v3 = *&v0[OBJC_IVAR____UIMagicMorphAnimation_intermediateStepDelayTimer];
  if (v3)
  {
    v4 = v3;
    [v4 invalidate];
    v5 = *&v0[v2];
    *&v0[v2] = 0;

    [*&v0[OBJC_IVAR____UIMagicMorphAnimation_groupCompletion] complete];
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_188F2E908(char *a1, uint64_t a2, int a3, int a4, void *a5, char *a6, uint64_t (*a7)(), uint64_t (*a8)())
{
  v9 = v8;
  v331 = a8;
  v332 = a5;
  v333 = a6;
  v334 = a7;
  v324 = a4;
  *&v337 = a2;
  v12 = sub_18A4A6E18();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v314 = &v308 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = sub_18A4A6E58();
  v15 = *(v315 - 8);
  MEMORY[0x1EEE9AC00](v315);
  v312 = &v308 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_18A4A6E88();
  v311 = *(v319 - 8);
  MEMORY[0x1EEE9AC00](v319);
  v310 = &v308 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v318 = &v308 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v308 - v22;
  v24 = [a1 target];
  v25 = [v24 container];

  v26 = [v25 _window];
  v328 = v26;
  if (!v26)
  {
LABEL_116:
    aBlock.origin.x = 0.0;
    aBlock.origin.y = -2.68156159e154;
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000061, 0x800000018A693850);
    v303 = [a1 view];
    v304 = [v303 _conciseParentDescription];

    v305 = sub_18A4A7288();
    v307 = v306;

    MEMORY[0x18CFE22D0](v305, v307);

    result = sub_18A4A8398();
    __break(1u);
    return result;
  }

  if ([a1 _resolvedBackgroundMaterial])
  {
    swift_getObjectType();
    sub_18901EB8C(&aBlock);
    swift_unknownObjectRelease();
    if (*&aBlock.size.height)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
      v27 = type metadata accessor for _Glass(0);
      v28 = swift_dynamicCast();
      (*(*(v27 - 8) + 56))(v23, v28 ^ 1u, 1, v27);
      goto LABEL_7;
    }
  }

  else
  {
    *&v358 = 0;
    memset(&aBlock, 0, sizeof(aBlock));
  }

  sub_188A3F5FC(&aBlock, &unk_1EA93C9A0);
  v27 = type metadata accessor for _Glass(0);
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
LABEL_7:
  v340 = a1;
  LODWORD(v335.width) = a3;
  v313 = v15;
  v316 = v13;
  v317 = v12;
  type metadata accessor for _Glass(0);
  LODWORD(v15) = (*(*(v27 - 8) + 48))(v23, 1, v27);
  sub_188A3F5FC(v23, &unk_1EA93BA10);
  v338 = v9;
  isEscapingClosureAtFileLocation = *(v9 + OBJC_IVAR____UIMagicMorphAnimation_morphView);
  v30 = *(v337 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_crossBlurWhenMorphing);
  v31 = &qword_1EA937000;
  if (v30 != 2)
  {
    goto LABEL_27;
  }

  a1 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____UIMagicMorphView_crossBlurWhenMorphing);
  v32 = [v340 view];
  v33 = &selRef__layoutSubviewsForBoundsChange_;
  v34 = [v32 _matchedViewIdentifier];

  if (!v34)
  {
    goto LABEL_24;
  }

  v339 = sub_18A4A7288();
  v36 = v35;

  v37 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
  v38 = v338;
  swift_beginAccess();
  v39 = *(v38 + v37);
  if (v39 >> 62)
  {
    v40 = sub_18A4A7F68();
    if (!v40)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_23;
    }
  }

  v41 = v40 - 1;
  if (__OFSUB__(v40, 1))
  {
    goto LABEL_111;
  }

  if ((v39 & 0xC000000000000001) != 0)
  {
    goto LABEL_112;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_114;
  }

  v42 = *(v39 + 8 * v41 + 32);
  while (1)
  {
    v43 = *&v42[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview];

    v44 = [v43 view];
    v45 = [v44 v33[370]];

    if (!v45)
    {
LABEL_23:

LABEL_24:
      if (v15)
      {
        LOBYTE(v30) = a1;
      }

      else
      {
        LOBYTE(v30) = 1;
      }

      goto LABEL_27;
    }

    v46 = sub_18A4A7288();
    v48 = v47;

    if (v339 == v46 && v36 == v48)
    {

      LOBYTE(v30) = 0;
      goto LABEL_27;
    }

    v49 = sub_18A4A86C8();

    LOBYTE(v30) = 0;
    if ((v49 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    sub_188D738F8(v30 & 1);
    v50 = v31[27];
    v51 = v338;
    swift_beginAccess();
    v52 = *(v51 + v50);
    if (!(v52 >> 62))
    {
      *&v329 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_29;
    }

    while (1)
    {
      *&v329 = sub_18A4A7F68();
      v52 = *(v51 + v50);
LABEL_29:
      v53 = v340;
      *&v336.x = isEscapingClosureAtFileLocation;
      v330 = v50;
      isEscapingClosureAtFileLocation = v52 >> 62 ? sub_18A4A7F68() : *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!isEscapingClosureAtFileLocation)
      {
        break;
      }

      v54 = 0;
      v339 = (v52 & 0xC000000000000001);
      v50 = v52 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v339)
        {
          v55 = sub_188E49688(v54, v52);
        }

        else
        {
          if (v54 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_107;
          }

          v55 = *(v52 + 8 * v54 + 32);
        }

        v56 = v55;
        v57 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        v51 = &selRef_verticalMenuCornerRadius;
        v58 = [*&v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview] view];
        v59 = [v53 view];

        if (v58 == v59)
        {
          goto LABEL_45;
        }

        ++v54;
        v53 = v340;
        if (v57 == isEscapingClosureAtFileLocation)
        {
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_107:
      __break(1u);
    }

LABEL_41:

    v60 = type metadata accessor for _UIMagicMorphAnimation.Item();
    v61 = objc_allocWithZone(v60);
    v61[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_tracksPresentationLayer] = 1;
    *&v61[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView] = 0;
    *&v61[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_morphView] = 0;
    v62 = &v61[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
    *v62 = 0;
    v62[1] = 0;
    v63 = &v61[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion];
    *v63 = 0;
    v63[1] = 0;
    *&v61[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview] = v53;
    v64 = v334;
    v65 = v331;
    *v63 = v334;
    v63[1] = v65;
    sub_188D738F4(v64);
    v341.receiver = v61;
    v341.super_class = v60;
    v66 = v53;
    v67 = objc_msgSendSuper2(&v341, sel_init);
    v68 = &v67[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
    v69 = *&v67[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
    v71 = v332;
    v70 = v333;
    *v68 = v332;
    *(v68 + 1) = v70;
    v72 = v67;
    sub_188A55B8C(v69);
    v73 = *&v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview];
    sub_188D738F4(v71);
    sub_188A34624(0, &qword_1ED48F680);
    v74 = v73;
    v75 = sub_18A4A7518();
    [v74 set:v75 overlayViews:?];

    v72[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_tracksPresentationLayer] = 1;
    v76 = v338;
    v77 = v330;
    swift_beginAccess();
    v56 = v72;
    MEMORY[0x18CFE2450]();
    if (*((*&v77[v76] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v77[v76] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
    swift_endAccess();
    v78 = objc_opt_self();
    v79 = swift_allocObject();
    *(v79 + 16) = v338;
    *(v79 + 24) = v56;
    *(v79 + 32) = v324 & 1;
    v80 = swift_allocObject();
    v81 = sub_188F365F8;
    *(v80 + 16) = sub_188F365F8;
    *(v80 + 24) = v79;
    *&v358 = sub_188E3FE50;
    *(&v358 + 1) = v80;
    *&aBlock.origin.x = MEMORY[0x1E69E9820];
    *&aBlock.origin.y = 1107296256;
    v31 = v338;
    *&aBlock.size.width = sub_188A4A968;
    *&aBlock.size.height = &block_descriptor_456;
    v82 = _Block_copy(&aBlock);
    v83 = v31;

    [v78 performWithoutAnimation_];
    _Block_release(v82);
    LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

    if (v78)
    {
      __break(1u);
LABEL_45:

      v84 = &v56[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
      v85 = *&v56[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
      v87 = v332;
      v86 = v333;
      *v84 = v332;
      *(v84 + 1) = v86;
      v56 = v56;
      sub_188A55B8C(v85);
      v56[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_tracksPresentationLayer] = 1;
      sub_188D738F4(v87);
      v88 = v340;
      sub_188F34A2C(v340);

      x = v336.x;
      sub_1890DFB38(v88);
      *(*&x + OBJC_IVAR____UIMagicMorphView_contentSizeDidChange) = 1;
      [*&x setNeedsLayout];
      if ([objc_opt_self() _isInAnimationBlock])
      {
        [*&x layoutIfNeeded];
      }

      sub_1890E07A8();
      v81 = v334;
      if (v334)
      {
        v90 = &v56[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion];
        v91 = *&v56[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion];
        if (v91)
        {
          v92 = v90[1];
          v93 = swift_allocObject();
          v93[2] = v91;
          v93[3] = v92;
          v94 = v331;
          v93[4] = v81;
          v93[5] = v94;
          v95 = *v90;
          *v90 = sub_188F365B4;
          v90[1] = v93;
          sub_188D738F4(v81);
          sub_188D738F4(v91);
          sub_188A55B8C(v95);
        }

        else
        {
          v96 = v331;
          *v90 = v334;
          v90[1] = v96;
        }

        v81 = 0;
      }

      v79 = 0;
      v31 = v338;
    }

    v323 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview;
    v97 = *&v56[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview];
    v98 = v56;
    v99 = [v97 target];
    v36 = [v99 container];
    v100 = swift_allocObject();
    v333 = v98;
    *(v100 + 16) = v98;
    v15 = sub_188D73B5C(sub_188F36814, v100);

    v331 = v36;
    v332 = v99;
    v330 = v15;
    v325 = v81;
    v326 = v79;
    if (v329)
    {
      v321 = v56;
      v101 = OBJC_IVAR____UIMagicMorphAnimation_groupCompletion;
      [*(v31 + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion) increment];
      *&v329 = *(v31 + OBJC_IVAR____UIMagicMorphAnimation_animationContainerView);
      v102 = OBJC_IVAR____UIMagicMorphDestination_preview;
      v103 = *(v15 + OBJC_IVAR____UIMagicMorphDestination_preview);
      v104 = *(v329 + OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView);
      [v103 _center];
      [v104 convertPoint:v36 fromCoordinateSpace:?];
      v106 = v105;
      v108 = v107;

      v109 = v338;
      [*(v15 + v102) _sizeRespectingOverridesUsingPresentationLayer_];
      v111 = v110;
      v113 = v112;
      v114 = *(v337 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_widthSpring);
      v115 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v116 = swift_allocObject();
      v116[2] = v115;
      v116[3] = v111;
      v116[4] = v113;
      v340 = v101;
      v117 = *(v101 + v109);

      [v117 increment];
      v118 = v114;
      if (!v114)
      {
        v118 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.4];
      }

      v119 = objc_opt_self();
      v120 = swift_allocObject();
      *(v120 + 16) = sub_188F36460;
      *(v120 + 24) = v116;
      *&v358 = sub_188E3FE58;
      *(&v358 + 1) = v120;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_274;
      v121 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v122 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v358 = sub_188E3FE98;
      *(&v358 + 1) = v122;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_279;
      v123 = _Block_copy(&aBlock);

      v339 = v119;
      [v119 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v123);
      _Block_release(v121);

      swift_unknownObjectRelease();
      v124 = *(v337 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_heightSpring);
      v125 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v126 = swift_allocObject();
      v126[2] = v125;
      v126[3] = v111;
      v126[4] = v113;
      v127 = *(v340 + v109);

      [v127 increment];
      v128 = v124;
      v129 = v109;
      if (!v124)
      {
        v128 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.4];
      }

      v130 = swift_allocObject();
      *(v130 + 16) = sub_188F3646C;
      *(v130 + 24) = v126;
      *&v358 = sub_188E3FE58;
      *(&v358 + 1) = v130;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_290;
      v131 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v132 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v358 = sub_188E3FE98;
      *(&v358 + 1) = v132;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_295;
      v133 = _Block_copy(&aBlock);

      [v339 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v133);
      _Block_release(v131);

      swift_unknownObjectRelease();
      v134 = *(v337 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_morphSpring);
      v135 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v136 = swift_allocObject();
      v137 = v330;
      *&v320 = v136;
      *(v136 + 16) = v135;
      *(v136 + 24) = v137;
      v138 = swift_allocObject();
      v139 = v333;
      *(v138 + 16) = v333;
      *(v138 + 24) = v129;
      v140 = *(v340 + v129);
      *&v358 = sub_188F3675C;
      *(&v358 + 1) = v138;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_305_0;
      v141 = _Block_copy(&aBlock);
      swift_retain_n();
      v142 = v129;
      v322 = v139;
      v143 = v137;
      v327 = v135;

      v144 = v140;

      [v144 addCompletion_];
      _Block_release(v141);

      v145 = v134;
      if (!v134)
      {
        v145 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.4];
      }

      v146 = swift_allocObject();
      v147 = v320;
      *(v146 + 16) = sub_188F36478;
      *(v146 + 24) = v147;
      *&v358 = sub_188E3FE58;
      *(&v358 + 1) = v146;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_312_0;
      v148 = _Block_copy(&aBlock);
      v309 = v134;
      swift_unknownObjectRetain();

      v149 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v358 = sub_188E3FE98;
      *(&v358 + 1) = v149;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_317;
      v150 = _Block_copy(&aBlock);

      [v339 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v150);
      _Block_release(v148);

      swift_unknownObjectRelease();
      v151 = objc_opt_self();
      v152 = [v151 behaviorWithDampingRatio:0.8 response:0.4];
      v153 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v154 = swift_allocObject();
      v155 = v337;
      *(v154 + 16) = v153;
      *(v154 + 24) = v155;
      v156 = *(v340 + v338);

      v157 = v155;
      [v156 increment];
      v158 = v152;
      v334 = v142;
      if (!v152)
      {
        v158 = [v151 behaviorWithDampingRatio:1.0 response:0.4];
      }

      v159 = swift_allocObject();
      *(v159 + 16) = sub_188F36480;
      *(v159 + 24) = v154;
      *&v358 = sub_188E3FE58;
      *(&v358 + 1) = v159;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_330;
      v160 = _Block_copy(&aBlock);
      v327 = v151;

      v161 = v152;

      v162 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v358 = sub_188E3FE98;
      *(&v358 + 1) = v162;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_335;
      v163 = _Block_copy(&aBlock);

      [v339 _animateUsingSpringBehavior_tracking_animations_completion_];
      v164 = v163;
      v165 = v327;
      _Block_release(v164);
      _Block_release(v160);

      swift_unknownObjectRelease();
      v166 = [v165 behaviorWithDampingRatio:0.6 response:1.0];
      v167 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v168 = swift_allocObject();
      *(v168 + 16) = v167;
      *(v168 + 24) = v157;
      v169 = v340;
      v170 = *(v340 + v338);
      *&v337 = v157;

      [v170 increment];
      v171 = v166;
      if (!v166)
      {
        v171 = [v165 behaviorWithDampingRatio:1.0 response:0.4];
      }

      v172 = swift_allocObject();
      *(v172 + 16) = sub_188F36488;
      *(v172 + 24) = v168;
      *&v358 = sub_188E3FE58;
      *(&v358 + 1) = v172;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_346;
      v173 = _Block_copy(&aBlock);

      v174 = v166;

      v175 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v358 = sub_188E3FE98;
      *(&v358 + 1) = v175;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_351;
      v176 = _Block_copy(&aBlock);

      [v339 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v176);
      _Block_release(v173);

      swift_unknownObjectRelease();
      v177 = *(v337 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_positionXSpring);
      v178 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v179 = swift_allocObject();
      v179[2] = v178;
      v179[3] = v106;
      v179[4] = v108;
      v180 = *(v169 + v338);

      [v180 increment];
      v181 = v177;
      width_low = LOBYTE(v335.width);
      if (!v177)
      {
        v181 = [v327 behaviorWithDampingRatio:1.0 response:0.4];
      }

      v183 = swift_allocObject();
      *(v183 + 16) = sub_188F36490;
      *(v183 + 24) = v179;
      *&v358 = sub_188E3FE58;
      *(&v358 + 1) = v183;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_362;
      v184 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v185 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v358 = sub_188E3FE98;
      *(&v358 + 1) = v185;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_367;
      v186 = _Block_copy(&aBlock);

      v187 = v339;
      [v339 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v186);
      _Block_release(v184);

      swift_unknownObjectRelease();
      v188 = *(v337 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_positionYSpring);
      v189 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v190 = swift_allocObject();
      v190[2] = v189;
      v190[3] = v106;
      v190[4] = v108;
      v191 = *(v340 + v338);

      [v191 increment];
      v192 = v188;
      if (!v188)
      {
        v192 = [v327 behaviorWithDampingRatio:1.0 response:0.4];
      }

      v193 = swift_allocObject();
      *(v193 + 16) = sub_188F3649C;
      *(v193 + 24) = v190;
      *&v358 = sub_188E3FE58;
      *(&v358 + 1) = v193;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_378_0;
      v194 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v195 = swift_allocObject();
      v196 = v334;
      swift_unknownObjectWeakInit();
      *&v358 = sub_188E3FE98;
      *(&v358 + 1) = v195;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_383;
      v197 = _Block_copy(&aBlock);

      [v187 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v197);
      _Block_release(v194);

      swift_unknownObjectRelease();
      v198 = *(v337 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_transformSpring);
      v199 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      *&v336.x = OBJC_IVAR____UIMagicMorphAnimation_currentItem;
      v200 = *(v196 + OBJC_IVAR____UIMagicMorphAnimation_currentItem);
      v201 = swift_allocObject();
      v203 = v331;
      v202 = v332;
      v201[2] = v199;
      v201[3] = v202;
      v204 = v329;
      v201[4] = v200;
      v201[5] = v204;
      v201[6] = v203;
      v205 = *(v340 + v338);
      v206 = v200;
      v207 = v203;
      v208 = v202;
      v209 = v206;

      v210 = v204;
      [v205 increment];
      v211 = v198;
      if (!v198)
      {
        v211 = [v327 behaviorWithDampingRatio:1.0 response:0.4];
      }

      v212 = swift_allocObject();
      *(v212 + 16) = sub_188F364FC;
      *(v212 + 24) = v201;
      *&v358 = sub_188E3FE58;
      *(&v358 + 1) = v212;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_394;
      v213 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v214 = swift_allocObject();
      v215 = v334;
      swift_unknownObjectWeakInit();
      *&v358 = sub_188E3FE98;
      *(&v358 + 1) = v214;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_399_0;
      v216 = _Block_copy(&aBlock);

      [v339 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v216);
      _Block_release(v213);

      swift_unknownObjectRelease();
      v217 = *&v321[v323];
      sub_18923B914(&v343);

      v218 = v343;
      a1 = v215;
      v219 = v322;
      if (LOBYTE(v343) != 2)
      {
        v349 = v343;
        v350 = v344;
        v351 = v345;
        v352[0] = v346[0];
        *(v352 + 10) = *(v346 + 10);
        v220 = *(v215 + *&v336.x);
        if (!v220 || (v221 = *(v220 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview), sub_18923B914(v347), v335 = v347[1], v336 = v347[0], v329 = v347[2], v320 = v347[3], v222 = v348, v221, LOBYTE(v336.x) == 2) || (v354 = v344, v355 = v345, v356[0] = v346[0], *(v356 + 10) = *(v346 + 10), v353 = v218, aBlock.origin = v336, aBlock.size = v335, v358 = v329, v359 = v320, v360 = v222, (sub_1890844B4(&v353, &aBlock) & 1) == 0))
        {
          if (!v309)
          {
            goto LABEL_115;
          }

          objc_opt_self();
          v223 = swift_dynamicCastObjCClassUnconditional();
          sub_189082DE4(&v349, v223);
        }
      }

      v224 = *&v219[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
      if (v224)
      {
        v225 = *&v219[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations + 8];

        v226 = v327;
        v227 = [v327 behaviorWithDampingRatio:1.0 response:0.35];
        [*(v340 + v338) increment];
        v228 = v227;
        if (!v227)
        {
          v228 = [v226 behaviorWithDampingRatio:1.0 response:0.4];
        }

        v229 = swift_allocObject();
        *(v229 + 16) = v224;
        *(v229 + 24) = v225;
        *&v342.tx = sub_188E3FE58;
        *&v342.ty = v229;
        *&v342.a = MEMORY[0x1E69E9820];
        *&v342.b = 1107296256;
        *&v342.c = sub_188A4A8F0;
        *&v342.d = &block_descriptor_428;
        v230 = _Block_copy(&v342);
        sub_188D738F4(v224);
        v231 = v227;

        v232 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *&v342.tx = sub_188E3FE98;
        *&v342.ty = v232;
        *&v342.a = MEMORY[0x1E69E9820];
        *&v342.b = 1107296256;
        *&v342.c = sub_188C3DD6C;
        *&v342.d = &block_descriptor_433;
        v233 = _Block_copy(&v342);

        [v339 _animateUsingSpringBehavior_tracking_animations_completion_];
        _Block_release(v233);
        _Block_release(v230);

        swift_unknownObjectRelease();
        sub_188A55B8C(v224);
        v219 = v322;
      }

      if (UIAccessibilityPrefersCrossFadeTransitions())
      {
        goto LABEL_81;
      }

      if (a1[OBJC_IVAR____UIMagicMorphAnimation_reparentsDuringMorph] != 1)
      {
        goto LABEL_81;
      }

      if ((v324 & 1) == 0)
      {
        goto LABEL_81;
      }

      v252 = *&a1[OBJC_IVAR____UIMagicMorphAnimation_currentReparentingItem];
      if (!v252)
      {
        goto LABEL_81;
      }

      v253 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView;
      v254 = *&v252[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView];
      v255 = *&v219[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView];
      if (v254)
      {
        if (!v255)
        {
          v261 = v252;
          goto LABEL_98;
        }

        type metadata accessor for _UIReparentingView();
        v256 = v252;
        v257 = v255;
        v258 = v254;
        v259 = sub_18A4A7C88();

        if (v259)
        {

          goto LABEL_81;
        }

        v254 = *&v252[v253];
        if (v254)
        {
LABEL_98:
          [v254 setUserInteractionEnabled_];
        }
      }

      else
      {
        if (!v255)
        {
          goto LABEL_81;
        }

        v260 = v252;
      }

      v262 = *&v219[v253];
      v263 = v337;
      if (v262)
      {
        [v262 setUserInteractionEnabled_];
      }

      v264 = *(v263 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_reparentingOptions);
      v265 = *(v263 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_reparentingOptions + 8);
      v266 = swift_allocObject();
      *(v266 + 16) = v252;
      *(v266 + 24) = v219;
      *(v266 + 32) = v265;
      if (v265 == 1)
      {
        v267 = v219;
        v268 = v252;
        v269 = &selRef_imageGlyphCompositionalLayout;
      }

      else
      {
        v270 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview;
        v271 = *&v252[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview];
        v272 = v219;
        v273 = v252;
        [v271 size];
        v275 = v274;
        v277 = v276;
        v278 = [*&v252[v270] target];
        [v278 transform];
        v336 = *&v342.c;
        v337 = *&v342.a;
        v335 = *&v342.tx;

        *&v342.a = v337;
        *&v342.c = v336;
        *&v342.tx = v335;
        v361.width = v275;
        v361.height = v277;
        v279 = CGSizeApplyAffineTransform(v361, &v342);
        v280 = v321;
        v281 = v323;
        [*&v321[v323] size];
        v283 = v282;
        v285 = v284;
        v286 = [*&v280[v281] target];
        [v286 transform];
        v336 = *&v342.c;
        v337 = *&v342.a;
        v335 = *&v342.tx;

        *&v342.a = v337;
        *&v342.c = v336;
        *&v342.tx = v335;
        v362.width = v283;
        v362.height = v285;
        v287 = CGSizeApplyAffineTransform(v362, &v342);
        v269 = &selRef_imageGlyphCompositionalLayout;
        if (v279.width * v279.height >= v287.width * v287.height)
        {
          sub_188A34624(0, &qword_1ED490540);
          *&v337 = sub_18A4A7A68();
          v293 = v310;
          sub_18A4A6E68();
          UIAnimationDragCoefficient();
          sub_18A4A6EB8();
          v339 = *(v311 + 8);
          (v339)(v293, v319);
          v294 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v295 = swift_allocObject();
          v295[2] = v294;
          v295[3] = v264;
          v295[4] = sub_188F36514;
          v295[5] = v266;
          *&v342.tx = sub_188F36520;
          *&v342.ty = v295;
          *&v342.a = MEMORY[0x1E69E9820];
          *&v342.b = 1107296256;
          *&v342.c = sub_188A4A8F0;
          *&v342.d = &block_descriptor_409;
          v296 = _Block_copy(&v342);
          swift_unknownObjectRetain();

          v297 = v312;
          sub_18A4A6E38();
          *&v342.a = MEMORY[0x1E69E7CC0];
          sub_188D7609C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
          sub_188BA3728();
          v298 = v273;
          v299 = v314;
          v300 = v317;
          sub_18A4A7EB8();
          v301 = v318;
          v302 = v337;
          MEMORY[0x18CFE2990](v318, v297, v299, v296);
          _Block_release(v296);

          (*(v316 + 8))(v299, v300);
          v313[1](v297, v315);
          (v339)(v301, v319);
          goto LABEL_81;
        }
      }

      v288 = *(v340 + v338);
      swift_unknownObjectRetain();
      [v288 v269[153]];
      v289 = swift_allocObject();
      *(v289 + 16) = sub_188F36514;
      *(v289 + 24) = v266;
      *&v342.tx = sub_188E3FE58;
      *&v342.ty = v289;
      *&v342.a = MEMORY[0x1E69E9820];
      *&v342.b = 1107296256;
      *&v342.c = sub_188A4A8F0;
      *&v342.d = &block_descriptor_416;
      v290 = _Block_copy(&v342);
      swift_unknownObjectRetain();

      v291 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v342.tx = sub_188E3FE98;
      *&v342.ty = v291;
      *&v342.a = MEMORY[0x1E69E9820];
      *&v342.b = 1107296256;
      *&v342.c = sub_188C3DD6C;
      *&v342.d = &block_descriptor_421_0;
      v292 = _Block_copy(&v342);

      [v339 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v292);
      _Block_release(v290);

      swift_unknownObjectRelease_n();
LABEL_81:
      [*(v340 + v338) complete];
      v234 = 0;
      v235 = v325;
      goto LABEL_86;
    }

    v236 = sub_188D845C8();
    v237 = [objc_opt_self() mainRunLoop];
    [v236 addToRunLoop:v237 forMode:*MEMORY[0x1E695DA28]];

    v238 = *(v31 + OBJC_IVAR____UIMagicMorphAnimation____lazy_storage___geometryTrackingDisplayLink);
    LOBYTE(aBlock.origin.x) = 1;
    sub_18A4A79D8();
    [v238 setPreferredFrameRateRange_];

    v340 = objc_opt_self();
    v239 = swift_allocObject();
    v240 = v328;
    v239[2] = v31;
    v239[3] = v240;
    v239[4] = v15;
    v239[5] = v36;
    v239[6] = v99;
    v41 = v99;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_188F36584;
    *(v39 + 24) = v239;
    *&v358 = sub_188E3FE50;
    *(&v358 + 1) = v39;
    *&aBlock.origin.x = MEMORY[0x1E69E9820];
    *&aBlock.origin.y = 1107296256;
    *&aBlock.size.width = sub_188A4A968;
    *&aBlock.size.height = &block_descriptor_443;
    a1 = _Block_copy(&aBlock);
    v33 = *(&v358 + 1);
    v241 = v31;
    v242 = v15;
    v243 = v36;
    v244 = v41;

    v245 = v240;

    [v340 performWithoutAnimation_];
    _Block_release(a1);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:

    v42 = sub_188E49688(v41, v39);
  }

  v246 = *&v333[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion];
  v235 = v325;
  if (v246)
  {

    v246(v247);
    sub_188A55B8C(v246);
  }

  v234 = sub_188F36584;
LABEL_86:
  v248 = v330;
  v249 = v333;
  v250 = v333;
  sub_188D7B348(v249);

  sub_188A55B8C(v235);
  return sub_188A55B8C(v234);
}