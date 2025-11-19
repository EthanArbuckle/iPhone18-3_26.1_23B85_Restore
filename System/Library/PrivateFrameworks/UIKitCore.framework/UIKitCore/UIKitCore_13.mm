uint64_t sub_188BB43E4(void *a1)
{
  v3 = *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_background];
  *&v1[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_background] = a1;
  swift_unknownObjectRetain();
  if ((UIEqual(v3, a1) & 1) == 0)
  {
    [v1 setNeedsUpdateProperties];
  }

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_188BB458C(unint64_t a1, unint64_t a2, char a3)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v3 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);

  sub_188BB4630(v5, v6, a3);
}

void sub_188BB4630(unint64_t a1, unint64_t a2, char a3)
{
  v7 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingItemGroups;
  swift_beginAccess();
  v8 = *(v3 + v7);

  v9 = sub_188B3423C(a1, v8);

  if ((v9 & 1) == 0)
  {
    *(v3 + v7) = a1;
  }

  v10 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticTrailingItemGroups;
  swift_beginAccess();
  v11 = *(v3 + v10);

  v12 = sub_188B3423C(a2, v11);

  if ((v12 & 1) == 0)
  {
    *(v3 + v10) = a2;

    goto LABEL_7;
  }

  if ((v9 & 1) == 0)
  {
LABEL_7:
    sub_188EBDD14(a3 & 1);
  }
}

uint64_t (*sub_188BB4740(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_188E48DB4(a2, a3, &qword_1ED48F680);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_188BB47D4;
  }

  __break(1u);
  return result;
}

void sub_188BB4838(_BYTE *a1)
{
  if ((a1[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_isCommitted] & 1) == 0 && (a1[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_isCommitted] = 1, [a1 mutableNewLayout]) && (swift_unknownObjectRelease(), (v2 = objc_msgSend(a1, sel_mutableContainerView)) != 0))
  {
  }

  else
  {
    sub_18A4A8398();
    __break(1u);
  }
}

void sub_188BB4A04(void *a1)
{
  v3 = objc_opt_self();
  if ([v3 _isInAnimationBlockWithAnimationsEnabled])
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = a1;
    v22 = sub_188FEB4A0;
    v23 = v4;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_188A4A8F0;
    v21 = &block_descriptor_64_1;
    v5 = _Block_copy(&v18);
    v6 = v1;
    v7 = a1;

    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v22 = sub_188FEB340;
    v23 = v8;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_188ABD010;
    v21 = &block_descriptor_70_4;
    v9 = _Block_copy(&v18);
    v10 = v6;
    v11 = v7;

    [v3 animateWithDuration:v5 animations:v9 completion:0.0];
LABEL_5:
    _Block_release(v9);
    _Block_release(v5);
    return;
  }

  if ([a1 isAnimated])
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = a1;
    v22 = sub_188FEB330;
    v23 = v12;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_188A4A8F0;
    v21 = &block_descriptor_65;
    v5 = _Block_copy(&v18);
    v13 = v1;
    v14 = a1;

    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    v22 = sub_188FEB498;
    v23 = v15;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_188ABD010;
    v21 = &block_descriptor_58_1;
    v9 = _Block_copy(&v18);
    v16 = v13;
    v17 = v14;

    [v3 animateWithDuration:6 delay:v5 usingSpringWithDamping:v9 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
    goto LABEL_5;
  }

  [v1 animateWithTransition_];

  [v1 completeWithTransition_];
}

uint64_t sub_188BB4D60()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188BB4E30(uint64_t result)
{
  if (*(result + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_isCommitted) == 1)
  {
    v2 = result;
    if ((*(result + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_hasStarted) & 1) == 0)
    {
      *(result + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_hasStarted) = 1;
      v3 = *(v1 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableScheduledTransition);
      if (v3)
      {
        v4 = v3 == result;
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        *(v1 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutableScheduledTransition) = 0;

        v5 = [v2 newLayout];
        *(v1 + OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransitionController_mutablePreviousLayout) = v5;
        swift_unknownObjectRelease();
      }

      v6 = &v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_animations];
      v7 = *&v2[OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_animations];
      if (v7)
      {

        v7(v2);
        sub_188A55B8C(v7);
        v8 = *v6;
      }

      else
      {
        v8 = 0;
      }

      *v6 = 0;
      v6[1] = 0;
      sub_188A55B8C(v8);
      v9 = OBJC_IVAR____UISplitViewControllerAdaptiveLayoutTransition_transitionCoordinatorAnimations;
      swift_beginAccess();
      v10 = *&v2[v9];
      v11 = *(v10 + 16);
      if (v11)
      {

        v12 = v10 + 40;
        do
        {
          v13 = *(v12 - 8);
          v14 = v2;

          v13(&v14);

          v12 += 16;
          --v11;
        }

        while (v11);
      }

      *&v2[v9] = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t sub_188BB5088()
{
  if (qword_1EA930918 != -1)
  {
    swift_once();
  }

  return qword_1EA994EC8;
}

uint64_t UIEqual(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = v5;
  if (a1 == a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v4 && v5)
    {
      v7 = [v4 isEqual:v5];
    }
  }

  return v7;
}

uint64_t UIEqual_0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    v5 = 1;
  }

  else if (v3)
  {
    v5 = [v3 isEqual:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_188BB5660(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5 = &v4[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_scrollPocketInsets];
  v6 = *&v4[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_scrollPocketInsets];
  v7 = *&v4[OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_scrollPocketInsets + 16];
  *v5 = a1.f64[0];
  v5[1] = a2;
  v5[2] = a3.f64[0];
  v5[3] = a4;
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, a1), vceqq_f64(v7, a3)))) & 1) == 0)
  {
    return [v4 setNeedsUpdateProperties];
  }

  return result;
}

void sub_188BB5780(void *a1, id a2)
{
  [a2 bounds];
  [a1 setFrame_];
  v4 = [a2 containerView];
  [v4 insertSubview:a1 atIndex:0];
}

void sub_188BB5850(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_188BB5B14(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v7 = 0;
    v8 = v21;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = sub_188E49D3C(v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v7 + 32);
      }

      v3 = v10;
      v18 = v10;
      sub_188BB5F80(&v18, a2, &v19);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v11 = v19;
      v12 = v20;
      v21 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      v3 = (v14 + 1);
      if (v14 >= v13 >> 1)
      {
        v16 = v20;
        sub_188BB5B14((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v8 = v21;
      }

      *(v8 + 16) = v3;
      v15 = v8 + 24 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      ++v7;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

char *sub_188BB59F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9341A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188BB5B14(char *a1, int64_t a2, char a3)
{
  result = sub_188BB59F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_188BB5C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  sub_188A34624(0, a5);
  v9 = sub_18A4A7548();
  return a7(a3, v9);
}

id sub_188BB5C88(uint64_t a1, unint64_t a2)
{
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____UIBarSection_identifier];
  *v5 = 0;
  v5[1] = 0;
  *&v2[OBJC_IVAR____UIBarSection_preferredPlacement] = a1;
  *&v2[OBJC_IVAR____UIBarSection_groups] = a2;
  if (a2 >> 62)
  {
    if (sub_18A4A7F68() != 1)
    {
      goto LABEL_24;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
LABEL_24:
    v24.receiver = v2;
    v24.super_class = _UIBarSection;
    return objc_msgSendSuper2(&v24, sel_init);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {

    v6 = sub_188E49A94(0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_31;
    }

    v6 = *(a2 + 32);
  }

  v7 = [v6 group];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 barButtonItems];
    sub_188A34624(0, &qword_1ED48E8C0);
    a2 = sub_18A4A7548();
  }

  else
  {
    v10 = [v6 items];
    if (v10)
    {
      v11 = v10;
      sub_188A34624(0, &qword_1ED48E8C0);
      a2 = sub_18A4A7548();
    }

    else
    {
      a2 = MEMORY[0x1E69E7CC0];
    }
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 1)
    {
      goto LABEL_13;
    }

LABEL_23:

    goto LABEL_24;
  }

  result = sub_18A4A7F68();
  if (result != 1)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v13 = sub_188E49ABC(0, a2);
    goto LABEL_16;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(a2 + 32);
LABEL_16:
    v14 = v13;

    v15 = [v14 _transitionIdentifier];
    if (v15)
    {
      v16 = v15;
      v17 = sub_18A4A7288();
      v19 = v18;
    }

    else
    {
      v20 = [v14 image];
      if (v20 && (v21 = v20, v22 = [v20 _existingIdentityDescription], v21, v22))
      {
        v17 = sub_18A4A7288();
        v19 = v23;
      }

      else
      {

        v17 = 0;
        v19 = 0;
      }
    }

    *v5 = v17;
    v5[1] = v19;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void sub_188BB5F80(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  v72 = MEMORY[0x1E69E7CC0];
  v52 = v3;
  v4 = [v3 groups];
  sub_188A34624(0, &qword_1ED48C698);
  v5 = sub_18A4A7548();

  if (v5 >> 62)
  {
    goto LABEL_69;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_70:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_71;
  }

LABEL_3:
  v7 = 0;
  v66 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_implicitGroups;
  v59 = v5 & 0xC000000000000001;
  v56 = v5 & 0xFFFFFFFFFFFFFF8;
  v8 = MEMORY[0x1E69E7CC0];
  v57 = v5;
  v55 = v5 + 32;
  v58 = v6;
  while (1)
  {
    if (v59)
    {
      v9 = v7;
      v10 = sub_188E49A94(v7, v57);
      v11 = __OFADD__(v9, 1);
      v12 = v9 + 1;
      if (v11)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v7 >= *(v56 + 16))
      {
        goto LABEL_68;
      }

      v13 = v7;
      v10 = *(v55 + 8 * v7);
      v11 = __OFADD__(v13, 1);
      v12 = v13 + 1;
      if (v11)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        v6 = sub_18A4A7F68();
        if (!v6)
        {
          goto LABEL_70;
        }

        goto LABEL_3;
      }
    }

    v62 = v12;
    v5 = v10;
    v14 = [v10 group];
    if (v14)
    {
      v15 = v5;
      v16 = v14;
      v5 = &v72;
      MEMORY[0x18CFE2450]();
      if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();

      v8 = v72;
      goto LABEL_5;
    }

    v17 = [v5 items];
    if (v17)
    {
      break;
    }

LABEL_5:
    v7 = v62;
    if (v62 == v58)
    {
      goto LABEL_63;
    }
  }

  v18 = v17;
  v54 = v5;
  sub_188A34624(0, &qword_1ED48E8C0);
  v19 = sub_18A4A7548();

  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

  v20 = sub_18A4A7F68();
  if (!v20)
  {
LABEL_59:

    goto LABEL_5;
  }

LABEL_19:
  v65 = v19 & 0xC000000000000001;
  swift_beginAccess();
  v5 = 0;
  v60 = v19 + 32;
  v61 = v19 & 0xFFFFFFFFFFFFFF8;
  v63 = v19;
  v64 = v20;
LABEL_20:
  if (v65)
  {
    v21 = sub_188E49ABC(v5, v19);
  }

  else
  {
    if (v5 >= *(v61 + 16))
    {
      goto LABEL_66;
    }

    v21 = *(v60 + 8 * v5);
  }

  v70 = v21;
  v11 = __OFADD__(v5++, 1);
  if (v11)
  {
    goto LABEL_65;
  }

  v22 = *(a2 + v66);
  v68 = v5;
  if ((v22 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_18A4A7F18();
    sub_188A34624(0, &unk_1ED48DBD0);
    sub_18907CD10();
    sub_18A4A77D8();
    v24 = v71[6];
    v23 = v71[7];
    v8 = v71[8];
    v25 = v71[9];
    v26 = v71[10];
  }

  else
  {
    v27 = -1 << *(v22 + 32);
    v23 = (v22 + 56);
    v8 = ~v27;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v26 = (v29 & *(v22 + 56));
    v24 = *(a2 + v66);
    swift_bridgeObjectRetain_n();
    v25 = 0;
  }

  v30 = (v8 + 64) >> 6;
  v69 = v24;
  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_34:
    if (!sub_18A4A7FB8())
    {
      goto LABEL_53;
    }

    sub_188A34624(0, &unk_1ED48DBD0);
    swift_dynamicCast();
    v31 = v71[0];
    v32 = v26;
    if (!v71[0])
    {
      goto LABEL_53;
    }

    goto LABEL_42;
  }

  while (1)
  {
    v33 = v25;
    v34 = v26;
    if (!v26)
    {
      break;
    }

LABEL_41:
    v32 = (v34 - 1) & v34;
    v31 = *(*(v24 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v34)))));
    if (!v31)
    {
LABEL_53:
      sub_188E036A4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_18A64B710;
      *(v38 + 32) = v70;
      v39 = objc_allocWithZone(UIBarButtonItemGroup);
      v40 = v70;
      v41 = sub_18A4A7518();

      v42 = [v39 initWithBarButtonItems:v41 representativeItem:0];

      v43 = v42;
      [v43 _setImplicitlyGenerated_];
      v31 = 0;
LABEL_54:
      v19 = v63;
      v44 = v31;
      v45 = v43;
      sub_188C0C468(v71, v45);

      MEMORY[0x18CFE2450]();
      if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();

      v5 = v68;
      if (v68 == v64)
      {
        v8 = v72;
        goto LABEL_59;
      }

      goto LABEL_20;
    }

LABEL_42:
    v8 = [v31 barButtonItems];
    v5 = sub_18A4A7548();

    if (v5 >> 62)
    {
      if (sub_18A4A7F68())
      {
        goto LABEL_44;
      }

LABEL_33:

      v26 = v32;
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

LABEL_44:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v35 = sub_188E49ABC(0, v5);
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v35 = *(v5 + 32);
      }

      v8 = v35;

      v36 = v70;
      v37 = sub_18A4A7C88();

      if (v37)
      {
        sub_188E036A4();

        swift_beginAccess();
        v46 = sub_188BECBAC(v31);
        swift_endAccess();

        v43 = v31;
        goto LABEL_54;
      }

      v26 = v32;
      v24 = v69;
      if ((v69 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }
    }
  }

  while (1)
  {
    v25 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v25 >= v30)
    {
      goto LABEL_53;
    }

    v34 = v23[v25];
    ++v33;
    if (v34)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_63:

LABEL_71:
  v47 = [v52 identifier];
  if (v47)
  {
    v48 = v47;
    v49 = sub_18A4A7288();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  *a3 = v8;
  a3[1] = v49;
  a3[2] = v51;
}

