uint64_t sub_188B51B4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188B51B88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_188B51D40(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v10, sel__traitCollectionForChildEnvironment_, a1);
  v9[3] = swift_getObjectType();
  v9[0] = a1;
  swift_unknownObjectRetain();
  v4 = v3;
  v5 = sub_188B51E24(v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  if (v5)
  {
    if (v4)
    {
      v6 = v5;
      v7 = [(UITraitCollection *)v4 _traitCollectionByApplyingOverrides:v6 defaultValueOverrides:0];

      return v7;
    }

    else
    {
    }
  }

  else
  {
  }

  return v4;
}

id sub_188B51E24(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleNavigationBarTraits);
      if (v4)
      {
        sub_188A55598(a1, v10);
        v5 = v3;
        v6 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936348);
        if (!swift_dynamicCast())
        {

          return 0;
        }

        swift_unknownObjectRelease();
        if (v9 == v5)
        {
          v8 = [v5 _traitCollectionOverridesForNavigationBarTraitCollection_];

          return v8;
        }
      }
    }
  }

  return 0;
}

void sub_188B51F44(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_11;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v3 = sub_188E49AA8(0, a1);
        goto LABEL_7;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_11:
      if (!sub_18A4A7F68())
      {
        return;
      }
    }

    v3 = *(a1 + 32);
LABEL_7:
    v4 = v3;
    [v3 _setOwner_];
    v5 = [v4 representativeItem];
    if (v5)
    {
      v6 = v5;
      [v5 _setViewOwner_];
    }

    [v4 _items];
    sub_188A34624(0, &qword_1ED48E8C0);
    sub_18A4A7528();
    __break(1u);
  }
}

char *sub_188B5215C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void sub_188B522E8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_188B52298(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_188FA6560();
      v8 = v16;
      goto LABEL_8;
    }

    sub_188B48DD4(v13, a3 & 1);
    v8 = sub_188B52298(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_188A34624(0, &unk_1ED48DBD0);
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = *(v18 + 56);
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    sub_188A3F9DC(v8, a2, a1, v18);

    v21 = a2;
  }
}

uint64_t sub_188B52458(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, _BYTE *a7, uint64_t *a8)
{
  v53 = a8;
  v54 = a2;
  v11 = a1;
  v67 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_40:
    v40 = a7;
    v41 = sub_18A4A7F68();
    a7 = v40;
    v12 = v41;
    if (v41)
    {
      goto LABEL_3;
    }

LABEL_41:
    v39 = MEMORY[0x1E69E7CC0];
LABEL_42:
    v42 = v53;
    v43 = *v53;

    result = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v43;
    if ((result & 1) == 0)
    {
      result = sub_188B5227C(0, *(v43 + 16) + 1, 1, v43);
      v43 = result;
      *v42 = result;
    }

    v46 = *(v43 + 16);
    v45 = *(v43 + 24);
    if (v46 >= v45 >> 1)
    {
      result = sub_188B5227C((v45 > 1), v46 + 1, 1, v43);
      v43 = result;
      *v42 = result;
    }

    *(v43 + 16) = v46 + 1;
    v47 = (v43 + 24 * v46);
    v48 = v54;
    v47[4] = v39;
    v47[5] = v48;
    v47[6] = a3;
    return result;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_41;
  }

LABEL_3:
  v55 = a7;
  v52 = a3;
  a3 = 0;
  v64 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedTrailingGroups;
  v57 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedLeadingGroups;
  v63 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupLayoutMap;
  v62 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_forceFixedSpacing;
  v65 = v11 & 0xC000000000000001;
  v61 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics;
  v56 = v11 & 0xFFFFFFFFFFFFFF8;
  v60 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_supportsOverflow;
  v59 = v11;
  v58 = v12;
  while (1)
  {
    if (v65)
    {
      v15 = sub_188E49AA8(a3, v11);
    }

    else
    {
      if (a3 >= *(v56 + 16))
      {
        goto LABEL_39;
      }

      v15 = *(v11 + 8 * a3 + 32);
    }

    v14 = v15;
    v16 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v17 = *(a5 + v64);
    v66[0] = v15;
    MEMORY[0x1EEE9AC00](v15);
    v50 = v66;

    v18 = sub_18919A248(sub_188B48DB8, v49, v17);

    if (v18)
    {
      v20 = 1;
    }

    else
    {
      v21 = *(a5 + v57);
      v66[0] = v14;
      MEMORY[0x1EEE9AC00](v19);
      v50 = v66;

      v20 = sub_18919A248(sub_18907CFBC, v49, v21);
    }

    [v14 _sendPrepareForLayout];
    v22 = v63;
    swift_beginAccess();
    v23 = sub_188B5242C(v14, *(a5 + v22));
    swift_endAccess();
    if (!v23)
    {
      v23 = sub_188B52C64(v14);
    }

    v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isFixed] = v20 & 1;
    v24 = *(a5 + v62);
    v25 = v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_suppressCustomSpacing];
    v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_suppressCustomSpacing] = v24;
    if (v24 != v25 && v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty] != 1)
    {
      v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty] = 1;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v27 = Strong;
        sub_18907A694();
      }
    }

    v28 = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 80];
    v68[4] = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 64];
    v68[5] = v28;
    v68[6] = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 96];
    v69 = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 112];
    v29 = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 16];
    v68[0] = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics];
    v68[1] = v29;
    v30 = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 48];
    v68[2] = *&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 32];
    v68[3] = v30;
    memmove(&v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics], (a5 + v61), 0x72uLL);
    sub_188B49604(v68);
    if ((*(a5 + v60) & 1) == 0)
    {
      v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__compact] = 0;
      v23[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__spilled] = 0;
    }

    v31 = *a6;
    if ((*a6 & 0xC000000000000001) != 0)
    {
      if (v31 < 0)
      {
        v11 = *a6;
      }

      else
      {
        v11 = v31 & 0xFFFFFFFFFFFFFF8;
      }

      v32 = v14;
      v33 = v23;
      v34 = sub_18A4A7F68();
      if (__OFADD__(v34, 1))
      {
        goto LABEL_38;
      }

      *a6 = sub_18907C994(v11, v34 + 1);
    }

    else
    {
      v35 = v14;
      v36 = v23;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66[0] = *a6;
    sub_188B522E8(v23, v14, isUniquelyReferenced_nonNull_native);
    *a6 = v66[0];

    v38 = v23;
    MEMORY[0x18CFE2450]();
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
    v39 = v67;
    if (![v14 _isCritical] || objc_msgSend(v14, sel__isHiddenForCalculation))
    {
      v13 = v14;
      v14 = v38;
      goto LABEL_5;
    }

    if (*v55)
    {
      break;
    }

    *v55 = 1;
    v38[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_critical] = 1;
    v13 = v38;
    if ((v20 & 1) == 0)
    {
      v51 = 0;
      v50 = 800;
      goto LABEL_48;
    }

LABEL_5:

    ++a3;
    v11 = v59;
    if (v16 == v58)
    {
      a3 = v52;
      goto LABEL_42;
    }
  }

  v51 = 0;
  v50 = 796;
LABEL_48:
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

uint64_t sub_188B52BCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_188A34624(0, &unk_1ED48DBD0);
  sub_18A4A7548();
  v1();
}

char *sub_188B52C64(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 64);
  v5 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 96);
  v32 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 80);
  v33 = v5;
  v34 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 112);
  v6 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 16);
  v27 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics);
  v28 = v6;
  v7 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 48);
  v29 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 32);
  v30 = v7;
  v31 = v4;
  v8 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v9 = _s11GroupLayoutCMa();
  v10 = objc_allocWithZone(v9);
  swift_unknownObjectWeakInit();
  v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty] = 1;
  v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isFixed] = 0;
  v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_critical] = 0;
  v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isOnlyGroupInSection] = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *&v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_itemLayouts] = MEMORY[0x1E69E7CC0];
  *&v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_configuredItemLayouts] = v11;
  v12 = &v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout];
  v12[8] = -2;
  *v12 = 0;
  v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_suppressCustomSpacing] = 0;
  v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__compact] = 0;
  v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__spilled] = 0;
  swift_unknownObjectWeakAssign();
  *&v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group] = a1;
  v13 = &v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics];
  v14 = v32;
  v15 = v33;
  *(v13 + 4) = v31;
  *(v13 + 5) = v14;
  *(v13 + 6) = v15;
  *(v13 + 56) = v34;
  v16 = v28;
  *v13 = v27;
  *(v13 + 1) = v16;
  v17 = v30;
  *(v13 + 2) = v29;
  *(v13 + 3) = v17;
  v18 = &v10[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_itemViewGenerator];
  *v18 = sub_188C3FA2C;
  v18[1] = v8;
  v26.receiver = v10;
  v26.super_class = v9;
  swift_retain_n();
  v19 = a1;
  v20 = objc_msgSendSuper2(&v26, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64B710;
  v22 = *&v20[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group];
  *(inited + 32) = v22;
  v23 = v20;
  v24 = v22;
  sub_188B51F44(inited, v23);

  swift_setDeallocating();
  swift_arrayDestroy();

  return v23;
}

uint64_t sub_188B52F00()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188B52FC8()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 navigationBar];
    v4 = [v3 largeTitleTextAttributes];

    if (v4)
    {
      type metadata accessor for Key(0);
      sub_188C5E0DC();
      sub_18A4A70A8();
    }

    else
    {
      sub_188AEC99C(MEMORY[0x1E69E7CC0]);
    }

    v5 = *&v2[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v6 = sub_18A4A7088();

    [v5 setTitleAttributes_];
  }

  v7 = [v0 navigationBar];
  [v7 setNeedsLayout];

  sub_188B5312C();
}

void sub_188B5312C()
{
  v1 = sub_188B53224();
  v2 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_windowDragClientInteraction;
  v3 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_windowDragClientInteraction];
  if (v1)
  {
    if (!v3)
    {
      v4 = [objc_allocWithZone(UIWindowSceneDragInteraction) init];
      v5 = *&v0[v2];
      *&v0[v2] = v4;
    }

    v6 = [v0 navigationBar];
    if (!*&v0[v2])
    {
      __break(1u);
      return;
    }

    v8 = v6;
    [v6 addInteraction_];
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    v8 = [v0 navigationBar];
    [v8 removeInteraction_];
  }
}

uint64_t sub_188B53224()
{
  v1 = [v0 navigationBar];
  v2 = [v1 traitCollection];

  v3 = [v2 userInterfaceIdiom];
  v4 = v3 == 1;
  v5 = [objc_opt_self() _isSpringboardWindowDragEnabled];
  v6 = [v0 navigationBar];
  v7 = [v6 barPosition];

  if (v7 == 3)
  {
    return v4 & v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188B53438(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;

  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if ((result & 1) == 0)
  {
    result = sub_188B52BB0(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    *a2 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_188B52BB0((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
    *a2 = result;
  }

  *(v4 + 16) = v7 + 1;
  v8 = (v4 + 24 * v7);
  v8[5] = 0;
  v8[6] = 0;
  v8[4] = a1;
  return result;
}

uint64_t sub_188B539FC(double a1)
{
  v2 = *(v1 + 88);
  if (!v2 || [v2 twoLineMode] != 1 || a1 == 0.0)
  {
    sub_188B38ED0(*(v1 + 224));
    swift_beginAccess();
    v21 = *(v1 + 344);
    v8 = v21;
    if (!v21)
    {
      v8 = *(v1 + 352);
      v22 = v8;
    }

    swift_beginAccess();
    v23 = *(v1 + 232);
    v24 = v21;

    sub_188B3A13C(v25, v8, v23);

    swift_beginAccess();
    v14 = *(v1 + 400);
    if (v14 >> 62)
    {
      v26 = sub_18A4A7F68();
      if (!v26)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v26 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_31;
      }
    }

    if (v26 < 1)
    {
      __break(1u);
      goto LABEL_38;
    }

    v27 = 0;
    v28 = 0.0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v29 = sub_188E4A488(v27, v14);
      }

      else
      {
        v29 = *(v14 + 8 * v27 + 32);
      }

      ++v27;
      v30 = &v29[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
      *v30 = v28;
      *(v30 + 8) = 0;
      v31 = *&v29[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

      v28 = v28 + v31;
    }

    while (v26 != v27);

LABEL_31:
    *(v1 + 40) = 1;
    sub_188B386EC();

    return v1;
  }

  v1 = sub_188CDB9B0(v4);
  UIFloorToScale(0.0, 6.0);
  v6 = *(v1 + 224) == a1 && v5 == *(v1 + 232);
  if (v6 && (*(v1 + 40) & 1) != 0)
  {
    return v1;
  }

  *(v1 + 224) = a1;
  *(v1 + 232) = v5;
  sub_188B38ED0(a1);
  swift_beginAccess();
  v7 = *(v1 + 344);
  v8 = v7;
  if (!v7)
  {
    v8 = *(v1 + 352);
    v9 = v8;
  }

  swift_beginAccess();
  v10 = *(v1 + 232);
  v11 = v7;

  sub_188B3A13C(v12, v8, v10);

  result = swift_beginAccess();
  v14 = *(v1 + 400);
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_14;
    }

LABEL_33:
    *(v1 + 40) = 1;
    sub_188B386EC();

    return v1;
  }

LABEL_38:
  result = sub_18A4A7F68();
  v15 = result;
  if (!result)
  {
    goto LABEL_33;
  }

LABEL_14:
  if (v15 >= 1)
  {

    v16 = 0;
    v17 = 0.0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = sub_188E4A488(v16, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v16 + 32);
      }

      ++v16;
      v19 = &v18[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
      *v19 = v17;
      *(v19 + 8) = 0;
      v20 = *&v18[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

      v17 = v17 + v20;
    }

    while (v15 != v16);

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

double __UIViewConvertRectInViewToSceneSpace(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v12 = [a1 layer];
  [v12 convertRect:0 toLayer:{a3, a4, a5, a6}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v11 _sceneReferenceBounds];
  v22 = v21;
  v24 = v23;
  v25 = [v11 _sceneOrientation];
  v26 = [v11 interfaceOrientation];

  return _UIWindowConvertRectFromOrientationToOrientation(v25, v26, v14, v16, v18, v20, v22, v24);
}

double UIEdgeInsetsAverage(char a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v15 = a2;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    v19 = a10;
    if (a10 == 0.0)
    {
      if (AdjustToScale_onceToken_0 != -1)
      {
        dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
      }

      v19 = *&AdjustToScale___s_0;
    }

    if (v19 == 1.0)
    {
      if ((a1 & 4) != 0)
      {
        goto LABEL_22;
      }
    }

    else if ((a1 & 4) != 0)
    {
      goto LABEL_22;
    }

LABEL_4:
    if ((a1 & 8) == 0)
    {
      return v15;
    }

    goto LABEL_30;
  }

  v16 = a2 + a6;
  v17 = a10;
  if (a10 == 0.0)
  {
    if (AdjustToScale_onceToken_0 != -1)
    {
      dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
    }

    v17 = *&AdjustToScale___s_0;
  }

  v18 = v16 * 0.5;
  if (v17 == 1.0)
  {
    v15 = round(v18);
    if ((a1 & 2) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v15 = round(v18 * v17) / v17;
    if ((a1 & 2) != 0)
    {
      goto LABEL_14;
    }
  }

LABEL_3:
  if ((a1 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_22:
  v20 = a10;
  if (a10 == 0.0)
  {
    if (AdjustToScale_onceToken_0 != -1)
    {
      dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
    }

    v20 = *&AdjustToScale___s_0;
  }

  if (v20 == 1.0)
  {
    if ((a1 & 8) == 0)
    {
      return v15;
    }
  }

  else if ((a1 & 8) == 0)
  {
    return v15;
  }

LABEL_30:
  if (a10 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }

  return v15;
}

void sub_188B54E60()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_18A4A7258();
    v3 = [v1 BOOLForKey_];

    byte_1EA930840 = v3;
  }

  else
  {
    __break(1u);
  }
}

id sub_188B54F2C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_underGlassTransitionContainer];
  [v0 bounds];
  [v2 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_platterContainer];
  [v0 bounds];
  return [v3 setFrame_];
}

uint64_t sub_188B5510C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_188B55154()
{
  v1 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl;
  if (!*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl])
  {
    v2 = [objc_allocWithZone(_UINavigationBarTitleControl) init];
    v3 = *&v0[v1];
    *&v0[v1] = v2;
    v4 = v2;

    v5 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider];
    if (v5)
    {
      v6 = [v5 titleControlVisualProvider];
    }

    else
    {
      v6 = 0;
    }

    [v4 setVisualProvider_];
    swift_unknownObjectRelease();
    [v4 setControlAlpha_];
    [v4 setContentAlpha_];
    LODWORD(v7) = 1143930880;
    [v4 setTitleViewCompressionResistancePriority_];
    v8 = &v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent];
    if (*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 80])
    {
      v9 = *(v8 + 11);
      v17 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 80];
      v18 = v9;
      v13 = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_188EBB970;
      v16 = &block_descriptor_77_0;
      v10 = _Block_copy(&v13);
    }

    else
    {
      v10 = 0;
    }

    [v4 setTitleMenuProvider_];
    _Block_release(v10);
    [v4 setDocumentProperties_];
    [v0 setNeedsLayout];
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = sub_188EC2BF4;
    v18 = v11;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_188A4A8F0;
    v16 = &block_descriptor_74_0;
    v12 = _Block_copy(&v13);

    [v4 setIntrinsicContentSizeInvalidationHandler_];
    _Block_release(v12);
  }
}

id sub_188B569CC()
{
  v0 = objc_opt_self();
  v1 = [v0 traitCollectionWithUserInterfaceStyle_];
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = sub_18A4A2DB8();
  v8 = *(*(v7 - 8) + 56);
  v8(&v20 - v6, 1, 1, v7);
  sub_18904F42C(v1, v3, &v20 - v6);
  v21 = v9;

  sub_188A3F5FC(&v20 - v6, &qword_1EA935D70);
  v10 = [v0 traitCollectionWithUserInterfaceStyle_];
  v11 = [v2 blackColor];
  v12 = MEMORY[0x1EEE9AC00](v11);
  (v8)(&v20 - v6, 1, 1, v7, v12);
  sub_18904F42C(v10, v11, &v20 - v6);
  v14 = v13;

  sub_188A3F5FC(&v20 - v6, &qword_1EA935D70);
  v15 = objc_opt_self();
  v16 = v21;
  v17 = [v15 _vibrantEffectWithLightVibrantColorMatrix_darkVibrantColorMatrix_alpha_];

  v18 = [objc_allocWithZone(_UIMaterial) initWithVibrantVisualEffect_];
  return v18;
}

unint64_t sub_188B56C3C(void *a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = sub_18A4A5DA8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14[0] = 0;
  v11 = 0;
  v12 = 0;
  [a1 getRed:v14 green:&v13 blue:&v12 alpha:{&v11, v4}];
  (*(v3 + 104))(v6, *MEMORY[0x1E69814D8], v2);
  sub_18A4A5DD8();
  return v7 | (v8 << 32);
}

uint64_t sub_188B56DB8()
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
  v2 = sub_188B09650(&type metadata for _ResolvedProviderTraitDefinition, sub_188B09978);
  os_unfair_lock_unlock(v1[2]);
  v3 = [v0 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933360);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188B56F94@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_188B57110(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_188A3F5FC(a1, &qword_1EA937058);
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
        sub_188FA43E4();
        v10 = v13;
      }

      sub_188A3F704(*(v10 + 56) + 8 * v8, &v15, &unk_1EA93B9E0);
      sub_188F9E0EC(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_188A3F5FC(&v15, &qword_1EA937058);
  }

  else
  {
    sub_188A3F704(a1, &v15, &unk_1EA93B9E0);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_188B58114(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_188B5724C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_18A4A6E18();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_18A4A6E58();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18A4A2BD8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v17(&v27 - v15, a1, v9, v14);
  (v17)(v12, v16, v9);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  (*(v10 + 32))(v19 + v18, v16, v9);
  v34 = a3;
  v20 = swift_retain_n();
  UIObservationTrackingInvalidated(v20);
  if (pthread_main_np() == 1)
  {

    sub_18A4A2BC8();
    a2();
  }

  else
  {
    sub_188A5E418();
    v27 = sub_18A4A7A68();
    aBlock[4] = sub_18913F2E4;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_126;
    v21 = _Block_copy(aBlock);

    v22 = v28;
    sub_18A4A6E38();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_188D7609C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
    sub_188BA3728();
    v23 = v30;
    v24 = v33;
    sub_18A4A7EB8();
    v25 = v27;
    MEMORY[0x18CFE29D0](0, v22, v23, v21);
    _Block_release(v21);

    (*(v32 + 8))(v23, v24);
    (*(v29 + 8))(v22, v31);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_188B57678()
{
  v1 = sub_18A4A2BD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_188B57764(uint64_t a1, uint64_t a2, char a3, char a4, void (*a5)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = qword_1ED48EE10;
    v11 = Strong;
    if (v10 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (sub_188ACEEC4(v11, a3, qword_1ED48EE18))
    {
    }

    else
    {
      if (qword_1ED490F20 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_188B57944(v15, v11, a3);
      swift_endAccess();

      if ((a4 & 1) != 0 || _UIObservationTrackingLoggingEnabled())
      {
        if (a1)
        {
          sub_18A4A7DF8();
          v12 = sub_18A4A7258();
        }

        else
        {
          v12 = 0;
        }

        sub_188CF0960(a3);
        v13 = v11;
        v14 = sub_18A4A7258();

        _UILogObservationTrackingInvalidation(v12, v13, v14);
      }

      a5(v11);
    }
  }
}

uint64_t sub_188B57944(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = *v3;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a2);
  MEMORY[0x18CFE37E0](a3);
  v8 = sub_18A4A88E8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v7 + 48) + 16 * v10;
      if (*v12 == a2 && *(v12 + 8) == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    a2 = *v12;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_188B57AD8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  return result;
}

uint64_t _UIObservationTrackingLoggingEnabled()
{
  if (qword_1ED49F4E8 != -1)
  {
    dispatch_once(&qword_1ED49F4E8, &__block_literal_global_3_4);
  }

  return byte_1ED49F4D9;
}

uint64_t sub_188B57AD8(uint64_t result, unsigned __int8 a2, unint64_t a3, char a4)
{
  v5 = result;
  v6 = a2;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_188B74864();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_188E797F0();
      a3 = v9;
      goto LABEL_15;
    }

    sub_188B57C64();
  }

  v10 = *v4;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v5);
  MEMORY[0x18CFE37E0](v6);
  result = sub_18A4A88E8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v10 + 48) + 16 * a3;
      v14 = *v13;
      v15 = *(v13 + 8);
      if (v14 == v5 && v15 == v6)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = *(v17 + 48) + 16 * a3;
  *v18 = v5;
  *(v18 + 8) = v6;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_18A4A8798();
  __break(1u);
  return result;
}

uint64_t sub_188B57C64()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349F8);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = *(v2 + 48) + 16 * (v13 | (v5 << 6));
      v17 = *v16;
      v18 = *(v16 + 8);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v17);
      MEMORY[0x18CFE37E0](v18);
      result = sub_18A4A88E8();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 16 * v11;
      *v12 = v17;
      *(v12 + 8) = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_188B57EA4()
{
  swift_getKeyPath();
  sub_188FAB9F8(&qword_1ED490BC0);
  sub_18A4A2C08();

  if (*(v0 + 56))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18A4A2BF8();

    result = swift_weakLoadStrong();
    if (result)
    {
      sub_188B57EA4();
    }
  }

  return result;
}

