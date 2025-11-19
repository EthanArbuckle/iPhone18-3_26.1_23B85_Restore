Swift::Void __swiftcall CollapsingButton.didMoveToWindow()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    [v0 sizeToFit];
  }
}

void sub_1D8045BA8()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationState] = 1;
  [v0 sizeToFit];
  [v0 invalidateIntrinsicContentSize];
  v2 = &v0[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = *&v0[OBJC_IVAR____TtC5TeaUI16CollapsingButton_button];
  v6 = [v5 titleLabel];
  if (v6)
  {
    v7 = v6;
    [v6 frame];
    v9 = v8;
    MinY = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = 0.0;
    MinY = 0.0;
    v13 = 0.0;
    v15 = 0.0;
  }

  v16 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_anchor;
  swift_beginAccess();
  if (v1[v16])
  {
    v17 = *&v1[OBJC_IVAR____TtC5TeaUI16CollapsingButton_collapsedSize];
    [v5 intrinsicContentSize];
    v19 = v17 - ceil(v18);
    [v5 intrinsicContentSize];
    [v5 setFrame_];
    v22 = *&v1[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animatedTitleLabel];
    [v5 frame];
    MinX = CGRectGetMinX(v53);
    v54.origin.x = v9;
    v54.origin.y = MinY;
    v54.size.width = v13;
    v54.size.height = v15;
    v24 = MinX + CGRectGetMinX(v54);
    v55.origin.x = v9;
    v55.origin.y = MinY;
    v55.size.width = v13;
    v55.size.height = v15;
    MinY = CGRectGetMinY(v55);
    v9 = v24;
  }

  else
  {
    v22 = *&v1[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animatedTitleLabel];
  }

  [v22 setFrame_];
  v25 = [v5 titleLabel];
  v26 = [v25 attributedText];

  [v22 setAttributedText_];
  [v22 setAlpha_];
  v27 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v28 = objc_allocWithZone(MEMORY[0x1E69DD278]);
  MaxX = 0.0;
  v30 = sub_1D805B260(sub_1D8047660, v27, 0.12, 0.33, 0.0, 0.83, 1.0);
  [v30 startAnimation];
  v31 = [v5 imageView];
  if (v31)
  {
    v32 = v31;
    [v31 frame];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v56.origin.x = v34;
    v56.origin.y = v36;
    v56.size.width = v38;
    v56.size.height = v40;
    MaxX = CGRectGetMaxX(v56);
  }

  v41 = sub_1D8045444();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = MaxX;
  v51 = sub_1D8047680;
  v52 = v43;
  v47 = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1D7E64940;
  v50 = &block_descriptor_49;
  v44 = _Block_copy(&v47);

  [v41 addAnimations_];
  _Block_release(v44);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = sub_1D804768C;
  v52 = v45;
  v47 = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1D7FEBC20;
  v50 = &block_descriptor_32;
  v46 = _Block_copy(&v47);

  [v41 addCompletion_];
  _Block_release(v46);
  [v41 startAnimation];
}

void sub_1D80460A4()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationState] = 2;
  v2 = &v0[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 32))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = [*&v0[OBJC_IVAR____TtC5TeaUI16CollapsingButton_button] titleLabel];
  if (v5)
  {
    v6 = v5;
    [v5 setAlpha_];
  }

  v7 = [v1 tintColor];
  if (v7)
  {
    v8 = v7;
    v9 = *&v1[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animatedTitleLabel];
    v10 = [v9 attributedText];
    if (v10)
    {
      v11 = v10;
      v25 = sub_1D7E9F44C();
      aBlock = v8;
      v12 = v8;
      v13 = sub_1D8191B14();

      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    }

    else
    {
      v13 = 0;
    }

    [v9 setAttributedText_];
  }

  v14 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v15 = objc_allocWithZone(MEMORY[0x1E69DD278]);
  v16 = sub_1D805B260(sub_1D8047694, v14, 0.15, 0.33, 0.0, 0.83, 1.0);
  [v16 startAnimationAfterDelay_];
  v17 = sub_1D8045444();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_1D80476B4;
  v27 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1D7E64940;
  v25 = &block_descriptor_37;
  v19 = _Block_copy(&aBlock);

  [v17 addAnimations_];
  _Block_release(v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_1D80476BC;
  v27 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1D7FEBC20;
  v25 = &block_descriptor_41;
  v21 = _Block_copy(&aBlock);

  [v17 addCompletion_];
  _Block_release(v21);
  [v17 startAnimation];
}

uint64_t sub_1D804643C(double a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D80475F4(0, &qword_1EDBB20E0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v50[-v4];
  sub_1D80475F4(0, &qword_1EDBAE428, MEMORY[0x1E69DC598], v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50[-v10];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_configuration;
    swift_beginAccess();
    sub_1D7F8CA00(&v13[v14], v11);
    v15 = sub_1D8191E04();
    if (!__swift_getEnumTagSinglePayload(v11, 1, v15))
    {
      v16 = sub_1D818E4E4();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v16);
      sub_1D8191D54();
    }

    v17 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_button;
    v18 = *&v13[OBJC_IVAR____TtC5TeaUI16CollapsingButton_button];
    sub_1D7F8CA00(v11, v8);
    v19 = v18;
    sub_1D8191E24();

    v20 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_anchor;
    swift_beginAccess();
    v21 = v13[v20];
    v22 = *&v13[v17];
    v23 = v22;
    if (v21)
    {
      [v22 intrinsicContentSize];
      [v23 setFrame_];
    }

    else
    {
      [v22 frame];
      v27 = v26;
      v29 = v28;
      [*&v13[v17] intrinsicContentSize];
      [v23 setFrame_];

      v32 = [*&v13[v17] imageView];
      if (v32)
      {
        v33 = v32;
        [v32 frame];
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v41 = v40;

        v51.origin.x = v35;
        v51.origin.y = v37;
        v51.size.width = v39;
        v51.size.height = v41;
        MaxX = CGRectGetMaxX(v51);
      }

      else
      {
        MaxX = 0.0;
      }

      v23 = *&v13[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animatedTitleLabel];
      [v23 frame];
      [v23 setFrame_];
    }

    v47 = &v13[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationDelegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v48 = *(v47 + 1);
      ObjectType = swift_getObjectType();
      (*(v48 + 16))(v13, ObjectType, v48);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return sub_1D7F8CA80(v11);
  }

  return result;
}

void sub_1D80467F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationState;
    v3 = Strong[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationState];
    if (v3 == 1)
    {
      LOBYTE(v3) = 0;
    }

    Strong[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationState] = v3;
    [Strong sizeToFit];
    [v1 invalidateIntrinsicContentSize];
    if (v1[v2] || (v4 = &v1[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationDelegate], swift_beginAccess(), !swift_unknownObjectWeakLoadStrong()))
    {
    }

    else
    {
      v5 = *(v4 + 1);
      ObjectType = swift_getObjectType();
      (*(v5 + 24))(v1, ObjectType, v5);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1D80468EC(double a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animatedTitleLabel];

  [v3 setAlpha_];
}

void sub_1D8046968()
{
  sub_1D80475F4(0, &qword_1EDBAE428, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v37[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_button;
    v6 = *(Strong + OBJC_IVAR____TtC5TeaUI16CollapsingButton_button);
    v7 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_configuration;
    swift_beginAccess();
    sub_1D7F8CA00(&v4[v7], v2);
    v8 = v6;
    sub_1D8191E24();

    v9 = [*&v4[v5] titleLabel];
    if (v9)
    {
      v10 = v9;
      [v9 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
    }

    else
    {
      v12 = 0.0;
      v14 = 0.0;
      v16 = 0.0;
      v18 = 0.0;
    }

    v19 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_anchor;
    swift_beginAccess();
    v20 = *&v4[v5];
    if (v4[v19])
    {
      v21 = *&v4[OBJC_IVAR____TtC5TeaUI16CollapsingButton_collapsedSize];
      v22 = v20;
      [v22 intrinsicContentSize];
      v24 = v21 - ceil(v23);
      [*&v4[v5] intrinsicContentSize];
      [v22 setFrame_];

      v27 = *&v4[v5];
      v28 = *&v4[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animatedTitleLabel];
      [v27 frame];
      MinX = CGRectGetMinX(v38);
      v39.origin.x = v12;
      v39.origin.y = v14;
      v39.size.width = v16;
      v39.size.height = v18;
      v30 = MinX + CGRectGetMinX(v39);
      v40.origin.x = v12;
      v40.origin.y = v14;
      v40.size.width = v16;
      v40.size.height = v18;
      [v28 setFrame_];
    }

    else
    {
      v31 = v20;
      [v31 intrinsicContentSize];
      [v31 setFrame_];

      [*&v4[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animatedTitleLabel] setFrame_];
    }

    v34 = &v4[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationDelegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v35 = *(v34 + 1);
      ObjectType = swift_getObjectType();
      (*(v35 + 40))(v4, ObjectType, v35);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D8046CB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR____TtC5TeaUI16CollapsingButton_animatedTitleLabel) setAlpha_];
    v2 = [*&v1[OBJC_IVAR____TtC5TeaUI16CollapsingButton_button] titleLabel];
    if (v2)
    {
      v3 = v2;
      [v2 setAlpha_];
    }

    v4 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationState;
    v5 = v1[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationState];
    if (v5 == 2)
    {
      LOBYTE(v5) = 0;
    }

    v1[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationState] = v5;
    [v1 sizeToFit];
    [v1 invalidateIntrinsicContentSize];
    if (v1[v4] || (v6 = &v1[OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationDelegate], swift_beginAccess(), !swift_unknownObjectWeakLoadStrong()))
    {
    }

    else
    {
      v7 = *(v6 + 1);
      ObjectType = swift_getObjectType();
      (*(v7 + 48))(v1, ObjectType, v7);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t CollapsingButton.Anchor.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t sub_1D8046E9C()
{
  v1 = *v0;
  sub_1D81927E4();
  sub_1D7EBD688(v3, v1);
  return sub_1D8192824();
}

id CollapsingButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CollapsingButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t CollapsingButton.accessibilityTraits.getter()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v4, sel_accessibilityTraits);
  v2 = *MEMORY[0x1E69DD9B8];
  if ((*MEMORY[0x1E69DD9B8] & ~v1) == 0)
  {
    v2 = 0;
  }

  return v2 | v1;
}

unint64_t sub_1D80471BC()
{
  result = qword_1ECA0FAE0;
  if (!qword_1ECA0FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FAE0);
  }

  return result;
}

uint64_t type metadata accessor for CollapsingButton()
{
  result = qword_1EDBB14A0;
  if (!qword_1EDBB14A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D80472F0()
{
  sub_1D80475F4(319, &qword_1EDBAE428, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for CollapsingButton.Anchor(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CollapsingButton.AnimationState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D80475A0()
{
  result = qword_1ECA0FAE8;
  if (!qword_1ECA0FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FAE8);
  }

  return result;
}

void sub_1D80475F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D804770C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E2E7F0();
  result = sub_1D818EFB4();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for RendererEnvironment();
    v6 = objc_allocWithZone(v5);
    result = RendererEnvironment.init(scrollView:testing:)(v4, 0);
    a2[3] = v5;
    a2[4] = &protocol witness table for RendererEnvironment;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D80477BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E069F0(0, &qword_1EDBBD578);
  result = sub_1D818EFF4();
  if (v4)
  {
    type metadata accessor for ShineImageRendererPipelineProcessor();
    v2 = swift_allocObject();
    sub_1D7E05450(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D804785C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E069F0(0, &qword_1EDBBD6F8);
  result = sub_1D818EFF4();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7E069F0(0, &qword_1EDBBD4B0);
    result = sub_1D818EFF4();
    if (v8)
    {
      v5 = type metadata accessor for PillViewRenderer();
      v6 = swift_allocObject();
      sub_1D7E05450(&v9, v6 + 16);
      result = sub_1D7E05450(&v7, v6 + 56);
      a2[3] = v5;
      a2[4] = &protocol witness table for PillViewRenderer;
      *a2 = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8047978@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E069F0(0, &qword_1EDBBDC30);
  result = sub_1D818EFC4();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7E069F0(0, &qword_1EDBBD298);
    result = sub_1D818EFF4();
    if (v7)
    {
      v5 = type metadata accessor for PillViewImageRenderer();
      v6 = swift_allocObject();
      result = sub_1D7E05450(&v9, v6 + 16);
      *(v6 + 56) = v7;
      *(v6 + 64) = v8;
      a2[3] = v5;
      a2[4] = &protocol witness table for PillViewImageRenderer;
      *a2 = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8047AA0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PillViewImageRequestFactory();
  result = swift_allocObject();
  *a1 = result;
  a1[1] = &protocol witness table for PillViewImageRequestFactory;
  return result;
}

uint64_t sub_1D8047AE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E069F0(0, &qword_1EDBBD2B0);
  result = sub_1D818EFF4();
  if (v7)
  {
    v4 = type metadata accessor for PillViewStyler();
    v5 = swift_allocObject();
    result = sub_1D7E05450(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &protocol witness table for PillViewStyler;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8047B94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E069F0(0, &qword_1EDBBD6F8);
  result = sub_1D818EFF4();
  if (v7)
  {
    v4 = type metadata accessor for PillViewLayoutAttributesFactory();
    v5 = swift_allocObject();
    result = sub_1D7E05450(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F530CFF0;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D8047C48@<X0>(void *a1@<X8>)
{
  if (qword_1ECA0C3B8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECA10F98;
  v3 = unk_1ECA10FA0;
  v4 = qword_1ECA10FA8;
  v10 = unk_1ECA10FB0;
  a1[3] = &type metadata for PillViewColorPalette;
  a1[4] = &protocol witness table for PillViewColorPalette;
  v5 = swift_allocObject();
  *a1 = v5;
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;
  v5[5] = v10;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return v10;
}

void sub_1D8047D14(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8047E1C();
  v3 = sub_1D818EFE4();
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for ImageCache();
    v6 = type metadata accessor for ImageProcessor();
    v7 = swift_allocObject();
    v8 = type metadata accessor for ImageDownloader();
    v9 = swift_allocObject();
    ObjectType = swift_getObjectType();
    sub_1D7F57ECC(v4, var48, &v13, v5, ObjectType, v8, v6, &protocol witness table for ImageDownloader, &protocol witness table for ImageProcessor, v12, v9, v7, var48[1], var48[2], var48[3], var48[4], var48[5], var48[6], var48[7], var48[8], var48[9]);
    a2[3] = v5;
    a2[4] = &protocol witness table for ImageCache;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D8047E1C()
{
  result = qword_1EDBB0BA0[0];
  if (!qword_1EDBB0BA0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBB0BA0);
  }

  return result;
}

void *sub_1D8047EA0(void *a1)
{
  v1 = a1;
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = v1;
      v5 = [v3 window];

      if (v5)
      {
        v6 = [v5 windowScene];

        if (v6)
        {
          type metadata accessor for MotionData();
          v7 = [objc_opt_self() currentDevice];
          v8 = [v7 orientation];

          v1 = sub_1D801B420(v4, v8, [v6 interfaceOrientation]);
          return v1;
        }
      }
    }

    return 0;
  }

  return v1;
}

uint64_t sub_1D8047FB0(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D804804C(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, a2 & 1, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D80480E8()
{
  sub_1D7E166A0(v0 + 16);
  MEMORY[0x1DA715E30](v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8048154(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(a3 + 24) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakAssign();

  return a3;
}

void sub_1D80481D0()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_1ECA0FAF0 = v1;
}

uint64_t sub_1D8048238()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v0 setAlignment_];
  [v0 setLineBreakMode_];
  sub_1D7F854E8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81A1B70;
  v2 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v3 = qword_1ECA0C320;
  v4 = v2;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_0_144();
  }

  v5 = qword_1ECA0FAF0;
  v6 = sub_1D7E0A1A8(0, &qword_1EDBB2F68);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = sub_1D7E0A1A8(0, &unk_1EDBB3088);
  *(inited + 80) = v0;
  v9 = *MEMORY[0x1E69DB648];
  *(inited + 104) = v8;
  *(inited + 112) = v9;
  v10 = objc_opt_self();
  v11 = *MEMORY[0x1E69DB980];
  v12 = v5;
  v13 = v7;
  v14 = v0;
  v15 = v9;
  v16 = [v10 systemFontOfSize:22.0 weight:v11];
  *(inited + 144) = sub_1D7E0A1A8(0, &qword_1EDBB2FE0);
  *(inited + 120) = v16;
  type metadata accessor for Key();
  sub_1D7E4DB28();
  v17 = sub_1D8190D94();

  return v17;
}

uint64_t sub_1D804841C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v0 setAlignment_];
  [v0 setLineBreakMode_];
  sub_1D7F854E8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81A1B70;
  v2 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v3 = qword_1ECA0C320;
  v4 = v2;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_0_144();
  }

  v5 = qword_1ECA0FAF0;
  v6 = sub_1D7E0A1A8(0, &qword_1EDBB2F68);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = sub_1D7E0A1A8(0, &unk_1EDBB3088);
  *(inited + 80) = v0;
  v9 = *MEMORY[0x1E69DB648];
  *(inited + 104) = v8;
  *(inited + 112) = v9;
  v10 = objc_opt_self();
  v11 = v5;
  v12 = v7;
  v13 = v0;
  v14 = v9;
  v15 = [v10 systemFontOfSize_];
  *(inited + 144) = sub_1D7E0A1A8(0, &qword_1EDBB2FE0);
  *(inited + 120) = v15;
  type metadata accessor for Key();
  sub_1D7E4DB28();
  v16 = sub_1D8190D94();

  return v16;
}

id sub_1D80485E8(void *a1)
{
  v2 = [a1 layer];
  [v2 setCornerRadius_];

  v3 = [a1 layer];
  [v3 setMasksToBounds_];

  v4 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  return [a1 setOpaque_];
}

id sub_1D80486C4(id a1)
{
  if (qword_1ECA0C320 != -1)
  {
    OUTLINED_FUNCTION_0_144();
  }

  [a1 setTintColor_];
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = &selRef_ts_setPlusDCompositingFilter;
  if (v3 != 2)
  {
    v4 = &selRef_ts_setPlusLCompositingFilter;
  }

  v5 = *v4;

  return [a1 v5];
}

UIImageSymbolScale __swiftcall UIImageSymbolScale.capped(contentSizeCategory:)(__C::UIContentSizeCategory contentSizeCategory)
{
  if ((v1 + 1) >= 2)
  {
    v2 = v1;
    if (v1 == UIImageSymbolScaleSmall)
    {
      return v2;
    }
  }

  else
  {
    v2 = UIImageSymbolScaleMedium;
  }

  if ((sub_1D8191B84() & 1) == 0)
  {
    return v2;
  }

  if (sub_1D8191B94())
  {
    v3 = UIImageSymbolScaleSmall;
  }

  else
  {
    v5 = sub_1D8191B94();
    v3 = UIImageSymbolScaleMedium;
    if ((v5 & 1) == 0)
    {
      v3 = UIImageSymbolScaleLarge;
    }
  }

  if (v3 >= v2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t (*EditingBlueprintCollectionViewLayout.isEditing.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x1C0));
  return sub_1D8048950;
}

uint64_t EditingBlueprintCollectionViewLayout.init(blueprintLayoutCollectionProvider:editStyle:)(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = *v5;
  *(v1 + *((v8 & v7) + 0x1C0)) = 0;
  *(v1 + *((*v9 & *v1) + 0x1C8)) = v6;
  (*(v4 + 16))(&v14 - v10, a1, v3);
  BlueprintCollectionViewLayout.init(blueprintLayoutCollectionProvider:)();
  v12 = v11;
  (*(v4 + 8))(a1, v3);
  return v12;
}

id EditingBlueprintCollectionViewLayout.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void EditingBlueprintCollectionViewLayout.init(coder:)()
{
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0)) = 0;
  sub_1D81923A4();
  __break(1u);
}

uint64_t EditingBlueprintCollectionViewLayout.copy()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x1EEE9AC00](ObjectType);
  v7 = v17 - v6;
  (*(v10 + 16))(v17 - v6, v2 + *((v9 & v8) + 0x80), v5);
  OUTLINED_FUNCTION_0_145();
  v17[1] = *(v2 + *(v11 + 456));
  v12 = EditingBlueprintCollectionViewLayout.__allocating_init(blueprintLayoutCollectionProvider:editStyle:)(v7);
  OUTLINED_FUNCTION_0_145();
  *(v15 + *((*v15 & v14) + 0x1C0)) = *(v2 + *(v13 + 448));
  result = sub_1D803E748();
  a1[3] = ObjectType;
  *a1 = v12;
  return result;
}

uint64_t sub_1D8048D58(void *a1)
{
  v1 = a1;
  EditingBlueprintCollectionViewLayout.copy()(v4);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2 = sub_1D8192614();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2;
}

Swift::OpaquePointer_optional __swiftcall EditingBlueprintCollectionViewLayout.layoutAttributesForElements(in:)(__C::CGRect in)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  sub_1D7E67328(__src);
  v42 = v1;
  v6 = [v1 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 contentOffset];
    v40 = v9;
    v41 = v8;
  }

  else
  {
    v40 = 0.0;
    v41 = 0.0;
  }

  v10 = [v42 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 adjustedContentInset];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v13 = *MEMORY[0x1E69DDCE0];
    v15 = *(MEMORY[0x1E69DDCE0] + 8);
    v17 = *(MEMORY[0x1E69DDCE0] + 16);
    v19 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  memcpy(__dst, &__src[40], sizeof(__dst));
  sub_1D7E6EB58(&__src[40], v45);
  sub_1D7E6ED1C();
  v22 = v21;
  v24 = v23;
  memcpy(v46, __dst, 0x236uLL);
  sub_1D7E6F268(v46);
  memcpy(v45, __src, sizeof(v45));
  sub_1D7EAED38(v22, v24, x, y, width, height, v41, v40, v13, v15, v17, v19);
  v26 = v25;
  sub_1D7E598FC(__src);
  if (v26)
  {
    v28 = [v42 collectionView];
    v29 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v30 = v28;
      v31 = [v28 indexPathsForSelectedItems];

      if (v31)
      {
        sub_1D818E994();
        sub_1D8191314();
      }
    }

    v32 = sub_1D7F12F04();
    v33 = *(v26 + 16);
    v34 = sub_1D7E36AB8(v33);
    if (v34)
    {
      v35 = v34;
      v45[0] = v29;
      sub_1D81922A4();
      if ((v35 & 0x8000000000000000) == 0)
      {
        v36 = 0;
        while (1)
        {
          v37 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          if ((v33 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x1DA714420](v36, v33);
          }

          else
          {
            if (v36 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v38 = *(v33 + 8 * v36 + 32);
          }

          v39 = v38;
          v43 = v38;
          sub_1D8049148(&v43, v32, &v44);

          sub_1D8192274();
          sub_1D81922B4();
          sub_1D81922C4();
          sub_1D8192284();
          ++v36;
          if (v37 == v35)
          {

            v20 = v45[0];
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
      }

      __break(1u);

      __break(1u);
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_27:
  result.value._rawValue = v20;
  result.is_nil = v27;
  return result;
}

id sub_1D8049148@<X0>(id *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  result = [v5 representedElementCategory];
  if (!result)
  {

    result = sub_1D80491BC(v5, a2);
    v5 = result;
  }

  *a3 = v5;
  return result;
}

id sub_1D80491BC(void *a1, uint64_t a2)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [a1 indexPath];
  sub_1D818E924();

  v11 = sub_1D7F28664(v9, a2);
  (*(v6 + 8))(v9, v5);
  v12 = MEMORY[0x1E69E7D40];
  if (*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x1C0)) != 1 || v11)
  {
    [a1 copy];
    sub_1D8191F34();
    swift_unknownObjectRelease();
    type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
    swift_dynamicCast();
    v13 = v22;
    v23.a = 1.0;
    v23.b = 0.0;
    v23.c = 0.0;
    v23.d = 1.0;
    v23.tx = 0.0;
    v23.ty = 0.0;
    [v13 setTransform_];
    v17 = *(v2 + *((*v12 & *v2) + 0x1C0));
    v18 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing;
    swift_beginAccess();
    *(v13 + v18) = v17;
    v19 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected;
    swift_beginAccess();
    *(v13 + v19) = v11;
    v23.a = 1.0;
    v23.b = 0.0;
    v23.c = 0.0;
    v23.d = 1.0;
    v23.tx = 0.0;
    v23.ty = 0.0;
    [v13 setTransform_];
  }

  else
  {
    [a1 copy];
    sub_1D8191F34();
    swift_unknownObjectRelease();
    type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
    swift_dynamicCast();
    v13 = v22;
    v14 = *(v2 + *((*v12 & *v2) + 0x1C0));
    v15 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing;
    swift_beginAccess();
    *(v13 + v15) = v14;
    v16 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected;
    swift_beginAccess();
    *(v13 + v16) = 0;
    CGAffineTransformMakeScale(&v23, *(v2 + *((*v12 & *v2) + 0x1C8)), *(v2 + *((*v12 & *v2) + 0x1C8)));
    [v13 setTransform_];
  }

  return v13;
}

id sub_1D8049510(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  v10 = EditingBlueprintCollectionViewLayout.layoutAttributesForElements(in:)(v14);

  if (v10)
  {
    sub_1D804990C();
    v11 = sub_1D8191304();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id EditingBlueprintCollectionViewLayout.layoutAttributesForItem(at:)()
{
  v1 = v0;
  sub_1D7E67328(v12);
  v2 = v13;
  if (*(v13 + 16) && (v3 = sub_1D7E7DB08(), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    sub_1D7E598FC(v12);
    if ([v5 representedElementCategory])
    {
      return v5;
    }

    else
    {
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 indexPathsForSelectedItems];

        if (v10)
        {
          sub_1D818E994();
          sub_1D8191314();
        }
      }

      v11 = sub_1D7F12F04();
      v6 = sub_1D80491BC(v5, v11);
    }
  }

  else
  {
    sub_1D7E598FC(v12);
    return 0;
  }

  return v6;
}

id sub_1D80496E8(void *a1)
{
  v2 = sub_1D818E994();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v6 = a1;
  v7 = EditingBlueprintCollectionViewLayout.layoutAttributesForItem(at:)();

  (*(v3 + 8))(v5, v2);

  return v7;
}

id EditingBlueprintCollectionViewLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D804990C()
{
  result = qword_1EDBB3020;
  if (!qword_1EDBB3020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB3020);
  }

  return result;
}

uint64_t DebugBundle.name.getter()
{
  v1 = *v0;
  sub_1D8190DB4();
  return v1;
}

uint64_t DebugBundle.version.getter()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

uint64_t DebugBundle.build.getter()
{
  v1 = *(v0 + 32);
  sub_1D8190DB4();
  return v1;
}

uint64_t DebugBundle.displayVersion.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  sub_1D8190DB4();
  MEMORY[0x1DA713260](10272, 0xE200000000000000);
  MEMORY[0x1DA713260](v1, v2);
  MEMORY[0x1DA713260](41, 0xE100000000000000);
  return v4;
}

void __swiftcall DebugBundle.init(bundle:)(TeaUI::DebugBundle *__return_ptr retstr, NSBundle bundle)
{
  v4 = sub_1D8190EE4();
  v5 = [(objc_class *)bundle.super.isa objectForInfoDictionaryKey:v4];

  if (v5)
  {
    sub_1D8191F34();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v54 = 0u;
  }

  OUTLINED_FUNCTION_1_105(v6, v7, v8, v9, v10, v11, v12, v13, v43, v47, v51, *(&v51 + 1), v54);
  if (v14)
  {
    if (OUTLINED_FUNCTION_0_146())
    {
      v15 = v44;
      v16 = v48;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D7E7BAAC(v57);
  }

  v15 = 0;
  v16 = 0xE000000000000000;
LABEL_9:
  v17 = sub_1D8190EE4();
  v18 = [(objc_class *)bundle.super.isa objectForInfoDictionaryKey:v17];

  if (v18)
  {
    sub_1D8191F34();
    v19 = swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v55 = 0u;
  }

  OUTLINED_FUNCTION_1_105(v19, v20, v21, v22, v23, v24, v25, v26, v44, v48, v52, *(&v52 + 1), v55);
  if (v27)
  {
    if (OUTLINED_FUNCTION_0_146())
    {
      v28 = v45;
      v29 = v49;
      goto LABEL_17;
    }
  }

  else
  {
    sub_1D7E7BAAC(v57);
  }

  v28 = 0;
  v29 = 0xE000000000000000;
LABEL_17:
  v30 = sub_1D8190EE4();
  v31 = [(objc_class *)bundle.super.isa objectForInfoDictionaryKey:v30];

  if (v31)
  {
    sub_1D8191F34();
    v32 = swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v56 = 0u;
  }

  OUTLINED_FUNCTION_1_105(v32, v33, v34, v35, v36, v37, v38, v39, v45, v49, v53, *(&v53 + 1), v56);
  if (!v40)
  {
    sub_1D7E7BAAC(v57);
    goto LABEL_24;
  }

  if ((OUTLINED_FUNCTION_0_146() & 1) == 0)
  {
LABEL_24:

    v41 = 0;
    v42 = 0xE000000000000000;
    goto LABEL_25;
  }

  v41 = v46;
  v42 = v50;

LABEL_25:
  retstr->name._countAndFlagsBits = v15;
  retstr->name._object = v16;
  retstr->version._countAndFlagsBits = v28;
  retstr->version._object = v29;
  retstr->build._countAndFlagsBits = v41;
  retstr->build._object = v42;
}

void __swiftcall RadarComponent.init(componentName:componentIdentifier:componentVersion:)(TeaUI::RadarComponent *__return_ptr retstr, Swift::String componentName, Swift::String componentIdentifier, Swift::String componentVersion)
{
  retstr->componentName = componentName;
  retstr->componentIdentifier = componentIdentifier;
  retstr->componentVersion = componentVersion;
}

id sub_1D8049DF0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1D8190EE4();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t JSONText.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1D8190F74();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_15();
  v4 = sub_1D818E384();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  v36 = sub_1D7F7C638(v10, v5, v6);
  v35 = v12;
  sub_1D818E3C4();
  swift_allocObject();
  sub_1D818E3B4();
  v13 = MEMORY[0x1E6967F78];
  sub_1D804A528(0, &qword_1ECA0FB78, MEMORY[0x1E6967F78], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D81A1B70;
  sub_1D818E364();
  sub_1D818E374();
  sub_1D818E354();
  sub_1D804A58C(&qword_1ECA0FB80, MEMORY[0x1E6967F78]);
  sub_1D804A528(0, &qword_1ECA0FB88, v13, MEMORY[0x1E69E62F8]);
  sub_1D804A4A0();
  sub_1D8192004();
  sub_1D818E394();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D818E3A4();
  v16 = v15;
  sub_1D8190F64();
  sub_1D804A7E8();
  v17 = sub_1D8190F44();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_0_147();
  sub_1D804A528(0, v21, v22, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v24 = MEMORY[0x1E69DB650];
  *(inited + 16) = xmmword_1D819FAB0;
  v25 = *v24;
  *(inited + 32) = *v24;
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 labelColor];
  *(inited + 64) = sub_1D7E0A1A8(0, &qword_1EDBB2F68);
  *(inited + 40) = v28;
  type metadata accessor for Key();
  OUTLINED_FUNCTION_1_106();
  sub_1D804A58C(v29, v30);
  v31 = sub_1D8190D94();
  v32 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v33 = sub_1D7F3A980(v19, v20, v31);
  sub_1D7EF4CE0(v14, v16);

  *a2 = v33;
  a2[1] = v36;
  a2[2] = v35;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1D804A4A0()
{
  result = qword_1ECA0FB90;
  if (!qword_1ECA0FB90)
  {
    sub_1D804A528(255, &qword_1ECA0FB88, MEMORY[0x1E6967F78], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FB90);
  }

  return result;
}

void sub_1D804A528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D804A58C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t JSONText.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1D8190F74();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_15();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8192884();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_1D804A83C();
    sub_1D8192644();
    sub_1D8190F64();
    sub_1D804A7E8();
    v6 = sub_1D8190F44();
    v8 = v7;
    sub_1D7EF4CE0(v13, v14);
    if (v8)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    if (!v8)
    {
      v8 = 0xE000000000000000;
    }

    sub_1D7E0A1A8(0, &qword_1EDBB3168);
    sub_1D8190DB4();
    v10 = sub_1D8049DF0();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v8;
    *a2 = v10;
    a2[1] = sub_1D804A8B0;
    a2[2] = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1D804A7E8()
{
  result = qword_1ECA0FB98;
  if (!qword_1ECA0FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FB98);
  }

  return result;
}

unint64_t sub_1D804A83C()
{
  result = qword_1ECA0FBA0;
  if (!qword_1ECA0FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FBA0);
  }

  return result;
}

uint64_t AppEnvironment.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t AppURLHandlerType.open(_:)()
{
  type metadata accessor for OpenExternalURLOptionsKey();
  sub_1D804AA64();
  sub_1D8190D94();
  OUTLINED_FUNCTION_7();
  v0();
}

unint64_t sub_1D804AA64()
{
  result = qword_1EDBAE488;
  if (!qword_1EDBAE488)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBAE488);
  }

  return result;
}

void *sub_1D804AABC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1D804AB50(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_0_25();
  *(v1 + 72) = v2;
  return result;
}

uint64_t App.__allocating_init(application:monitor:sceneProvider:environment:)(uint64_t a1, uint64_t a2, __int128 *a3, char *a4)
{
  v8 = swift_allocObject();
  App.init(application:monitor:sceneProvider:environment:)(a1, a2, a3, a4);
  return v8;
}

void sub_1D804ABEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(v4 + 64);
  v8 = sub_1D818E5C4();
  type metadata accessor for OpenExternalURLOptionsKey();
  sub_1D804AA64();
  v9 = sub_1D8190D44();
  if (a3)
  {
    v10[4] = a3;
    v10[5] = a4;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1D7EB30D4;
    v10[3] = &block_descriptor_50;
    a3 = _Block_copy(v10);
  }

  [v7 openURL:v8 options:v9 completionHandler:a3];
  _Block_release(a3);
}