uint64_t sub_188BB67CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;

  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v9;
  if ((result & 1) == 0)
  {
    result = sub_188B52BB0(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
    *a2 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_188B52BB0((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
    *a2 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = (v9 + 24 * v12);
  v13[4] = a1;
  v13[5] = a4;
  v13[6] = a5;
  return result;
}

unint64_t sub_188BB68A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C270);
  v3 = sub_18A4A8488();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_188A403F4(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v10 = v3[7] + 16 * result;
    *v10 = v4;
    *(v10 + 8) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_188BB803C(v4, v6);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v9 - 2);
    v4 = *(v9 - 1);
    v6 = *v9;
    result = sub_188A403F4(v5);
    v9 += 24;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_188BB6A30(void *a1, char a2)
{
  if (a2 <= 0xFDu)
  {
    sub_188BB8460(a1, a2);
  }
}

uint64_t sub_188BB6A44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C270);
  v34 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v34 & 1) == 0)
      {
        sub_188BB803C(v23, v24);
      }

      result = sub_18A4A8878();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_188BB70B4()
{
  v1 = OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty;
  if (*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) == 1)
  {
    sub_188BB7274();
    *(v0 + v1) = 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_configuredItemLayouts);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v18 = MEMORY[0x1E69E7CC0];

    sub_188BB8660(0, v3, 0);
    v4 = v18;
    v5 = (v2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      if (v7 < 0)
      {
        if (v7)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0x80;
          v16 = xmmword_18A64C520;
          v17 = 0u;
        }

        else
        {
          [*(v5 - 1) _width];
          v8 = 0;
          v9 = 0;
          if (v11 <= 0.0)
          {
            v11 = 0.0;
          }

          v17 = 0u;
          v16 = *&v11;
          v10 = 0x80;
        }
      }

      else
      {

        sub_188BB8680(v19);
        v16 = v19[0];
        v17 = v19[1];
        v8 = v20;
        v9 = v21;
        v10 = v22;
        sub_188BB8460(v6, v7);
      }

      v13 = *(v18 + 16);
      v12 = *(v18 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_188BB8660((v12 > 1), v13 + 1, 1);
      }

      v5 += 16;
      *(v18 + 16) = v13 + 1;
      v14 = v18 + 56 * v13;
      *(v14 + 32) = v16;
      *(v14 + 48) = v17;
      *(v14 + 64) = v8;
      *(v14 + 72) = v9;
      *(v14 + 80) = v10;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_188BB7274()
{
  v3 = v0;
  v4 = OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_itemLayouts;
  swift_beginAccess();
  v64 = v4;
  v5 = *(v0 + v4);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_188BB68A0(MEMORY[0x1E69E7CC0]);
  v8 = *(v5 + 16);

  v9 = 0;
  v10 = v5 + 40;
  v62 = v3;
  while (2)
  {
    v11 = (v10 + 16 * v9);
    do
    {
      if (v8 == v9)
      {

        v31 = v3 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout;
        v32 = *(v3 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout + 8);
        if ((v32 & 0x80000000) == 0)
        {
          v33 = *v31;
          v34 = *(*v31 + 16);
          sub_188BB803C(*v31, *(v3 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout + 8));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_188E9EBAC(v33, v32, v34, isUniquelyReferenced_nonNull_native);
        }

        *(v3 + v64) = v6;

        *(v3 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_configuredItemLayouts) = v6;

        v6 = *(v3 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group);
        if (![v6 _canCollapse] || (v36 = objc_msgSend(v6, sel_representativeItem)) == 0)
        {
          v41 = *v31;
          *v31 = 0;
          v42 = *(v31 + 8);
          *(v31 + 8) = -2;
          sub_188BB6A30(v41, v42);
LABEL_28:
          [v6 _items];
          sub_188A34624(0, &qword_1ED48E8C0);
          sub_18A4A7528();
          goto LABEL_49;
        }

        LODWORD(v5) = *(v31 + 8);
        v37 = v36;
        v38 = v37;
        if (v5 >= 0xFE)
        {
          if ([v37 isSpaceItem])
          {
            v39 = [v38 systemItem] == 5 ? -127 : 0x80;
            v40 = v38;
          }

          else
          {
            v43 = v3 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics;
            v45 = *(v3 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_itemViewGenerator);
            v44 = *(v3 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_itemViewGenerator + 8);
            _s10ItemLayoutCMa();
            v40 = v38;
            v38 = swift_allocObject();
            v46 = *(v43 + 80);
            *(v38 + 88) = *(v43 + 64);
            *(v38 + 104) = v46;
            *(v38 + 120) = *(v43 + 96);
            v47 = *(v43 + 16);
            *(v38 + 24) = *v43;
            *(v38 + 40) = v47;
            v48 = *(v43 + 48);
            *(v38 + 56) = *(v43 + 32);
            *(v38 + 160) = 1;
            *(v38 + 176) = 0;
            *(v38 + 184) = 0;
            *(v38 + 192) = 0;
            *(v38 + 16) = v40;
            *(v38 + 168) = 0;
            *(v38 + 136) = *(v43 + 112);
            *(v38 + 72) = v48;
            *(v38 + 144) = v45;
            *(v38 + 152) = v44;

            v39 = 0;
          }

          v49 = *v31;
          *v31 = v38;
          v50 = *(v31 + 8);
          *(v31 + 8) = v39;
          v51 = v40;
          sub_188BB6A30(v49, v50);
          LODWORD(v5) = *(v31 + 8);
          v38 = v40;
          if (v5 >= 0xFE)
          {

            goto LABEL_28;
          }
        }

        if ((v5 & 0x80) != 0)
        {

          goto LABEL_28;
        }

        v2 = v38;
        v1 = *v31;
        v52 = *(v3 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isOnlyGroupInSection);
        v53 = *(*v31 + 192);
        *(*v31 + 192) = v52;
        if (v52 == v53)
        {
          if (*(v1 + 160) != 1)
          {
            v56 = *(v1 + 16);
            sub_188BB803C(v1, v5);
            v57 = [v56 view];
            v9 = *(v1 + 168);
            if (!v57)
            {
              goto LABEL_44;
            }

            v58 = v57;
            if (v9)
            {
              sub_188A34624(0, &qword_1ED48F680);
              v59 = v9;
              v60 = sub_18A4A7C88();

              if (v60)
              {
                goto LABEL_45;
              }
            }

            else
            {
            }

LABEL_38:
            sub_188BB8048();
            v54 = *(v1 + 16);
            v55 = *(v1 + 168);
            [v54 setView_];

            *(v1 + 160) = 0;
            sub_188BB6A30(v1, v5);
            goto LABEL_28;
          }
        }

        else
        {
          *(v1 + 160) = 1;
        }

        sub_188BB803C(v1, v5);
        goto LABEL_38;
      }

      if (v9 >= *(v5 + 16))
      {
        __break(1u);
LABEL_44:
        if (!v9)
        {
LABEL_45:
          sub_188BB6A30(v1, v5);

          goto LABEL_28;
        }

        goto LABEL_38;
      }

      v12 = v11 + 16;
      ++v9;
      v1 = *v11;
      v11 += 16;
    }

    while ((v1 & 0x80000000) != 0);
    v63 = v10;
    v13 = *(v12 - 3);
    v14 = v13[2];
    sub_188BB803C(v13, v1);

    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_188A403F4(v14);
    v18 = *(v7 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      __break(1u);
      __break(1u);
    }

    else
    {
      v2 = v17;
      if (*(v7 + 24) >= v21)
      {
        if (v15)
        {
          goto LABEL_11;
        }

        v27 = v16;
        sub_188FA2CD8();
        v16 = v27;
        v23 = v7;
        if ((v2 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_12:
        v7 = v23;
        v24 = v23[7] + 16 * v16;
        v25 = *v24;
        *v24 = v13;
        v26 = *(v24 + 8);
        *(v24 + 8) = v1;
        sub_188BB8460(v25, v26);
        sub_188BB8460(v13, v1);
LABEL_16:
        v3 = v62;
        v10 = v63;
        continue;
      }

      sub_188BB6A44(v21, v15);
      v16 = sub_188A403F4(v14);
      if ((v2 & 1) != (v22 & 1))
      {
        goto LABEL_50;
      }

LABEL_11:
      v23 = v7;
      if (v2)
      {
        goto LABEL_12;
      }

LABEL_14:
      v23[(v16 >> 6) + 8] |= 1 << v16;
      *(v23[6] + 8 * v16) = v14;
      v28 = v23[7] + 16 * v16;
      *v28 = v13;
      *(v28 + 8) = v1;
      sub_188BB8460(v13, v1);
      v29 = v23[2];
      v20 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (!v20)
      {
        v7 = v23;
        v23[2] = v30;
        goto LABEL_16;
      }
    }

    break;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

id sub_188BB803C(void *a1, char a2)
{
  if (a2 < 0)
  {
    return a1;
  }

  else
  {
  }
}

void sub_188BB8048()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if ([v2 isCustomViewItem])
  {
    v3 = [v2 customView];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 customView];
      v6 = *(v0 + 168);
      *(v0 + 168) = v5;

      v7 = *(v0 + 88);
      v8 = *(v0 + 120);
      v63 = *(v0 + 104);
      v64 = v8;
      v65 = *(v0 + 136);
      v9 = *(v0 + 40);
      v58 = *(v0 + 24);
      v59 = v9;
      v60 = *(v0 + 56);
      v61 = *(v0 + 72);
      v62 = v7;
      sub_18907EE40(v2, *(v0 + 192));
      v11 = v10;
      v12 = *(v0 + 88);
      if (*(v1 + 192) == 1)
      {
        v14 = *(v1 + 104);
        v13 = *(v1 + 112);
        v15 = *(v1 + 96);
        v16 = *(v1 + 64);
        if ([v2 hidesSharedBackground])
        {
          v17 = v16;
        }

        else
        {
          v17 = 0.0;
        }

        v18 = v15 + v17;
        v19 = v13 + v17;
        v20 = v14 + v17;
      }

      else
      {
        v18 = *(v1 + 128);
        v20 = v18;
        v19 = v18;
      }

      *v56 = v18;
      *&v56[1] = v20;
      *&v56[2] = v19;
      v56[3] = v12;
      v57 = 0;
      v39 = [(UIView *)v4 _traitOverrides];
      v40 = [(_UITraitOverrides *)v39 _swiftImplCopy];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
      inited = swift_initStackObject();
      *(inited + 16) = v40;
      v54 = inited;
      sub_18901E41C(v56);
      v42 = [(UIView *)v4 _traitOverrides];
      v43 = *(v54 + 16);

      [(_UITraitOverrides *)v42 _replaceWithOverrides:v43];

      [v4 setLayoutMargins_];
      v25 = *(v1 + 184);
      *(v1 + 184) = 0;
      goto LABEL_23;
    }
  }

  v21 = *(v0 + 144);
  v22 = *(v0 + 168);
  if (v22)
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v22;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = v21(v2, v23, v0);

  v26 = *(v0 + 168);
  if (v26)
  {
    sub_188A34624(0, &qword_1ED48F680);
    v27 = v25;
    v28 = v26;
    v29 = sub_18A4A7C88();

    if (v29)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v30 = v25;
  }

  v31 = *(v1 + 184);
  *(v1 + 184) = 0;

LABEL_17:
  v32 = *(v1 + 168);
  *(v1 + 168) = v25;

  if (!*(v1 + 184))
  {
    v33 = _s10ItemLayoutC12TargetActionCMa();
    v34 = objc_allocWithZone(v33);
    *&v34[OBJC_IVAR____TtCCC5UIKit19NavigationButtonBar10ItemLayoutP33_7414260656797E7BB737FC627AD30E4912TargetAction_barButtonItem] = v2;
    v55.receiver = v34;
    v55.super_class = v33;
    v35 = v2;
    v36 = objc_msgSendSuper2(&v55, sel_init);
    v37 = *(v1 + 184);
    *(v1 + 184) = v36;
  }

  [v25 setTranslatesAutoresizingMaskIntoConstraints_];

  v38 = *(v1 + 184);
  if (!v38)
  {
    __break(1u);
    return;
  }

  [v25 addTarget:v38 action:sel__invokeWithRealSender_forEvent_ forControlEvents:0x2000];
LABEL_23:

  v44 = *(v1 + 168);
  if (v44)
  {
    v45 = *(v1 + 176);
    if (v45)
    {
      v46 = v44;
      v47 = v45;
      v48 = sub_188C48960();

      if ((v48 & 1) == 0)
      {

        return;
      }
    }

    else
    {
      v50 = v44;
    }

    v51 = objc_allocWithZone(_s15ItemWrapperViewCMa());
    v52 = sub_18907E5C0(v44);

    v53 = *(v1 + 176);
    *(v1 + 176) = v52;

    *(v1 + 160) = 1;
  }

  else
  {
    v49 = *(v1 + 176);
    *(v1 + 160) = v49 != 0;
    *(v1 + 176) = 0;
  }
}

void sub_188BB8460(void *a1, char a2)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_32Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroy_32Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

char *sub_188BB853C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93B3F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188BB8660(char *a1, int64_t a2, char a3)
{
  result = sub_188BB853C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_188BB8680(uint64_t a1@<X8>)
{
  v3 = v1[22];
  if (v3)
  {
    v4 = 0;
    v5 = v1[22];
  }

  else
  {
    v6 = v1[21];
    v4 = v6 == 0;
    v5 = v6;
    v3 = 0;
  }

  v7 = v3;
  [v5 updateTraitsIfNeeded];
  v8 = 30.0;
  v9 = 30.0;
  if (!v4)
  {
    [v5 systemLayoutSizeFittingSize_];
    v9 = v10;
    v8 = v11;
  }

  v12 = v1[2];
  [v12 _width];
  v14 = fmin(v13, 10000.0);
  v15 = 0.0;
  if (v14 >= 0.0)
  {
    if ((~*&v14 & 0x7FF0000000000000) != 0)
    {
      v15 = v14;
    }

    else if ((*&v14 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v15 = v14;
    }
  }

  if (v15 > v9)
  {
    v9 = v15;
  }

  if (([v12 isSystemItem] & 1) == 0 || objc_msgSend(v12, sel_isCustomViewItem))
  {
    v16 = v9;
    v17 = v8;
    if (!v4)
    {
      [v5 systemLayoutSizeFittingSize_];
    }

    if (v9 > 10000.0)
    {
      __break(1u);
    }

    else
    {
      v18 = fmin(v16, 10000.0);
      v19 = v9;
      if (v18 >= v9)
      {
        if ((~*&v18 & 0x7FF0000000000000) != 0)
        {
          v19 = v18;
        }

        else if ((*&v18 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v19 = v9;
        }

        else
        {
          v19 = v18;
        }
      }

      if (v8 <= 10000.0)
      {
        v20 = fmin(v17, 10000.0);
        if (v20 >= v8)
        {
          if ((~*&v20 & 0x7FF0000000000000) == 0 && (*&v20 & 0xFFFFFFFFFFFFFLL) != 0)
          {
            v20 = v8;
          }
        }

        else
        {
          v20 = v8;
        }

        goto LABEL_35;
      }
    }

    __break(1u);
    return;
  }

  if (fabs(v8) > 0.1)
  {
    v20 = v8;
  }

  else
  {
    v20 = 10000.0;
  }

  v19 = v9;
LABEL_35:
  v21 = [v12 hidesSharedBackground];
  v22 = [v12 isCustomViewItem];
  v23 = [v12 _prefersFilledAppearance];
  v24 = [v12 _effectiveTintColor];
  v25 = [v12 _isSearchBarViewItem];

  v26 = 256;
  if (!v21)
  {
    v26 = 0;
  }

  v27 = v26 | v22;
  v28 = 0x10000;
  *a1 = v9;
  *(a1 + 8) = v8;
  if (!v23)
  {
    v28 = 0;
  }

  *(a1 + 16) = v19;
  *(a1 + 24) = v20;
  *(a1 + 32) = v27 | v28;
  *(a1 + 40) = v24;
  *(a1 + 48) = v25 ^ 1;
}

id _finalAttributesFromSources(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v8 count];
  v12 = v11;
  if (v10 || v9 || v11)
  {
    v14 = [v7 mutableCopy];
    v13 = v14;
    if (v12 >= 1)
    {
      [v14 addEntriesFromDictionary:v8];
    }

    if (v9)
    {
      v15 = *off_1E70EC920;
      v16 = [v13 objectForKeyedSubscript:*off_1E70EC920];

      if (!v16)
      {
        [v13 setObject:v9 forKeyedSubscript:v15];
      }
    }

    if (v10)
    {
      v17 = *off_1E70EC918;
      v18 = [v13 objectForKeyedSubscript:*off_1E70EC918];
      v19 = [v18 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v10];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v18;
      }

      [v13 setObject:v21 forKeyedSubscript:v17];
    }
  }

  else
  {
    v13 = v7;
  }

  return v13;
}

id _newButton(void *a1)
{
  v1 = [objc_msgSend(a1 "buttonControlClass")];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setUserInteractionEnabled:0];
  [v1 _setImageContentMode:1];
  [v1 _setDisableAutomaticTitleAnimations:1];
  LODWORD(v2) = 1144913920;
  [v1 setContentCompressionResistancePriority:0 forAxis:v2];

  return v1;
}

void sub_188BB90A4(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = _sSo17UITraitCollectionC5UIKitE20cornerMaskingContextSo09_UICornereF0Cvg_0();
  v9 = [v8 providerFor_];
  if (v9)
  {
    v10 = v9;
    v37 = a3;
    v38 = a1;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_188C45318;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_108;
    v12 = _Block_copy(aBlock);

    v13 = [v10 registerDescendant:a2 forGeometryOrMaskingConfigurationChanges:v12];
    _Block_release(v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    sub_188BB96BC();
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_188A4AA04;
    *(v17 + 24) = v14;
    v18 = OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDependencyUnregistrationBlocks;
    swift_beginAccess();
    v19 = *&v16[v18];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v16[v18] = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_188A32A24(0, v19[2] + 1, 1, v19);
      *&v16[v18] = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_188A32A24((v21 > 1), v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    v23 = &v19[2 * v22];
    v23[4] = sub_188A4B574;
    v23[5] = v17;
    *&v16[v18] = v19;
    swift_endAccess();

    [v10 resolvedCornerRadiusForDescedant:a2 context:v8 corner:a4];
    if ((~v38 & 0xF000000000000007) != 0)
    {
      v24 = v38 >> 62;
      if ((v38 >> 62) > 1)
      {
        if (v24 == 2)
        {
          [a2 bounds];
        }

        else if (v38 == 0xC000000000000000)
        {
          sub_188A74020(0xC000000000000000);
        }

        else if (v38 == 0xC000000000000008)
        {
          sub_188BB90A4(0xF000000000000007, a2, v37, a4);
          sub_188A74020(0xC000000000000008);
        }

        else
        {
          [a2 bounds];
          x = v40.origin.x;
          y = v40.origin.y;
          width = v40.size.width;
          height = v40.size.height;
          CGRectGetHeight(v40);
          v41.origin.x = x;
          v41.origin.y = y;
          v41.size.width = width;
          v41.size.height = height;
          CGRectGetWidth(v41);
          sub_188A74020(0xC000000000000010);
        }
      }

      else if (v24)
      {
        v25 = *((v38 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v26 = objc_opt_self();
        sub_188A85484(v38);
        v27 = [v26 defaultMetrics];
        v28 = [a2 traitCollection];
        [v27 scaledValueForValue:v28 compatibleWithTraitCollection:v25];

        sub_188A74020(v38);
      }
    }

    [a2 bounds];
    v33 = v42.origin.x;
    v34 = v42.origin.y;
    v35 = v42.size.width;
    v36 = v42.size.height;
    CGRectGetWidth(v42);
    v43.origin.x = v33;
    v43.origin.y = v34;
    v43.size.width = v35;
    v43.size.height = v36;
    CGRectGetHeight(v43);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_188BB9614()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188BB964C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188BB9684()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_188BB96BC()
{
  v1 = v0;
  v2 = [(UIView *)v0 _typedStorage];
  v3 = sub_188A86070();

  if (v3)
  {
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = type metadata accessor for _UIConcentricCornerMaskingSupport();
    v6 = objc_allocWithZone(v5);
    v7 = OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDescendantInvalidationBlocks;

    v8 = MEMORY[0x1E69E7CC0];
    *&v6[v7] = sub_188AFCBB8(MEMORY[0x1E69E7CC0]);
    *&v6[OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDependencyUnregistrationBlocks] = v8;
    v9 = &v6[OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_invalidationBlock];
    *v9 = sub_188C45428;
    v9[1] = v4;
    v19.receiver = v6;
    v19.super_class = v5;
    v10 = objc_msgSendSuper2(&v19, sel_init);

    v11 = [(UIView *)v1 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938FA8);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    v13 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v14 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(&v11->super.isa + v13);
    *(&v11->super.isa + v13) = 0x8000000000000000;
    sub_188A40430(v12, &type metadata for _UIConcentricCornerMaskingSupport.Key, isUniquelyReferenced_nonNull_native);
    *(&v11->super.isa + v13) = v18;
    swift_endAccess();
  }

  v16 = [(UIView *)v1 _typedStorage];
  v17 = sub_188A86070();

  if (!v17)
  {
    __break(1u);
  }
}

uint64_t sub_188BB99C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void (*sub_188BB99F8(void *a1, uint64_t a2, uint64_t a3))()
{
  v4 = v3;
  v8 = [v4 concentricMaskingSupport];
  v9 = [a1 contextIdentifier];
  sub_18A4A8048();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDescendantInvalidationBlocks;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *&v8[v11];
  *&v8[v11] = 0x8000000000000000;
  sub_188BB9C50(sub_188A4B574, v10, v17, isUniquelyReferenced_nonNull_native);
  sub_188BBA15C(v17);
  *&v8[v11] = v16;
  swift_endAccess();
  if ([a1 respondsToSelector_])
  {
    [a1 registerBoundingPathObserverForCornerMaskingConfigurationChanges_];
  }

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v9;
  return sub_188CAC8A4;
}

uint64_t sub_188BB9BA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188BB9BE0()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188BB9C18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_188BB9C50(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_188BBA050(a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_188FA2210();
      goto LABEL_7;
    }

    sub_188BB9D9C(v15, a4 & 1);
    v21 = sub_188BBA050(a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_188BBA230(a3, v23);
      return sub_188BBA28C(v12, v23, a1, a2, v18);
    }

LABEL_15:
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = (v18[7] + 16 * v12);
  *v19 = a1;
  v19[1] = a2;
}

uint64_t sub_188BB9D9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E40);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v35 = *(*(v5 + 56) + 16 * v22);
      }

      else
      {
        sub_188BBA230(v23, &v36);
        v35 = *(*(v5 + 56) + 16 * v22);
      }

      result = sub_18A4A8018();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 16 * v15) = v35;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_188BBA050(uint64_t a1)
{
  v2 = sub_18A4A8018();

  return sub_188BBA094(a1, v2);
}

unint64_t sub_188BBA094(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_188BBA230(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x18CFE2F70](v9, a1);
      sub_188BBA15C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_188BBA28C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = (a5[7] + 16 * result);
  *v7 = a3;
  v7[1] = a4;
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

uint64_t sub_188BBA2F4()
{
  v1 = OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDescendantInvalidationBlocks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v2 + 56) + ((v9 << 10) | (16 * v10)));

    v11(v12);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_188BBA428(uint64_t a1, unsigned __int8 a2)
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  MEMORY[0x18CFE37E0](a2);
  v4 = sub_18A4A88E8();

  return sub_188BBA870(a1, a2, v4);
}

uint64_t sub_188BBA4A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B80);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(*(v5 + 56) + 8 * v20);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v22);
      MEMORY[0x18CFE37E0](v23);
      result = sub_18A4A88E8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

unint64_t sub_188BBA748(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_188BBA428(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_188FA0A7C();
      result = v19;
      goto LABEL_8;
    }

    sub_188BBA4A8(v16, a4 & 1);
    result = sub_188BBA428(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {

    return sub_188BBA8F0(result, a2, a3, a1, v21);
  }

  return result;
}

unint64_t sub_188BBA870(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v10 = *(v8 + 8);
      if (v9 == a1 && a2 == v10)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_188BBA934(uint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t, unint64_t), void (*a4)(void))
{
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v8 = sub_18A4A7F68();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = a3(v9, a2);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    a4(0);
    v12 = sub_18A4A7C88();

    if (v12)
    {
      return v9;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_188BBAA3C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for GlassPair(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v24 = &v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v27 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v23 - v11;
  v12 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = *(v13 + 16);

  if (v14)
  {
    v16 = 0;
    while (v16 < *(v13 + 16))
    {
      sub_189063880(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v5, type metadata accessor for GlassPair);
      sub_188A34624(0, &qword_1ED490230);
      if (sub_18A4A7C88())
      {

        v19 = v24;
        sub_188B6549C(v5, v24, type metadata accessor for GlassPair);
        v18 = v26;
        sub_189063880(v19, v26, type metadata accessor for _Glass);
        sub_1890639A8(v19, type metadata accessor for GlassPair);
        v17 = 0;
        goto LABEL_8;
      }

      ++v16;
      result = sub_1890639A8(v5, type metadata accessor for GlassPair);
      if (v14 == v16)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v17 = 1;
    v18 = v26;
LABEL_8:
    v20 = type metadata accessor for _Glass(0);
    v21 = *(v20 - 8);
    (*(v21 + 56))(v18, v17, 1, v20);
    v22 = v27;
    sub_188A3F29C(v18, v27, &unk_1EA93BA10);
    result = (*(v21 + 48))(v22, 1, v20);
    if (result != 1)
    {
      sub_188A3F5FC(v18, &unk_1EA93BA10);
      return sub_188B6549C(v22, v25, type metadata accessor for _Glass);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_188BBAE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for GlassPair(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

double sub_188BBAF5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_188B0944C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188BBB000();
      v10 = v12;
    }

    sub_188A55538((*(v10 + 56) + 32 * v8), a3);
    sub_188BBB1A4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *sub_188BBB000()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC70);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_188A55598(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_188A55538(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_188BBB1A4(uint64_t result, uint64_t a2)
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
      sub_18A4A8888();

      sub_18A4A7348();
      v10 = sub_18A4A88E8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_188BBB840(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  if (a2)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    v14 = sub_188E3FE50;
  }

  else
  {
    v14 = signpost_c2_entryLock_start;
    v13 = 0;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a4;
  v17[4] = a5;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_188EB2CAC;
  *(v18 + 24) = v15;
  v30 = sub_188E5C7F8;
  v31 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_188A4A968;
  v29 = &block_descriptor_269;
  v23 = _Block_copy(&aBlock);
  sub_188A52E38(a2);

  sub_188A52E38(a4);

  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = a6;
  *(v19 + 32) = a7;
  *(v19 + 40) = a1 & 1;
  *(v19 + 48) = signpost_c2_entryLock_start;
  *(v19 + 56) = 0;
  v30 = sub_188BBBD90;
  v31 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_188A4A8F0;
  v29 = &block_descriptor_275;
  v20 = _Block_copy(&aBlock);

  v30 = sub_188E5C82C;
  v31 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_188ABD010;
  v29 = &block_descriptor_278;
  v21 = _Block_copy(&aBlock);

  [ObjCClassFromMetadata _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];

  _Block_release(v21);
  _Block_release(v20);
  _Block_release(v23);

  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188BBBBE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_188BBBC38(uint64_t a1, char a2, void (*a3)(uint64_t), double a4, double a5)
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

    v16[3] = &_s6GetterVN_1;
    v16[4] = &off_1EFAC5898;
    *v16 = a4;
    *&v16[1] = a5;
    v15 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A4B4F4(v16, v12 + v15, &qword_1EA935C90);
    swift_endAccess();
    *(v12 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive) = a2 & 1;
    a3(v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_188BBBDAC(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 88) = 0;
}

id _UIRemoteKeyboardsFBSSceneIdentityStringOrIdentifierFromScene(void *a1)
{
  v2 = [a1 _FBSScene];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 identityToken];
    v5 = [v4 stringRepresentation];
  }

  else
  {
    v5 = [a1 _sceneIdentifier];
  }

  return v5;
}

CFMutableDictionaryRef CFDictionaryCreateWithNonRetainedValuesFromNSDictionary(void *a1)
{
  if ([a1 count])
  {
    v2 = [a1 count];
    v3 = CFDictionaryCreateMutable(0, v2, MEMORY[0x1E695E9D8], &v6);
    [(__CFDictionary *)v3 setValuesForKeysWithDictionary:a1];
    return v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF20] dictionary];

    return v5;
  }
}

id UICurrentNibLoadingBundles()
{
  v0 = UICurrentNibLoadingBundles_stack;
  if (!UICurrentNibLoadingBundles_stack)
  {
    v1 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v2 = UICurrentNibLoadingBundles_stack;
    UICurrentNibLoadingBundles_stack = v1;

    v0 = UICurrentNibLoadingBundles_stack;
  }

  return v0;
}

id UICurrentNibPaths()
{
  v0 = UICurrentNibPaths_stack;
  if (!UICurrentNibPaths_stack)
  {
    v1 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v2 = UICurrentNibPaths_stack;
    UICurrentNibPaths_stack = v1;

    v0 = UICurrentNibPaths_stack;
  }

  return v0;
}

void UIResourceBeginDecodingNIBWithCoderFromBundleAndIdentifierForStringsFile(void *a1, void *a2, void *a3)
{
  key = a1;
  v5 = a3;
  v6 = a2;
  v7 = UICoderToBundleMap();
  CFDictionarySetValue(v7, key, v6);

  v8 = UICoderToNibIdentifierForStringsFileMap();
  v9 = v8;
  if (v5)
  {
    CFDictionarySetValue(v8, key, v5);
  }

  else
  {
    v10 = [MEMORY[0x1E695DFB0] null];
    CFDictionarySetValue(v9, key, v10);
  }
}

CFMutableDictionaryRef UICoderToBundleMap()
{
  result = UICoderToBundleMap_coderToBundleMap;
  if (!UICoderToBundleMap_coderToBundleMap)
  {
    v1 = *(MEMORY[0x1E695E9D8] + 16);
    *&v2.version = *MEMORY[0x1E695E9D8];
    *&v2.release = v1;
    v2.equal = 0;
    v2.hash = 0;
    result = CFDictionaryCreateMutable(0, 0, &v2, MEMORY[0x1E695E9E8]);
    UICoderToBundleMap_coderToBundleMap = result;
  }

  return result;
}

CFMutableDictionaryRef UICoderToNibIdentifierForStringsFileMap()
{
  result = UICoderToNibIdentifierForStringsFileMap_coderToNibIdentifierForStringsFileMap;
  if (!UICoderToNibIdentifierForStringsFileMap_coderToNibIdentifierForStringsFileMap)
  {
    v1 = *(MEMORY[0x1E695E9D8] + 16);
    *&v2.version = *MEMORY[0x1E695E9D8];
    *&v2.release = v1;
    v2.equal = 0;
    v2.hash = 0;
    result = CFDictionaryCreateMutable(0, 0, &v2, MEMORY[0x1E695E9E8]);
    UICoderToNibIdentifierForStringsFileMap_coderToNibIdentifierForStringsFileMap = result;
  }

  return result;
}

id UIResourceBundleForNIBBeingDecodedWithCoder(void *a1)
{
  v1 = a1;
  v2 = UICoderToBundleMap();
  v3 = CFDictionaryGetValue(v2, v1);

  return v3;
}

void UIResourceFinishDecodingNIBWithCoder(void *a1)
{
  v1 = a1;
  v2 = UICoderToBundleMap();
  CFDictionaryRemoveValue(v2, v1);
  v3 = UICoderToNibIdentifierForStringsFileMap();
  CFDictionaryRemoveValue(v3, v1);

  v4 = UICoderToBundleMap();
  if (!CFDictionaryGetCount(v4))
  {
    v5 = UINIBResrouceUniqueingTable();
    [v5 removeAllObjects];
  }
}

id UINIBResrouceUniqueingTable()
{
  v0 = UINIBResrouceUniqueingTable_resourceUniquing;
  if (!UINIBResrouceUniqueingTable_resourceUniquing)
  {
    v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2 = UINIBResrouceUniqueingTable_resourceUniquing;
    UINIBResrouceUniqueingTable_resourceUniquing = v1;

    v0 = UINIBResrouceUniqueingTable_resourceUniquing;
  }

  return v0;
}

void __getSBSApplicationShortcutSystemIconClass_block_invoke(uint64_t a1)
{
  SpringBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SBSApplicationShortcutSystemIcon");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBSApplicationShortcutSystemIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSBSApplicationShortcutSystemIconClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIApplicationShortcutItem.m" lineNumber:22 description:{@"Unable to find class %s", "SBSApplicationShortcutSystemIcon"}];

    __break(1u);
  }
}

id UIButton.configuration.setter(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 16);
    [v1 setConfiguration_];
  }

  else
  {

    return [v1 setConfiguration_];
  }
}

id UIButton.Configuration.cornerStyle.setter(unsigned __int8 *a1)
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
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setCornerStyle_];
}