unint64_t sub_188B58010()
{
  result = qword_1ED48EE20;
  if (!qword_1ED48EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48EE20);
  }

  return result;
}

uint64_t sub_188B58114(uint64_t a1, uint64_t a2, char a3)
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
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA43E4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_188B58238(v14, a3 & 1);
    v9 = sub_188A403F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    return sub_188A4B4F4(a1, v19[7] + 8 * v9, &unk_1EA93B9E0);
  }

  return sub_188B5825C(v9, a2, a1, v19);
}

void UIMotionEffectCommonInit(void *a1)
{
  v1 = a1;
  v2 = _UIMotionEffectDefaultAnalyzerSettings__defaultSettings;
  v5 = v1;
  if (!_UIMotionEffectDefaultAnalyzerSettings__defaultSettings)
  {
    v3 = [(_UISettings *)[_UIMotionAnalyzerSettings alloc] initWithDefaultValues];
    v4 = _UIMotionEffectDefaultAnalyzerSettings__defaultSettings;
    _UIMotionEffectDefaultAnalyzerSettings__defaultSettings = v3;

    v1 = v5;
    v2 = _UIMotionEffectDefaultAnalyzerSettings__defaultSettings;
  }

  objc_storeStrong(v1 + 1, v2);
}

void registerObjectInMapOfHashTables(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v8 objectForKey:v5];
  if (!v7)
  {
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [v8 setObject:v7 forKey:v5];
  }

  [v7 addObject:v6];
}

void _AssertPointComponentsArePositive(double a1, double a2)
{
  if (a1 < 0.0 || a2 < 0.0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _AssertPointComponentsArePositive(CGPoint)"];
    [v4 handleFailureInFunction:v3 file:@"UIMotionEffect.m" lineNumber:445 description:@"point must be non-negative"];
  }
}

id _animationForKeyPathsAndValues(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 keyEnumerator];
      v5 = [v4 nextObject];

      v6 = [v3 objectForKeyedSubscript:v5];
      v7 = _animationForValueAndKeyPath(v6, v5, a2);
    }

    else
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v3;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            v15 = [v9 objectForKeyedSubscript:{v14, v18}];
            v16 = _animationForValueAndKeyPath(v15, v14, a2);
            [v8 addObject:v16];
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v11);
      }

      v7 = [MEMORY[0x1E6979308] animation];
      [v7 setAnimations:v8];
      [v7 setFillMode:*MEMORY[0x1E69797E0]];
      [v7 setDuration:0.0001];
      [v7 setRemovedOnCompletion:0];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id _animationForValueAndKeyPath(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (qword_1ED4A2CC0 != -1)
  {
    dispatch_once(&qword_1ED4A2CC0, &__block_literal_global_37_5);
  }

  v7 = [qword_1ED4A2CB8 valueForKey:v6];
  v8 = v5;
  if (!v7 || (a3 & 1) != 0)
  {
    if (v7)
    {
      if (![@"frame" isEqualToString:v6])
      {
        v10 = v8;
        goto LABEL_19;
      }

      [v8 CGRectValue];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = v12;
      if (v17 != 0.0 || v12 != 0.0)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = ___animationForValueAndKeyPath_block_invoke_32;
        v23[3] = &unk_1E70F3B20;
        v24 = v6;
        v25 = v14;
        v26 = v16;
        v27 = v18;
        v28 = v19;
        if (qword_1ED4A2CB0 != -1)
        {
          dispatch_once(&qword_1ED4A2CB0, v23);
        }
      }

      v20 = [MEMORY[0x1E696B098] valueWithCGPoint:{v14, v16}];
    }

    else
    {
      v7 = [_UIViewCALayerKeyValueMapper CALayerKeyPathForUIViewKeyPath:v6];
      v20 = [_UIViewCALayerKeyValueMapper CALayerValueForUIViewValue:v8 forUIViewKey:v6];
    }

    v10 = v20;

    goto LABEL_19;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___animationForValueAndKeyPath_block_invoke;
  block[3] = &unk_1E70F35B8;
  v9 = v6;
  v30 = v9;
  v10 = v8;
  v31 = v10;
  if (_MergedGlobals_1393 != -1)
  {
    dispatch_once(&_MergedGlobals_1393, block);
  }

  v11 = v9;
  v7 = v11;
LABEL_19:
  v21 = [MEMORY[0x1E6979318] animationWithKeyPath:v7];
  [v21 setFromValue:v10];
  [v21 setToValue:v10];
  [v21 setDuration:0.0001];
  [v21 setFillMode:*MEMORY[0x1E69797E0]];
  [v21 setAdditive:a3];
  [v21 setRemovedOnCompletion:0];

  return v21;
}

void _quantizePositionsInAnimation(void *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v5;
  if (_animationIsEligibleForQuantization(v7))
  {
    v8 = [v7 fromValue];
    v9 = [v7 toValue];
    v10 = _quantizedValueForValueInView(v8, v6);
    v11 = v10;
    if (v8 == v9)
    {
      v12 = v10;
    }

    else
    {
      v12 = _quantizedValueForValueInView(v9, v6);
    }

    v21 = v12;
    if (v11 != v8 || (v13 = v7, v12 != v9))
    {
      v13 = v7;
      if (a3)
      {
        v13 = [v7 copy];
      }

      [v13 setFromValue:v11];
      [v13 setToValue:v21];
    }

LABEL_22:
    goto LABEL_23;
  }

  objc_opt_class();
  v13 = v7;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  v8 = [v7 animations];
  v13 = v7;
  if ([v8 indexOfObjectPassingTest:&__block_literal_global_430] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3)
    {
      v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = v8;
      v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v28 + 1) + 8 * i);
            v27 = 0;
            _quantizePositionsInAnimation(v19, v6, &v27);
            v20 = v27;
            [v9 addObject:v20];
          }

          v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v16);
      }

      v13 = [v7 copy];
      [v13 setAnimations:v9];
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v9 = [v7 animations];
      v23 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v33;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v33 != v25)
            {
              objc_enumerationMutation(v9);
            }

            _quantizePositionsInAnimation(*(*(&v32 + 1) + 8 * j), v6, 0);
          }

          v24 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v24);
      }

      v13 = v7;
    }

    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  if (a3)
  {
    v22 = v13;
    *a3 = v13;
  }
}

uint64_t _animationIsEligibleForQuantization(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 keyPath];
    v3 = [v2 hasPrefix:@"position"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double _UISystemBackgroundViewFrameInContainerView(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect _UISystemBackgroundViewFrameInContainerView(__strong id<_UIBackgroundConfigurationInternal>, UIView *__strong)"}];
    [v37 handleFailureInFunction:v38 file:@"_UISystemBackgroundView.m" lineNumber:1120 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v39 = [MEMORY[0x1E696AAA8] currentHandler];
  v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect _UISystemBackgroundViewFrameInContainerView(__strong id<_UIBackgroundConfigurationInternal>, UIView *__strong)"}];
  [v39 handleFailureInFunction:v40 file:@"_UISystemBackgroundView.m" lineNumber:1121 description:{@"Invalid parameter not satisfying: %@", @"containerView != nil"}];

LABEL_3:
  v6 = [v5 _shouldReverseLayoutDirection];
  [v3 backgroundInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v3 edgesAddingLayoutMarginsToBackgroundInsets];
  if (v6)
  {
    v16 = v14;
  }

  else
  {
    v16 = v10;
  }

  if (!v6)
  {
    v10 = v14;
  }

  if (v15)
  {
    v17 = v6 == 0;
    if (v6)
    {
      v18 = 8;
    }

    else
    {
      v18 = 2;
    }

    v19 = v18 & (v15 << 62 >> 63) | v15 & 5;
    if (v17)
    {
      v20 = 8;
    }

    else
    {
      v20 = 2;
    }

    v21 = v20 & (v15 << 60 >> 63);
    [v5 layoutMargins];
    v8 = UIEdgeInsetsAdd(v19 | v21, v8, v16, v12, v10, v22);
    v16 = v23;
    v12 = v24;
    v10 = v25;
  }

  [v5 bounds];
  v27 = v16 + v26;
  v29 = v8 + v28;
  v31 = v30 - (v10 + v16);
  v33 = v32 - (v12 + v8);
  [v5 _currentScreenScale];
  v35 = UIRectIntegralWithScale(v27, v29, v31, v33, v34);

  return v35;
}

void _UIButtonConfigurationCopy(void *a1, void *a2, int a3, int a4)
{
  v47 = a1;
  v7 = a2;
  v8 = v7;
  if (a3)
  {
    objc_storeStrong(v47 + 1, v7[1]);
  }

  v9 = *(v47 + 12) & 0xFFFFFFFFFFFFC7FFLL | (((v8[12] >> 11) & 7) << 11);
  *(v47 + 12) = v9;
  v10 = v9 & 0xFFFFFFFFFFFE3FFFLL | (((v8[12] >> 14) & 7) << 14);
  *(v47 + 12) = v10;
  *(v47 + 12) = v10 & 0xFFFFFFFFFFF3FFFFLL | (((v8[12] >> 18) & 3) << 18);
  v11 = [v8[26] copy];
  v12 = *(v47 + 26);
  *(v47 + 26) = v11;

  *(v47 + 30) = v8[30];
  v13 = [v8[13] copy];
  v14 = *(v47 + 13);
  *(v47 + 13) = v13;

  *(v47 + 14) = v8[14];
  v15 = *(v47 + 12) & 0xFFFFFFFFFFFFFFCFLL | (16 * ((v8[12] >> 4) & 3));
  *(v47 + 12) = v15;
  *(v47 + 12) = v15 & 0xFFFFFFFFFFFFFFF0 | v8[12] & 0xF;
  objc_storeStrong(v47 + 16, v8[16]);
  objc_storeStrong(v47 + 15, v8[15]);
  objc_storeStrong(v47 + 17, v8[17]);
  v16 = [v8[18] copy];
  v17 = *(v47 + 18);
  *(v47 + 18) = v16;

  v18 = [v8[19] copy];
  v19 = *(v47 + 19);
  *(v47 + 19) = v18;

  v20 = [v8[20] copy];
  v21 = *(v47 + 20);
  *(v47 + 20) = v20;

  *(v47 + 12) = *(v47 + 12) & 0xFFFFFFFFFFFFFFBFLL | (((v8[12] >> 6) & 1) << 6);
  v22 = [v8[21] copy];
  v23 = *(v47 + 21);
  *(v47 + 21) = v22;

  v24 = [v8[22] copy];
  v25 = *(v47 + 22);
  *(v47 + 22) = v24;

  v26 = [v8[23] copy];
  v27 = *(v47 + 23);
  *(v47 + 23) = v26;

  v28 = [v8[24] copy];
  v29 = *(v47 + 24);
  *(v47 + 24) = v28;

  v30 = [v8[25] copy];
  v31 = *(v47 + 25);
  *(v47 + 25) = v30;

  v32 = *(v47 + 12) & 0xFFFFFFFFFFFFFF7FLL | (((v8[12] >> 7) & 1) << 7);
  *(v47 + 12) = v32;
  v33 = v8[12];
  if ((v33 & 0x80) != 0)
  {
    v34 = *(v8 + 31);
    *(v47 + 264) = *(v8 + 33);
    *(v47 + 248) = v34;
  }

  else
  {
    v32 = v32 & 0xFFFFFFFFFFFFF8FFLL | (((v33 >> 8) & 7) << 8);
    *(v47 + 12) = v32;
  }

  *(v47 + 27) = v8[27];
  *(v47 + 28) = v8[28];
  *(v47 + 29) = v8[29];
  v35 = v32 & 0xFFFFFFFFFCFFFFFFLL | (((v8[12] >> 24) & 3) << 24);
  *(v47 + 12) = v35;
  v36 = v35 & 0xFFFFFFFFFBFFFFFFLL | (((v8[12] >> 26) & 1) << 26);
  *(v47 + 12) = v36;
  *(v47 + 12) = v36 & 0xFFFFFFFFFFFDFFFFLL | (((v8[12] >> 17) & 1) << 17);
  if (a4)
  {
    v37 = [v8[2] copy];
    v38 = *(v47 + 2);
    *(v47 + 2) = v37;

    *(v47 + 12) = *(v47 + 12) & 0xFFFFFFFFFFEFFFFFLL | (((v8[12] >> 20) & 1) << 20);
    v39 = [v8[3] copy];
    v40 = *(v47 + 3);
    *(v47 + 3) = v39;

    *(v47 + 12) = *(v47 + 12) & 0xFFFFFFFFFFDFFFFFLL | (((v8[12] >> 21) & 1) << 21);
    v41 = [v8[4] copy];
    v42 = *(v47 + 4);
    *(v47 + 4) = v41;

    objc_storeStrong(v47 + 5, v8[5]);
    v43 = [v8[6] copy];
    v44 = *(v47 + 6);
    *(v47 + 6) = v43;

    objc_storeStrong(v47 + 7, v8[7]);
    v45 = [v8[8] copy];
    v46 = *(v47 + 8);
    *(v47 + 8) = v45;

    *(v47 + 10) = v8[10];
    *(v47 + 11) = v8[11];
    *(v47 + 12) = *(v47 + 12) & 0xFFFFFFFFFF3FFFFFLL | (((v8[12] >> 22) & 3) << 22);
  }
}

id _UIStatusBarManagerForNoWindow()
{
  v0 = (byte_1ED48AA94 != 0) & ~_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_SoftAssertWithNilSceneForStatusBar, @"SoftAssertWithNilSceneForStatusBar");
  v1 = *&__SplashBoardOverrideStatusBarHeight;
  v2 = UIApp;
  if (v0 == 1 && *&__SplashBoardOverrideStatusBarHeight == 1.79769313e308 && UIApp == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v13 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *v17 = 0;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Looking for statusBarManager before the shared application has been created. This is much too early!", v17, 2u);
      }
    }

    else
    {
      v10 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1030) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Looking for statusBarManager before the shared application has been created. This is much too early!", buf, 2u);
      }
    }

    v2 = UIApp;
    if (UIApp)
    {
      goto LABEL_9;
    }

LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if (!UIApp)
  {
    goto LABEL_21;
  }

LABEL_9:
  v5 = [v2 _appAdoptsUISceneLifecycle];
  v6 = v5;
  if ((v0 & v5) == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *v15 = 0;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Unsupported code path for UIScene-based application.", v15, 2u);
      }
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49CC70) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unsupported code path for UIScene-based application.", v14, 2u);
      }
    }
  }

  if (v6)
  {
    [UIApp _findUISceneForLegacyInterfaceOrientation];
  }

  else
  {
    [UIApp _defaultUIWindowHostingUISceneOrMainScreenPlaceholderIfExists];
  }
  v7 = ;
  v8 = [v7 _statusBarManager];

LABEL_22:

  return v8;
}

id sub_188B5A3B4(void *a1)
{
  v2 = v1;
  v58 = a1;
  v60 = *MEMORY[0x1E69E9840];
  v3 = sub_18A4A2BD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A2BA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  if ([(UIView *)v2 _isDeallocInitiated])
  {
    v20 = v58;

    return [v20 _executeConfigurationUpdate];
  }

  else
  {
    v54 = v3;
    v55 = v10;
    v52 = v6;
    v53 = v4;
    v51 = v2;
    v22 = [(UIView *)v2 _typedStorage];
    v23 = sub_188A4CEC4();

    if (v23)
    {
      sub_18913E3AC(13);
    }

    v56 = v23;
    v50 = *(v8 + 56);
    v50(v19, 1, 1, v7);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v25 = *(StatusReg + 848);
    *(StatusReg + 848) = v19;
    v57 = v19;
    v26 = v8;
    v27 = v7;
    v28 = byte_1ED4A3680;
    byte_1ED4A3680 = 1;
    [v58 _executeConfigurationUpdate];
    *(StatusReg + 848) = v25;
    byte_1ED4A3680 = v28;
    v29 = v57;
    v30 = v27;
    sub_188A3F29C(v57, v16, &qword_1EA93E090);
    if ((*(v26 + 48))(v16, 1, v27) == 1)
    {
      sub_188A3F5FC(v29, &qword_1EA93E090);
      sub_188A3F5FC(v16, &qword_1EA93E090);
    }

    else
    {
      v31 = v55;
      (*(v26 + 32))(v55, v16, v30);
      v32 = v51;
      LODWORD(v58) = sub_188ACEB88(v51, 13, &block_descriptor_65_1);
      v33 = v56;
      v34 = v26;
      if (!v56)
      {
        v35 = [(UIView *)v32 _typedStorage];
        v33 = sub_188A4CEC4();
      }

      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 24) = 13;
      *(v37 + 25) = v58 & 1;
      *(v37 + 32) = [UITableViewCell _invalidateConfiguration]_0;
      *(v37 + 40) = 0;
      v49 = v34;
      (*(v34 + 16))(v13, v31, v30);
      v56 = v30;
      v50(v13, 0, 1, v30);
      v58 = v36;

      v38 = v52;
      sub_18A4A2BE8();
      v39 = v53;
      if (v33)
      {
        v40 = v31;
      }

      else
      {
        type metadata accessor for TrackingDictionary();
        v41 = swift_allocObject();
        *(v41 + 16) = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v42 = [(UIView *)v32 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098);
        v43 = swift_allocObject();
        *(v43 + 16) = v41;
        v44 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = *(&v42->super.isa + v44);
        *(&v42->super.isa + v44) = 0x8000000000000000;
        v46 = v43;
        v40 = v55;
        sub_188A40430(v46, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
        *(&v42->super.isa + v44) = v59;
        swift_endAccess();
      }

      swift_retain_n();
      sub_188ACEFD4(v38, 13);

      v47 = swift_allocObject();
      *(v47 + 16) = sub_188B57AD4;
      *(v47 + 24) = v37;

      MEMORY[0x18CFDDAE0](v38, 0, 0, sub_188B57248, v47);

      (*(v39 + 8))(v38, v54);
      (*(v49 + 8))(v40, v56);
      sub_188A3F5FC(v57, &qword_1EA93E090);
    }
  }
}

id fallbackForegroundColorForTraitCollection(void *a1)
{
  if ([a1 userInterfaceIdiom] == 6)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor tintColor];
  }
  v1 = ;

  return v1;
}

void _getDefaultTitleAndSubtitleFontStylesForButtonSize(uint64_t a1, __CFString **a2, __CFString **a3, __CFString **a4, void *a5)
{
  v9 = a5;
  v22 = v9;
  if ((a1 - 1) >= 2)
  {
    v14 = [v9 userInterfaceIdiom];
    v11 = UIFontTextStyleShortBody;
    if (a1)
    {
      v15 = &UIFontTextStyleTitle3;
    }

    else
    {
      v15 = &UIFontTextStyleHeadline;
    }

    if (v14 == 6)
    {
      v11 = v15;
    }

    v12 = UIFontTextStyleShortFootnote;
    v13 = UIFontTextStyleShortEmphasizedBody;
  }

  else
  {
    v10 = [v9 userInterfaceIdiom];
    v11 = UIFontTextStyleShortSubheadline;
    if (v10 == 6)
    {
      v11 = &UIFontTextStyleCallout;
    }

    v12 = UIFontTextStyleShortCaption1;
    v13 = UIFontTextStyleShortEmphasizedSubhead;
  }

  v16 = *v11;
  v17 = *v13;
  v18 = *v12;
  if (a2)
  {
    v19 = v16;
    *a2 = v16;
  }

  if (a3)
  {
    v20 = v18;
    *a3 = v18;
  }

  if (a4)
  {
    v21 = v17;
    *a4 = v17;
  }
}

uint64_t _UIButtonStatesFromButton(void *a1)
{
  v1 = a1;
  v2 = [v1 state];
  v3 = v2 & 1;
  if ((v2 & 2) != 0 || [v1 tintAdjustmentMode] == 2)
  {
    v3 |= 2uLL;
  }

  v4 = v3 | v2 & 0xC;
  if ([v1 isHeld])
  {
    v4 |= 0x10uLL;
  }

  return v4;
}

uint64_t _UIButtonCanInferIndicator()
{
  if (qword_1ED49E590 != -1)
  {
    dispatch_once(&qword_1ED49E590, &__block_literal_global_296);
  }

  return _MergedGlobals_1138;
}

id _UIColorFromCUINamedColor(void *a1)
{
  v1 = a1;
  if (![v1 substituteWithSystemColor] || (objc_msgSend(v1, "systemColorName"), v2 = objc_claimAutoreleasedReturnValue(), +[UIColor _systemColorWithUnvalidatedName:](UIColor, "_systemColorWithUnvalidatedName:", v2), v3 = objc_claimAutoreleasedReturnValue(), v2, !v3))
  {
    v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v1 cgColor]);
  }

  return v3;
}

BOOL _UILAIsAnimatingOnCanvas(void *a1)
{
  v1 = a1;
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    v2 = [v1 _window];
    v3 = v2 != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 superview];
  v3 = v1;
  v4 = v2;
  v5 = v4;
  v6 = v3;
  if (v4)
  {
    v6 = v3;
    v7 = v4;
    do
    {
      if ([v6 _hostsLayoutEngine] && v7 != v5)
      {
        break;
      }

      v8 = [v6 superview];

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v8 _mutableLayoutArrangements];
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v15 + 1) + 8 * i);
            if ([v14 _monitorsSystemLayoutFittingSizeForItem:v6])
            {
              [v14 _systemLayoutFittingSizeDidChangeForItem:v6];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }

      v7 = v8;
      v6 = v7;
    }

    while (v7);
  }
}

void _UILACleanUpConstraintsMapTable(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = [v1 objectEnumerator];
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v7 + 1) + 8 * v6++) setActive:0];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    [v1 removeAllObjects];
  }
}

uint64_t cornerStyleForDeviceIdiomAndConfigurationKind(uint64_t a1)
{
  v1 = a1 != 0;
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 6)
  {
    return 4 * v1;
  }

  else
  {
    return 0;
  }
}

void UIBezierPathCommonInit(void *a1, const void *a2)
{
  v3 = a1;
  v3[1] = CFRetain(a2);
  v3[6] = 0x3FE3333333333333;
  *(v3 + 2) = xmmword_18A67BDC0;
}

void *_selectorForColorName(void *a1)
{
  v1 = a1;
  v2 = +[UIColor _systemColorSelectorTable];
  v3 = NSMapGet(v2, v1);

  return v3;
}