id sub_1D804AD04@<X0>(_BYTE *a1@<X8>)
{
  result = [*(v1 + 64) applicationState];
  if (result >= 3)
  {
    result = sub_1D81923A4();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

void sub_1D804AD94(_BYTE *a1@<X8>)
{
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  v5 = (*(v4 + 8))(v3, v4);
  if (v5 && (v6 = v5, v7 = [v5 activationState], v6, v7 + 1 <= 3))
  {
    v8 = 0x4020103u >> (8 * (v7 + 1));
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  *a1 = v8;
}

uint64_t App.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return v0;
}

uint64_t App.__deallocating_deinit()
{
  App.deinit();

  return swift_deallocClassInstance();
}

unint64_t AppMonitorEvent.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D804AF14@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AppMonitorEvent.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t AppMonitor.isActive.getter()
{
  v1 = OBJC_IVAR___TSAppMonitor_isActive;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D804B038(char a1)
{
  v3 = OBJC_IVAR___TSAppMonitor_isTracking;
  result = OUTLINED_FUNCTION_0_25();
  *(v1 + v3) = a1;
  return result;
}

id AppMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D804B140()
{
  result = qword_1ECA0FBC8;
  if (!qword_1ECA0FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FBC8);
  }

  return result;
}

unint64_t sub_1D804B198()
{
  result = qword_1ECA0FBD0;
  if (!qword_1ECA0FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FBD0);
  }

  return result;
}

unint64_t sub_1D804B1F0()
{
  result = qword_1ECA0FBD8;
  if (!qword_1ECA0FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FBD8);
  }

  return result;
}

unint64_t sub_1D804B248()
{
  result = qword_1ECA0FBE0;
  if (!qword_1ECA0FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FBE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppState(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AppWindowState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppEnvironment(_BYTE *result, unsigned int a2, unsigned int a3)
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

id WindowScene.__allocating_init(session:connectionOptions:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithSession:a1 connectionOptions:a2];

  return v5;
}

id WindowScene.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WindowScene();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D804B770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t CommandStateObserver.deinit()
{

  sub_1D7E166A0(v0 + 32);
  return v0;
}

uint64_t CommandStateObserver.__deallocating_deinit()
{

  sub_1D7E166A0(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D804B890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_beginAccess();
  v6 = sub_1D7E18740(v4, v5, *(v2 + 16));
  swift_endAccess();
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v7 = v6;
  }

  v11 = v7;

  MEMORY[0x1DA713500](v8);
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D81913B4();
  }

  sub_1D8191404();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 16);
  sub_1D7EF61A0();
  *(v3 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_1D804B9B4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = sub_1D8190DB4();
  for (i = 0; v4; result = )
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];
    sub_1D8190DB4();
    sub_1D7E15E90(v11, v12);
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CommandStateObserverStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void CommandStateObserverStore.description.getter()
{
  sub_1D81921A4();

  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_36:
    sub_1D7EA30C0();
    sub_1D7E1B6BC();
    v23 = sub_1D8190E94();
    v25 = v24;

    MEMORY[0x1DA713260](v23, v25);

    MEMORY[0x1DA713260](10506, 0xE200000000000000);
    return;
  }

  v34 = MEMORY[0x1E69E7CC0];
  sub_1D8190DB4();
  sub_1D7F08E34();
  v6 = sub_1D804C0EC();
  v7 = 0;
  v8 = v1 + 64;
  v27 = v1 + 64;
  v28 = v1;
  v26 = v2;
  while (2)
  {
    if (v6 < 0 || v6 >= 1 << *(v1 + 32))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (*(v1 + 36) != v4)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      break;
    }

    v31 = v4;
    v29 = v5;
    v30 = v7;
    v9 = (*(v1 + 48) + 16 * v6);
    v10 = *v9;
    v11 = v9[1];
    v12 = *(*(v1 + 56) + 8 * v6);
    sub_1D8190DB4();
    sub_1D8190DB4();
    sub_1D81921A4();
    sub_1D8190DB4();

    MEMORY[0x1DA713260](0x3D6576696C61283DLL, 0xE800000000000000);
    v32 = v3;
    v13 = sub_1D7E36AB8(v12);
    v14 = 0;
    v15 = v12 & 0xC000000000000001;
    while (v13 != v14)
    {
      if (v15)
      {
        MEMORY[0x1DA714420](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }
      }

      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D8192274();
        OUTLINED_FUNCTION_0_148();
        sub_1D81922B4();
        OUTLINED_FUNCTION_0_148();
        sub_1D81922C4();
        sub_1D8192284();
      }

      else
      {
      }

      ++v14;
    }

    sub_1D7E36AB8(v32);

    v16 = sub_1D81925B4();
    MEMORY[0x1DA713260](v16);

    MEMORY[0x1DA713260](0x3D64616564202CLL, 0xE700000000000000);
    v17 = 0;
    v33 = MEMORY[0x1E69E7CC0];
    while (v13 != v17)
    {
      if (v15)
      {
        MEMORY[0x1DA714420](v17, v12);
      }

      else
      {
        if (v17 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }
      }

      if (__OFADD__(v17, 1))
      {
        goto LABEL_39;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {

        swift_unknownObjectRelease();
      }

      else
      {
        sub_1D8192274();
        OUTLINED_FUNCTION_0_148();
        sub_1D81922B4();
        OUTLINED_FUNCTION_0_148();
        sub_1D81922C4();
        sub_1D8192284();
      }

      ++v17;
    }

    sub_1D7E36AB8(v33);

    v18 = sub_1D81925B4();
    MEMORY[0x1DA713260](v18);

    MEMORY[0x1DA713260](41, 0xE100000000000000);

    v19 = *(v34 + 16);
    if (v19 >= *(v34 + 24) >> 1)
    {
      sub_1D7F08E34();
    }

    *(v34 + 16) = v19 + 1;
    v20 = v34 + 16 * v19;
    *(v20 + 32) = v10;
    *(v20 + 40) = v11;
    v8 = v27;
    v1 = v28;
    if (v6 >= -(-1 << *(v28 + 32)))
    {
      goto LABEL_44;
    }

    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_45;
    }

    if (*(v28 + 36) == v31)
    {
      v21 = sub_1D8192034();
      v22 = *(v28 + 36);
      sub_1D7E452C4(v6, v31, v29 & 1);
      v5 = 0;
      v6 = v21;
      v4 = v22;
      v3 = MEMORY[0x1E69E7CC0];
      v7 = v30 + 1;
      if (v30 + 1 != v26)
      {
        continue;
      }

      goto LABEL_36;
    }

    break;
  }

  __break(1u);
}

uint64_t CachedFont.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CachedFont.init(_:)(a1, a2);
  return v4;
}

void *CachedFont.init(_:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = 0;
  v2[2] = a1;
  v3 = objc_opt_self();

  v4 = [v3 defaultCenter];
  [v4 addObserver:v2 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  return v2;
}

void sub_1D804C21C()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;
}