uint64_t sub_188BBE67C(unint64_t *a1, void (*a2)(uint64_t))
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

void ____registerReusePool_block_invoke(uint64_t a1)
{
  if (qword_1ED49A2E8 != -1)
  {
    dispatch_once(&qword_1ED49A2E8, &__block_literal_global_37_3);
  }

  v2 = qword_1ED49A2E0;
  [v2 compact];
  [v2 addPointer:*(a1 + 32)];
}

void ____reusePoolRegistrationQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.UIKit.UIGraphicsRenderer.reuseRegistration", 0);
  v1 = qword_1ED49A2D0;
  qword_1ED49A2D0 = v0;
}

void ____registeredReusePools_block_invoke()
{
  v0 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  v1 = qword_1ED49A2E0;
  qword_1ED49A2E0 = v0;
}

void __purgeReusePools()
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__108;
  v17 = __Block_byref_object_dispose__108;
  v18 = 0;
  if (qword_1ED49A2D8 != -1)
  {
    dispatch_once(&qword_1ED49A2D8, &__block_literal_global_34_1);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____purgeReusePools_block_invoke;
  block[3] = &unk_1E70F2F20;
  block[4] = &v13;
  dispatch_sync(qword_1ED49A2D0, block);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v0 = v14[5];
  v1 = [v0 countByEnumeratingWithState:&v8 objects:v19 count:16];
  if (v1)
  {
    v2 = *v9;
    do
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v9 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v8 + 1) + 8 * i);
        v5 = v4[2];
        if (v5)
        {
          v6 = atomic_load(byte_1ED491C79);
          if ((v5 & 2) == 0 || (v6 & 1) == 0)
          {
            if (v6)
            {
              continue;
            }

LABEL_16:
            [v4 drainPool];
            continue;
          }
        }

        else if ((v5 & 2) == 0)
        {
          continue;
        }

        v7 = atomic_load(&_MergedGlobals_965);
        if ((v7 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v8 objects:v19 count:16];
    }

    while (v1);
  }

  _Block_object_dispose(&v13, 8);
}

void sub_188BBFC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ____purgeReusePools_block_invoke(uint64_t a1)
{
  if (qword_1ED49A2E8 != -1)
  {
    dispatch_once(&qword_1ED49A2E8, &__block_literal_global_37_3);
  }

  v5 = qword_1ED49A2E0;
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_188BBFF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSBSApplicationShortcutItemClass_block_invoke(uint64_t a1)
{
  SpringBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SBSApplicationShortcutItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBSApplicationShortcutItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSBSApplicationShortcutItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIApplicationShortcutItem.m" lineNumber:25 description:{@"Unable to find class %s", "SBSApplicationShortcutItem"}];

    __break(1u);
  }
}

void UIButton.Configuration.baseBackgroundColor.setter(void *a1)
{
  sub_188BC6788(a1, &selRef_setBaseBackgroundColor_);
}

uint64_t _isSameColor(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v9 = [v5 resolvedColorWithTraitCollection:v7];
      v10 = [v6 resolvedColorWithTraitCollection:v7];
      v8 = [v9 isEqual:v10];
    }
  }

  return v8;
}

id _colorsByThemeKeysecondarySystemGroupedBackgroundColor()
{
  v25[10] = *MEMORY[0x1E69E9840];
  v23 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v24[0] = v23;
  if (_UIUnifiedSystemBackgroundColorsEnabled())
  {
    v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.968627451 green:0.968627451 blue:0.968627451 alpha:1.0];
  }

  else
  {
    v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  }

  v22 = v0;
  v25[0] = v0;
  v21 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v24[1] = v21;
  if (_UIUnifiedSystemBackgroundColorsEnabled())
  {
    v1 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.968627451 green:0.968627451 blue:0.968627451 alpha:1.0];
  }

  else
  {
    v1 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  }

  v20 = v1;
  v25[1] = v1;
  v19 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v24[2] = v19;
  v18 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  v25[2] = v18;
  v17 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v24[3] = v17;
  v16 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.141176471 green:0.141176471 blue:0.149019608 alpha:1.0];
  v25[3] = v16;
  v15 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 1, 0);
  v24[4] = v15;
  v14 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.17254902 green:0.17254902 blue:0.180392157 alpha:1.0];
  v25[4] = v14;
  v13 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 1, 0);
  v24[5] = v13;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.211764706 green:0.211764706 blue:0.219607843 alpha:1.0];
  v25[5] = v2;
  v3 = _UIThemeKeyFromTraitValues(4, 2, 0, 0, 0, 0);
  v24[6] = v3;
  v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v25[6] = v4;
  v5 = _UIThemeKeyFromTraitValues(4, 2, 1, 0, 0, 0);
  v24[7] = v5;
  v6 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v25[7] = v6;
  v7 = _UIThemeKeyFromTraitValues(4, 1, 0, 0, 0, 0);
  v24[8] = v7;
  v8 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v25[8] = v8;
  v9 = _UIThemeKeyFromTraitValues(4, 1, 1, 0, 0, 0);
  v24[9] = v9;
  v10 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v25[9] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:10];

  return v11;
}

void UICollectionViewFlowLayoutCommonInit(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  *(a1 + 280) = 0x4024000000000000;
  *(a1 + 288) = 0x4024000000000000;
  *(a1 + 296) = vdupq_n_s64(0x4049000000000000uLL);
  *(a1 + 276) |= 0x200u;
  *(a1 + 544) = 0;
  v1 = MEMORY[0x1E696AD98];
  v2 = a1;
  v3 = [v1 numberWithInt:3];
  v15[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v15[1] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v15[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];

  v14[0] = @"UIFlowLayoutCommonRowHorizontalAlignmentKey";
  v14[1] = @"UIFlowLayoutLastRowHorizontalAlignmentKey";
  v14[2] = @"UIFlowLayoutRowVerticalAlignmentKey";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v6 forKeys:v7];
  v9 = v2[59];
  v2[59] = v8;

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v2[64];
  v2[64] = v10;

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = v2[65];
  v2[65] = v12;
}

__n128 __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 57);
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 57) = v4;
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 120);
  v7 = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v7;
  *(a1 + 120) = result;
  return result;
}

uint64_t _UISolariumSwipeActionsEnabled()
{
  if (qword_1ED4A0F20 != -1)
  {
    dispatch_once(&qword_1ED4A0F20, &__block_literal_global_549);
  }

  return _MergedGlobals_1297;
}

void __destructor_8_s8_s16_s24_s80(uint64_t a1)
{
  v2 = *(a1 + 80);
}

void _UIBackgroundConfigurationApplyProperties(void *a1, uint64_t a2, void *a3)
{
  self = a1;
  v6 = a3;
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v5, *(a2 + 16), 56);
  }

  [self __setVisualEffectGroupName:*(a2 + 24)];
  if (!*(a2 + 16) || *(a2 + 32) == 1)
  {
    if (*a2 == 1)
    {
      [(UIBackgroundConfiguration *)self _setBackgroundColor:?];
    }

    else
    {
      v7 = *(a2 + 8);
      if (self)
      {
        if (v7)
        {
          v8 = v7;
        }

        else
        {
          v8 = +[UIColor clearColor];
        }

        v9 = *(self + 5);
        *(self + 5) = v8;
      }
    }
  }

  v10 = _UIShadowPropertiesFromShadowType(*(a2 + 40), v6);
  [self _setShadowProperties:v10];

  [(UIBackgroundConfiguration *)self _setBackgroundColorTransformerIdentifier:?];
  v11 = *(a2 + 56);
  if (v11 > 0.0)
  {
    if (self)
    {
      *(self + 13) = v11;
      *(self + 14) = *(a2 + 64);
      if (*(a2 + 72) == 1)
      {
LABEL_16:
        [(UIBackgroundConfiguration *)self _setStrokeColor:?];
LABEL_22:
        [self _setStrokeLocation:*(a2 + 88)];
        goto LABEL_23;
      }

      v12 = *(a2 + 80);
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = +[UIColor clearColor];
      }

      v15 = *(self + 11);
      *(self + 11) = v14;
    }

    else
    {
      if (*(a2 + 72))
      {
        goto LABEL_16;
      }

      v13 = *(a2 + 80);
    }

    goto LABEL_22;
  }

LABEL_23:
  [self _setCornerRadius:*(a2 + 96)];
  if (self)
  {
    v16 = *(a2 + 120);
    *(self + 12) = *(a2 + 104);
    *(self + 13) = v16;
  }

  __destructor_8_s8_s16_s24_s80(a2);
}