uint64_t sub_188B5D644(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_188AA9D24(a1, a2 & 1, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_188A5E664(a2 & 1, a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_188FA1DBC();
        v16 = v18;
      }

      result = sub_188AB7AD4(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

void _UIQOSManagedCommitsEnd(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  _MergedGlobals_1364 = 0;
  if (qword_1ED4A28F8 != -1)
  {
    dispatch_once(&qword_1ED4A28F8, &__block_literal_global_7_4);
  }

  Count = CFDictionaryGetCount(qword_1ED4A2900);
  if (!v4 || (Value = CFDictionaryGetValue(qword_1ED4A2900, v3)) != 0 && (v7 = Value, CFSetRemoveValue(Value, v4), !CFSetGetCount(v7)))
  {
    CFDictionaryRemoveValue(qword_1ED4A2900, v3);
    if (Count)
    {
      if (!CFDictionaryGetCount(qword_1ED4A2900))
      {
        Class = object_getClass(v3);
        Name = class_getName(Class);
        strncpy(__dst, Name, 8uLL);
        if (v4)
        {
          strncpy(__dst, [v4 UTF8String], 8uLL);
        }

        _tracepointArg4(&qword_1ED4A2900);
        kdebug_trace();
      }
    }
  }
}

void _UIUpdateCompletionObservationRemoveObserver(uint64_t a1, unint64_t a2, int a3)
{
  if (a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIUpdateCompletionObservationRemoveObserver(_UIUpdateCompletionObservation *const _Nonnull, const id<_UIUpdateCompletionObserving>  _Nonnull const __strong, const BOOL)"}];
    [v13 handleFailureInFunction:v14 file:@"_UIUpdateSequence.mm" lineNumber:226 description:@"Persistant observers are not implemented."];
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::find<void *>(v6, a2);
    if (v7)
    {
      v8 = v7;
      v9 = *v5;
      v10 = std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::erase(v6, v7);
      if (v9 == v8)
      {
        **(a1 + 16) = v10;
      }
    }
  }

  v11 = *a1;
  if (v11)
  {
    v12 = std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::find<void *>(v11, a2);
    if (v12)
    {

      std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::erase(v11, v12);
    }
  }
}

void sub_188B5EAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 112));
  _Unwind_Resume(a1);
}

id _UIKBArbiterSetForPlacements()
{
  v4[6] = *MEMORY[0x1E69E9840];
  v0 = +[UIInputViewSetPlacement encodablePlacementsForXPC];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:6];
  v2 = [v0 setByAddingObjectsFromArray:v1];

  return v2;
}

id _UIKeyboardArbitrationClient_Interface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0049C28];
  v1 = _UIKBArbiterSetForPlacements();
  [v0 setClasses:v1 forSelector:sel_queue_keyboardTransition_event_withInfo_onComplete_ argumentIndex:2 ofReply:0];

  return v0;
}

uint64_t _UIEventDeferringSystemShellBehaviorIsAllowedForProcess()
{
  if (_UIApplicationProcessIsSpringBoard() & 1) != 0 || (_UIEventDeferringProcessIsCarPlayApp() & 1) != 0 || (_UIEventDeferringProcessIsPineBoard())
  {
    return 1;
  }

  return _UIEventDeferringProcessIsCarousel();
}

uint64_t _disableTopRemoteRecordTransition_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 16);
  v8 = _NSStringFromUIDeferringAction[a4];
  if (*(a2 + 48) == 1)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_disableTopRemoteRecordTransition_block_invoke"];
    [v18 handleFailureInFunction:v19 file:@"_UIEventDeferringManager.m" lineNumber:897 description:{@"[%p] [%@] %@: Invalid state. Unexpected value of ownerInitiatedRemoval: %d", *a2, v7, v8, *(a2 + 48)}];
  }

  v9 = [(_UIEventDeferringManager *)*a2 _topRemoteRecordInStackForEnvironment:v7];
  v10 = *(a2 + 24);
  if (v9)
  {
    v11 = [(_UIEventDeferringRecord *)v9 recreationReasons];
    v12 = [v11 containsObject:v10];

    if ((v12 & 1) == 0)
    {
      if ([(_UIEventDeferringRecord *)v9 needsRecreation])
      {
        v13 = 0;
      }

      else
      {
        v14 = *(v9 + 24);
        [v14 invalidate];

        v13 = 1;
      }

      [(_UIEventDeferringRecord *)v9 addRecreationReason:v10];
      v15 = _UIEventDeferringShorterRecreationReasonStringForReason(v10);
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CCE0);
      if (*CategoryCachedImpl)
      {
        v20 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = *a2;
          *buf = 134350338;
          v23 = v21;
          v24 = 2114;
          v25 = v7;
          v26 = 2114;
          v27 = v8;
          v28 = 1026;
          v29 = v13;
          v30 = 2114;
          v31 = v15;
          v32 = 2114;
          v33 = v9;
          _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Disabling top remote record: invalidated: %{public}d; added recreation reason: %{public}@; record: %{public}@", buf, 0x3Au);
        }
      }
    }
  }

  if (*__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CCE8))
  {
    _emitDebugLogForTransition(a3, a4, &stru_1EFB14550, a2);
  }

  return 7;
}

id _UIKeyboardArbitration_Interface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016E550];
  v1 = _UIKBArbiterSetForPlacements();
  [v0 setClasses:v1 forSelector:sel_transition_eventStage_withInfo_ argumentIndex:2 ofReply:0];

  v2 = _UIKBArbiterSetForPlacements();
  [v0 setClasses:v2 forSelector:sel_setAllVisibleFrames_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t stateMachineSpec_block_invoke_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 16);
  v8 = _NSStringFromUIDeferringAction[a4];
  v9 = [(_UIEventDeferringManager *)*a2 _remoteDeferringRecordStackForEnvironment:v7];
  if ([v9 count] >= 2)
  {
    v10 = [(_UIEventDeferringManager *)*a2 _topRemoteRecordInStackForEnvironment:v7];
    v11 = [(_UIEventDeferringRecord *)v10 needsRecreation];
    v12 = *a2;
    if (*a2)
    {
      if (!*(v12 + 96))
      {
        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        [v21 handleFailureInMethod:sel__sortRemoteRecordStackForEnvironment_ object:v12 file:@"_UIEventDeferringManager.m" lineNumber:2505 description:{@"[%p] %s: Invalid state. Sorting records without a transaction: %@", v12, "-[_UIEventDeferringManager _sortRemoteRecordStackForEnvironment:]", v12}];
      }

      v13 = [(_UIEventDeferringManager *)v12 _remoteDeferringRecordStackForEnvironment:v7];
      v14 = v13;
      if (v13 && [v13 count] >= 2)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __65___UIEventDeferringManager__sortRemoteRecordStackForEnvironment___block_invoke;
        v25 = &unk_1E70FCC38;
        *&v26 = v12;
        *(&v26 + 1) = v7;
        [v14 sortWithOptions:16 usingComparator:buf];
      }

      v15 = *a2;
    }

    else
    {
      v15 = 0;
    }

    v16 = [(_UIEventDeferringManager *)v15 _topRemoteRecordInStackForEnvironment:v7];
    if (v16 != v10 && !v11)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CDF8);
      if (*CategoryCachedImpl)
      {
        v22 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = *a2;
          *buf = 134349826;
          *&buf[4] = v23;
          *&buf[12] = 2114;
          *&buf[14] = v7;
          *&buf[22] = 2114;
          v25 = v8;
          LOWORD(v26) = 2114;
          *(&v26 + 2) = v10;
          _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Invalidating previous top remote record in stack: %{public}@", buf, 0x2Au);
        }
      }

      if (v10)
      {
        v18 = v10[3];
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      [v19 invalidate];

      [(_UIEventDeferringRecord *)v10 addRecreationReason:?];
    }
  }

  if (*__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE00))
  {
    _emitDebugLogForTransition(a3, a4, &stru_1EFB14550, a2);
  }

  return 9;
}

id _UISceneIdentityToLogString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if ([v1 hasPrefix:@"com.apple.frontboard.systemappservices/FBSceneManager:"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"com.apple.frontboard.systemappservices/FBSceneManager:", "length")}];

    if ([v2 hasPrefix:@"sceneID%3A"])
    {
      v3 = [v2 substringFromIndex:{objc_msgSend(@"sceneID%3A", "length")}];

      v2 = v3;
    }
  }

  return v2;
}

id _UIArbiterClientLog()
{
  if (_UIArbiterClientLog_onceToken != -1)
  {
    dispatch_once(&_UIArbiterClientLog_onceToken, &__block_literal_global_29_0);
  }

  v1 = _UIArbiterClientLog_log;

  return v1;
}

uint64_t sub_188B60094(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for _Glass._GlassVariant(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_188B60160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18A4A2F58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_188B60324(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_188B622F4(a1);
  if (!v10)
  {
    v26 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
    v27 = swift_beginAccess();
    v28 = *(v4 + v26);
    MEMORY[0x1EEE9AC00](v27);
    *(&v34 - 2) = a3;

    v29 = sub_188B656C4(sub_188B62628, (&v34 - 4), v28);

    if (v29)
    {
      sub_18905D7C8(a1, a3, 0);
      [v29 setNeedsLayout];
    }

    else
    {
    }

    return;
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  v13 = swift_beginAccess();
  v14 = *(v3 + v12);
  MEMORY[0x1EEE9AC00](v13);
  *(&v34 - 2) = a3;

  v15 = sub_188B656C4(sub_189063F5C, (&v34 - 4), v14);

  if (v15)
  {
    type metadata accessor for GlassGroupLayerView(0);
    v16 = sub_18A4A7C88();

    if (v16)
    {
      goto LABEL_15;
    }
  }

  v17 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  v18 = swift_beginAccess();
  if (*(*&v11[v17] + 16) != 1)
  {
    goto LABEL_7;
  }

  v19 = *(v4 + v12);
  MEMORY[0x1EEE9AC00](v18);
  *(&v34 - 2) = a3;

  v20 = sub_188B656C4(sub_189063F5C, (&v34 - 4), v19);

  if (!v20)
  {
LABEL_15:
    sub_18905DEA4(a1, a3);

    return;
  }

LABEL_7:
  v21 = *(v4 + v12);
  MEMORY[0x1EEE9AC00](v18);
  *(&v34 - 2) = a3;

  v22 = sub_188B656C4(sub_189063F5C, (&v34 - 4), v21);

  if (!v22)
  {
LABEL_10:
    sub_188BBAA3C(v9);
    v23 = sub_188B622F4(a1);
    if (v23)
    {
      v24 = v23;
      sub_18905DA8C(a1, 0);
    }

    v25 = sub_18905CB84(v9, a1, 0);
    sub_188B607CC(a1, a3);

    sub_1890639A8(v9, type metadata accessor for _Glass);
    return;
  }

  type metadata accessor for GlassGroupLayerView(0);
  if (sub_18A4A7C88())
  {

    goto LABEL_10;
  }

  v30 = sub_188B622F4(a1);
  if (v30)
  {
    v31 = v30;
    sub_18905DA8C(a1, 0);
  }

  v32 = *(v4 + v12);
  MEMORY[0x1EEE9AC00](v30);
  *(&v34 - 2) = a3;

  v33 = sub_188B656C4(sub_189063F5C, (&v34 - 4), v32);

  if (v33)
  {
    sub_18905D7C8(a1, a3, 0);
    [v33 setNeedsLayout];
  }

  else
  {
  }
}

size_t sub_188B607CC(void *a1, uint64_t a2)
{
  v24 = a2;
  v26 = a1;
  v6 = type metadata accessor for GlassPair(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v23 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v25 = v2;
  v22 = v12;
  v13 = *(v2 + v12);
  v14 = *(v13 + 16);

  if (v14)
  {
    v15 = 0;
    while (1)
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v3 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v5 = *(v7 + 72) * v15;
      v4 = type metadata accessor for GlassPair;
      sub_189063880(v13 + v3 + v5, v11, type metadata accessor for GlassPair);
      sub_188A34624(0, &qword_1ED490230);
      v2 = sub_18A4A7C88();
      sub_1890639A8(v11, type metadata accessor for GlassPair);
      if (v2)
      {
        break;
      }

      if (v14 == ++v15)
      {
        goto LABEL_6;
      }
    }

    v7 = v23;
    v14 = v24;
    sub_189063880(v24, v23, type metadata accessor for _Glass);
    v4 = v25;
    v16 = v26;
    *(v7 + *(v6 + 20)) = v26;
    v6 = v22;
    swift_beginAccess();
    v2 = *(v4 + v6);
    v17 = v16;
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v6) = v2;
    if (result)
    {
      goto LABEL_8;
    }

LABEL_14:
    result = sub_189212AD4(v2);
    v2 = result;
    *(v4 + v6) = result;
LABEL_8:
    if (v15 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    sub_189063DF0(v7, v2 + v3 + v5, type metadata accessor for GlassPair);
    *(v4 + v6) = v2;
    swift_endAccess();
  }

  else
  {
LABEL_6:

    v14 = v24;
    v4 = v25;
  }

  v19 = *(v14 + 8);
  v20 = *(v14 + 16);

  sub_188B65E58(v19, v20);
  [v4 setNeedsLayout];
  result = [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled];
  if (result)
  {
    return [v4 layoutIfNeeded];
  }

  return result;
}

void sub_188B60AAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v5 = [(UIView *)a1 _typedStorage];
  sub_18901EE3C(__src);

  sub_188B6CFA8(v3, v183);
  sub_18900FA40(__src, v182);
  sub_18900FA40(v183, &v182[18] + 8);
  if (!*&v182[10])
  {
    sub_188A3F5FC(v183, &qword_1EA939FB0);
    sub_188A3F5FC(__src, &qword_1EA939FB0);
    if (!*(&v182[28] + 1))
    {
      sub_188A3F5FC(v182, &qword_1EA939FB0);
      return;
    }

    goto LABEL_8;
  }

  sub_18900FA40(v182, v180);
  if (!*(&v182[28] + 1))
  {
    sub_188A3F5FC(v183, &qword_1EA939FB0);
    sub_188A3F5FC(__src, &qword_1EA939FB0);
    sub_188B6D288(v180);
LABEL_8:
    sub_188A3F5FC(v182, &qword_1EA939FB8);
    goto LABEL_9;
  }

  memcpy(__dst, &v182[18] + 8, sizeof(__dst));
  v6 = sub_189010258(v180, __dst);
  sub_188B6D288(__dst);
  sub_188A3F5FC(v183, &qword_1EA939FB0);
  sub_188A3F5FC(__src, &qword_1EA939FB0);
  sub_188B6D288(v180);
  sub_188A3F5FC(v182, &qword_1EA939FB0);
  if (v6)
  {
    return;
  }

LABEL_9:
  v7 = [(UIView *)v4 _typedStorage];
  sub_188B6CFA8(v3, v182);
  sub_18900FA40(v182, __src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939FC0);
  v8 = swift_allocObject();
  memcpy((v8 + 16), __src, 0x128uLL);
  v9 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v183[0] = *(&v7->super.isa + v9);
  *(&v7->super.isa + v9) = 0x8000000000000000;
  sub_188A40430(v8, &type metadata for _Material.Layer.LastAppliedMaterialLayerKey, isUniquelyReferenced_nonNull_native);
  *(&v7->super.isa + v9) = v183[0];
  swift_endAccess();

  sub_188A3F5FC(v182, &qword_1EA939FB0);
  sub_188B6D84C(v3 + 16, __src);
  v11 = *__src;
  v178 = v4;
  if (BYTE5(__src[7]) <= 1u)
  {
    if (!BYTE5(__src[7]))
    {
      type metadata accessor for UISDFBackdropView();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        goto LABEL_177;
      }

      v18 = v17;
      v9 = BYTE8(__src[0]);
      v19 = v4;
      v20 = [v18 layer];
      [v20 setScale_];

      v21 = [v18 layer];
      [v21 setTracksLuma_];

      v4 = v178;
      sub_18900F7CC();
      sub_18900F8B8();

LABEL_37:
      v158 = 1;
      v28 = *(v3 + 8);
      if (!v28)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v186[3] = __src[3];
    v186[4] = __src[4];
    v186[5] = __src[5];
    v186[6] = __src[6];
    v186[0] = __src[0];
    v186[1] = __src[1];
    v186[2] = __src[2];
    v29 = *&__src[7];
    LODWORD(v187) = BYTE4(__src[7]);
    type metadata accessor for UISDFView();
    v30 = swift_dynamicCastClass();
    if (!v30)
    {
      sub_18900FAB0();
      swift_allocError();
      *v114 = 0;
      swift_willThrow();
      goto LABEL_185;
    }

    v31 = v30;
    v32 = *(v30 + OBJC_IVAR____TtC5UIKit9UISDFView_filter + 16);
    v33 = *(v3 + 280);
    v34 = v4;
    if (v32)
    {
      if ((v33 & 1) == 0)
      {
LABEL_133:
        sub_18900FAB0();
        swift_allocError();
        *v136 = 1;
        swift_willThrow();

        goto LABEL_185;
      }
    }

    else if ((v33 & 1) != 0 || (sub_18A4A6D38() & 1) == 0)
    {
      goto LABEL_133;
    }

    v115 = OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization;
    v116 = *&v31[OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization];
    *&v31[OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization] = v29;
    if (v29 == v116 || (v117 = *&v31[OBJC_IVAR____TtC5UIKit9UISDFView_containerView]) == 0)
    {
LABEL_183:
      sub_18900EE60(v187);
      v153 = v34;
      v154 = [v31 layer];
      objc_opt_self();
      v155 = swift_dynamicCastObjCClassUnconditional();
      sub_18900DAF4(v155, v186);
      if (!v159)
      {
        v159 = 0;

        v156 = [v31 layer];
        objc_opt_self();
        v9 = swift_dynamicCastObjCClassUnconditional();
        v157 = sub_18A4A7258();
        [v9 setName_];

        [v31 setAutoresizingMask_];
        sub_188B6E97C(v186);

        goto LABEL_188;
      }

LABEL_185:
      sub_188B6E97C(v186);
      return;
    }

    v173 = v117;
    v118 = [v173 subviews];
    sub_188A34624(0, &qword_1ED48F680);
    v119 = sub_18A4A7548();

    v163 = v3;
    if (v119 >> 62)
    {
      v120 = sub_18A4A7F68();
      if (v120)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v120)
      {
LABEL_125:
        if (v120 < 1)
        {
          __break(1u);
LABEL_191:

          __break(1u);
          goto LABEL_192;
        }

        v121 = 0;
        v122 = v119 & 0xC000000000000001;
        v174 = v119 & 0xC000000000000001;
        v177 = v31;
        do
        {
          if (v122)
          {
            v123 = sub_188E49300(v121, v119);
          }

          else
          {
            v123 = *(v119 + 8 * v121 + 32);
          }

          v124 = v123;
          type metadata accessor for UISDFElementView();
          v125 = swift_dynamicCastClassUnconditional();
          v126 = *&v31[v115];
          v127 = OBJC_IVAR____TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView_gradientOvalization;
          v128 = *&v125[OBJC_IVAR____TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView_gradientOvalization];
          *&v125[OBJC_IVAR____TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView_gradientOvalization] = v126;
          if (v126 != v128)
          {
            v129 = v115;
            v130 = v34;
            v131 = v125;
            v132 = v120;
            v133 = v119;
            v134 = [v125 layer];
            v135 = *&v131[v127];
            v34 = v130;
            v115 = v129;
            v122 = v174;
            [v134 setGradientOvalization_];

            v119 = v133;
            v120 = v132;
            v31 = v177;
          }

          ++v121;
        }

        while (v120 != v121);
      }
    }

    v3 = v163;
    goto LABEL_183;
  }

  if (BYTE5(__src[7]) == 2)
  {
    sub_188A5EBAC(__src, v182);
    sub_188A53994(v182, v183);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939FC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939FD0);
    if (swift_dynamicCast())
    {
      sub_188A3F5FC(v180, &unk_1EA939FD8);
      type metadata accessor for _UIMaterialDefinitionView();
      if (swift_dynamicCastClass())
      {
        goto LABEL_45;
      }
    }

    else
    {
      v181 = 0;
      memset(v180, 0, sizeof(v180));
      sub_188A3F5FC(v180, &unk_1EA939FD8);
    }

    __swift_project_boxed_opaque_existential_0(v182, *(&v182[1] + 1));
    v9 = [v4 layer];
    sub_18A4A5928();

LABEL_45:
    __swift_destroy_boxed_opaque_existential_0Tm(v182);
    v158 = 0;
    v28 = *(v3 + 8);
    if (!v28)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (BYTE5(__src[7]) == 3)
  {
    if (*(*a2 + 16))
    {
      v9 = LOBYTE(__src[1]);
      v12 = BYTE1(__src[1]);
      sub_188B0944C(*&__src[0], *(&__src[0] + 1));
      if (v13)
      {

        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (!v14)
        {
          goto LABEL_177;
        }

        v15 = v14;
        v16 = v4;
        [v15 setMatchesTransform_];
        [v15 setMatchesPosition_];
        [v15 setHidesSourceView_];

        goto LABEL_37;
      }
    }

LABEL_192:
    sub_18A4A8398();
    __break(1u);
    return;
  }

  if (LODWORD(__src[7]) | (BYTE4(__src[7]) << 32) || *(&__src[6] + 1) | *&__src[0] | *&__src[6] | *(&__src[5] + 1) | *&__src[5] | *(&__src[4] + 1) | *&__src[4] | *(&__src[3] + 1) | *&__src[3] | *(&__src[2] + 1) | *&__src[2] | *(&__src[1] + 1) | *&__src[1] | *(&__src[0] + 1))
  {
    goto LABEL_37;
  }

  type metadata accessor for ContentLensingView();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_177;
  }

  v22 = [v4 subviews];
  sub_188A34624(0, &qword_1ED48F680);
  v23 = sub_18A4A7548();

  *&v182[0] = MEMORY[0x1E69E7CC0];
  v161 = v3;
  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_27;
    }

LABEL_153:
    v137 = MEMORY[0x1E69E7CC0];
    goto LABEL_154;
  }

  v24 = sub_18A4A7F68();
  if (!v24)
  {
    goto LABEL_153;
  }

LABEL_27:
  v9 = 0;
  v3 = v23 & 0xC000000000000001;
  v25 = v23 & 0xFFFFFFFFFFFFFF8;
  v187 = v23 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v3)
    {
      v26 = sub_188E49300(v9, v23);
    }

    else
    {
      if (v9 >= *(v25 + 16))
      {
        goto LABEL_148;
      }

      v26 = *(v23 + 8 * v9 + 32);
    }

    v4 = v26;
    v27 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_147;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
    }

    else
    {
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v25 = v187;
    }

    ++v9;
  }

  while (v27 != v24);
LABEL_135:
  v137 = *&v182[0];