uint64_t static RadialGradientSectionDecorationItem.Size.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }

    return OUTLINED_FUNCTION_0_2();
  }

  if (*(a2 + 8))
  {
    return OUTLINED_FUNCTION_0_2();
  }

  return *a1 == *a2;
}

uint64_t static RadialGradientSectionDecorationItem.Size.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  return 1;
}

uint64_t RadialGradientSectionDecorationItem.gradientDescriptor.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x90uLL);
  memcpy(a1, v1, 0x90uLL);
  return sub_1D7FCE31C(__dst, v4);
}

void *RadialGradientSectionDecorationItem.init(gradientDescriptor:ordering:pinTrait:)()
{
  OUTLINED_FUNCTION_1_108();
  v4 = *v3;
  v5 = *(v3 + 8);
  result = OUTLINED_FUNCTION_6_61(v6);
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0;
  *(v0 + 168) = 769;
  *(v0 + 176) = v1;
  *(v0 + 184) = v2;
  *(v0 + 192) = v4;
  *(v0 + 200) = v5;
  return result;
}

void RadialGradientSectionDecorationItem.init(gradientDescriptor:gradientSize:ordering:pinTrait:)()
{
  OUTLINED_FUNCTION_1_108();
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *v4;
  v6 = *(v4 + 8);
  OUTLINED_FUNCTION_6_61(v7);
  OUTLINED_FUNCTION_8_35();
  *(v0 + 169) = 3;
  *(v0 + 176) = v2;
  *(v0 + 184) = v3;
  *(v0 + 192) = v5;
  *(v0 + 200) = v6;
}

void RadialGradientSectionDecorationItem.init(gradientDescriptor:gradientSize:overscrollPinPosition:ordering:pinTrait:)()
{
  OUTLINED_FUNCTION_1_108();
  v2 = *v1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v7 = *v6;
  v8 = *(v6 + 8);
  OUTLINED_FUNCTION_6_61(v9);
  OUTLINED_FUNCTION_8_35();
  *(v0 + 169) = v2;
  *(v0 + 176) = v4;
  *(v0 + 184) = v5;
  *(v0 + 192) = v7;
  *(v0 + 200) = v8;
}

BOOL static RadialGradientSectionDecorationItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v3 = *(a1 + 152);
  v4 = *(a1 + 160);
  v5 = *(a1 + 168);
  v6 = *(a1 + 169);
  v7 = *(a2 + 144);
  v8 = *(a2 + 152);
  v9 = *(a2 + 160);
  v10 = *(a2 + 168);
  v11 = *(a2 + 169);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v12 && (sub_1D8192634() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v7)
    {
      v13 = v8;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v9)
    {
      v15 = v10;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v17 = v11 != 3 && v6 == v11;
  if (v6 == 3)
  {
    return v11 == 3;
  }

  else
  {
    return v17;
  }
}

Swift::Void __swiftcall RadialGradientSectionDecorationView.willMove(toSuperview:)(UIView_optional *toSuperview)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  [(UIView_optional *)&v3 willMoveToSuperview:toSuperview];
}

id RadialGradientSectionDecorationView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *RadialGradientSectionDecorationView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_gradientView;
  v3 = objc_allocWithZone(type metadata accessor for RadialGradientView());
  *(v0 + v2) = OUTLINED_FUNCTION_4(v3, sel_initWithFrame_);
  OUTLINED_FUNCTION_12_2(OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_gradientSize);
  *(v0 + OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_overscrollPinPosition) = 3;
  v4 = OUTLINED_FUNCTION_80();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, ObjectType);
  v8 = OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_gradientView;
  v9 = *&v7[OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_gradientView];
  v10 = v7;
  [v10 addSubview_];
  v11 = *&v7[v8];
  v14.origin.x = OUTLINED_FUNCTION_80();
  Width = CGRectGetWidth(v14);
  v15.origin.x = OUTLINED_FUNCTION_80();
  [v11 setFrame_];

  return v10;
}

id RadialGradientSectionDecorationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void RadialGradientSectionDecorationView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_gradientView;
  v2 = objc_allocWithZone(type metadata accessor for RadialGradientView());
  *(v0 + v1) = OUTLINED_FUNCTION_4(v2, sel_initWithFrame_);
  OUTLINED_FUNCTION_12_2(OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_gradientSize);
  *(v0 + OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_overscrollPinPosition) = 3;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall RadialGradientSectionDecorationView.layoutSubviews()()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_gradientView;
  [*&v0[OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_gradientView] transform];
  v19 = 0x3FF0000000000000;
  v20 = 0;
  v21 = 0;
  v22 = 0x3FF0000000000000;
  v23 = 0;
  v24 = 0;
  if (sub_1D8191A34())
  {
    v2 = *&v0[v1];
    [v2 frame];
    MinX = CGRectGetMinX(v25);
    [*&v0[v1] frame];
    MinY = CGRectGetMinY(v26);
    v5 = &v0[OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_gradientSize];
    Width = *&v0[OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_gradientSize];
    v7 = v0[OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_gradientSize + 8];
    [v0 bounds];
    if (v7 == 1)
    {
      Width = CGRectGetWidth(*&v8);
    }

    Height = v5[2];
    v13 = *(v5 + 24);
    [v0 bounds];
    if (v13 == 1)
    {
      Height = CGRectGetHeight(*&v14);
    }

    [v2 setFrame_];
  }
}

Swift::Void __swiftcall RadialGradientSectionDecorationView.apply(_:)(UICollectionViewLayoutAttributes *a1)
{
  v2 = v1;
  v21.receiver = v2;
  v21.super_class = swift_getObjectType();
  [(UICollectionViewLayoutAttributes *)&v21 applyLayoutAttributes:a1];
  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
    swift_beginAccess();
    sub_1D7F0F5CC(v5 + v6, v19);
    if (v20)
    {
      sub_1D7FDADC0();
      v7 = a1;
      if (swift_dynamicCast())
      {
        memcpy(__dst, __src, 0xC9uLL);
        v8 = *&v2[OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_gradientView];
        memcpy(v17, __src, sizeof(v17));
        nullsub_1(v17);
        memcpy(v15, v17, sizeof(v15));
        v9 = v8;
        sub_1D804CEFC(__dst, &v14);
        RadialGradientView.gradientDescriptor.setter(v15);

        v10 = __dst[19];
        v11 = __dst[20];
        v12 = __dst[21];
        v13 = &v2[OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_gradientSize];
        *v13 = __dst[18];
        v13[8] = v10;
        *(v13 + 2) = v11;
        v13[24] = v12;
        sub_1D804CF34(__dst);
        v2[OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_overscrollPinPosition] = BYTE1(__dst[21]);
      }

      else
      {
      }
    }

    else
    {
      sub_1D7F0F65C(v19);
    }
  }
}

void RadialGradientSectionDecorationView.blueprintViewportMonitor(_:viewportScrollDataDidChange:)(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_overscrollPinPosition] != 3)
  {
    v4 = *&v2[OBJC_IVAR____TtC5TeaUI35RadialGradientSectionDecorationView_gradientView];
    sub_1D813FEE0(v4, v2, a2);
  }
}

uint64_t sub_1D804CF6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 201))
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

uint64_t sub_1D804CFAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D804D0C4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 16);
  for (i = (a1 + 112); v4; --v4)
  {
    v6 = *(i - 5);
    v7 = *(i - 4);
    v8 = *(i - 3);
    if (*i)
    {
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = sub_1D804DA64((i - 80), v6, v7, v9, 0);
      if (v11)
      {
        v12 = v11;
        if (sub_1D804DA64((i - 80), v8, v10, v9, 1))
        {
          v13 = v12;
          MEMORY[0x1DA713500]();
          if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D81913B4();
          }

          v14 = sub_1D8191404();
          MEMORY[0x1DA713500](v14);
          if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D81913B4();
          }

          sub_1D8191404();
        }

        else
        {
        }
      }
    }

    else if (sub_1D804DA64((i - 80), v6, v7, *(i - 3), 1))
    {
      MEMORY[0x1DA713500]();
      if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D81913B4();
      }

      sub_1D8191404();
    }

    i += 136;
  }
}

id KeyCommandCenter.init(commandCenter:commands:)()
{
  OUTLINED_FUNCTION_0_69();
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC5TeaUI16KeyCommandCenter_stagedTracker];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = &v1[OBJC_IVAR____TtC5TeaUI16KeyCommandCenter_commandCenter];
  *v6 = v3;
  *(v6 + 1) = v2;
  *&v1[OBJC_IVAR____TtC5TeaUI16KeyCommandCenter_commandItems] = v0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void KeyCommandCenter.handleKeyCommand(sender:)(uint64_t a1)
{
  sub_1D7E1B288(a1, v2);
  sub_1D7E3DCA8();
  if (swift_dynamicCast())
  {
    sub_1D804D3B8(v1);
  }
}

uint64_t sub_1D804D3B8(void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI16KeyCommandCenter_stagedTracker;
  swift_beginAccess();
  sub_1D7E62C7C(v1 + v3, &v28);
  if (!v29)
  {
    return sub_1D7E64060(&v28);
  }

  sub_1D7E05450(&v28, v30);
  sub_1D804DC98(a1, &v28);
  v27 = 8;
  sub_1D7E0E768(v30, v17);
  memset(v31, 0, 32);
  v31[32] = 1;
  type metadata accessor for CommandExecutionSource();
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v19;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  sub_1D7E3B938(&v27, v10, 0, v31, 0, 0, 0, v4, v5, v6, v16, v17[0], v17[1], v17[2], v18, v19, v20, v21, v22, v23, v24, v25);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  sub_1D804DEE4(&v28, v17);
  if (v18)
  {
    v14 = v26;

    sub_1D8019978(v17);
    v14(*(v1 + OBJC_IVAR____TtC5TeaUI16KeyCommandCenter_commandCenter), *(v1 + OBJC_IVAR____TtC5TeaUI16KeyCommandCenter_commandCenter + 8), v13);

    sub_1D7E70E44(&v28, &qword_1ECA0FC18);
    return __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  else
  {

    sub_1D7E70E44(&v28, &qword_1ECA0FC18);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    return sub_1D7E70E44(v17, &qword_1ECA0FC18);
  }
}

uint64_t KeyCommandCenter.keyCommands(with:)(uint64_t a1)
{
  sub_1D7E0E768(a1, v4);
  v2 = OBJC_IVAR____TtC5TeaUI16KeyCommandCenter_stagedTracker;
  swift_beginAccess();
  sub_1D804D6E8(v4, v1 + v2);
  swift_endAccess();
  return sub_1D804D7D8();
}

uint64_t sub_1D804D6E8(uint64_t a1, uint64_t a2)
{
  sub_1D7E640EC(0, &qword_1EDBBB508, sub_1D804D77C, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D804D77C()
{
  result = qword_1EDBBB510;
  if (!qword_1EDBBB510)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBB510);
  }

  return result;
}

uint64_t sub_1D804D7D8()
{
  v2 = MEMORY[0x1E69E7CC0];
  sub_1D804D0C4(*&v0[OBJC_IVAR____TtC5TeaUI16KeyCommandCenter_commandItems], v0, &v2);
  return v2;
}

id KeyCommandCenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id KeyCommandCenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1D804DA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *(v5 + OBJC_IVAR____TtC5TeaUI16KeyCommandCenter_commandCenter);
  v9 = *(v5 + OBJC_IVAR____TtC5TeaUI16KeyCommandCenter_commandCenter + 8);
  if (((*(a1 + 104))(v8, v9) & 1) == 0)
  {
    return 0;
  }

  v20 = a5;
  v10 = (*(a1 + 120))(v8, v9);
  v12 = v11;
  sub_1D7E640EC(0, &qword_1EDBB2C58, sub_1D7EE5958, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D819FAB0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001D81D0D20;
  v15 = *(a1 + 24);
  v14 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v15);
  *(inited + 48) = (*(v14 + 8))(v15, v14);
  *(inited + 56) = v16;
  sub_1D8190D94();
  sub_1D7E3DCA8();
  sub_1D804DF58(0, &qword_1EDBB3460);
  sub_1D8190DB4();
  sub_1D8190DB4();
  v19 = MEMORY[0x1E69E7CC0];
  v17 = sub_1D8191984();
  if (v20)
  {
    sub_1D7F76CD4(v10, v12, v17);
  }

  else
  {

    [v17 setAttributes_];
  }

  return v17;
}

void sub_1D804DC98(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 propertyList])
  {
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  *v14 = v15;
  *&v14[16] = v16;
  if (!*(&v16 + 1))
  {
    goto LABEL_17;
  }

  sub_1D804DF58(0, &qword_1ECA0FC20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    bzero(a2, 0x88uLL);
    return;
  }

  sub_1D7EDF26C();

  if (!*&v14[24])
  {
LABEL_17:
    sub_1D7E70E44(v14, &qword_1EDBBC780);
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v4 = 0;
  v5 = v15;
  v6 = *(v2 + OBJC_IVAR____TtC5TeaUI16KeyCommandCenter_commandItems);
  v7 = *(v6 + 16);
  for (i = v6 + 32; ; i += 136)
  {
    if (v7 == v4)
    {

      goto LABEL_18;
    }

    if (v4 >= *(v6 + 16))
    {
      break;
    }

    sub_1D801991C(i, v14);
    v9 = *&v14[24];
    v10 = *&v14[32];
    __swift_project_boxed_opaque_existential_1(v14, *&v14[24]);
    if ((*(v10 + 8))(v9, v10) == v5 && v11 == *(&v5 + 1))
    {

LABEL_21:

      memcpy(a2, v14, 0x88uLL);
      return;
    }

    v13 = sub_1D8192634();

    if (v13)
    {
      goto LABEL_21;
    }

    sub_1D8019978(v14);
    ++v4;
  }

  __break(1u);
}

uint64_t sub_1D804DEE4(uint64_t a1, uint64_t a2)
{
  sub_1D7E09D14(0, &qword_1ECA0FC18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D804DF58(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D8190E14();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t DebugDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  DebugDataSource.init()();
  return v0;
}

uint64_t DebugDataSource.init()()
{
  sub_1D7E49240();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D81A7860;
  v2 = type metadata accessor for DebugSection();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = 0;
  *(v1 + 32) = v3;
  v5 = OUTLINED_FUNCTION_2_97();
  *(v5 + 24) = v4;
  *(v5 + 16) = 1;
  *(v1 + 40) = v5;
  v6 = OUTLINED_FUNCTION_2_97();
  *(v6 + 24) = v4;
  *(v6 + 16) = 2;
  *(v1 + 48) = v6;
  v7 = OUTLINED_FUNCTION_2_97();
  *(v7 + 24) = v4;
  *(v7 + 16) = 3;
  *(v1 + 56) = v7;
  v8 = sub_1D7E05BF4(&qword_1EDBBDEE0, type metadata accessor for DebugSection);
  OUTLINED_FUNCTION_0_149();
  v10 = sub_1D7E05BF4(v9, type metadata accessor for DebugSection);
  MEMORY[0x1DA7114E0](v1, v2, v8, v10);
  return v0;
}

uint64_t sub_1D804E114(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v22 = a4;
  v25 = a1;
  sub_1D7E05ED8();
  OUTLINED_FUNCTION_3_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = *(a3 + 16);
  v16 = *(a3 + 24);
  v18 = *(a3 + 32);
  v17 = *(a3 + 40);
  LOBYTE(a3) = *(a3 + 48);
  __src[0] = v25;
  __src[1] = a2;
  v25 = a2;
  v24 = v13;
  __src[2] = v13;
  __src[3] = v14;
  v23 = v14;
  __src[4] = v15;
  __src[5] = v16;
  __src[6] = v18;
  __src[7] = v17;
  LOBYTE(__src[8]) = a3;
  v19 = OBJC_IVAR____TtC5TeaUI15DebugDataSource_sections;
  swift_beginAccess();
  (*(v9 + 16))(v12, v4 + v19, v5);
  sub_1D8190DB4();
  sub_1D804E800(v24, v23, v15, v16, v18, v17, a3);
  sub_1D818F3A4();

  (*(v9 + 8))(v12, v5);
  if (v27)
  {
    memcpy(__dst, __src, 0x41uLL);
    sub_1D8146BF8(__dst, v22 & 1);
  }

  return sub_1D804E8BC(__src);
}

uint64_t sub_1D804E370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  v4 = *(a3 + 16);
  v6[0] = *a3;
  v6[1] = v4;
  v6[2] = *(a3 + 32);
  v7 = v3;
  return sub_1D804E114(a1, a2, v6, 1);
}

uint64_t sub_1D804E3B0()
{
  sub_1D804E98C();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E05ED8();
  OUTLINED_FUNCTION_3_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v27 - v12;
  v13 = OBJC_IVAR____TtC5TeaUI15DebugDataSource_sections;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v29 = v0;
  v14(v10, v0 + v13, v1);
  v31 = MEMORY[0x1E69E7CC0];
  sub_1D7E05BF4(&qword_1ECA0FC30, sub_1D7E05ED8);
  sub_1D8191134();
  v15 = *(v3 + 44);
  sub_1D7E05BF4(&unk_1ECA12210, sub_1D7E05ED8);
  while (1)
  {
    sub_1D81917B4();
    if (*&v5[v15] == v30[0])
    {
      break;
    }

    v16 = sub_1D81918F4();
    v18 = *v17;

    v16(v30, 0);
    sub_1D81917C4();
    swift_beginAccess();
    if (*(*(v18 + 24) + 16))
    {
      sub_1D8192274();
      sub_1D81922B4();
      sub_1D81922C4();
      sub_1D8192284();
    }

    else
    {
    }
  }

  sub_1D804EA20(v5);
  v19 = v31;
  v20 = type metadata accessor for DebugSection();
  v21 = sub_1D7E05BF4(&qword_1EDBBDEE0, type metadata accessor for DebugSection);
  OUTLINED_FUNCTION_0_149();
  v23 = sub_1D7E05BF4(v22, type metadata accessor for DebugSection);
  v24 = v28;
  MEMORY[0x1DA7114E0](v19, v20, v21, v23);
  v25 = v29;
  swift_beginAccess();
  (*(v7 + 40))(v25 + v13, v24, v1);
  return swift_endAccess();
}

uint64_t DebugDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC5TeaUI15DebugDataSource_sections;
  sub_1D7E05ED8();
  OUTLINED_FUNCTION_4_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t DebugDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC5TeaUI15DebugDataSource_sections;
  sub_1D7E05ED8();
  OUTLINED_FUNCTION_4_3();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_1D804E800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:
    case 2:
    case 4:
    case 5:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
      goto LABEL_2;
    case 1:
    case 3:
      sub_1D8190DB4();
LABEL_2:

    case 6:
      goto LABEL_7;
    case 9:
      sub_1D8190DB4();
      sub_1D8190DB4();
LABEL_7:

      result = sub_1D8190DB4();
      break;
    default:
      return result;
  }

  return result;
}

void sub_1D804E98C()
{
  if (!qword_1ECA0FC28)
  {
    sub_1D7E05ED8();
    sub_1D7E05BF4(&unk_1ECA12210, sub_1D7E05ED8);
    v0 = sub_1D8192344();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FC28);
    }
  }
}

uint64_t sub_1D804EA20(uint64_t a1)
{
  sub_1D804E98C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D804EB04(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D81927E4();
  a4(v8, v6);
  return sub_1D8192824();
}

uint64_t sub_1D804EB58@<X0>(_BYTE *a1@<X8>)
{
  result = RestorationEvent.toState.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1D804EB88()
{
  result = qword_1ECA0FC38;
  if (!qword_1ECA0FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FC38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RestorationState(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RestorationEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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

id ActionButton.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *ActionButton.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = OBJC_IVAR____TtC5TeaUI12ActionButton_onTap;
  sub_1D7E40308();
  v3 = v2;
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC5TeaUI12ActionButton_onMenuPresentation;
  *(v0 + v4) = [objc_allocWithZone(v3) init];
  v13 = type metadata accessor for ActionButton();
  v5 = OUTLINED_FUNCTION_80();
  v8 = objc_msgSendSuper2(v6, v7, v5, v0, v13);
  v9 = *&v8[OBJC_IVAR____TtC5TeaUI12ActionButton_onTap];
  v10 = v8;
  [v10 addTarget:v9 action:sel_handleAction forControlEvents:64];
  [v10 addTarget:*&v10[OBJC_IVAR____TtC5TeaUI12ActionButton_onMenuPresentation] action:sel_handleAction forControlEvents:0x4000];
  [v10 setShowsLargeContentViewer_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCC18]) init];
  [v10 addInteraction_];

  return v10;
}

id sub_1D804EF98()
{
  v0 = [swift_getObjCClassFromObject() buttonWithType_];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v0;
}

id ActionButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ActionButton.init(coder:)()
{
  v1 = OBJC_IVAR____TtC5TeaUI12ActionButton_onTap;
  sub_1D7E40308();
  v3 = v2;
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC5TeaUI12ActionButton_onMenuPresentation;
  *(v0 + v4) = [objc_allocWithZone(v3) init];
  sub_1D81923A4();
  __break(1u);
}

void sub_1D804F124()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI12ActionButton_onMenuPresentation);
}

id ActionButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ActionButton.prepareForReuse()()
{
  v0 = sub_1D7F293FC();
}

unsigned __int8 *getEnumTagSinglePayload for CommandState(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_17:
    v6 = *result;
    if (*result >= 2u)
    {
      v7 = (v6 & 0xFE) + 2147483646;
      if ((v7 & 0x7FFFFFFE) != 0)
      {
        return ((v7 & 0x7FFFFFFE | v6 & 1u) - 1);
      }
    }

    return 0;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = result[1];
      if (!result[1])
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 1);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = ((*result | (v5 << 8)) - 3);
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CommandState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D804F404(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D804F420(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1D804F474(uint64_t a1, char a2)
{
  sub_1D818EA04();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t JSONSchemaView.JSONSaveMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

void sub_1D804F554()
{
  OUTLINED_FUNCTION_120();
  v0 = sub_1D8190544();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  sub_1D7E1898C(0, &qword_1ECA0FC50, sub_1D80557B4, MEMORY[0x1E697DCB8]);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for JSONSchemaView();
  sub_1D8058234();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8057C18();
  }

  else
  {
    sub_1D81919D4();
    v8 = sub_1D8190764();
    sub_1D818FD54();

    sub_1D8190534();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v0);
  }

  OUTLINED_FUNCTION_100();
}

void JSONSchemaView.init(schema:jsonSaveMode:onJSONSave:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1D804F9C0(0);
  v9 = OUTLINED_FUNCTION_50(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = *v5;
  v14 = type metadata accessor for JSONSchemaView();
  OUTLINED_FUNCTION_20_22();
  sub_1D8190984();
  OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_8_36();
  sub_1D8190984();
  OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_8_36();
  sub_1D8190984();
  OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_8_36();
  sub_1D8190984();
  OUTLINED_FUNCTION_11_33();
  v15 = v7 + v14[10];
  OUTLINED_FUNCTION_20_22();
  sub_1D8190984();
  *v15 = v28;
  *(v15 + 16) = v29;
  v16 = v14[11];
  *(v7 + v16) = swift_getKeyPath();
  OUTLINED_FUNCTION_0_150();
  sub_1D7E1898C(0, v17, v18, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_12_32();
  sub_1D8058B58();
  v19 = (v7 + v14[14]);
  *v19 = v3;
  v19[1] = v1;
  *(v7 + v14[5]) = 1;
  v20 = v7 + v14[13];
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  *(v20 + 24) = -1;
  v21 = sub_1D818F824();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v21);

  sub_1D7EF01F4();
  v23 = v22;
  OUTLINED_FUNCTION_17_21();
  sub_1D80557E8();
  v24 = sub_1D800D4B8(v23);
  v25 = (v7 + v14[12]);
  *v25 = v24;
  v25[1] = 0;
  if (v13)
  {

    OUTLINED_FUNCTION_6_62();
  }

  else
  {
    v26 = v24;

    OUTLINED_FUNCTION_6_62();
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = 0;
    v27[4] = v3;
    v27[5] = v1;
    off_1EECAA608 = sub_1D8055838;
    qword_1EECAA610 = v27;
  }

  OUTLINED_FUNCTION_100();
}

uint64_t type metadata accessor for JSONSchemaView()
{
  result = qword_1ECA0FEB0;
  if (!qword_1ECA0FEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D804FA40(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1D804FBA4(a1, a2);
  a3(v4);
}

uint64_t sub_1D804FBA4(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_1D8190F74();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D818E384();
  MEMORY[0x1EEE9AC00](v6);
  sub_1D818E3C4();
  swift_allocObject();
  sub_1D818E3B4();
  sub_1D7E1898C(0, &qword_1ECA0FB78, MEMORY[0x1E6967F78], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D819FAC0;
  sub_1D818E364();
  sub_1D818E354();
  v20 = v7;
  sub_1D8055F70(&qword_1ECA0FB80, MEMORY[0x1E6967F78]);
  sub_1D8058298(0);
  sub_1D8055F70(&qword_1ECA0FB90, sub_1D8058298);
  sub_1D8192004();
  sub_1D818E394();
  v20 = a1;
  v21 = v17;
  sub_1D8058C18(0, &qword_1ECA0FEC8, &type metadata for SchemaViewValue, MEMORY[0x1E6981790]);
  sub_1D8190994();
  v19 = v22;
  sub_1D80582CC();
  v8 = v18;
  v9 = sub_1D818E3A4();
  if (v8)
  {

    return v5;
  }

  v11 = v9;
  v12 = v10;

  sub_1D8190F64();
  v5 = sub_1D8190F34();
  v14 = v13;
  result = sub_1D7EF4CE0(v11, v12);
  if (v14)
  {

    return v5;
  }

  __break(1u);
  return result;
}

void sub_1D804FED8()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v27 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1D804F9C0(0);
  v12 = OUTLINED_FUNCTION_50(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  v16 = type metadata accessor for JSONSchemaView();
  OUTLINED_FUNCTION_20_22();
  sub_1D8190984();
  OUTLINED_FUNCTION_10_40();
  OUTLINED_FUNCTION_8_36();
  sub_1D8190984();
  OUTLINED_FUNCTION_10_40();
  OUTLINED_FUNCTION_8_36();
  sub_1D8190984();
  OUTLINED_FUNCTION_10_40();
  OUTLINED_FUNCTION_8_36();
  sub_1D8190984();
  OUTLINED_FUNCTION_10_40();
  v17 = v10 + v16[10];
  OUTLINED_FUNCTION_20_22();
  sub_1D8190984();
  *v17 = v28;
  *(v17 + 16) = v29;
  v18 = v16[11];
  *(v10 + v18) = swift_getKeyPath();
  OUTLINED_FUNCTION_0_150();
  sub_1D7E1898C(0, v19, v20, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_12_32();
  sub_1D8058B58();
  v21 = v10 + v16[13];
  *v21 = v8;
  *(v21 + 8) = v6;
  *(v21 + 16) = v4;
  *(v21 + 24) = v27;
  *(v10 + v16[5]) = 0;
  v22 = (v10 + v16[14]);
  *v22 = 0;
  v22[1] = 0;
  if ((~v1 & 0xF000000000000007) == 0)
  {
    v23 = sub_1D818F824();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v23);
    sub_1D7EF01F4();
    v25 = v24;
    OUTLINED_FUNCTION_17_21();
    sub_1D80557E8();
    v1 = sub_1D800D4B8(v25);
  }

  OUTLINED_FUNCTION_6_62();
  v26 = (v10 + v16[12]);
  *v26 = v1;
  v26[1] = 0;
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D80500E8()
{
  v0 = sub_1D8190F74();
  v1 = OUTLINED_FUNCTION_50(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  v4 = v3 - v2;
  v5 = sub_1D818E384();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  sub_1D818E3C4();
  swift_allocObject();
  sub_1D818E3B4();
  sub_1D7E1898C(0, &qword_1ECA0FB78, MEMORY[0x1E6967F78], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D819FAC0;
  sub_1D818E364();
  sub_1D818E354();
  sub_1D8055F70(&qword_1ECA0FB80, MEMORY[0x1E6967F78]);
  sub_1D8058298(0);
  sub_1D8055F70(&qword_1ECA0FB90, sub_1D8058298);
  sub_1D8192004();
  sub_1D818E394();
  type metadata accessor for JSONSchemaView();
  v6 = OUTLINED_FUNCTION_3_87();
  sub_1D8058C18(v6, v7, &type metadata for SchemaViewValue, v8);
  sub_1D8190994();
  sub_1D80582CC();
  v9 = sub_1D818E3A4();
  if (v16)
  {

    return v4;
  }

  v11 = v9;
  v12 = v10;

  sub_1D8190F64();
  v4 = sub_1D8190F34();
  v14 = v13;
  result = sub_1D7EF4CE0(v11, v12);
  if (v14)
  {

    return v4;
  }

  __break(1u);
  return result;
}

void JSONSchemaView.body.getter()
{
  OUTLINED_FUNCTION_120();
  v75 = v1;
  v2 = type metadata accessor for JSONSchemaView();
  v3 = *(v2 - 8);
  v4 = v2 - 8;
  v82 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2 - 8);
  v79 = v5;
  v6 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8055844();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  v66 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v65[1] = v12 - v11;
  sub_1D8056108();
  v67 = v13;
  OUTLINED_FUNCTION_9();
  v68 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v83 = v17 - v16;
  sub_1D8056C60();
  v71 = v18;
  OUTLINED_FUNCTION_9();
  v72 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v84 = v22 - v21;
  sub_1D8056E68();
  v73 = v23;
  OUTLINED_FUNCTION_9();
  v74 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  v69 = v27 - v26;
  v85 = v0;
  v87 = v0;
  sub_1D80558F4(0);
  v70 = MEMORY[0x1E6981F48];
  sub_1D8055F70(&qword_1ECA0FD40, sub_1D80558F4);
  sub_1D81907C4();
  OUTLINED_FUNCTION_22_16((v0 + *(v4 + 32)));
  v28 = OUTLINED_FUNCTION_3_87();
  sub_1D8058C18(v28, v29, v30, v31);
  v81 = v32;
  sub_1D81909B4();
  v80 = type metadata accessor for JSONSchemaView;
  v76 = v6;
  sub_1D8058B58();
  v78 = *(v3 + 80);
  swift_allocObject();
  v77 = type metadata accessor for JSONSchemaView;
  sub_1D8057C18();
  sub_1D805620C();
  v34 = v33;
  OUTLINED_FUNCTION_14_27();
  v37 = sub_1D8055F70(v35, v36);
  OUTLINED_FUNCTION_13_29();
  v40 = sub_1D8055F70(v38, v39);
  OUTLINED_FUNCTION_32_10();
  sub_1D81908A4();

  v41 = OUTLINED_FUNCTION_31_10();
  v42(v41, v8);
  OUTLINED_FUNCTION_22_16((v85 + *(v82 + 36)));
  sub_1D81909B4();
  sub_1D8058B58();
  swift_allocObject();
  sub_1D8057C18();
  sub_1D8056DD8();
  v44 = v43;
  v88 = v8;
  v89 = v34;
  v90 = v37;
  v91 = v40;
  v66 = MEMORY[0x1E697D510];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_15_27();
  v48 = sub_1D8055F70(v46, v47);
  OUTLINED_FUNCTION_32_10();
  v49 = v67;
  sub_1D81908A4();

  v50 = OUTLINED_FUNCTION_31_10();
  v51(v50, v49);
  OUTLINED_FUNCTION_22_16((v85 + *(v82 + 40)));
  sub_1D81909B4();
  sub_1D8058B58();
  swift_allocObject();
  sub_1D8057C18();
  sub_1D8057064(0);
  v53 = v52;
  v88 = v49;
  v89 = v44;
  v90 = OpaqueTypeConformance2;
  v91 = v48;
  v54 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_18_23();
  v64 = sub_1D8057164(v55, v56, sub_1D80571D4);
  v57 = v69;
  OUTLINED_FUNCTION_32_10();
  v58 = v71;
  sub_1D81908A4();

  v59 = OUTLINED_FUNCTION_31_10();
  v60(v59, v58);
  v86 = v85;
  sub_1D80573A4(0);
  v88 = v58;
  v89 = v53;
  v90 = v54;
  v91 = v64;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_16_26();
  sub_1D8055F70(v61, v62);
  v63 = v73;
  sub_1D81908C4();
  (*(v74 + 8))(v57, v63);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D8050BEC@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v70 = a2;
  sub_1D8055A10();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D80559DC(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - v11;
  if (*(a1 + 1) || *(a1 + 3) || *(a1 + 5) || *(a1 + 7) || *(a1 + 9))
  {
    memcpy(__dst, a1, 0x50uLL);
    v80 = *&__dst[1];
    v81 = *&__dst[0];
    v79 = *(&__dst[1] + 1);
    v78 = *&__dst[2];
    v76 = *(&__dst[0] + 1);
    v77 = *(&__dst[2] + 1);
    v74 = *(&__dst[3] + 1);
    v75 = *&__dst[3];
    v72 = *(&__dst[4] + 1);
    v73 = *&__dst[4];
    sub_1D7EF8F34(__dst, __src);
  }

  else
  {
    v80 = 0;
    v81 = 0;
    v78 = 0;
    v79 = 0;
    v74 = 0;
    v75 = 0;
    v72 = 0;
    v73 = 0;
    v76 = 1;
    v77 = 0;
  }

  v13 = type metadata accessor for JSONSchemaView();
  v14 = v13;
  v15 = a1 + *(v13 + 52);
  v16 = v15[24];
  v71 = v12;
  if (v16 == 255 || (v16 & 1) == 0)
  {
    v18 = 1;
  }

  else
  {
    v68 = v13;
    v17 = *(v15 + 2);
    v66 = sub_1D81905D4();
    v67 = &v65;
    MEMORY[0x1EEE9AC00](v66);
    *(&v65 - 2) = a1;
    *(&v65 - 1) = v17;
    sub_1D8055A78(0);
    sub_1D8055F70(&qword_1ECA0FF60, sub_1D8055A78);
    v12 = v71;
    v14 = v68;
    sub_1D8190AF4();
    (*(v5 + 32))(v12, v7, v4);
    v18 = 0;
  }

  __swift_storeEnumTagSinglePayload(v12, v18, 1, v4);
  __dst[0] = *(a1 + v14[12]);
  sub_1D8058C18(0, &qword_1ECA0FEC8, &type metadata for SchemaViewValue, MEMORY[0x1E6981790]);
  sub_1D8190994();
  switch(__src[0] >> 61)
  {
    case 1:
      v43 = __src[0] & 0x1FFFFFFFFFFFFFFFLL;
      sub_1D8191534();
      v44 = sub_1D8191524();
      v45 = swift_allocObject();
      v46 = MEMORY[0x1E69E85E0];
      *(v45 + 16) = v44;
      *(v45 + 24) = v46;
      v47 = sub_1D8191524();
      v48 = swift_allocObject();
      *(v48 + 16) = v47;
      *(v48 + 24) = v46;
      sub_1D8190AB4();
      v49 = __dst[0];
      LOBYTE(v46) = __dst[1];
      v84[0] = v43;
      type metadata accessor for JSONSchemaValueBool(0);

      sub_1D8190984();
      *v83 = v49;
      v83[16] = v46;
      *&v83[24] = 0;
      *&v83[32] = 0;
      v83[40] = 1;
      *&v83[48] = __src[0];
      *&v83[56] = __src[1];
      __dst[0] = v49;
      __dst[1] = *&v83[16];
      __dst[2] = *&v83[32];
      __dst[3] = *&v83[48];
      v82 = 1;
      LOBYTE(__dst[4]) = 1;
      sub_1D8058A38(v83, __src);
      sub_1D80584F4();
      sub_1D8058548();
      sub_1D8190634();
      memcpy(__dst, __src, 0x41uLL);
      v85 = 0;
      BYTE1(__dst[4]) = 0;
      v50 = MEMORY[0x1E697F960];
      sub_1D8056924(0, &qword_1ECA0FD28, &type metadata for JSArrayValueView, &type metadata for JSONSchemaBoolValueRowControlView, MEMORY[0x1E697F960]);
      sub_1D8056924(0, &qword_1ECA0FD30, &type metadata for JSONSchemaIntegerValueRowControlView, &type metadata for JSONSchemaNumberValueRowControlView, v50);
      sub_1D8058448();
      sub_1D805859C();
      sub_1D8190634();
      memcpy(__src, v84, 0x42uLL);
      v86 = 0;
      BYTE2(__src[8]) = 0;
      sub_1D805604C();
      sub_1D8056924(0, &qword_1ECA0FD38, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSObjectValueView, v50);
      sub_1D80583C8();
      sub_1D80586F0();
      sub_1D8190634();

      sub_1D8058A94(v83);
      break;
    case 2:
      v27 = __src[0] & 0x1FFFFFFFFFFFFFFFLL;
      sub_1D8191534();
      v28 = sub_1D8191524();
      v29 = swift_allocObject();
      v30 = MEMORY[0x1E69E85E0];
      *(v29 + 16) = v28;
      *(v29 + 24) = v30;
      v31 = sub_1D8191524();
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v30;
      sub_1D8190AB4();
      v33 = __dst[0];
      LOBYTE(v30) = __dst[1];
      v84[0] = v27;
      type metadata accessor for JSONSchemaValueInteger(0);

      sub_1D8190984();
      *v83 = v33;
      v83[16] = v30;
      *&v83[24] = 0;
      *&v83[32] = 0;
      *&v83[40] = 257;
      *&v83[48] = __src[0];
      *&v83[56] = __src[1];
      __dst[0] = v33;
      __dst[1] = *&v83[16];
      __dst[2] = *&v83[32];
      __dst[3] = *&v83[48];
      v82 = 0;
      LOBYTE(__dst[4]) = 0;
      sub_1D805897C(v83, __src);
      sub_1D8058648();
      sub_1D805869C();
      sub_1D8190634();
      memcpy(__dst, __src, 0x41uLL);
      v85 = 1;
      BYTE1(__dst[4]) = 1;
      v34 = MEMORY[0x1E697F960];
      sub_1D8056924(0, &qword_1ECA0FD28, &type metadata for JSArrayValueView, &type metadata for JSONSchemaBoolValueRowControlView, MEMORY[0x1E697F960]);
      sub_1D8056924(0, &qword_1ECA0FD30, &type metadata for JSONSchemaIntegerValueRowControlView, &type metadata for JSONSchemaNumberValueRowControlView, v34);
      sub_1D8058448();
      sub_1D805859C();
      sub_1D8190634();
      memcpy(__src, v84, 0x42uLL);
      v86 = 0;
      BYTE2(__src[8]) = 0;
      sub_1D805604C();
      sub_1D8056924(0, &qword_1ECA0FD38, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSObjectValueView, v34);
      sub_1D80583C8();
      sub_1D80586F0();
      sub_1D8190634();

      sub_1D80589D8(v83);
      break;
    case 3:
      v35 = __src[0] & 0x1FFFFFFFFFFFFFFFLL;
      sub_1D8191534();
      v36 = sub_1D8191524();
      v37 = swift_allocObject();
      v38 = MEMORY[0x1E69E85E0];
      *(v37 + 16) = v36;
      *(v37 + 24) = v38;
      v39 = sub_1D8191524();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = v38;
      sub_1D8190AB4();
      v41 = __dst[0];
      LOBYTE(v38) = __dst[1];
      v84[0] = v35;
      type metadata accessor for JSONSchemaValueNumber(0);

      sub_1D8190984();
      *v83 = v41;
      v83[16] = v38;
      *&v83[24] = 0;
      *&v83[32] = 0;
      *&v83[40] = 257;
      *&v83[48] = __src[0];
      *&v83[56] = __src[1];
      __dst[0] = v41;
      __dst[1] = *&v83[16];
      __dst[2] = *&v83[32];
      __dst[3] = *&v83[48];
      v82 = 1;
      LOBYTE(__dst[4]) = 1;
      sub_1D80588CC(v83, __src);
      sub_1D8058648();
      sub_1D805869C();
      sub_1D8190634();
      memcpy(__dst, __src, 0x41uLL);
      v85 = 1;
      BYTE1(__dst[4]) = 1;
      v42 = MEMORY[0x1E697F960];
      sub_1D8056924(0, &qword_1ECA0FD28, &type metadata for JSArrayValueView, &type metadata for JSONSchemaBoolValueRowControlView, MEMORY[0x1E697F960]);
      sub_1D8056924(0, &qword_1ECA0FD30, &type metadata for JSONSchemaIntegerValueRowControlView, &type metadata for JSONSchemaNumberValueRowControlView, v42);
      sub_1D8058448();
      sub_1D805859C();
      sub_1D8190634();
      memcpy(__src, v84, 0x42uLL);
      v86 = 0;
      BYTE2(__src[8]) = 0;
      sub_1D805604C();
      sub_1D8056924(0, &qword_1ECA0FD38, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSObjectValueView, v42);
      sub_1D80583C8();
      sub_1D80586F0();
      sub_1D8190634();

      sub_1D8058928(v83);
      break;
    case 4:
      v20 = __src[0] & 0x1FFFFFFFFFFFFFFFLL;
      sub_1D8191534();
      v21 = sub_1D8191524();
      v22 = swift_allocObject();
      v23 = MEMORY[0x1E69E85E0];
      *(v22 + 16) = v21;
      *(v22 + 24) = v23;
      v24 = sub_1D8191524();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v23;
      sub_1D8190AB4();
      v26 = __dst[0];
      LOBYTE(v23) = __dst[1];
      v84[0] = v20;
      type metadata accessor for JSONSchemaValueString(0);

      sub_1D8190984();
      *v83 = v26;
      v83[16] = v23;
      *&v83[24] = 0;
      *&v83[32] = 0;
      *&v83[40] = 257;
      *&v83[48] = __src[0];
      *&v83[56] = __src[1];
      __dst[0] = v26;
      __dst[1] = *&v83[16];
      __dst[2] = *&v83[32];
      __dst[3] = *&v83[48];
      v85 = 0;
      LOBYTE(__dst[4]) = 0;
      sub_1D805881C(v83, __src);
      sub_1D8058320();
      sub_1D8058374();
      sub_1D8190634();
      memcpy(__src, v84, 0x41uLL);
      v86 = 1;
      BYTE2(__src[8]) = 1;
      sub_1D805604C();
      sub_1D8056924(0, &qword_1ECA0FD38, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSObjectValueView, MEMORY[0x1E697F960]);
      sub_1D80583C8();
      sub_1D80586F0();
      sub_1D8190634();

      sub_1D8058878(v83);
      break;
    case 5:
      __src[0] &= 0x1FFFFFFFFFFFFFFFuLL;
      type metadata accessor for JSONSchemaValueObject(0);

      sub_1D8190984();
      v85 = 1;
      __dst[1] = *v83;
      __dst[2] = *&v83[16];
      __dst[3] = *&v83[32];
      LOBYTE(__dst[4]) = 1;
      sub_1D8058320();
      sub_1D8058374();

      sub_1D8190634();
      memcpy(__src, v84, 0x41uLL);
      v86 = 1;
      BYTE2(__src[8]) = 1;
      sub_1D805604C();
      sub_1D8056924(0, &qword_1ECA0FD38, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSObjectValueView, MEMORY[0x1E697F960]);
      sub_1D80583C8();
      sub_1D80586F0();
      sub_1D8190634();

      goto LABEL_19;
    default:
      type metadata accessor for JSONSchemaValueArray(0);

      sub_1D8190984();
      v82 = 0;
      v67 = *&__dst[0];
      __dst[1] = *v83;
      __dst[2] = *&v83[16];
      __dst[3] = *&v83[32];
      LOBYTE(__dst[4]) = 0;
      sub_1D80584F4();
      sub_1D8058548();

      sub_1D8190634();
      memcpy(__dst, __src, 0x41uLL);
      v85 = 0;
      BYTE1(__dst[4]) = 0;
      v68 = a1;
      v19 = MEMORY[0x1E697F960];
      sub_1D8056924(0, &qword_1ECA0FD28, &type metadata for JSArrayValueView, &type metadata for JSONSchemaBoolValueRowControlView, MEMORY[0x1E697F960]);
      sub_1D8056924(0, &qword_1ECA0FD30, &type metadata for JSONSchemaIntegerValueRowControlView, &type metadata for JSONSchemaNumberValueRowControlView, v19);
      sub_1D8058448();
      sub_1D805859C();
      sub_1D8190634();
      memcpy(__src, v84, 0x42uLL);
      v86 = 0;
      BYTE2(__src[8]) = 0;
      sub_1D805604C();
      a1 = v68;
      sub_1D8056924(0, &qword_1ECA0FD38, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSObjectValueView, v19);
      sub_1D80583C8();
      sub_1D80586F0();
      sub_1D8190634();

LABEL_19:

      break;
  }

  memcpy(v87, __dst, sizeof(v87));
  v51 = a1 + v14[6];
  v52 = *v51;
  v53 = *(v51 + 1);
  LOBYTE(__src[0]) = v52;
  __src[1] = v53;
  sub_1D8058C18(0, &qword_1ECA0FE78, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1D81909B4();
  v54 = __dst[0];
  LODWORD(v68) = LOBYTE(__dst[1]);
  v55 = a1 + v14[7];
  v56 = *v55;
  v57 = *(v55 + 1);
  LOBYTE(__src[0]) = v56;
  __src[1] = v57;
  sub_1D81909B4();
  v58 = __dst[0];
  LODWORD(v67) = LOBYTE(__dst[1]);
  sub_1D8058B58();
  __src[0] = v81;
  __src[1] = v76;
  __src[2] = v80;
  __src[3] = v79;
  __src[4] = v78;
  __src[5] = v77;
  __src[6] = v75;
  __src[7] = v74;
  __src[8] = v73;
  __src[9] = v72;
  v59 = v70;
  memcpy(v70, __src, 0x50uLL);
  sub_1D8055928();
  v61 = v60;
  sub_1D8058B58();
  v62 = *(v61 + 64);
  memcpy(v83, v87, sizeof(v83));
  memcpy(&v59[v62], v87, 0x43uLL);
  v63 = &v59[*(v61 + 80)];
  *v63 = v54;
  v63[16] = v68;
  *(v63 + 24) = v58;
  v63[40] = v67;
  sub_1D8058234();
  sub_1D8058B58();

  sub_1D80557E8();

  memcpy(v84, v87, 0x43uLL);
  sub_1D80557E8();
  sub_1D80557E8();
  *&__dst[0] = v81;
  *(&__dst[0] + 1) = v76;
  *&__dst[1] = v80;
  *(&__dst[1] + 1) = v79;
  *&__dst[2] = v78;
  *(&__dst[2] + 1) = v77;
  *&__dst[3] = v75;
  *(&__dst[3] + 1) = v74;
  *&__dst[4] = v73;
  *(&__dst[4] + 1) = v72;
  return sub_1D805879C(__dst);
}

uint64_t sub_1D8051E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1D8190574();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  sub_1D8058AF0();
  return sub_1D8051E6C(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_1D8051E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v42 = a2;
  v47 = a3;
  v4 = type metadata accessor for JSONSchemaView();
  v5 = v4 - 8;
  v38[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38[1] = v6;
  v38[2] = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8055EE8();
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8055BB8();
  v45 = v10;
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v39 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8055B84(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v43 = v38 - v15;
  sub_1D8056924(0, &qword_1ECA0FCA8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v44 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v38 - v21;
  sub_1D81905D4();
  v23 = (a1 + *(v5 + 48));
  v24 = *v23;
  v25 = *(v23 + 2);
  v48 = v24;
  v49 = v25;
  sub_1D8058C18(0, &qword_1ECA0FEC0, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1D81909B4();
  v26 = v42;
  sub_1D8190B64();
  if (v26)
  {
    sub_1D8058B58();
    v27 = swift_allocObject();
    sub_1D8057C18();
    *v9 = v26;
    v9[1] = sub_1D8058BB0;
    v9[2] = v27;
    v28 = *(v41 + 64);
    *(v9 + v28) = swift_getKeyPath();
    sub_1D7E1898C(0, &qword_1ECA0FF70, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    sub_1D8055CA4(0);
    sub_1D8055F70(&qword_1ECA0FD00, sub_1D8055CA4);
    sub_1D8055F70(&qword_1ECA0FD08, sub_1D8055EE8);
    sub_1D8190DB4();
    v29 = v39;
    sub_1D81903B4();
    v30 = v43;
    v31 = v45;
    (*(v40 + 32))(v43, v29, v45);
    v32 = 0;
    v33 = v31;
  }

  else
  {
    v32 = 1;
    v33 = v45;
    v30 = v43;
  }

  __swift_storeEnumTagSinglePayload(v30, v32, 1, v33);
  v34 = *(v18 + 16);
  v35 = v44;
  v34(v44, v22, v17);
  sub_1D8058B58();
  v34(v47, v35, v17);
  sub_1D8055AE8();
  sub_1D8058B58();
  sub_1D80557E8();
  v36 = *(v18 + 8);
  v36(v22, v17);
  sub_1D80557E8();
  return (v36)(v35, v17);
}

uint64_t sub_1D80524C0()
{
  type metadata accessor for JSONSchemaView();
  sub_1D8058C18(0, &qword_1ECA0FEC0, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1D8190DB4();
  return sub_1D81909A4();
}

uint64_t sub_1D8052560@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D8190574();
  v3 = sub_1D8190944();
  v4 = sub_1D81908F4();
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v3;
  *(a1 + 48) = result;
  *(a1 + 56) = v4;
  return result;
}

uint64_t sub_1D80525EC()
{
  sub_1D80562B8();
  sub_1D8055F70(&qword_1ECA0FE08, sub_1D80562B8);
  return sub_1D8190424();
}

uint64_t sub_1D8052680()
{
  sub_1D8190774();
  sub_1D8057FA4(0, &qword_1ECA0FD60, MEMORY[0x1E697F960]);
  sub_1D8056AD4();
  return sub_1D8190334();
}

uint64_t sub_1D8052718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8057FA4(0, &qword_1ECA0FF00, MEMORY[0x1E697F948]);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v55 = v54 - v5;
  v6 = sub_1D81905C4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1D8056338();
  v57 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v11 = sub_1D814CCCC(sub_1D805803C);
  v13 = v12;
  if (v14)
  {
    sub_1D81905B4();
    sub_1D81905A4();
    __src[0] = v11;
    v15 = v11;
    sub_1D7E61D28();
    sub_1D8190F84();
    sub_1D8190594();

    sub_1D81905A4();
    sub_1D81905E4();
    v53 = 256;
    v52 = 0;
    v16 = sub_1D8190804();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = sub_1D8190784();
    v62 = v20 & 1;
    v60 = 1;
    __src[0] = v16;
    __src[1] = v18;
    LOBYTE(__src[2]) = v20 & 1;
    *(&__src[2] + 1) = v59[0];
    HIDWORD(__src[2]) = *(v59 + 3);
    __src[3] = v22;
    LOBYTE(__src[4]) = v23;
    *(&__src[4] + 1) = v61[0];
    HIDWORD(__src[4]) = *(v61 + 3);
    memset(&__src[5], 0, 32);
    LOBYTE(__src[9]) = 1;
    memcpy(v55, __src, 0x49uLL);
    swift_storeEnumTagMultiPayload();
    sub_1D805805C(__src, v59);
    sub_1D8056924(0, &qword_1ECA0FD70, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v25 = v24;
    sub_1D8056484();
    v27 = v26;
    v28 = sub_1D8056A30();
    sub_1D805654C(255);
    v30 = v29;
    v31 = sub_1D8057164(&qword_1ECA0FDE8, sub_1D805654C, sub_1D80569FC);
    v59[0] = v30;
    v59[1] = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v59[0] = v25;
    v59[1] = v27;
    v59[2] = v28;
    v59[3] = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1D8190634();
    sub_1D80580EC(v11, v13, 1);
    return sub_1D80580FC(__src);
  }

  else
  {
    v54[2] = a2;
    sub_1D81905B4();
    sub_1D81905A4();
    sub_1D8190594();
    sub_1D81905A4();
    sub_1D81905E4();
    v53 = 256;
    v34 = sub_1D8190804();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = sub_1D8190784();
    v54[1] = v54;
    LOBYTE(v61[0]) = v38 & 1;
    v62 = 1;
    v59[0] = v34;
    v59[1] = v36;
    LOBYTE(v59[2]) = v38 & 1;
    v59[3] = v40;
    LOBYTE(v59[4]) = v41;
    memset(&v59[5], 0, 32);
    LOBYTE(v59[9]) = 1;
    MEMORY[0x1EEE9AC00](v41);
    v54[-4] = a1;
    v54[-3] = v11;
    v52 = v13;
    sub_1D8056924(0, &qword_1ECA0FD70, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v43 = v42;
    sub_1D8056484();
    v45 = v44;
    v46 = sub_1D8056A30();
    sub_1D805654C(255);
    v48 = v47;
    v49 = sub_1D8057164(&qword_1ECA0FDE8, sub_1D805654C, sub_1D80569FC);
    __src[0] = v48;
    __src[1] = v49;
    v50 = swift_getOpaqueTypeConformance2();
    sub_1D81908B4();
    sub_1D80580EC(v11, v13, 0);
    memcpy(__src, v59, 0x49uLL);
    sub_1D80580FC(__src);
    v51 = v57;
    (*(v8 + 16))(v55, v10, v57);
    swift_storeEnumTagMultiPayload();
    v59[0] = v43;
    v59[1] = v45;
    v59[2] = v46;
    v59[3] = v50;
    swift_getOpaqueTypeConformance2();
    sub_1D8190634();
    return (*(v8 + 8))(v10, v51);
  }
}

uint64_t sub_1D8052E24@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1D80500E8();
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1D8052E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a2;
  v49 = a3;
  v55 = a4;
  sub_1D80565B4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8056580(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8056894();
  v14 = v13;
  v52 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D8190694();
  MEMORY[0x1EEE9AC00](v16 - 8);
  sub_1D8056624();
  v53 = v17;
  v47 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D805654C(0);
  v54 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - v23;
  if (*(a1 + *(type metadata accessor for JSONSchemaView() + 20)) == 1)
  {
    v25 = sub_1D8190674();
    v42 = a1;
    MEMORY[0x1EEE9AC00](v25);
    v45 = v14;
    v46 = v10;
    v26 = v48;
    v27 = v49;
    *(&v41 - 2) = v48;
    *(&v41 - 1) = v27;
    sub_1D80566B8();
    v43 = v6;
    v44 = v12;
    sub_1D8055F70(&qword_1ECA0FDC8, sub_1D80566B8);
    sub_1D8190494();
    v28 = sub_1D8190684();
    MEMORY[0x1EEE9AC00](v28);
    *(&v41 - 4) = v42;
    *(&v41 - 3) = v26;
    *(&v41 - 2) = v27;
    sub_1D8056924(0, &qword_1ECA0FDD8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1D8056978();
    v29 = v50;
    sub_1D8190494();
    v30 = *(v43 + 48);
    v31 = v47;
    v32 = v51;
    (*(v47 + 16))(v51, v56, v53);
    v33 = v52;
    v34 = v45;
    (*(v52 + 16))(&v32[v30], v29, v45);
    v35 = v44;
    sub_1D8190604();
    v36 = v46;
    (*(v46 + 16))(v21, v35, v9);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v9);
    v37 = sub_1D80569FC();
    MEMORY[0x1DA7128D0](v21, v9, v37);
    sub_1D80557E8();
    (*(v36 + 8))(v35, v9);
    (*(v33 + 8))(v29, v34);
    (*(v31 + 8))(v56, v53);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v9);
    v38 = sub_1D80569FC();
    MEMORY[0x1DA7128D0](v21, v9, v38);
    sub_1D80557E8();
  }

  v39 = sub_1D8057164(&qword_1ECA0FDE8, sub_1D805654C, sub_1D80569FC);
  MEMORY[0x1DA7128C0](v24, v54, v39);
  return sub_1D80557E8();
}

uint64_t sub_1D80534EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for JSONSchemaView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1D81905D4();
  sub_1D8058B58();
  v8 = (v7 + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_1D8057C18();
  v10 = (v9 + v8);
  *v10 = a2;
  v10[1] = a3;
  sub_1D8190DB4();
  return sub_1D81909E4();
}

uint64_t sub_1D8053680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8190484();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1D80557B4(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (a1 + *(type metadata accessor for JSONSchemaView() + 56));
  if (*v9)
  {
    (*v9)(a2, a3);
  }

  sub_1D8058C18(0, &qword_1ECA0FE78, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1D81909A4();
  sub_1D804F554();
  MEMORY[0x1DA712C90](v8);
  sub_1D8190474();
  sub_1D8190A94();
  return sub_1D80557E8();
}

uint64_t sub_1D8053830()
{
  sub_1D8190774();
  sub_1D8056924(0, &qword_1ECA0FD70, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  sub_1D8056A30();
  return sub_1D8190334();
}

double sub_1D80538D8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1D81905C4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D81905B4();
  sub_1D81905A4();
  type metadata accessor for JSONSchema(0);
  sub_1D818F7E4();
  sub_1D8190594();

  sub_1D81905A4();
  sub_1D81905E4();
  v3 = sub_1D8190804();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1D8190784();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  return result;
}

uint64_t sub_1D8053A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v36 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  MEMORY[0x1EEE9AC00](v36);
  v37 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8057BBC(0, &qword_1ECA0FEF8, MEMORY[0x1E697F948]);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v34 - v7;
  sub_1D80570B8();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for JSONSchemaView();
  v15 = a1;
  v16 = (a1 + *(v14 + 48));
  v18 = *v16;
  v17 = v16[1];
  v41 = *v16;
  v42 = v17;
  sub_1D8058C18(0, &qword_1ECA0FEC8, &type metadata for SchemaViewValue, MEMORY[0x1E6981790]);
  v19 = sub_1D8190994();
  v20 = v40;
  if (v40 >> 61)
  {
    v34[1] = v14;

    v41 = v18;
    v42 = v17;
    sub_1D8190994();
    v26 = v40 & 0x1FFFFFFFFFFFFFFFLL;
    if (v40 >> 61 == 5)
    {
      sub_1D8058B58();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = v35;
        v28 = sub_1D8057C18();
        MEMORY[0x1EEE9AC00](v28);
        v34[-4] = v27;
        v34[-3] = v26;
        v34[-2] = v15;
        sub_1D8055F70(&qword_1ECA0FE58, type metadata accessor for JSONSchemaView);
        sub_1D8190424();
        (*(v11 + 16))(v8, v13, v10);
        swift_storeEnumTagMultiPayload();
        sub_1D8055F70(&qword_1ECA0FE70, sub_1D80570B8);
        v29 = v39;
        sub_1D8190634();

        (*(v11 + 8))(v13, v10);
        sub_1D8057098(0);
        __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
        return sub_1D80557E8();
      }

      sub_1D80557E8();
    }

    else
    {
    }

    v32 = v39;
    sub_1D8057098(0);
    v23 = v33;
    v24 = v32;
    v25 = 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v19);
    v34[-2] = v20;
    v34[-1] = v15;
    sub_1D8055F70(&qword_1ECA0FE58, type metadata accessor for JSONSchemaView);
    sub_1D8190424();
    (*(v11 + 16))(v8, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_1D8055F70(&qword_1ECA0FE70, sub_1D80570B8);
    v21 = v39;
    sub_1D8190634();

    (*(v11 + 8))(v13, v10);
    sub_1D8057098(0);
    v23 = v22;
    v24 = v21;
    v25 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
}

void sub_1D8053FF0(uint64_t a1)
{
  v2 = type metadata accessor for JSONSchemaView();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for JSONSchema(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1D8058B58();
  sub_1D8058B58();
  *(swift_allocObject() + 16) = a1;
  sub_1D8057C18();

  sub_1D804FED8();
}

uint64_t sub_1D80541B4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D8055F70(&qword_1ECA0D7E8, type metadata accessor for JSONSchemaValueArray);

  sub_1D818E9D4();

  swift_getKeyPath();
  sub_1D818E9F4();

  v3 = OBJC_IVAR____TtC5TeaUI20JSONSchemaValueArray__value;
  v4 = swift_beginAccess();
  MEMORY[0x1DA713500](v4);
  sub_1D7E2893C(*((*(a2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1D8191404();
  v5 = swift_endAccess();
  sub_1D7F02238(v5);
  swift_getKeyPath();
  sub_1D818E9E4();

  type metadata accessor for JSONSchemaView();
  sub_1D8058C18(0, &qword_1ECA0FE78, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1D81909A4();
}

void sub_1D80543C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for JSONSchemaView();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for JSONSchema(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1D8058B58();
  sub_1D8058B58();
  *(swift_allocObject() + 16) = a2;
  sub_1D8057C18();
  type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  sub_1D8190DB4();

  sub_1D804FED8();
}

uint64_t sub_1D8054594(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  switch(a3 >> 61)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
      v5 = a3 & 0x1FFFFFFFFFFFFFFFLL;
      break;
    default:
      break;
  }

  sub_1D7E1898C(0, &qword_1ECA0D298, type metadata accessor for JSONSchemaValue, type metadata accessor for JSONSchemaValueObject.EnablableValue);
  swift_allocObject();

  sub_1D804F474(v5, 1);
  swift_getKeyPath();
  sub_1D8055F70(&qword_1ECA0D810, type metadata accessor for JSONSchemaValueObject);
  sub_1D818E9D4();

  swift_getKeyPath();
  sub_1D818E9F4();

  v6 = OBJC_IVAR____TtC5TeaUI21JSONSchemaValueObject__value;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a4 + v6);
  sub_1D7EF5FAC();
  *(a4 + v6) = v9;
  v7 = swift_endAccess();
  sub_1D7F02238(v7);
  swift_getKeyPath();
  sub_1D818E9E4();

  type metadata accessor for JSONSchemaView();
  sub_1D8058C18(0, &qword_1ECA0FE78, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1D81909A4();
}

uint64_t sub_1D8054804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v49 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  MEMORY[0x1EEE9AC00](v49);
  v50 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for JSONSchemaView();
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1D8056924(0, &qword_1ECA0FDD8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v7 = v6;
  v62 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v47 - v8;
  sub_1D8057440();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v58 = v47 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v57 = v47 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v55 = v47 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v47 - v22;
  v24 = (a1 + *(v4 + 48));
  v25 = v24[1];
  v53 = *v24;
  v54 = v4;
  v65 = v53;
  v66 = v25;
  sub_1D8058C18(0, &qword_1ECA0FEC8, &type metadata for SchemaViewValue, MEMORY[0x1E6981790]);
  sub_1D8190994();
  v63 = v20;
  v60 = v7;
  v51 = v9;
  v52 = v5;
  if (v64 >> 61)
  {

    v28 = 1;
  }

  else
  {

    v47[1] = sub_1D81905D4();
    v48 = v23;
    v47[0] = v26;
    sub_1D8058B58();
    swift_allocObject();
    sub_1D8057C18();
    v23 = v48;
    v7 = v60;
    v27 = v62;
    v20 = v63;
    sub_1D81909E4();
    (*(v27 + 32))(v23, v9, v7);
    v28 = 0;
  }

  __swift_storeEnumTagSinglePayload(v23, v28, 1, v7);
  v65 = v53;
  v66 = v25;
  sub_1D8190994();
  if (v64 >> 61 == 5)
  {
    sub_1D8058B58();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D80557E8();
      sub_1D81905D4();
      v53 = v29;
      sub_1D8058B58();
      swift_allocObject();
      sub_1D8057C18();
      v30 = v51;
      v20 = v63;
      sub_1D81909E4();

      (*(v62 + 32))(v20, v30, v7);
      v31 = 0;
      goto LABEL_10;
    }

    sub_1D80557E8();
  }

  else
  {
  }

  v31 = 1;
LABEL_10:
  v32 = 1;
  __swift_storeEnumTagSinglePayload(v20, v31, 1, v7);
  v33 = a1 + *(v54 + 52);
  v34 = *(v33 + 24);
  if (v34 == 255)
  {
    v45 = v55;
  }

  else
  {
    v35 = v62;
    v37 = *(v33 + 8);
    v36 = *(v33 + 16);
    v38 = *v33;
    v39 = v34 & 1;
    sub_1D8057AC0(*v33, v37, v36, v34 & 1);
    v40 = sub_1D81905D4();
    v53 = v41;
    v54 = v40;
    v50 = v42;
    sub_1D8058B58();
    v43 = swift_allocObject();
    *(v43 + 16) = v38;
    *(v43 + 24) = v37;
    *(v43 + 32) = v36;
    *(v43 + 40) = v39;
    sub_1D8057C18();
    v7 = v60;
    v44 = v51;
    sub_1D81909E4();
    v45 = v55;
    (*(v35 + 32))(v55, v44, v7);
    v32 = 0;
  }

  __swift_storeEnumTagSinglePayload(v45, v32, 1, v7);
  sub_1D8058B58();
  sub_1D8058B58();
  sub_1D8058B58();
  sub_1D8058B58();
  sub_1D80573D8();
  sub_1D8058B58();
  sub_1D8058B58();
  sub_1D80557E8();
  sub_1D80557E8();
  sub_1D80557E8();
  sub_1D80557E8();
  sub_1D80557E8();
  return sub_1D80557E8();
}

uint64_t sub_1D8055034()
{
  OUTLINED_FUNCTION_76_0();
  type metadata accessor for JSONSchemaView();
  v0 = OUTLINED_FUNCTION_3_87();
  sub_1D8058C18(v0, v1, v2, v3);
  return sub_1D81909A4();
}

uint64_t sub_1D80550A8(void (*a1)(), uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for JSONSchemaView();
  if (a4)
  {
    v6 = MEMORY[0x1E6981790];
    sub_1D8058C18(0, &qword_1ECA0FEC0, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
    sub_1D8190994();
    sub_1D8058C18(0, &qword_1ECA0FEC8, &type metadata for SchemaViewValue, v6);
    sub_1D8190994();
    a1();
  }

  else
  {
    sub_1D8058C18(0, &qword_1ECA0FEC8, &type metadata for SchemaViewValue, MEMORY[0x1E6981790]);
    sub_1D8190994();
    a1();
  }
}

void sub_1D8055218()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  sub_1D8057900();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22[-v17];
  v24 = v0;
  sub_1D8056924(0, &qword_1ECA0FDD8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  sub_1D8056978();
  sub_1D8190B04();
  v23 = v0;
  sub_1D8190B04();
  v19 = *(v6 + 16);
  v19(v12, v18, v4);
  v19(v9, v15, v4);
  v19(v2, v12, v4);
  sub_1D80579A0();
  v19(&v2[*(v20 + 48)], v9, v4);
  v21 = *(v6 + 8);
  v21(v15, v4);
  v21(v18, v4);
  v21(v9, v4);
  v21(v12, v4);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D805547C(uint64_t *a1)
{
  sub_1D81905D4();
  v2 = *a1;
  v7 = a1[3];
  v8 = v2;
  v3 = swift_allocObject();
  v4 = *(a1 + 1);
  v3[1] = *a1;
  v3[2] = v4;
  *(v3 + 41) = *(a1 + 25);
  sub_1D8057A0C(&v8, v6);

  sub_1D8057A0C(&v7, v6);

  return sub_1D81909E4();
}

uint64_t sub_1D80555F8(uint64_t *a1)
{
  sub_1D81905D4();
  v2 = *a1;
  v7 = a1[3];
  v8 = v2;
  v3 = swift_allocObject();
  v4 = *(a1 + 1);
  v3[1] = *a1;
  v3[2] = v4;
  *(v3 + 41) = *(a1 + 25);
  sub_1D8057A0C(&v8, v6);

  sub_1D8057A0C(&v7, v6);

  return sub_1D81909E4();
}

uint64_t sub_1D80557E8()
{
  v1 = OUTLINED_FUNCTION_76_0();
  v2(v1);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1D8055844()
{
  if (!qword_1ECA0FC60)
  {
    sub_1D80558F4(255);
    sub_1D8055F70(&qword_1ECA0FD40, sub_1D80558F4);
    v0 = sub_1D81907D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FC60);
    }
  }
}

void sub_1D8055928()
{
  if (!qword_1ECA0FC70)
  {
    sub_1D8058C18(255, &qword_1ECA0FC78, &type metadata for JSMetadataView, MEMORY[0x1E69E6720]);
    sub_1D80559DC(255);
    sub_1D8055FB8();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1ECA0FC70);
    }
  }
}

void sub_1D8055A10()
{
  if (!qword_1ECA0FC88)
  {
    sub_1D8055A78(255);
    v0 = sub_1D8190B14();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FC88);
    }
  }
}

void sub_1D8055AE8()
{
  if (!qword_1ECA0FCA0)
  {
    sub_1D8056924(255, &qword_1ECA0FCA8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1D8055B84(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0FCA0);
    }
  }
}

void sub_1D8055BB8()
{
  if (!qword_1ECA0FCB8)
  {
    sub_1D8055CA4(255);
    sub_1D8055EE8();
    sub_1D8055F70(&qword_1ECA0FD00, sub_1D8055CA4);
    sub_1D8055F70(&qword_1ECA0FD08, sub_1D8055EE8);
    v0 = sub_1D81903C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FCB8);
    }
  }
}

void sub_1D8055CE0(uint64_t a1, void *a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    v8 = OUTLINED_FUNCTION_35();
    v9(v8);
    sub_1D8055F70(a4, a5);
    v10 = sub_1D8190A14();
    if (!v11)
    {
      atomic_store(v10, v5);
    }
  }
}

void sub_1D8055DA4()
{
  if (!qword_1ECA0FCD0)
  {
    sub_1D8055E0C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0FCD0);
    }
  }
}

void sub_1D8055E0C()
{
  if (!qword_1ECA0FCD8)
  {
    sub_1D8055E6C();
    v0 = sub_1D8190414();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FCD8);
    }
  }
}

void sub_1D8055E6C()
{
  if (!qword_1ECA0FCE0)
  {
    sub_1D8058C18(255, &qword_1ECA0FCE8, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    v0 = sub_1D8190754();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FCE0);
    }
  }
}

void sub_1D8055EE8()
{
  if (!qword_1ECA0FCF8)
  {
    v0 = type metadata accessor for JSONSchemaPresetSelectorView();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FCF8);
    }
  }
}

uint64_t sub_1D8055F70(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D8055FB8()
{
  if (!qword_1ECA0FD18)
  {
    sub_1D805604C();
    sub_1D8056924(255, &qword_1ECA0FD38, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSObjectValueView, MEMORY[0x1E697F960]);
    v0 = sub_1D8190644();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FD18);
    }
  }
}

void sub_1D805604C()
{
  if (!qword_1ECA0FD20)
  {
    v0 = MEMORY[0x1E697F960];
    sub_1D8056924(255, &qword_1ECA0FD28, &type metadata for JSArrayValueView, &type metadata for JSONSchemaBoolValueRowControlView, MEMORY[0x1E697F960]);
    sub_1D8056924(255, &qword_1ECA0FD30, &type metadata for JSONSchemaIntegerValueRowControlView, &type metadata for JSONSchemaNumberValueRowControlView, v0);
    v1 = sub_1D8190644();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA0FD20);
    }
  }
}

void sub_1D8056108()
{
  if (!qword_1ECA0FD48)
  {
    sub_1D8055844();
    sub_1D805620C();
    sub_1D8055F70(&qword_1ECA0FE10, sub_1D8055844);
    sub_1D8055F70(&qword_1ECA0FE18, sub_1D805620C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ECA0FD48);
    }
  }
}