id _UIShadowPropertiesFromShadowType(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 4:
      v4 = objc_opt_new();
      [v4 set_radius:12.0];
      [v4 set_opacity:{dbl_18A677AD0[objc_msgSend(v3, "userInterfaceStyle") == 2]}];
      [v4 set_offset:{0.0, 4.0}];
      v7 = v4;
      v8 = 4;
      goto LABEL_9;
    case 3:
      v7 = objc_opt_new();
      v4 = v7;
      v8 = 3;
LABEL_9:
      [v7 set_backgroundConfigurationShadowType:v8];
      goto LABEL_11;
    case 2:
      v4 = objc_opt_new();
      [v4 set_radius:16.0];
      v5 = [v3 userInterfaceStyle];
      v6 = 0.2;
      if (v5 == 2)
      {
        v6 = 1.0;
      }

      [v4 set_opacity:v6];
      [v4 set_offset:{0.0, 2.0}];
      v7 = v4;
      v8 = 2;
      goto LABEL_9;
  }

  v4 = 0;
LABEL_11:

  return v4;
}

uint64_t _UIConfigurationColorTransformerForIdentifier(uint64_t a1)
{
  if ((a1 - 2) > 0x1A)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7108598 + a1 - 2);
  }
}

id sub_188BC2240(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id UIButton.Configuration.contentInsets.setter(double a1, double a2, double a3, double a4)
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
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v11 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v12 = swift_allocObject();
    *(v12 + 16) = v14;

    *v4 = v12;
  }

  return [v11 setContentInsets_];
}

uint64_t sub_188BC23C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(char *, uint64_t, uint64_t, void)@<X4>, uint64_t a4@<X8>)
{
  v17 = a4;
  v18 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  sub_18A4A74E8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18(v9, a1, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  sub_18A4A74F8();
  v15 = *(a2 - 8);
  result = (*(v15 + 48))(v13, 1, a2);
  if (result != 1)
  {
    return (*(v15 + 32))(v17, v13, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_188BC2718@<X0>(SEL *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

uint64_t _UITableUsesTintColorAsBackgroundColor(void *a1, void *a2, int a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v9 = _UITableConstantsForTraitCollection(v8);
  v10 = v9;
  if (a4 && a3)
  {
    if (v9)
    {
      [v9 defaultSidebarHeaderBackgroundPropertiesWithState:v7 traitCollection:v8];
      goto LABEL_11;
    }
  }

  else if (a4)
  {
    if (v9)
    {
      [v9 defaultSidebarCellBackgroundPropertiesForStyle:a4 state:v7 traitCollection:v8];
      goto LABEL_11;
    }
  }

  else if (v9)
  {
    [v9 defaultCellBackgroundPropertiesForTableViewStyle:0 state:v7 traitCollection:v8];
    goto LABEL_11;
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
LABEL_11:
  __move_assignment_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(v15, v13);
  if (*&v15[0] == 1)
  {
    if (v16 <= 0xC)
    {
      v11 = 0x1081u >> v16;
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

  __destructor_8_s8_s16_s24_s80(v15);
  return v11 & 1;
}

__n128 __move_assignment_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;

  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;

  v8 = *(a2 + 24);
  *(a2 + 24) = 0;
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;

  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  v12 = *(a2 + 80);
  *(a2 + 80) = 0;
  v13 = *(a1 + 80);
  *(a1 + 80) = v12;

  result = *(a2 + 88);
  v15 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v15;
  *(a1 + 88) = result;
  return result;
}

id _TintColorFromTraitCollection(void *a1)
{
  v1 = a1;
  v2 = [v1 _tintColor];
  if (!v2)
  {
    if (v1)
    {
      v3 = [v1 userInterfaceIdiom];
    }

    else
    {
      v4 = +[UIDevice currentDevice];
      v3 = [v4 userInterfaceIdiom];
    }

    v2 = [UIView _defaultInteractionTintColorForIdiom:v3];
  }

  return v2;
}

void _durationOfSpringAnimation(double a1, double a2, double a3, double a4)
{
  v4 = sqrt(a1 * a2);
  v5 = fmax(a3 / (v4 + v4), 0.0);
  if (v5 >= 1.0 || v5 != 0.0)
  {
    v6 = sqrt(a2 / a1);
    if (v5 >= 1.0)
    {
      v10 = v6 - a4;
      v11 = exp(-v6 / (v6 - a4));
      v12 = -1.0 - log(fabs(v6 * v11 * 0.001 / v10));
      exp(sqrt(v12) * -0.0201);
    }

    else
    {
      v7 = v6 * sqrt(1.0 - v5 * v5);
      v8 = v6 * v5;
      v9 = fabs((v8 - a4) / v7);
      if (v9 >= 0.00000011920929)
      {
        fmax(-log(0.001 / (v9 + 1.0)) / v8, 0.0);
      }
    }
  }
}

void _UILoadDefaultSpringParameters()
{
  if (os_variant_has_internal_diagnostics() && (_UIViewDefaultSpringIgnoreUserDefaults & 1) == 0)
  {
    v0 = _UIKitUserDefaults();
    v17 = [v0 objectForKey:@"DefaultSpringParameters"];

    if (v17)
    {
      v1 = [v17 objectForKeyedSubscript:@"mass"];
      [v1 doubleValue];
      v3 = v2;

      v4 = 3.0;
      if (v3 > 0.0)
      {
        v4 = v3;
      }

      _UIViewDefaultSpringMass = *&v4;
      v5 = [v17 objectForKeyedSubscript:@"stiffness"];
      [v5 doubleValue];
      v7 = v6;

      v8 = 1000.0;
      if (v7 > 0.0)
      {
        v8 = v7;
      }

      _UIViewDefaultSpringStiffness = *&v8;
      v9 = [v17 objectForKeyedSubscript:@"damping"];
      [v9 doubleValue];
      v11 = v10;

      v12 = 500.0;
      if (v11 > 0.0)
      {
        v12 = v11;
      }

      _UIViewDefaultSpringDamping = *&v12;
      v13 = [v17 objectForKeyedSubscript:@"duration"];
      [v13 doubleValue];
      v15 = v14;

      v16 = 0.5;
      if (v15 > 0.0)
      {
        v16 = v15;
      }

      _UIViewDefaultSpringDuration = *&v16;
    }
  }
}

void _UIColorEncodeComponentForKey(void *a1, uint64_t a2, void *a3, double a4)
{
  v10 = a1;
  v7 = a3;
  v8 = a4;
  *&v9 = v8;
  [v10 encodeFloat:a2 forKey:v9];
  if (v8 != a4)
  {
    [v10 encodeDouble:v7 forKey:a4];
  }
}

void mapTrackedAnimations(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [qword_1EA994718 objectForKeyedSubscript:a1];
  v19 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v19)
  {
    v5 = *v29;
    v23 = v3;
    v21 = v4;
    v18 = *v29;
    do
    {
      v6 = 0;
      do
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v20 = v6;
        v7 = *(*(&v28 + 1) + 8 * v6);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        obj = [v7 _trackedAnimations];
        v8 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v25;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v25 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v24 + 1) + 8 * i);
              v13 = objc_getAssociatedObject(v12, &unk_1EA9946CC);
              v14 = objc_getAssociatedObject(v12, &unk_1EA9946CB);
              v15 = [v13 animationForKey:v14];
              v16 = v15;
              if (!v15 || ([v15 delegate], v17 = objc_claimAutoreleasedReturnValue(), v17, v17 == v7))
              {
                if (v23[2](v23, v7, v12, v13, v14))
                {

                  v3 = v23;
                  v4 = v21;
                  goto LABEL_20;
                }
              }
            }

            v9 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v6 = v20 + 1;
        v3 = v23;
        v4 = v21;
        v5 = v18;
      }

      while (v20 + 1 != v19);
      v19 = [v21 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v19);
  }

LABEL_20:
}

id _UIViewConstraints(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(a1 "_constraintsExceptingSubviewAutoresizingConstraints")];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a1 _allSubviews];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([(UIView *)v8 _usesAutoresizingConstraints])
        {
          [v2 addObjectsFromArray:-[UIView _autoresizingConstraints](v8)];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

uint64_t sub_188BC4830(uint64_t a1, id *a2)
{
  v3 = sub_18A4A7278();
  *a2 = 0;
  return v3 & 1;
}

uint64_t compareConstraintsAlphabetically(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v5 = (a3 + 16);
    v6 = (*(a3 + 16))(a3, a1);
    v7 = (*v5)(a3, a2);

    return [v6 compare:v7 options:1];
  }

  else
  {
    if (a2)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }

    if (a1)
    {
      return 1;
    }

    else
    {
      return v9;
    }
  }
}

id _UIButtonCombineDictionaries(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 count])
  {
    if ([v4 count])
    {
      v5 = [v3 mutableCopy];
      [v5 addEntriesFromDictionary:v4];
      v6 = [v5 copy];

      goto LABEL_7;
    }

    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v6 = v7;
LABEL_7:

  return v6;
}

id _UIButtonUpdateStringAttributes(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ([v7 length])
  {
    v11 = [v7 mutableCopy];
    v12 = [v11 length];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = ___UIButtonUpdateStringAttributes_block_invoke;
    v17[3] = &unk_1E70FEA78;
    v18 = v10;
    v19 = v8;
    v21 = v9;
    v13 = v11;
    v20 = v13;
    [v13 enumerateAttributesInRange:0 options:v12 usingBlock:{0x100000, v17}];
    v14 = v20;
    v15 = v13;
  }

  else
  {
    v15 = v7;
  }

  return v15;
}

id _UIButtonUpdateStringAttributes_0(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1 mutableCopy];
  v11 = [v10 length];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ___UIButtonUpdateStringAttributes_block_invoke_0;
  v19[3] = &unk_1E711B0E0;
  v20 = v7;
  v22 = v8;
  v23 = v9;
  v12 = v10;
  v21 = v12;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  [v12 enumerateAttributesInRange:0 options:v11 usingBlock:{0x100000, v19}];
  v16 = v21;
  v17 = v12;

  return v12;
}

id sub_188BC544C(SEL *a1, double a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 *a1];
}

void sub_188BC618C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_188BC666C()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    return *(v2 + 16);
  }

  [*(v2 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA930A50);
  swift_dynamicCast();
  v3 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
  v4 = swift_allocObject();
  *(v4 + 16) = v6;

  *v0 = v4;
  return v3;
}

void UIButton.Configuration.image.setter(void *a1)
{
  sub_188BC6788(a1, &selRef_setImage_);
}

id sub_188BC6788(uint64_t a1, SEL *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 *a2];
}

uint64_t sub_188BC6A8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _Glass._GlassVariant(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_188AD8C44(v6, a3, type metadata accessor for _Glass._GlassVariant);
}

uint64_t ___isAdditivelyAnimatableKeyForLayer_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = qword_1EA994978;
  qword_1EA994978 = v0;

  [qword_1EA994978 addObject:@"bounds"];
  [qword_1EA994978 addObject:@"position"];
  [qword_1EA994978 addObject:@"contentsRect"];
  [qword_1EA994978 addObject:@"contentsCenter"];
  result = dyld_program_sdk_at_least();
  if (result)
  {
    v3 = qword_1EA994978;

    return [v3 addObject:@"cornerRadius"];
  }

  return result;
}

uint64_t sub_188BC6DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_188BC6E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*UIButton.Configuration.background.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 48) = v1;
  v5 = [*(*v1 + 16) background];
  [v5 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v4[7] = sub_188A34624(0, &qword_1ED48BEA8);
  swift_dynamicCast();
  v6 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v4[4] = v7;
  return sub_188BC7178;
}

void UIBackgroundConfiguration.backgroundColor.setter(void *a1)
{
  sub_188BC7090(a1, &selRef_setBackgroundColor_);
}

id sub_188BC7090(uint64_t a1, SEL *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_18923EC58();
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 *a2];
}

void sub_188BC7178(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {

    v4 = sub_188BC666C();
    v5 = *(v3 + 16);
    v6 = v4;
    v7 = v5;

    [v7 copy];

    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v8 = v2[5];
    [v6 _setSwiftBridgingBackground_];
  }

  else
  {
    v9 = sub_188BC666C();
    v10 = *(v3 + 16);
    v11 = v9;
    v12 = v10;

    [v12 copy];

    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v13 = v2[5];
    [v11 _setSwiftBridgingBackground_];
  }

  free(v2);
}

void UIButton.Configuration.preferredSymbolConfigurationForImage.setter(void *a1)
{
  sub_188BC6788(a1, &selRef_setPreferredSymbolConfigurationForImage_);
}

id sub_188BC73D8(SEL *a1, double a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_18923EC58();
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 *a1];
}

NSString *__cdecl NSStringFromCGSize(CGSize size)
{
  v1 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g}", 17, *&size.width, 17, *&size.height);

  return v1;
}

void __AdjustToScale_block_invoke()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  AdjustToScale___s = v0;
}

void __AdjustToScale_block_invoke_0()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  AdjustToScale___s_0 = v0;
}

double UIRectCenteredYInRectScale(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a9 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }

  return a1;
}

void _addContinuousCornerToPath(CGPath *a1, uint64_t a2, int a3, int a4, int a5, double a6, double a7, double a8, double a9)
{
  v10 = a3;
  if (a8 >= a9)
  {
    v14 = a9;
  }

  else
  {
    v14 = a8;
  }

  v15 = 0.980263;
  if (a5)
  {
    v15 = 1.0;
    v16 = v14;
  }

  else
  {
    v16 = v14 * 0.95;
  }

  endAngle = v15;
  v17 = 0.0;
  if ((a2 - 1) <= 3)
  {
    v17 = dbl_18A67BE08[a2 - 1];
  }

  v18 = v16 * (1.0 - v15);
  if (a3 == 2)
  {
    v19 = -v18;
    v85 = v17;
    v86 = 70.0;
    v20 = *MEMORY[0x1E695EFF8];
  }

  else if (a3 == 1)
  {
    v85 = v17 + 20.0;
    v20 = -v18;
    v86 = 70.0;
    v19 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else if (a3)
  {
    v85 = v17 + 20.0;
    v86 = 50.0;
    v19 = *(MEMORY[0x1E695EFF8] + 8);
    v20 = *MEMORY[0x1E695EFF8];
    v16 = v16 / 1.528665;
  }

  else
  {
    v19 = -v18;
    v85 = v17;
    v86 = 90.0;
    v20 = -v18;
  }

  v21 = _interiorPointForCorner(a2, v20, v19, *MEMORY[0x1E695EFF8]);
  v83 = v22;
  v84 = v21;
  v23 = v16 * 0.33 * 0.666666667;
  v24 = v23 * 1.05304313 + (v16 / 1.05304313 + v23 * 0.33 / 1.05304313) * 0.67;
  v25 = v23 * 1.05304313 + v24;
  v26 = v23 * 1.05304313 + v23 * 1.05304313 + v25;
  v81 = _interiorPointForCorner(a2, v25, 0.0, a6);
  v82 = v27;
  v79 = _interiorPointForCorner(a2, v24, 0.0, a6);
  v80 = v28;
  v77 = _interiorPointForCorner(a2, 0.0, v24, a6);
  v78 = v29;
  v75 = _interiorPointForCorner(a2, 0.0, v25, a6);
  v76 = v30;
  v31 = _interiorPointForCorner(a2, 0.0, v26, a6);
  v73 = v32;
  v74 = v31;
  v33 = _interiorPointForCorner(a2, v26, 0.0, a6);
  v71 = v34;
  v72 = v33;
  v35 = _interiorPointForCorner(a2, v16, v16, a6);
  v37 = v36;
  v38 = _interiorPointForCorner(a2, v14, 0.0, a6);
  v40 = v39;
  v41 = _interiorPointForCorner(a2, 0.0, v14, a6);
  v43 = v42;
  memset(&m, 0, sizeof(m));
  CGAffineTransformMakeTranslation(&m, v84, v83);
  v44 = endAngle * v16;
  if (a4)
  {
    v45 = v86;
  }

  else
  {
    v45 = 0.0;
  }

  v46 = (v85 + v45) * 0.0174532925;
  if (a4)
  {
    v47 = 0.0;
  }

  else
  {
    v47 = v86;
  }

  endAnglea = (v85 + v47) * 0.0174532925;
  v48 = __sincos_stret(v46);
  v49 = v44 * v48.__cosval + v35;
  v50 = v44 * v48.__sinval + v37;
  if (a4)
  {
    if (v10)
    {
      p_m = &m;
      v51 = a1;
      v53 = v75;
      v54 = v76;
      v55 = v77;
      v56 = v78;
    }

    else
    {
      v51 = a1;
      p_m = 0;
      v53 = v41;
      v54 = v43;
      v55 = v41;
      v56 = v43;
      v49 = v41;
      v50 = v43;
    }

    CGPathAddCurveToPoint(v51, p_m, v53, v54, v55, v56, v49, v50);
    CGPathAddArc(a1, &m, v35, v37, v44, v46, endAnglea, 1);
    if ((v10 & 2) != 0)
    {
      v64 = &m;
      v63 = a1;
      v65 = v79;
      v66 = v80;
      v67 = v81;
      v68 = v82;
      v70 = v71;
      v69 = v72;
    }

    else
    {
      v63 = a1;
      v64 = 0;
      v65 = v38;
      v66 = v40;
      v67 = v38;
      v68 = v40;
      v69 = v38;
      v70 = v40;
    }
  }

  else
  {
    if (v10)
    {
      v58 = &m;
      v57 = a1;
      v59 = v81;
      v60 = v82;
      v61 = v79;
      v62 = v80;
    }

    else
    {
      v57 = a1;
      v58 = 0;
      v59 = v38;
      v60 = v40;
      v61 = v38;
      v62 = v40;
      v49 = v38;
      v50 = v40;
    }

    CGPathAddCurveToPoint(v57, v58, v59, v60, v61, v62, v49, v50);
    CGPathAddArc(a1, &m, v35, v37, v44, v46, endAnglea, 0);
    if ((v10 & 2) != 0)
    {
      v64 = &m;
      v63 = a1;
      v65 = v77;
      v66 = v78;
      v67 = v75;
      v68 = v76;
      v70 = v73;
      v69 = v74;
    }

    else
    {
      v63 = a1;
      v64 = 0;
      v65 = v41;
      v66 = v43;
      v67 = v41;
      v68 = v43;
      v69 = v41;
      v70 = v43;
    }
  }

  CGPathAddCurveToPoint(v63, v64, v65, v66, v67, v68, v69, v70);
}

double _interiorPointForCorner(uint64_t a1, double a2, double a3, double a4)
{
  if (a1 > 3)
  {
    v5 = a2 + a4;
    v6 = a4 - a3;
    if (a1 == 8)
    {
      a2 = v6;
    }

    if (a1 == 4)
    {
      return v5;
    }

    else
    {
      return a2;
    }
  }

  else if (a1 == 1)
  {
    return a3 + a4;
  }

  else
  {
    v4 = a4 - a2;
    if (a1 != 2)
    {
      return a2;
    }
  }

  return v4;
}

void ___fixAppLayoutAmbiguityIfNecessary_block_invoke()
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v0 = [v1 bundleIdentifier];
    byte_1ED499F39 = [v0 isEqualToString:@"com.outerspaceapps.itranslate"];
  }
}