LABEL_154:

  v3 = v161;
  if ((v137 & 0x8000000000000000) != 0 || (v137 & 0x4000000000000000) != 0)
  {
    goto LABEL_172;
  }

  v143 = *(v161 + 256);
  v145 = *(v143 + 16);
  v144 = (v143 + 16);
  v187 = *(v137 + 16);
  if (v187 != v145)
  {
    goto LABEL_176;
  }

  if (!v187)
  {
LABEL_174:
    v147 = v159;
LABEL_175:
    v159 = v147;

LABEL_188:
    v158 = 0;
    v4 = v178;
    v28 = *(v3 + 8);
    if (!v28)
    {
LABEL_47:
      v39 = [v4 layer];
      [v39 setCornerRadius_];

      v40 = [v4 layer];
      v41 = [v40 filters];

      if (v41)
      {
        v42 = sub_18A4A7548();

        v43 = *(v42 + 16);

        v164 = *(v3 + 240);
        v165 = v43;
        if (v43 != *(v164 + 16))
        {
          goto LABEL_143;
        }

        if (v43)
        {
          v44 = 0;
          v161 = v3;
          do
          {
            if (v44 >= *(v164 + 16))
            {
              __break(1u);
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              v80 = sub_18A4A7F68();
              goto LABEL_84;
            }

            v45 = (v164 + 32 + 40 * v44);
            v46 = v45[1];
            v9 = v45[2];
            v167 = v44 + 1;
            v47 = v45[4];
            v48 = *v45;
            *&v182[0] = 0x2E737265746C6966;
            *(&v182[0] + 1) = 0xE800000000000000;
            v166 = v47;

            MEMORY[0x18CFE22D0](v48, v46);
            MEMORY[0x18CFE22D0](46, 0xE100000000000000);
            v168 = v182[0];
            v49 = v9 + 64;
            v50 = 1 << *(v9 + 32);
            if (v50 < 64)
            {
              v51 = ~(-1 << v50);
            }

            else
            {
              v51 = -1;
            }

            v52 = v51 & *(v9 + 64);
            v53 = (v50 + 63) >> 6;
            v171 = v9;

            v54 = 0;
LABEL_59:
            if (v52)
            {
              goto LABEL_64;
            }

            while (1)
            {
              v55 = v54 + 1;
              if (__OFADD__(v54, 1))
              {
                __break(1u);
                goto LABEL_135;
              }

              if (v55 >= v53)
              {
                break;
              }

              v52 = *(v49 + 8 * v55);
              ++v54;
              if (v52)
              {
                v54 = v55;
LABEL_64:
                v56 = __clz(__rbit64(v52)) | (v54 << 6);
                v57 = (*(v171 + 48) + 16 * v56);
                v58 = *v57;
                v59 = v57[1];
                v9 = *(*(v171 + 56) + 8 * v56);
                v182[0] = v168;
                v175 = v9;

                v187 = v59;
                MEMORY[0x18CFE22D0](v58, v59);
                v60 = [v4 layer];
                v61 = sub_18A4A7258();
                v62 = [v60 valueForKeyPath_];

                if (v62)
                {
                  sub_18A4A7DE8();
                  swift_unknownObjectRelease();
                }

                else
                {
                  memset(__src, 0, 32);
                }

                v182[0] = __src[0];
                v182[1] = __src[1];
                if (!*(&__src[1] + 1))
                {
                  sub_188A3F5FC(v182, &qword_1EA934050);
                  if (v9)
                  {
                    v63 = 0;
LABEL_76:
                    v9 = v175;
                    goto LABEL_77;
                  }

LABEL_57:

                  goto LABEL_58;
                }

                sub_188A34624(0, &qword_1ED490230);
                if (!swift_dynamicCast())
                {
                  v63 = 1;
                  goto LABEL_76;
                }

                v63 = v183[0];
                if (!v9)
                {
                  if (v183[0])
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_57;
                }

                if (!v183[0])
                {
                  goto LABEL_76;
                }

                v9 = v175;
                v64 = v175;
                sub_18900FB04(v63);
                v65 = sub_18A4A7C88();
                sub_188DC900C(v63);

                if (v65)
                {

                  sub_188DC900C(v63);

                  goto LABEL_58;
                }

LABEL_77:
                v66 = [v178 layer];
                v67 = v9;
                v9 = sub_18A4A7258();

                [v66 setValue:v67 forKeyPath:v9];

                sub_188DC900C(v63);
LABEL_58:
                v52 &= v52 - 1;

                v4 = v178;
                goto LABEL_59;
              }
            }

            v44 = v167;
            v3 = v161;
          }

          while (v167 != v165);
        }
      }

      else if (*(*(v3 + 240) + 16))
      {
        goto LABEL_143;
      }

      v68 = [v4 layer];
      v69 = sub_18A4A7FF8();
      [v68 setCompositingFilter_];

      v70 = *(v3 + 208);
      v71 = sub_188A34624(0, qword_1ED4913C0);
      *&v182[2] = &protocol witness table for UIColor;
      *(&v182[1] + 1) = v71;
      *&v182[0] = v70;
      v72 = v70;
      UIView._background.setter(v182);
      [v4 setAlpha_];
      v73 = [v4 layer];
      [v73 setAllowsGroupBlending_];

      v74 = [v4 layer];
      v75 = *(v3 + 232);
      *&v76 = v75;
      [v74 setGain_];

      v77 = [v4 layer];
      [v77 setWantsExtendedDynamicRangeContent_];

      if (v158)
      {
        v9 = &selRef_stopSpinner;
        v78 = [v4 subviews];
        sub_188A34624(0, &qword_1ED48F680);
        v79 = sub_18A4A7548();

        if (v79 >> 62)
        {
          goto LABEL_151;
        }

        v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_84:

        v81 = *(v3 + 256);
        if (v80 != *(v81 + 16))
        {
LABEL_143:
          sub_18900FAB0();
          swift_allocError();
          *v141 = 1;
          goto LABEL_178;
        }

        v82 = [v4 *(v9 + 2016)];
        v9 = sub_18A4A7548();

        if (v9 >> 62)
        {
          v83 = sub_18A4A7F68();
          v84 = v159;
          if (v83)
          {
LABEL_87:
            v85 = 0;
            v86 = v9 & 0xC000000000000001;
            v187 = v9 & 0xFFFFFFFFFFFFFF8;
            v176 = v9 + 32;
            v162 = v3;
            v169 = v9 & 0xC000000000000001;
            v170 = v9;
            while (1)
            {
              if (v86)
              {
                v87 = sub_188E49300(v85, v9);
              }

              else
              {
                if (v85 >= *(v187 + 16))
                {
                  goto LABEL_149;
                }

                v87 = *(v176 + 8 * v85);
              }

              v4 = v87;
              v88 = *(v81 + 16);
              if (v85 == v88)
              {

                v4 = v178;
                goto LABEL_137;
              }

              if (v85 >= v88)
              {
                goto LABEL_150;
              }

              sub_188B6CFA8(v81 + 32 + 296 * v85, v182 + 8);
              memcpy(__src, v182 + 8, 0x128uLL);
              sub_188B6D84C(&__src[1], v183);
              if (v184)
              {
                v89 = v84;
                sub_188B6A1D4(v183);
              }

              else
              {
                v89 = v84;
                type metadata accessor for UISDFBackdropView();
                v90 = swift_dynamicCastClass();
                if (v90)
                {
                  v91 = v90;
                  v92 = __src[11];
                  v93 = __src[12];
                  v183[0] = MEMORY[0x1E69E7CC0];
                  v172 = v4;
                  sub_188B6479C(0, 4, 0);
                  v94 = v183[0];
                  v96 = *(v183[0] + 16);
                  v95 = *(v183[0] + 24);
                  v97 = v95 >> 1;
                  v98 = v96 + 1;
                  if (v95 >> 1 <= v96)
                  {
                    sub_188B6479C((v95 > 1), v96 + 1, 1);
                    v94 = v183[0];
                    v95 = *(v183[0] + 24);
                    v97 = v95 >> 1;
                  }

                  *(v94 + 16) = v98;
                  *(v94 + 8 * v96 + 32) = fabs(*&v92);
                  v99 = v96 + 2;
                  if (v97 < v99)
                  {
                    sub_188B6479C((v95 > 1), v99, 1);
                    v94 = v183[0];
                  }

                  *(v94 + 16) = v99;
                  *(v94 + 8 * v98 + 32) = fabs(*(&v92 + 1));
                  v101 = *(v94 + 16);
                  v100 = *(v94 + 24);
                  v102 = v101 + 1;
                  if (v101 >= v100 >> 1)
                  {
                    sub_188B6479C((v100 > 1), v101 + 1, 1);
                  }

                  v103 = v183[0];
                  *(v183[0] + 16) = v102;
                  *(v103 + 8 * v101 + 32) = fabs(*(&v93 + 1));
                  v104 = *(v103 + 24);
                  v105 = v101 + 2;
                  if (v105 > (v104 >> 1))
                  {
                    sub_188B6479C((v104 > 1), v105, 1);
                    v103 = v183[0];
                  }

                  *(v103 + 16) = v105;
                  *(v103 + 32 + 8 * v102) = fabs(*&v93);
                  v106 = *(v103 + 16);
                  if (!v106)
                  {
                    goto LABEL_191;
                  }

                  v107 = *(v103 + 32);
                  v108 = v106 - 1;
                  v86 = v169;
                  v9 = v170;
                  if (v106 != 1)
                  {
                    v109 = (v103 + 40);
                    do
                    {
                      v110 = *v109++;
                      v111 = v110;
                      if (v107 < v110)
                      {
                        v107 = v111;
                      }

                      --v108;
                    }

                    while (v108);
                  }

                  v112 = [v91 layer];
                  [v112 setMarginWidth_];
                }

                v3 = v162;
              }

              sub_188B60AAC(v4, a2);
              v84 = v89;
              sub_188B6D288(__src);
              if (v89)
              {
                break;
              }

              ++v85;

              v4 = v178;
              if (v85 == v83)
              {
                goto LABEL_137;
              }
            }

            return;
          }
        }

        else
        {
          v83 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v84 = v159;
          if (v83)
          {
            goto LABEL_87;
          }
        }

LABEL_137:

        v113 = *(v3 + 248);
        if (v113)
        {
          goto LABEL_138;
        }
      }

      else
      {
        v113 = *(v3 + 248);
        if (v113)
        {
LABEL_138:
          if (*(v113 + 16))
          {
            sub_188B6CFA8(v113 + 32, v182);
            v138 = [v4 maskView];
            if (v138)
            {
              v139 = v138;
              sub_188B60AAC(v138, a2);
              sub_188B6D288(v182);
            }

            else
            {
              sub_18900FAB0();
              swift_allocError();
              *v142 = 1;
              swift_willThrow();
              sub_188B6D288(v182);
            }

            return;
          }
        }
      }

      v140 = [v4 maskView];
      if (!v140)
      {
        return;
      }

      goto LABEL_143;
    }

LABEL_46:
    v35 = *v3;
    v9 = v4;

    v36 = swift_isUniquelyReferenced_nonNull_native();
    *&v182[0] = *a2;
    sub_188B6D924(v9, v35, v28, v36);

    *a2 = *&v182[0];
    v4 = v178;
    v37 = [v9 layer];
    v38 = sub_18A4A7258();
    [v37 setName_];

    goto LABEL_47;
  }

  while (2)
  {
    v9 = 0;
    v146 = v143 + 32;
    v147 = v159;
    while ((v137 & 0xC000000000000001) != 0)
    {
      v148 = v3;
      v149 = sub_188E49300(v9, v137);
LABEL_162:
      v150 = v149;
      if (v9 == *v144)
      {

        v3 = v148;
        goto LABEL_175;
      }

      if (v9 >= *v144)
      {
        goto LABEL_171;
      }

      sub_188B6CFA8(v146, v182 + 8);
      sub_188B60AAC(v150, a2);
      if (v159)
      {
        sub_188B6D288(v182 + 8);

        return;
      }

      ++v9;
      sub_188B6D288(v182 + 8);

      v146 += 296;
      v3 = v148;
      if (v187 == v9)
      {
        goto LABEL_175;
      }
    }

    if (v9 < *(v137 + 16))
    {
      v148 = v3;
      v149 = *(v137 + 8 * v9 + 32);
      goto LABEL_162;
    }

    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    v151 = sub_18A4A7F68();
    v143 = *(v3 + 256);
    v144 = (v143 + 16);
    if (v151 == *(v143 + 16))
    {
      v187 = sub_18A4A7F68();
      if (!v187)
      {
        goto LABEL_174;
      }

      continue;
    }

    break;
  }

LABEL_176:

LABEL_177:
  sub_18900FAB0();
  swift_allocError();
  *v152 = 0;
LABEL_178:
  swift_willThrow();
}

char *sub_188B622F4(unint64_t a1)
{
  v30 = a1;
  v2 = type metadata accessor for GlassPair(0);
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v24 = v6;

    if (!v7)
    {
      break;
    }

    v8 = 0;
    v9 = 0;
    v28 = v24 & 0xFFFFFFFFFFFFFF8;
    v29 = v24 & 0xC000000000000001;
    v27 = v24 + 32;
    v25 = v7;
    while (1)
    {
      if (v29)
      {
        v6 = sub_188E49160(v8, v24);
      }

      else
      {
        if (v8 >= *(v28 + 16))
        {
          goto LABEL_22;
        }

        v6 = *(v27 + 8 * v8);
      }

      v10 = v6;
      if (__OFADD__(v8++, 1))
      {
        break;
      }

      v12 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
      v13 = swift_beginAccess();
      v14 = *&v10[v12];
      v15 = *(v14 + 16);
      if (v15)
      {
        v31 = v9;
        v32 = v10;
        v33 = MEMORY[0x1E69E7CC0];

        sub_18A4A8208();
        v16 = v14 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
        v17 = *(v26 + 72);
        do
        {
          sub_189063880(v16, v4, type metadata accessor for GlassPair);
          v18 = *&v4[*(v2 + 20)];
          sub_1890639A8(v4, type metadata accessor for GlassPair);
          sub_18A4A81D8();
          sub_18A4A8218();
          sub_18A4A8228();
          sub_18A4A81E8();
          v16 += v17;
          --v15;
        }

        while (v15);

        v19 = v33;
        v7 = v25;
        v9 = v31;
        v10 = v32;
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      v33 = v30;
      MEMORY[0x1EEE9AC00](v13);
      *(&v23 - 2) = &v33;
      v20 = sub_188B21F78(sub_188B60228, (&v23 - 4), v19);

      if (v20)
      {

        return v10;
      }

      if (v8 == v7)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v22 = v6;
    v7 = sub_18A4A7F68();
    v6 = v22;
  }

LABEL_18:

  return 0;
}

uint64_t _layoutSizeInfo(uint64_t a1)
{
  v2 = MEMORY[0x1E695DF20];
  v3 = MEMORY[0x1E695DEC8];
  v4 = [MEMORY[0x1E696B098] valueWithCGSize:?];
  v5 = [v3 arrayWithObjects:{v4, objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1), 0}];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"layoutSize", @"intentionallyCollapsedHeight", 0}];

  return [v2 dictionaryWithObjects:v5 forKeys:v6];
}

uint64_t sub_188B627A8(uint64_t a1, int a2, int a3, int a4)
{
  v37 = a4;
  v34 = a3;
  v32 = a2;
  v5 = sub_18A4A4BE8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_18A4A5FA8();
  v12 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31[-v16];
  v19 = *(a1 + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_overrideContent);
  v18 = *(a1 + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_overrideContent + 8);
  v36 = a1;
  if (v19)
  {
    v33 = v19;
    v20 = v18;
  }

  else
  {
    v21 = *(a1 + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content);
    v20 = *(a1 + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content + 8);
    v33 = v21;
  }

  sub_188B6414C(v19);
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  sub_188E5A020();
  (*(v6 + 16))(v8, v11, v5);
  sub_188E5C34C(v11);
  sub_18A4A4B98();
  v23 = (*(v6 + 8))(v8, v5);
  if (v32)
  {
    MEMORY[0x18CFE0ED0](v23);
    v24 = v35;
    if (!IsReduceMotionEnabled)
    {
      sub_18A4A5F68();
    }

    sub_18A4A5F78();
  }

  else
  {
    sub_18A4A5F78();
    v24 = v35;
  }

  v25 = sub_188C449C0(v14, &v38);
  v26 = *(v12 + 8);
  v26(v14, v24, v25);
  v43[2] = v40;
  v43[3] = v41;
  v44[0] = v42[0];
  *(v44 + 9) = *(v42 + 9);
  v43[0] = v38;
  v43[1] = v39;
  if (v34)
  {
    sub_188C3DF9C(v43, &v38);
    type metadata accessor for NavigationBarTransitionContainer.Animator();
    v27 = swift_allocObject();
    v28 = v41;
    v27[3] = v40;
    v27[4] = v28;
    v27[5] = v42[0];
    *(v27 + 89) = *(v42 + 9);
    v29 = v39;
    v27[1] = v38;
    v27[2] = v29;
  }

  else
  {
    v27 = 0;
  }

  sub_188B62BD4(v33, v27);
  sub_188E51AF0(v20, v27, v37 & 1);

  sub_188AAFF20(v43);
  return (v26)(v17, v24);
}