void sub_1D805620C()
{
  if (!qword_1ECA0FD50)
  {
    sub_1D81903D4();
    sub_1D80562B8();
    sub_1D8055F70(&qword_1ECA0FE08, sub_1D80562B8);
    v0 = sub_1D8190434();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FD50);
    }
  }
}

void sub_1D80562B8()
{
  if (!qword_1ECA0FD58)
  {
    sub_1D8057FA4(255, &qword_1ECA0FD60, MEMORY[0x1E697F960]);
    sub_1D8056AD4();
    v0 = sub_1D8190324();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FD58);
    }
  }
}

void sub_1D8056338()
{
  if (!qword_1ECA0FD68)
  {
    sub_1D8056924(255, &qword_1ECA0FD70, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1D8056484();
    sub_1D8056A30();
    sub_1D805654C(255);
    sub_1D8057164(&qword_1ECA0FDE8, sub_1D805654C, sub_1D80569FC);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ECA0FD68);
    }
  }
}

void sub_1D8056484()
{
  if (!qword_1ECA0FD78)
  {
    sub_1D805654C(255);
    sub_1D8057164(&qword_1ECA0FDE8, sub_1D805654C, sub_1D80569FC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ECA0FD78);
    }
  }
}

void sub_1D80565B4()
{
  if (!qword_1ECA0FD90)
  {
    sub_1D8056624();
    sub_1D8056894();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0FD90);
    }
  }
}