uint64_t _UILAFacingAttributeOfAttribute(uint64_t a1)
{
  if ((a1 - 3) > 9)
  {
    return 0;
  }

  else
  {
    return qword_18A6834C0[a1 - 3];
  }
}

void _UILACleanUpConstraintForItemInCollection(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  v4 = [v3 objectForKey:v6];
  v5 = v4;
  if (v4)
  {
    [v4 setActive:0];
    [v3 removeObjectForKey:v6];
  }
}

uint64_t *_UIDragInteractionDriverStateMachineHandleEvent(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  *&v11 = *MEMORY[0x1E69E9840];
  v4 = result[1];
  if (v4)
  {
    *v4 = a3;
    result[1] = (v4 + 1);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    result[1] = v10;
    result = handleEvent(stateMachineSpec_5, *result, a3, a2, result);
    for (i = v3[1]; v10 != i; i = v3[1])
    {
      if (i > &v11)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIDragInteractionDriverStateMachineHandleEvent(_UIDragInteractionDriverStateMachine *const _Nonnull, _UIDragInteractionDriver *const __strong _Nonnull, _UIDragLiftEvent)"}];
        [v9 handleFailureInFunction:v8 file:@"_UIDragInteractionDriverStateMachine.m" lineNumber:128 description:@"Events queue shouldn't overflow"];

        i = v3[1];
      }

      v7 = *&v10[0];
      v3[1] = i - 8;
      __memmove_chk();
      result = handleEvent(stateMachineSpec_5, *v3, v7, a2, v3);
    }

    v3[1] = 0;
  }

  return result;
}

void _setGestureKeyboardFlag(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithInteger:a2];
  objc_setAssociatedObject(v4, &s_gestureKeyboardKey, v5, 0x301);
}

BOOL _isViewKeyboardLayoutPresent(void *a1)
{
  v1 = _getViewKeyboardLayout(a1);
  v2 = v1 != 0;

  return v2;
}

id _getViewKeyboardLayout(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 _keyboardLayoutView];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _isBETextInput(void *a1)
{
  v1 = a1;
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled]&& (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = NSProtocolFromString(&cfstr_Betextinput.isa);
    v3 = [v1 conformsToProtocolCached:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _UISwipeGestureRecognizerCommonInit(void *a1)
{
  a1[35] = 0x3FE0000000000000;
  a1[36] = 0x4049000000000000;
  a1[37] = 0x47EFFFFFE0000000;
  a1[38] = 0;
  a1[39] = 0x4049000000000000;
  a1[40] = 0;
  a1[42] = 0x3FAEB851EB851EB8;
  a1[43] = 0x3F947AE147AE147BLL;
  a1[41] = 0;
  a1[46] = 1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = a1[45];
  a1[45] = v2;

  [a1 setNumberOfTouchesRequired:1];

  return [a1 _setRequiresSystemGesturesToFail:1];
}

void _UITextContainerViewResyncNSTextContainer(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v26 = a1;
  v8 = [v26 textContainer];
  [v26 textContainerInset];
  v23 = v10;
  v24 = v9;
  v12 = v11;
  v14 = v13;
  [v8 size];
  v16 = v15;
  v18 = v17;
  v19 = v15;
  if ([v8 widthTracksTextView])
  {
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    v19 = CGRectGetWidth(v28) - (v12 + v14);
  }

  v20 = [v8 heightTracksTextView];
  v21 = v18;
  if (v20)
  {
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    v21 = CGRectGetHeight(v29) - (v24 + v23);
  }

  if (v16 != v19 || v18 != v21)
  {
    [v8 setSize:{v19, v21}];
    [v26 invalidateTextContainerOrigin];
    [v26 setNeedsDisplay];
  }
}

uint64_t _UITextViewAllowSelectionContainerInTextLayoutCanvas()
{
  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_TextViewAllowSelectionContainerInTextLayoutCanvas, @"TextViewAllowSelectionContainerInTextLayoutCanvas") & 1) == 0 && !byte_1ED48B664)
  {
    return 0;
  }

  return dyld_program_sdk_at_least();
}

uint64_t sub_188BD4774()
{
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  swift_getKeyPath();
  sub_18A4A2C28();

  ++*(v0 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__contentSeed);
  swift_getKeyPath();
  sub_18A4A2C18();
}

uint64_t _UIUndoGestureRecognizerCommonInit(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(_UIGestureRecognizerTransformAnalyzer);
  v3 = v1[61];
  v1[61] = v2;

  [v1[61] setRotationWeight:0.33];
  [v1[61] setTranslationWeight:0.33];
  v4 = v1[61];

  return [v4 setPinchingWeight:0.33];
}

uint64_t _isSystemGestureForDelegate(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___isSystemGestureForDelegate_block_invoke;
  block[3] = &unk_1E70F3590;
  v7 = v1;
  v2 = qword_1ED49C000;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&qword_1ED49C000, block);
  }

  v4 = _MergedGlobals_15_3;

  return v4;
}

uint64_t _systemGesturesDontCancelTouches(void *a1)
{
  result = _isSystemGestureForDelegate(a1);
  if (result)
  {
    return _os_feature_enabled_impl() ^ 1;
  }

  return result;
}

void ___isSystemGestureForDelegate_block_invoke()
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v0 = _UIKitBundle();
  v1 = [v0 bundlePath];
  v2 = [v3 bundlePath];
  _MergedGlobals_15_3 = [v1 isEqualToString:v2] ^ 1;
}

void sub_188BD51A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getCMMotionManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49E748)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreMotionLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E710CB80;
    v8 = 0;
    qword_1ED49E748 = _sl_dlopen();
  }

  if (!qword_1ED49E748)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreMotionLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIAccelerometer.m" lineNumber:27 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CMMotionManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCMMotionManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIAccelerometer.m" lineNumber:28 description:{@"Unable to find class %s", "CMMotionManager"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1150 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCMMotionManagerClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED499CC0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreMotionLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7119940;
    v8 = 0;
    qword_1ED499CC0 = _sl_dlopen();
  }

  if (!qword_1ED499CC0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreMotionLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIMotionEffectCoreMotionEventProvider.m" lineNumber:29 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CMMotionManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCMMotionManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIMotionEffectCoreMotionEventProvider.m" lineNumber:30 description:{@"Unable to find class %s", "CMMotionManager"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_9_7 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double _UIGetUIMotionEffectMotionUpdateFrequency()
{
  if (!_UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_UIMotionEffectMotionUpdateFrequency, @"UIMotionEffectMotionUpdateFrequency"))
  {
    return *&qword_1EA95E5A0;
  }

  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 60.0;
  if ((v1 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 90.0;
  }

  return result;
}

void _UIViewReconsiderMotionEffectSuspensionForScreenMirroring()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = [_motionEffectEngine suspensionReasons];
  v1 = [v0 containsObject:@"mirroringMainScreen"];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [UIScene _scenesIncludingInternal:1, 0];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 _hostsWindows])
        {
          v8 = [v7 _screen];
          v9 = [v8 mirroredScreen];
          v10 = [objc_opt_self() mainScreen];

          if (v9 == v10)
          {

            if ((v1 & 1) == 0)
            {
              [UIView animateWithDuration:&__block_literal_global_4195 animations:0.2];
              [_motionEffectEngine beginSuspendingForReason:@"mirroringMainScreen"];
            }

            return;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  if (v1)
  {
    [_motionEffectEngine endSuspendingForReason:@"mirroringMainScreen"];
  }
}

void ___frameKeyPathTranslationForKeyPath_block_invoke()
{
  v0 = qword_1ED4A2CB8;
  qword_1ED4A2CB8 = &unk_1EFE34BF8;
}

uint64_t _shouldEnableUIKitParallaxEffects()
{
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_1EA994A00 != -1)
    {
      dispatch_once(&qword_1EA994A00, &__block_literal_global_4197);
    }

    v0 = byte_1EA9946DB;
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

void UISetColor(CGColor *a1)
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSetStrokeColorWithColor(v3, a1);

  CGContextSetFillColorWithColor(v3, a1);
}

void UIRectFillUsingOperation(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  if (CGContextGetCompositeOperation() == a1)
  {
    v12 = a2;
    v13 = a3;
    v14 = a4;
    v15 = a5;

    CGContextFillRect(v11, *&v12);
  }

  else
  {
    CGContextSetCompositeOperation();
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    CGContextFillRect(v11, v17);

    CGContextSetCompositeOperation();
  }
}

uint64_t _UIWhitePointAdaptivityStyleFromString(void *a1)
{
  v1 = a1;
  v2 = [@"_UIWhitePointAdaptivityStyleStandard" length];
  v3 = v2 - 1;
  if (v2 == 1)
  {
  }

  else
  {
    if ([v1 isEqualToString:@"_UIWhitePointAdaptivityStyleStandard"])
    {

LABEL_6:
      v6 = 0;
      goto LABEL_34;
    }

    v4 = [@"_UIWhitePointAdaptivityStyleStandard" substringWithRange:{1, v3}];
    v5 = [v1 isEqualToString:v4];

    if (v5)
    {
      goto LABEL_6;
    }
  }

  v7 = v1;
  v8 = [@"_UIWhitePointAdaptivityStyleReading" length];
  v9 = v8 - 1;
  if (v8 == 1)
  {
  }

  else
  {
    if ([v7 isEqualToString:@"_UIWhitePointAdaptivityStyleReading"])
    {

LABEL_12:
      v6 = 1;
      goto LABEL_34;
    }

    v10 = [@"_UIWhitePointAdaptivityStyleReading" substringWithRange:{1, v9}];
    v11 = [v7 isEqualToString:v10];

    if (v11)
    {
      goto LABEL_12;
    }
  }

  v12 = v7;
  v13 = [@"_UIWhitePointAdaptivityStylePhoto" length];
  v14 = v13 - 1;
  if (v13 == 1)
  {
  }

  else
  {
    if ([v12 isEqualToString:@"_UIWhitePointAdaptivityStylePhoto"])
    {

LABEL_18:
      v6 = 2;
      goto LABEL_34;
    }

    v15 = [@"_UIWhitePointAdaptivityStylePhoto" substringWithRange:{1, v14}];
    v16 = [v12 isEqualToString:v15];

    if (v16)
    {
      goto LABEL_18;
    }
  }

  v17 = v12;
  v18 = [@"_UIWhitePointAdaptivityStyleVideo" length];
  v19 = v18 - 1;
  if (v18 == 1)
  {
  }

  else
  {
    if ([v17 isEqualToString:@"_UIWhitePointAdaptivityStyleVideo"])
    {

LABEL_24:
      v6 = 3;
      goto LABEL_34;
    }

    v20 = [@"_UIWhitePointAdaptivityStyleVideo" substringWithRange:{1, v19}];
    v21 = [v17 isEqualToString:v20];

    if (v21)
    {
      goto LABEL_24;
    }
  }

  v22 = v17;
  v23 = [@"_UIWhitePointAdaptivityStyleGame" length];
  v24 = v23 - 1;
  if (v23 == 1)
  {
  }

  else
  {
    if ([v22 isEqualToString:@"_UIWhitePointAdaptivityStyleGame"])
    {

LABEL_30:
      v6 = 4;
      goto LABEL_34;
    }

    v25 = [@"_UIWhitePointAdaptivityStyleGame" substringWithRange:{1, v24}];
    v26 = [v22 isEqualToString:v25];

    if (v26)
    {
      goto LABEL_30;
    }
  }

  if ([v22 isEqualToString:@"_UIWhitePointAdaptivityStyleOff"])
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

LABEL_34:

  return v6;
}

void _HandleNewDeviceMotion(double *a1, void *a2)
{
  v4 = [[_UIMotionEffectAttitudeEvent alloc] initWithTimestamp:a1[11] attitude:a1[1], a1[2], a1[3], *a1];
  v3 = [a2 consumer];
  [v3 updateWithEvent:v4];
}

id _UIPhysicalButtonAndBehaviorMap()
{
  if (qword_1ED49C6F8 != -1)
  {
    dispatch_once(&qword_1ED49C6F8, &__block_literal_global_94);
  }

  v1 = qword_1ED49C6F0;

  return v1;
}

BOOL _UIPhysicalButtonBehaviorOptionsIsValidForBehavior(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  if ([a1 _behavior] != a2)
  {
    return 0;
  }

  v3 = _UIPhysicalButtonBehaviorOptionsClassForBehavior(a2);
  return objc_opt_class() == v3;
}

uint64_t sub_188BD6968@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936368);
  result = swift_dynamicCast();
  *a1 = v3;
  return result;
}

uint64_t sub_188BD69E4(uint64_t result, uint64_t a2, double a3)
{
  v3 = *(a2 + 16);
  v4 = *(result + 16);
  if (v4 <= v3)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = *(result + 16);
  }

  if (!v5)
  {
    return 1;
  }

  v6 = 0;
  v7 = result + 32;
  while (v6 < v3)
  {
    v8 = *(a2 + 32 + 8 * v6);
    if (v6 < v4)
    {
      if (vabdd_f64(v8, *(v7 + 8 * v6)) > a3)
      {
        return 0;
      }

      goto LABEL_7;
    }

LABEL_13:
    if (fabs(v8) > a3)
    {
      return 0;
    }

LABEL_7:
    if (v5 == ++v6)
    {
      return 1;
    }
  }

  if (v6 < v4)
  {
    v8 = *(v7 + 8 * v6);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

double _tintBehaviorAlphaReduction(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  if ([v8 userInterfaceStyle] == 2)
  {
    v9 = +[UIColor systemRedColor];
    if (_isSameColor(v7, v9, v8))
    {
      v10 = 0.2;
    }

    else
    {
      v14 = +[UIColor systemPinkColor];
      if (_isSameColor(v7, v14, v8))
      {
        v10 = 0.2;
      }

      else
      {
        v10 = 0.25;
      }
    }

    v13 = v10 * a4;
  }

  else
  {
    v11 = +[UIColor systemYellowColor];
    if (_isSameColor(v7, v11, v8))
    {
      v12 = 0.2;
    }

    else
    {
      v12 = 0.18;
    }

    v13 = v12 * a3;
  }

  return v13;
}

double __parametersOfSpringAnimation_block_invoke_6(uint64_t a1, double a2)
{
  v4 = (*(*(a1 + 32) + 16))();
  v5 = *(a1 + 48);
  if (v4 >= 0.0)
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = -*(a1 + 40);
  }

  v7 = v4 * v5 + 1.0;
  v8 = -(v5 * a2);
  return v7 * expf(v8) - v6;
}