uint64_t sub_188B62BD4(unint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____UINavigationBarHostedViewContainer_hostedViews;
  v6 = *(v2 + OBJC_IVAR____UINavigationBarHostedViewContainer_hostedViews);

  v7 = sub_188B42D44(a1, v6);

  if ((v7 & 1) == 0)
  {
    *(v2 + v5) = a1;

    v9 = OBJC_IVAR____UINavigationBarHostedViewContainer_wrapperViews;
    v133 = v2;
    v10 = *(v2 + OBJC_IVAR____UINavigationBarHostedViewContainer_wrapperViews);
    v11 = sub_188B8B8E4(MEMORY[0x1E69E7CC0]);
    v135 = a2;
    v130 = v9;
    if (v10 >> 62)
    {
      goto LABEL_116;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
    {
      v131 = a1;

      if (i)
      {
        a1 = 0;
        v136 = v10 & 0xC000000000000001;
        v134 = v10 & 0xFFFFFFFFFFFFFF8;
        v132 = v10;
        while (1)
        {
          if (v136)
          {
            v16 = sub_188E4A628(a1, v10);
            v17 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_105;
            }
          }

          else
          {
            if (a1 >= *(v134 + 16))
            {
              goto LABEL_106;
            }

            v16 = *(v10 + 8 * a1 + 32);
            v17 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_105;
            }
          }

          v10 = i;
          v18 = v16[OBJC_IVAR____UINavigationBarHostedViewWrapper_id];
          v19 = v16;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v163 = v11;
          v21 = sub_188A86B54(v18);
          v23 = v11;
          v24 = *(v11 + 16);
          v25 = (v22 & 1) == 0;
          v26 = __OFADD__(v24, v25);
          v27 = v24 + v25;
          if (v26)
          {
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
            goto LABEL_115;
          }

          v11 = v22;
          if (*(v23 + 24) < v27)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_16;
          }

          v32 = v21;
          sub_188FA40EC();
          v21 = v32;
          v29 = v163;
          if (v11)
          {
LABEL_6:
            v13 = v29[7];
            v14 = *(v13 + 8 * v21);
            *(v13 + 8 * v21) = v19;

            v11 = v29;
            goto LABEL_7;
          }

LABEL_17:
          v29[(v21 >> 6) + 8] |= 1 << v21;
          *(v29[6] + v21) = v18;
          *(v29[7] + 8 * v21) = v19;

          v30 = v29[2];
          v26 = __OFADD__(v30, 1);
          v31 = v30 + 1;
          if (v26)
          {
            goto LABEL_112;
          }

          v11 = v29;
          v29[2] = v31;
LABEL_7:
          ++a1;
          i = v10;
          v15 = v17 == v10;
          v10 = v132;
          if (v15)
          {
            goto LABEL_24;
          }
        }

        sub_188C4FEA8(v27, isUniquelyReferenced_nonNull_native);
        v21 = sub_188A86B54(v18);
        if ((v11 & 1) != (v28 & 1))
        {
          result = sub_18A4A87A8();
          __break(1u);
          return result;
        }

LABEL_16:
        v29 = v163;
        if (v11)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }

LABEL_24:

      v33 = MEMORY[0x1E69E7CC0];
      v170 = MEMORY[0x1E69E7CC0];
      v34 = v131[2];
      if (v34)
      {
        a1 = (v131 + 4);
        v10 = v133;
        v136 = OBJC_IVAR____UINavigationBarHostedViewContainer_disappearingViews;
        swift_beginAccess();
        v35 = 0;
        v134 = v34;
        v132 = a1;
        do
        {
          v36 = (a1 + 80 * v35);
          v37 = v36[1];
          v171[0] = *v36;
          v171[1] = v37;
          v38 = v36[3];
          v171[2] = v36[2];
          v171[3] = v38;
          v171[4] = v36[4];
          v39 = BYTE8(v171[0]);
          v40 = sub_188A86B54(BYTE8(v171[0]));
          if (v41)
          {
            v42 = v40;
            sub_188B8B3D0(v171, &v163);
            v43 = swift_isUniquelyReferenced_nonNull_native();
            *&v163 = v11;
            if (!v43)
            {
              sub_188FA40EC();
              v11 = v163;
            }

            v44 = *(*(v11 + 56) + 8 * v42);
            sub_188C4FF24(v42, v11);
            v45 = v44;
            v46 = sub_188B8BA58(v171, v135);
          }

          else
          {
            a1 = v11;
            v47 = *(v10 + v136);
            v11 = v47 & 0xFFFFFFFFFFFFFF8;
            if (v47 >> 62)
            {
              v10 = sub_18A4A7F68();
            }

            else
            {
              v10 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            sub_188B8B3D0(v171, &v163);

            v48 = 0;
            while (v10 != v48)
            {
              if ((v47 & 0xC000000000000001) != 0)
              {
                LODWORD(v131) = *(sub_188E4A628(v48, v47) + OBJC_IVAR____UINavigationBarHostedViewWrapper_id);
                swift_unknownObjectRelease();
                if (v131 == v39)
                {
LABEL_41:

                  v10 = v133;
                  swift_beginAccess();
                  v49 = sub_188B747B4(v48);
                  swift_endAccess();
                  v45 = v49;
                  v46 = sub_188B8BA58(v171, v135);
                  goto LABEL_43;
                }
              }

              else
              {
                if (v48 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_104:
                  __break(1u);
LABEL_105:
                  __break(1u);
LABEL_106:
                  __break(1u);
                  goto LABEL_107;
                }

                if (*(*(v47 + 8 * v48 + 32) + OBJC_IVAR____UINavigationBarHostedViewWrapper_id) == v39)
                {
                  goto LABEL_41;
                }
              }

              v26 = __OFADD__(v48++, 1);
              if (v26)
              {
                goto LABEL_104;
              }
            }

            MEMORY[0x1EEE9AC00](v50);
            v119[2] = v171;
            v46 = sub_188FE3D8C(sub_188FE6328, v119);
            v45 = v46;
            v10 = v133;
LABEL_43:
            v11 = a1;
            v34 = v134;
            a1 = v132;
          }

          MEMORY[0x18CFE2450](v46);
          if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_18A4A7588();
            v10 = v133;
          }

          ++v35;
          sub_18A4A75F8();

          sub_188B8BA00(v171);
        }

        while (v35 != v34);
        v33 = v170;
      }

      else
      {
        v10 = v133;
      }

      *&v130[v10] = v33;

      v51 = v135;
      v52 = v33 >> 62 ? sub_18A4A7F68() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v134 = v33;

      v126 = v11;
      if (v52)
      {
        break;
      }

LABEL_73:

      if (!v51)
      {
        v112 = 1 << *(v11 + 32);
        v113 = -1;
        if (v112 < 64)
        {
          v113 = ~(-1 << v112);
        }

        v114 = v113 & *(v11 + 64);
        v115 = (v112 + 63) >> 6;

        v116 = 0;
        v10 = &selRef_recordUIKitDragAndDropDistributionValue_forKey_;
        while (v114)
        {
          v117 = v116;
LABEL_99:
          v118 = __clz(__rbit64(v114));
          v114 &= v114 - 1;
          [*(*(v11 + 56) + ((v117 << 9) | (8 * v118))) removeFromSuperview];
        }

        while (1)
        {
          v117 = v116 + 1;
          if (__OFADD__(v116, 1))
          {
            goto LABEL_111;
          }

          if (v117 >= v115)
          {
          }

          v114 = *(v11 + 64 + 8 * v117);
          ++v116;
          if (v114)
          {
            v116 = v117;
            goto LABEL_99;
          }
        }
      }

      v80 = (v11 + 64);
      v81 = 1 << *(v11 + 32);
      v82 = -1;
      if (v81 < 64)
      {
        v82 = ~(-1 << v81);
      }

      v83 = v82 & *(v11 + 64);
      v84 = OBJC_IVAR____UINavigationBarHostedViewContainer_disappearingViews;
      a1 = (v81 + 63) >> 6;
      v134 = &v144;
      v124 = &v139;

      v85 = 0;
      v122 = v84;
      v123 = (v11 + 64);
      v121 = a1;
      if (!v83)
      {
LABEL_78:
        while (1)
        {
          v86 = v85 + 1;
          if (__OFADD__(v85, 1))
          {
            goto LABEL_110;
          }

          if (v86 >= a1)
          {
          }

          v83 = v80[v86];
          ++v85;
          if (v83)
          {
            goto LABEL_81;
          }
        }
      }

      while (1)
      {
        v86 = v85;
LABEL_81:
        v87 = *(*(v11 + 56) + ((v86 << 9) | (8 * __clz(__rbit64(v83)))));
        swift_beginAccess();
        v88 = v87;
        MEMORY[0x18CFE2450]();
        if (*((*(v10 + v84) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + v84) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
          v10 = v133;
        }

        sub_18A4A75F8();
        swift_endAccess();
        v89 = swift_allocObject();
        *(v89 + 16) = v10;
        *(v89 + 24) = v88;
        v168 = 0;
        v166 = 0u;
        v167 = 0u;
        v164 = 0u;
        v165 = 0u;
        v163 = 0u;
        v169 = -1;
        v136 = swift_allocObject();
        *(v136 + 16) = v88;
        v90 = swift_allocObject();
        *(v90 + 16) = sub_188FE62F0;
        *(v90 + 24) = v89;
        sub_188A3F29C(&v163, &v153, &qword_1EA9362D0);
        v131 = v88;
        v132 = v89;
        if (BYTE8(v157[1]) == 255)
        {
          sub_188C3DF9C(v135 + 16, &v158);
          v93 = v90;
          v94 = BYTE8(v157[1]);
          v95 = v88;
          v96 = v10;

          v15 = v94 == 255;
          v90 = v93;
          if (!v15)
          {
            sub_188A3F5FC(&v153, &qword_1EA9362D0);
          }
        }

        else
        {
          v160 = v155;
          v161 = v156;
          v162[0] = v157[0];
          *(v162 + 9) = *(v157 + 9);
          v158 = v153;
          v159 = v154;
          v91 = v88;
          v92 = v10;
        }

        v97 = swift_allocObject();
        v98 = v136;
        v97[2] = sub_188FE6668;
        v97[3] = v98;
        v99 = v97;
        v130 = v97;
        v100 = swift_allocObject();
        *(v100 + 16) = sub_188A4A9DC;
        *(v100 + 24) = v90;
        sub_188C3DF9C(&v158, &v153);
        sub_188C3DF9C(&v158, &v148);
        v101 = swift_allocObject();
        v102 = v151;
        *(v101 + 48) = v150;
        *(v101 + 64) = v102;
        *(v101 + 80) = v152[0];
        *(v101 + 89) = *(v152 + 9);
        v103 = v149;
        *(v101 + 16) = v148;
        *(v101 + 32) = v103;
        *(v101 + 112) = signpost_c2_entryLock_start;
        *(v101 + 120) = 0;
        v104 = swift_allocObject();
        v129 = v90;
        v105 = v104;
        *(v104 + 16) = 0;
        v106 = swift_allocObject();
        v106[2] = v105;
        v106[3] = sub_188FE6690;
        v106[4] = v100;
        v127 = v100;
        v128 = objc_opt_self();
        v10 = swift_allocObject();
        *(v10 + 16) = sub_188E5C7F8;
        *(v10 + 24) = v99;
        *&v145 = sub_188E3FE50;
        *(&v145 + 1) = v10;
        *&v143 = MEMORY[0x1E69E9820];
        *(&v143 + 1) = 1107296256;
        *&v144 = sub_188A4A968;
        *(&v144 + 1) = &block_descriptor_160;
        v125 = _Block_copy(&v143);

        sub_188C3DFF8(&v153, &v143);
        v107 = swift_allocObject();
        v108 = v146;
        *(v107 + 56) = v145;
        *(v107 + 72) = v108;
        *(v107 + 88) = v147[0];
        *(v107 + 97) = *(v147 + 9);
        v109 = v144;
        *(v107 + 24) = v143;
        *(v107 + 16) = v105;
        *(v107 + 40) = v109;
        *(v107 + 113) = 0;
        *(v107 + 120) = sub_188E5C7FC;
        *(v107 + 128) = v101;
        v141 = sub_188FE665C;
        v142 = v107;
        v137 = MEMORY[0x1E69E9820];
        v138 = 1107296256;
        v139 = sub_188A4A8F0;
        v140 = &block_descriptor_167_1;
        v110 = _Block_copy(&v137);

        *&v145 = sub_188E5C82C;
        *(&v145 + 1) = v106;
        *&v143 = MEMORY[0x1E69E9820];
        *(&v143 + 1) = 1107296256;
        *&v144 = sub_188ABD010;
        *(&v144 + 1) = &block_descriptor_170_1;
        v11 = _Block_copy(&v143);

        a1 = v125;
        [v128 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
        _Block_release(v11);
        _Block_release(v110);
        _Block_release(a1);

        sub_188C3E234(&v153);
        sub_188AAFF20(&v158);
        sub_188A3F5FC(&v163, &qword_1EA9362D0);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          break;
        }

        v83 &= v83 - 1;
        v85 = v86;
        v10 = v133;
        v11 = v126;
        v84 = v122;
        v80 = v123;
        a1 = v121;
        if (!v83)
        {
          goto LABEL_78;
        }
      }

LABEL_115:
      __break(1u);
LABEL_116:
      ;
    }

    a1 = 0;
    v53 = v134 & 0xC000000000000001;
    v54 = v134 & 0xFFFFFFFFFFFFFF8;
    v124 = &v144;
    v125 = &v164;
    v123 = &v139;
    v121 = v134 & 0xC000000000000001;
    v122 = v52;
    v120 = v134 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v53)
      {
        v55 = sub_188E4A628(a1, v134);
      }

      else
      {
        if (a1 >= *(v54 + 16))
        {
          goto LABEL_109;
        }

        v55 = *(v134 + 8 * a1 + 32);
      }

      v56 = v55;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_108;
      }

      v136 = a1 + 1;
      v57 = [v55 superview];
      if (v57)
      {
        v58 = v57;

        [v10 insertSubview:v56 atIndex:a1];
        if (!v51 || v58 == v10)
        {
LABEL_54:

          goto LABEL_55;
        }
      }

      else
      {
        [v10 insertSubview:v56 atIndex:a1];
        if (!v51)
        {
          goto LABEL_54;
        }
      }

      v11 = objc_opt_self();
      v59 = swift_allocObject();
      *(v59 + 16) = v56;
      v60 = swift_allocObject();
      *(v60 + 16) = sub_188F8656C;
      *(v60 + 24) = v59;
      *&v165 = sub_188E3FE50;
      *(&v165 + 1) = v60;
      *&v163 = MEMORY[0x1E69E9820];
      *(&v163 + 1) = 1107296256;
      *&v164 = sub_188A4A968;
      *(&v164 + 1) = &block_descriptor_90_2;
      v10 = _Block_copy(&v163);

      v61 = v56;

      [v11 performWithoutAnimation_];
      _Block_release(v10);
      v62 = swift_isEscapingClosureAtFileLocation();

      if (v62)
      {
        goto LABEL_113;
      }

      v168 = 0;
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      v165 = 0u;
      v163 = 0u;
      v169 = -1;
      v63 = swift_allocObject();
      v63[2] = v61;
      sub_188A3F29C(&v163, &v153, &qword_1EA9362D0);
      v131 = v11;
      v132 = v59;
      v130 = v61;
      if (BYTE8(v157[1]) == 255)
      {
        sub_188C3DF9C(v51 + 16, &v158);
        v65 = BYTE8(v157[1]);
        v66 = v61;
        if (v65 != 255)
        {
          sub_188A3F5FC(&v153, &qword_1EA9362D0);
        }
      }

      else
      {
        v160 = v155;
        v161 = v156;
        v162[0] = v157[0];
        *(v162 + 9) = *(v157 + 9);
        v158 = v153;
        v159 = v154;
        v64 = v61;
      }

      v67 = swift_allocObject();
      *(v67 + 16) = sub_188C4F5D8;
      *(v67 + 24) = v63;
      v68 = v67;
      v129 = v67;
      v69 = swift_allocObject();
      *(v69 + 16) = 0;
      *(v69 + 24) = 0;
      sub_188C3DF9C(&v158, &v153);
      sub_188C3DF9C(&v158, &v148);
      v10 = swift_allocObject();
      v70 = v151;
      *(v10 + 48) = v150;
      *(v10 + 64) = v70;
      *(v10 + 80) = v152[0];
      *(v10 + 89) = *(v152 + 9);
      v71 = v149;
      *(v10 + 16) = v148;
      *(v10 + 32) = v71;
      *(v10 + 112) = signpost_c2_entryLock_start;
      *(v10 + 120) = 0;
      v72 = swift_allocObject();
      *(v72 + 16) = 0;
      v73 = swift_allocObject();
      *(v73 + 16) = v72;
      *(v73 + 24) = sub_188FE6690;
      *(v73 + 32) = v69;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_188E5C7F8;
      *(v11 + 24) = v68;
      *&v145 = sub_188E3FE50;
      *(&v145 + 1) = v11;
      *&v143 = MEMORY[0x1E69E9820];
      *(&v143 + 1) = 1107296256;
      *&v144 = sub_188A4A968;
      *(&v144 + 1) = &block_descriptor_117_2;
      v127 = _Block_copy(&v143);
      v128 = v63;

      sub_188C3DFF8(&v153, &v143);
      v74 = swift_allocObject();
      v75 = v146;
      *(v74 + 56) = v145;
      *(v74 + 72) = v75;
      *(v74 + 88) = v147[0];
      *(v74 + 97) = *(v147 + 9);
      v76 = v144;
      *(v74 + 24) = v143;
      *(v74 + 16) = v72;
      *(v74 + 40) = v76;
      *(v74 + 113) = 0;
      *(v74 + 120) = sub_188E5C7FC;
      *(v74 + 128) = v10;
      v141 = sub_188FE665C;
      v142 = v74;
      v137 = MEMORY[0x1E69E9820];
      v138 = 1107296256;
      v139 = sub_188A4A8F0;
      v140 = &block_descriptor_124_1;
      v77 = _Block_copy(&v137);

      *&v145 = sub_188E5C82C;
      *(&v145 + 1) = v73;
      *&v143 = MEMORY[0x1E69E9820];
      *(&v143 + 1) = 1107296256;
      *&v144 = sub_188ABD010;
      *(&v144 + 1) = &block_descriptor_127_1;
      v78 = _Block_copy(&v143);

      v79 = v127;
      [v131 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
      _Block_release(v78);
      _Block_release(v77);
      _Block_release(v79);

      sub_188C3E234(&v153);
      sub_188AAFF20(&v158);
      sub_188A3F5FC(&v163, &qword_1EA9362D0);

      LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

      if (v73)
      {
        goto LABEL_114;
      }

      v51 = v135;
      v10 = v133;
      v11 = v126;
      v53 = v121;
      v52 = v122;
      v54 = v120;
LABEL_55:
      ++a1;
      if (v136 == v52)
      {
        goto LABEL_73;
      }
    }
  }

  return result;
}

uint64_t sub_188B6406C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188B640AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188B640E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188B6414C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double UIView.Material.resolved(using:size:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

char *sub_188B6479C(char *a1, int64_t a2, char a3)
{
  result = sub_188B22DC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_188B647BC(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v4 = sub_18A4A3118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v36 = v5;
  v10 = *(v5 + 16);
  v34 = v2;
  v31 = v10;
  v32 = v11;
  v10(v30 - v11, v2, v4, v9);
  v12 = MEMORY[0x1EEE86AF8];
  v30[1] = sub_188B64AD8(&qword_1ED48D448, MEMORY[0x1EEE86AF8]);
  sub_18A4A7E38();
  sub_188B64AD8(&unk_1ED48D450, v12);
  v33 = a2;
  v13 = sub_18A4A7248();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E78);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v30 - v17;
  v20 = *(v19 + 48);
  *(v30 - v17) = (v13 & 1) == 0;
  if (v13)
  {
    v21 = (*(v36 + 32))(&v18[v20], v7, v4, v16);
  }

  else
  {
    (*(v36 + 8))(v7, v4, v16);
    v22 = &v18[v20];
    v23 = v33;
    v24 = v31;
    v25 = (v31)(v22, v33, v4);
    v26 = MEMORY[0x1EEE9AC00](v25);
    v24(v30 - v32, v23, v4, v26);
    v21 = sub_18A4A7E88();
  }

  MEMORY[0x1EEE9AC00](v21);
  v27 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188A3F704(v18, v27, &qword_1EA937E78);
  v28 = *v27;
  (*(v36 + 32))(v35, &v27[*(v14 + 48)], v4);
  return v28;
}

uint64_t sub_188B64AD8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_188B64B20(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void *__return_ptr), uint64_t a5, uint64_t a6)
{
  type metadata accessor for _GlassGroupView();
  if (!swift_dynamicCastClass())
  {
    v9 = a2();
    v10 = [v9 userInterfaceStyle];

    if (v10 != a6)
    {
      a4(v13);
      v11 = v14;
      v12 = v15;
      __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
      UIMutableTraits.userInterfaceStyle.setter(a6, v11, v12);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }
  }
}

uint64_t sub_188B64BF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (*(v10 + 16))
  {
    v11 = *(type metadata accessor for GlassPair(0) - 8);
    sub_189063880(v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v8, type metadata accessor for _Glass);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for _Glass(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v8, v12, 1, v13);
  sub_188A3F29C(v8, v5, &unk_1EA93BA10);
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
    sub_188A3F5FC(v8, &unk_1EA93BA10);
    sub_188A3F5FC(v5, &unk_1EA93BA10);
    v15 = 1;
  }

  else
  {
    v15 = _Glass.isCompatible(_:)(a1);
    sub_188A3F5FC(v8, &unk_1EA93BA10);
    sub_1890639A8(v5, type metadata accessor for _Glass);
  }

  return v15 & 1;
}