void sub_1D8056624()
{
  if (!qword_1ECA0FD98)
  {
    sub_1D80566B8();
    sub_1D8055F70(&qword_1ECA0FDC8, sub_1D80566B8);
    v0 = sub_1D81904A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FD98);
    }
  }
}

void sub_1D80566B8()
{
  if (!qword_1ECA0FDA0)
  {
    sub_1D8058C18(255, &qword_1ECA0FDA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6BC0]);
    sub_1D81906A4();
    sub_1D80567C4();
    sub_1D8055F70(&qword_1ECA0FDB8, MEMORY[0x1E697C748]);
    sub_1D8056840();
    v0 = sub_1D8190B54();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FDA0);
    }
  }
}

unint64_t sub_1D80567C4()
{
  result = qword_1ECA0FDB0;
  if (!qword_1ECA0FDB0)
  {
    sub_1D8058C18(255, &qword_1ECA0FDA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6BC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FDB0);
  }

  return result;
}

unint64_t sub_1D8056840()
{
  result = qword_1ECA0FDC0;
  if (!qword_1ECA0FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FDC0);
  }

  return result;
}

void sub_1D8056894()
{
  if (!qword_1ECA0FDD0)
  {
    sub_1D8056924(255, &qword_1ECA0FDD8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1D8056978();
    v0 = sub_1D81904A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FDD0);
    }
  }
}

void sub_1D8056924(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D8056978()
{
  result = qword_1ECA0FDE0;
  if (!qword_1ECA0FDE0)
  {
    sub_1D8056924(255, &qword_1ECA0FDD8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FDE0);
  }

  return result;
}

unint64_t sub_1D8056A30()
{
  result = qword_1ECA0FDF8;
  if (!qword_1ECA0FDF8)
  {
    sub_1D8056924(255, &qword_1ECA0FD70, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FDF8);
  }

  return result;
}

unint64_t sub_1D8056AD4()
{
  result = qword_1ECA0FE00;
  if (!qword_1ECA0FE00)
  {
    sub_1D8057FA4(255, &qword_1ECA0FD60, MEMORY[0x1E697F960]);
    sub_1D8056924(255, &qword_1ECA0FD70, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1D8056484();
    sub_1D8056A30();
    sub_1D805654C(255);
    sub_1D8057164(&qword_1ECA0FDE8, sub_1D805654C, sub_1D80569FC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FE00);
  }

  return result;
}

void sub_1D8056C60()
{
  if (!qword_1ECA0FE20)
  {
    sub_1D8056108();
    sub_1D8056DD8();
    sub_1D8055844();
    sub_1D805620C();
    sub_1D8055F70(&qword_1ECA0FE10, sub_1D8055844);
    sub_1D8055F70(&qword_1ECA0FE18, sub_1D805620C);
    swift_getOpaqueTypeConformance2();
    sub_1D8055F70(&qword_1ECA0FE30, sub_1D8056DD8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ECA0FE20);
    }
  }
}

void sub_1D8056DD8()
{
  if (!qword_1ECA0FE28)
  {
    sub_1D8056924(255, &qword_1ECA0FD70, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1D8056A30();
    v0 = sub_1D8190324();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FE28);
    }
  }
}

void sub_1D8056E68()
{
  if (!qword_1ECA0FE38)
  {
    sub_1D8056C60();
    sub_1D8057064(255);
    sub_1D8056108();
    sub_1D8056DD8();
    sub_1D8055844();
    sub_1D805620C();
    sub_1D8055F70(&qword_1ECA0FE10, sub_1D8055844);
    sub_1D8055F70(&qword_1ECA0FE18, sub_1D805620C);
    swift_getOpaqueTypeConformance2();
    sub_1D8055F70(&qword_1ECA0FE30, sub_1D8056DD8);
    swift_getOpaqueTypeConformance2();
    sub_1D8057164(&qword_1ECA0FE60, sub_1D8057064, sub_1D80571D4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ECA0FE38);
    }
  }
}

void sub_1D80570B8()
{
  if (!qword_1ECA0FE50)
  {
    sub_1D81903D4();
    type metadata accessor for JSONSchemaView();
    sub_1D8055F70(&qword_1ECA0FE58, type metadata accessor for JSONSchemaView);
    v0 = sub_1D8190434();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FE50);
    }
  }
}

uint64_t sub_1D8057164(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D80571D4()
{
  result = qword_1ECA0FE68;
  if (!qword_1ECA0FE68)
  {
    sub_1D8057098(255);
    sub_1D8055F70(&qword_1ECA0FE70, sub_1D80570B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FE68);
  }

  return result;
}

uint64_t sub_1D8057284(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t sub_1D8057304(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for JSONSchemaView();
  OUTLINED_FUNCTION_50(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

void sub_1D80573D8()
{
  if (!qword_1ECA0FE88)
  {
    sub_1D8057440();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECA0FE88);
    }
  }
}

void sub_1D8057440()
{
  if (!qword_1ECA0FE90)
  {
    sub_1D8056924(255, &qword_1ECA0FDD8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FE90);
    }
  }
}

unint64_t sub_1D80574C8()
{
  result = qword_1ECA0FEA0;
  if (!qword_1ECA0FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FEA0);
  }

  return result;
}

void sub_1D8057560()
{
  type metadata accessor for JSONSchema(319);
  if (v0 <= 0x3F)
  {
    sub_1D8058C18(319, &qword_1ECA0FE78, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1D8058C18(319, &qword_1ECA0FEC0, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1D7E1898C(319, &qword_1ECA0FEA8, sub_1D80557B4, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1D8058C18(319, &qword_1ECA0FEC8, &type metadata for SchemaViewValue, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1D8058C18(319, &qword_1ECA0FED0, &type metadata for JSONSchemaView.SaveConfiguration, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1D7E1898C(319, &qword_1ECA0FED8, sub_1D7E31228, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for JSONSchemaView.JSONSaveMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D8057848(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1D8057888(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D8057900()
{
  if (!qword_1ECA0FEE0)
  {
    sub_1D8056924(255, &qword_1ECA0FDD8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    v0 = sub_1D8190B14();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FEE0);
    }
  }
}

void sub_1D80579A0()
{
  if (!qword_1ECA0FEE8)
  {
    sub_1D8057900();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0FEE8);
    }
  }
}

uint64_t objectdestroy_32Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D8057AC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_1D8190DB4();
  }
}

uint64_t sub_1D8057B00()
{
  v1 = type metadata accessor for JSONSchemaView();
  OUTLINED_FUNCTION_50(v1);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);

  return sub_1D80550A8(v2, v3, v4, v5);
}

uint64_t sub_1D8057B6C()
{
  v0 = type metadata accessor for JSONSchemaView();
  OUTLINED_FUNCTION_50(v0);
  return sub_1D8055034();
}

void sub_1D8057BBC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_35();
    sub_1D80570B8();
    v5 = OUTLINED_FUNCTION_17_7();
    v7 = a3(v5, v6, v6);
    if (!v8)
    {
      atomic_store(v7, v3);
    }
  }
}

uint64_t sub_1D8057C18()
{
  v2 = OUTLINED_FUNCTION_30();
  v3(v2);
  OUTLINED_FUNCTION_8();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1D8057C84()
{
  OUTLINED_FUNCTION_76_0();
  v2 = type metadata accessor for JSONSchemaView();
  OUTLINED_FUNCTION_50(v2);
  v3 = *(v1 + 16);

  return sub_1D80541B4(v0, v3);
}

uint64_t objectdestroy_47Tm()
{
  type metadata accessor for JSONSchemaView();
  OUTLINED_FUNCTION_4_20();
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  OUTLINED_FUNCTION_42_10();
  type metadata accessor for JSONSchema(0);
  OUTLINED_FUNCTION_29_13();
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 8))(v0 + v4 + v2);
  OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 8))(v0 + v4 + v2);
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_4_3();
  (*(v7 + 8))(v0 + v4 + v1);
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_28_14();

  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_0_150();
  sub_1D7E1898C(0, v8, v9, MEMORY[0x1E697DCB8]);
  OUTLINED_FUNCTION_17_7();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_39_11();
  if (v2 == 1)
  {

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_4_3();
    (*(v10 + 8))(v1 + v2);
  }

  OUTLINED_FUNCTION_19_21();

  OUTLINED_FUNCTION_9_28();
  if (!v12)
  {
    OUTLINED_FUNCTION_26_14(v11);
  }

  OUTLINED_FUNCTION_21_21();
  if (v13)
  {
  }

  OUTLINED_FUNCTION_35_12();

  return swift_deallocObject();
}

uint64_t sub_1D8057F04(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for JSONSchemaView();
  OUTLINED_FUNCTION_50(v7);
  v8 = *(v3 + 16);

  return sub_1D8054594(a1, a2, a3, v8);
}

void sub_1D8057FA4(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_35();
    sub_1D8056338();
    v7 = v6;
    sub_1D8056924(255, &qword_1ECA0FD70, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, v3);
    }
  }
}