id _UIPhysicalButtonBehaviorOptionsClassForBehavior(uint64_t a1)
{
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

void sub_188BD77B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIPhysicalButtonInteractionArbiterTargetWindowForButton(void *a1, void *a2)
{
  v3 = [a1 _configurationForButton:?];
  if (v3)
  {
    v4 = [a2 objectForKey:v3];
    v5 = [v4 view];
    v6 = [v5 _window];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void _UIParallaxMotionEffectCommonInit(void *a1)
{
  v3 = a1;
  v1 = objc_alloc_init(UIMotionEffectGroup);
  v2 = v3[3];
  v3[3] = v1;

  [v3 _updateGroupMotionEffect];
}

id _quantizedValueForValueInView(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___quantizedValueForValueInView_block_invoke;
  aBlock[3] = &unk_1E70F6200;
  v5 = v4;
  v18 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [v3 objCType];
  v8 = *v7;
  if (v8 == 102)
  {
    if (!v7[1])
    {
      v9 = MEMORY[0x1E696AD98];
      [v3 floatValue];
      v10.n128_f64[0] = v10.n128_f32[0];
      goto LABEL_10;
    }
  }

  else if (v8 == 100 && !v7[1])
  {
    v9 = MEMORY[0x1E696AD98];
    [v3 doubleValue];
LABEL_10:
    v6[2](v6, v10);
    v11 = [v9 numberWithDouble:?];
    goto LABEL_11;
  }

  if (!strcmp(v7, "{CGPoint=dd}"))
  {
    [v3 CGPointValue];
    v13 = v12;
    v14 = (v6[2])(v6);
    v11 = [MEMORY[0x1E696B098] valueWithCGPoint:{v14, (v6[2])(v6, v13)}];
  }

  else
  {
    v11 = v3;
  }

LABEL_11:
  v15 = v11;

  return v15;
}

void _HandleMotionManagerNotification(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (!a1)
  {
    v7[6] = v3;
    v7[7] = v4;
    v5 = *a2;
    v6 = *a2 == 1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___HandleMotionManagerNotification_block_invoke;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    if (v5 != 2)
    {
      v5 = v6;
    }

    v7[4] = a3;
    v7[5] = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __ProductSuffix_block_invoke()
{
  v5 = _CFGetProductName();
  if ([(__CFString *)v5 length])
  {
    if ([(__CFString *)v5 isEqualToString:@"ipod"])
    {

      v5 = @"iphone";
    }

    v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"~%@", v5];
    v1 = qword_1ED4A3180;
    qword_1ED4A3180 = v0;
  }

  else
  {
    v2 = +[UIDevice currentDevice];
    v1 = [v2 model];

    v3 = @"~iphone";
    if (v1)
    {
      [v1 rangeOfString:@"iPad" options:9];
      if (v4)
      {
        v3 = @"~ipad";
      }
    }

    objc_storeStrong(&qword_1ED4A3180, v3);
  }
}

CGImageSource *ImageSourceAtPath(void *a1, int a2, unint64_t a3)
{
  keys[3] = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (v5)
  {
    keys[0] = *MEMORY[0x1E696E0A8];
    keys[1] = @"kCGImageSourceSkipCRC";
    keys[2] = @"kCGImageSourceSkipMetadata";
    values = *MEMORY[0x1E695E4C0];
    v17 = values;
    v6 = *MEMORY[0x1E695E4D0];
    v18 = *MEMORY[0x1E695E4D0];
    if (a2)
    {
      values = v6;
    }

    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = v8;
      if (CFStringHasPrefix(v5, ImageSourceAtPath_trustedPaths[v7]))
      {
        break;
      }

      v8 = 0;
      v7 = 1;
      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v17 = v6;
LABEL_10:
    v11 = CFDictionaryCreate(0, keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v12 = CFURLCreateWithFileSystemPath(0, v5, kCFURLPOSIXPathStyle, 0);
    v13 = CFAutorelease(v12);
    v14 = CGImageSourceCreateWithURL(v13, v11);
    v10 = v14;
    if (v14 && CGImageSourceGetCount(v14))
    {
      _UIImageGetOrientationAndScale(v10, 0, v11, a3, 0);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id ProductSuffix()
{
  if (qword_1ED4A3188 != -1)
  {
    dispatch_once(&qword_1ED4A3188, &__block_literal_global_70_1);
  }

  v1 = qword_1ED4A3180;

  return v1;
}

id _UIImageCollectImagePathsForPath(void *a1, void *a2, char a3, char a4)
{
  v7 = a1;
  v8 = a2;
  if (v7 && [(__CFString *)v7 length])
  {
    v9 = [objc_opt_self() mainScreen];
    [v9 scale];
    v10 = 1;
    if (v11 != 1.0 && (a3 & 1) == 0)
    {
      v10 = __preferredDeviceScale == 1;
    }

    v12 = [(__CFString *)v7 pathExtension];
    if (v8)
    {
      v13 = [v8 bundlePath];
    }

    else
    {
      v13 = &stru_1EFB14550;
    }

    v15 = [(__CFString *)v7 lastPathComponent];
    if ([v15 isEqualToString:@"/"])
    {
      v14 = 0;
    }

    else
    {
      v16 = ProductSuffix();
      v17 = [v15 containsString:v16];

      if (v17)
      {
        v18 = ProductSuffix();
        v19 = [v15 stringByReplacingOccurrencesOfString:v18 withString:&stru_1EFB14550];

        v20 = [(__CFString *)v7 stringByDeletingLastPathComponent];
        v21 = [v20 stringByAppendingPathComponent:v19];

        v15 = v19;
        v7 = v21;
      }

      if ([(__CFString *)v12 length])
      {
        v22 = [(__CFString *)v7 stringByDeletingPathExtension];
        v23 = v7;
        v7 = v22;
      }

      else
      {
        v23 = v12;
        v12 = @"png";
      }

      v24 = [MEMORY[0x1E695DF70] array];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___UIImageCollectImagePathsForPath_block_invoke;
      aBlock[3] = &unk_1E712D118;
      v30 = v8;
      v31 = v13;
      v25 = v24;
      v32 = v25;
      v34 = a4;
      v7 = v7;
      v33 = v7;
      v35 = v10;
      v26 = _Block_copy(aBlock);
      v26[2](v26, v7, v12);
      if (![v25 count] && (-[__CFString isEqualToString:](v12, "isEqualToString:", @"png") & 1) == 0)
      {
        v27 = [(__CFString *)v7 stringByAppendingPathExtension:v12];
        v26[2](v26, v27, @"png");
      }

      v14 = v25;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_188BDC348@<X0>(SEL *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

id _reorderImagesToStartAtIndex(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 count] < 2 || a2 == 0x7FFFFFFFFFFFFFFFLL || a2 == 0)
  {
    v9 = v3;
  }

  else
  {
    v7 = [v3 subarrayWithRange:{a2, objc_msgSend(v3, "count") - a2}];
    v8 = [v3 subarrayWithRange:{0, a2}];
    v9 = [v7 arrayByAddingObjectsFromArray:v8];
  }

  return v9;
}

uint64_t _UIPhysicalButtonIsValid(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  v2 = _UIPhysicalButtonAllAvailableButtons();
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t _UIPhysicalButtonConfigurationNSSetIsMostlyValid(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a1;
  v3 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v22 = a2;
    v5 = 0;
    v6 = *v25;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v8 _button];
        v10 = [v8 _behavior];
        IsValid = _UIPhysicalButtonIsValid(v9);
        IsValidForButton = _UIPhysicalButtonBehaviorIsValidForButton(v10, v9);
        v13 = [v8 _behaviorOptions];
        IsValidForBehavior = _UIPhysicalButtonBehaviorOptionsIsValidForBehavior(v13, v10);

        if (IsValid)
        {
          v15 = IsValidForButton == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15 || !IsValidForBehavior)
        {
          if (v22)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid configuration: %@", v8];
            *v22 = v18 = 0;
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        v16 = [v8 _button];
        if (v16 - 1 >= 7)
        {
          v17 = 0;
        }

        else
        {
          v17 = 1 << v16;
        }

        if ((v17 & ~v5) == 0)
        {
          if (v22)
          {
            v19 = MEMORY[0x1E696AEC0];
            v20 = _NSStringFromUIPhysicalButton(v16);
            *v22 = [v19 stringWithFormat:@"Configuration set contains more than one %@ button", v20];
          }

LABEL_23:
          v18 = 0;
          goto LABEL_24;
        }

        v5 |= v17;
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      v18 = 1;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 1;
  }

LABEL_24:

  return v18;
}

uint64_t _UIPhysicalButtonRequiredButtonsForButton(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return MEMORY[0x1E695E0F0];
  }

  else
  {
    return qword_1E70F4880[a1 - 1];
  }
}

void _UIPhysicalButtonEnumerateAllButtonsWithBlock(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0;
  _UIPhysicalButtonAllAvailableButtons();
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v8 != v5)
      {
        objc_enumerationMutation(v2);
      }

      (*(a1 + 16))(a1, [*(*(&v7 + 1) + 8 * v6) unsignedIntegerValue], &v11);
      if (v11)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

CGImageSource *_UIImageSourceAtPath(void *a1, int a2, unint64_t a3, double *a4, void *a5)
{
  v9 = a1;
  if (+[UIDevice _isWatch])
  {
    v10 = _UIImageCollectImagePathsForPath(v9, 0, 0, 1);
  }

  else
  {
    v11 = +[UIDevice _isWatchCompanion];
    v10 = _UIImageCollectImagePathsForPath(v9, 0, 0, v11);
    if ((v11 & 1) == 0)
    {
      v13 = +[UIScreen _mainScreenThreadSafeTraitCollection];
      v12 = BestPathForTraits(v10, v13);

      goto LABEL_6;
    }
  }

  v12 = [v10 firstObject];
LABEL_6:
  v14 = ImageSourceAtPath(v12, a2, a3);
  v15 = v14;
  if (a4 && v14)
  {
    v16 = [UIImage _scaleDefinedByPath:v12];
    v17 = v16;
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 1.0;
    }

    *a4 = v17;
  }

  if (a5)
  {
    if (v15)
    {
      v18 = v12;
    }

    else
    {
      v18 = 0;
    }

    *a5 = v18;
  }

  return v15;
}

id BestPathForTraits(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 count] == 1)
  {
    v5 = [v3 objectAtIndex:0];
  }

  else if ([v3 count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __BestPathForTraits_block_invoke;
    v10 = &unk_1E712D140;
    v12 = &v13;
    v11 = v4;
    [v3 enumerateObjectsUsingBlock:&v7];
    if (v14[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = [v3 objectAtIndexedSubscript:{v7, v8, v9, v10}];
    }

    _Block_object_dispose(&v13, 8);
  }

  return v5;
}

void sub_188BDE380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _colorByReducingAlpha(void *a1, uint64_t a2, double a3)
{
  v4 = [a1 resolvedColorWithTraitCollection:a2];
  [v4 alphaComponent];
  v6 = [v4 colorWithAlphaComponent:v5 * a3];

  return v6;
}

double __parametersOfSpringAnimation_block_invoke_7(double *a1, double a2)
{
  v2 = a1[4] * (a1[5] - a2);
  v3 = a1[6] * a2;
  return v2 / expf(v3);
}

id _UIPhysicalButtonAllBKSHIDEventDeferringEnvironments()
{
  if (qword_1ED4A0A18 != -1)
  {
    dispatch_once(&qword_1ED4A0A18, &__block_literal_global_391_0);
  }

  v1 = qword_1ED4A0A10;

  return v1;
}

id _UIPhysicalButtonSuccinctConfigurationsDescriptionForSet(void *a1)
{
  v2 = objc_opt_new();
  if (!a1 || (v3 = a1[1]) != 0 && [v3 count])
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v13[3] = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___UIPhysicalButtonSuccinctConfigurationsDescriptionForSet_block_invoke;
    v8[3] = &unk_1E712C540;
    v4 = v2;
    v9 = v4;
    v10 = &stru_1EFB14550;
    v11 = @", ";
    v12 = v13;
    [a1 _enumerateConfigurationsWithBlock:v8];
    v5 = v11;
    v6 = v4;

    _Block_object_dispose(v13, 8);
  }

  else
  {
    [v2 appendString:@"(empty)"];
  }

  return v2;
}

void sub_188BDEED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *_UIPhysicalButtonsForBKSHIDEventDeferringEnvironment(void *a1)
{
  v2 = [MEMORY[0x1E698E398] ui_cameraCaptureButtonEnvironment];
  v3 = a1;
  v4 = v2;
  v5 = v4;
  if (v4 == v3)
  {
  }

  else
  {
    if (!v3 || !v4)
    {

LABEL_9:
      v7 = MEMORY[0x1E695E0F0];
      goto LABEL_10;
    }

    v6 = [v3 isEqual:v4];

    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v7 = &unk_1EFE2D750;
LABEL_10:

  return v7;
}

id _UIPhysicalButtonAllAvailableButtons()
{
  if (qword_1ED49C6E8 != -1)
  {
    dispatch_once(&qword_1ED49C6E8, &__block_literal_global_18);
  }

  v1 = _MergedGlobals_978;

  return v1;
}

uint64_t _UIPhysicalButtonBehaviorIsValidForButton(unint64_t a1, uint64_t a2)
{
  if (a1 > 2)
  {
    return 0;
  }

  IsValid = _UIPhysicalButtonIsValid(a2);
  if (a2 == 4 || !IsValid)
  {
    return 0;
  }

  v5 = _UIPhysicalButtonAndBehaviorMap();
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v7 = [v5 objectForKey:v6];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v9 = [v7 containsObject:v8];

  return v9;
}

void sub_188BDF4C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

__CFString *_NSStringFromUIPhysicalButton(unint64_t a1)
{
  if (a1 > 7)
  {
    return &stru_1EFB14550;
  }

  else
  {
    return off_1E70F4820[a1];
  }
}

void parametersOfSpringAnimation(double *a1, double *a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v76[2] = *MEMORY[0x1E69E9840];
  v13 = fmax(a5, 0.00000011920929);
  if (v13 >= 1.0)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = v13;
  }

  v35 = v14;
  v15 = fmin(fmax(a4, 0.01), 10.0);
  if (v13 < 1.0)
  {
    v16 = v13 * v13;
    v17 = 1.0 - v13 * v13;
    v18 = sqrtf(v17);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __parametersOfSpringAnimation_block_invoke;
    aBlock[3] = &__block_descriptor_40_e8_d16__0d8l;
    *&aBlock[4] = v18;
    v19 = _Block_copy(aBlock);
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __parametersOfSpringAnimation_block_invoke_2;
    v72[3] = &unk_1E712B740;
    *&v73[1] = v13;
    *&v73[2] = a7;
    v73[0] = v19;
    v25 = v19;
    v20 = _Block_copy(v72);
    v21 = v13 * v15;
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __parametersOfSpringAnimation_block_invoke_3;
    v68[3] = &unk_1E712B740;
    v70 = a8;
    v71 = v21;
    v22 = v20;
    v69 = v22;
    v26 = _Block_copy(v68);
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __parametersOfSpringAnimation_block_invoke_4;
    v61[3] = &unk_1E712B768;
    v62 = v22;
    v63 = v21;
    v64 = a7;
    v65 = v21 * a7;
    v66 = v16 * v15;
    v67 = v18;
    v23 = v22;
    v27 = _Block_copy(v61);

    v28 = v73;
  }

  else
  {
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __parametersOfSpringAnimation_block_invoke_5;
    v60[3] = &__block_descriptor_40_e8_d16__0d8l;
    *&v60[4] = a7;
    v24 = _Block_copy(v60);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __parametersOfSpringAnimation_block_invoke_6;
    v58[3] = &unk_1E712B740;
    v59[0] = v24;
    *&v59[1] = a8;
    *&v59[2] = v15;
    v25 = v24;
    v26 = _Block_copy(v58);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __parametersOfSpringAnimation_block_invoke_7;
    v57[3] = &__block_descriptor_56_e8_d16__0d8l;
    *&v57[4] = v15 * v15;
    *&v57[5] = a7;
    *&v57[6] = v15;
    v27 = _Block_copy(v57);
    v28 = v59;
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __parametersOfSpringAnimation_block_invoke_8;
  v37[3] = &unk_1E712B7B0;
  v40 = &v45;
  v43 = v15;
  v44 = a8;
  v29 = v26;
  v38 = v29;
  v30 = v27;
  v39 = v30;
  v41 = &v49;
  v42 = &v53;
  v31 = _Block_copy(v37);
  if (((v31[2])(v31, 12, 5.0) & 1) == 0)
  {
    v31[2](v31, 20, 1.0);
  }

  if (a3)
  {
    v75[0] = @"nanCount";
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v50[3]];
    v75[1] = @"divergenceCount";
    v76[0] = v32;
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v54[3]];
    v76[1] = v33;
    *a3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:2];
  }

  if (a1)
  {
    *a1 = v46[3] * (v46[3] * a6);
  }

  if (a2)
  {
    v34 = sqrt(v46[3] * (a6 * a6 * v46[3]));
    *a2 = v35 * (v34 + v34);
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
}

void sub_188BDFCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __parametersOfSpringAnimation_block_invoke_8(uint64_t a1, unint64_t a2, double a3)
{
  v3 = *(*(a1 + 48) + 8);
  *(v3 + 24) = 1.0 / *(a1 + 72) * a3;
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(a1 + 80) * 100000.0;
    v10 = *(*(*(a1 + 48) + 8) + 24);
    while (1)
    {
      v11 = (*(*(a1 + 32) + 16))(v10);
      *(*(*(a1 + 48) + 8) + 24) = v10 - v11 / (*(*(a1 + 40) + 16))(*(*(*(a1 + 48) + 8) + 24));
      v3 = *(*(a1 + 48) + 8);
      v12 = *(v3 + 24);
      if (v6 >= 2 && vabdd_f64(v12, v10) <= *(a1 + 80))
      {
        break;
      }

      v8 = v10 - v12 > v9;
      v7 = ++v6 >= a2;
      v10 = *(v3 + 24);
      if (a2 == v6)
      {
        goto LABEL_6;
      }
    }

    if (v8)
    {
      LODWORD(v3) = 0;
      ++*(*(*(a1 + 64) + 8) + 24);
    }

    else
    {
      LODWORD(v3) = 1;
    }
  }

  else
  {
LABEL_6:
    v7 = 1;
  }

  return (v7 | v3) & 1;
}

uint64_t _GlassGroup.init(foreground:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 1) = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_188BE0090(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___UIHoverStyle_driverCoordinator;
  swift_beginAccess();
  sub_188A3F29C(&v4[v8], v46, &qword_1EA940940);
  v9 = v47;
  sub_188A3F5FC(v46, &qword_1EA940940);
  if (!v9 && (a1 & 1) != 0)
  {
    v10 = OBJC_IVAR___UIHoverStyle__effect;
    swift_beginAccess();
    sub_188A53994(&v4[v10], v37);
    v11 = *&v4[OBJC_IVAR___UIHoverStyle__shape + 16];
    v38 = *&v4[OBJC_IVAR___UIHoverStyle__shape];
    v39 = v11;
    v40[0] = *&v4[OBJC_IVAR___UIHoverStyle__shape + 32];
    *(v40 + 9) = *&v4[OBJC_IVAR___UIHoverStyle__shape + 41];
    v12 = OBJC_IVAR___UIHoverStyle_host;
    swift_beginAccess();
    sub_188A3F29C(&v4[v12], v36, &unk_1EA93F7F0);
    v48 = 0u;
    v49 = 0u;
    memset(v50, 0, 24);
    v50[24] = -1;
    v51 = 0;
    v52 = -1;
    v53 = 0;
    v54 = 1;
    v56 = MEMORY[0x1E69E7CC8];
    sub_188A53994(v37, v46);
    v41[0] = v48;
    v41[1] = v49;
    v42[0] = *v50;
    *(v42 + 9) = *&v50[9];
    v48 = v38;
    v49 = v39;
    *v50 = v40[0];
    *&v50[9] = *(v40 + 9);
    sub_188A3F29C(&v38, &v43, &qword_1EA934C40);
    sub_188A3F29C(&v38, &v43, &qword_1EA934C40);
    sub_188A3F5FC(v41, &qword_1EA934C40);
    sub_188CAF9D0(v36, &v51);
    sub_188A53994(v37, v35);
    v43 = v38;
    v44 = v39;
    v45[0] = v40[0];
    *(v45 + 9) = *(v40 + 9);
    sub_188A3F29C(v36, v34, &unk_1EA93F7F0);
    v13 = objc_allocWithZone(type metadata accessor for UIPointerHoverStyleDriver());
    v14 = sub_188CB0924(v35, &v43, v34);
    sub_188A3F5FC(v36, &unk_1EA93F7F0);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    v55 = v14;
    v15 = [v4 isEnabled];
    v54 = v15;
    v14[OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_isEnabled] = v15;
    v16 = *&v14[OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_pointerInteraction];
    if (v16)
    {
      [v16 setEnabled_];
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v4;
    }

    v53 = v17;
    swift_unknownObjectWeakAssign();
    v19 = v17;
    sub_188CAFA64();

    sub_188BE0600(v46, &v43);
    swift_beginAccess();
    sub_188BE0684(&v43, &v4[v8]);
    swift_endAccess();
  }

  sub_188A3F29C(&v4[v8], &v43, &qword_1EA940940);
  if (!*(&v44 + 1))
  {
    return sub_188A3F5FC(&v43, &qword_1EA940940);
  }

  sub_188BE0600(&v43, v46);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = OBJC_IVAR___UIHoverStyle_driverCoordinatorQueuedActions;
  swift_beginAccess();
  v22 = *&v4[v21];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v21] = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_188BE0760(0, v22[2] + 1, 1, v22);
    *&v4[v21] = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_188BE0760((v24 > 1), v25 + 1, 1, v22);
  }

  v22[2] = v25 + 1;
  v26 = &v22[2 * v25];
  v26[4] = sub_188BE0784;
  v26[5] = v20;
  *&v4[v21] = v22;
  swift_endAccess();
  v27 = OBJC_IVAR___UIHoverStyle_driverCoordinatorAccessLocked;
  if (v4[OBJC_IVAR___UIHoverStyle_driverCoordinatorAccessLocked])
  {
    return sub_188BE0808(v46);
  }

  v4[OBJC_IVAR___UIHoverStyle_driverCoordinatorAccessLocked] = 1;
  v29 = *&v4[v21];
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = MEMORY[0x1E69E7CC0];
    do
    {
      *&v4[v21] = v31;
      v32 = v29 + 40;
      do
      {
        v33 = *(v32 - 8);

        v33(v46);

        sub_188BE07AC(v46, &v43);
        swift_beginAccess();
        sub_188BE0684(&v43, &v4[v8]);
        swift_endAccess();
        v32 += 16;
        --v30;
      }

      while (v30);

      v29 = *&v4[v21];
      v30 = *(v29 + 16);
    }

    while (v30);
  }

  result = sub_188BE0808(v46);
  v4[v27] = 0;
  return result;
}

uint64_t sub_188BE05C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_5UIKit7UIShapeVSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_5UIKit14HoverStyleHostOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188BE0684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_188BE06F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188BE08C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938D50);
  result = sub_18A4A8458();
  v3 = result;
  v4 = 0;
  v23 = result;
  v24 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v22 = result + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = *(v24 + 56);
      v29 = *(*(v24 + 48) + 8 * v15);
      sub_188A53994(v16 + 40 * v15, v28);
      sub_188A53994(v28, &v25);
      v17 = v26;
      v18 = v27;
      __swift_mutable_project_boxed_opaque_existential_1(&v25, v26);
      (*(v18 + 136))(v17, v18);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      v3 = v23;
      *(v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(v23[6] + 8 * v15) = v29;
      result = sub_188A5EBAC(&v25, v23[7] + 40 * v15);
      v19 = v23[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v23[2] = v21;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_188BE0A88(uint64_t a1)
{
  result = *(*(a1 + 136) + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_pointerInteraction);
  if (result)
  {
    result = [result invalidate];
  }

  if (*(*(a1 + 144) + 16))
  {
    v3 = sub_188BE08C4(*(a1 + 144));

    *(a1 + 144) = v3;
  }

  return result;
}

void sub_188BE0B00()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong isPointerInteractionEnabled])
    {
      v2 = 1;
    }

    else
    {
      v2 = *(v0 + 112);
    }

    [v3 setPointerInteractionEnabled_];
  }
}