uint64_t _Glass.isCompatible(_:)(uint64_t a1)
{
  v3 = type metadata accessor for _Glass(0);
  if (*(v1 + *(v3 + 48)) != *(a1 + *(v3 + 48)))
  {
    goto LABEL_20;
  }

  v4 = v3;
  v5 = *(v3 + 24);
  v6 = v1 + v5;
  v7 = a1 + v5;
  if ((MEMORY[0x18CFDDDF0](v1 + v5, a1 + v5) & 1) == 0)
  {
    goto LABEL_20;
  }

  v8 = type metadata accessor for _Glass._GlassVariant(0);
  if (*(v6 + v8[5]) != *(v7 + v8[5]) || *(v6 + v8[6]) != *(v7 + v8[6]))
  {
    goto LABEL_20;
  }

  v9 = v8[7];
  v10 = *(v6 + v9);
  v11 = *(v7 + v9);
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    sub_188A34624(0, qword_1ED4913C0);
    v12 = v11;
    v13 = v10;
    v14 = sub_18A4A7C88();

    if ((v14 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v11)
  {
    goto LABEL_20;
  }

  if (*(v1 + v4[10]) == *(a1 + v4[10]))
  {
    v15 = v4;
    v16 = *(v1 + 16);
    v17 = *(a1 + 16);
    if (v16)
    {
      if (!v17)
      {
        goto LABEL_20;
      }

      if (*(v1 + 8) != *(a1 + 8) || v16 != v17)
      {
        v18 = sub_18A4A86C8();
        v15 = v4;
        if ((v18 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else if (v17)
    {
      goto LABEL_20;
    }

    if (*(v1 + v15[9]) == *(a1 + v15[9]) && *(v1 + v15[7]) == *(a1 + v15[7]))
    {
      v19 = *(v1 + v15[8]) ^ *(a1 + v15[8]) ^ 1;
      return v19 & 1;
    }
  }

LABEL_20:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_188B65054()
{
  v1 = v0;
  v2 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  result = swift_beginAccess();
  v10 = *&v1[v8];
  if (*(v10 + 16))
  {
    v11 = *(type metadata accessor for GlassPair(0) - 8);
    sub_189063880(v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v4, type metadata accessor for _Glass);
    sub_188B6549C(v4, v7, type metadata accessor for _Glass);
    v12 = [v1 layer];
    [v12 setZPosition_];

    if (*&v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView])
    {
      sub_188B89FBC();
      v13 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_materializeAnimations;
      swift_beginAccess();
      v14 = *&v1[v13];
      v33 = v7;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = sub_18A4A8338() | 0x8000000000000000;
      }

      else
      {
        v19 = -1 << *(v14 + 32);
        v16 = ~v19;
        v15 = v14 + 64;
        v20 = -v19;
        if (v20 < 64)
        {
          v21 = ~(-1 << v20);
        }

        else
        {
          v21 = -1;
        }

        v17 = v21 & *(v14 + 64);
        v18 = v14;
      }

      v22 = 0;
      v32 = v16;
      v23 = (v16 + 64) >> 6;
      v34 = v18;
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      while (1)
      {
        v24 = v22;
        v25 = v17;
        v26 = v22;
        if (!v17)
        {
          break;
        }

LABEL_17:
        v27 = (v25 - 1) & v25;
        v28 = *(*(v18 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

        if (!v28)
        {
LABEL_23:
          sub_1890639A8(v33, type metadata accessor for _Glass);
          return sub_188E036A4();
        }

        while (1)
        {

          sub_18906192C();

          v22 = v26;
          v17 = v27;
          v18 = v34;
          if ((v34 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_19:
          v29 = sub_18A4A8378();
          if (v29)
          {
            v31 = v30;
            v35 = v29;
            sub_188A34624(0, &qword_1ED48F680);
            swift_dynamicCast();
            v28 = v36;
            v35 = v31;
            type metadata accessor for GlassGroupLayerView.MaterializeAnimation(0);
            swift_dynamicCast();
            v26 = v22;
            v27 = v17;
            if (v28)
            {
              continue;
            }
          }

          goto LABEL_23;
        }
      }

      while (1)
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v26 >= v23)
        {
          goto LABEL_23;
        }

        v25 = *(v15 + 8 * v26);
        ++v24;
        if (v25)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else
    {
      sub_188B68770();
      return sub_1890639A8(v7, type metadata accessor for _Glass);
    }
  }

  return result;
}

uint64_t sub_188B6549C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_188B65504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_188B6556C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_188B655D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_188A55538(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_188B65974(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_188A3F5FC(a1, &qword_1EA934050);
    sub_188BBAF5C(a2, a3, v9);

    return sub_188A3F5FC(v9, &qword_1EA934050);
  }

  return result;
}

void *sub_188B656C4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_188E49160(j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_188B657E8()
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
  v2 = sub_188AF5144(&type metadata for _GlassGroupTraitDefinition, sub_188AF4E14);
  os_unfair_lock_unlock(v1[2]);
  v3 = [v0 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933148);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

_OWORD *sub_188B65974(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_188B0944C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_188BBB000();
      v11 = v19;
      goto LABEL_8;
    }

    sub_188B65AC4(v16, a4 & 1);
    v11 = sub_188B0944C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_188A55538(a1, v22);
  }

  else
  {
    sub_188B65D7C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_188B65AC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC70);
  v33 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_188A55538(v24, v34);
      }

      else
      {
        sub_188A55598(v24, v34);
      }

      sub_18A4A8888();
      sub_18A4A7348();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_188A55538(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_188B65D7C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_188A55538(a4, (a5[7] + 32 * a1));
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

uint64_t sub_188B65E58(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_captureGroupName);
  v4 = *(v2 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_captureGroupName);
  v5 = *(v2 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_captureGroupName + 8);
  *v3 = result;
  v3[1] = a2;
  if (*(v2 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_addBackdropCaptureGroup) == 1)
  {
    if (a2)
    {
      if (v5)
      {
        v6 = v4 == result && v5 == a2;
        if (v6 || (sub_18A4A86C8() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v5)
    {
      return result;
    }

    v7 = *(v2 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView);
    if (v7)
    {
      v8 = v7;
      sub_188B667B4(v8);
    }
  }

LABEL_13:
}

uint64_t sub_188B65F14()
{
  result = type metadata accessor for GlassState(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_188B65FF8(double a1, double a2, double a3, double a4)
{
  v9 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView____lazy_storage___containerRegistry] = 0;
  v10 = &v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state];
  sub_18A4A2DF8();
  v12 = &v11[*(type metadata accessor for GlassState(0) + 20)];
  *v12 = 0;
  v12[8] = 1;
  v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_addBackdropCaptureGroup] = 1;
  v13 = &v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_captureGroupName];
  *v13 = 0;
  v13[1] = 0;
  v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_usesForeground] = 0;
  v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_applySmoothnessViaGaussianRadius] = 0;
  *&v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView] = 0;
  v14 = &v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_viewTagMapping];
  v15 = sub_188B66180(v9);
  *v14 = 2;
  v14[1] = v15;
  v16 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_materializeAnimations;
  *&v4[v16] = sub_188E8F624(v9);
  v18.receiver = v4;
  v18.super_class = type metadata accessor for GlassGroupLayerView(0);
  return objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
}

unint64_t sub_188B66180(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938C80);
    v3 = sub_18A4A8488();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_188A403F4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_188B6625C(uint64_t a1)
{
  v2 = v1;
  v4 = v1[1];
  if (*(v4 + 16))
  {
    v5 = sub_188A403F4(a1);
    if (v6)
    {
      return *(*(v4 + 56) + 8 * v5);
    }
  }

  v7 = *v2;
  *v2 *= 2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v2[1];
  sub_188B662F4(v7, a1, isUniquelyReferenced_nonNull_native);
  v2[1] = v10;
  return v7;
}

unint64_t sub_188B662F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_188A403F4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_188FA0BF0();
      result = v17;
      goto LABEL_8;
    }

    sub_188B66400(v14, a3 & 1);
    result = sub_188A403F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return sub_188A415E8(result, a2, a1, v19);
  }

  return result;
}

uint64_t sub_188B66400(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938C80);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
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

    if (v30)
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_188B667B4(void *a1)
{
  v2 = v1;
  if (v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_addBackdropCaptureGroup] != 1)
  {
    return 1;
  }

  v4 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *a1) + 0x58))())
  {
    v5 = [a1 layer];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      if (!*&v2[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_captureGroupName + 8])
      {
        v17 = [v2 traitCollection];
        sub_188E1ADFC();
        v19 = v18;

        if (!v19)
        {
          MEMORY[0x18CFE22D0](0x72477373616C475FLL, 0xEC0000002D70756FLL);
          result = [v2 superview];
          if (!result)
          {
            __break(1u);
            return result;
          }

          sub_18A4A82D8();
        }
      }

      v20 = sub_18A4A7258();

      [v7 setGroupName_];

      return 1;
    }
  }

  v8 = (*((*v4 & *a1) + 0x60))();
  v9 = v8;
  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_27:
    v11 = sub_18A4A7F68();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v11 != i; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = sub_188E49314(i, v9);
    }

    else
    {
      if (i >= *(v10 + 16))
      {
        goto LABEL_26;
      }

      v13 = *(v9 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v15 = sub_188B667B4(v13);

    if (v15)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t sub_188B66A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v11[3] = swift_getObjectType();
  v11[0] = a2;

  swift_unknownObjectRetain();
  v9(v11, a3, a4, a5);

  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

void sub_188B66B10(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_188A55598(a1, v15);
    type metadata accessor for UISDFView();
    if (swift_dynamicCast())
    {
      v6 = OBJC_IVAR____TtC5UIKit9UISDFView_applySmoothnessViaGaussianRadius;
      v14[OBJC_IVAR____TtC5UIKit9UISDFView_applySmoothnessViaGaussianRadius] = v5[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_applySmoothnessViaGaussianRadius];
      sub_18900EF90();
      if (v7 != a2)
      {
        v8 = v14[v6];
        v9 = [v14 layer];
        objc_opt_self();
        v10 = swift_dynamicCastObjCClassUnconditional();
        if (v8 == 1)
        {
          v11 = v10;
          v12 = sub_18A4A2D28();
          v13 = sub_18A4A7258();
          [v11 setValue:v12 forKey:v13];
        }

        else
        {
          [v10 setSmoothness_];
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_188B66CB0(id a1)
{
  v3 = type metadata accessor for GlassPair(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  result = swift_beginAccess();
  v10 = *(v1 + v8);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v49[0] = a1;
  if (v11)
  {
    aBlock = MEMORY[0x1E69E7CC0];

    sub_18A4A8208();
    v13 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_189063880(v13, v6, type metadata accessor for GlassPair);
      v15 = *&v6[*(v3 + 20)];
      sub_1890639A8(v6, type metadata accessor for GlassPair);
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v13 += v14;
      --v11;
    }

    while (v11);

    v12 = aBlock;
    a1 = v49[0];
  }

  if (v12 >> 62)
  {
    result = sub_18A4A7F68();
    v16 = result;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_43:
  }

  v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_43;
  }

LABEL_7:
  if (v16 >= 1)
  {
    v17 = 0;
    v50 = v12 & 0xC000000000000001;
    v49[1] = &v53;
    while (1)
    {
      if (v50)
      {
        v18 = sub_188E49300(v17, v12);
      }

      else
      {
        v18 = *(v12 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = [(UIView *)v18 _traitOverridesIfExist];
      if (v20)
      {
        v21 = v20;
        v22 = sub_18A4A7258();
        v23 = [(_UITraitOverrides *)v21 _hasTransformWithIdentifier:v22];

        if (v23)
        {
          v24 = [v21 userInterfaceStyle];

          if (v24 == a1)
          {
            goto LABEL_22;
          }
        }

        else
        {
        }
      }

      v25 = sub_18A4A7258();
      [(UIView *)v19 _removeChildTraitCollectionTransformWithIdentifier:v25];

      v26 = sub_18A4A7258();
      v27 = swift_allocObject();
      *(v27 + 16) = sub_188B64BE8;
      *(v27 + 24) = v7;
      v55 = sub_188A8EE7C;
      v56 = v27;
      aBlock = MEMORY[0x1E69E9820];
      v52 = 1107296256;
      v53 = sub_188A85DA8;
      v54 = &block_descriptor_118_2;
      v28 = _Block_copy(&aBlock);

      [(UIView *)v19 _addChildTraitCollectionTransformWithIdentifier:v26 transform:v28];
      _Block_release(v28);

LABEL_22:
      v29 = [(UIView *)v19 _typedStorage];
      v30 = OBJC_IVAR____UITypedStorage_storage;
      swift_beginAccess();
      v31 = *(&v29->super.isa + v30);
      if (*(v31 + 16) && (v32 = sub_188A403F4(&_s24_UIViewBackgroundDataKeyVN), (v33 & 1) != 0))
      {
        v34 = *(*(v31 + 56) + 8 * v32);
        swift_endAccess();
        v35 = (v34 + 16);
      }

      else
      {
        swift_endAccess();
        v35 = &xmmword_1ED48CF70;
        if (qword_1ED4906C0 != -1)
        {
          swift_once();
          v35 = &xmmword_1ED48CF70;
        }
      }

      sub_188A3F29C(v35, &aBlock, &unk_1EA933EC0);

      if (!v54 || (v36 = v57) == 0)
      {
        sub_188A3F5FC(&aBlock, &unk_1EA933EC0);
        v58 = 0u;
        v59 = 0u;
LABEL_10:
        sub_188A3F5FC(&v58, &qword_1EA934050);
        goto LABEL_11;
      }

      if (*(v57 + 16) && (v37 = sub_188B0944C(0x756F726765726F66, 0xEE0077656956646ELL), (v38 & 1) != 0))
      {
        sub_188A55598(*(v36 + 56) + 32 * v37, &v58);
      }

      else
      {
        v59 = 0u;
        v58 = 0u;
      }

      sub_188A3F5FC(&aBlock, &unk_1EA933EC0);
      if (!*(&v59 + 1))
      {
        goto LABEL_10;
      }

      sub_188A34624(0, &qword_1ED48F680);
      if (swift_dynamicCast())
      {
        v39 = aBlock;
        v40 = [(UIView *)aBlock _traitOverridesIfExist];
        if (v40)
        {
          v41 = v40;
          v42 = sub_18A4A7258();
          v43 = [(_UITraitOverrides *)v41 _hasTransformWithIdentifier:v42];

          if (v43)
          {
            v44 = [v41 userInterfaceStyle];

            if (v44 == v49[0])
            {

LABEL_41:
              a1 = v49[0];
              goto LABEL_12;
            }
          }

          else
          {
          }
        }

        v45 = sub_18A4A7258();
        [(UIView *)v39 _removeChildTraitCollectionTransformWithIdentifier:v45];

        v46 = sub_18A4A7258();
        v47 = swift_allocObject();
        *(v47 + 16) = sub_188B64BE8;
        *(v47 + 24) = v7;
        v55 = sub_189063F78;
        v56 = v47;
        aBlock = MEMORY[0x1E69E9820];
        v52 = 1107296256;
        v53 = sub_188A85DA8;
        v54 = &block_descriptor_125_0;
        v48 = _Block_copy(&aBlock);

        [(UIView *)v39 _addChildTraitCollectionTransformWithIdentifier:v46 transform:v48];

        _Block_release(v48);
        goto LABEL_41;
      }

LABEL_11:

LABEL_12:
      if (v16 == ++v17)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_188B6741C(id *a1, char *a2)
{
  v4 = type metadata accessor for GlassPair(0);
  v48 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_188B68E20();
  v8 = *a1;
  *a1 = v7;
  v9 = v7;

  [v9 setAutoresizingMask_];
  if (!*a1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = *a1;
  [a2 bounds];
  [v10 setFrame_];

  if (!*a1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [*a1 setAlpha_];
  v11 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v44 = a2;
  v12 = *&a2[v11];
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(v4 + 20);
    v15 = &v44[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_viewTagMapping];
    v46 = v12 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v47 = v14;

    v16 = 0;
    v45 = a1;
    while (v16 < *(v12 + 16))
    {
      sub_189063880(v46 + *(v48 + 72) * v16, v6, type metadata accessor for GlassPair);
      v17 = *&v6[v47];
      sub_1890639A8(v6, type metadata accessor for GlassPair);
      swift_beginAccess();
      v18 = *(v15 + 1);
      if (*(v18 + 16) && (v19 = sub_188A403F4(v17), (v20 & 1) != 0))
      {
        v21 = *(*(v18 + 56) + 8 * v19);
      }

      else
      {
        v21 = *v15;
        *v15 *= 2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = *(v15 + 1);
        v23 = v50;
        *(v15 + 1) = 0x8000000000000000;
        v24 = sub_188A403F4(v17);
        v26 = v23[2];
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          goto LABEL_27;
        }

        v30 = v25;
        if (v23[3] >= v29)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v40 = v24;
            sub_188FA0BF0();
            v24 = v40;
          }
        }

        else
        {
          sub_188B66400(v29, isUniquelyReferenced_nonNull_native);
          v24 = sub_188A403F4(v17);
          if ((v30 & 1) != (v31 & 1))
          {
            goto LABEL_34;
          }
        }

        a1 = v45;
        v32 = v50;
        if (v30)
        {
          *(v50[7] + 8 * v24) = v21;
        }

        else
        {
          v50[(v24 >> 6) + 8] |= 1 << v24;
          *(v32[6] + 8 * v24) = v17;
          *(v32[7] + 8 * v24) = v21;
          v33 = v32[2];
          v28 = __OFADD__(v33, 1);
          v34 = v33 + 1;
          if (v28)
          {
            goto LABEL_28;
          }

          v32[2] = v34;
        }

        *(v15 + 1) = v32;
      }

      swift_endAccess();
      v35 = type metadata accessor for _ShapeSetTagBox();
      v36 = objc_allocWithZone(v35);
      *&v36[OBJC_IVAR____TtC5UIKit15_ShapeSetTagBox_tag] = v21;
      v49.receiver = v36;
      v49.super_class = v35;
      v37 = objc_msgSendSuper2(&v49, sel_init);
      if (!*a1)
      {
        goto LABEL_29;
      }

      v38 = v37;
      ++v16;
      v39 = *a1;
      [v39 _addTrackedElementFor_with_];

      if (v13 == v16)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_23:
  if (!*a1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v41 = *a1;
  v42 = v44;
  sub_188B667B4(v41);

  if (*a1)
  {
    return [v42 addSubview_];
  }

LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

void sub_188B67840(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 subviews];
  sub_188A34624(0, &qword_1ED48F680);
  v7 = sub_18A4A7548();

  if (v7 >> 62)
  {
    v8 = sub_18A4A7F68();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_188E49300(i, v7);
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    [v10 _addTrackedElementFor_with_];
  }

LABEL_10:

  v12 = [v3 maskView];
  [v12 _addTrackedElementFor_with_];
}

void sub_188B67A2C(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC5UIKit9UISDFView_trackedElements;
  swift_beginAccess();
  v6 = *&v2[v5];

  v7 = sub_18903AD48(a1, v6);

  if (v7)
  {
    goto LABEL_2;
  }

  v8 = [v2 maskView];
  [v8 _addTrackedElementFor_with_];

  v9 = *&v2[OBJC_IVAR____TtC5UIKit9UISDFView_filter];
  v10 = *&v2[OBJC_IVAR____TtC5UIKit9UISDFView_filter + 8];
  v11 = v2[OBJC_IVAR____TtC5UIKit9UISDFView_filter + 16];
  if ((v11 & 1) != 0 || (!a2 ? (v12 = 0) : (v12 = *(a2 + OBJC_IVAR____TtC5UIKit15_ShapeSetTagBox_tag)), ((v12 ^ v10) & v9) == 0))
  {
    v13 = OBJC_IVAR____TtC5UIKit9UISDFView_containerView;
    if (!*&v2[OBJC_IVAR____TtC5UIKit9UISDFView_containerView])
    {

      v15 = sub_189010E24(v14, v9, v10, v11);
      v17 = v16;

      v18 = *&v2[v13];
      *&v2[v13] = v15;
      v19 = v15;

      v2[OBJC_IVAR____TtC5UIKit9UISDFView_isUsingPortaledContainer] = v17 & 1;
      [v2 bounds];
      [v19 setFrame_];

      if (!*&v2[v13])
      {
        goto LABEL_25;
      }

      [v2 addSubview_];
    }

    if ((v2[OBJC_IVAR____TtC5UIKit9UISDFView_isUsingPortaledContainer] & 1) == 0)
    {
      v20 = [objc_allocWithZone(type metadata accessor for UISDFElementView()) initWithFrame_];
      v21 = v20;
      v22 = *&v2[OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization];
      v23 = OBJC_IVAR____TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView_gradientOvalization;
      v24 = *&v20[OBJC_IVAR____TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView_gradientOvalization];
      *&v20[OBJC_IVAR____TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView_gradientOvalization] = v22;
      if (v22 != v24)
      {
        v25 = [v20 layer];
        [v25 setGradientOvalization_];
      }

      v26 = v21;
      v27 = [v26 layer];
      [v27 setHitTestsAsFill_];

      v28 = *&v2[v13];
      if (v28)
      {
        [v28 addSubview_];
        swift_beginAccess();
        v29 = *&v2[v5];
        if ((v29 & 0xC000000000000001) == 0)
        {
LABEL_22:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v79 = *&v2[v5];
          sub_188EA0414(v26, a1, isUniquelyReferenced_nonNull_native);
          *&v2[v5] = v79;
          swift_endAccess();
          v33 = [objc_allocWithZone(MEMORY[0x1E69793C0]) init];
          v34 = [a1 layer];
          [v33 setSourceLayer_];

          v35 = sub_18A4A7258();
          [v33 setKeyPath_];

          v36 = v33;
          [v36 setDuration_];
          [v36 setRemovedOnCompletion_];
          v37 = *MEMORY[0x1E69797E0];
          [v36 setFillMode_];

          v78 = v36;
          v38 = [v26 layer];

          v39 = sub_18A4A7258();
          [v38 addAnimation:v36 forKey:v39];

          v40 = [objc_allocWithZone(MEMORY[0x1E69793B8]) &selRef_inhibitSetupOrientation];
          [v40 setRemovedOnCompletion_];
          v41 = [a1 &selRef_lastOperation];
          [v40 &selRef:v41 setSuppressSpacing:? + 7];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_18A64B810;
          v43 = objc_opt_self();
          *(v42 + 32) = [v43 valueWithCGPoint_];
          *(v42 + 40) = [v43 valueWithCGPoint_];
          *(v42 + 48) = [v43 valueWithCGPoint_];
          *(v42 + 56) = [v43 valueWithCGPoint_];
          sub_188A34624(0, &qword_1ED48EC30);
          v44 = sub_18A4A7518();

          [v40 setSourcePoints_];

          [v40 setUsesNormalizedCoordinates_];
          [v40 setDuration_];
          v45 = sub_18A4A7258();
          [v40 setKeyPath_];

          [v40 setFillMode_];
          v46 = [v26 &selRef_lastOperation];

          v47 = sub_18A4A7258();
          [v46 addAnimation:v40 forKey:v47];

          v48 = [objc_allocWithZone(MEMORY[0x1E69793C0]) init];
          v49 = [a1 &selRef_lastOperation];
          [v48 setSourceLayer_];

          v50 = sub_18A4A7258();
          [v48 setKeyPath_];

          v51 = v48;
          [v51 setDuration_];
          [v51 setRemovedOnCompletion_];
          v52 = v37;
          [v51 setFillMode_];

          v53 = [v26 layer];
          v54 = sub_18A4A7258();
          [v53 addAnimation:v51 forKey:v54];

          v55 = [objc_allocWithZone(MEMORY[0x1E69793C0]) init];
          v56 = [a1 layer];
          [v55 setSourceLayer_];

          v57 = sub_18A4A7258();
          [v55 setKeyPath_];

          v58 = v55;
          [v58 setDuration_];
          [v58 setRemovedOnCompletion_];
          [v58 setFillMode_];

          v59 = [v26 &selRef_lastOperation];
          v60 = sub_18A4A7258();
          [v59 addAnimation:v58 forKey:v60];

          v61 = [objc_allocWithZone(MEMORY[0x1E69793C0]) init];
          v62 = [a1 &selRef_lastOperation];
          [v61 setSourceLayer_];

          v63 = sub_18A4A7258();
          [v61 setKeyPath_];

          v64 = v61;
          [v64 setDuration_];
          [v64 setRemovedOnCompletion_];
          [v64 setFillMode_];

          v65 = [v26 &selRef_lastOperation];
          v66 = sub_18A4A7258();
          [v65 addAnimation:v64 forKey:v66];

          v67 = [objc_allocWithZone(MEMORY[0x1E69793C0]) init];
          v68 = [a1 layer];
          [v67 setSourceLayer_];

          v69 = sub_18A4A7258();
          [v67 setKeyPath_];

          v70 = v67;
          [v70 setDuration_];
          [v70 setRemovedOnCompletion_];
          [v70 setFillMode_];

          v71 = [v26 layer];
          v72 = sub_18A4A7258();
          [v71 addAnimation:v70 forKey:v72];

          v73 = [objc_allocWithZone(MEMORY[0x1E69793C0]) init];
          v74 = [a1 layer];
          [v73 setSourceLayer_];

          v75 = sub_18A4A7258();
          [v73 setKeyPath_];

          v76 = v73;
          [v76 setDuration_];
          [v76 setRemovedOnCompletion_];
          [v76 setFillMode_];

          v77 = [v26 layer];
          v7 = sub_18A4A7258();
          [v77 addAnimation:v76 forKey:v7];

LABEL_2:
          return;
        }

        if (v29 < 0)
        {
          v30 = *&v2[v5];
        }

        else
        {
          v30 = v29 & 0xFFFFFFFFFFFFFF8;
        }

        v31 = sub_18A4A7F68();
        if (!__OFADD__(v31, 1))
        {
          *&v2[v5] = sub_18907C534(v30, v31 + 1);
          goto LABEL_22;
        }

        __break(1u);
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }
  }
}

void sub_188B68770()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - v3;
  v5 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v6 = *&v1[v5];
  if (!*(v6 + 16))
  {
    v14 = type metadata accessor for _Glass(0);
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    sub_188A3F5FC(v4, &unk_1EA93BA10);
    return;
  }

  v7 = *(type metadata accessor for GlassPair(0) - 8);
  sub_189063880(v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v4, type metadata accessor for _Glass);
  v8 = type metadata accessor for _Glass(0);
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  sub_188A3F5FC(v4, &unk_1EA93BA10);
  v9 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView;
  v10 = *&v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView];
  v11 = sub_18905D5C0();
  swift_beginAccess();
  v34 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v11 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_189014978(0, *(v13 + 16));
  }

  else
  {
    *(v11 + 16) = sub_1890BA45C(0, *(v13 + 24) >> 1);
  }

  swift_endAccess();

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = (v15 + 16);
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v15 + 16;
  *(v18 + 24) = v1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_188B67414;
  *(v19 + 24) = v18;
  v39 = sub_188E3FE50;
  v40 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_188A4A968;
  v38 = &block_descriptor_156_2;
  v20 = _Block_copy(&aBlock);
  v21 = v1;

  [v17 performWithoutAnimation_];
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (!*v16)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [*v16 setAlpha_];
  v22 = *v16;
  v23 = *&v1[v9];
  *&v1[v9] = *v16;
  v24 = v22;

  if (!v10)
  {
LABEL_12:

    return;
  }

  v25 = swift_allocObject();
  v26 = v34;
  *(v25 + 16) = v34;
  *(v25 + 24) = v15;
  swift_beginAccess();
  v27 = *(v15 + 16);
  if (!v27)
  {
    goto LABEL_17;
  }

  v28 = v26;

  v29 = [v27 layer];
  [v29 setCompositingFilter_];

  if ([v17 _isInAnimationBlockWithAnimationsEnabled])
  {
    [v28 setAlpha_];
    v30 = swift_allocObject();
    *(v30 + 16) = sub_189063A10;
    *(v30 + 24) = v25;
    v39 = sub_188A4A9DC;
    v40 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_188ABD010;
    v38 = &block_descriptor_165;
    v31 = _Block_copy(&aBlock);

    [v17 _addCompletion_];

    _Block_release(v31);
    goto LABEL_12;
  }

  [v28 removeFromSuperview];
  if (*v16)
  {
    v32 = [*v16 layer];
    [v32 setCompositingFilter_];

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_188B68D30()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188B68D68()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188B68DA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188B68DD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188B68E20()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  result = swift_beginAccess();
  v4 = *(v0 + v2);
  if (*(v4 + 16))
  {
    v5 = (v0 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_viewTagMapping);
    swift_beginAccess();
    v6 = *v5;
    v7 = v5[1];

    sub_18905EA80(v18, v4, v6, v7, 1);
    v9 = v8;

    v10 = sub_18905D5C0();
    v17 = MEMORY[0x1E69E7CC8];
    v11 = sub_18900CCB0(&v17, v10);

    v12 = (v1 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride);
    if (*(v1 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride + 8) == 1)
    {
      v13 = *(v1 + v2);
      if (!*(v13 + 16))
      {
        v16 = 0.0;
        goto LABEL_6;
      }

      v14 = *(type metadata accessor for GlassPair(0) - 8);
      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v12 = (v13 + *(type metadata accessor for _Glass(0) + 48) + v15);
    }

    v16 = *v12;
LABEL_6:
    sub_1890617B4(v11, v16);
    sub_188B66CB0(v9);
    sub_188B6D288(v18);
    type metadata accessor for _UIMaterialDefinitionView();
    return swift_dynamicCastClassUnconditional();
  }

  __break(1u);
  return result;
}

uint64_t sub_188B68FF8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_188B69068(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188B690B0()
{
  v0 = sub_18A4A6B28();
  v60 = *(v0 - 8);
  v61 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v57 = v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18A4A6558();
  v3 = *(v2 - 8);
  v65 = v2;
  v66 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v64 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63 = v56 - v6;
  v7 = sub_18A4A65A8();
  v59 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v58 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18A4A65B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74[0] = 0uLL;
  *&v74[1] = 1;
  *(&v74[1] + 8) = 0u;
  *(&v74[2] + 8) = 0u;
  *(&v74[3] + 8) = 0u;
  *(&v74[4] + 8) = 0u;
  *(&v74[5] + 8) = 0u;
  *(&v74[6] + 8) = 0u;
  *(&v74[7] + 5) = 0u;
  BYTE5(v74[8]) = 4;
  *&v67 = sub_18A4A7288();
  *(&v67 + 1) = v13;
  sub_18A4A8048();
  memset(&v74[11], 0, 32);
  v14 = objc_opt_self();
  v62 = [v14 clearColor];
  *&v74[14] = 0;
  DWORD2(v74[14]) = 1065353216;
  WORD6(v74[14]) = 1;
  v74[15] = MEMORY[0x1E69E7CC0];
  *&v74[17] = 0;
  v74[16] = MEMORY[0x1E69E7CC0];
  BYTE8(v74[17]) = 1;
  *&v74[18] = 0;
  sub_18A4A6568();
  *(&v74[13] + 1) = v15;
  sub_18A4A6298();
  if (*(&v68 + 1))
  {
    if (swift_dynamicCast())
    {
      if (*(&v72 + 1))
      {
        v67 = v71;
        v68 = v72;
        v69 = v73;
        sub_188EA2468(&v67, &v74[8] + 8);
        goto LABEL_8;
      }
    }

    else
    {
      v73 = 0;
      v71 = 0u;
      v72 = 0u;
    }
  }

  else
  {
    sub_188A3F5FC(&v67, &qword_1EA934050);
    v71 = 0u;
    v72 = 0u;
    v73 = 0;
  }

  sub_188A3F5FC(&v71, &unk_1EA937A80);
LABEL_8:
  v16 = [v14 clearColor];

  *&v74[13] = v16;
  sub_18A4A6B38();
  v17 = (*(v10 + 88))(v12, v9);
  if (v17 == *MEMORY[0x1E6981B90])
  {
    (*(v10 + 96))(v12, v9);
    v18 = *v12;
    v19 = v12[1];
    v20 = v12[2];
    v21 = v12[3];
    sub_188B6A1D4(&v74[1]);
    *&v74[1] = 1;
    *(&v74[1] + 8) = 0u;
    *(&v74[2] + 8) = 0u;
    *(&v74[3] + 8) = 0u;
    *(&v74[4] + 8) = 0u;
    *(&v74[5] + 8) = 0u;
    *(&v74[6] + 8) = 0u;
    *(&v74[7] + 5) = 0u;
    BYTE5(v74[8]) = 4;
    if (qword_1ED48E998 != -1)
    {
      swift_once();
    }

    sub_188BA4D84(v18, v19, v20, v21);
    v23 = v22;

    *&v74[13] = v23;
    goto LABEL_32;
  }

  if (v17 == *MEMORY[0x1E6981BA0])
  {
    (*(v10 + 96))(v12, v9);
    v24 = v58;
    (*(v59 + 32))(v58, v12, v7);
    sub_18A4A6588();
    *&v67 = v25;
    WORD4(v67) = 256;
    *&v68 = 0;
    BYTE8(v68) = 0;
    v70 = 0;
    sub_188C3B560(&v67, &v74[1]);
    sub_18A4A6578();
    if (qword_1ED48E998 != -1)
    {
      v52 = v26;
      v53 = v27;
      v54 = v28;
      v55 = v29;
      swift_once();
      v29 = v55;
      v28 = v54;
      v27 = v53;
      v26 = v52;
    }

    sub_188BA4D84(v26, v27, v28, v29);
    v31 = v30;

    *&v74[13] = v31;
    v32 = sub_18A4A6598();
    v33 = *(v32 + 16);
    if (v33)
    {
      v56[1] = v32;
      v57 = v7;
      v34 = *(v66 + 16);
      v35 = v32 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
      v61 = *(v66 + 72);
      v62 = v34;
      v66 += 16;
      v60 = v66 - 8;
      v36 = MEMORY[0x1E69E7CC0];
      do
      {
        v38 = v62;
        v39 = v63;
        v40 = v65;
        (v62)(v63, v35, v65);
        v41 = v64;
        v38(v64, v39, v40);
        sub_188B6A220(v41, &v67);
        v42 = v67;
        v43 = v68;
        v44 = v69;
        (*v60)(v39, v40);
        if (*(&v67 + 1))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_188B6CE78(0, *(v36 + 2) + 1, 1, v36);
          }

          v46 = *(v36 + 2);
          v45 = *(v36 + 3);
          if (v46 >= v45 >> 1)
          {
            v36 = sub_188B6CE78((v45 > 1), v46 + 1, 1, v36);
          }

          *(v36 + 2) = v46 + 1;
          v37 = &v36[40 * v46];
          *(v37 + 2) = v42;
          *(v37 + 3) = v43;
          *(v37 + 8) = v44;
        }

        v35 += v61;
        --v33;
      }

      while (v33);

      v7 = v57;
      v24 = v58;
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
    }

    (*(v59 + 8))(v24, v7);
    *&v74[15] = v36;
    goto LABEL_32;
  }

  if (v17 == *MEMORY[0x1E6981B98])
  {
    sub_188B6A1D4(&v74[1]);
    *&v74[1] = 1;
    *(&v74[1] + 8) = 0u;
    *(&v74[2] + 8) = 0u;
    *(&v74[3] + 8) = 0u;
    *(&v74[4] + 8) = 0u;
    *(&v74[5] + 8) = 0u;
    *(&v74[6] + 8) = 0u;
    *(&v74[7] + 5) = 0u;
    BYTE5(v74[8]) = 4;
LABEL_29:
    (*(v10 + 8))(v12, v9);
LABEL_32:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934238);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_18A64BFB0;
    memcpy((v50 + 32), v74, 0x128uLL);
    return v50;
  }

  if (v17 != *MEMORY[0x1E6981B88])
  {
    goto LABEL_29;
  }

  (*(v10 + 96))(v12, v9);
  v48 = v60;
  v47 = v61;
  v49 = v57;
  (*(v60 + 32))(v57, v12, v61);
  v50 = sub_189068C64(v49, 0x200000000, 0, 0, 1, 0);
  (*(v48 + 8))(v49, v47);
  sub_188B6D288(v74);
  return v50;
}

unint64_t sub_188B69960()
{
  result = qword_1ED48E050;
  if (!qword_1ED48E050)
  {
    sub_18A4A6728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48E050);
  }

  return result;
}

id sub_188B699B8(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v2 = sub_18A4A65F8();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18A4A6B28();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A6678();
  v9 = sub_18A4A6638();
  sub_18A4A6658();
  v10 = sub_18A4A6658();
  sub_18A4A6678();
  v11 = sub_18A4A6648();
  sub_18A4A6658();
  v12 = sub_18A4A6658();
  v13 = 2;
  if (v10 == v9)
  {
    v13 = 3;
  }

  if (v12 == v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10 == v9;
  }

  sub_18A4A6618();
  v15 = sub_18A4A65C8();
  v17 = sub_189068C64(v8, v69 & 0xFFFFFFFFFFLL, v15, v16, 0, v14);
  (*(v6 + 8))(v8, v5);
  v18 = *(v17 + 16);
  if (v18 != 1)
  {
    if (!v18)
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v17;
  }

  sub_188B6CFA8(v17 + 32, v82);
  sub_18A4A6668();
  v82[27] = v19;
  sub_18A4A65E8();
  LODWORD(v82[29]) = v20;
  sub_18A4A6608();
  v22 = v67;
  v21 = v68;
  v23 = (*(v67 + 88))(v4, v68);
  if (v23 == *MEMORY[0x1E6981BB8])
  {
    (*(v22 + 96))(v4, v21);
    sub_188BBA230(&v82[17], &v72);
    if (swift_dynamicCast())
    {
      v25 = v70;
      v24 = v71;

      if (v25 != sub_18A4A7288() || v24 != v26)
      {
        v66 = sub_18A4A86C8();

        if ((v66 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_20;
      }
    }

LABEL_20:
    LOBYTE(v72) = 0;
    v70 = sub_188B6CFEC();
    v71 = v46;
    sub_18A4A8048();
    sub_188EA2468(&v72, &v82[17]);
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934238);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_18A64BFB0;
    memcpy((v17 + 32), v82, 0x128uLL);
    return v17;
  }

  if (v23 == *MEMORY[0x1E6981BA8])
  {
    (*(v22 + 96))(v4, v21);
    v27 = *(*v4 + 16);
    v28 = *(*v4 + 24);
    v29 = *(*v4 + 32);
    v30 = *(*v4 + 40);
    v31 = *(*v4 + 48);
    v32 = *(*v4 + 56);
    v34 = *(*v4 + 64);
    v33 = *(*v4 + 72);
    v35 = *(*v4 + 88);
    v68 = *(*v4 + 80);
    v69 = v33;
    v67 = v35;
    sub_18A4A65D8();
    if ((v36 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      sub_18A4A65D8();
    }

    v37 = sub_18A4A7288();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64D660;
    *(inited + 32) = sub_18A4A7288();
    *(inited + 40) = v41;
    v42 = objc_opt_self();
    v72 = v27;
    v73 = v28;
    v74 = v29;
    v75 = v30;
    v76 = v31;
    v77 = v32;
    v78 = v34;
    v79 = v69;
    v80 = v68;
    v81 = v67;
    result = [v42 valueWithCAColorMatrix_];
    if (result)
    {
      v44 = result;

      *(inited + 48) = v44;
      *(inited + 56) = 0x616C437475706E69;
      *(inited + 64) = 0xEA0000000000706DLL;
      *(inited + 72) = sub_18A4A7738();
      *(inited + 80) = 0xD000000000000015;
      *(inited + 88) = 0x800000018A688B90;
      sub_18A4A6678();
      sub_18A4A6628();
      sub_18A4A6658();
      sub_18A4A6658();
      *(inited + 96) = sub_18A4A7668();
      v45 = sub_188E8CFB8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038);
LABEL_26:
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934240);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_18A64BFB0;
      *(v65 + 32) = v37;
      *(v65 + 40) = v39;
      *(v65 + 56) = 0;
      *(v65 + 64) = 0;
      *(v65 + 48) = v45;

      *&v82[30] = v65;
      goto LABEL_30;
    }

    __break(1u);
  }

  else
  {
    if (v23 != *MEMORY[0x1E6981BB0])
    {

      (*(v22 + 8))(v4, v21);
      goto LABEL_30;
    }

    (*(v22 + 96))(v4, v21);
    v47 = *(*v4 + 16);
    v48 = *(*v4 + 24);
    v49 = *(*v4 + 32);
    v50 = *(*v4 + 40);
    v51 = *(*v4 + 48);
    v52 = *(*v4 + 56);
    v54 = *(*v4 + 64);
    v53 = *(*v4 + 72);
    v55 = *(*v4 + 80);
    v68 = *(*v4 + 88);
    v69 = v55;
    sub_18A4A65D8();
    v57 = v56 & 0x7FFFFFFF;
    v58 = 0;
    if (v57 <= 2139095039)
    {
      sub_18A4A65D8();
    }

    LODWORD(v67) = v58;
    v37 = sub_18A4A7288();
    v39 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030);
    v60 = swift_initStackObject();
    *(v60 + 16) = xmmword_18A64C6E0;
    *(v60 + 32) = sub_18A4A7288();
    *(v60 + 40) = v61;
    v62 = objc_opt_self();
    v72 = v47;
    v73 = v48;
    v74 = v49;
    v75 = v50;
    v76 = v51;
    v77 = v52;
    v78 = v54;
    v79 = v53;
    v80 = v69;
    v81 = v68;
    result = [v62 valueWithCAColorMatrix_];
    if (result)
    {
      v63 = result;

      *(v60 + 48) = v63;
      *(v60 + 56) = sub_18A4A7288();
      *(v60 + 64) = v64;
      sub_188A34624(0, &qword_1ED48FD80);
      *(v60 + 72) = sub_18A4A7C58();
      *(v60 + 80) = 0x616C437475706E69;
      *(v60 + 88) = 0xEA0000000000706DLL;
      *(v60 + 96) = sub_18A4A7738();
      *(v60 + 104) = 0xD000000000000015;
      *(v60 + 112) = 0x800000018A688B90;
      sub_18A4A6678();
      sub_18A4A6628();
      sub_18A4A6658();
      sub_18A4A6658();
      *(v60 + 120) = sub_18A4A7668();
      v45 = sub_188E8CFB8(v60);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038);
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_5UIKit9_MaterialV5LayerV4KindO(uint64_t a1)
{
  if ((*(a1 + 117) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 117) & 7;
  }
}

id sub_188B6A220@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v327 = a2;
  v3 = sub_18A4A64B8();
  v289 = *(v3 - 8);
  v290 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v288 = &v278 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B010);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v281 = &v278 - v6;
  v7 = sub_18A4A64C8();
  v283 = *(v7 - 8);
  v284 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v280 = &v278 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v279 = &v278 - v10;
  v286 = sub_18A4A64E8();
  v282 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v285 = &v278 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B018);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v293 = &v278 - v13;
  v14 = sub_18A4A64F8();
  v295 = *(v14 - 8);
  v296 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v287 = &v278 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v291 = &v278 - v17;
  v294 = sub_18A4A6528();
  v299 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v297 = &v278 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B020);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v301 = &v278 - v20;
  v21 = sub_18A4A6438();
  v303 = *(v21 - 8);
  v304 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v292 = &v278 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v298 = &v278 - v24;
  v302 = sub_18A4A6468();
  v306 = *(v302 - 8);
  MEMORY[0x1EEE9AC00](v302);
  v305 = &v278 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B028);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v307 = &v278 - v27;
  v311 = sub_18A4A63B8();
  v309 = *(v311 - 8);
  MEMORY[0x1EEE9AC00](v311);
  v300 = (&v278 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v308 = &v278 - v30;
  v313 = sub_18A4A63F8();
  v310 = *(v313 - 8);
  MEMORY[0x1EEE9AC00](v313);
  v312 = &v278 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_18A4A6428();
  v315 = *(v32 - 8);
  v316 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v314 = &v278 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_18A4A6398();
  v318 = *(v34 - 8);
  v319 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v317 = &v278 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_18A4A6358();
  v321 = *(v36 - 8);
  *&v322 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v320 = &v278 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_18A4A62D8();
  v323 = *(v38 - 8);
  *&v324 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v278 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_18A4A6328();
  v325 = *(v41 - 8);
  *&v326 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v278 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_18A4A62B8();
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v278 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_18A4A6538();
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = (&v278 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18A4A6548();
  v52 = (*(v49 + 88))(v51, v48);
  if (v52 == *MEMORY[0x1E6981B28])
  {
    v328 = sub_18A4A7288();
    v54 = v53;
    v55 = sub_188E8CFB8(MEMORY[0x1E69E7CC0]);
    v56 = sub_18A4A6558();
    (*(*(v56 - 8) + 8))(a1, v56);
    result = (*(v49 + 8))(v51, v48);
LABEL_9:
    v95 = 0;
LABEL_10:
    v96 = v327;
    *v327 = v328;
    v96[1] = v54;
    v96[2] = v55;
    v96[3] = v95;
    v96[4] = 0;
    return result;
  }

  v278 = a1;
  if (v52 == *MEMORY[0x1E6981AF8])
  {
    (*(v49 + 96))(v51, v48);
    (*(v45 + 32))(v47, v51, v44);
    v328 = sub_18A4A7288();
    v54 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_18A64BFB0;
    *(v59 + 32) = sub_18A4A7288();
    *(v59 + 40) = v60;
    sub_18A4A62A8();
    *(v59 + 48) = sub_18A4A2D28();
    v61 = sub_188E8CFB8(v59);
    swift_setDeallocating();
    sub_188A3F5FC(v59 + 32, &qword_1EA93B038);
    swift_deallocClassInstance();
    v62 = sub_18A4A6558();
    (*(*(v62 - 8) + 8))(v278, v62);
    v55 = v61;
    result = (*(v45 + 8))(v47, v44);
    goto LABEL_9;
  }

  if (v52 == *MEMORY[0x1E6981B08])
  {
    (*(v49 + 96))(v51, v48);
    v63 = v325;
    v64 = v43;
    v65 = v51;
    v66 = v326;
    (*(v325 + 32))(v43, v65, v326);
    v328 = sub_18A4A7288();
    v323 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030);
    v68 = swift_allocObject();
    v324 = xmmword_18A64C6E0;
    *(v68 + 16) = xmmword_18A64C6E0;
    *(v68 + 32) = sub_18A4A7288();
    *(v68 + 40) = v69;
    sub_18A4A6308();
    v322 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
    v71 = swift_allocObject();
    *(v71 + 16) = v324;
    v72 = MEMORY[0x1E69E6448];
    *(v71 + 56) = MEMORY[0x1E69E6448];
    v73 = v322;
    *(v71 + 32) = v322;
    *(v71 + 88) = v72;
    *(v71 + 64) = DWORD1(v73);
    *(v71 + 120) = v72;
    *(v71 + 96) = DWORD2(v73);
    *(v71 + 152) = v72;
    *(v71 + 128) = HIDWORD(v73);
    sub_188A34624(0, &qword_1EA93D840);
    *(v68 + 48) = MEMORY[0x18CFE2B40](v71);
    *(v68 + 56) = sub_18A4A7288();
    *(v68 + 64) = v74;
    sub_18A4A62E8();
    v322 = v75;
    v76 = swift_allocObject();
    *(v76 + 16) = v324;
    *(v76 + 56) = v72;
    v77 = v322;
    *(v76 + 32) = v322;
    *(v76 + 88) = v72;
    *(v76 + 64) = DWORD1(v77);
    *(v76 + 120) = v72;
    *(v76 + 96) = DWORD2(v77);
    *(v76 + 152) = v72;
    *(v76 + 128) = HIDWORD(v77);
    *(v68 + 72) = MEMORY[0x18CFE2B40]();
    *(v68 + 80) = sub_18A4A7288();
    *(v68 + 88) = v78;
    sub_18A4A6318();
    v322 = v79;
    v80 = swift_allocObject();
    *(v80 + 16) = v324;
    *(v80 + 56) = v72;
    v81 = v322;
    *(v80 + 32) = v322;
    *(v80 + 88) = v72;
    *(v80 + 64) = DWORD1(v81);
    *(v80 + 120) = v72;
    *(v80 + 96) = DWORD2(v81);
    *(v80 + 152) = v72;
    *(v80 + 128) = HIDWORD(v81);
    *(v68 + 96) = MEMORY[0x18CFE2B40]();
    *(v68 + 104) = sub_18A4A7288();
    *(v68 + 112) = v82;
    sub_18A4A62F8();
    v322 = v83;
    v84 = swift_allocObject();
    *(v84 + 16) = v324;
    *(v84 + 56) = v72;
    v85 = v322;
    *(v84 + 32) = v322;
    *(v84 + 88) = v72;
    *(v84 + 64) = DWORD1(v85);
    *(v84 + 120) = v72;
    *(v84 + 96) = DWORD2(v85);
    *(v84 + 152) = v72;
    *(v84 + 128) = HIDWORD(v85);
    v54 = v323;
    *(v68 + 120) = MEMORY[0x18CFE2B40]();
    v55 = sub_188E8CFB8(v68);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v86 = sub_18A4A6558();
    (*(*(v86 - 8) + 8))(v278, v86);
    result = (*(v63 + 8))(v64, v66);
    goto LABEL_9;
  }

  if (v52 == *MEMORY[0x1E6981B00])
  {
    (*(v49 + 96))(v51, v48);
    v88 = v323;
    v87 = v324;
    (*(v323 + 32))(v40, v51, v324);
    v328 = sub_18A4A7288();
    v90 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64BFB0;
    *(inited + 32) = sub_18A4A7288();
    *(inited + 40) = v92;
    sub_18A4A62A8();
    *(inited + 48) = sub_18A4A2D28();
    v55 = sub_188E8CFB8(inited);
    swift_setDeallocating();
    sub_188A3F5FC(inited + 32, &qword_1EA93B038);
    v93 = sub_18A4A6558();
    (*(*(v93 - 8) + 8))(v278, v93);
    v94 = v40;
    v54 = v90;
    result = (*(v88 + 8))(v94, v87);
    goto LABEL_9;
  }

  if (v52 != *MEMORY[0x1E6981B10])
  {
    if (v52 == *MEMORY[0x1E6981B30])
    {
      (*(v49 + 96))(v51, v48);
      v107 = v317;
      v108 = v318;
      v109 = v319;
      (*(v318 + 32))(v317, v51, v319);
      v328 = sub_18A4A7288();
      v54 = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030);
      v111 = swift_initStackObject();
      *(v111 + 16) = xmmword_18A64D660;
      *(v111 + 32) = sub_18A4A7288();
      *(v111 + 40) = v112;
      sub_18A4A6378();
      *(v111 + 48) = sub_18A4A2D28();
      *(v111 + 56) = sub_18A4A7288();
      *(v111 + 64) = v113;
      sub_18A4A6368();
      *(v111 + 72) = sub_18A4A7668();
      *(v111 + 80) = sub_18A4A7288();
      *(v111 + 88) = v114;
      sub_18A4A6388();
      *(v111 + 96) = sub_18A4A7668();
      v55 = sub_188E8CFB8(v111);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038);
      swift_arrayDestroy();
      v115 = sub_18A4A6558();
      (*(*(v115 - 8) + 8))(v278, v115);
      result = (*(v108 + 8))(v107, v109);
      goto LABEL_9;
    }

    if (v52 == *MEMORY[0x1E6981B40])
    {
      (*(v49 + 96))(v51, v48);
      v116 = v314;
      v117 = v315;
      v118 = v51;
      v119 = v316;
      (*(v315 + 32))(v314, v118, v316);
      v328 = sub_18A4A7288();
      v54 = v120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030);
      v121 = swift_initStackObject();
      *(v121 + 16) = xmmword_18A64BFA0;
      *(v121 + 32) = sub_18A4A7288();
      *(v121 + 40) = v122;
      sub_18A4A6408();
      v326 = v123;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_18A64C6E0;
      v125 = MEMORY[0x1E69E6448];
      *(v124 + 56) = MEMORY[0x1E69E6448];
      v126 = v326;
      *(v124 + 32) = v326;
      *(v124 + 88) = v125;
      *(v124 + 64) = DWORD1(v126);
      *(v124 + 120) = v125;
      *(v124 + 96) = DWORD2(v126);
      *(v124 + 152) = v125;
      *(v124 + 128) = HIDWORD(v126);
      sub_188A34624(0, &qword_1EA93D840);
      *(v121 + 48) = MEMORY[0x18CFE2B40](v124);
      *(v121 + 56) = sub_18A4A7288();
      *(v121 + 64) = v127;
      sub_18A4A6418();
      *(v121 + 72) = sub_18A4A2D28();
      v55 = sub_188E8CFB8(v121);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038);
      swift_arrayDestroy();
      v128 = sub_18A4A6558();
      (*(*(v128 - 8) + 8))(v278, v128);
      result = (*(v117 + 8))(v116, v119);
      goto LABEL_9;
    }

    if (v52 == *MEMORY[0x1E6981B38])
    {
      (*(v49 + 96))(v51, v48);
      v129 = v310;
      v131 = v312;
      v130 = v313;
      (*(v310 + 32))(v312, v51, v313);
      v328 = sub_18A4A7288();
      v54 = v132;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030);
      v133 = swift_initStackObject();
      *(v133 + 16) = xmmword_18A64D660;
      *(v133 + 32) = sub_18A4A7288();
      *(v133 + 40) = v134;
      sub_18A4A63D8();
      *(v133 + 48) = sub_18A4A2D28();
      *(v133 + 56) = sub_18A4A7288();
      *(v133 + 64) = v135;
      sub_18A4A63A8();
      *(v133 + 72) = sub_18A4A7668();
      *(v133 + 80) = sub_18A4A7288();
      *(v133 + 88) = v136;
      sub_18A4A63E8();
      *(v133 + 96) = sub_18A4A7668();
      *&v326 = sub_188E8CFB8(v133);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038);
      swift_arrayDestroy();
      v137 = v307;
      sub_18A4A63C8();
      v138 = v309;
      v139 = v311;
      if ((*(v309 + 48))(v137, 1, v311) == 1)
      {
        v140 = sub_18A4A6558();
        (*(*(v140 - 8) + 8))(v278, v140);
        (*(v129 + 8))(v131, v130);
        result = sub_188A3F5FC(v137, &qword_1EA93B028);
      }

      else
      {
        (*(v138 + 32))(v308, v137, v139);
        v153 = v300;
        (*(v138 + 16))();
        v154 = (*(v138 + 88))(v153, v139);
        if (v154 == *MEMORY[0x1E6981B20])
        {
          (*(v138 + 96))(v153, v139);
          v155 = *v153;
          v156 = sub_18A4A7288();
          v158 = v157;
          objc_opt_self();
          v159 = swift_dynamicCastObjCClass();
          v160 = v313;
          if (v159)
          {
            v161 = v155;
          }

          v162 = v326;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v330 = v162;
          sub_188EA0C10(v159, v156, v158, isUniquelyReferenced_nonNull_native);

          v55 = v330;
          v164 = sub_18A4A6558();
          (*(*(v164 - 8) + 8))(v278, v164);
          (*(v309 + 8))(v308, v311);
          result = (*(v310 + 8))(v312, v160);
          goto LABEL_9;
        }

        v190 = v278;
        if (v154 == *MEMORY[0x1E6981B18])
        {
          (*(v138 + 96))(v153, v139);
          v191 = *v153;
          v325 = sub_18A4A7288();
          v193 = v192;
          *&v330 = 64;
          *(&v330 + 1) = 0xE100000000000000;
          *&v329[0] = v191;
          v194 = sub_18A4A8618();
          v195 = v129;
          MEMORY[0x18CFE22D0](v194);

          v196 = sub_18A4A7258();

          v197 = v326;
          v198 = swift_isUniquelyReferenced_nonNull_native();
          *&v330 = v197;
          sub_188EA0C10(v196, v325, v193, v198);

          v199 = v330;
          v200 = sub_18A4A6558();
          (*(*(v200 - 8) + 8))(v190, v200);
          (*(v138 + 8))(v308, v139);
          v55 = v199;
          result = (*(v195 + 8))(v312, v313);
          goto LABEL_9;
        }

        v231 = sub_18A4A6558();
        (*(*(v231 - 8) + 8))(v190, v231);
        v232 = *(v138 + 8);
        v232(v308, v139);
        (*(v129 + 8))(v131, v313);
        result = (v232)(v153, v139);
      }

      v95 = 0;
      v55 = v326;
      goto LABEL_10;
    }

    if (v52 == *MEMORY[0x1E6981B58])
    {
      (*(v49 + 96))(v51, v48);
      v141 = v305;
      v142 = v306;
      v143 = v302;
      (*(v306 + 32))(v305, v51, v302);
      v328 = sub_18A4A7288();
      v54 = v144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030);
      v145 = swift_initStackObject();
      *(v145 + 16) = xmmword_18A64BFB0;
      *(v145 + 32) = sub_18A4A7288();
      *(v145 + 40) = v146;
      sub_18A4A6458();
      *(v145 + 48) = sub_18A4A2D28();
      v147 = sub_188E8CFB8(v145);
      swift_setDeallocating();
      sub_188A3F5FC(v145 + 32, &qword_1EA93B038);
      sub_18A4A6458();
      v95 = v148;
      v149 = v301;
      sub_18A4A6448();
      v150 = v303;
      v151 = v304;
      if ((*(v303 + 48))(v149, 1, v304) == 1)
      {
        v152 = sub_18A4A6558();
        (*(*(v152 - 8) + 8))(v278, v152);
        (*(v142 + 8))(v141, v143);
        result = sub_188A3F5FC(v149, &qword_1EA93B020);
        v55 = v147;
      }

      else
      {
        v178 = v298;
        (*(v150 + 32))(v298, v149, v151);
        v179 = v292;
        (*(v150 + 16))(v292, v178, v151);
        v180 = (*(v150 + 88))(v179, v151);
        v181 = v278;
        if (v180 == *MEMORY[0x1E6981B48])
        {
          (*(v150 + 96))(v179, v151);
          v182 = *v179;
          *&v326 = sub_18A4A7288();
          v184 = v183;
          *&v330 = 64;
          *(&v330 + 1) = 0xE100000000000000;
          *&v329[0] = v182;
          v185 = sub_18A4A8618();
          v186 = v181;
          MEMORY[0x18CFE22D0](v185);

          v187 = sub_18A4A7258();

          v188 = swift_isUniquelyReferenced_nonNull_native();
          *&v330 = v147;
          sub_188EA0C10(v187, v326, v184, v188);

          v55 = v330;
          v189 = sub_18A4A6558();
          (*(*(v189 - 8) + 8))(v186, v189);
          (*(v150 + 8))(v298, v151);
          result = (*(v306 + 8))(v305, v143);
        }

        else
        {
          v229 = sub_18A4A6558();
          (*(*(v229 - 8) + 8))(v181, v229);
          v230 = *(v150 + 8);
          v230(v178, v151);
          (*(v306 + 8))(v141, v143);
          result = (v230)(v179, v151);
          v55 = v147;
        }
      }

      goto LABEL_10;
    }

    if (v52 == *MEMORY[0x1E6981B78])
    {
      (*(v49 + 96))(v51, v48);
      v165 = v299;
      v166 = v297;
      v167 = v294;
      (*(v299 + 32))(v297, v51, v294);
      v328 = sub_18A4A7288();
      v54 = v168;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030);
      v169 = swift_initStackObject();
      *(v169 + 16) = xmmword_18A64BFB0;
      *(v169 + 32) = sub_18A4A7288();
      *(v169 + 40) = v170;
      sub_18A4A6458();
      *(v169 + 48) = sub_18A4A2D28();
      v171 = sub_188E8CFB8(v169);
      swift_setDeallocating();
      sub_188A3F5FC(v169 + 32, &qword_1EA93B038);
      v172 = v293;
      sub_18A4A6448();
      v173 = v295;
      v174 = v296;
      if ((*(v295 + 48))(v172, 1, v296) == 1)
      {
        v175 = sub_18A4A6558();
        (*(*(v175 - 8) + 8))(v278, v175);
        (*(v165 + 8))(v166, v167);
        v176 = &qword_1EA93B018;
        v177 = v172;
LABEL_32:
        result = sub_188A3F5FC(v177, v176);
        goto LABEL_47;
      }

      v217 = v291;
      (*(v173 + 32))(v291, v172, v174);
      v218 = v287;
      (*(v173 + 16))(v287, v217, v174);
      v219 = (*(v173 + 88))(v218, v174);
      v220 = v278;
      if (v219 == *MEMORY[0x1E6981B70])
      {
        (*(v173 + 96))(v218, v174);
        v221 = *v218;
        *&v326 = sub_18A4A7288();
        v223 = v222;
        *&v330 = 64;
        *(&v330 + 1) = 0xE100000000000000;
        *&v329[0] = v221;
        v224 = sub_18A4A8618();
        v225 = v167;
        MEMORY[0x18CFE22D0](v224);

        v226 = sub_18A4A7258();

        v227 = swift_isUniquelyReferenced_nonNull_native();
        *&v330 = v171;
        sub_188EA0C10(v226, v326, v223, v227);

        v55 = v330;
        v228 = sub_18A4A6558();
        (*(*(v228 - 8) + 8))(v220, v228);
        (*(v173 + 8))(v291, v174);
        result = (*(v299 + 8))(v297, v225);
        goto LABEL_9;
      }

      v242 = sub_18A4A6558();
      (*(*(v242 - 8) + 8))(v220, v242);
      v243 = *(v173 + 8);
      v243(v217, v174);
      (*(v299 + 8))(v166, v167);
      result = (v243)(v218, v174);
      goto LABEL_47;
    }

    if (v52 == *MEMORY[0x1E6981B60])
    {
      (*(v49 + 96))(v51, v48);
      v202 = v288;
      v201 = v289;
      v203 = v51;
      v204 = v290;
      (*(v289 + 32))(v288, v203, v290);
      v328 = sub_18A4A7288();
      v54 = v205;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030);
      v206 = swift_initStackObject();
      *(v206 + 16) = xmmword_18A64D660;
      *(v206 + 32) = sub_18A4A7288();
      *(v206 + 40) = v207;
      sub_18A4A6368();
      *(v206 + 48) = sub_18A4A7668();
      *(v206 + 56) = sub_18A4A7288();
      *(v206 + 64) = v208;
      sub_18A4A6498();
      *(v206 + 72) = sub_18A4A7738();
      *(v206 + 80) = sub_18A4A7288();
      *(v206 + 88) = v209;
      sub_18A4A64A8();
      *(v206 + 96) = sub_18A4A7738();
      v210 = sub_188E8CFB8(v206);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038);
      swift_arrayDestroy();
      v211 = sub_18A4A7288();
      v213 = v212;
      sub_18A4A6478();
      v214 = sub_18A4A7668();
      v215 = swift_isUniquelyReferenced_nonNull_native();
      *&v330 = v210;
      sub_188EA0C10(v214, v211, v213, v215);

      v55 = v330;
      v216 = sub_18A4A6558();
      (*(*(v216 - 8) + 8))(v278, v216);
      result = (*(v201 + 8))(v202, v204);
      goto LABEL_9;
    }

    if (v52 == *MEMORY[0x1E6981B68])
    {
      (*(v49 + 96))(v51, v48);
      v233 = v282;
      v235 = v285;
      v234 = v286;
      (*(v282 + 32))(v285, v51, v286);
      v328 = sub_18A4A7288();
      v54 = v236;
      v171 = sub_188E8CFB8(MEMORY[0x1E69E7CC0]);
      v237 = v281;
      sub_18A4A64D8();
      v238 = v237;
      v239 = v283;
      v240 = v284;
      if ((*(v283 + 48))(v238, 1, v284) == 1)
      {
        v241 = sub_18A4A6558();
        (*(*(v241 - 8) + 8))(v278, v241);
        (*(v233 + 8))(v235, v234);
        v176 = &qword_1EA93B010;
        v177 = v238;
        goto LABEL_32;
      }

      v252 = v279;
      (*(v239 + 32))(v279, v238, v240);
      v253 = v280;
      (*(v239 + 16))(v280, v252, v240);
      if ((*(v239 + 88))(v253, v240) == *MEMORY[0x1E6981B50])
      {
        (*(v239 + 96))(v253, v240);
        v254 = *v253;
        *&v326 = sub_18A4A7288();
        v256 = v255;
        *&v330 = 64;
        *(&v330 + 1) = 0xE100000000000000;
        *&v329[0] = v254;
        v257 = sub_18A4A8618();
        v258 = v233;
        MEMORY[0x18CFE22D0](v257);

        v259 = sub_18A4A7258();

        v260 = swift_isUniquelyReferenced_nonNull_native();
        *&v330 = v171;
        sub_188EA0C10(v259, v326, v256, v260);

        v55 = v330;
        v261 = sub_18A4A6558();
        (*(*(v261 - 8) + 8))(v278, v261);
        (*(v239 + 8))(v252, v240);
        result = (*(v258 + 8))(v285, v286);
        goto LABEL_9;
      }

      v264 = sub_18A4A6558();
      (*(*(v264 - 8) + 8))(v278, v264);
      v265 = *(v239 + 8);
      v265(v252, v240);
      (*(v233 + 8))(v235, v234);
      result = (v265)(v280, v240);
LABEL_47:
      v95 = 0;
      v55 = v171;
      goto LABEL_10;
    }

    if (v52 == *MEMORY[0x1E6981AF0])
    {
      (*(v49 + 96))(v51, v48);
      sub_188A5EBAC(v51, &v330);
      sub_188E8CFB8(MEMORY[0x1E69E7CC0]);
      __swift_project_boxed_opaque_existential_0(&v330, *(&v331 + 1));
      sub_188B6CDC0();
      sub_18A4A4DC8();
      objc_opt_self();
      v244 = swift_dynamicCastObjCClass();
      if (v244 && (v245 = [v244 type]) != 0)
      {
        v246 = v245;
        v328 = sub_18A4A7288();
        v248 = v247;
        __swift_project_boxed_opaque_existential_0(&v330, *(&v331 + 1));
        v249 = v246;
        sub_18A4A4DB8();
        v95 = v250;
        if ([v249 isEqual_])
        {

          v251 = &unk_1EFAB7238;
LABEL_62:
          v267 = sub_18906AFE0(v251);

          v268 = sub_18A4A7288();
          v270 = v269;
          sub_188A34624(0, &qword_1ED48F7A0);
          v271 = sub_18A4A7CB8();
          v272 = swift_isUniquelyReferenced_nonNull_native();
          *&v329[0] = v267;
          sub_188EA0C10(v271, v268, v270, v272);
          swift_unknownObjectRelease();

          v273 = *&v329[0];
          v274 = sub_18A4A6558();
          (*(*(v274 - 8) + 8))(v278, v274);
LABEL_63:
          result = __swift_destroy_boxed_opaque_existential_0Tm(&v330);
          v54 = v248;
          v55 = v273;
          goto LABEL_10;
        }

        v266 = [v249 isEqual_];

        if (v266)
        {

          v251 = &unk_1EFAB75B8;
          goto LABEL_62;
        }

        v275 = [v249 isEqual_];

        if (v275)
        {
          v273 = sub_18906AFE0(&unk_1EFAB7688);
          swift_unknownObjectRelease();
          sub_188ECC874(&unk_1EFAB76A8);
          v276 = sub_18A4A6558();
          (*(*(v276 - 8) + 8))(v278, v276);

          goto LABEL_63;
        }

        swift_unknownObjectRelease();
        v277 = sub_18A4A6558();
        (*(*(v277 - 8) + 8))(v278, v277);
      }

      else
      {
        swift_unknownObjectRelease();
        v263 = sub_18A4A6558();
        (*(*(v263 - 8) + 8))(v278, v263);
      }

      result = __swift_destroy_boxed_opaque_existential_0Tm(&v330);
    }

    else
    {
      v262 = sub_18A4A6558();
      (*(*(v262 - 8) + 8))(v278, v262);
      result = (*(v49 + 8))(v51, v48);
    }

    v328 = 0;
    v54 = 0;
    v55 = 0;
    goto LABEL_9;
  }

  (*(v49 + 96))(v51, v48);
  v97 = v321;
  v98 = v320;
  v99 = v322;
  (*(v321 + 32))();
  v328 = sub_18A4A7288();
  v101 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B030);
  v102 = swift_initStackObject();
  *(v102 + 16) = xmmword_18A64BFA0;
  *(v102 + 32) = sub_18A4A7288();
  *(v102 + 40) = v103;
  sub_18A4A6348();
  v104 = objc_opt_self();
  v329[0] = v330;
  v329[1] = v331;
  v329[2] = v332;
  v329[3] = v333;
  v329[4] = v334;
  result = [v104 valueWithCAColorMatrix_];
  if (result)
  {
    *(v102 + 48) = result;
    *(v102 + 56) = sub_18A4A7288();
    *(v102 + 64) = v105;
    sub_18A4A6338();
    *(v102 + 72) = sub_18A4A7668();
    v55 = sub_188E8CFB8(v102);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B038);
    swift_arrayDestroy();
    v106 = sub_18A4A6558();
    (*(*(v106 - 8) + 8))(v278, v106);
    result = (*(v97 + 8))(v98, v99);
    v95 = 0;
    v54 = v101;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_188B6CDC0()
{
  result = qword_1ED48E110;
  if (!qword_1ED48E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48E110);
  }

  return result;
}