uint64_t sub_1D805805C(uint64_t a1, uint64_t a2)
{
  sub_1D8056924(0, &qword_1ECA0FD70, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D80580EC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D80580FC(uint64_t a1)
{
  sub_1D8056924(0, &qword_1ECA0FD70, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D80581A4()
{
  v1 = *(type metadata accessor for JSONSchemaView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1D8053680(v0 + v2, v4, v5);
}

uint64_t sub_1D8058234()
{
  v2 = OUTLINED_FUNCTION_30();
  v6(v2, v3, v4, v5);
  OUTLINED_FUNCTION_8();
  (*(v7 + 16))(v0, v1);
  return v0;
}

unint64_t sub_1D80582CC()
{
  result = qword_1ECA0FF08;
  if (!qword_1ECA0FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FF08);
  }

  return result;
}

unint64_t sub_1D8058320()
{
  result = qword_1ECA0FF10;
  if (!qword_1ECA0FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FF10);
  }

  return result;
}

unint64_t sub_1D8058374()
{
  result = qword_1ECA0FF18;
  if (!qword_1ECA0FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FF18);
  }

  return result;
}

unint64_t sub_1D80583C8()
{
  result = qword_1ECA0FF20;
  if (!qword_1ECA0FF20)
  {
    sub_1D805604C();
    sub_1D8058448();
    sub_1D805859C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FF20);
  }

  return result;
}

unint64_t sub_1D8058448()
{
  result = qword_1ECA0FF28;
  if (!qword_1ECA0FF28)
  {
    sub_1D8056924(255, &qword_1ECA0FD28, &type metadata for JSArrayValueView, &type metadata for JSONSchemaBoolValueRowControlView, MEMORY[0x1E697F960]);
    sub_1D80584F4();
    sub_1D8058548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FF28);
  }

  return result;
}

unint64_t sub_1D80584F4()
{
  result = qword_1ECA0FF30;
  if (!qword_1ECA0FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FF30);
  }

  return result;
}

unint64_t sub_1D8058548()
{
  result = qword_1ECA0FF38;
  if (!qword_1ECA0FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FF38);
  }

  return result;
}

unint64_t sub_1D805859C()
{
  result = qword_1ECA0FF40;
  if (!qword_1ECA0FF40)
  {
    sub_1D8056924(255, &qword_1ECA0FD30, &type metadata for JSONSchemaIntegerValueRowControlView, &type metadata for JSONSchemaNumberValueRowControlView, MEMORY[0x1E697F960]);
    sub_1D8058648();
    sub_1D805869C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FF40);
  }

  return result;
}

unint64_t sub_1D8058648()
{
  result = qword_1ECA0FF48;
  if (!qword_1ECA0FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FF48);
  }

  return result;
}

unint64_t sub_1D805869C()
{
  result = qword_1ECA0FF50;
  if (!qword_1ECA0FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FF50);
  }

  return result;
}

unint64_t sub_1D80586F0()
{
  result = qword_1ECA0FF58;
  if (!qword_1ECA0FF58)
  {
    sub_1D8056924(255, &qword_1ECA0FD38, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSObjectValueView, MEMORY[0x1E697F960]);
    sub_1D8058320();
    sub_1D8058374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FF58);
  }

  return result;
}

uint64_t sub_1D805879C(uint64_t a1)
{
  sub_1D8058C18(0, &qword_1ECA0FC78, &type metadata for JSMetadataView, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8058AF0()
{
  if (!qword_1ECA0FF68)
  {
    sub_1D8055AB4(255);
    v0 = sub_1D8190374();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0FF68);
    }
  }
}

uint64_t sub_1D8058B58()
{
  v2 = OUTLINED_FUNCTION_30();
  v3(v2);
  OUTLINED_FUNCTION_8();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1D8058BB0()
{
  OUTLINED_FUNCTION_76_0();
  v0 = type metadata accessor for JSONSchemaView();
  OUTLINED_FUNCTION_50(v0);

  return sub_1D80524C0();
}

void sub_1D8058C18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id ContentInsetable<>.ts_adjustContentInset(to:padding:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  [a1 layoutFrame];
  MinX = CGRectGetMinX(v18);
  result = (*(a3 + 8))(a2, a3);
  if (v16 != MinX + a5)
  {
    (*(a3 + 16))(a2, a3, a4 + 0.0, MinX + a5, a6 + 0.0, MinX + a7);

    return [v7 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1D8058E0C(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = sub_1D7E36AB8(a2);
  if (__OFSUB__(v4, a1))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v12 = sub_1D8192414();

    return v12;
  }

  v5 = (v4 - a1) & ~((v4 - a1) >> 63);
  v6 = sub_1D7E36AB8(a2);
  v7 = sub_1D8096AD8(0, v5, v6, a2);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v9 < 0)
  {
    goto LABEL_18;
  }

  sub_1D7F76C78(0, a2);
  sub_1D7F76C78(v9, a2);
  if ((a2 & 0xC000000000000001) != 0 && v9)
  {
    type metadata accessor for SwipeActionView();
    sub_1D8190DB4();
    v10 = 0;
    do
    {
      v11 = v10 + 1;
      sub_1D81921F4();
      v10 = v11;
    }

    while (v9 != v11);
  }

  else
  {
    sub_1D8190DB4();
  }

  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1D8058F84(uint64_t result, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  sub_1D7E35CEC(0, a2, a3);
  v10 = v9;
  sub_1D805B58C(a4, a2, a3);
  OUTLINED_FUNCTION_1_47();
  result = sub_1D8191774();
  if (__OFSUB__(result, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_47();
  sub_1D8191724();
  OUTLINED_FUNCTION_1_47();
  sub_1D81917B4();
  sub_1D8191784();
  if (v12)
  {
    OUTLINED_FUNCTION_1_47();
    sub_1D81917B4();
  }

  else
  {
    v14 = v11;
  }

  OUTLINED_FUNCTION_1_47();
  result = sub_1D8191724();
  if (v14 >= v13)
  {
    sub_1D81918E4();
    return (*(*(v10 - 8) + 8))(v4, v10);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1D80590E0()
{
  v1 = v0;
  sub_1D7E35CEC(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v17 - v6, v0, v3, v5);
  sub_1D805B58C(&qword_1EDBB1FD8, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem);
  v7 = sub_1D8191164();
  v8 = sub_1D7E36AB8(v7);
  result = (*(v4 + 8))(v1, v3);
  if (v8 >= -1)
  {
    if ((v8 + 1) < 3)
    {
      return v7;
    }

    v10 = 4;
    while (1)
    {
      v11 = v8 - (v10 - 3);
      if (__OFSUB__(v8, v10 - 3))
      {
        break;
      }

      result = v10 - 4;
      if (v10 - 4 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1DA714420]();
          v14 = MEMORY[0x1DA714420](v8 - (v10 - 3), v7);
        }

        else
        {
          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }

          v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result >= v12)
          {
            goto LABEL_29;
          }

          if (v11 >= v12)
          {
            goto LABEL_30;
          }

          v13 = *(v7 + 8 * v10);
          v14 = *(v7 + 8 * v11 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1D80E75C4(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v16 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          result = sub_1D80E75C4(v7);
          v7 = result;
          v16 = result & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_26:
            __break(1u);
            break;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        if (v11 >= *(v16 + 16))
        {
          goto LABEL_31;
        }

        *(v16 + 8 * v11 + 32) = v13;
      }

      ++v10;
      if (v8 / -2 + v10 == 4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8059380(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v19 = sub_1D81920A4();
    if (v19)
    {
      v20 = v19;
      v2 = sub_1D7F061FC(v19, 0);
      sub_1D80B7620(v2 + 32, v20, v1);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_39;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v2 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v1 = *(v2 + 16);
        v3 = v1 >> 1;
        goto LABEL_6;
      }

LABEL_39:
      v23 = sub_1D81920A4();
      if (v23 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v1 = v23;
    v3 = v23 / 2;
LABEL_6:
    if (v1 + 1 < 3)
    {
      return v2;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v1 - (v6 - 3);
      if (__OFSUB__(v1, v6 - 3))
      {
        break;
      }

      v8 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1DA714420]();
          v12 = MEMORY[0x1DA714420](v1 - (v6 - 3), v2);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v9)
          {
            goto LABEL_33;
          }

          if (v7 >= v9)
          {
            goto LABEL_34;
          }

          v10 = *(v2 + 8 * v7 + 32);
          v11 = *(v2 + 8 * v6);
          v12 = v10;
        }

        v13 = v12;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_1D80E75C4(v2);
          v14 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v15 = v2 & 0xFFFFFFFFFFFFFF8;
        v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v13;

        if ((v2 & 0x8000000000000000) != 0 || v14)
        {
          v2 = sub_1D80E75C4(v2);
          v15 = v2 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_30:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v7 >= *(v15 + 16))
        {
          goto LABEL_35;
        }

        v17 = v15 + 8 * v7;
        v18 = *(v17 + 32);
        *(v17 + 32) = v11;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

uint64_t sub_1D805958C()
{
  [v0 layoutMargins];
  [v0 layoutMargins];
  return sub_1D7E36AB8(*&v0[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_swipeActionViews]);
}

id sub_1D8059624(id result)
{
  if (*(v1 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_isAutoActionActivated) != (result & 1))
  {
    return [*(v1 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_feedbackGenerator) selectionChanged];
  }

  return result;
}

id sub_1D8059658(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_isAutoActionActivated);
  *(v1 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_isAutoActionActivated) = a1;
  return sub_1D8059624(v2);
}

char *sub_1D8059670()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_swipeActionViews);
  if ((*(v0 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_pinningEdge) & 1) == 0)
  {
    if (v1 >> 62)
    {
      result = sub_1D81920A4();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    sub_1D7E33DD8(0, (v1 & 0xC000000000000001) == 0, v1);
    if ((v1 & 0xC000000000000001) == 0)
    {
      v4 = *(v1 + 32);
      return v4;
    }

    goto LABEL_18;
  }

  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_4;
  }

  result = sub_1D81920A4();
  if (result)
  {
LABEL_4:
    v3 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      sub_1D7E33DD8(result - 1, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) == 0)
      {
        v4 = *(v1 + 8 * v3 + 32);
        return v4;
      }

      v5 = v3;
      return MEMORY[0x1DA714420](v5, v1);
    }

    __break(1u);
LABEL_18:
    v5 = 0;
    return MEMORY[0x1DA714420](v5, v1);
  }

  return result;
}

uint64_t sub_1D8059770()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_swipeActionViews);
  if (v1 >> 62)
  {
    v2 = sub_1D81920A4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(v0 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_pinningEdge);
  sub_1D8190DB4();
  if (v3)
  {
    v4 = sub_1D8058E0C(1, v1);
    v6 = v5;
    v8 = v7;
    v10 = v9;
    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }

    sub_1D81926B4();
    swift_unknownObjectRetain_n();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      swift_unknownObjectRelease();
      v11 = MEMORY[0x1E69E7CC0];
    }

    v12 = *(v11 + 16);

    v13 = (v10 >> 1) - v8;
    if (!__OFSUB__(v10 >> 1, v8))
    {
LABEL_17:
      if (v12 == v13)
      {
        v14 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v14)
        {
          v14 = MEMORY[0x1E69E7CC0];
          goto LABEL_20;
        }

        return v14;
      }

      swift_unknownObjectRelease();
LABEL_13:
      sub_1D7F76958(v4, v6, v8, v10);
      v14 = v18;
LABEL_20:
      swift_unknownObjectRelease();
      return v14;
    }

    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1D7F6EE4C(1, v1);
  v6 = v15;
  v8 = v16;
  v10 = v17;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1D81926B4();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v19 + 16);

  v13 = (v10 >> 1) - v8;
  if (!__OFSUB__(v10 >> 1, v8))
  {
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8059924(uint64_t a1, char a2, double a3, double a4)
{
  swift_getObjectType();
  *(v4 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_presentation) = 1;
  *(v4 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_autoActionThreshold) = 0x4032000000000000;
  v9 = *(a1 + 16);
  if (v9)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1D81922A4();
    v10 = type metadata accessor for SwipeActionView();
    v11 = v9 - 1;
    for (i = 32; ; i += 72)
    {
      memcpy(__dst, (a1 + i), sizeof(__dst));
      memcpy(v38, (a1 + i), sizeof(v38));
      v13 = objc_allocWithZone(v10);
      sub_1D8008738(__dst, v37);
      sub_1D8032B90(v38, a3);
      sub_1D8192274();
      sub_1D81922B4();
      sub_1D81922C4();
      sub_1D8192284();
      if (!v11)
      {
        break;
      }

      --v11;
    }

    v14 = v40;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  *(v4 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_swipeActionViews) = v14;
  *(v4 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_pinningEdge) = a2 & 1;
  *(v4 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_minimumSwipeActionAreaWidth) = a4;
  *(v4 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_swipeActionViewWidth) = a3;
  *(v4 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_isAutoActionEnabled) = 0;
  *(v4 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_isAutoActionActivated) = 0;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCF40]) init];
  *(v4 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_feedbackGenerator) = v15;
  v16 = OUTLINED_FUNCTION_0_63();
  v19 = objc_msgSendSuper2(v17, v18, v16);
  v20 = *&v19[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_swipeActionViews];
  result = sub_1D7E36AB8(v20);
  if (result)
  {
    v22 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v23 = v19;
    sub_1D8190DB4();
    for (j = 0; j != v22; ++j)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1DA714420](j, v20);
      }

      else
      {
        v25 = *(v20 + 8 * j + 32);
      }

      v26 = v25;
      [v23 addSubview_];
    }
  }

  else
  {
    v27 = v19;
  }

  v28 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v29 = v19;
  v30 = OUTLINED_FUNCTION_0_63();
  v32 = [v28 v31];
  [v29 setMaskView_];

  v33 = [v29 maskView];
  if (v33)
  {
    v34 = v33;
    v35 = [objc_opt_self() whiteColor];
    [v34 setBackgroundColor_];
  }

  v36 = [v29 maskView];

  if (v36)
  {
    [v36 setAutoresizingMask_];
  }

  return v29;
}

void sub_1D8059C88()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_presentation) = 1;
  *(v0 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_autoActionThreshold) = 0x4032000000000000;
  sub_1D81923A4();
  __break(1u);
}

void sub_1D8059D1C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  OUTLINED_FUNCTION_5_50();
  if (v1 && (OUTLINED_FUNCTION_5_50(), v1))
  {
    sub_1D8059D80();
  }

  else
  {
    sub_1D8059F04();
  }
}

void sub_1D8059D80()
{
  v21 = sub_1D8059670();
  if (v21)
  {
    v1 = [v0 maskView];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 layer];
      v4 = [v3 presentationLayer];

      if (v4)
      {
        [v4 frame];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;
      }

      else
      {
        [v2 frame];
        v6 = v13;
        v8 = v14;
        v10 = v15;
        v12 = v16;
      }

      sub_1D805B150(v0, v6, v8, v10, v12);
      v18 = v17;
      v19 = *&v0[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_swipeActionViewWidth];
      v20 = v21;
      [v0 bounds];
      [v20 setFrame_];
    }
  }
}

uint64_t sub_1D8059F04()
{
  v1 = [v0 effectiveUserInterfaceLayoutDirection];
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_swipeActionViews];
  sub_1D8190DB4();
  if (v1)
  {
    v2 = sub_1D8059380(v2);
  }

  [v0 layoutMargins];
  v4 = v3;
  [v0 layoutMargins];
  v6 = v5;
  sub_1D805958C();
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_swipeActionViewWidth];
  result = sub_1D7E36AB8(v2);
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = (v8 - (v4 + v6) - v9 * result) / (result + 1);
  sub_1D805B1B0(v0, v2);
  v13 = v12;
  result = sub_1D7E36AB8(v2);
  if (result)
  {
    v14 = result;
    if (result >= 1)
    {
      v15 = 0;
      v16 = v9 + v11;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1DA714420](v15, v2);
        }

        else
        {
          v17 = *(v2 + 8 * v15 + 32);
        }

        v18 = v17;
        ++v15;
        [v0 bounds];
        [v18 setFrame_];

        v13 = v16 + v13;
      }

      while (v14 != v15);
      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
    return result;
  }

LABEL_11:
}

void sub_1D805A0EC(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  [v5 bounds];
  if (CGRectGetWidth(v36) <= 0.0)
  {
    goto LABEL_15;
  }

  sub_1D805ADFC(v5, a2, a3, a4, a5);
  [v5 bounds];
  CGRectGetHeight(v37);
  v11 = OUTLINED_FUNCTION_4_62();
  sub_1D805ADFC(v12, v11, v13, v14, v15);
  [v5 bounds];
  CGRectGetHeight(v38);
  v16 = OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_isAutoActionEnabled;
  if (v5[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_isAutoActionEnabled] == 1 && (OUTLINED_FUNCTION_5_50(), v17) && (v39.origin.x = OUTLINED_FUNCTION_1_109(), CGRectGetWidth(v39) == 0.0))
  {
    sub_1D805A354();
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_isAutoActionActivated;
  v20 = v5[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_isAutoActionActivated];
  v21 = OUTLINED_FUNCTION_4_62();
  sub_1D805A494(v21, v22, v23, v24);
  if (v5[v16] == 1)
  {
    v25 = v5[v19];
    if ((v18 & (v20 ^ v25)) == 1)
    {
      sub_1D805A81C(v25);
    }
  }

  v26 = [v5 maskView];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 layer];
    v29 = OUTLINED_FUNCTION_1_109();
    [v30 v31];

    sub_1D805B4E8(0x73646E756F62, 0xE600000000000000, a1);
    v32 = sub_1D8191C34();
    [a1 setFromValue_];

    OUTLINED_FUNCTION_1_109();
    v33 = sub_1D8191C34();
    [a1 setToValue_];

    sub_1D80D7A40(a1, 0x79656B5F6D696E61, 0xE800000000000000, [v27 layer]);
    OUTLINED_FUNCTION_6_63();
  }

  else
  {
LABEL_15:
    OUTLINED_FUNCTION_6_63();
  }
}

void sub_1D805A354()
{
  v0 = sub_1D8059770();
  v1 = sub_1D7E36AB8(v0);
  if (v1)
  {
    v2 = v1;
    if (v1 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v2; ++i)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1DA714420](i, v0);
      }

      else
      {
        v4 = *(v0 + 8 * i + 32);
      }

      v5 = v4;
      [v4 setAlpha_];
    }
  }

  v6 = sub_1D8059670();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = objc_allocWithZone(MEMORY[0x1E69DD278]);
  v9 = v6;
  v10 = sub_1D805B418(1, sub_1D805B54C, v7, 0.1);
  [v10 startAnimation];
}

void sub_1D805A494(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  [v4 bounds];
  if (CGRectGetWidth(v50) > 0.0)
  {
    [v4 layoutIfNeeded];
    v9 = v4[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_pinningEdge];
    v10 = [v4 maskView];
    if (v10)
    {
      v11 = v10;
      if (v9)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      v13 = [v10 layer];

      [v13 setAnchorPoint_];
    }

    v49 = a4;
    sub_1D805ADFC(v4, a1, a2, a3, a4);
    [v4 bounds];
    CGRectGetHeight(v51);
    v14 = [v4 maskView];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 layer];
      v17 = OUTLINED_FUNCTION_0_151();
      [v18 v19];
    }

    if (v4[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_isAutoActionEnabled] == 1)
    {
      v52.origin.x = OUTLINED_FUNCTION_0_151();
      Width = CGRectGetWidth(v52);
      v53.origin.x = OUTLINED_FUNCTION_0_151();
      v20 = CGRectGetWidth(v53);
      sub_1D805958C();
      v21 = OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_autoActionThreshold;
      v23 = v22 + *&v4[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_autoActionThreshold];
      if (v23 < v20 || (OUTLINED_FUNCTION_5_50(), v45) && Width != 0.0 && (v54.origin.x = OUTLINED_FUNCTION_0_151(), v46 = CGRectGetWidth(v54), sub_1D805958C(), v46 < v47 + *&v4[v21] + 10.0))
      {
        sub_1D8059658(v23 < v20);
      }
    }

    if ((v4[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_presentation] & 1) == 0 && (v4[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_isAutoActionActivated] & 1) == 0)
    {
      v24 = *&v4[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_swipeActionViews];
      v25 = sub_1D7E36AB8(v24);
      if (v25)
      {
        v26 = v25;
        if (v25 >= 1)
        {
          v27 = 0;
          while (1)
          {
            v28 = (v24 & 0xC000000000000001) != 0 ? MEMORY[0x1DA714420](v27, v24) : *(v24 + 8 * v27 + 32);
            v29 = v28;
            v30 = a1;
            v31 = a2;
            v32 = a3;
            v33 = v49;
            if (v9)
            {
              break;
            }

            MinX = CGRectGetMinX(*&v30);
            [v29 center];
            v42 = v41;
            v43 = *&v29[OBJC_IVAR____TtC5TeaUI15SwipeActionView_button];
            v38 = v43;
            if (v42 >= MinX)
            {
              goto LABEL_25;
            }

            sub_1D805AA78(v43, 1, 1.0, 0.0);
            v44 = v38;
LABEL_27:
            ++v27;

            if (v26 == v27)
            {
              return;
            }
          }

          MaxX = CGRectGetMaxX(*&v30);
          [v29 center];
          v36 = v35;
          v37 = *&v29[OBJC_IVAR____TtC5TeaUI15SwipeActionView_button];
          v38 = v37;
          if (MaxX >= v36)
          {
LABEL_25:
            v37 = v38;
            v39 = 0.85;
          }

          else
          {
            v39 = 1.0;
          }

          sub_1D805AA78(v37, 1, v39, 0.0);
          v44 = v29;
          v29 = v38;
          goto LABEL_27;
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_1D805A81C(char a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DD278]);
  v5 = 1.0;
  v6 = sub_1D805B350(sub_1D805B568, v3, 0.4, 1.0);
  [v6 startAnimation];

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = objc_allocWithZone(MEMORY[0x1E69DD278]);
  v10 = 0.1;
  v11 = sub_1D805B418(1, sub_1D805B574, v8, 0.1);
  v12 = v11;
  if (a1)
  {
    v10 = 0.0;
    v13 = 0.85;
  }

  else
  {
    v13 = 1.0;
  }

  if ((a1 & 1) == 0)
  {
    v5 = 0.85;
  }

  [v11 startAnimationAfterDelay_];

  v14 = sub_1D8059770();
  result = sub_1D7E36AB8(v14);
  if (result)
  {
    v16 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v17 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1DA714420](v17, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      v20 = OBJC_IVAR____TtC5TeaUI15SwipeActionView_button;
      v21 = *&v18[OBJC_IVAR____TtC5TeaUI15SwipeActionView_button];
      sub_1D805AA78(v21, 0, v5, 0.0);

      v22 = *&v19[v20];
      sub_1D805AA78(v22, 1, v13, v10);
    }

    while (v16 != v17);
  }
}