uint64_t sub_188BE0BB0(uint64_t a1)
{
  v2 = v1;
  sub_188CB15C8(a1, v25);
  v3 = *(v1 + 128);
  v29 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setPointerInteractionEnabled_];
  }

  sub_188A53994(v2, v24);
  __swift_assign_boxed_opaque_existential_1(v25, v24);
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    [v6 setPointerInteractionEnabled_];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  v8 = *(v2 + 56);
  v19 = *(v2 + 40);
  v20 = v8;
  v21[0] = *(v2 + 72);
  *(v21 + 9) = *(v2 + 81);
  v22[0] = v26;
  v22[1] = v27;
  v23[0] = v28[0];
  *(v23 + 9) = *(v28 + 9);
  sub_188A3F29C(&v19, v18, &qword_1EA934C40);
  sub_188A3F5FC(v22, &qword_1EA934C40);
  v26 = v19;
  v27 = v20;
  v28[0] = v21[0];
  *(v28 + 9) = *(v21 + 9);
  v9 = swift_unknownObjectWeakLoadStrong();
  v10 = [v9 pointerInteraction];

  [v10 invalidate];
  sub_188A3F29C(v2 + 104, v18, &unk_1EA93F7F0);
  sub_188CB1664(v18);
  sub_188CB15C8(v25, v18);
  sub_188A3F29C(v18, v15, &qword_1EA939218);
  if (v16)
  {
    v11 = swift_allocObject();
    sub_188CB1600(v15, v11 + 16);
    v12 = &off_1EFAD48F0;
    v13 = &type metadata for UIControlPointerHoverStyleDriver;
  }

  else
  {
    sub_188A3F5FC(v15, &qword_1EA939218);
    v11 = 0;
    v13 = 0;
    v12 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v11;
  v16 = v13;
  v17 = v12;
  sub_188CB18D0(v15, &type metadata for UIControlPointerHoverStyleDriver);
  sub_188A3F5FC(v18, &qword_1EA939218);
  return sub_188CB1E14(v25);
}

void UIRoundToScreenScale(void *a1)
{
  [a1 scale];
  if (v1 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }
}

void sub_188BE1190(void *a1, void *a2, uint64_t a3, CGFloat a4)
{
  [a1 bounds];
  [a2 convertRect:a1 fromMaskingCoordinateSpace:?];
  v12 = 0.0;
  if (a3 > 3)
  {
    if (a3 != 4)
    {
      if (a3 == 8)
      {
        v14 = v8;
        v15 = v9;
        v16 = v10;
        v17 = v11;
        v13 = CGRectGetWidth(*&v8) - a4;
        v18.origin.x = v14;
        v18.origin.y = v15;
        v18.size.width = v16;
        v18.size.height = v17;
        v12 = CGRectGetHeight(v18) - a4;
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v12 = CGRectGetHeight(*&v8) - a4;
LABEL_7:
    v13 = 0.0;
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    v13 = CGRectGetWidth(*&v8) - a4;
LABEL_10:
    [a2 bounds];
    [a2 convertRect:a1 toMaskingCoordinateSpace:?];
    v20.origin.x = v13;
    v20.origin.y = v12;
    v20.size.width = a4;
    v20.size.height = a4;
    CGRectIntersection(v19, v20);
    return;
  }

LABEL_11:
  sub_18A4A8398();
  __break(1u);
}

id sub_188BE1408()
{
  result = sub_188BE1428();
  qword_1EA9307D0 = result;
  return result;
}

id sub_188BE1428()
{
  v0 = [objc_allocWithZone(_UIButtonConfigurationStyleBehaviors) initWithStyle_];
  v1 = sub_18A4A7258();
  [v0 setStyleDescription_];

  v2 = [objc_opt_self() grayBehaviors];
  if (_UISolariumEnabled())
  {
    v12 = sub_1891C20A4;
    v13 = 0;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_188BE17C0;
    v11 = &block_descriptor_106_0;
    v3 = _Block_copy(&v8);
    [v0 setCalculateForegroundColor_];
    _Block_release(v3);
    v12 = sub_1891C23A4;
    v13 = 0;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1891C2404;
    v11 = &block_descriptor_109_1;
    v4 = _Block_copy(&v8);
    [v0 setCalculateBackgroundColor_];
    _Block_release(v4);
    v12 = sub_1891C2498;
    v13 = 0;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1891C24A0;
    v11 = &block_descriptor_112_3;
    v5 = _Block_copy(&v8);
    [v0 setCalculateMaterial_];
    _Block_release(v5);
    [v0 setCornerStyle_];
    v12 = sub_188B230BC;
    v13 = 0;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_188BE1F70;
    v11 = &block_descriptor_115_0;
    v6 = _Block_copy(&v8);
    [v0 setCalculateMonochromaticTreatment_];
    _Block_release(v6);
  }

  else
  {

    return v2;
  }

  return v0;
}

id sub_188BE17C0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);

  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = v9(a2, a3, a4, v12);

  return v13;
}

id sub_188BE1870()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

id sub_188BE18BC()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

id sub_188BE1900(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  sub_188AFE79C(a1, v8);
  sub_188AD8C44(v8, v11, type metadata accessor for _Glass._GlassVariant);
  v12 = sub_18A4A2D68();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - v17;
  if ((a2 - 1) > 3)
  {
    v20 = MEMORY[0x1E6999C48];
  }

  else
  {
    v20 = qword_1E70F1930[a2 - 1];
  }

  (*(v13 + 104))(&v23 - v17, *v20, v12, v18);
  (*(v13 + 32))(v15, v19, v12);
  sub_18A4A2E68();
  sub_188B0CD70(v8, type metadata accessor for _Glass._GlassVariant);
  v26 = type metadata accessor for _Glass(0);
  v27 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v25);
  _Glass.init(_:smoothness:)(v11, boxed_opaque_existential_0, 0.0);
  sub_188A5EBAC(&v25, v3 + OBJC_IVAR____UIViewGlass__underlyingMaterial);
  v24.receiver = v3;
  v24.super_class = _UIViewGlass;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t sub_188BE1B94(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
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

  sub_188A3F5FC(v10, &qword_1EA934050);
  return v8 & 1;
}

BOOL sub_188BE1C2C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v19 - v4;
  v6 = type metadata accessor for _Glass(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v19 - v11);
  sub_188A3F29C(a1, v20, &qword_1EA934050);
  if (!v21)
  {
    v14 = &qword_1EA934050;
    v15 = v20;
LABEL_9:
    sub_188A3F5FC(v15, v14);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E40);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    sub_18901EB8C(v20);
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
      v13 = swift_dynamicCast();
      (*(v7 + 56))(v5, v13 ^ 1u, 1, v6);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        sub_188B0D6AC(v5, v12, type metadata accessor for _Glass);
        v18 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
        swift_beginAccess();
        sub_188A53994(v1 + v18, v20);
        swift_dynamicCast();
        v16 = _s5UIKit6_GlassV2eeoiySbAC_ACtFZ_0(v9, v12);
        swift_unknownObjectRelease();
        sub_188B0CD70(v12, type metadata accessor for _Glass);
        sub_188B0CD70(v9, type metadata accessor for _Glass);
        return v16;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      sub_188A3F5FC(v20, &unk_1EA93C9A0);
      (*(v7 + 56))(v5, 1, 1, v6);
    }

    v14 = &unk_1EA93BA10;
    v15 = v5;
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_188BE1F70(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  v8 = v5(a2, v7);

  return v8;
}

uint64_t UICollectionView.CellRegistration.init(handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15[4] = sub_188CCEEBC;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_188CCDED4;
  v15[3] = &block_descriptor_48;
  v12 = _Block_copy(v15);
  v13 = [objc_opt_self() registrationWithCellClass:ObjCClassFromMetadata configurationHandler:v12];
  _Block_release(v12);

  *a5 = v13;
  return result;
}

uint64_t sub_188BE22A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188BE22F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *std::vector<long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(result, a2);
    }

    std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
}

double UIView._appIntentsIntelligenceProvider.getter@<D0>(_OWORD *a1@<X8>)
{
  if ([v1 _internalAppIntentsIntelligenceProvider])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    sub_188A3F5FC(v6, &qword_1EA934050);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934058);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t _UIBarsUseDesktopNavigationBar(void *a1)
{
  v1 = [a1 userInterfaceIdiom];
  v2 = 0;
  if (v1 <= 6 && ((1 << v1) & 0x63) != 0)
  {
    if (qword_1ED49BF98 != -1)
    {
      dispatch_once(&qword_1ED49BF98, &__block_literal_global_98_1);
    }

    v2 = byte_1ED49BF64;
  }

  return v2 & 1;
}

BOOL _UINavigationItemShouldIntegrateSearchBarInNavigationBarForTraits(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v9 = +[UITraitCollection _fallbackTraitCollection];
    v10 = _UIBarsUseDesktopNavigationBar(v9);

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if ((_UIBarsUseDesktopNavigationBar(v4) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  v6 = [v3 preferredSearchBarPlacement];
  v7 = 1;
  if (v6 != 1 && v6 != 4)
  {
    if (v6 == 3)
    {
      v8 = [v3 searchController];
      if (![v8 _isSearchTextFieldBorrowed])
      {
        v7 = [v5 horizontalSizeClass] == 2;
      }
    }

    else
    {
      v7 = 0;
      if (v5 && !v6)
      {
        v7 = [v5 horizontalSizeClass] == 2;
      }
    }
  }

LABEL_11:

  return v7;
}

uint64_t sub_188BE3534(void *a1, void *a2)
{
  v3 = v2;
  v6 = [a1 _stackEntry];
  v7 = a1;
  v8 = &selRef_minimumContainerInsets;
  v9 = [v3 navigationBar];
  v10 = [v9 _effectiveDelegate];

  if (v10)
  {
    if (([v10 respondsToSelector_] & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    v11 = [v10 _effectiveSearchControllerForSearchBarGivenTopNavigationItem_];
    swift_unknownObjectRelease();

    if (!v11)
    {
LABEL_10:
      v11 = 0;
      v83 = 0;
      if (!a2)
      {
        goto LABEL_70;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v11 = [v7 _searchControllerIfAllowed];

    if (!v11)
    {
      goto LABEL_10;
    }
  }

  if (!a2 || (sub_188A34624(0, &qword_1EA930B40), v12 = v11, v13 = a2, v14 = sub_18A4A7C88(), v12, v13, v8 = &selRef_minimumContainerInsets, v83 = 0, (v14 & 1) == 0))
  {
LABEL_11:
    if (v6 && ([v6 isSearchActive] & 1) != 0)
    {
      goto LABEL_18;
    }

    if (!a2)
    {
      v27 = 0;
      v83 = 0;
      v8 = &selRef_minimumContainerInsets;
      if (v11)
      {
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (![a2 isActive])
    {
      v83 = 0;
      v28 = a2;
      v8 = &selRef_minimumContainerInsets;
      goto LABEL_32;
    }

    if (v6)
    {
LABEL_18:
      if ([v6 isSearchActive] && a2 && (objc_msgSend(a2, sel_isActive) & 1) != 0)
      {
        goto LABEL_20;
      }
    }

    v15 = sub_18A4A7258();
    __UIKIT_SOFT_ASSERT_FAIL(v15);

    if (a2)
    {
LABEL_20:
      v16 = [a2 searchBar];
      v17 = [v16 _isHostedInlineByNavigationBar];

      if ((v17 & 1) == 0)
      {
        v18 = [a2 searchBar];
        v19 = [v18 window];

        if (v19)
        {

          aBlock = 0;
          v85 = 0xE000000000000000;
          sub_18A4A80E8();
          MEMORY[0x18CFE22D0](0xD0000000000000A5, 0x800000018A6A5EB0);
          if (v6)
          {
            v20 = [v6 item];
            v21 = a2;
            v22 = v7;
            v23 = [v20 description];

            v24 = sub_18A4A7288();
            v26 = v25;

            v7 = v22;
            a2 = v21;
          }

          else
          {
            v26 = 0xE300000000000000;
            v24 = 7104878;
          }

          MEMORY[0x18CFE22D0](v24, v26);

          MEMORY[0x18CFE22D0](0xD000000000000014, 0x800000018A6A5F60);
          v29 = [a2 description];
          v30 = sub_18A4A7288();
          v32 = v31;

          MEMORY[0x18CFE22D0](v30, v32);

          v33 = sub_18A4A7258();

          __UIKIT_SOFT_ASSERT_FAIL(v33);
        }
      }
    }

    v34 = objc_opt_self();
    v35 = swift_allocObject();
    *(v35 + 16) = a2;
    *(v35 + 24) = v6;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1890DAB10;
    *(v36 + 24) = v35;
    v88 = sub_188A4B574;
    v89 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v85 = 1107296256;
    v86 = sub_188A4A968;
    v87 = &block_descriptor_137;
    v37 = _Block_copy(&aBlock);
    v28 = a2;

    v38 = v6;

    [v34 performWithoutAnimation_];
    _Block_release(v37);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if (v34)
    {
      __break(1u);
      return result;
    }

    v83 = sub_1890DAB10;
    if (!a2)
    {
      v27 = 0;
      v8 = &selRef_minimumContainerInsets;
      a2 = 0;
      if (v11)
      {
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    v8 = &selRef_minimumContainerInsets;
LABEL_32:
    v40 = [v28 searchBar];
    if (!v40)
    {
      v27 = 0;
      if (v11)
      {
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    v41 = v7;
    v27 = v40;
    v42 = [v3 v8[411]];
    v43 = [v27 isDescendantOfView_];

    v44 = &selRef__effectiveDistance;
    if (v43 & 1) != 0 || (v49 = [v27 _existingSearchIconBarButtonItem]) != 0 && (v50 = v49, v51 = objc_msgSend(v49, sel_view), v50, v51) && (v52 = objc_msgSend(v3, v8[411]), v53 = objc_msgSend(v51, sel_isDescendantOfView_, v52), v51, v52, v44 = &selRef__effectiveDistance, (v53))
    {
      [v27 _resetIfNecessaryForNavigationBarHosting_];
      [v27 setMinimumContentSizeCategory_];

      [v27 setMaximumContentSizeCategory_];
      [v27 removeFromSuperview];
      v45 = [v27 v44[495]];
      if (!v45 || (v46 = v45, v47 = [v45 view], v46, !v47))
      {
LABEL_46:

        v7 = v41;
        if (v11)
        {
LABEL_47:
          v54 = [v11 searchBar];
          v48 = v54;
          if (v54)
          {
            [v54 _resetIfNecessaryForNavigationBarHosting_];
          }

          goto LABEL_49;
        }

LABEL_40:
        v48 = 0;
LABEL_49:
        v55 = [v3 stack];
        v56 = [v55 topItem];

        if (v56)
        {
          sub_188A34624(0, &unk_1ED48CFF8);
          v82 = v7;
          v57 = v7;
          v58 = sub_18A4A7C88();

          if ((v58 & 1) == 0)
          {
            goto LABEL_68;
          }

          v59 = [v3 v8[411]];
          v60 = [v59 _effectiveDelegate];

          if (v60)
          {
            if ([v60 respondsToSelector_])
            {
              swift_unknownObjectRetain();
              v61 = [v3 navigationBar];
              [v60 _navigationBar_topItemUpdatedSearchController_];

              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            v8 = &selRef_minimumContainerInsets;
          }

          v62 = v57;
          v63 = [v3 v8[411]];
          v64 = [v63 _effectiveDelegate];

          if (v64)
          {
            if (([v64 respondsToSelector_] & 1) == 0)
            {

              swift_unknownObjectRelease();
LABEL_69:
              v7 = v82;
              if (!v11)
              {
                goto LABEL_70;
              }

LABEL_61:
              v66 = v11;
              v67 = [v66 searchBar];
              if ([v67 _isHostedByNavigationBar])
              {
                v68 = [v7 _hasIntegratedSearchBarInNavigationBar];
                [v67 _setHostedInlineByNavigationBar_];
                if ((v68 & 1) == 0)
                {
                  [v67 _setHostedInlineByToolbar_];
                }
              }

              sub_188AE4B20(v6, 0);
              if (v6)
              {
                v69 = v6;
                [v69 setSearchActive_];
              }

              goto LABEL_76;
            }

            v65 = [v64 _shouldDisplaySearchBarInlineForEffectiveSearchControllerGivenTopNavigationItem_traitCollection_];
            swift_unknownObjectRelease();

            if ((v65 & 1) == 0)
            {
LABEL_68:

              goto LABEL_69;
            }
          }

          else
          {
            v70 = [v62 _hasIntegratedSearchBarInNavigationBar];

            if ((v70 & 1) == 0)
            {
              goto LABEL_68;
            }
          }

          v71 = [v3 v8[411]];
          [v71 setNeedsLayout];

          goto LABEL_68;
        }

        goto LABEL_60;
      }

      [v47 removeFromSuperview];
    }

    else
    {

      v47 = v27;
    }

    goto LABEL_46;
  }

LABEL_60:
  if (v11)
  {
    goto LABEL_61;
  }

LABEL_70:
  if (!v6)
  {
    v11 = 0;
    goto LABEL_77;
  }

  v72 = v6;
  v73 = [(_UINavigationBarItemStackEntry *)v72 _typedStorage];
  v74 = sub_18901F250();

  if (v74)
  {
    sub_188B39AB4(0);
  }

  v66 = v72;
  if ([v66 isSearchActive])
  {
    sub_18A4A29E8();
  }

  v67 = [(_UINavigationBarItemStackEntry *)v66 _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C6C0);
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  v76 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *&v67[v76];
  *&v67[v76] = 0x8000000000000000;
  sub_188A40430(v75, &_s15SearchLayoutKeyVN, isUniquelyReferenced_nonNull_native);
  *&v67[v76] = v90;
  swift_endAccess();
  v11 = 0;
LABEL_76:

LABEL_77:
  v78 = [v3 v8[411]];
  [v78 setNeedsLayout];

  v79 = [v3 v8[411]];
  v80 = [v79 _privateDelegate];

  if (v80)
  {
    if ([v80 respondsToSelector_])
    {
      [v80 _navigationItemDidUpdateSearchController_oldSearchController_];
    }

    swift_unknownObjectRelease();
  }

  v81 = [v3 v8[411]];
  [v81 _accessibility_navigationBarContentsDidChange];

  return sub_188A55B8C(v83);
}

uint64_t sub_188BE416C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id _batteryLog()
{
  if (qword_1ED49E888 != -1)
  {
    dispatch_once(&qword_1ED49E888, &__block_literal_global_455);
  }

  v1 = qword_1ED49E880;

  return v1;
}

void _updateBatteryStatusBasedOnProperties(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = +[UIDevice currentDevice];
  if ([v1 count])
  {
    v3 = _batteryLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138543362;
      v17 = v1;
      _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "Updating battery data based on properties: %{public}@", &v16, 0xCu);
    }

    v4 = [v1 objectForKeyedSubscript:@"CurrentCapacity"];
    v5 = [v4 intValue];

    v6 = [v1 objectForKeyedSubscript:@"MaxCapacity"];
    v7 = [v6 intValue];

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = 100;
    }

    *&v8 = v5 / v9;
    [v2 _setBatteryLevel:v8];
    v10 = [v1 objectForKeyedSubscript:@"ExternalConnected"];
    v11 = [v10 BOOLValue];

    if (v11)
    {
      v12 = [v1 objectForKeyedSubscript:@"FullyCharged"];
      v13 = [v12 BOOLValue];

      if (v13)
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v15 = v2;
    }

    else
    {
      v15 = v2;
      v14 = 1;
    }
  }

  else
  {
    v15 = v2;
    v14 = 0;
  }

  [v15 _setBatteryState:v14];
  [UIApp batteryStatusDidChange:v1];
}

void *_UIInternalContainerClassesForContainerClasses(void *a1, void **a2, int a3)
{
  v5 = [MEMORY[0x1E695DF70] array];
  do
  {
    v6 = _UIAppearanceInternalContainerClassForContainer(a1);
    if (v6)
    {
      v7 = v6;
      if (a3)
      {
        v7 = NSStringFromClass(v6);
      }

      [v5 addObject:v7];
    }

    v8 = a2++;
    a1 = *v8;
  }

  while (*v8);
  return v5;
}

id _colorsByThemeKeysystemGray3Color()
{
  v11[4] = *MEMORY[0x1E69E9840];
  v0 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v10[0] = v0;
  v1 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
  v11[0] = v1;
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v10[1] = v2;
  v3 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.682352941 green:0.682352941 blue:0.698039216 alpha:1.0];
  v11[1] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v10[2] = v4;
  v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.282352941 green:0.282352941 blue:0.290196078 alpha:1.0];
  v11[2] = v5;
  v6 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v10[3] = v6;
  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.329411765 green:0.329411765 blue:0.337254902 alpha:1.0];
  v11[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

void _supplementaryColumnWidthSupportCheck(void *a1)
{
  v4 = a1;
  if ([v4[124] style] != 2)
  {
    v1 = MEMORY[0x1E695DF30];
    v2 = *MEMORY[0x1E695D940];
    v3 = _UISplitViewControllerStyleDescription([v4[124] style]);
    [v1 raise:v2 format:{@"UISplitViewController supplementaryColumnWidth properties unsupported for style = %@", v3}];
  }
}

uint64_t sub_188BE7828(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C200);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v20);
      result = sub_18A4A88E8();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_188BE88E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [*(v2 + *a1) snapshot];
  type metadata accessor for NSDiffableDataSourceSnapshot.ImplWrapper();
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

void std::__hash_table<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

id UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = swift_allocObject();
  v9 = *((v7 & v6) + 0x50);
  v8[2] = v9;
  v10 = *((v7 & v6) + 0x58);
  v8[3] = v10;
  v11 = *((v7 & v6) + 0x60);
  v8[4] = v11;
  v12 = *((v7 & v6) + 0x68);
  v8[5] = v12;
  v8[6] = a2;
  v8[7] = a3;
  v13 = objc_allocWithZone(__UIDiffableDataSource);
  v24 = sub_188C784C0;
  v25 = v8;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v23 = sub_188C79B34;
  *(&v23 + 1) = &block_descriptor_28_2;
  v14 = _Block_copy(&aBlock);

  v15 = [v13 initWithCollectionView:a1 cellProvider:v14];
  _Block_release(v14);

  *(v3 + qword_1EA940A40) = v15;
  *&v16 = v9;
  *(&v16 + 1) = v10;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  aBlock = v16;
  v23 = v17;
  v21.receiver = v3;
  v21.super_class = type metadata accessor for UICollectionViewDiffableDataSource();
  v18 = objc_msgSendSuper2(&v21, sel_init);
  [a1 setDataSource_];

  return v18;
}

uint64_t sub_188BE8BE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_188BE8C1C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  LOBYTE(a3) = sub_188BE8C58(a3);

  return a3 & 1;
}

BOOL sub_188BE8C70(uint64_t a1, void (*a2)(void, _OWORD *))
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v10[0] = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v10[1] = v4;
  a2(0, v10);
  v5 = [swift_getObjCClassFromMetadata() instanceMethodForSelector_];
  v6 = [v2 methodForSelector_];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  return !v7 && v5 != v6;
}

id sub_188BE8D60(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(v2 + qword_1EA940A40);
    v8[4] = a1;
    v8[5] = a2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_188CD6BB4;
    v8[3] = &block_descriptor_19_10;
    v5 = _Block_copy(v8);

    [v3 setSupplementaryViewProvider_];
    _Block_release(v5);
    return sub_188A55B8C(a1);
  }

  else
  {
    v7 = *(v2 + qword_1EA940A40);

    return [v7 setSupplementaryViewProvider_];
  }
}

id sub_188BE8EA8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_188BE8EF8(v4);

  return v6;
}

uint64_t NSDiffableDataSourceSnapshot.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NSDiffableDataSourceSnapshot.ImplWrapper();
  result = sub_188BE9078();
  *a1 = result;
  return result;
}

uint64_t sub_188BE9078()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(off_1E70ECC70) init];
  return v0;
}