uint64_t sub_188B6CE14()
{
  v0 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v0);

  return 64;
}

char *sub_188B6CE78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188B6D020(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934238);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188B6D148(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188B6D268(char *a1, int64_t a2, char a3)
{
  result = sub_188B6D148(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_188B6D2B8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_188B6D020(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_188B6D3B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A730);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v28 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v23 - v3;
  v4 = sub_18A4A6BC8();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_18A4A5318();
  v7 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18A4A3138();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_18A4A3148();
  sub_188B69068(&unk_1ED48CEE0, MEMORY[0x1EEE86B38]);
  sub_18A4A5838();
  v14 = sub_18A4A5308();
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(v11 + 16))(&v23 - v13, &v23 - v13, v10, v15);
  sub_188B69068(&qword_1ED48DB10, MEMORY[0x1EEE86B30]);
  sub_18A4A6BB8();
  sub_18A4A4DF8();
  (*(v25 + 8))(v6, v26);
  v16 = v27;
  sub_18A4A4EB8();
  (*(v7 + 8))(v9, v24);
  (*(v11 + 8))(&v23 - v13, v10);
  v17 = v28;
  v18 = sub_18A4A4428();
  v19 = *(v18 - 8);
  v20 = 1;
  (*(v19 + 56))(v16, 0, 1, v18);
  sub_188B6D7DC(v16, v17);
  v21 = (*(v19 + 88))(v17, v18);
  if (v21 != *MEMORY[0x1E697DBB8])
  {
    if (v21 == *MEMORY[0x1E697DBA8])
    {
      return 2;
    }

    else
    {
      (*(v19 + 8))(v17, v18);
      return 0;
    }
  }

  return v20;
}

uint64_t sub_188B6D7DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_188B6D978(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_188B0944C(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_188B0944C(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    v28 = *(v27 + 56);
    v29 = *(v28 + 8 * v17);
    *(v28 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_188B6DAE0(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_18A4A8468();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_18A4A8888();
      sub_18A4A7348();
      result = sub_18A4A88E8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

unint64_t sub_188B6DD84(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
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

char *sub_188B6DF7C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 2) | (*(v0 + 3) << 32);
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  v7 = *(v0 + 3);
  v8 = *(v0 + 4);
  v9 = *(v1 + 96);
  if (v9 > 3)
  {
    if (*(v1 + 96) <= 5u)
    {
      v11 = *(v1 + 40);
      v12 = *(v1 + 48);
      if (v9 == 4)
      {
        v13 = *&v8;
        v14 = objc_allocWithZone(MEMORY[0x1E6979460]);
        sub_188B666A4(v1, &v59);
        v10 = [v14 init];
        v15 = [v2 | (v3 << 8) | (v4 << 16) CGColor];
        [v10 setColor_];

        [v10 setHeight_];
        [v10 setAngle_];
        [v10 setSpread_];
        [v10 setAmount_];
        [v10 setCurvature_];
        [v10 setGlobal_];
      }

      else
      {
        v41 = *(v1 + 80);
        v57 = *(v1 + 88);
        v43 = *(v1 + 64);
        v42 = *(v1 + 72);
        v44 = *(v1 + 56);
        v45 = *&v8;
        v46 = objc_allocWithZone(MEMORY[0x1E6979470]);
        sub_188B666A4(v1, &v59);
        v10 = [v46 init];
        [v10 setCurvature_];
        [v10 setGlobal_];
        v47 = [v6 CGColor];
        [v10 setKeyColor_];

        [v10 setKeyAngle_];
        [v10 setKeyHeight_];
        [v10 setKeySpread_];
        [v10 setKeyAmount_];
        v48 = [v44 CGColor];
        [v10 setFillColor_];

        [v10 setFillAngle_];
        [v10 setFillHeight_];
        [v10 setFillSpread_];
        [v10 setFillAmount_];
      }

      sub_188B6E97C(v1);
      return v10;
    }

    if (v9 != 6)
    {
      v10 = [objc_allocWithZone(MEMORY[0x1E6979480]) init];
      [v10 setMinimum_];
      [v10 setMaximum_];
      return v10;
    }

    v18 = v5;
    v19 = objc_allocWithZone(MEMORY[0x1E6979468]);
    sub_188B666A4(v1, &v59);
    v10 = [v19 init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_18A64D660;
    v21 = [v6 colorWithAlphaComponent_];
    v22 = [v21 CGColor];

    type metadata accessor for CGColor(0);
    v24 = v23;
    *(v20 + 56) = v23;
    *(v20 + 32) = v22;
    v25 = [v6 CGColor];
    *(v20 + 88) = v24;
    *(v20 + 64) = v25;
    v26 = [v6 CGColor];
    *(v20 + 120) = v24;
    *(v20 + 96) = v26;
    v27 = sub_18A4A7518();

    [v10 setColors_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_18A64E3E0;
    *(v28 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    sub_188A34624(0, &qword_1ED48FD80);
    *(v28 + 40) = sub_18A4A7C68();
    *(v28 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v29 = sub_18A4A7518();

    [v10 setDistances_];
    goto LABEL_30;
  }

  if (*(v1 + 96) > 1u)
  {
    if (v9 == 2)
    {
      v16 = objc_allocWithZone(MEMORY[0x1E6979440]);
      sub_188B666A4(v1, &v59);
      v10 = [v16 init];
      v17 = [v2 | (v3 << 8) | (v4 << 16) CGColor];
    }

    else
    {
      v49 = objc_allocWithZone(MEMORY[0x1E6979488]);
      sub_188B666A4(v1, &v59);
      v10 = [v49 init];
      [v10 setInvert_];
      [v10 setPunchout_];
      [v10 setOffset_];
      [v10 setRadius_];
      v17 = [v8 CGColor];
    }

    v29 = v17;
    [v10 setColor_];
LABEL_30:
    sub_188B6E97C(v1);

    return v10;
  }

  if (!*(v1 + 96))
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E6979458]) init];
    [v10 setHeight_];
    [v10 setCurvature_];
    [v10 setAngle_];
    [v10 setMaskOffset_];
    return v10;
  }

  v30 = (v2 | (v3 << 8)) | (v4 << 16);
  v31 = objc_allocWithZone(MEMORY[0x1E6979468]);
  sub_188B666A4(v1, &v59);
  v10 = [v31 init];
  if (v4 & 0x400000000000 | ((v4 >> 47) << 63))
  {
    goto LABEL_40;
  }

  v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  v33 = MEMORY[0x1E69E7CC0];
  if (!v32)
  {

LABEL_33:
    v50 = sub_18A4A7518();

    [v10 setColors_];

    v51 = *(*&v5 + 16);
    if (v51)
    {
      *&v59 = v33;
      sub_18A4A8208();
      v52 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        sub_18A4A81D8();
        sub_18A4A8218();
        sub_18A4A8228();
        sub_18A4A81E8();
        v52 += 8;
        --v51;
      }

      while (v51);
    }

    sub_188A34624(0, &qword_1ED48FD80);
    v53 = sub_18A4A7518();

    [v10 setDistances_];

    sub_188A34624(0, &unk_1ED48CFE0);
    v54 = sub_18A4A7518();

    [v10 setInterpolations_];

    [v10 setPremultiplied_];
    return v10;
  }

  v55 = v6;
  v56 = v10;
  v58 = MEMORY[0x1E69E7CC0];
  result = sub_188B221A4(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    v6 = (v30 & 0xC000000000000001);
    while (1)
    {
      if (v6)
      {
        v36 = sub_188E48DA0(v35, v30);
      }

      else
      {
        if ((v35 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v32 = sub_18A4A7F68();
          goto LABEL_14;
        }

        if (v35 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v36 = *(v30 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = [v36 CGColor];
      type metadata accessor for CGColor(0);
      v60 = v39;

      *&v59 = v38;
      v10 = *(v58 + 16);
      v40 = *(v58 + 24);
      if (v10 >= v40 >> 1)
      {
        sub_188B221A4((v40 > 1), v10 + 1, 1);
      }

      ++v35;
      *(v58 + 16) = v10 + 1;
      sub_188A55538(&v59, (v58 + 32 * v10 + 32));
      if (v32 == v35)
      {

        v10 = v56;
        v33 = MEMORY[0x1E69E7CC0];
        goto LABEL_33;
      }
    }
  }

  __break(1u);
  return result;
}