void sub_1D805AA78(void *a1, char a2, CGFloat a3, double a4)
{
  [a1 transform];
  [a1 transform];
  if (v12.a != a3 || v12.d != a3)
  {
    if (a2)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = a1;
      *(v9 + 24) = a3;
      objc_allocWithZone(MEMORY[0x1E69DD278]);
      v10 = a1;
      v11 = sub_1D805B260(sub_1D805B580, v9, 0.25, 0.33, 0.0, 0.2, 1.0);
      [v11 startAnimationAfterDelay_];
    }

    else
    {
      CGAffineTransformMakeScale(&v12, a3, a3);
      [a1 setTransform_];
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SwipeActionContainerView.PinningEdge(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D805AD50()
{
  result = qword_1ECA0FFD0;
  if (!qword_1ECA0FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FFD0);
  }

  return result;
}

void sub_1D805ADFC(id a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (*(a1 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_pinningEdge))
  {
    [a1 bounds];
    CGRectGetMaxX(v10);
    v11.origin.x = a2;
    v11.origin.y = a3;
    v11.size.width = a4;
    v11.size.height = a5;
    CGRectGetMaxX(v11);
    [a1 bounds];
    CGRectGetMaxX(v12);
    [a1 bounds];
    CGRectGetWidth(v13);
    [a1 bounds];
    CGRectGetMaxX(v17);
  }

  else
  {
    CGRectGetMinX(*&a2);
    [a1 bounds];
    CGRectGetMinX(v14);
    [a1 bounds];
    CGRectGetMinX(v15);
    [a1 bounds];
    CGRectGetWidth(v16);
  }
}

void sub_1D805AFF4(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      sub_1D8059D80();
    }

    else
    {
      sub_1D8059F04();
    }
  }
}

uint64_t sub_1D805B058(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_1D8059770();
    result = sub_1D7E36AB8(v5);
    if (result)
    {
      v6 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v7 = 0;
      if (a2)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 1.0;
      }

      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA714420](v7, v5);
        }

        else
        {
          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        ++v7;
        [v9 setAlpha_];
      }

      while (v6 != v7);
    }
  }

  return result;
}

void sub_1D805B150(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (*(a1 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_pinningEdge))
  {
    CGRectGetMinX(*&a2);
  }

  else
  {
    CGRectGetMaxX(*&a2);
  }
}

id sub_1D805B1B0(id a1, uint64_t a2)
{
  if ((*(a1 + OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_pinningEdge) & 1) == 0)
  {
    return [a1 layoutMargins];
  }

  sub_1D7E36AB8(a2);
  [a1 bounds];
  CGRectGetWidth(v4);
  return [a1 layoutMargins];
}

id sub_1D805B260(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1)
  {
    v16[4] = a1;
    v16[5] = a2;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1D7E64940;
    v16[3] = &block_descriptor_20_1;
    v13 = _Block_copy(v16);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithDuration:v13 controlPoint1:a3 controlPoint2:a4 animations:{a5, a6, a7}];
  _Block_release(v13);
  return v14;
}

id sub_1D805B350(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a1)
  {
    v10[4] = a1;
    v10[5] = a2;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1D7E64940;
    v10[3] = &block_descriptor_23_2;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithDuration:v7 dampingRatio:a3 animations:a4];
  _Block_release(v7);
  return v8;
}

id sub_1D805B418(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v10[4] = a2;
    v10[5] = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1D7E64940;
    v10[3] = &block_descriptor_51;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithDuration:a1 curve:v7 animations:a4];
  _Block_release(v7);
  return v8;
}

void sub_1D805B4E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();

  [a3 setKeyPath_];
}

id sub_1D805B54C()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

uint64_t sub_1D805B58C(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D7E35CEC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1D805B5DC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1D7E638A8(a1 + 96 * v2 - 64, a2);
  }

  else
  {
    result = 0.0;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1D805B60C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1D7E33DD8(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
      }
    }

    return MEMORY[0x1DA714420](v3, a1);
  }

  result = sub_1D81920A4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1D805B6A0()
{
  swift_getObjectType();
  v1 = dynamic_cast_existential_1_conditional(v0);
  if (v1)
  {
    v2 = v1;
    v3 = v0;
  }

  else
  {
    v4 = v0;
    while (1)
    {
      v5 = v4;
      v4 = [v5 parentViewController];

      if (!v4)
      {
        break;
      }

      swift_getObjectType();
      v6 = dynamic_cast_existential_1_conditional(v4);
      if (v6)
      {
        return v6;
      }
    }

    return 0;
  }

  return v2;
}

void sub_1D805B7A0(unint64_t *a1@<X0>, void (*a2)(__int128 *, _BYTE *)@<X2>, uint64_t a3@<X8>)
{
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, a1);
  v8 = v3;
  if (!OUTLINED_FUNCTION_16_27())
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    OUTLINED_FUNCTION_0_152();
    OUTLINED_FUNCTION_29_14(v9, v10, v11, v12, v13, v14, v15, v16, 0);
    v17 = v4;
    while (1)
    {
      v18 = [v17 parentViewController];

      if (!v18)
      {
        *(a3 + 32) = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        return;
      }

      v31 = v18;
      v19 = v18;
      if (OUTLINED_FUNCTION_16_27())
      {
        break;
      }

      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      OUTLINED_FUNCTION_0_152();
      OUTLINED_FUNCTION_29_14(v20, v21, v22, v23, v24, v25, v26, v27, 0);
    }
  }

  a2(&v28, v32);
  a2(v32, a3);
}

uint64_t MastheadViewController.pluginPinningEnabled.getter()
{
  v1 = qword_1EDBB8838;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MastheadViewController.pluginPinningEnabled.setter(char a1)
{
  v3 = qword_1EDBB8838;
  result = OUTLINED_FUNCTION_56();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MastheadViewController.isMastheadVisible.getter()
{
  v1 = qword_1EDBB88D0;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D805BA38()
{
  if ((UIViewController.isPreviewing.getter() & 1) == 0)
  {
    v0 = UIViewController.topParentViewController.getter();
    v1 = [v0 view];

    if (v1)
    {
      [v1 layoutMargins];
    }

    else
    {
      __break(1u);
    }
  }
}

char *MastheadViewController.isStatusBannerVisible.getter()
{
  result = sub_1D805E738();
  if (result)
  {
    v2 = result;
    v3 = v1;
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 24))(ObjectType, v3);

    return (v3 & 1);
  }

  return result;
}

void MastheadViewController.statusBannerHeight.getter()
{
  v0 = sub_1D805E738();
  if (v0)
  {
    v2 = v0;
    v3 = v1;
    ObjectType = swift_getObjectType();
    (*(v3 + 32))(ObjectType, v3);
  }
}

void sub_1D805BB9C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v5 = a1;
  v6 = [a2 tabBarController];
  if (!v6)
  {

LABEL_8:
    v13 = 0;
    *a3 = xmmword_1D81B2D20;
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 _uip_sidebar];
  v9 = [v8 _isVisible];

  LODWORD(v8) = v5[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_layout];
  v10 = sub_1D7F22D04();

  v11 = v5[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_showExpandedHeight];
  if (v8)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 | v11;
  *a3 = v9;
  *(a3 + 8) = v10;
LABEL_9:
  *(a3 + 16) = v13;
}

id sub_1D805BC98()
{
  v1 = qword_1EDBB88E0;
  v2 = *(v0 + qword_1EDBB88E0);
  if (v2)
  {
    v3 = *(v0 + qword_1EDBB88E0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t MastheadViewController.plugin.getter()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
}

uint64_t sub_1D805BD60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EDBB8810;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1D805BDE8(double a1)
{
  v2 = v1;
  v4 = *(v1 + qword_1EDBB88A8);
  v5 = *(v1 + qword_1EDBB8880 + 24);
  v6 = *(v1 + qword_1EDBB8880 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + qword_1EDBB8880), v5);
  v7 = (*(v6 + 8))(v5, v6);
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  MaxY = CGRectGetMaxY(v20);
  [*(v2 + qword_1EDBB88A0) bounds];
  Width = CGRectGetWidth(v21);

  return [v4 setFrame_];
}

void sub_1D805BEFC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EDBBC390 != -1)
    {
      swift_once();
    }

    v4 = sub_1D818FE34();
    __swift_project_value_buffer(v4, qword_1EDBC60F0);

    v5 = sub_1D818FE14();
    v6 = sub_1D81919B4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      type metadata accessor for CGSize();
      v9 = sub_1D8190F84();
      v11 = sub_1D7E1C3D8(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1D7DFF000, v5, v6, "Masthead initialized our plugin, size=%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1DA715D00](v8, -1, -1);
      MEMORY[0x1DA715D00](v7, -1, -1);
    }

    sub_1D7E5B508(v12);
    v13 = *(a1 + 96);
    sub_1D805BDE8(v13);
    v14 = PluginModel.viewController.getter();
    v15 = [v14 view];

    if (v15)
    {
      [v15 setFrame_];

      v16 = PluginModel.viewController.getter();
      v17 = [v16 view];

      if (v17)
      {
        [v17 layoutIfNeeded];

        sub_1D7E70B80(0);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t (*MastheadViewController.plugin.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_15_2();
  return sub_1D805C1B8;
}

uint64_t sub_1D805C1B8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D7E5ACAC();
  }

  return result;
}

Swift::Void __swiftcall MastheadViewController.relayout(shouldBustLayoutCache:)(Swift::Bool shouldBustLayoutCache)
{
  if (shouldBustLayoutCache)
  {
    sub_1D7E41734(__src);
    memcpy(__dst, &v1[qword_1EDBB8830], sizeof(__dst));
    memcpy(&v1[qword_1EDBB8830], __src, 0x122uLL);
    OUTLINED_FUNCTION_0_120();
    sub_1D7E74104(v3, v4);
    memcpy(v15, &v1[qword_1EDBB8820], sizeof(v15));
    memcpy(&v1[qword_1EDBB8820], __src, 0x122uLL);
    OUTLINED_FUNCTION_0_120();
    sub_1D7E74104(v5, v6);
  }

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v7 setNeedsLayout];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  [v9 layoutIfNeeded];

  if ((sub_1D8190B24() & 1) == 0 || !shouldBustLayoutCache)
  {
    goto LABEL_9;
  }

  v11 = [*&v1[qword_1EDBB88B8] view];
  if (v11)
  {
    v12 = v11;
    [v11 setNeedsLayout];

    [*&v1[qword_1EDBB88A8] setNeedsLayout];
LABEL_9:
    [v1 _updateTabBarLayout];
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1D805C384(void *a1)
{
  v2 = *(v1 + qword_1EDBB8878);
  *(v1 + qword_1EDBB8878) = a1;
  v3 = a1;

  sub_1D805C1F8();
}

uint64_t sub_1D805C3DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_1EDBB87F8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D805C438(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + qword_1EDBB87F8;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t MastheadViewController.delegate.getter()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void (*MastheadViewController.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = qword_1EDBB87F8;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_15_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D7F18A1C;
}

id sub_1D805C56C()
{
  result = [v0 view];
  if (result)
  {
    type metadata accessor for MastheadView();

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MastheadViewController.__allocating_init(rootViewController:viewProvider:miniMastheadViewProvider:statusBarStyle:)(void *a1, uint64_t a2, uint64_t a3, id *a4)
{
  sub_1D7E42AD0(*a4);
  sub_1D7E0E768(a2, v14);
  sub_1D7E41C50(a3, v13);
  v7 = MastheadViewController.__allocating_init(rootViewController:viewProvider:miniMastheadViewProvider:)(a1, v14, v13);
  OUTLINED_FUNCTION_0_152();
  sub_1D805F144(a3, v8, v9, v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v7;
}

id MastheadViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MastheadViewController.init(coder:)()
{
  v1 = v0;
  *(v0 + qword_1EDBB8838) = 1;
  *(v0 + qword_1EDBB88D0) = 0;
  v2 = qword_1EDBB88A0;
  v3 = type metadata accessor for PassthroughView();
  *(v1 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(v3), sel_initWithFrame_);
  v4 = qword_1EDBB88F0;
  *(v1 + v4) = OUTLINED_FUNCTION_4(objc_allocWithZone(v3), sel_initWithFrame_);
  v5 = (v1 + qword_1EDBB8848);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = qword_1EDBB8800;
  type metadata accessor for MastheadViewScrollAnimator();
  *(v1 + v6) = swift_allocObject();
  v7 = qword_1EDBB8830;
  sub_1D7E41734(v35);
  OUTLINED_FUNCTION_36_10((v1 + v7), v8, v9, v10, v11, v12, v13, v14, v29, v31, v33, v35[0]);
  OUTLINED_FUNCTION_36_10((v1 + qword_1EDBB8820), v15, v16, v17, v18, v19, v20, v21, v30, v32, v34, v35[0]);
  v22 = (v1 + qword_1EDBB8858);
  v23 = *(MEMORY[0x1E69DDCE0] + 16);
  *v22 = *MEMORY[0x1E69DDCE0];
  v22[1] = v23;
  *(v1 + qword_1EDBB88E0) = 0;
  *(v1 + qword_1EDBB8818) = 0;
  *(v1 + qword_1EDBB8810) = 0;
  *(v1 + qword_1EDBB8890) = 0;
  v24 = (v1 + qword_1EDBB8868);
  *v24 = 0;
  v24[1] = 0;
  v25 = qword_1EDBB88A8;
  *(v1 + v25) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v26 = qword_1EDBB8878;
  v27 = objc_allocWithZone(type metadata accessor for MastheadDisplayOptions());
  *(v1 + v26) = OUTLINED_FUNCTION_30_15();
  v28 = v1 + qword_1EDBB8900;
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 1;
  *(v1 + qword_1EDBB87F8 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D81923A4();
  __break(1u);
}

id MastheadViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x1E69DD898] object:0];

  v4 = [v2 defaultCenter];
  [v4 removeObserver:v0 name:*MEMORY[0x1E69DD8D8] object:0];

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1D805CA0C(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1 + qword_1EDBB8880);
  OUTLINED_FUNCTION_0_152();
  sub_1D805F144(a1 + v2, v3, v4, v5, v6);

  sub_1D7E74104(a1 + qword_1EDBB8848, &qword_1EDBBC780);

  memcpy(v8, (a1 + qword_1EDBB8830), 0x122uLL);
  OUTLINED_FUNCTION_32_11(v8);
  memcpy(__dst, (a1 + qword_1EDBB8820), 0x122uLL);
  OUTLINED_FUNCTION_32_11(__dst);

  return sub_1D7E166A0(a1 + qword_1EDBB87F8);
}

Swift::Void __swiftcall MastheadViewController.loadView()()
{
  v2 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_loadView);
  OUTLINED_FUNCTION_27_18();
  v4 = [v0 v3];
  if (v4)
  {
    v5 = v4;
    [v4 frame];
    OUTLINED_FUNCTION_9_0();

    v6 = *&v2[qword_1EDBB88A0];
    v7 = objc_allocWithZone(type metadata accessor for MastheadView());
    v8 = v6;
    v9 = OUTLINED_FUNCTION_8_0();
    v14 = sub_1D813C96C(v10, v9, v11, v12, v13);
    v15 = [v2 (v1 + 2808)];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 autoresizingMask];

      [v14 setAutoresizingMask_];
      [v2 setView_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D805CCD8(void *a1)
{
  v1 = a1;
  MastheadViewController.loadView()();
}

void sub_1D805CD20(char *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = [a1 view];
  v8 = v4;
  if (v3 != 1)
  {
    if (v4)
    {
      v6 = [*&a1[qword_1EDBB88B8] view];
      if (v6)
      {
        v7 = v6;
        [v8 bringSubviewToFront_];

        v5 = v7;
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  [v4 bringSubviewToFront_];
  v5 = v8;
LABEL_7:
}

Swift::Void __swiftcall MastheadViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillDisappear_, a1);
  v3 = *&v1[qword_1EDBB8880 + 24];
  v4 = *&v1[qword_1EDBB8880 + 32];
  __swift_project_boxed_opaque_existential_1(&v1[qword_1EDBB8880], v3);
  v5 = MastheadViewController.scrollView.getter();
  (*(v4 + 64))(v5, v3, v4);
}

void sub_1D805CEA0(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  MastheadViewController.viewWillDisappear(_:)(a3);
}

id sub_1D805CEF4(double *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v58 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  sub_1D7E70B80(0);
  sub_1D7E6ACB4();
  if (a3)
  {
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  v12 = a1[11];
  v11 = a1[12];
  [*&v3[qword_1EDBB88A8] frame];
  if (v12 != v14 || v11 != v13)
  {
    goto LABEL_11;
  }

  result = [v3 view];
  if (!result)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v17 = result;
  [result bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v61.origin.x = v19;
  v61.origin.y = v21;
  v61.size.width = v23;
  v61.size.height = v25;
  if (v12 == CGRectGetWidth(v61) && a1[8] == v9)
  {
    v26 = a1[10] != v10;
  }

  else
  {
LABEL_11:
    v26 = 1;
  }

  result = [v4 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_31;
  }

  v27 = result;
  v28 = [result traitCollection];

  v29 = [v28 preferredContentSizeCategory];
  v30 = sub_1D8190F14();
  v32 = v31;
  if (v30 == sub_1D8190F14() && v32 == v33)
  {

LABEL_25:
    if (!v26)
    {
      return result;
    }

    goto LABEL_26;
  }

  v35 = sub_1D8192634();

  if (v35)
  {
    goto LABEL_25;
  }

  if (qword_1EDBBC390 != -1)
  {
    swift_once();
  }

  v36 = sub_1D818FE34();
  __swift_project_value_buffer(v36, qword_1EDBC60F0);
  v37 = sub_1D818FE14();
  v38 = sub_1D81919B4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1D7DFF000, v37, v38, "Masthead plugin now needsRelayout due to content size change", v39, 2u);
    MEMORY[0x1DA715D00](v39, -1, -1);
  }

  v40 = *&v4[qword_1EDBB88A8];
  [v40 bounds];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  result = [v4 view];
  if (!result)
  {
    goto LABEL_32;
  }

  v47 = result;
  [result bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v62.origin.x = v49;
  v62.origin.y = v51;
  v62.size.width = v53;
  v62.size.height = v55;
  [v40 setBounds_];
LABEL_26:
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = swift_allocObject();
  *(v57 + 16) = v59;
  *(v57 + 32) = v56;
  *(v57 + 40) = a1;

  sub_1D7FB7A98(sub_1D805F138, v57);
}