uint64_t sub_188BE90C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_188BE9104(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_188BE91B0();
  sub_18A4A82C8();
  v5 = sub_18A4A7518();

  [v4 *a3];
}

uint64_t sub_188BE91B0()
{
  type metadata accessor for NSDiffableDataSourceSnapshot.ImplWrapper();
  v1 = sub_18A4A8678();
  v2 = *v0;
  if (v1)
  {
    return *(v2 + 16);
  }

  [*(v2 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA92FD70);
  swift_dynamicCast();
  v3 = v6;
  v4 = swift_allocObject();
  *(v4 + 16) = v6;

  *v0 = v4;
  return v3;
}

uint64_t sub_188BE92A4(uint64_t a1, SEL *a2)
{
  v3 = [*(*v2 + 16) *a2];
  sub_18A4A7548();

  v4 = sub_18A4A82C8();

  return v4;
}

void sub_188BE9320(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_188BE91B0();
  sub_18A4A82C8();
  v5 = sub_18A4A7518();

  [v4 *a3];
}

uint64_t NSDiffableDataSourceSnapshot.appendItems(_:toSection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = sub_18A4A7D38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = sub_188BE91B0();
  sub_18A4A82C8();
  v10 = sub_18A4A7518();

  (*(v6 + 16))(v8, a2, v5);
  v11 = *(v4 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v4) != 1)
  {
    v12 = sub_18A4A86A8();
    (*(v11 + 8))(v8, v4);
  }

  [v9 appendItemsWithIdentifiers:v10 intoSectionWithIdentifier:v12];

  return swift_unknownObjectRelease();
}

void sub_188BE9714(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = *MEMORY[0x1E69E7D40] & *v6;
  v12 = *(v6 + *a5);
  v13 = *a1;
  v14 = *(v11 + 96);
  v19 = *(v11 + 80);
  v20 = v14;
  type metadata accessor for NSDiffableDataSourceSnapshot();
  v15 = *(v13 + 16);
  if (a3)
  {
    v21 = a3;
    v22 = a4;
    *&v19 = MEMORY[0x1E69E9820];
    *(&v19 + 1) = 1107296256;
    *&v20 = sub_188A4A8F0;
    *(&v20 + 1) = a6;
    v16 = _Block_copy(&v19);
    v17 = v15;
    sub_188A52E38(a3);
  }

  else
  {
    v18 = v15;
    v16 = 0;
  }

  [v12 applyDifferencesFromSnapshot:v15 animatingDifferences:a2 & 1 completion:{v16, v19, v20}];
  _Block_release(v16);
}

uint64_t sub_188BEAF88(uint64_t a1, SEL *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19[-v5];
  v7 = sub_18A4A2588();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19[-v12];
  sub_188A3F29C(a1, v6, &qword_1EA935C40);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_188A3F5FC(v6, &qword_1EA935C40);
    [sub_188BC666C() *a2];
    return sub_188A3F5FC(a1, &qword_1EA935C40);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v15 = sub_188BC666C();
    sub_188A34624(0, &qword_1EA930C60);
    (*(v8 + 16))(v10, v13, v7);
    v16 = qword_1ED48BE20;
    v17 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_188BEB2A0(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
    v18 = sub_18A4A7AB8();
    [v17 *a2];

    sub_188A3F5FC(a1, &qword_1EA935C40);
    return (*(v8 + 8))(v13, v7);
  }
}

uint64_t sub_188BEB2A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188BEB2E8(unint64_t *a1, void (*a2)(uint64_t))
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

void UIButton.Configuration.baseForegroundColor.setter(void *a1)
{
  sub_188BC6788(a1, &selRef_setBaseForegroundColor_);
}

id sub_188BEB7C8()
{
  result = sub_188BEB7E8();
  qword_1EA9304D8 = result;
  return result;
}

id sub_188BEB7E8()
{
  v0 = [objc_allocWithZone(_UIButtonConfigurationStyleBehaviors) initWithStyle_];
  v1 = sub_18A4A7258();
  [v0 setStyleDescription_];

  if (_UISolariumEnabled())
  {
    v11 = sub_1891C2CB8;
    v12 = 0;
    v7 = MEMORY[0x1E69E9820];
    v8 = 1107296256;
    v9 = sub_188BE17C0;
    v10 = &block_descriptor_62_4;
    v2 = _Block_copy(&v7);
    [v0 setCalculateForegroundColor_];
    _Block_release(v2);
    v11 = sub_1891C41A0;
    v12 = 0;
    v7 = MEMORY[0x1E69E9820];
    v8 = 1107296256;
    v9 = sub_1891C2404;
    v10 = &block_descriptor_65_2;
    v3 = _Block_copy(&v7);
    [v0 setCalculateBackgroundColor_];
    _Block_release(v3);
    v11 = sub_1891C2DDC;
    v12 = 0;
    v7 = MEMORY[0x1E69E9820];
    v8 = 1107296256;
    v9 = sub_1891C24A0;
    v10 = &block_descriptor_68_3;
    v4 = _Block_copy(&v7);
    [v0 setCalculateMaterial_];
    _Block_release(v4);
    [v0 setCornerStyle_];
    [v0 setContentMaterialRenderingMode_];
    return v0;
  }

  else
  {
    v6 = [objc_opt_self() fillBehaviors];

    return v6;
  }
}

uint64_t sub_188BEBA60(void *a1)
{
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(v1 + v6, &v12);
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  v8 = *v5;
  *v5 = a1;

  v13 = v3;
  v14 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  sub_188B0D6AC(v5, boxed_opaque_existential_0, type metadata accessor for _Glass);

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + v6);
  sub_188A5EBAC(&v12, v1 + v6);
  return swift_endAccess();
}

void sub_188BEBE14(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_requestedContentSize];
  if (!v3)
  {
    if (*&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__barMetrics] == 1)
    {
      v3 = 1;
    }

    else
    {
      v4 = [v1 traitCollection];
      v5 = [v4 _presentationSemanticContext];

      if (v5 == 2)
      {
        v3 = 3;
      }

      else
      {
        v3 = 2;
      }
    }
  }

  v6 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost];
  if (v6 && (v7 = *(v6 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView)) != 0 && (v3 = [v7 _preferredContentSizeForSize_]) == 0)
  {
    sub_18A4A8398();
    __break(1u);
  }

  else if (v3 != *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedContentSize] || (a1 & 1) != 0)
  {
    *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedContentSize] = v3;

    sub_188AEA3E4();
  }
}

uint64_t sub_188BEBF70()
{
  result = sub_188BEBF94();
  byte_1EA930701 = result & 1;
  return result;
}

uint64_t sub_188BEBF94()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_18A4A7258();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v12 = v14;
  v13 = v15;
  if (*(&v15 + 1))
  {
    sub_188A34624(0, &qword_1ED48FD80);
    if (swift_dynamicCast())
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_188A3F5FC(&v12, &qword_1EA934050);
  }

  result = _UIKitPreferencesOnce();
  if (result)
  {
    v4 = result;
    v5 = sub_18A4A70A8();

    v10 = 0xD000000000000020;
    v11 = 0x800000018A6901A0;
    sub_18A4A8048();
    if (*(v5 + 16) && (v6 = sub_188BBA050(&v12), (v7 & 1) != 0))
    {
      sub_188A55598(*(v5 + 56) + 32 * v6, &v14);
      sub_188BBA15C(&v12);

      sub_188A34624(0, &qword_1ED48FD80);
      if (swift_dynamicCast())
      {
LABEL_12:
        v8 = v10;
        v9 = [v10 BOOLValue];

        return v9;
      }
    }

    else
    {

      sub_188BBA15C(&v12);
    }

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_188BEC1F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_toolbarStyle);
  v4 = v2;
  v5 = v4;
  if ((!v3 || [v4 _hideNavigationBarCenterBarButtons]) && objc_msgSend(v5, sel__hideNavigationBarBackButton) && objc_msgSend(v5, sel__hideNavigationBarStandardTitle) && objc_msgSend(v5, sel__hideNavigationBarLeadingBarButtons))
  {
    v6 = [v5 _hideNavigationBarTrailingBarButtons];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_188BEC59C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_188BEC5EC(v4);

  return v6;
}

id UITableViewDiffableDataSource.init(tableView:cellProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = swift_allocObject();
  v9 = *((v7 & v6) + 0x50);
  v8[2] = v9;
  v10 = *((v7 & v6) + 0x58);
  v8[3] = v10;
  v11 = *((v7 & v6) + 0x60);
  v8[4] = v11;
  v12 = *((v7 & v6) + 0x68);
  v8[5] = v12;
  v8[6] = a2;
  v8[7] = a3;
  v13 = objc_allocWithZone(__UIDiffableDataSource);
  v24 = sub_188C7CF94;
  v25 = v8;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v23 = sub_188C79B34;
  *(&v23 + 1) = &block_descriptor_40_5;
  v14 = _Block_copy(&aBlock);

  v15 = [v13 initWithTableView:a1 cellProvider:v14];
  _Block_release(v14);

  *(v3 + qword_1EA940A48) = v15;
  *&v16 = v9;
  *(&v16 + 1) = v10;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  aBlock = v16;
  v23 = v17;
  v21.receiver = v3;
  v21.super_class = type metadata accessor for UITableViewDiffableDataSource();
  v18 = objc_msgSendSuper2(&v21, sel_init);
  [a1 setDataSource_];

  return v18;
}

void sub_188BEC848(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = *MEMORY[0x1E69E7D40] & *v5;
  v10 = *(v5 + *a4);
  v11 = *a1;
  v12 = *(v9 + 96);
  v17 = *(v9 + 80);
  v18 = v12;
  type metadata accessor for NSDiffableDataSourceSnapshot();
  v13 = *(v11 + 16);
  if (a2)
  {
    v19 = a2;
    v20 = a3;
    *&v17 = MEMORY[0x1E69E9820];
    *(&v17 + 1) = 1107296256;
    *&v18 = sub_188A4A8F0;
    *(&v18 + 1) = a5;
    v14 = _Block_copy(&v17);
    v15 = v13;
    sub_188A52E38(a2);
  }

  else
  {
    v16 = v13;
    v14 = 0;
  }

  [v10 reloadFromSnapshot:v13 completion:{v14, v17, v18}];
  _Block_release(v14);
}

uint64_t sub_188BEC97C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  LOBYTE(a3) = sub_188BEC81C(a3);

  return a3 & 1;
}

uint64_t sub_188BECA14(void *a1, unint64_t *a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(uint64_t, id))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v9 = *v5;
    }

    else
    {
      v9 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = a1;
    v11 = sub_18A4A7FC8();

    if (v11)
    {
      v12 = a5(v9, v10);

      return v12;
    }

    return 0;
  }

  v15 = v5;
  sub_188A34624(0, a2);
  v16 = sub_18A4A7C78();
  v17 = -1 << *(v7 + 32);
  v18 = v16 & ~v17;
  if (((*(v7 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    return 0;
  }

  v19 = ~v17;
  while (1)
  {
    v20 = *(*(v7 + 48) + 8 * v18);
    v21 = sub_18A4A7C88();

    if (v21)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v7 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v15;
  v25 = *v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v23 = v25;
  }

  v24 = *(*(v23 + 48) + 8 * v18);
  sub_188BECBE8(v18);
  result = v24;
  *v15 = v25;
  return result;
}

unint64_t sub_188BECBE8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_18A4A7ED8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_18A4A7C78();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}