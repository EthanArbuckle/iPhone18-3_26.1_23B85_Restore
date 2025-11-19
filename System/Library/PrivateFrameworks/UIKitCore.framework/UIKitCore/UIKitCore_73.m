void sub_1891F04F0(double a1, double a2, double a3, double a4)
{
  v5 = *v4;
  if (*v4 >= a1)
  {
    a3 = a4;
  }

  if ((*&a2 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v6 = *v4;
  }

  else
  {
    v6 = a2;
  }

  if ((~*&a2 & 0x7FF0000000000000) != 0)
  {
    v6 = a2;
  }

  if (v5 > a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = *v4;
  }

  if ((*&v7 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = v7;
  }

  if ((~*&v7 & 0x7FF0000000000000) != 0)
  {
    v8 = v7;
  }

  if (v7 >= a1)
  {
    a1 = v8;
  }

  if (a3 != 0.0)
  {
    a1 = a1 + a3 * (1.0 - 1.0 / ((v5 - a1) / a3 * 0.55 + 1.0));
  }

  *v4 = a1;
}

void sub_1891F0578(double a1, double a2)
{
  v3 = *v2;
  if (*v2 > a2)
  {
    if ((*&a2 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v3 = a2;
    }

    if ((~*&a2 & 0x7FF0000000000000) != 0)
    {
      v3 = a2;
    }
  }

  if (v3 < a1)
  {
    goto LABEL_12;
  }

  if ((~*&v3 & 0x7FF0000000000000) != 0)
  {
    a1 = v3;
LABEL_12:
    *v2 = a1;
    return;
  }

  if ((*&v3 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    a1 = v3;
  }

  *v2 = a1;
}

void sub_1891F05D0(double a1, double a2)
{
  v3 = *v2;
  v4 = (a2 - a1) / 3.0;
  if (*v2 >= a1)
  {
    if (v3 <= a2)
    {
      return;
    }

    if (v4 + a2 >= a2)
    {
      v5 = (v4 + a2 - a2) * tanh((v3 - a2) / (v4 + a2 - a2) * 0.55 + 0.0) + a2;
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (a1 - v4 > a1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = a1 - v4 + (a1 - (a1 - v4)) * (tanh((v3 - (a1 - v4)) / (a1 - (a1 - v4)) * 0.55 + -0.55) + 1.0);
LABEL_7:
  *v2 = v5;
}

id sub_1891F069C(uint64_t a1)
{
  v2 = type metadata accessor for _GlassBackgroundStyle();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - v6;
  v8 = sub_18A4A7258();
  v9 = sub_18A4A7258();
  if (qword_1ED4905B8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1ED4A3668);
  sub_188AD8D14(v10, v7, type metadata accessor for _GlassBackgroundStyle);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A470);
  v22[3] = v11;
  sub_188AD8D14(v7, v4, type metadata accessor for _GlassBackgroundStyle);
  v12 = objc_allocWithZone(v11);
  sub_188AD8D14(v4, v12 + *((*MEMORY[0x1E69E7D40] & *v12) + 0x60), type metadata accessor for _GlassBackgroundStyle);
  v21.receiver = v12;
  v21.super_class = v11;
  v13 = objc_msgSendSuper2(&v21, sel_init);
  sub_188B0CDD0(v4, type metadata accessor for _GlassBackgroundStyle);
  v22[0] = v13;
  sub_188B0CDD0(v7, type metadata accessor for _GlassBackgroundStyle);
  sub_188A55598(v22, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v19[0] = v19[2];
  v19[1] = v20;
  v14 = *(&v20 + 1);
  sub_188A3F5FC(v19, &qword_1EA934050);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  v17 = [v16 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v17;
}

id sub_1891F096C(uint64_t a1)
{
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  if (qword_1ED48FC48 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0);
  v5 = __swift_project_value_buffer(v4, qword_1EA994F18);
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933498);
  v6 = sub_188E69938(v5);
  v16[0] = v6;
  sub_188A55598(v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v13[0] = v14;
  v13[1] = v15;
  v7 = *(&v15 + 1);
  sub_188A3F5FC(v13, &qword_1EA934050);
  if (v7)
  {
    *&v14 = v6;
    v8 = v6;
    v9 = sub_18A4A8778();
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  v11 = [v10 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_1891F0B5C(uint64_t a1)
{
  v3 = type metadata accessor for _GlassBackgroundStyle();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A470);
  v23[3] = v6;
  sub_188AD8D14(a1, v5, type metadata accessor for _GlassBackgroundStyle);
  v7 = objc_allocWithZone(v6);
  sub_188AD8D14(v5, v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x60), type metadata accessor for _GlassBackgroundStyle);
  v22.receiver = v7;
  v22.super_class = v6;
  v8 = objc_msgSendSuper2(&v22, sel_init);
  sub_188B0CDD0(v5, type metadata accessor for _GlassBackgroundStyle);
  v23[0] = v8;
  sub_188A55598(v23, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v20[0] = v20[2];
  v20[1] = v21;
  v9 = *(&v21 + 1);
  sub_188A3F5FC(v20, &qword_1EA934050);
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = [(_UITraitOverrides *)*(*v1 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;

    *v1 = v13;
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
  sub_188AC80DC(&type metadata for _GlassBackgroundStyleTrait, sub_1891F069C);
  os_unfair_lock_unlock(v16[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970);
  v17 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v15 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return sub_188B0CDD0(a1, type metadata accessor for _GlassBackgroundStyle);
}

uint64_t sub_1891F0EA4(uint64_t a1)
{
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933498);
  v3 = sub_188E69938(a1);
  v18[0] = v3;
  sub_188A55598(v18, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v15[0] = v16;
  v15[1] = v17;
  v4 = *(&v17 + 1);
  sub_188A3F5FC(v15, &qword_1EA934050);
  if (v4)
  {
    *&v16 = v3;
    v5 = v3;
    v6 = sub_18A4A8778();
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = [(_UITraitOverrides *)*(*v1 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v9 = swift_allocObject();
    *(v9 + 16) = v8;

    *v1 = v9;
  }

  v10 = qword_1ED491B40;
  v11 = v8;
  if (v10 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v12 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901B3A4(&type metadata for GlassPocketContainerTrait, sub_1891F096C);
  os_unfair_lock_unlock(v12[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970);
  v13 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v11 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return sub_188A3F5FC(a1, &unk_1EA9334A0);
}

void sub_1891F154C()
{
  v1 = *&v0[OBJC_IVAR____UILiquidLensView_restingShadowProperties];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 restingBackground];
    v4 = [v3 layer];

    [v4 setShadowPathIsBounds_];
    v5 = [v0 restingBackground];
    v6 = [v5 layer];

    [v6 setPunchoutShadow_];
    v7 = [v0 restingBackground];
    v8 = [v7 layer];

    [v2 radius];
    [v8 setShadowRadius_];

    v9 = [v0 restingBackground];
    v10 = [v9 layer];

    v11 = [v2 color];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 CGColor];
    }

    else
    {
      v13 = 0;
    }

    [v10 setShadowColor_];

    v19 = [v0 restingBackground];
    v20 = [v19 layer];

    [v2 offset];
    [v20 setShadowOffset_];

    v21 = [v0 restingBackground];
    v23 = [v21 layer];

    [v2 opacity];
    *&v22 = v22;
    [v23 setShadowOpacity_];
  }

  else
  {
    v14 = [v0 restingBackground];
    v15 = [v14 layer];

    [v15 setShadowRadius_];
    v16 = [v0 restingBackground];
    v17 = [v16 layer];

    [v17 setShadowOffset_];
    v18 = [v0 restingBackground];
    v23 = [v18 layer];

    [v23 setShadowOpacity_];
  }
}

void sub_1891F19B8(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7)
{
  v15.receiver = a1;
  v15.super_class = _UILiquidLensView;
  v11 = *a7;
  v12 = a1;
  objc_msgSendSuper2(&v15, v11, a2, a3, a4, a5);
  v13 = [v12 liftedContentPunchout];
  if (v13)
  {
    v14 = v13;
    [v12 bounds];
    [v14 setFrame_];
  }
}

id sub_1891F1BC4()
{
  v1 = OBJC_IVAR____UILiquidLensView____lazy_storage___liftPortal;
  v2 = *&v0[OBJC_IVAR____UILiquidLensView____lazy_storage___liftPortal];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____UILiquidLensView____lazy_storage___liftPortal];
  }

  else
  {
    v4 = [v0 contentWrapper];
    v5 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1891F1E70(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v99 - v4;
  v6 = type metadata accessor for _GlassBackgroundStyle();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v100 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v99 - v9;
  v1[OBJC_IVAR____UILiquidLensView__lifted] = 0;
  v1[OBJC_IVAR____UILiquidLensView_warpsContentBelow] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____UILiquidLensView_liftedContentView] = 0;
  *&v1[OBJC_IVAR____UILiquidLensView_liftedContentMode] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____UILiquidLensView_restingBackgroundColor] = 0;
  *&v1[OBJC_IVAR____UILiquidLensView_restingShadowProperties] = 0;
  v11 = OBJC_IVAR____UILiquidLensView_flexInteraction;
  *&v1[v11] = [objc_allocWithZone(_UIFlexInteraction) init];
  *&v1[OBJC_IVAR____UILiquidLensView____lazy_storage___liftPortal] = 0;
  *&v1[OBJC_IVAR____UILiquidLensView_belowGlassWarpBackdrop] = 0;
  *&v1[OBJC_IVAR____UILiquidLensView_liftedContentPunchout] = 0;
  v12 = OBJC_IVAR____UILiquidLensView_contentWrapper;
  v13 = [objc_allocWithZone(UIView) init];
  [v13 setUserInteractionEnabled_];
  *&v1[v12] = v13;
  v14 = OBJC_IVAR____UILiquidLensView_glass;
  _s14ClearGlassViewCMa();
  *&v1[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____UILiquidLensView_liftProgress;
  v16 = type metadata accessor for _UIDebouncingAnimatableFloat();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v18 = 0;
  *(v18 + 1) = 0;
  v109.receiver = v17;
  v109.super_class = v16;
  v19 = objc_msgSendSuper2(&v109, sel_init);
  v20 = &v19[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v20 = 0xD00000000000001ELL;
  *(v20 + 1) = 0x800000018A6B2110;

  *&v1[v15] = v19;
  *&v1[OBJC_IVAR____UILiquidLensView_unliftDelayTimer] = 0;
  v21 = &v1[OBJC_IVAR____UILiquidLensView_liftTimestamp];
  *v21 = 0;
  v21[8] = 1;
  v1[OBJC_IVAR____UILiquidLensView_forceUnliftTimerWithoutAnimations] = 0;
  v22 = OBJC_IVAR____UILiquidLensView_groupCompletion;
  *&v1[v22] = [objc_allocWithZone(_UIGroupCompletion) init];
  if (a1)
  {
    *&v1[OBJC_IVAR____UILiquidLensView_restingBackground] = a1;
    v1[OBJC_IVAR____UILiquidLensView_hasCustomRestingBackground] = 1;
  }

  else
  {
    v23 = [objc_allocWithZone(UIView) &selRef_inhibitSetupOrientation];
    [v23 setUserInteractionEnabled_];
    v24 = [objc_opt_self() _controlForegroundColor];
    [v23 setBackgroundColor_];

    *&v1[OBJC_IVAR____UILiquidLensView_restingBackground] = v23;
    v1[OBJC_IVAR____UILiquidLensView_hasCustomRestingBackground] = 0;
  }

  v108.receiver = v1;
  v108.super_class = _UILiquidLensView;
  v99 = a1;
  v25 = objc_msgSendSuper2(&v108, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v26 = [(UIView *)v25 _traitOverrides];
  v27 = [(_UITraitOverrides *)v26 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  inited = swift_initStackObject();
  *(inited + 16) = v27;
  aBlock = inited;
  sub_188AF61EC(0);
  v29 = aBlock;
  v30 = [(UIView *)v25 _traitOverrides];
  v31 = *(v29 + 16);

  [(_UITraitOverrides *)v30 _replaceWithOverrides:v31];

  v32 = [(UIView *)v25 _traitOverrides];
  v33 = [(_UITraitOverrides *)v32 _swiftImplCopy];

  v34 = swift_initStackObject();
  *(v34 + 16) = v33;
  aBlock = v34;
  sub_188D635B0(1);
  v35 = aBlock;
  v36 = [(UIView *)v25 _traitOverrides];
  v37 = *(v35 + 16);

  [(_UITraitOverrides *)v36 _replaceWithOverrides:v37];

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70);
  (*(*(v38 - 8) + 56))(v10, 2, 2, v38);
  v39 = [(UIView *)v25 _traitOverrides];
  v40 = [(_UITraitOverrides *)v39 _swiftImplCopy];

  v41 = swift_initStackObject();
  *(v41 + 16) = v40;
  aBlock = v41;
  v42 = v100;
  sub_188AD8D14(v10, v100, type metadata accessor for _GlassBackgroundStyle);
  sub_1891F0B5C(v42);
  sub_188B0CDD0(v10, type metadata accessor for _GlassBackgroundStyle);
  v43 = aBlock;
  v44 = [(UIView *)v25 _traitOverrides];
  v45 = *(v43 + 16);

  [(_UITraitOverrides *)v44 _replaceWithOverrides:v45];

  v46 = sub_18A4A56B8();
  v47 = *(*(v46 - 8) + 56);
  v47(v5, 1, 1, v46);
  v48 = type metadata accessor for MaterialBackdropContext();
  v49 = objc_allocWithZone(v48);
  v49[OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_flags] = 0;
  v50 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  v47(&v49[OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy], 1, 1, v46);
  swift_beginAccess();
  sub_188E69B8C(v5, &v49[v50]);
  swift_endAccess();
  v107.receiver = v49;
  v107.super_class = v48;
  v51 = objc_msgSendSuper2(&v107, &selRef_inhibitSetupOrientation);
  sub_188A3F5FC(v5, &qword_1EA935CD0);
  v52 = [(UIView *)v25 _traitOverrides];
  v53 = [(_UITraitOverrides *)v52 _swiftImplCopy];

  v54 = swift_initStackObject();
  *(v54 + 16) = v53;
  aBlock = v54;
  sub_18901E6BC(v51);
  v55 = aBlock;
  v56 = [(UIView *)v25 _traitOverrides];
  v57 = *(v55 + 16);

  [(_UITraitOverrides *)v56 _replaceWithOverrides:v57];

  v58 = [(UIView *)v25 _traitOverrides];
  v59 = [(_UITraitOverrides *)v58 _swiftImplCopy];

  v60 = swift_initStackObject();
  *(v60 + 16) = v59;
  aBlock = v60;
  sub_18901E90C(0, 0xE000000000000000);
  v61 = aBlock;
  v62 = [(UIView *)v25 _traitOverrides];
  v63 = *(v61 + 16);

  [(_UITraitOverrides *)v62 _replaceWithOverrides:v63];

  v64 = OBJC_IVAR____UILiquidLensView_flexInteraction;
  [*&v25[OBJC_IVAR____UILiquidLensView_flexInteraction] setPreferredActivationMode_];
  [*&v25[v64] setPreferredFlexSources_];
  [*&v25[v64] setPreferredVariant_];
  [v25 addInteraction_];
  v65 = OBJC_IVAR____UILiquidLensView_contentWrapper;
  v66 = *&v25[OBJC_IVAR____UILiquidLensView_contentWrapper];
  [v25 bounds];
  [v66 setFrame_];

  [*&v25[v65] setAutoresizingMask_];
  [v25 addSubview_];
  v67 = [v25 layer];
  v68 = *MEMORY[0x1E69796E8];
  [v67 setCornerCurve_];

  v69 = [v25 layer];
  [v69 setAllowsEdgeAntialiasing_];

  v70 = [v25 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_18A64BFB0;
  v72 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  *(v71 + 56) = sub_188A34624(0, &qword_1ED48EE50);
  *(v71 + 32) = v72;
  v73 = sub_18A4A7518();

  [v70 setFilters_];

  v74 = *&v25[OBJC_IVAR____UILiquidLensView_restingBackground];
  [v25 bounds];
  [v74 setFrame_];
  [v74 setAutoresizingMask_];
  v75 = [v74 layer];
  [v75 setCornerCurve_];

  [*&v25[v65] addSubview_];
  v76 = objc_opt_self();
  v77 = swift_allocObject();
  *(v77 + 16) = v25;
  *(v77 + 24) = v74;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_1891F9538;
  *(v78 + 24) = v77;
  v105 = sub_188E3FE50;
  v106 = v78;
  aBlock = MEMORY[0x1E69E9820];
  v102 = 1107296256;
  v103 = sub_188A4A968;
  v104 = &block_descriptor_212_0;
  v79 = _Block_copy(&aBlock);
  v80 = v25;
  v81 = v74;

  [v76 performWithoutAnimation_];
  _Block_release(v79);
  LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

  if (v74)
  {
    __break(1u);
  }

  else
  {
    [*&v80[OBJC_IVAR____UILiquidLensView_glass] setAutoresizingMask_];
    v83 = [v80 liftPortal];
    v84 = sub_18A4A7258();
    [v83 setName_];

    v85 = [v80 liftPortal];
    [v85 setMatchesPosition_];

    v86 = [v80 liftPortal];
    [v86 setMatchesTransform_];

    v87 = [v80 liftPortal];
    [v87 setAllowsBackdropGroups_];

    v88 = [v80 liftPortal];
    [v88 setHidesSourceLayerInOtherPortals_];

    v89 = [v80 liftPortal];
    [v89 setAlpha_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_18A64B710;
    v91 = *&v80[OBJC_IVAR____UILiquidLensView_liftProgress];
    *(v90 + 32) = v91;
    sub_188A34624(0, &qword_1ED48F690);
    v92 = v91;
    v93 = sub_18A4A7518();

    v94 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v105 = sub_1891F9540;
    v106 = v94;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_188A4A8F0;
    v104 = &block_descriptor_216_2;
    v95 = _Block_copy(&aBlock);
    v96 = v80;

    v97 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v105 = sub_1891F9560;
    v106 = v97;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_188A4A8F0;
    v104 = &block_descriptor_220;
    v98 = _Block_copy(&aBlock);

    [v76 _createTransformerWithInputAnimatableProperties_modelValueSetter_presentationValueSetter_];
    _Block_release(v98);
    _Block_release(v95);

    [(UIView *)v96 _setNeedsToBeNotifiedOfVisibilityChange:?];

    return v96;
  }

  return result;
}

void sub_1891F2DBC(void *a1, void *a2)
{
  v3 = [a1 layer];
  v4 = *MEMORY[0x1E6979E40];
  [v3 setCornerRadius_];

  v5 = [a2 layer];
  [v5 setCornerRadius_];
}

void sub_1891F2E64(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = a2 & 1;
    v5 = Strong;
    [Strong updateProgressBasedAnimationsForPresentation_];
  }
}

void sub_1891F2EF8()
{
  v7.super_class = _UILiquidLensView;
  objc_msgSendSuper2(&v7, sel__visibilityDidChange);
  if ([(UIView *)v0 _isHiddenOrAncestorHidden])
  {
    v1 = [v0 unliftDelayTimer];
    if (v1)
    {

      v2 = UIApp;
      if (UIApp)
      {
        v3 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v6[4] = sub_1891F9530;
        v6[5] = v3;
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 1107296256;
        v6[2] = sub_188A4A8F0;
        v6[3] = &block_descriptor_202_1;
        v4 = _Block_copy(v6);
        v5 = v2;

        [v5 _performAfterCATransactionCommitsWithLegacyRunloopObserverBasedTiming_block_];
        _Block_release(v4);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      [v0 setLifted:0 animated:0 alongsideAnimations:0 completion:0];
    }
  }
}

void sub_1891F3064()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([(UIView *)Strong _isHiddenOrAncestorHidden])
    {
      [v1 forceUnliftWithoutAnimations];
    }
  }
}

void sub_1891F3114()
{
  v8.super_class = _UILiquidLensView;
  objc_msgSendSuper2(&v8, sel_didMoveToWindow);
  [v0 updatePunchoutView];
  v1 = [v0 window];
  if (v1)
  {
  }

  else
  {
    v2 = [v0 unliftDelayTimer];
    if (v2)
    {

      v3 = UIApp;
      if (UIApp)
      {
        v4 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v7[4] = sub_1891F9528;
        v7[5] = v4;
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 1107296256;
        v7[2] = sub_188A4A8F0;
        v7[3] = &block_descriptor_198_4;
        v5 = _Block_copy(v7);
        v6 = v3;

        [v6 _performAfterCATransactionCommitsWithLegacyRunloopObserverBasedTiming_block_];
        _Block_release(v5);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      [v0 setLifted:0 animated:0 alongsideAnimations:0 completion:0];
    }
  }
}

void sub_1891F32A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong window];
    if (v2)
    {
      v3 = v2;

      v1 = v3;
    }

    else
    {
      [v1 forceUnliftWithoutAnimations];
    }
  }
}

void sub_1891F343C(char a1, char a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t a1), uint64_t a6)
{
  if ([v6 _lifted] == (a1 & 1))
  {
    if (a3)
    {
      a3();
    }
  }

  else
  {
    v13 = [v6 unliftDelayTimer];
    [v13 invalidate];

    [v6 setUnliftDelayTimer_];
    if ((a2 & 1) != 0 && [objc_opt_self() areAnimationsEnabled])
    {
      if (a1)
      {
        sub_18A4A2938();
        v14 = &v6[OBJC_IVAR____UILiquidLensView_liftTimestamp];
        *v14 = v15;
        v14[8] = 0;
      }

      else if ((v6[OBJC_IVAR____UILiquidLensView_liftTimestamp + 8] & 1) == 0)
      {
        v16 = *&v6[OBJC_IVAR____UILiquidLensView_liftTimestamp];
        v17 = [v6 spec];
        v18 = *&v17[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_lensHangTime];

        v19 = v18 * UIAnimationDragCoefficient();
        sub_18A4A2938();
        v21 = v19 - (v20 - v16);
        if (v21 > 0.0)
        {
          v22 = objc_opt_self();
          v23 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v24 = swift_allocObject();
          *(v24 + 16) = 1;
          *(v24 + 24) = v23;
          *(v24 + 32) = 0;
          *(v24 + 40) = a3;
          *(v24 + 48) = a4;
          *(v24 + 56) = a5;
          *(v24 + 64) = a6;
          v32 = sub_1891F9510;
          v33 = v24;
          v28 = MEMORY[0x1E69E9820];
          v29 = 1107296256;
          v30 = sub_1890552D0;
          v31 = &block_descriptor_188_2;
          v25 = _Block_copy(&v28);
          sub_188A52E38(a3);
          sub_188A52E38(a5);

          v26 = [v22 scheduledTimerWithTimeInterval:0 repeats:v25 block:v21];
          _Block_release(v25);
          v27 = [objc_opt_self() currentRunLoop];
          [v27 addTimer:v26 forMode:*MEMORY[0x1E695DA28]];

          [v6 setUnliftDelayTimer_];
          return;
        }
      }
    }

    if (a3)
    {
      v32 = a3;
      v33 = a4;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v30 = sub_188A4A8F0;
      v31 = &block_descriptor_181_1;
      a3 = _Block_copy(&v28);
    }

    if (a5)
    {
      v32 = a5;
      v33 = a6;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v30 = sub_188C3DD6C;
      v31 = &block_descriptor_178_0;
      a5 = _Block_copy(&v28);
    }

    [v6 actuallySetLifted:a1 & 1 animated:a2 & 1 alongsideAnimations:a3 completion:a5];
    _Block_release(a5);
    _Block_release(a3);
  }
}

void sub_1891F382C(uint64_t a1, char a2, uint64_t a3, char a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  if ((a2 & 1) != 0 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v14 = Strong;
    v15 = [Strong forceUnliftTimerWithoutAnimations];

    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    if (a5)
    {
      v23 = a5;
      v24 = a6;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_188A4A8F0;
      v22 = &block_descriptor_194;
      a5 = _Block_copy(&aBlock);
    }

    if (a7)
    {
      v23 = a7;
      v24 = a8;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_188C3DD6C;
      v22 = &block_descriptor_191;
      a7 = _Block_copy(&aBlock);
    }

    [v18 actuallySetLifted:a4 & 1 animated:v16 alongsideAnimations:a5 completion:a7];
    _Block_release(a7);
    _Block_release(a5);
  }
}

uint64_t sub_1891F3B30(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  [v6 set:a1 & 1 lifted:?];
  v12 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1891F9420;
  *(v16 + 24) = v15;
  v74 = sub_188E3FE50;
  v75 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v71 = 1107296256;
  v72 = sub_188A4A968;
  v73 = &block_descriptor_93_2;
  v17 = _Block_copy(&aBlock);
  sub_188A52E38(a3);
  v18 = v7;

  v69 = v14;
  [v14 performWithoutAnimation_];
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a1)
  {
    v20 = [v18 liftedContainerView];
    if (!v20)
    {
      v20 = [v18 window];
      if (!v20)
      {
        goto LABEL_23;
      }
    }

    v21 = v20;
    v22 = [v18 liftPortal];
    [v21 addSubview_];

    v23 = [v18 flexInteraction];
    [v23 setPreferredActivationMode_];

    [v18 updatePunchoutView];
    [v18 updateGlassPlacementIfNeededWithAnimated_];
    v24 = [v18 belowGlassWarpBackdrop];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 window];

      if (v26)
      {

        v27 = 0;
        v28 = 0;
        if (a2)
        {
LABEL_17:
          v47 = [v18 groupCompletion];
          v48 = swift_allocObject();
          *(v48 + 16) = a5;
          *(v48 + 24) = a6;
          v74 = sub_1891F95BC;
          v75 = v48;
          aBlock = MEMORY[0x1E69E9820];
          v71 = 1107296256;
          v72 = sub_188A4A8F0;
          v73 = &block_descriptor_148_1;
          v49 = _Block_copy(&aBlock);
          sub_188A52E38(a5);

          [v47 addCompletion_];
          _Block_release(v49);

          v50 = [v18 spec];
          v51 = *&v50[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_liftSpring];

          v74 = sub_1891F9410;
          v75 = v13;
          aBlock = MEMORY[0x1E69E9820];
          v71 = 1107296256;
          v72 = sub_188A4A8F0;
          v73 = &block_descriptor_151_1;
          v52 = _Block_copy(&aBlock);

          v53 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v74 = sub_1891F9488;
          v75 = v53;
          aBlock = MEMORY[0x1E69E9820];
          v71 = 1107296256;
          v72 = sub_188C3DD6C;
          v73 = &block_descriptor_155_1;
          v54 = _Block_copy(&aBlock);

          [v69 _animateUsingSpringBehavior_tracking_animations_completion_];

          _Block_release(v54);
          _Block_release(v52);

          sub_188A55B8C(v66);
          goto LABEL_24;
        }

LABEL_21:
        v61 = swift_allocObject();
        v61[2] = v18;
        v61[3] = a5;
        v61[4] = a6;
        v61[5] = sub_1891F9410;
        v61[6] = v13;
        v62 = swift_allocObject();
        *(v62 + 16) = sub_1891F9458;
        *(v62 + 24) = v61;
        v74 = sub_188E3FE50;
        v75 = v62;
        aBlock = MEMORY[0x1E69E9820];
        v71 = 1107296256;
        v72 = sub_188A4A968;
        v73 = &block_descriptor_142_0;
        v63 = _Block_copy(&aBlock);
        v64 = v18;
        sub_188A52E38(a5);

        [v69 performWithoutAnimation_];

        _Block_release(v63);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        sub_188A55B8C(v28);

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          goto LABEL_24;
        }

        __break(1u);
LABEL_23:

        goto LABEL_24;
      }
    }

    v39 = swift_allocObject();
    *(v39 + 16) = v18;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1891F9450;
    *(v40 + 24) = v39;
    v74 = sub_188E3FE50;
    v75 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v71 = 1107296256;
    v72 = sub_188A4A968;
    v73 = &block_descriptor_132_0;
    v41 = _Block_copy(&aBlock);
    v42 = v18;

    [v69 performWithoutAnimation_];
    _Block_release(v41);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if ((v41 & 1) == 0)
    {
      if (a2)
      {
        v43 = [v42 belowGlassWarpBackdrop];
        if (v43)
        {
          v44 = v43;
          [v42 bounds];
          [v44 setFrame_];
        }

        v45 = [v42 belowGlassWarpBackdrop];
        v27 = sub_1891F9450;
        if (v45)
        {
          v46 = v45;
          [v45 layoutIfNeeded];

          v27 = sub_1891F9450;
        }

        goto LABEL_17;
      }

      v28 = sub_1891F9450;
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = a5;
  v30[4] = a6;
  if (a2)
  {
    sub_188A52E38(a5);
    v31 = [v18 groupCompletion];
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1891F942C;
    *(v32 + 24) = v30;
    v74 = sub_1891F95C0;
    v75 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v71 = 1107296256;
    v72 = sub_188A4A8F0;
    v73 = &block_descriptor_115_1;
    v33 = _Block_copy(&aBlock);

    [v31 addCompletion_];
    _Block_release(v33);

    v34 = [v18 spec];
    v35 = *&v34[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unLiftSpring];

    v74 = sub_1891F9410;
    v75 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v71 = 1107296256;
    v72 = sub_188A4A8F0;
    v73 = &block_descriptor_118_5;
    v36 = _Block_copy(&aBlock);

    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v74 = sub_1891F95FC;
    v75 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v71 = 1107296256;
    v72 = sub_188C3DD6C;
    v73 = &block_descriptor_122_1;
    v38 = _Block_copy(&aBlock);

    [v14 _animateUsingSpringBehavior_tracking_animations_completion_];

    _Block_release(v38);
    _Block_release(v36);

LABEL_24:
    v60 = 0;
    return sub_188A55B8C(v60);
  }

  v55 = swift_allocObject();
  v55[2] = v18;
  v55[3] = sub_1891F942C;
  v55[4] = v30;
  v55[5] = sub_1891F9410;
  v55[6] = v13;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1891F9438;
  *(v56 + 24) = v55;
  v74 = sub_188E3FE50;
  v75 = v56;
  aBlock = MEMORY[0x1E69E9820];
  v71 = 1107296256;
  v72 = sub_188A4A968;
  v73 = &block_descriptor_109_2;
  v57 = _Block_copy(&aBlock);
  v58 = v18;
  sub_188A52E38(a5);

  [v14 performWithoutAnimation_];

  _Block_release(v57);
  v59 = swift_isEscapingClosureAtFileLocation();

  if ((v59 & 1) == 0)
  {
    v60 = sub_1891F9438;
    return sub_188A55B8C(v60);
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_1891F47F0(uint64_t a1, char a2, void (*a3)(void))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = [Strong liftProgress];

  if (a2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (a2)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  [v6 setValue_];

  v9 = swift_unknownObjectUnownedLoadStrong();
  v10 = [v9 restingBackground];

  [v10 setAlpha_];
  v11 = swift_unknownObjectUnownedLoadStrong();
  v12 = [v11 glass];

  v13 = v12[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_lifted];
  v12[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_lifted] = a2;
  if (v13 != (a2 & 1))
  {
    sub_1891F7824();
  }

  v14 = swift_unknownObjectUnownedLoadStrong();
  v26 = [v14 spec];

  v15 = swift_unknownObjectUnownedLoadStrong();
  [v15 warpsContentBelow];

  v16 = swift_unknownObjectUnownedLoadStrong();
  v17 = [v16 belowGlassWarpBackdrop];

  if (v17)
  {
    v18 = [v17 layer];

    v19 = sub_18A4A2D28();
    v20 = sub_18A4A7258();
    [v18 setValue:v19 forKeyPath:v20];
  }

  v21 = swift_unknownObjectUnownedLoadStrong();
  v22 = [v21 belowGlassWarpBackdrop];

  if (v22)
  {
    v23 = [v22 layer];

    v24 = sub_18A4A2D28();
    v25 = sub_18A4A7258();
    [v23 setValue:v24 forKeyPath:v25];
  }

  if (a3)
  {
    a3();
  }
}

void sub_1891F4B00(void *a1, int a2)
{
  v3 = [a1 glass];
  v4 = v3[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_animatesBackground];
  v3[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_animatesBackground] = a2;
  if (v3[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_lifted] & 1) == 0 && ((v4 ^ a2))
  {
    v5 = v3;
    sub_1891F7824();
    v3 = v5;
  }
}

void sub_1891F4B84(void *a1)
{
  v2 = [a1 layer];
  v3 = [v2 presentationLayer];

  if (!v3)
  {
    v3 = [a1 layer];
  }

  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_allocWithZone(_s12BackdropViewCMa_0()) initWithFrame_];
  [a1 setBelowGlassWarpBackdrop_];

  v13 = [a1 belowGlassWarpBackdrop];
  if (v13)
  {
    v14 = v13;
    [v13 setClipsToBounds_];
  }

  v15 = [a1 belowGlassWarpBackdrop];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 layer];

    [v17 setCornerRadius_];
  }

  v18 = [a1 belowGlassWarpBackdrop];
  if (v18)
  {
    v19 = v18;
    [v18 setAutoresizingMask_];
  }

  v20 = [a1 belowGlassWarpBackdrop];
  if (v20)
  {
    v21 = v20;
    v53 = [v20 layer];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
    v22 = swift_allocObject();
    v52 = xmmword_18A64BFA0;
    *(v22 + 16) = xmmword_18A64BFA0;
    v23 = sub_188A34624(0, &qword_1ED48EE50);
    v24 = sub_18A4A7288();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9401B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64BFA0;
    *(inited + 32) = sub_18A4A7288();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v28;
    *(inited + 48) = 0x46445370726177;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 80) = sub_18A4A7288();
    *(inited + 88) = v29;
    v30 = [a1 spec];
    v31 = *&v30[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unliftedDisplacement];

    *(inited + 120) = MEMORY[0x1E69E63B0];
    *(inited + 96) = v31;
    v32 = sub_188AF3DD8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934DB8);
    swift_arrayDestroy();
    sub_188B7787C(v24, v26, v32);
    *(v22 + 56) = v23;
    *(v22 + 32) = v33;
    v34 = sub_18A4A7288();
    v36 = v35;
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_18A64BFB0;
    *(v37 + 32) = sub_18A4A7288();
    *(v37 + 40) = v38;
    v39 = [a1 spec];
    v40 = *&v39[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unliftedBlurRadius];

    *(v37 + 72) = MEMORY[0x1E69E63B0];
    *(v37 + 48) = v40;
    v41 = sub_188AF3DD8(v37);
    swift_setDeallocating();
    sub_188A3F5FC(v37 + 32, &qword_1EA934DB8);
    sub_188B7787C(v34, v36, v41);
    *(v22 + 88) = v23;
    *(v22 + 64) = v42;
    v43 = sub_18A4A7518();

    [v53 setFilters_];
  }

  v44 = [a1 belowGlassWarpBackdrop];
  if (v44)
  {
    v45 = v44;
    v46 = sub_1891F7498(a1, 36.0);
    [v45 addSubview_];
  }

  v47 = [a1 contentWrapper];
  v48 = [a1 belowGlassWarpBackdrop];
  if (v48)
  {
    v49 = v48;
    [v47 insertSubview:v48 atIndex:0];

    v50 = [a1 belowGlassWarpBackdrop];
    if (v50)
    {
      v51 = v50;
      [v50 layoutIfNeeded];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1891F50DC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v8 = [a1 groupCompletion];
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v12[4] = sub_1891F94A4;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_188A4A8F0;
  v12[3] = &block_descriptor_161_1;
  v10 = _Block_copy(v12);
  sub_188A52E38(a2);

  [v8 addCompletion_];
  _Block_release(v10);

  a4();
  v11 = [a1 groupCompletion];
  [v11 complete];
}

void sub_1891F5230(char a1, char a2, uint64_t a3, void (*a4)(void, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (([Strong lifted] & 1) == 0)
    {
      v9 = [v8 flexInteraction];
      [v9 setPreferredActivationMode_];

      v10 = [v8 liftPortal];
      [v10 removeFromSuperview];

      v11 = [v8 glass];
      v12 = v11[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_animatesBackground];
      v11[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_animatesBackground] = 0;
      if ((v11[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_lifted] & 1) == 0 && v12)
      {
        sub_1891F7824();
      }

      if (![v8 liftedContentMode])
      {
        v13 = [v8 liftedContentPunchout];
        if (v13)
        {
          v14 = v13;
          [v13 removeFromSuperview];
        }
      }

      v15 = [v8 belowGlassWarpBackdrop];
      if (v15)
      {
        v16 = v15;
        [v15 removeFromSuperview];
      }

      [v8 setBelowGlassWarpBackdrop_];
    }
  }

  if (a4)
  {
    a4(a1 & 1, a2 & 1);
  }
}

void sub_1891F53F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong groupCompletion];

    [v2 complete];
  }
}

void sub_1891F5470(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v8 = [a1 groupCompletion];
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v12[4] = sub_1891F94E0;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_188A4A8F0;
  v12[3] = &block_descriptor_167_2;
  v10 = _Block_copy(v12);

  [v8 addCompletion_];
  _Block_release(v10);

  a4();
  v11 = [a1 groupCompletion];
  [v11 complete];
}

void sub_1891F56EC(char a1)
{
  v2 = v1;
  v4 = [v2 glass];
  v5 = [v4 window];

  if (v5)
  {

    v6 = [v2 contentWrapper];
    v29 = [v2 glass];
    [v6 bringSubviewToFront_];

    return;
  }

  v7 = [v2 layer];
  v8 = [v7 presentationLayer];

  if (!v8)
  {
    v8 = [v2 layer];
  }

  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  v18[2] = v2;
  v18[3] = v10;
  v18[4] = v12;
  v18[5] = v14;
  v18[6] = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1891F93F8;
  *(v19 + 24) = v18;
  v34 = sub_188E3FE50;
  v35 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_188A4A968;
  v33 = &block_descriptor_61_4;
  v20 = _Block_copy(&aBlock);
  v21 = v2;

  [v17 performWithoutAnimation_];
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (a1)
  {
    v22 = [v21 glass];
    [v21 bounds];
    [v22 setFrame_];

    v23 = [v21 glass];
    [v23 layoutIfNeeded];

    return;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1891F9408;
  *(v25 + 24) = v24;
  v34 = sub_188E3FE50;
  v35 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_188A4A968;
  v33 = &block_descriptor_71_3;
  v26 = _Block_copy(&aBlock);
  v27 = v21;

  [v17 performWithoutAnimation_];
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_13;
  }
}

void sub_1891F5B40(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = [a1 glass];
  [v10 setFrame_];

  v11 = [a1 contentWrapper];
  v12 = [a1 glass];
  [v11 addSubview_];
}

void sub_1891F5C28(void *a1)
{
  v2 = [a1 glass];
  [a1 bounds];
  [v2 setFrame_];

  v3 = [a1 glass];
  [v3 layoutIfNeeded];
}

void sub_1891F5D20()
{
  v1 = [v0 overridePunchoutView];
  if (v1 || (v1 = [v0 liftedContentView]) != 0)
  {
    isEscapingClosureAtFileLocation = v1;
    v3 = [v1 superview];
    if (v3)
    {
      v4 = v3;
      if (![isEscapingClosureAtFileLocation _isInAWindow])
      {

        goto LABEL_9;
      }

      v5 = objc_opt_self();
      v6 = swift_allocObject();
      v6[2] = v0;
      v6[3] = v4;
      v6[4] = isEscapingClosureAtFileLocation;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_1891F93EC;
      *(v7 + 24) = v6;
      aBlock[4] = sub_188E3FE50;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A968;
      aBlock[3] = &block_descriptor_51_3;
      v8 = _Block_copy(aBlock);
      v9 = v0;
      v0 = v4;
      v10 = isEscapingClosureAtFileLocation;

      [v5 performWithoutAnimation_];

      _Block_release(v8);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    v4 = isEscapingClosureAtFileLocation;
LABEL_9:
  }

  v11 = [v0 liftedContentPunchout];
  if (v11)
  {
    v12 = v11;
    [v11 removeFromSuperview];
  }
}

void sub_1891F5F7C(void *a1, void *a2, uint64_t a3)
{
  v6 = [a1 liftedContentPunchout];
  v26 = v6;
  if (!v6)
  {
    [a1 bounds];
    v26 = [objc_allocWithZone(_s11DestOutViewCMa()) initWithFrame_];
    [v26 setUserInteractionEnabled_];
    v11 = [objc_opt_self() blackColor];
    [v26 setBackgroundColor_];

    v12 = [v26 layer];
    [v12 setCornerRadius_];

    v13 = [v26 layer];
    [v13 setCornerCurve_];

    v14 = [v26 layer];
    v15 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    [v14 setCompositingFilter_];

    if ([a1 liftedContentMode])
    {
      [a1 alpha];
    }

    else
    {
      v17 = [a1 liftProgress];
      [v17 value];
      v19 = v18;

      v16 = v19;
    }

    [v26 setAlpha_];

    [a1 setLiftedContentPunchout_];
    v20 = [objc_allocWithZone(MEMORY[0x1E69793B8]) init];
    [v20 setRemovedOnCompletion_];
    [v20 setUsesNormalizedCoordinates_];
    [v20 setDuration_];
    [v20 setFillMode_];

    v21 = [a1 layer];
    [v20 setSourceLayer_];

    sub_188FEB760(0.0, 0.0, 1.0, 1.0);
    sub_188A34624(0, &qword_1ED48EC30);
    v22 = sub_18A4A7518();

    [v20 setSourcePoints_];

    v23 = *&v26[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView_matchMoveAnimation];
    *&v26[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView_matchMoveAnimation] = v20;
    v24 = v20;

    sub_1891F8BC4();
  }

  v25 = v6;
  [a2 insertSubview:v26 aboveSubview:a3];
}

uint64_t sub_1891F63B0(char a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1891F93E4;
  *(v5 + 24) = v4;
  aBlock[4] = sub_188A4B574;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_151;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9.receiver = v7;
    v9.super_class = _UILiquidLensView;
    objc_msgSendSuper2(&v9, sel__removeAllAnimations_, a1 & 1);
  }

  return result;
}

id sub_1891F6540(void *a1)
{
  v2 = [a1 flexInteraction];
  [v2 setPreferredActivationMode_];

  v3 = [a1 unliftDelayTimer];
  [v3 fire];

  return [a1 setUnliftDelayTimer_];
}

void sub_1891F662C(char a1)
{
  v3 = [v1 liftProgress];
  v4 = v3;
  if (a1)
  {
    [v3 presentationValue];

    v12 = sub_18A4A2D28();
    v13 = sub_18A4A7258();
    [v1 _setPresentationValue_forKey_];

    v14 = [v1 liftPortal];
    v15 = sub_18A4A2D28();
    v16 = sub_18A4A7258();
    [v14 _setPresentationValue_forKey_];

    if ([v1 liftedContentMode])
    {
      return;
    }

    v17 = [v1 liftedContentPunchout];
    if (!v17)
    {
      return;
    }

    v18 = v17;
    v19 = sub_18A4A2D28();
    v20 = sub_18A4A7258();
    [v18 _setPresentationValue_forKey_];
  }

  else
  {
    [v3 value];
    v6 = v5;

    v7 = [v1 layer];
    v8 = sub_18A4A2D28();
    v9 = sub_18A4A7258();
    [v7 setValue:v8 forKeyPath:v9];

    v10 = [v1 liftPortal];
    [v10 setAlpha_];

    if ([v1 liftedContentMode])
    {
      return;
    }

    v11 = [v1 liftedContentPunchout];
    if (!v11)
    {
      return;
    }

    v20 = v11;
    [v11 setAlpha_];
  }
}

void sub_1891F6980()
{
  if (([v0 hasCustomRestingBackground] & 1) == 0)
  {
    v1 = [v0 restingBackground];
    v2 = [v0 restingBackgroundColor];
    if (!v2)
    {
      v2 = [objc_opt_self() _controlForegroundColor];
    }

    [v1 setBackgroundColor_];

    v3 = [v0 restingBackground];
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    UIView._background.setter(v4);
  }
}

id sub_1891F6AF8()
{
  type metadata accessor for _UIFlexInteractionSettingsDomain();
  v7.receiver = swift_getObjCClassFromMetadata();
  v7.super_class = &OBJC_METACLASS____TtC5UIKit32_UIFlexInteractionSettingsDomain;
  result = objc_msgSendSuper2(&v7, sel_rootSettings);
  if (result)
  {
    v2 = result;
    type metadata accessor for _UIFlexInteractionSettings();
    v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_liquidLensSpec);

    v4 = [v0 style];
    v5 = &OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_small;
    if (v4)
    {
      v5 = &OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_large;
    }

    v6 = *&v3[*v5];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1891F6D34(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_style] = 0;
  *&v4[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentView] = 0;
  v9 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_liftedContentPortalView;
  v10 = [objc_allocWithZone(_UIPortalView) init];
  [v10 setAutoresizingMask_];
  v11 = sub_18A4A7258();
  [v10 setName_];

  [v10 setMatchesAlpha_];
  [v10 setMatchesPosition_];
  [v10 setMatchesTransform_];
  [v10 setClipsToBounds_];
  v12 = [v10 layer];
  v13 = *MEMORY[0x1E6979E40];
  [v12 setCornerRadius_];

  v14 = [v10 &selRef_lastOperation];
  v15 = *MEMORY[0x1E69796E8];
  [v14 setCornerCurve_];

  v16 = [v10 &selRef_lastOperation];
  [v16 setAllowsEdgeAntialiasing_];

  *&v4[v9] = v10;
  v17 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_innerShadowView;
  *&v4[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentWrapper;
  *&v4[v18] = [objc_allocWithZone(UIView) init];
  v4[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_animatesBackground] = 0;
  v4[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_lifted] = 0;
  v52.receiver = v4;
  v52.super_class = _s14ClearGlassViewCMa();
  v19 = objc_msgSendSuper2(&v52, sel_initWithFrame_, a1, a2, a3, a4);
  v20 = [v19 &selRef_lastOperation];
  [v20 setCornerRadius_];

  v21 = [v19 &selRef_lastOperation];
  [v21 setCornerCurve_];

  v22 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentWrapper;
  v23 = *&v19[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentWrapper];
  [v19 bounds];
  [v23 setFrame_];

  v24 = [*&v19[v22] &selRef_lastOperation];
  v25 = sub_18A4A7258();
  [v24 setName_];

  [*&v19[v22] setAutoresizingMask_];
  v26 = [*&v19[v22] &selRef_lastOperation];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_18A64BFB0;
  v28 = sub_188A34624(0, &qword_1ED48EE50);
  v29 = sub_18A4A7288();
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9401B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFA0;
  *(inited + 32) = sub_18A4A7288();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v33;
  *(inited + 48) = 0x46445370726177;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 80) = sub_18A4A7288();
  *(inited + 88) = v34;
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 96) = 0;
  v35 = sub_188AF3DD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934DB8);
  swift_arrayDestroy();
  sub_188B7787C(v29, v31, v35);
  *(v27 + 56) = v28;
  *(v27 + 32) = v36;
  v37 = sub_18A4A7518();

  [v26 setFilters_];

  v38 = *&v19[v22];
  v39 = sub_1891F7498(v19, 11.2);
  [v38 addSubview_];

  [*&v19[v22] addSubview_];
  [v19 addSubview_];
  v40 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_innerShadowView;
  v41 = *&v19[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_innerShadowView];
  [v19 bounds];
  [v41 setFrame_];

  v42 = [*&v19[v40] layer];
  v43 = sub_18A4A7258();
  [v42 setName_];

  [*&v19[v40] setAutoresizingMask_];
  [*&v19[v40] setClipsToBounds_];
  v44 = [*&v19[v40] layer];
  v45 = [v19 layer];
  [v45 cornerRadius];
  v47 = v46;

  [v44 setCornerRadius_];
  v48 = [*&v19[v40] layer];
  [v48 setInvertsShadow_];

  v49 = [*&v19[v40] layer];
  [v49 setShadowPathIsBounds_];

  [v19 addSubview_];
  sub_1891F7824();
  v50 = [objc_opt_self() defaultCenter];
  [v50 addObserver:v19 selector:sel_reduceTransparencyDidChange name:@"UIAccessibilityReduceTransparencyStatusDidChangeNotification" object:0];

  sub_1891F869C();
  return v19;
}

id sub_1891F7498(void *a1, double a2)
{
  [a1 bounds];
  v8 = [objc_allocWithZone(_s7SDFViewCMa()) initWithFrame_];
  v9 = [v8 layer];
  v10 = sub_18A4A7258();
  [v9 setName_];

  [v8 setAutoresizingMask_];
  v11 = [v8 layer];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClassUnconditional();
  v13 = [objc_allocWithZone(MEMORY[0x1E6979458]) init];
  [v13 setHeight_];
  [v13 setCurvature_];
  [v13 setAngle_];
  [v12 setEffect_];

  [a1 bounds];
  v18 = [objc_allocWithZone(_s14SDFElementViewCMa()) initWithFrame_];
  v19 = [v18 layer];
  [v19 setCornerRadius_];

  v20 = [v18 layer];
  [v20 setCornerCurve_];

  v21 = [v18 layer];
  [v21 setAllowsEdgeAntialiasing_];

  [v18 setAutoresizingMask_];
  v22 = [v18 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setGradientOvalization_];

  [v8 addSubview_];
  return v8;
}

id sub_1891F7824()
{
  v1 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v95 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v95 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v95 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v95 - v13);
  v106 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v106);
  v98 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v110 = (&v95 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v111 = &v95 - v19;
  v112 = v0;
  v105 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_style;
  if (*&v0[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_style])
  {
    if (qword_1EA930C78 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v1, qword_1EA930C80);
    v109 = type metadata accessor for _Glass._GlassVariant;
    sub_188AD8D14(v20, v3, type metadata accessor for _Glass._GlassVariant);
    v21 = sub_18A4A3118();
    v104 = &v95;
    v22 = *(v21 - 8);
    v23 = v22[8];
    MEMORY[0x1EEE9AC00](v21);
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
    v108 = v3;
    v103 = &v95;
    MEMORY[0x1EEE9AC00](v25);
    v26 = sub_18A4A3108();
    v99 = &v95;
    MEMORY[0x1EEE9AC00](v26);
    sub_18A4A2F08();
    sub_188B647BC(&v95 - v24, &v95 - v24);
    v27 = v22[1];
    v27(&v95 - v24, v21);
    v28 = (v27)(&v95 - v24, v21);
    v29 = v27;
    v102 = v27;
    v30 = MEMORY[0x1EEE9AC00](v28);
    v31 = v22[2];
    v100 = (v22 + 2);
    v101 = v31;
    v31(&v95 - v24, &v95 - v24, v21, v30);
    v32 = v108;
    sub_18A4A2F18();
    v29(&v95 - v24, v21);
    v33 = v107;
    v34 = sub_188AD8D14(v32, v107, v109);
    v104 = &v95;
    MEMORY[0x1EEE9AC00](v34);
    v35 = sub_18A4A30E8();
    v103 = &v95;
    MEMORY[0x1EEE9AC00](v35);
    v36 = sub_18A4A2F08();
    v99 = &v95;
    v37 = MEMORY[0x1EEE9AC00](v36);
    v38 = v101;
    v101(&v95 - v24, &v95 - v24, v21, v37);
    sub_1891F8E84();
    sub_18A4A7E88();
    v39 = v102;
    v40 = (v102)(&v95 - v24, v21);
    v99 = &v95;
    v41 = MEMORY[0x1EEE9AC00](v40);
    v38(&v95 - v24, &v95 - v24, v21, v41);
    sub_18A4A2F18();
    v39(&v95 - v24, v21);
    sub_188B0CDD0(v108, v109);
    v42 = v33;
  }

  else
  {
    v101 = v14;
    v103 = v11;
    if (qword_1EA9310C0 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v1, qword_1EA9310C8);
    sub_188AD8D14(v43, v8, type metadata accessor for _Glass._GlassVariant);
    v44 = sub_18A4A3118();
    v109 = &v95;
    v45 = *(v44 - 8);
    v46 = v45[8];
    MEMORY[0x1EEE9AC00](v44);
    v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
    v108 = &v95;
    MEMORY[0x1EEE9AC00](v48);
    v49 = sub_18A4A3108();
    v104 = &v95;
    MEMORY[0x1EEE9AC00](v49);
    v96 = v1;
    sub_18A4A2F08();
    sub_188B647BC(&v95 - v47, &v95 - v47);
    v50 = v45[1];
    v50(&v95 - v47, v44);
    v51 = (v50)(&v95 - v47, v44);
    v52 = MEMORY[0x1EEE9AC00](v51);
    v53 = v45[2];
    v102 = (v45 + 2);
    v99 = v53;
    (v53)(&v95 - v47, &v95 - v47, v44, v52);
    sub_18A4A2F18();
    v100 = v50;
    v97 = v45 + 1;
    v50(&v95 - v47, v44);
    result = [v112 tintColor];
    if (!result)
    {
      goto LABEL_21;
    }

    v55 = result;
    v56 = v103;
    sub_188B6556C(v8, v103, type metadata accessor for _Glass._GlassVariant);
    v57 = *(v96 + 7);

    *(v56 + v57) = v55;
    v109 = type metadata accessor for _Glass._GlassVariant;
    v42 = v101;
    v58 = sub_188AD8D14(v56, v101, type metadata accessor for _Glass._GlassVariant);
    v108 = &v95;
    MEMORY[0x1EEE9AC00](v58);
    v59 = sub_18A4A30E8();
    v104 = &v95;
    MEMORY[0x1EEE9AC00](v59);
    v60 = sub_18A4A2F08();
    v96 = &v95;
    v61 = MEMORY[0x1EEE9AC00](v60);
    v62 = v99;
    (v99)(&v95 - v47, &v95 - v47, v44, v61);
    sub_1891F8E84();
    sub_18A4A7E88();
    v63 = v100;
    v64 = (v100)(&v95 - v47, v44);
    v96 = &v95;
    v65 = MEMORY[0x1EEE9AC00](v64);
    v62(&v95 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), &v95 - v47, v44, v65);
    sub_18A4A2F18();
    v63(&v95 - v47, v44);
    sub_188B0CDD0(v56, v109);
  }

  v66 = v110;
  _Glass.init(_:smoothness:)(v42, v110, 0.0);
  v67 = v111;
  sub_188B6556C(v66, v111, type metadata accessor for _Glass);
  v68 = v112;
  if (v112[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_lifted] != 1)
  {
    if (v112[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_animatesBackground] == 1)
    {
      v82 = v98;
      sub_188AD8D14(v67, v98, type metadata accessor for _Glass);
      v84 = v106;
      v83 = v107;
      v85 = *(v106 + 24);
      sub_188AD8D14(v82 + v85, v107, type metadata accessor for _Glass._GlassVariant);
      v86 = sub_18A4A2F58();
      v87 = *(v86 - 8);
      MEMORY[0x1EEE9AC00](v86);
      v89 = &v95 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_18A4A2F48();
      (*(v87 + 40))(v83, v89, v86);
      sub_188F6D250(v83, v82 + v85);
      *(&v115 + 1) = v84;
      v116 = &protocol witness table for _Glass;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v114);
      sub_188B6556C(v82, boxed_opaque_existential_0, type metadata accessor for _Glass);
    }

    else
    {
      v116 = 0;
      v114 = 0u;
      v115 = 0u;
    }

    UIView._background.setter(&v114);
    v91 = *&v68[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_innerShadowView];
    v92 = [v91 layer];
    [v92 setShadowRadius_];

    v93 = [v91 layer];
    [v93 setShadowOpacity_];

    v94 = [v91 layer];
    [v94 setShadowOffset_];

    v79 = [*&v68[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentWrapper] layer];
    v80 = sub_18A4A77F8();
    v81 = sub_18A4A7258();
    [v79 setValue:v80 forKeyPath:v81];
    goto LABEL_19;
  }

  *(&v115 + 1) = v106;
  v116 = &protocol witness table for _Glass;
  v69 = __swift_allocate_boxed_opaque_existential_0(&v114);
  sub_188AD8D14(v67, v69, type metadata accessor for _Glass);
  UIView._background.setter(&v114);
  type metadata accessor for _UIFlexInteractionSettingsDomain();
  v113.receiver = swift_getObjCClassFromMetadata();
  v113.super_class = &OBJC_METACLASS____TtC5UIKit32_UIFlexInteractionSettingsDomain;
  result = objc_msgSendSuper2(&v113, sel_rootSettings);
  if (result)
  {
    v70 = result;
    type metadata accessor for _UIFlexInteractionSettings();
    v71 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_liquidLensSpec);

    if (*&v68[v105])
    {
      v72 = &OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_large;
    }

    else
    {
      v72 = &OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_small;
    }

    v73 = *&v71[*v72];
    v74 = *&v68[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_innerShadowView];
    v75 = [v74 layer];
    [v75 setShadowRadius_];

    v76 = [v74 layer];
    v77 = *&v73[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_innerShadowOpacity];
    *&v77 = v77;
    [v76 setShadowOpacity_];

    v78 = [v74 layer];
    [v78 setShadowOffset_];

    v79 = [*&v68[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentWrapper] layer];
    v80 = sub_18A4A2D28();
    v81 = sub_18A4A7258();
    [v79 setValue:v80 forKeyPath:v81];

LABEL_19:
    return sub_188B0CDD0(v67, type metadata accessor for _Glass);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1891F869C()
{
  v1 = [*(v0 + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentWrapper) layer];
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v3 = -17.5;
  if (IsReduceTransparencyEnabled)
  {
    v3 = 0.0;
  }

  v6[3] = MEMORY[0x1E69E63B0];
  *v6 = v3;
  __swift_project_boxed_opaque_existential_0(v6, MEMORY[0x1E69E63B0]);
  v4 = sub_18A4A86A8();
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  v5 = sub_18A4A7258();
  [v1 setValue:v4 forKeyPath:v5];

  swift_unknownObjectRelease();
}

id sub_1891F8A1C(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7(0);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_1891F8AAC(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

void sub_1891F8BC4()
{
  v1 = *&v0[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView_matchMoveAnimation];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 window];
    if (v3)
    {

      v4 = [v0 layer];
      v5 = sub_18A4A7258();
      [v4 addAnimation:v2 forKey:?];

      goto LABEL_6;
    }
  }

  v4 = [v0 layer];
  v5 = sub_18A4A7258();
  [v4 removeAnimationForKey_];
LABEL_6:
}

id sub_1891F8E10(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1891F8E84()
{
  result = qword_1ED48D448;
  if (!qword_1ED48D448)
  {
    sub_18A4A3118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48D448);
  }

  return result;
}

void sub_1891F8ED0(void *a1)
{
  v2 = OBJC_IVAR____UILiquidLensView_liftedContentView;
  v3 = *&v1[OBJC_IVAR____UILiquidLensView_liftedContentView];
  *&v1[OBJC_IVAR____UILiquidLensView_liftedContentView] = a1;
  v4 = a1;

  v5 = [v1 glass];
  v6 = *&v1[v2];
  v7 = *&v5[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentView];
  *&v5[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentView] = v6;
  v8 = v6;

  [*&v5[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_liftedContentPortalView] setSourceView_];
}

void sub_1891F8F88()
{
  *(v0 + OBJC_IVAR____UILiquidLensView__lifted) = 0;
  *(v0 + OBJC_IVAR____UILiquidLensView_warpsContentBelow) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____UILiquidLensView_liftedContentView) = 0;
  *(v0 + OBJC_IVAR____UILiquidLensView_liftedContentMode) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____UILiquidLensView_restingBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____UILiquidLensView_restingShadowProperties) = 0;
  v1 = OBJC_IVAR____UILiquidLensView_flexInteraction;
  *(v0 + v1) = [objc_allocWithZone(_UIFlexInteraction) init];
  *(v0 + OBJC_IVAR____UILiquidLensView____lazy_storage___liftPortal) = 0;
  *(v0 + OBJC_IVAR____UILiquidLensView_belowGlassWarpBackdrop) = 0;
  *(v0 + OBJC_IVAR____UILiquidLensView_liftedContentPunchout) = 0;
  v2 = OBJC_IVAR____UILiquidLensView_contentWrapper;
  v3 = [objc_allocWithZone(UIView) init];
  [v3 setUserInteractionEnabled_];
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____UILiquidLensView_glass;
  _s14ClearGlassViewCMa();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____UILiquidLensView_liftProgress;
  v6 = type metadata accessor for _UIDebouncingAnimatableFloat();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v8 = 0;
  *(v8 + 1) = 0;
  v13.receiver = v7;
  v13.super_class = v6;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  v10 = &v9[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v10 = 0xD00000000000001ELL;
  *(v10 + 1) = 0x800000018A6B2110;

  *(v0 + v5) = v9;
  *(v0 + OBJC_IVAR____UILiquidLensView_unliftDelayTimer) = 0;
  v11 = v0 + OBJC_IVAR____UILiquidLensView_liftTimestamp;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____UILiquidLensView_forceUnliftTimerWithoutAnimations) = 0;
  v12 = OBJC_IVAR____UILiquidLensView_groupCompletion;
  *(v0 + v12) = [objc_allocWithZone(_UIGroupCompletion) init];
  sub_18A4A8398();
  __break(1u);
}

void sub_1891F91B4()
{
  *(v0 + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_style) = 0;
  *(v0 + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentView) = 0;
  v1 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_liftedContentPortalView;
  v2 = [objc_allocWithZone(_UIPortalView) init];
  [v2 setAutoresizingMask_];
  v3 = sub_18A4A7258();
  [v2 setName_];

  [v2 setMatchesAlpha_];
  [v2 setMatchesPosition_];
  [v2 setMatchesTransform_];
  [v2 setClipsToBounds_];
  v4 = [v2 layer];
  [v4 setCornerRadius_];

  v5 = [v2 layer];
  [v5 setCornerCurve_];

  v6 = [v2 layer];
  [v6 setAllowsEdgeAntialiasing_];

  *(v0 + v1) = v2;
  v7 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_innerShadowView;
  *(v0 + v7) = [objc_allocWithZone(UIView) init];
  v8 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentWrapper;
  *(v0 + v8) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_animatesBackground) = 0;
  *(v0 + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_lifted) = 0;
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_1891F94A8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1, 0);
  }

  return result;
}

uint64_t sub_1891F9600@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1891F9658@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1891FB67C(a1);

  *a2 = v3;
  return result;
}

void sub_1891F96A0(id *a1, id *location)
{
  objc_storeStrong(location, *a1);
  v3 = location[6];
  if ((v3 & 1) == 0)
  {
    location[6] = (v3 | 1);
  }
}

void (*UIShadowProperties.color.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return sub_1891F972C;
}

void sub_1891F972C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v7 = v4;

    *v2 = v7;
    v5 = v2[6];
    if ((v5 & 1) == 0)
    {
      v2[6] = v5 | 1;
    }
  }

  else
  {

    *v2 = v4;
    v6 = v2[6];
    if ((v6 & 1) == 0)
    {
      v2[6] = v6 | 1;
    }
  }
}

void *(*UIShadowProperties.opacity.modify(void *a1))(void *result)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_1891F97F8;
}

void *sub_1891F97F8(void *result)
{
  v1 = result[1];
  *(v1 + 8) = *result;
  v2 = *(v1 + 48);
  if ((v2 & 2) == 0)
  {
    *(v1 + 48) = v2 | 2;
  }

  return result;
}

void *(*UIShadowProperties.radius.modify(void *a1))(void *result)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_1891F984C;
}

void *sub_1891F984C(void *result)
{
  v1 = result[1];
  *(v1 + 16) = *result;
  v2 = *(v1 + 48);
  if ((v2 & 4) == 0)
  {
    *(v1 + 48) = v2 | 4;
  }

  return result;
}

void UIShadowProperties.offset.setter(double a1, double a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  v3 = *(v2 + 48);
  if ((v3 & 8) == 0)
  {
    *(v2 + 48) = v3 | 8;
  }
}

void *UIShadowProperties.path.getter()
{
  result = *(v0 + 40);
  if (result)
  {
    [result copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E890);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void UIShadowProperties.path.setter(void *a1)
{
  if (a1)
  {
    [a1 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();

    sub_188A34624(0, &qword_1EA92E890);
    if (swift_dynamicCast())
    {
      v3 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 40) = v3;
  v4 = *(v1 + 48);
  if ((v4 & 0x10) == 0)
  {
    *(v1 + 48) = v4 | 0x10;
  }
}

void (*UIShadowProperties.path.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 48) = v1;
  v5 = *(v1 + 40);
  if (v5)
  {
    [v5 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E890);
    v6 = swift_dynamicCast();
    v7 = *(v4 + 40);
    if (!v6)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 32) = v7;
  return sub_1891F9AC4;
}

void sub_1891F9AC4(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 32);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    UIShadowProperties.path.setter(v3);
  }

  else
  {
    UIShadowProperties.path.setter(*(*a1 + 32));
  }

  free(v2);
}

void sub_1891F9B30(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(v1 + 48);
  if (v7)
  {
    if ((v7 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(a1 + 24);
    objc_storeStrong(v1, *a1);
    v4 = v8;
    if ((v7 & 2) != 0)
    {
LABEL_3:
      if ((v7 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  *(v1 + 8) = v3;
  if ((v7 & 4) != 0)
  {
LABEL_4:
    if ((v7 & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    *(v1 + 24) = v4;
    if ((v7 & 0x10) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

LABEL_9:
  *(v1 + 16) = v2;
  if ((v7 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v7 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (v5)
  {
    [v5 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E890);
    if (swift_dynamicCast())
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }
  }

  *(v1 + 40) = v5;
LABEL_16:
  *(v1 + 56) = v6;
}

uint64_t UIShadowProperties.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18CFE3810](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x18CFE3810](*&v5);
  sub_18A4A7C98();
  sub_18A4A88A8();
  if (v3)
  {
    v6 = v3;
    sub_18A4A7C98();
  }

  return MEMORY[0x18CFE37E0](v4);
}

uint64_t UIShadowProperties.hashValue.getter()
{
  sub_18A4A8888();
  UIShadowProperties.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_1891F9D3C()
{
  sub_18A4A8888();
  UIShadowProperties.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_1891F9D80()
{
  sub_18A4A8888();
  UIShadowProperties.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_1891F9DC0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *v0;
  v4 = [v3 description];
  v5 = sub_18A4A7288();
  v7 = v6;

  MEMORY[0x18CFE22D0](v5, v7);

  MEMORY[0x18CFE22D0](59, 0xE100000000000000);
  v8 = sub_188C8D8B4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_188C8D8B4((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[16 * v10];
  *(v11 + 4) = 0x203D20726F6C6F63;
  *(v11 + 5) = 0xE800000000000000;
  v12 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v12);

  v14 = *(v8 + 2);
  v13 = *(v8 + 3);
  if (v14 >= v13 >> 1)
  {
    v8 = sub_188C8D8B4((v13 > 1), v14 + 1, 1, v8);
  }

  *(v8 + 2) = v14 + 1;
  v15 = &v8[16 * v14];
  *(v15 + 4) = 0x207974696361706FLL;
  *(v15 + 5) = 0xEA0000000000203DLL;
  v16 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v16);

  v18 = *(v8 + 2);
  v17 = *(v8 + 3);
  if (v18 >= v17 >> 1)
  {
    v8 = sub_188C8D8B4((v17 > 1), v18 + 1, 1, v8);
  }

  *(v8 + 2) = v18 + 1;
  v19 = &v8[16 * v18];
  *(v19 + 4) = 0x3D20737569646172;
  *(v19 + 5) = 0xE900000000000020;
  MEMORY[0x18CFE22D0](0x3D2074657366666FLL, 0xE900000000000020);
  type metadata accessor for CGSize(0);
  sub_18A4A82D8();
  v21 = *(v8 + 2);
  v20 = *(v8 + 3);
  if (v21 >= v20 >> 1)
  {
    v8 = sub_188C8D8B4((v20 > 1), v21 + 1, 1, v8);
  }

  *(v8 + 2) = v21 + 1;
  v22 = &v8[16 * v21];
  *(v22 + 4) = 0;
  *(v22 + 5) = 0xE000000000000000;
  if (v2)
  {
    [v2 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E890);
    if (swift_dynamicCast())
    {
      v23 = [v1 description];
      v24 = sub_18A4A7288();
      v26 = v25;

      MEMORY[0x18CFE22D0](v24, v26);

      v28 = *(v8 + 2);
      v27 = *(v8 + 3);
      if (v28 >= v27 >> 1)
      {
        v8 = sub_188C8D8B4((v27 > 1), v28 + 1, 1, v8);
      }

      *(v8 + 2) = v28 + 1;
      v29 = &v8[16 * v28];
      *(v29 + 4) = 0x203D2068746170;
      *(v29 + 5) = 0xE700000000000000;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B0);
  sub_188A34360(&qword_1EA939C40, &qword_1EA93F3B0);
  v30 = sub_18A4A71F8();

  return v30;
}

unint64_t UIShadowProperties.description.getter()
{
  sub_18A4A80E8();

  v0 = sub_1891F9DC0();
  MEMORY[0x18CFE22D0](v0);

  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  return 0xD000000000000013;
}

unint64_t UIShadowProperties.debugDescription.getter()
{
  sub_18A4A80E8();

  v0 = sub_1891F9DC0();
  MEMORY[0x18CFE22D0](v0);

  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t UIShadowProperties.customMirror.getter()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16[-v6 - 8];
  v8 = v0[1];
  v22[0] = *v0;
  v22[1] = v8;
  v9 = v0[3];
  v11 = *v0;
  v10 = v0[1];
  v22[2] = v0[2];
  v22[3] = v9;
  v18 = v11;
  v19 = v10;
  v12 = v0[3];
  v20 = v0[2];
  v21 = v12;
  v17 = MEMORY[0x1E69E7CC0];
  v13 = sub_18A4A8908();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  sub_188BFAE70(v22, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220);
  sub_188A34360(&qword_1EA937520, &unk_1EA932220);
  return sub_18A4A8928();
}

uint64_t sub_1891FA53C()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16[-v6 - 8];
  v8 = v0[1];
  v22[0] = *v0;
  v22[1] = v8;
  v9 = v0[3];
  v11 = *v0;
  v10 = v0[1];
  v22[2] = v0[2];
  v22[3] = v9;
  v18 = v11;
  v19 = v10;
  v12 = v0[3];
  v20 = v0[2];
  v21 = v12;
  v17 = MEMORY[0x1E69E7CC0];
  v13 = sub_18A4A8908();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  sub_188BFAE70(v22, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220);
  sub_188A34360(&qword_1EA937520, &unk_1EA932220);
  return sub_18A4A8928();
}

void __swiftcall UIShadowProperties.init()(UIShadowProperties *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1891FAB04(void *a1)
{
  v3 = v1 + OBJC_IVAR___UIShadowProperties__backingProperties;
  swift_beginAccess();
  if (a1)
  {
    [a1 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();

    sub_188A34624(0, &qword_1EA92E890);
    v4 = swift_dynamicCast();
    v5 = v9;
    if (!v4)
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 40);
  *(v3 + 40) = v5;

  v7 = *(v3 + 48);
  if ((v7 & 0x10) == 0)
  {
    *(v3 + 48) = v7 | 0x10;
  }

  return swift_endAccess();
}

BOOL UIShadowProperties.isEqual(_:)(uint64_t a1)
{
  v2 = sub_188C85D28(a1, v34);
  if (v35)
  {
    type metadata accessor for UIShadowProperties(v2);
    if (swift_dynamicCast())
    {
      v3 = v33;
      v4 = &v1[OBJC_IVAR___UIShadowProperties__backingProperties];
      swift_beginAccess();
      v5 = *(v4 + 1);
      v29[0] = *v4;
      v29[1] = v5;
      v6 = *(v4 + 3);
      v8 = *v4;
      v7 = *(v4 + 1);
      v29[2] = *(v4 + 2);
      v29[3] = v6;
      v25 = v8;
      v26 = v7;
      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      v11 = &v33[OBJC_IVAR___UIShadowProperties__backingProperties];
      v27 = v10;
      v28 = v9;
      swift_beginAccess();
      v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 3);
      v30[2] = *(v11 + 2);
      v30[3] = v14;
      v30[0] = v12;
      v30[1] = v13;
      v15 = *(v11 + 1);
      v21 = *v11;
      v22 = v15;
      v16 = *(v11 + 3);
      v23 = *(v11 + 2);
      v24 = v16;
      sub_188BFAE70(v29, v20);
      sub_188BFAE70(v30, v20);
      LOBYTE(v11) = _s5UIKit18UIShadowPropertiesV2eeoiySbAC_ACtFZ_0(&v25, &v21);
      v31[0] = v21;
      v31[1] = v22;
      v31[2] = v23;
      v31[3] = v24;
      sub_188D0D8D0(v31);
      v32[0] = v25;
      v32[1] = v26;
      v32[2] = v27;
      v32[3] = v28;
      sub_188D0D8D0(v32);
      if (v11)
      {
        v17 = [v1 _backgroundConfigurationShadowType];
        v18 = [v3 _backgroundConfigurationShadowType];

        return v17 == v18;
      }
    }
  }

  else
  {
    sub_188A553EC(v34);
  }

  return 0;
}

uint64_t UIShadowProperties.description.getter()
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000015, 0x800000018A6B2170);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](8251, 0xE200000000000000);
  swift_beginAccess();
  v0 = sub_1891F9DC0();
  MEMORY[0x18CFE22D0](v0);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

id UIShadowProperties.init(coder:)(void *a1)
{
  v2 = sub_1891FB6B4(a1);

  return v2;
}

void sub_1891FB1FC(void *a1)
{
  v3 = [v1 color];
  v4 = sub_18A4A7258();
  [a1 encodeObject:v3 forKey:v4];

  [v1 opacity];
  v6 = v5;
  v7 = sub_18A4A7258();
  [a1 encodeDouble:v7 forKey:v6];

  [v1 radius];
  v9 = v8;
  v10 = sub_18A4A7258();
  [a1 encodeDouble:v10 forKey:v9];

  [v1 offset];
  v11 = sub_18A4A7258();
  _UIEncodeCGSizeForKey(a1, v11);

  v12 = [v1 path];
  v13 = sub_18A4A7258();
  [a1 encodeObject:v12 forKey:v13];

  v14 = [v1 _backgroundConfigurationShadowType];
  v15 = sub_18A4A7258();
  [a1 encodeInteger:v14 forKey:v15];

  v16 = &v1[OBJC_IVAR___UIShadowProperties__backingProperties];
  swift_beginAccess();
  v17 = *(v16 + 6);
  v18 = sub_18A4A7258();
  [a1 encodeInteger:v17 forKey:v18];
}

BOOL _s5UIKit18UIShadowPropertiesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *a2;
  v8 = *a1;
  sub_188A34624(0, &qword_1ED490230);
  v9 = v8;
  v10 = v7;
  v11 = sub_18A4A7C88();

  if (v11)
  {
    if (v3)
    {
      if (v5)
      {
        sub_188A34624(0, &qword_1EA92E890);
        v12 = v5;
        v13 = v3;
        v14 = sub_18A4A7C88();

        if (v14)
        {
          return v4 == v6;
        }
      }
    }

    else if (!v5)
    {
      return v4 == v6;
    }
  }

  return 0;
}

uint64_t sub_1891FB60C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1891FB644(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1891FB67C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id sub_1891FB6B4(void *a1)
{
  v2 = v1;
  sub_188A34624(0, qword_1ED4913C0);
  v4 = sub_18A4A7C18();
  if (!v4)
  {
    v4 = [objc_opt_self() blackColor];
  }

  v5 = v4;
  v6 = sub_18A4A7258();
  [a1 decodeDoubleForKey_];
  v8 = v7;

  v9 = sub_18A4A7258();
  [a1 decodeDoubleForKey_];
  v11 = v10;

  v12 = sub_18A4A7258();
  [a1 decodeCGSizeForKey_];
  v14 = v13;
  v16 = v15;

  sub_188A34624(0, &qword_1EA92E890);
  v17 = sub_18A4A7C18();
  v18 = sub_18A4A7258();
  v19 = [a1 decodeIntegerForKey_];

  v20 = &v2[OBJC_IVAR___UIShadowProperties__backingProperties];
  *v20 = v5;
  *(v20 + 1) = v8;
  *(v20 + 2) = v11;
  *(v20 + 3) = v14;
  *(v20 + 4) = v16;
  *(v20 + 6) = 0;
  *(v20 + 7) = 0;
  *(v20 + 5) = v17;
  swift_beginAccess();
  *(v20 + 7) = v19;
  v21 = v17;
  v22 = v5;
  v23 = sub_18A4A7258();
  v24 = [a1 decodeIntegerForKey_];

  *(v20 + 6) = v24;
  v26.receiver = v2;
  v26.super_class = UIShadowProperties;
  return objc_msgSendSuper2(&v26, sel_init);
}

unint64_t sub_1891FB91C()
{
  result = qword_1EA9401D0;
  if (!qword_1EA9401D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9401D0);
  }

  return result;
}

unint64_t sub_1891FB980()
{
  result = qword_1EA9401D8;
  if (!qword_1EA9401D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9401D8);
  }

  return result;
}

unint64_t sub_1891FB9D8()
{
  result = qword_1EA9401E0;
  if (!qword_1EA9401E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9401E0);
  }

  return result;
}

unint64_t sub_1891FBA30()
{
  result = qword_1EA9401E8;
  if (!qword_1EA9401E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9401E8);
  }

  return result;
}

unint64_t sub_1891FBA88()
{
  result = qword_1EA9401F0;
  if (!qword_1EA9401F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9401F0);
  }

  return result;
}

uint64_t sub_1891FBAF8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  static UISceneConnectionOptionDefinition.definitionID.getter(v19);
  v7 = v19[0];
  v6 = v19[1];
  v9 = v19[2];
  v8 = v19[3];
  v10 = OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads;
  swift_beginAccess();
  if (!*(*(v3 + v10) + 16))
  {

    goto LABEL_6;
  }

  sub_188DCCD6C(v7, v6, v9, v8);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_6:
    swift_endAccess();
    goto LABEL_7;
  }

  swift_endAccess();
  _s13StoredPayloadCMa();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
LABEL_7:
    v16 = *(a1 - 8);
    v17 = 1;
    return (*(v16 + 56))(a2, v17, 1, a1);
  }

  v14 = *(*v13 + 120);
  v15 = v13;
  swift_beginAccess();
  v16 = *(a1 - 8);
  (*(v16 + 16))(a2, v15 + v14, a1);
  v17 = 0;
  return (*(v16 + 56))(a2, v17, 1, a1);
}

uint64_t sub_1891FBCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a2;
  v37 = a3;
  v34 = a1;
  v35 = a6;
  v33 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UISceneConnectionOptionDefinition.definitionID.getter(&v39);
  v11 = v39;
  v10 = v40;
  v13 = v41;
  v12 = v42;
  v14 = OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads;
  swift_beginAccess();
  if (!*(*(v6 + v14) + 16))
  {

    goto LABEL_8;
  }

  sub_188DCCD6C(v11, v10, v13, v12);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_8:
    swift_endAccess();
    goto LABEL_9;
  }

  swift_endAccess();
  _s13StoredPayloadCMa();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
LABEL_9:
    static UISceneConnectionOptionDefinition.definitionID.getter(&v39);
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    _s13StoredPayloadCMa();
    (*(v33 + 16))(v9, v34, v35);
    swift_allocObject();
    v30 = sub_1891FC704(a5, v9, v36, v37);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v6 + v14);
    *(v6 + v14) = 0x8000000000000000;
    sub_188E9F6A0(v30, v26, v27, v28, v29, isUniquelyReferenced_nonNull_native);

    *(v6 + v14) = v38;
    return swift_endAccess();
  }

  v18 = v17;
  v19 = *(*v17 + 120);
  swift_beginAccess();
  v20 = *(v33 + 24);

  v20(&v18[v19], v34, v35);
  swift_endAccess();
  v21 = *v18;
  v22 = v36;
  v23 = v37;
  if (!v37)
  {
    v22 = *&v18[*(v21 + 128)];
  }

  v24 = &v18[*(v21 + 128)];
  *v24 = v22;
  v24[1] = v23;
}

uint64_t sub_1891FC000(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = *(**(*(v6 + 56) + ((v13 << 9) | (8 * v14))) + 88);

    LOBYTE(v15) = v15(a1, a2);

    if (v15)
    {
      v16 = 1;
LABEL_13:

      return v16;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v16 = 0;
      goto LABEL_13;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1891FC160(uint64_t a1)
{
  v3 = OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads;
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  *(v1 + v5) = 0x8000000000000000;
  sub_1891FCC4C(v4, sub_1891FCBF4, 0, isUniquelyReferenced_nonNull_native, &v8);

  *(v1 + v5) = v8;
  return swift_endAccess();
}

uint64_t sub_1891FC2AC()
{
  v1 = OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(**(*(v2 + 56) + ((v9 << 9) | (8 * v11))) + 80);

    v12(v13);

    MEMORY[0x18CFE2450](v14);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    result = sub_18A4A75F8();
    v3 = v16;
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v15 = sub_188F99354(v3);

      return v15;
    }

    v6 = *(v2 + 64 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1891FC658()
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t sub_1891FC704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + *(*v4 + 128));
  *v8 = 0;
  v8[1] = 0;
  v9 = *(*v4 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v4 + v9, a2, AssociatedTypeWitness);
  *v8 = a3;
  v8[1] = a4;
  return v4;
}

uint64_t sub_1891FC7EC()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v9 - v4;
  v6 = *(v1 + 120);
  swift_beginAccess();
  (*(v3 + 16))(v5, &v0[v6], AssociatedTypeWitness);
  v7 = static UISceneConnectionOptionDefinition.createAction(payload:responder:)(v5, 0);
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  return v7;
}

uint64_t sub_1891FC970()
{
  if (*(v0 + *(*v0 + 128) + 8))
  {
    sub_188C72980();
    v1 = sub_18A4A7DC8();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1891FC9F0()
{
  v1 = *(*v0 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
}

uint64_t sub_1891FCAC0()
{
  v1 = *(*v0 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t sub_1891FCB88()
{
  sub_1891FCAC0();

  return swift_deallocClassInstance();
}

uint64_t sub_1891FCBF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;
}

uint64_t sub_1891FCC4C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v38 = v10;
  for (i = v6; ; v6 = i)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 32 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v18 = v15[2];
    v19 = v15[3];
    v44[0] = *v15;
    v44[1] = v16;
    v44[2] = v18;
    v44[3] = v19;
    v44[4] = v17;

    a2(&v45, v44);

    v20 = v46;
    if (!v46)
    {
LABEL_22:
      sub_188E036A4();
    }

    v21 = v45;
    v22 = v48;
    v43 = v49;
    v23 = *v50;
    v42 = v47;
    v25 = sub_188DCCD6C(v45, v46, v47, v48);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_24;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_188FA4100();
      }
    }

    else
    {
      sub_1890BD778(v28, a4 & 1);
      v30 = sub_188DCCD6C(v21, v20, v42, v22);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_26;
      }

      v25 = v30;
    }

    v9 &= v9 - 1;
    v32 = *v50;
    if (v29)
    {

      *(v32[7] + 8 * v25) = v43;
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v32[6] + 32 * v25);
      *v33 = v21;
      v33[1] = v20;
      v33[2] = v42;
      v33[3] = v22;
      *(v32[7] + 8 * v25) = v43;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v11 = v12;
    v10 = v38;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_22;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

void sub_1891FCF18()
{
  v2 = *(v0 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator);
  v3 = [v2 state];
  v4 = &selRef_prefersHorizontalMenuAttachment;
  if (v3 != 1)
  {
    [*&v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_mainProgressValue] presentationValue];
    v6 = v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isProgressValueReversed] ? 1.0 - v5 : v5;
    if ([v2 _trackedAnimationsCount] < 3)
    {
      [v2 pauseAnimation];
    }

    else
    {
      [v2 setFractionComplete_];
    }

    v57 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning;
    v4 = &selRef_prefersHorizontalMenuAttachment;
    if (v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] == 1)
    {
      v7 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_keyframes;
      swift_beginAccess();
      v8 = *&v59[v7];
      if (!(v8 >> 62))
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v4 = &selRef_prefersHorizontalMenuAttachment;
        if (!v9)
        {
          goto LABEL_52;
        }

        goto LABEL_11;
      }

      v9 = sub_18A4A7F68();
      v4 = &selRef_prefersHorizontalMenuAttachment;
      if (v9)
      {
LABEL_11:
        v56 = v9 - 1;
        if (v9 >= 1)
        {
          v54 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued;
          v55 = v8 & 0xC000000000000001;
          v52 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed;
          v53 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior;

          v10 = 0;
          if ((v8 & 0xC000000000000001) == 0)
          {
            goto LABEL_14;
          }

LABEL_13:
          v11 = sub_188E48F98(v10, v8);
          while (1)
          {
            v12 = *(v11 + 24);
            v13 = swift_allocObject();
            *(v13 + 16) = v59;
            *(v13 + 24) = v6;
            *(v13 + 32) = v11;
            v14 = v59[v57];
            v15 = *&v59[v54];
            if (v15)
            {
              v16 = v59;
              swift_retain_n();
              v17 = v16;
              v18 = v15;
            }

            else
            {
              v18 = *&v59[v53];
              if (v18)
              {
                v19 = v59;
                swift_retain_n();
                swift_unknownObjectRetain_n();
                v20 = v19;
              }

              else
              {
                type metadata accessor for _UIFluidNavigationTransitionsDomain();
                v67.receiver = swift_getObjCClassFromMetadata();
                v67.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
                v21 = v59;
                swift_retain_n();
                v1 = v21;
                v22 = objc_msgSendSuper2(&v67, sel_rootSettings);
                if (!v22)
                {
                  goto LABEL_66;
                }

                v23 = v22;
                type metadata accessor for _UIFluidNavigationTransitionsSpec();
                v24 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

                v25 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
                if (!v14)
                {
                  v25 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
                }

                v26 = *&v24[*v25];

                v18 = v26;
              }
            }

            swift_unknownObjectRetain_n();
            v27 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v18, v12);
            swift_unknownObjectRelease();
            if (v14)
            {
              goto LABEL_29;
            }

            type metadata accessor for _UIFluidNavigationTransitionsDomain();
            v66.receiver = swift_getObjCClassFromMetadata();
            v66.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
            v28 = objc_msgSendSuper2(&v66, sel_rootSettings);
            if (!v28)
            {
              goto LABEL_65;
            }

            v29 = v28;
            type metadata accessor for _UIFluidNavigationTransitionsSpec();
            v1 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

            v30 = v1[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
            if ((v30 & 1) == 0)
            {
LABEL_29:
              v58 = objc_opt_self();
              v36 = swift_allocObject();
              v36[2] = sub_189202088;
              v36[3] = v13;
              v36[4] = v59;
              v64 = sub_1892022EC;
              v65 = v36;
              aBlock = MEMORY[0x1E69E9820];
              v61 = 1107296256;
              v62 = sub_188A4A8F0;
              v63 = &block_descriptor_80_5;
              v1 = v8;
              v37 = _Block_copy(&aBlock);
              v38 = v59;
              swift_unknownObjectRetain();

              v39 = swift_allocObject();
              *(v39 + 16) = 0;
              *(v39 + 24) = 0;
              v64 = sub_189202328;
              v65 = v39;
              aBlock = MEMORY[0x1E69E9820];
              v61 = 1107296256;
              v62 = sub_188C3DD6C;
              v63 = &block_descriptor_87_1;
              v40 = _Block_copy(&aBlock);

              [v58 _animateUsingSpringBehavior_tracking_animations_completion_];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              _Block_release(v40);
              v41 = v37;
              v8 = v1;
              _Block_release(v41);

              swift_unknownObjectRelease();
              goto LABEL_48;
            }

            v31 = *(v11 + 16);
            if (v59[v52] == 1)
            {
              v32 = v31 + *(v11 + 24);
              if (v6 > v32)
              {
                goto LABEL_45;
              }

              v33 = *(v11 + 48);
              v34 = *(v11 + 56);
              v35 = 0.0;
            }

            else
            {
              if (v31 > v6)
              {
                goto LABEL_45;
              }

              v33 = *(v11 + 48);
              v34 = *(v11 + 56);
              v32 = v31 + *(v11 + 24);
              v35 = 1.0;
            }

            v42 = _UIMap(v35, *(v11 + 16), v32);
            if (v42 < 0.0 && v31 > 0.0)
            {
              v42 = 0.0;
            }

            if (v42 > 1.0 && v32 < 1.0)
            {
              v45 = 1.0;
            }

            else
            {
              v45 = v42;
            }

            if ((v34 & 1) != 0 || v33 != v45)
            {
              *(v11 + 48) = v45;
              *(v11 + 56) = 0;
              v46 = *(v11 + 32);

              v46(v47, v45);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              goto LABEL_47;
            }

LABEL_45:
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
LABEL_47:

LABEL_48:
            if (v56 == v10)
            {

              v4 = &selRef_prefersHorizontalMenuAttachment;
              goto LABEL_52;
            }

            ++v10;
            if (v55)
            {
              goto LABEL_13;
            }

LABEL_14:
            v11 = *(v8 + 8 * v10 + 32);
          }
        }

        __break(1u);
LABEL_65:

        __break(1u);
LABEL_66:

        __break(1u);
        goto LABEL_67;
      }
    }
  }

LABEL_52:
  [*&v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_backgroundProgressValue] v4[275]];
  if (v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isProgressValueReversed])
  {
    v48 = 1.0 - v48;
  }

  *&v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete] = v48;
  *&v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued] = 0;
  swift_unknownObjectRelease();
  v49 = *&v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state];
  if (!v49)
  {
    *&v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] = 1;
    v50 = &v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning];
LABEL_60:
    *v50 = 0;
    v51 = v59;
    sub_189200DAC(0, 0, v51, v51, 1.0);

    return;
  }

  if (v49 != 2)
  {
    if (v49 != 1)
    {
LABEL_67:
      sub_18A4A8398();
      __break(1u);
      return;
    }

    v50 = &v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning];
    if (v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning])
    {
      goto LABEL_60;
    }
  }
}

void sub_1891FD740()
{
  v1 = *&v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state];
  if (!v1)
  {
    goto LABEL_6;
  }

  if (v1 != 2)
  {
    if (v1 != 1)
    {
      sub_18A4A8398();
      __break(1u);
      return;
    }

    if ((v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] & 1) == 0)
    {
LABEL_6:
      *&v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] = 1;
      v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] = 1;
      *&v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued] = 0;
      swift_unknownObjectRelease();
      v2 = v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed];
      *&v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionPosition] = v2;
      v3 = 1.0;
      if (v2)
      {
        v3 = 0.0;
      }

      *&v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete] = v3;
      sub_1891FED38();
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      v5 = v0;
      sub_1892011D4(sub_189202208, v4, v5, v5, 1.0);
    }
  }
}

void sub_1891FD8A8(double a1)
{
  *&v1[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete] = a1;
  if (*&v1[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] == 1 && (v1[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] & 1) == 0)
  {
    v2 = v1;
    sub_189200DAC(0, 0, v2, v2, 1.0);
  }
}

id sub_1891FD934(id result)
{
  v2 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state;
  v3 = *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state);
  if (v3)
  {
    v4 = v3 == 2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (v3 == 1)
    {
      v5 = result;
      *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning) = 0;
      *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued) = 0;
      swift_unknownObjectRelease();
      result = [*(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator) stopAnimation_];
      if (v5)
      {

        return sub_1891FEB20();
      }

      else
      {
        *(v1 + v2) = 2;
      }
    }

    else
    {
      result = sub_18A4A8398();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1891FDA30(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state) == 2)
  {
    *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionPosition) = result;
    v2 = 0.0;
    if (!result)
    {
      v2 = 1.0;
    }

    *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete) = v2;
    [*(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator) finishAnimationAtPosition_];

    return sub_1891FEB20();
  }

  return result;
}

void sub_1891FDB50(double a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 16);
  v5 = v4 + *(v1 + 24);
  v6 = _UIMap(a1, v4, v5);
  if (v6 < 0.0 && v4 > 0.0)
  {
    v6 = 0.0;
  }

  if (v6 > 1.0 && v5 < 1.0)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = v6;
  }

  if ((v3 & 1) != 0 || v2 != v9)
  {
    *(v1 + 48) = v9;
    *(v1 + 56) = 0;
    v10 = *(v1 + 32);

    v10(v11, v9);
  }
}

uint64_t sub_1891FDC0C()
{

  return swift_deallocClassInstance();
}

char *sub_1891FDCEC(void *a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued] = 0;
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionPosition] = 2;
  v13 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionHandlers] = v13;
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_keyframes] = v13;
  v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isC2Finished] = 0;
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete] = 0;
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] = 0;
  v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] = 0;
  v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed] = 0;
  v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__pausesOnCompletion] = 0;
  if (a1)
  {
    v14 = a1;
  }

  else
  {
    v14 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  }

  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_backgroundProgressValue] = v14;
  v15 = objc_allocWithZone(UIViewFloatAnimatableProperty);
  v16 = a1;
  v17 = [v15 init];
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_mainProgressValue] = v17;
  v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isProgressValueReversed] = a2 & 1;
  v18 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:3 curve:0 animations:a5];
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator] = v18;
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior] = a4;
  v35.receiver = v6;
  v35.super_class = ObjectType;
  swift_unknownObjectRetain();
  v19 = objc_msgSendSuper2(&v35, sel_init);
  v20 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator;
  v21 = *&v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator];
  v22 = v19;
  [v21 setPausesOnCompletion_];
  [*&v19[v20] setScrubsLinearly_];
  [*&v19[v20] _setShouldLayoutSubviews_];
  [*&v19[v20] _setShouldBeginFromCurrentState_];
  [*&v19[v20] set:0 updatesModelValues:?];
  v23 = *&v19[v20];
  v24 = sub_18A4A7258();
  [v23 set:v24 name:?];

  v25 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_18A64B710;
  v27 = *&v22[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_mainProgressValue];
  *(v26 + 32) = v27;
  sub_188BFDA00();
  v28 = v27;
  v29 = sub_18A4A7518();

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34[4] = sub_188E3FCF4;
  v34[5] = v30;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 1107296256;
  v34[2] = sub_188A4A8F0;
  v34[3] = &block_descriptor_186_0;
  v31 = _Block_copy(v34);

  [v25 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v31);

  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_189200BA0(v22, v32, a3);

  swift_unknownObjectRelease();

  return v22;
}

void sub_1891FE0F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  [*(Strong + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_mainProgressValue) presentationValue];
  if (v2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isProgressValueReversed])
  {
    v4 = 1.0 - v3;
  }

  else
  {
    v4 = v3;
  }

  v5 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator;
  v6 = [*&v2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator] _trackedAnimationsCount];
  v7 = *&v2[v5];
  if (v6 < 3)
  {
    [v7 pauseAnimation];
  }

  else
  {
    [v7 setFractionComplete_];
  }

  v51 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning;
  if (v2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] != 1)
  {
    goto LABEL_54;
  }

  v8 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_keyframes;
  swift_beginAccess();
  v52 = *&v2[v8];
  if (v52 >> 62)
  {
    v9 = sub_18A4A7F68();
    if (v9)
    {
      goto LABEL_11;
    }

LABEL_54:

    return;
  }

  v9 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_54;
  }

LABEL_11:
  v50 = v9 - 1;
  if (v9 < 1)
  {
    __break(1u);
LABEL_57:

    __break(1u);
LABEL_58:

    __break(1u);
    return;
  }

  v49 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued;
  v47 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed;
  v48 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior;

  for (i = 0; ; ++i)
  {
    if ((v52 & 0xC000000000000001) != 0)
    {
      v16 = sub_188E48F98(i, v52);
    }

    else
    {
      v16 = *(v52 + 8 * i + 32);
    }

    v17 = *(v16 + 24);
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = v4;
    *(v18 + 32) = v16;
    v0 = v2[v51];
    v19 = *&v2[v49];
    if (v19)
    {
      v20 = v2;
      swift_retain_n();
      v21 = v20;
      v22 = v19;
    }

    else
    {
      v22 = *&v2[v48];
      if (v22)
      {
        v23 = v2;
        swift_retain_n();
        swift_unknownObjectRetain_n();
        v24 = v23;
      }

      else
      {
        v25 = v2[v51];
        type metadata accessor for _UIFluidNavigationTransitionsDomain();
        v61.receiver = swift_getObjCClassFromMetadata();
        v61.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
        v26 = v2;
        swift_retain_n();
        v0 = v26;
        v27 = objc_msgSendSuper2(&v61, sel_rootSettings);
        if (!v27)
        {
          goto LABEL_58;
        }

        v28 = v27;
        type metadata accessor for _UIFluidNavigationTransitionsSpec();
        v29 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

        v0 = v25;
        v30 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
        if (!v25)
        {
          v30 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
        }

        v31 = *&v29[*v30];

        v22 = v31;
      }
    }

    swift_unknownObjectRetain_n();
    v32 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v22, v17);
    swift_unknownObjectRelease();
    if (v0)
    {
      break;
    }

    type metadata accessor for _UIFluidNavigationTransitionsDomain();
    v60.receiver = swift_getObjCClassFromMetadata();
    v60.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
    v33 = objc_msgSendSuper2(&v60, sel_rootSettings);
    if (!v33)
    {
      goto LABEL_57;
    }

    v34 = v33;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v35 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    LOBYTE(v34) = v35[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
    if ((v34 & 1) == 0)
    {
      break;
    }

    v36 = *(v16 + 16);
    if (v2[v47] == 1)
    {
      v37 = v36 + *(v16 + 24);
      if (v4 > v37)
      {
        goto LABEL_47;
      }

      v38 = *(v16 + 48);
      v39 = *(v16 + 56);
      v40 = 0.0;
    }

    else
    {
      if (v36 > v4)
      {
        goto LABEL_47;
      }

      v38 = *(v16 + 48);
      v39 = *(v16 + 56);
      v37 = v36 + *(v16 + 24);
      v40 = 1.0;
    }

    v41 = _UIMap(v40, *(v16 + 16), v37);
    if (v41 < 0.0 && v36 > 0.0)
    {
      v41 = 0.0;
    }

    if (v41 > 1.0 && v37 < 1.0)
    {
      v44 = 1.0;
    }

    else
    {
      v44 = v41;
    }

    if ((v39 & 1) == 0 && v38 == v44)
    {
LABEL_47:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_49;
    }

    *(v16 + 48) = v44;
    *(v16 + 56) = 0;
    v45 = *(v16 + 32);

    v45(v46, v44);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_49:

    if (v50 == i)
    {

      goto LABEL_52;
    }

LABEL_14:
    ;
  }

  v53 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2] = sub_1892022F0;
  v11[3] = v18;
  v11[4] = v2;
  v58 = sub_1892022EC;
  v59 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_188A4A8F0;
  v57 = &block_descriptor_234_1;
  v12 = _Block_copy(&aBlock);
  v13 = v2;
  swift_unknownObjectRetain();

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v58 = sub_189202328;
  v59 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_188C3DD6C;
  v57 = &block_descriptor_241_0;
  v15 = _Block_copy(&aBlock);

  [v53 _animateUsingSpringBehavior_tracking_animations_completion_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(v15);
  _Block_release(v12);

  swift_unknownObjectRelease();
  if (v50 != i)
  {
    goto LABEL_14;
  }

LABEL_52:
}

uint64_t sub_1891FE7F8(double a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = a1;
  if (a3)
  {
    v8 = objc_opt_self();
    sub_18A4A79D8();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = swift_allocObject();
    v16 = sub_189202238;
    *(v15 + 16) = sub_189202238;
    *(v15 + 24) = v7;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_223_0;
    v17 = _Block_copy(aBlock);

    LODWORD(v18) = v10;
    LODWORD(v19) = v12;
    LODWORD(v20) = v14;
    [v8 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
    _Block_release(v17);
  }

  else
  {

    sub_1891FEA00(a1);

    v16 = 0;
  }

  return sub_188A55B8C(v16);
}

void sub_1891FEA00(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isProgressValueReversed))
    {
      a1 = 1.0 - a1;
    }

    [*(Strong + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_backgroundProgressValue) setValue_];
    if ([*&v3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator] _trackedAnimationsCount] <= 2)
    {
      v4 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_keyframes;
      swift_beginAccess();
      v5 = *&v3[v4];
      if (v5 >> 62)
      {
        if (!sub_18A4A7F68())
        {
          goto LABEL_8;
        }
      }

      else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:

        return;
      }
    }

    [*&v3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_mainProgressValue] setValue_];
    goto LABEL_8;
  }
}

uint64_t sub_1891FEB20()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state;
  if ((*(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state) - 1) > 1)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000032, 0x800000018A6B2790);
    type metadata accessor for UIViewAnimatingState(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](0x2E657461747320, 0xE700000000000000);
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    v3 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionHandlers;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *(v1 + v3) = MEMORY[0x1E69E7CC0];
    *(v1 + v2) = 0;
    v5 = *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator);
    v6 = 1.0;
    if (*(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed))
    {
      v6 = 0.0;
    }

    [*(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator) setFractionComplete_];
    if ([v5 state] == 1)
    {
      [v5 stopAnimation_];
      [v5 finishAnimationAtPosition_];
    }

    v7 = *(v4 + 16);
    if (v7)
    {
      v8 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionPosition;
      v9 = v4 + 40;
      do
      {
        v10 = *(v9 - 8);
        v12 = *(v1 + v8);

        v10(&v12);

        v9 += 16;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

id sub_1891FED38()
{
  result = [*&v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator] state];
  if (result != 1)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1892020AC;
    *(v4 + 24) = v3;
    v7[4] = sub_188E3FE50;
    v7[5] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_188A4A968;
    v7[3] = &block_descriptor_123_0;
    v5 = _Block_copy(v7);
    v6 = v0;

    [v2 _performWithInProcessProgressAnimating_block_];
    _Block_release(v5);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1891FEEC0(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = v6 + 40;
    do
    {
      v9 = *(v8 - 8);
      v10 = a2;

      v9(&v10);

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1891FF108(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);
      v25[0] = a2;

      v8(v25);

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  v9 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_keyframes;
  result = swift_beginAccess();
  v11 = *(a1 + v9);
  if (v11 >> 62)
  {
    result = sub_18A4A7F68();
    v12 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return result;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = sub_188E48F98(i, v11);
      }

      else
      {
        v16 = *(v11 + 8 * i + 32);
      }

      v17 = *(v16 + 48);
      v18 = *(v16 + 56);
      v19 = *(v16 + 16);
      v20 = v19 + *(v16 + 24);
      v21 = _UIMap(a2, v19, v20);
      if (v21 < 0.0 && v19 > 0.0)
      {
        v21 = 0.0;
      }

      if (v21 > 1.0 && v20 < 1.0)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = v21;
      }

      if ((v18 & 1) != 0 || v17 != v24)
      {
        *(v16 + 48) = v24;
        *(v16 + 56) = 0;
        v14 = *(v16 + 32);

        v14(v15, v24);
      }
    }
  }

  return result;
}

uint64_t sub_1891FF464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v10[4] = sub_188E3FE50;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188A4A968;
  v10[3] = &block_descriptor_148_2;
  v8 = _Block_copy(v10);

  [v5 _performWithInProcessProgressAnimating_block_];

  _Block_release(v8);
  LOBYTE(Strong) = swift_isEscapingClosureAtFileLocation();

  if (Strong)
  {
    __break(1u);
  }

  return result;
}

id sub_1891FF87C(double a1)
{
  if (*&v1[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior])
  {
    goto LABEL_4;
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v8.receiver = swift_getObjCClassFromMetadata();
  v8.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  result = objc_msgSendSuper2(&v8, sel_rootSettings);
  if (result)
  {
    v4 = result;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    v6 = *&v5[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring];
LABEL_4:
    swift_getObjectType();
    swift_unknownObjectRetain();
    v7 = swift_unknownObjectRetain();
    sub_189200184(v7, v1, a1);
    return swift_unknownObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1891FFAC0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  _s22HybridPropertyAnimatorC8KeyframeCMa();
  v10 = swift_allocObject();
  *(v10 + 40) = a2;
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = a1;
  v11 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_keyframes;
  swift_beginAccess();

  MEMORY[0x18CFE2450](v12);
  if (*((*&v5[v11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v5[v11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18A4A7588();
  }

  sub_18A4A75F8();
  swift_endAccess();
  if (*&v5[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] == 1 && (v5[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] & 1) == 0)
  {

    sub_189201C3C(0, 0, v5, v10, 1.0);
  }
}

uint64_t sub_1891FFCB8(uint64_t isEscapingClosureAtFileLocation, double a2, double a3, double a4)
{
  if (a4 != 0.0)
  {
    v6 = a2 - a3;
    if (a2 - a3 != 0.0)
    {
      v7 = a4 / v6;
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = isEscapingClosureAtFileLocation;
      *(v9 + 24) = a2;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1892020A0;
      *(v10 + 24) = v9;
      aBlock[4] = sub_188A4B574;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A968;
      aBlock[3] = &block_descriptor_113_1;
      v11 = _Block_copy(aBlock);
      v12 = isEscapingClosureAtFileLocation;

      [v8 _performWithStartingVelocity_actionsWithAnimation_];
      _Block_release(v11);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  v14 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations;
  result = swift_beginAccess();
  v15 = *(isEscapingClosureAtFileLocation + v14);
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = v15 + 40;
    do
    {
      v18 = *(v17 - 8);
      v19 = a2;

      v18(&v19);

      v17 += 16;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_1891FFEB4(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = v6 + 40;
    do
    {
      v9 = *(v8 - 8);
      v10 = a2;

      v9(&v10);

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  return result;
}

void sub_1891FFF68(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isC2Finished) & 1) == 0 && (*(a1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning))
  {
    *(a1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isC2Finished) = 1;
    if (*(a1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state) == 1)
    {
      if (*(a1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__pausesOnCompletion) == 1)
      {
        sub_1891FCF18();
      }

      else
      {
        sub_1891FEB20();
      }
    }
  }
}

uint64_t sub_189200018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3)
  {
    return a3();
  }

  return result;
}

uint64_t sub_189200184(uint64_t result, _BYTE *a2, double a3)
{
  v3 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state;
  v4 = *&a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state];
  if (v4)
  {
    v5 = v4 == 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return result;
  }

  if (v4 != 1)
  {
LABEL_32:
    result = sub_18A4A8398();
    __break(1u);
    return result;
  }

  v6 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning;
  if (a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning])
  {
    return result;
  }

  v7 = a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed];
  *&a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionPosition] = v7;
  v8 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete;
  v9 = *&a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete];
  v10 = 1.0;
  if (v7)
  {
    v10 = 0.0;
  }

  *&a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete] = v10;
  v13 = result;
  sub_1891FED38();
  a2[v6] = 1;
  v14 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued;
  *&a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued] = v13;
  swift_unknownObjectRelease();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = a3;
  *(v16 + 32) = a2;
  v17 = a2[v6];
  v18 = *&a2[v14];
  v40 = a2;
  v19 = a2;
  v20 = v19;
  v41 = v17;
  if (v18)
  {
    v21 = v19;
    swift_unknownObjectRetain();
    v22 = v18;
  }

  else
  {
    v22 = *&v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior];
    if (v22)
    {
      v23 = v19;
      swift_unknownObjectRetain_n();
      v24 = v23;
      swift_unknownObjectRetain();
      v17 = v41;
    }

    else
    {
      type metadata accessor for _UIFluidNavigationTransitionsDomain();
      v49.receiver = swift_getObjCClassFromMetadata();
      v49.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
      v17 = v20;
      swift_unknownObjectRetain();
      v25 = objc_msgSendSuper2(&v49, sel_rootSettings);
      if (!v25)
      {
LABEL_31:

        __break(1u);
        goto LABEL_32;
      }

      v26 = v25;
      type metadata accessor for _UIFluidNavigationTransitionsSpec();
      v27 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

      v28 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
      v17 = v41;
      if (!v41)
      {
        v28 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
      }

      v29 = *&v27[*v28];

      v22 = v29;
    }
  }

  swift_unknownObjectRetain_n();
  v30 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v22, 1.0);
  swift_unknownObjectRelease();
  if (v17)
  {
LABEL_27:
    v34 = objc_opt_self();
    v35 = swift_allocObject();
    v35[2] = sub_188E3FB24;
    v35[3] = v16;
    v35[4] = v20;
    v46 = sub_1892022EC;
    v47 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_188A4A8F0;
    v45 = &block_descriptor_63_5;
    v36 = _Block_copy(&aBlock);
    v37 = v20;
    swift_unknownObjectRetain();

    v38 = swift_allocObject();
    *(v38 + 16) = sub_189202308;
    *(v38 + 24) = v15;
    v46 = sub_189202328;
    v47 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_188C3DD6C;
    v45 = &block_descriptor_70_6;
    v39 = _Block_copy(&aBlock);

    [v34 _animateUsingSpringBehavior_tracking_animations_completion_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v39);
    _Block_release(v36);

    return swift_unknownObjectRelease();
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v48.receiver = swift_getObjCClassFromMetadata();
  v48.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  v31 = objc_msgSendSuper2(&v48, sel_rootSettings);
  if (!v31)
  {

    __break(1u);
    goto LABEL_31;
  }

  v32 = v31;
  type metadata accessor for _UIFluidNavigationTransitionsSpec();
  v33 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

  LOBYTE(v32) = v33[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
  if ((v32 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1891FFCB8(v20, *&v40[v8], v9, a3);
  if (*(v20 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isC2Finished) & 1) == 0 && (v40[v6])
  {
    *(v20 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isC2Finished) = 1;
    if (*&v40[v3] == 1)
    {
      if (*(v20 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__pausesOnCompletion) == 1)
      {
        sub_1891FCF18();
      }

      else
      {
        sub_1891FEB20();
      }
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_18920075C(void (*a1)(uint64_t), uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v13 = a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning];
  v14 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued];
  v35 = a1;
  if (v14)
  {

    v15 = v14;
  }

  else
  {
    v15 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior];
    if (v15)
    {
      swift_unknownObjectRetain_n();
    }

    else
    {
      type metadata accessor for _UIFluidNavigationTransitionsDomain();
      v43.receiver = swift_getObjCClassFromMetadata();
      v43.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;

      v16 = objc_msgSendSuper2(&v43, sel_rootSettings);
      if (!v16)
      {
        goto LABEL_18;
      }

      v17 = v16;
      type metadata accessor for _UIFluidNavigationTransitionsSpec();
      v18 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

      v19 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
      if (!v13)
      {
        v19 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
      }

      v20 = *&v18[*v19];

      v15 = v20;
    }
  }

  swift_unknownObjectRetain_n();
  v21 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v15, a6);
  swift_unknownObjectRelease();
  v34 = v13;
  if (v13)
  {
    goto LABEL_15;
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v42.receiver = swift_getObjCClassFromMetadata();
  v42.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  v22 = objc_msgSendSuper2(&v42, sel_rootSettings);
  if (v22)
  {
    v23 = v22;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v24 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    v25 = v24[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
    if (v25)
    {
      v26 = sub_1891FE7F8(*&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete], a4, a5);
      if (v35)
      {
        v35(v26);
      }

      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

LABEL_15:
    v33 = objc_opt_self();
    v27 = swift_allocObject();
    v27[2] = sub_18920232C;
    v27[3] = v12;
    v27[4] = a3;
    v40 = sub_1892022EC;
    v41 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_188A4A8F0;
    v39 = &block_descriptor_205_1;
    v28 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v29 = a3;

    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = a2;
    v40 = sub_189202328;
    v41 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_188C3DD6C;
    v39 = &block_descriptor_212_1;
    v31 = _Block_copy(&aBlock);
    sub_188D738F4(v35);

    [v33 _animateUsingSpringBehavior_tracking_animations_completion_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v31);
    _Block_release(v28);

    return swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_18:

  __break(1u);
  return result;
}

uint64_t sub_189200BA0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18920222C;
  *(v7 + 24) = v6;
  v8 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations;
  swift_beginAccess();
  v9 = *&a1[v8];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v8] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_188E4B4D8(0, v9[2] + 1, 1, v9);
    *&a1[v8] = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_188E4B4D8((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  v13 = &v9[2 * v12];
  v13[4] = sub_189202324;
  v13[5] = v7;
  *&a1[v8] = v9;
  swift_endAccess();
  if (*&a1[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] == 1)
  {

    sub_18920075C(0, 0, a1, a2, a3, 1.0);
  }
}

void sub_189200D48(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 16);
  if (*(a1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed) == 1)
  {
    v4 = 0.0;
    if (v3 + *(a2 + 24) < a3)
    {
      return;
    }

    goto LABEL_3;
  }

  v4 = 1.0;
  if (v3 <= a3)
  {
LABEL_3:
    sub_1891FDB50(v4);
  }
}

void sub_189200DAC(void (*a1)(uint64_t), uint64_t a2, unsigned __int8 *a3, void *a4, double a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning];
  v13 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued];
  if (v13)
  {
    v14 = a4;
    v15 = v13;
  }

  else
  {
    v15 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior];
    if (v15)
    {
      swift_unknownObjectRetain_n();
      v16 = a4;
    }

    else
    {
      type metadata accessor for _UIFluidNavigationTransitionsDomain();
      v41.receiver = swift_getObjCClassFromMetadata();
      v41.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
      v5 = a4;
      v17 = objc_msgSendSuper2(&v41, sel_rootSettings);
      if (!v17)
      {
        goto LABEL_18;
      }

      v18 = v17;
      type metadata accessor for _UIFluidNavigationTransitionsSpec();
      v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

      v19 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
      if (!v12)
      {
        v19 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
      }

      v20 = *&v5[*v19];

      v15 = v20;
    }
  }

  swift_unknownObjectRetain_n();
  v21 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v15, a5);
  swift_unknownObjectRelease();
  v33 = v12;
  if (v12)
  {
    goto LABEL_15;
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v40.receiver = swift_getObjCClassFromMetadata();
  v40.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  v22 = objc_msgSendSuper2(&v40, sel_rootSettings);
  if (v22)
  {
    v23 = v22;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v24 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    v25 = v24[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
    if (v25)
    {
      v26 = sub_1891FF108(a4, *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete]);
      if (a1)
      {
        a1(v26);
      }

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

LABEL_15:
    v32 = objc_opt_self();
    v27 = swift_allocObject();
    v27[2] = sub_189202098;
    v27[3] = v11;
    v27[4] = a3;
    v38 = sub_1892022EC;
    v39 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_188A4A8F0;
    v37 = &block_descriptor_97_1;
    v28 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v29 = a3;

    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    *(v30 + 24) = a2;
    v38 = sub_189202328;
    v39 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_188C3DD6C;
    v37 = &block_descriptor_104_1;
    v31 = _Block_copy(&aBlock);
    sub_188D738F4(a1);

    [v32 _animateUsingSpringBehavior_tracking_animations_completion_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v31);
    _Block_release(v28);

LABEL_16:
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
LABEL_18:

  __break(1u);
}

void sub_1892011D4(void (*a1)(uint64_t), uint64_t a2, unsigned __int8 *a3, char *a4, double a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning];
  v13 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued];
  v39 = a2;
  if (v13)
  {
    v14 = a4;
    v15 = v13;
  }

  else
  {
    v15 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior];
    if (v15)
    {
      swift_unknownObjectRetain_n();
      v16 = a4;
    }

    else
    {
      type metadata accessor for _UIFluidNavigationTransitionsDomain();
      v48.receiver = swift_getObjCClassFromMetadata();
      v48.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
      v5 = a4;
      v17 = objc_msgSendSuper2(&v48, sel_rootSettings);
      if (!v17)
      {
        goto LABEL_22;
      }

      v18 = v17;
      type metadata accessor for _UIFluidNavigationTransitionsSpec();
      v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

      v19 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
      if (!v12)
      {
        v19 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
      }

      v20 = *&v5[*v19];

      v15 = v20;
    }
  }

  swift_unknownObjectRetain_n();
  v21 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v15, a5);
  swift_unknownObjectRelease();
  if (v12)
  {
    goto LABEL_19;
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v47.receiver = swift_getObjCClassFromMetadata();
  v47.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  v22 = objc_msgSendSuper2(&v47, sel_rootSettings);
  if (v22)
  {
    v23 = v22;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v24 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    v25 = v24[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
    if (v25)
    {
      v26 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete];
      v27 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations;
      v28 = swift_beginAccess();
      v29 = *&a4[v27];
      v30 = *(v29 + 16);
      if (v30)
      {

        v31 = v29 + 40;
        do
        {
          v32 = *(v31 - 8);
          v40 = v26;

          v32(&v40);

          v31 += 16;
          --v30;
        }

        while (v30);
      }

      if (a1)
      {
        a1(v28);
      }

      swift_unknownObjectRelease();
      goto LABEL_20;
    }

LABEL_19:
    v38 = objc_opt_self();
    v33 = swift_allocObject();
    v33[2] = sub_189202224;
    v33[3] = v11;
    v33[4] = a3;
    v45 = sub_1892022EC;
    v46 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_188A4A8F0;
    v44 = &block_descriptor_173_1;
    v34 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v35 = a3;

    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    *(v36 + 24) = v39;
    v45 = sub_189202328;
    v46 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_188C3DD6C;
    v44 = &block_descriptor_180_1;
    v37 = _Block_copy(&aBlock);
    sub_188D738F4(a1);

    [v38 _animateUsingSpringBehavior_tracking_animations_completion_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v37);
    _Block_release(v34);

LABEL_20:
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
LABEL_22:

  __break(1u);
}

void sub_18920166C(void (*a1)(uint64_t), uint64_t a2, unsigned __int8 *a3, uint64_t (**a4)(void, double), double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  v11 = a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning];
  v12 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued];
  if (v12)
  {
    _Block_copy(a4);
    v13 = v12;
  }

  else
  {
    v13 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior];
    if (v13)
    {
      swift_unknownObjectRetain();
      _Block_copy(a4);
      swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _UIFluidNavigationTransitionsDomain();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      _Block_copy(a4);
      v40.receiver = ObjCClassFromMetadata;
      v40.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
      v15 = objc_msgSendSuper2(&v40, sel_rootSettings);
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = v15;
      type metadata accessor for _UIFluidNavigationTransitionsSpec();
      v17 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

      v18 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
      if (!v11)
      {
        v18 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
      }

      v19 = *&v17[*v18];

      v13 = v19;
    }
  }

  swift_unknownObjectRetain_n();
  v20 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v13, a5);
  swift_unknownObjectRelease();
  v32 = v11;
  if (v11)
  {
    goto LABEL_15;
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v39.receiver = swift_getObjCClassFromMetadata();
  v39.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  v21 = objc_msgSendSuper2(&v39, sel_rootSettings);
  if (v21)
  {
    v22 = v21;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v23 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    v24 = v23[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
    if (v24)
    {
      v25 = a4[2](a4, *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete]);
      if (a1)
      {
        a1(v25);
      }

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

LABEL_15:
    v31 = objc_opt_self();
    v26 = swift_allocObject();
    v26[2] = sub_188EB2CC4;
    v26[3] = v10;
    v26[4] = a3;
    v37 = sub_1892022EC;
    v38 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_188A4A8F0;
    v36 = &block_descriptor_43_3;
    v27 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v28 = a3;

    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    *(v29 + 24) = a2;
    v37 = sub_189202328;
    v38 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_188C3DD6C;
    v36 = &block_descriptor_50_4;
    v30 = _Block_copy(&aBlock);
    sub_188D738F4(a1);

    [v31 _animateUsingSpringBehavior_tracking_animations_completion_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v30);
    _Block_release(v27);

LABEL_16:
    swift_unknownObjectRelease();
    return;
  }

  _Block_release(a4);
  __break(1u);
LABEL_18:
  _Block_release(a4);
  __break(1u);
}

uint64_t sub_189201AB0(unsigned __int8 *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188EB2CC4;
  *(v5 + 24) = v4;
  v6 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations;
  swift_beginAccess();
  v7 = *&a1[v6];
  _Block_copy(a2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v6] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_188E4B4D8(0, v7[2] + 1, 1, v7);
    *&a1[v6] = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_188E4B4D8((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_18920205C;
  v11[5] = v5;
  *&a1[v6] = v7;
  swift_endAccess();
  if (*&a1[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] == 1)
  {
    _Block_copy(a2);
    sub_18920166C(0, 0, a1, a2, 1.0);
    _Block_release(a2);
  }
}

uint64_t sub_189201C3C(void (*a1)(void), uint64_t a2, unsigned __int8 *a3, uint64_t a4, double a5)
{
  v10 = a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning];
  v11 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued];
  if (v11)
  {

    v12 = v11;
  }

  else
  {
    v12 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior];
    if (v12)
    {
      swift_unknownObjectRetain_n();
    }

    else
    {
      type metadata accessor for _UIFluidNavigationTransitionsDomain();
      v37.receiver = swift_getObjCClassFromMetadata();
      v37.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;

      v13 = objc_msgSendSuper2(&v37, sel_rootSettings);
      if (!v13)
      {
        goto LABEL_18;
      }

      v14 = v13;
      type metadata accessor for _UIFluidNavigationTransitionsSpec();
      v15 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

      v16 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
      if (!v10)
      {
        v16 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
      }

      v17 = *&v15[*v16];

      v12 = v17;
    }
  }

  swift_unknownObjectRetain_n();
  v18 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v12, a5);
  swift_unknownObjectRelease();
  if (v10)
  {
    goto LABEL_15;
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v36.receiver = swift_getObjCClassFromMetadata();
  v36.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  v19 = objc_msgSendSuper2(&v36, sel_rootSettings);
  if (v19)
  {
    v20 = v19;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v21 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    v22 = v21[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
    if (v22)
    {
      sub_1891FDB50(*&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete]);
      if (a1)
      {
        a1();
      }

      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

LABEL_15:
    v29 = objc_opt_self();
    v23 = swift_allocObject();
    v23[2] = sub_189202054;
    v23[3] = a4;
    v23[4] = a3;
    v34 = sub_189202058;
    v35 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_188A4A8F0;
    v33 = &block_descriptor_152;
    v24 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v25 = a3;

    v26 = swift_allocObject();
    *(v26 + 16) = a1;
    *(v26 + 24) = a2;
    v34 = sub_188FE62EC;
    v35 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_188C3DD6C;
    v33 = &block_descriptor_25_6;
    v27 = _Block_copy(&aBlock);
    sub_188D738F4(a1);

    [v29 _animateUsingSpringBehavior_tracking_animations_completion_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v27);
    _Block_release(v24);

    return swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_18:

  __break(1u);
  return result;
}

id sub_1892020C8()
{
  if (*&v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior])
  {
    goto LABEL_4;
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v6.receiver = swift_getObjCClassFromMetadata();
  v6.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  result = objc_msgSendSuper2(&v6, sel_rootSettings);
  if (result)
  {
    v2 = result;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    v4 = *&v3[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring];
LABEL_4:
    swift_getObjectType();
    swift_unknownObjectRetain();
    v5 = swift_unknownObjectRetain();
    sub_189200184(v5, v0, 0.0);
    return swift_unknownObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_18Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_189202334@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 32);
  (v9)((AssociatedTypeWitness - 8), a3, a1, AssociatedTypeWitness);
  v7 = a3 + *(type metadata accessor for UITypedKeyDiff() + 36);

  return v9(v7, a2, AssociatedTypeWitness);
}

uint64_t UITypedKeyDiff.oldValue.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t UITypedKeyDiff.newValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t sub_189202528()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1892025A8(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v7 = ((*(*(AssociatedTypeWitness - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(AssociatedTypeWitness - 8) + 64);
  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_18920274C(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v15 = *(v6 + 56);

  v15(a1, a2);
}

void sub_1892029B4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    if (Strong)
    {
      sub_188A34624(0, &qword_1EA9306B0);
      v4 = Strong;
      v5 = sub_18A4A7C88();

      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    sub_189205920();
    v4 = Strong;
LABEL_9:

    goto LABEL_10;
  }

  if (Strong)
  {
    goto LABEL_8;
  }

LABEL_10:
}

void sub_189202A9C()
{
  v1 = v0;
  v2 = OBJC_IVAR____UITabButton_appearanceData;
  v3 = *(v0 + OBJC_IVAR____UITabButton_appearanceData);
  sub_188A34624(0, qword_1EA930628);
  v4 = v3;
  v5 = sub_18A4A7C88();

  if ((v5 & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____UITabButton_imageView);
    if (*(v1 + OBJC_IVAR____UITabButton_configuration) == 1)
    {
      v7 = sub_18920362C();
      v8 = sub_18920371C();
      v9 = sub_1892062B8(v7, v8);
      v10 = [objc_opt_self() configurationWithFont_];
    }

    else
    {
      v10 = [*(v1 + v2) preferredSymbolConfiguration];
    }

    [v6 setPreferredSymbolConfiguration_];

    sub_189205B48();
    v11 = v1 + OBJC_IVAR____UITabButton_sizeCache;
    *v11 = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = *(v1 + v2);
      v15 = *(Strong + OBJC_IVAR____UITabButton_appearanceData);
      *(Strong + OBJC_IVAR____UITabButton_appearanceData) = v14;
      v16 = v14;
      sub_189202A9C(v15);
    }
  }
}

void sub_189202C38()
{
  v1 = v0;
  if (v0[OBJC_IVAR____UITabButton_ignoresSelectedState] == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v36 = Strong;
      if ([v0 isSelected])
      {
        [*&v0[OBJC_IVAR____UITabButton_imageView] _setMatchedViewIdentifier_];
        v3 = *&v0[OBJC_IVAR____UITabButton_badgeView];
        if (v3)
        {
          [v3 _setMatchedViewIdentifier_];
        }

        v4 = *&v0[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage + 8];
        v5 = &v36[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage];
        *v5 = *&v0[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage];
        *(v5 + 1) = v4;

        sub_189202C38(v6);
        v7 = *&v0[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge + 8];
        v8 = &v36[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge];
        *v8 = *&v0[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge];
        *(v8 + 1) = v7;
        goto LABEL_26;
      }
    }

    v15 = *&v0[OBJC_IVAR____UITabButton_imageView];
    if (*&v1[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage + 8])
    {

      v16 = sub_18A4A7258();
    }

    else
    {
      v16 = 0;
    }

    [v15 _setMatchedViewIdentifier_];

    v17 = *&v1[OBJC_IVAR____UITabButton_badgeView];
    if (v17)
    {
      if (*&v1[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge + 8])
      {
        v18 = v17;

        v19 = sub_18A4A7258();
      }

      else
      {
        v18 = v17;
        v19 = 0;
      }

      [v18 _setMatchedViewIdentifier_];
    }

    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      v31 = (v29 + OBJC_IVAR____UITabButton_matchMoveIdentifierForImage);
      *v31 = 0;
      v31[1] = 0;

      sub_189202C38(v32);
    }

    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = (v33 + OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge);
      *v34 = 0;
      v34[1] = 0;
      v36 = v33;
      goto LABEL_33;
    }
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____UITabButton_imageView];
    v10 = &v1[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage];
    if (*&v1[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage + 8])
    {

      v11 = sub_18A4A7258();
    }

    else
    {
      v11 = 0;
    }

    [v9 _setMatchedViewIdentifier_];

    v12 = *&v1[OBJC_IVAR____UITabButton_badgeView];
    if (v12)
    {
      if (*&v1[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge + 8])
      {
        v13 = v12;

        v14 = sub_18A4A7258();
      }

      else
      {
        v13 = v12;
        v14 = 0;
      }

      [v13 _setMatchedViewIdentifier_];
    }

    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      v22 = *(v10 + 1);
      v23 = &v21[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage];
      *v23 = *v10;
      *(v23 + 1) = v22;

      sub_189202C38(v24);
    }

    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      v27 = *&v1[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge + 8];
      v28 = &v26[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge];
      *v28 = *&v1[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge];
      *(v28 + 1) = v27;
      v36 = v26;
LABEL_26:

LABEL_33:

      sub_189202C38(v35);
    }
  }
}

id sub_1892030E4(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for _UITabButton();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1892031B0(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v15.receiver = v6;
  v15.super_class = type metadata accessor for _UITabButton();
  objc_msgSendSuper2(&v15, *a1, a3, a4, a5, a6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (*(v6 + OBJC_IVAR____UITabButton_synchronizeAppearanceAndLayoutChangesToLinkedButton) == 1)
    {
      [v6 *a2];
      [v14 *a1];
    }
  }
}

void sub_189203310(double a1, double a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for _UITabButton();
  objc_msgSendSuper2(&v7, sel_setCenter_, a1, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(v2 + OBJC_IVAR____UITabButton_synchronizeAppearanceAndLayoutChangesToLinkedButton) == 1)
    {
      [v2 center];
      [v6 setCenter_];
    }
  }
}

void sub_189203450(double a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _UITabButton();
  objc_msgSendSuper2(&v5, sel_setAlpha_, a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(v1 + OBJC_IVAR____UITabButton_synchronizeAppearanceAndLayoutChangesToLinkedButton) == 1)
    {
      [v1 alpha];
      [v4 setAlpha_];
    }
  }
}

id sub_189203534()
{
  v1 = OBJC_IVAR____UITabButton_contentTintColorForState;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + 16) && (v3 = sub_188B85570(0), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return [objc_opt_self() secondaryLabelColor];
  }
}

uint64_t sub_18920362C()
{
  if (![v0 isEnabled])
  {
    return 3;
  }

  if (v0[OBJC_IVAR____UITabButton_overrideItemState + 8] != 1)
  {
    return *&v0[OBJC_IVAR____UITabButton_overrideItemState];
  }

  if ([v0 isFocused] & 1) != 0 || (v0[OBJC_IVAR____UITabButton_hasFocusAppearance])
  {
    return 4;
  }

  if ([v0 isHighlighted] && (v0[OBJC_IVAR____UITabButton__showsHighlightedState] & 1) != 0)
  {
    return 1;
  }

  if ([v0 isSelected] && v0[OBJC_IVAR____UITabButton_ignoresSelectedState] != 1)
  {
    return 2;
  }

  return 0;
}

uint64_t sub_18920371C()
{
  v1 = [v0 state];
  if (v0[OBJC_IVAR____UITabButton_ignoresSelectedState])
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v2 = v1;
  }

  if ((v0[OBJC_IVAR____UITabButton_overrideItemState + 8] & 1) == 0)
  {
    v3 = *&v0[OBJC_IVAR____UITabButton_overrideItemState] - 1;
    if (v3 > 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = qword_18A674F78[v3];
    }

    if ((v4 & ~v2) == 0)
    {
      v4 = 0;
    }

    v2 |= v4;
  }

  if (v0[OBJC_IVAR____UITabButton_hasFocusAppearance])
  {
    return v2 | 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1892037B4()
{
  if (*(v0 + OBJC_IVAR____UITabButton_overrideItemDisplayMode) == 3)
  {
    v1 = *(v0 + OBJC_IVAR____UITabButton_configuration);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____UITabButton_overrideItemDisplayMode);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong _internalTitle];
    if (v4)
    {
      v5 = v4;
      v6 = sub_18A4A7288();
      v8 = v7;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        return v1;
      }

      else
      {
        return 2;
      }
    }

    else
    {

      return 2;
    }
  }

  return v1;
}

void sub_18920387C()
{
  sub_189205B48();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____UITabButton_hasFocusAppearance) = *(v0 + OBJC_IVAR____UITabButton_hasFocusAppearance);
    v2 = Strong;
    sub_18920387C();
  }
}

id sub_189203A18()
{
  if (*(v0 + OBJC_IVAR____UITabButton_configuration + 361) == 1)
  {
    v1 = [v0 isHighlighted];
    v2 = 1.0;
    if (v1)
    {
      v3 = [v0 traitCollection];
      v4 = [v3 userInterfaceStyle] == 2;

      v2 = dbl_18A674F10[v4];
    }

    [v0 setAlpha_];
  }

  return sub_189205B48();
}

id sub_189203ACC()
{
  result = [v0 _focusBehavior];
  if (result)
  {
    v2 = [result focusGroupContainmentBehavior];
    swift_unknownObjectRelease();
    if ((v2 & 0x20) != 0)
    {
      return 0;
    }

    else
    {
      v5.receiver = v0;
      v5.super_class = type metadata accessor for _UITabButton();
      result = objc_msgSendSuper2(&v5, sel__systemDefaultFocusGroupIdentifier);
      if (result)
      {
        v3 = result;
        v4 = sub_18A4A7288();

        return v4;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_189203C98(void *a1, void *a2)
{
  v3 = v2;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for _UITabButton();
  objc_msgSendSuper2(&v11, sel_didUpdateFocusInContext_withAnimationCoordinator_, a1, a2);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v10[4] = sub_18920842C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188A4A8F0;
  v10[3] = &block_descriptor_112_4;
  v8 = _Block_copy(v10);
  v9 = a1;

  [a2 addCoordinatedAnimations:v8 completion:0];
  _Block_release(v8);
}

void sub_189203DC0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 nextFocusedItem];
    if (v5)
    {
      v6 = v5;
      swift_unknownObjectRelease();
      v7 = v6 == v4;
    }

    else
    {
      v7 = 0;
    }

    v4[OBJC_IVAR____UITabButton_hasFocusAppearance] = v7;
    sub_18920387C();
  }
}

id sub_189203EDC(void *a1, const void *a2, uint64_t a3, void *a4)
{
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____UITabButton_tabBarButtonDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v11 = &v4[OBJC_IVAR____UITabButton_overrideItemState];
  *v11 = 0;
  v11[8] = 1;
  v4[OBJC_IVAR____UITabButton_ignoresSelectedState] = 0;
  v4[OBJC_IVAR____UITabButton_synchronizeAppearanceAndLayoutChangesToLinkedButton] = 0;
  v12 = OBJC_IVAR____UITabButton_imageView;
  *&v4[v12] = [objc_allocWithZone(UIImageView) init];
  v13 = OBJC_IVAR____UITabButton_titleLabel;
  type metadata accessor for _UITabButton.Label();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____UITabButton_badgeView] = 0;
  v14 = &v4[OBJC_IVAR____UITabButton_sizeCache];
  v25 = 1;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 3) = 0u;
  v14[64] = 1;
  *&v4[OBJC_IVAR____UITabButton_unselectedLabelTintColor] = 0;
  v15 = OBJC_IVAR____UITabButton_contentTintColorForState;
  *&v4[v15] = sub_188B86168(MEMORY[0x1E69E7CC0]);
  *&v4[OBJC_IVAR____UITabButton_itemContentInsets] = UIEdgeInsetsZero;
  *&v4[OBJC_IVAR____UITabButton_itemTitleStyle] = 0;
  v4[OBJC_IVAR____UITabButton_overrideItemDisplayMode] = 3;
  v4[OBJC_IVAR____UITabButton_hasFocusAppearance] = 0;
  v16 = OBJC_IVAR____UITabButton__showsHighlightedState;
  v4[OBJC_IVAR____UITabButton__showsHighlightedState] = 0;
  *&v4[OBJC_IVAR____UITabButton_springLoadedInteraction] = 0;
  v4[OBJC_IVAR____UITabButton_isSpringLoaded] = 0;
  swift_unknownObjectWeakAssign();
  memcpy(&v4[OBJC_IVAR____UITabButton_configuration], a2, 0x178uLL);
  swift_unknownObjectUnownedInit();
  sub_188B7E138(a2, v23);
  v17 = [a4 standardAppearance];
  v18 = [v17 _dataForItemStyle_];

  *&v4[OBJC_IVAR____UITabButton_appearanceData] = v18;
  v4[v16] = [a4 _showsHighlightedState];
  v22.receiver = v4;
  v22.super_class = type metadata accessor for _UITabButton();
  v19 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  memset(v23, 0, sizeof(v23));
  v24 = 1;
  v20 = v19;
  sub_1892045F0(a3, v23);
  sub_189205244();
  sub_189205920();

  sub_188B7FF64(a3);
  sub_188B82BE8(a2);

  return v20;
}

void sub_1892041F8(double a1, double a2)
{
  v3 = v2;
  if (a1 != 0.0 || a2 != 0.0)
  {
    v6 = &v2[OBJC_IVAR____UITabButton_sizeCache];
    if (v2[OBJC_IVAR____UITabButton_sizeCache + 64])
    {
      v7 = *&v2[OBJC_IVAR____UITabButton_titleLabel];
      v8 = [v7 font];
      v9 = sub_1892062B8(0, 0);
      [v7 setFont_];
      v10 = sub_1892037B4();
      if (v10)
      {
        if (v10 == 1)
        {
          v11 = 0.0;
          [v7 textRectForBounds:1 limitedToNumberOfLines:{0.0, 0.0, a1, a2}];
          v13 = v12;
          v15 = v14;
          if (v8 && (sub_188A34624(0, &qword_1ED48C4A0), v16 = v8, v17 = sub_18A4A7C88(), v16, (v17 & 1) != 0))
          {
            v18 = v13;
            v19 = v15;
          }

          else
          {
            [v7 setFont_];
            [v7 textRectForBounds:1 limitedToNumberOfLines:{0.0, 0.0, a1, a2}];
            v18 = v35;
            v19 = v36;
          }

          v29 = 0.0;
          v31 = v15;
          v30 = v13;
        }

        else
        {
          v32 = *&v2[OBJC_IVAR____UITabButton_imageView];
          [*&v3[OBJC_IVAR____UITabButton_imageView] intrinsicContentSize];
          v11 = v33;
          v29 = v34;
          v18 = 0.0;
          [v32 frameForAlignmentRect_];
          v19 = 0.0;
          v13 = 0.0;
          v15 = 0.0;
        }
      }

      else
      {
        [v7 textRectForBounds:1 limitedToNumberOfLines:{0.0, 0.0, a1, a2}];
        v13 = v20;
        v15 = v21;
        if (!v8 || (sub_188A34624(0, &qword_1ED48C4A0), v22 = v8, v23 = sub_18A4A7C88(), v22, v18 = v13, v19 = v15, (v23 & 1) == 0))
        {
          [v7 setFont_];
          [v7 textRectForBounds:1 limitedToNumberOfLines:{0.0, 0.0, a1, a2}];
          v18 = v24;
          v19 = v25;
        }

        v26 = *&v3[OBJC_IVAR____UITabButton_imageView];
        [v26 intrinsicContentSize];
        v11 = v27;
        v29 = v28;
        [v26 frameForAlignmentRect_];
        if (*&v3[OBJC_IVAR____UITabButton_itemTitleStyle])
        {
          v30 = v13 + v30 + 8.0;
          if (v31 <= v15)
          {
            v31 = v15;
          }
        }

        else
        {
          if (v30 <= v13)
          {
            v30 = v13;
          }

          v31 = v15 + v31 + 8.0;
        }
      }

      v37 = UISizeRoundToViewScale(v3, v30 + *&v3[OBJC_IVAR____UITabButton_itemContentInsets + 8] + *&v3[OBJC_IVAR____UITabButton_itemContentInsets + 24], v31 + *&v3[OBJC_IVAR____UITabButton_itemContentInsets] + *&v3[OBJC_IVAR____UITabButton_itemContentInsets + 16]);
      v39 = v38;

      *v6 = v37;
      *(v6 + 1) = v39;
      *(v6 + 2) = v11;
      *(v6 + 3) = v29;
      *(v6 + 4) = v13;
      *(v6 + 5) = v15;
      *(v6 + 6) = v18;
      *(v6 + 7) = v19;
      v6[64] = 0;
    }
  }
}

void sub_1892045F0(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v5 = (a2 + 16);
  v6 = (a2 + 24);
  if (*(a2 + 32))
  {
    v7 = (a1 + 24);
  }

  else
  {
    v7 = a2;
  }

  if (*(a2 + 32))
  {
    v4 = (a1 + 32);
    v5 = (a1 + 40);
    v6 = (a1 + 48);
  }

  v8 = *v6;
  v9 = *v5;
  v10 = *v4;
  v11 = (v2 + OBJC_IVAR____UITabButton_itemContentInsets);
  v12.f64[0] = *v7;
  v12.f64[1] = *v4;
  v13.f64[0] = v9;
  v13.f64[1] = *v6;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v12, *(v2 + OBJC_IVAR____UITabButton_itemContentInsets)), vceqq_f64(v13, *(v2 + OBJC_IVAR____UITabButton_itemContentInsets + 16))))) & 1) == 0)
  {
    *v11 = *v7;
    v11[1] = v10;
    v11[2] = v9;
    v11[3] = v8;
    LOBYTE(v19[0]) = 1;
    v14 = v2 + OBJC_IVAR____UITabButton_sizeCache;
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 1;
  }

  v15 = *(a1 + 56);
  if (*(v2 + OBJC_IVAR____UITabButton_itemTitleStyle) != v15)
  {
    *(v2 + OBJC_IVAR____UITabButton_itemTitleStyle) = v15;
    LOBYTE(v19[0]) = 1;
    v16 = v2 + OBJC_IVAR____UITabButton_sizeCache;
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0u;
    *(v16 + 64) = 1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    memset(v19, 0, sizeof(v19));
    v20 = 1;
    v18 = Strong;
    sub_1892045F0(a1, v19);
  }
}

void sub_189204760()
{
  v1 = v0;
  v143.receiver = v0;
  v143.super_class = type metadata accessor for _UITabButton();
  objc_msgSendSuper2(&v143, sel_layoutSubviews);
  v2 = sub_18920362C();
  v3 = *&v1[OBJC_IVAR____UITabButton_itemTitleStyle];
  [v1 bounds];
  [v1 sizeThatFits_];
  v6 = &v1[OBJC_IVAR____UITabButton_sizeCache];
  if (v1[OBJC_IVAR____UITabButton_sizeCache + 64])
  {
    return;
  }

  v8 = v6[2];
  v7 = v6[3];
  v9 = v6[7];
  v140 = v6[6];
  v10 = OBJC_IVAR____UITabButton_appearanceData;
  [*&v1[OBJC_IVAR____UITabButton_appearanceData] titlePositionAdjustmentForState_];
  v138 = v11;
  v139 = v12;
  [v1 bounds];
  v13 = &v1[OBJC_IVAR____UITabButton_itemContentInsets];
  v18 = UIRectInset(v14, v15, v16, v17, *&v1[OBJC_IVAR____UITabButton_itemContentInsets], *&v1[OBJC_IVAR____UITabButton_itemContentInsets + 24], *&v1[OBJC_IVAR____UITabButton_itemContentInsets + 16], *&v1[OBJC_IVAR____UITabButton_itemContentInsets + 8]);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_1892037B4();
  if (!v25)
  {
    v137 = v9;
    if (v3)
    {
      v33 = v13[1];
      v144.origin.x = UIRectCenteredYInRectScale(0.0, 0.0, v8, v7, v18, v20, v22, v24, 1.0);
      v145 = CGRectOffset(v144, v33, 0.0);
      x = v145.origin.x;
      height = v145.size.height;
      y = v145.origin.y;
      width = v145.size.width;
      v34 = CGRectGetMaxX(v145) + 8.0;
      v26 = v140;
      v35 = UIRectCenteredYInRectScale(0.0, 0.0, v140, v137, v18, v20, v22, v24, 1.0);
      v39 = 0.0;
      v40 = v34;
    }

    else
    {
      UIRectCenteredXInRectScale(0.0, 0.0, v8, v7, v18, v20, v22, v24, 1.0);
      v148 = CGRectOffset(v147, 0.0, v7 * -0.5 + 20.0);
      x = v148.origin.x;
      height = v148.size.height;
      y = v148.origin.y;
      width = v148.size.width;
      v148.origin.x = v18;
      v148.origin.y = v20;
      v148.size.width = v22;
      v148.size.height = v24;
      v52 = CGRectGetMaxY(v148) - v137 + -7.0;
      v26 = v140;
      UIRectCenteredXInRectScale(0.0, 0.0, v140, v137, v18, v20, v22, v24, 1.0);
      v40 = 0.0;
      v39 = v52;
    }

LABEL_12:
    v150 = CGRectOffset(*&v35, v40, v39);
    *&v27 = CGRectOffset(v150, v138, v139);
    goto LABEL_13;
  }

  if (v25 != 1)
  {
    x = UIRectCenteredRect(0.0, 0.0, v8, v7, v18, v20, v22);
    height = v41;
    v43 = v42;
    width = v44;
    v26 = v140;
    if (v3)
    {
      v45 = UIRectCenteredYInRectScale(0.0, 0.0, v140, v9, v18, v20, v22, v24, 1.0);
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v146.origin.x = x;
      v146.size.height = height;
      y = v43;
      v146.origin.y = v43;
      v146.size.width = width;
      v40 = CGRectGetMaxX(v146) + 8.0;
      v39 = 0.0;
    }

    else
    {
      UIRectCenteredXInRectScale(0.0, 0.0, v140, v9, v18, v20, v22, v24, 1.0);
      v45 = v53;
      v47 = v54;
      v49 = v55;
      v51 = v56;
      v149.origin.x = x;
      v149.size.height = height;
      y = v43;
      v149.origin.y = v43;
      v149.size.width = width;
      v39 = CGRectGetMaxY(v149) + 8.0;
      v40 = 0.0;
    }

    v35 = v45;
    v36 = v47;
    v37 = v49;
    v38 = v51;
    goto LABEL_12;
  }

  x = 0.0;
  v26 = v140;
  v27 = UIRectCenteredRect(0.0, 0.0, v140, v9, v18, v20, v22);
  y = 0.0;
  width = 0.0;
  height = 0.0;
LABEL_13:
  v57 = UIRectRoundToViewScale(v1, v27, v28, v29, v30);
  sub_189204F44(v57, v58, v59, v60);
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = *&v1[OBJC_IVAR____UITabButton_imageView];
  [v69 frameForAlignmentRect_];
  [v69 setFrame_];
  [*&v1[OBJC_IVAR____UITabButton_titleLabel] setFrame_];
  sub_1892075DC(v26);
  v74 = *&v1[OBJC_IVAR____UITabButton_badgeView];
  if (v74)
  {
    v75 = v74;
    [v75 sizeToFit];
    v76 = *&v1[v10];
    [v76 badgePositionAdjustmentForState_];

    [sub_189208014() frame];
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = [v1 _shouldReverseLayoutDirection];
    UIRoundToViewScale(v1);
    v87 = v86;
    v88 = v78;
    v89 = v80;
    v90 = v82;
    v91 = v84;
    if (v85)
    {
      CGRectGetMinX(*&v88);
      UIRoundToViewScale(v1);
      v93 = v92;
      [v75 bounds];
      v94 = v87 + v93 - CGRectGetWidth(v151);
    }

    else
    {
      CGRectGetMaxX(*&v88);
      UIRoundToViewScale(v1);
      v94 = v95 - v87;
    }

    v96 = -*&v1[OBJC_IVAR____UITabButton_configuration + 304];
    v97 = [v1 superview];
    if (v97)
    {
      v98 = v97;
      [v97 bounds];
      v100 = v99;
      v102 = v101;
      v104 = v103;
      v106 = v105;

      v152.origin.x = v100;
      v152.origin.y = v102;
      v152.size.width = v104;
      v152.size.height = v106;
      v153 = CGRectInset(v152, 6.0, 0.0);
      v107 = v153.origin.x;
      v108 = v153.origin.y;
      v109 = v153.size.width;
      v110 = v153.size.height;
    }

    else
    {
      v107 = 0.0;
      v108 = 0.0;
      v109 = 0.0;
      v110 = 0.0;
    }

    v111 = [v1 superview];
    [v1 convertRect:v111 fromView:{v107, v108, v109, v110}];
    v113 = v112;
    v115 = v114;
    v117 = v116;
    v119 = v118;

    [v1 bounds];
    v159 = CGRectInset(v154, v96, 0.0);
    v155.origin.x = v113;
    v155.origin.y = v115;
    v155.size.width = v117;
    v155.size.height = v119;
    v156 = CGRectIntersection(v155, v159);
    v120 = v156.origin.x;
    v121 = v156.origin.y;
    v122 = v156.size.width;
    v123 = v156.size.height;
    MinX = CGRectGetMinX(v156);
    v157.origin.x = v120;
    v157.origin.y = v121;
    v157.size.width = v122;
    v157.size.height = v123;
    MaxX = CGRectGetMaxX(v157);
    [v75 bounds];
    v127 = v126;
    v129 = v128;
    v131 = v130;
    v133 = v132;

    v158.origin.x = v127;
    v158.origin.y = v129;
    v158.size.width = v131;
    v158.size.height = v133;
    v134 = MaxX - CGRectGetWidth(v158);
    [v75 bounds];

    _UIClamp_0(MinX, v94, v134);
    UIRoundToViewScale(v1);
    [v75 setFrame_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1[OBJC_IVAR____UITabButton_synchronizeAppearanceAndLayoutChangesToLinkedButton] == 1)
    {
      v136 = Strong;
      [Strong layoutIfNeeded];
      Strong = v136;
    }
  }
}

BOOL sub_189204F44(CGFloat a1, CGFloat a2, CGFloat a3, double a4)
{
  *&v35[24] = a4;
  [v4 bounds];
  v8 = CGRectGetHeight(v36) * 0.5;
  [v4 bounds];
  v9 = CGRectGetWidth(v37) * 0.5;
  if (v9 >= v8)
  {
    v9 = v8;
  }

  v33 = v9;
  [v4 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = *&v35[24];
  *&v35[16] = CGRectGetMinY(v38);
  v31 = v11;
  v39.origin.x = v11;
  v39.origin.y = v13;
  v39.size.width = v15;
  v39.size.height = v17;
  v32 = *&v35[16] - CGRectGetMinY(v39);
  v40.origin.x = v11;
  v40.origin.y = v13;
  v18 = v15;
  v40.size.width = v15;
  v40.size.height = v17;
  MaxY = CGRectGetMaxY(v40);
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = *&v35[24];
  v34 = MaxY - CGRectGetMaxY(v41);
  v42.origin.x = a1;
  v42.origin.y = a2;
  v42.size.width = a3;
  v42.size.height = *&v35[24];
  MinX = CGRectGetMinX(v42);
  *v35 = a1;
  *&v35[8] = a2;
  v43.origin.x = a1;
  v43.origin.y = a2;
  *&v35[16] = a3;
  v43.size.width = a3;
  v43.size.height = *&v35[24];
  MaxX = CGRectGetMaxX(v43);
  v44.origin.x = v31;
  v44.origin.y = v13;
  v44.size.width = v18;
  v44.size.height = v17;
  if (v32 < CGRectGetHeight(v44) * 0.5)
  {
    v25 = v33;
    v22 = v33 - sqrt(v33 * v33 - (v33 - v32) * (v33 - v32));
    v45.origin.x = v31;
    v45.origin.y = v13;
    v45.size.width = v18;
    v45.size.height = v17;
    v23 = CGRectGetMaxX(v45) - v22;
    if (MinX <= v22 + -2.0)
    {
      MinX = v22 + -2.0;
    }

    v24 = v23 + 2.0;
    if (v24 < MaxX)
    {
      MaxX = v24;
    }
  }

  else
  {
    v25 = v33;
  }

  v46.origin.x = v31;
  v46.origin.y = v13;
  v46.size.width = v18;
  v46.size.height = v17;
  if (v34 < CGRectGetHeight(v46) * 0.5)
  {
    v26 = v25 - sqrt(v33 * v33 - (v25 - v34) * (v25 - v34));
    v47.origin.x = v31;
    v47.origin.y = v13;
    v47.size.width = v18;
    v47.size.height = v17;
    v27 = CGRectGetMaxX(v47) - v26;
    if (MinX <= v26 + 2.0)
    {
      MinX = v26 + 2.0;
    }

    v28 = v27 + -2.0;
    if (v28 < MaxX)
    {
      MaxX = v28;
    }
  }

  v48.origin.x = v31;
  v48.origin.y = v13;
  v48.size.width = v18;
  v48.size.height = v17;
  MinY = CGRectGetMinY(v48);
  v49.origin.x = v31;
  v49.origin.y = v13;
  v49.size.width = v18;
  v49.size.height = v17;
  v50.size.height = CGRectGetHeight(v49);
  v50.origin.x = MinX;
  v50.origin.y = MinY;
  v50.size.width = MaxX - MinX;
  v51 = CGRectIntersection(v50, *v35);
  return CGRectEqualToRect(v51, *MEMORY[0x1E695F050]);
}

uint64_t sub_189205244()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_189208424;
  *(v3 + 24) = v2;
  v23 = sub_188A4B574;
  v24 = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  v22 = &block_descriptor_103_7;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 _performSystemAppearanceModifications_];
  _Block_release(v4);
  v6 = *&v5[OBJC_IVAR____UITabButton_imageView];
  [v6 _setDefaultRenderingMode_];
  [v5 addSubview_];
  v7 = *&v5[OBJC_IVAR____UITabButton_titleLabel];
  v8 = sub_18920362C();
  v9 = sub_18920371C();
  v10 = sub_1892062B8(v8, v9);
  [v7 setFont_];

  [v7 setNumberOfLines_];
  [v7 setLineBreakMode_];
  [v7 setAdjustsFontForContentSizeCategory_];
  [v5 addSubview_];
  v11 = &v5[OBJC_IVAR____UITabButton_configuration];
  if (v5[OBJC_IVAR____UITabButton_configuration] == 1)
  {
    v12 = sub_18920362C();
    v13 = sub_18920371C();
    v14 = sub_1892062B8(v12, v13);
    v15 = [objc_opt_self() configurationWithFont_];
  }

  else
  {
    v15 = [*&v5[OBJC_IVAR____UITabButton_appearanceData] preferredSymbolConfiguration];
  }

  [v6 setPreferredSymbolConfiguration_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFA0;
  *(inited + 32) = &type metadata for UITraitLegibilityWeight;
  *(inited + 40) = &protocol witness table for UITraitLegibilityWeight;
  *(inited + 48) = &type metadata for UITraitPreferredContentSizeCategory;
  *(inited + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v22 = type metadata accessor for _UITabButton();
  aBlock[0] = v5;
  v17 = v5;
  UIView.registerForTraitChanges(_:target:action:)(inited, aBlock, sel__invalidateSizeCache);
  swift_setDeallocating();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  if (v11[360] == 1)
  {
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_18A64BFB0;
    *(v18 + 32) = &type metadata for UITraitUserInterfaceStyle;
    *(v18 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
    UIView.registerForTraitChanges(_:action:)();
    swift_unknownObjectRelease();
    swift_setDeallocating();
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_189205604(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong _effectiveUnselectedLabelTintColor];

  v4 = *(a1 + OBJC_IVAR____UITabButton_unselectedLabelTintColor);
  *(a1 + OBJC_IVAR____UITabButton_unselectedLabelTintColor) = v3;

  v5 = swift_unknownObjectUnownedLoadStrong();
  v6 = [v5 _effectiveUnselectedTintColor];

  v7 = OBJC_IVAR____UITabButton_contentTintColorForState;
  swift_beginAccess();
  v8 = *(a1 + v7);
  if (*(v8 + 16))
  {
    v9 = sub_188B85570(0);
    if (v10)
    {
      if (v6)
      {
        v11 = *(*(v8 + 56) + 8 * v9);
        sub_188A34624(0, qword_1ED4913C0);
        v12 = v6;
        v13 = v11;
        v14 = sub_18A4A7C88();

        if (v14)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_7;
    }
  }

  if (v6)
  {
LABEL_7:
    swift_beginAccess();
    v12 = v6;
    sub_188B854B0(v6, 0);
    swift_endAccess();
    sub_189205B48();
LABEL_8:
  }

  v15 = objc_opt_self();
  v16 = [v15 labelColor];
  v17 = *(a1 + v7);
  if (*(v17 + 16))
  {
    v18 = sub_188B85570(1);
    if (v19)
    {
      if (v16)
      {
        v20 = *(*(v17 + 56) + 8 * v18);
        sub_188A34624(0, qword_1ED4913C0);
        v21 = v16;
        v22 = v20;
        v23 = sub_18A4A7C88();

        if (v23)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  if (v16)
  {
LABEL_15:
    swift_beginAccess();
    v21 = v16;
    sub_188B854B0(v16, 1);
    swift_endAccess();
    sub_189205B48();
LABEL_16:
  }

  v24 = [v15 tertiaryLabelColor];
  v25 = *(a1 + v7);
  if (*(v25 + 16) && (v26 = sub_188B85570(3), (v27 & 1) != 0))
  {
    if (v24)
    {
      v28 = *(*(v25 + 56) + 8 * v26);
      sub_188A34624(0, qword_1ED4913C0);
      v29 = v24;
      v30 = v28;
      v31 = sub_18A4A7C88();

      if (v31)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v24)
  {
    return;
  }

  swift_beginAccess();
  v29 = v24;
  sub_188B854B0(v24, 3);
  swift_endAccess();
  sub_189205B48();
LABEL_24:
}

void sub_189205920()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [v0 setEnabled_];
    sub_189206D2C([v16 isSpringLoaded]);
    v2 = *&v0[OBJC_IVAR____UITabButton_imageView];
    v3 = [v16 _internalTemplateImage];
    [v2 setImage_];

    v4 = *&v0[OBJC_IVAR____UITabButton_titleLabel];
    v5 = [v16 _internalTitle];
    [v4 setText_];

    v6 = [v16 badgeValue];
    v7 = OBJC_IVAR____UITabButton_badgeView;
    v8 = *&v0[OBJC_IVAR____UITabButton_badgeView];
    if (v6)
    {
      if (v8)
      {
        v9 = *&v0[OBJC_IVAR____UITabButton_badgeView];
      }

      else
      {
        v9 = [objc_allocWithZone(_UIBarBadgeView) init];
        v8 = 0;
      }

      v11 = v8;
      [v9 setText_];

      [v0 addSubview_];
      v12 = *&v0[v7];
      *&v0[v7] = v9;
      v10 = v9;

      sub_189202C38();
    }

    else
    {
      if (v8)
      {
        [v8 removeFromSuperview];
        v10 = *&v0[v7];
      }

      else
      {
        v10 = 0;
      }

      *&v0[v7] = 0;
    }

    sub_189205B48();
    v13 = swift_unknownObjectWeakLoadStrong();
    v14 = v16;
    if (v13)
    {
      v15 = v16;
      sub_1892029B4(v16);
      sub_189205920();

      v14 = v16;
    }
  }
}

id sub_189205B48()
{
  v1 = v0;
  v2 = sub_18920362C();
  v3 = sub_18920371C();
  v4 = sub_18920641C(v2);
  [v1 setTintColor_];

  if (v2)
  {
    if (v2 != 2)
    {
      goto LABEL_9;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_9;
    }

    v6 = &selRef_selectedImage;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_9;
    }

    v6 = &selRef__internalTemplateImage;
  }

  v7 = Strong;
  v8 = [Strong *v6];

  if (v8)
  {
    [*&v1[OBJC_IVAR____UITabButton_imageView] setImage_];
  }

LABEL_9:
  v9 = *&v1[OBJC_IVAR____UITabButton_titleLabel];
  v10 = [v9 text];
  if (v10)
  {
    v11 = v10;
    v12 = *&v1[OBJC_IVAR____UITabButton_appearanceData];
    v13 = [v1 traitCollection];
    v14 = v3;
    v15 = [v12 titleTextAttributesForState:v2 compatibleWithTraitCollection:v13];

    type metadata accessor for Key(0);
    sub_188C5E0DC();
    sub_18A4A70A8();

    v3 = v14;
    v16 = sub_1892062B8(v2, v14);
    [v9 setFont_];

    v17 = sub_189206578(v2);
    [v9 setTextColor_];

    v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v19 = sub_18A4A7088();

    v20 = [v18 initWithString:v11 attributes:v19];

    [v9 setAttributedText_];
  }

  sub_189205F28(v2);
  v21 = &v1[OBJC_IVAR____UITabButton_configuration];
  v22 = (*&v1[OBJC_IVAR____UITabButton_configuration + 328])(v3);
  v23 = v22;
  if (v22)
  {
    v22 = sub_188A34624(0, qword_1ED4913C0);
    v24 = &protocol witness table for UIColor;
  }

  else
  {
    v24 = 0;
    v30[1] = 0;
    v30[2] = 0;
  }

  v30[0] = v23;
  v30[3] = v22;
  v30[4] = v24;
  UIView._background.setter(v30);
  if (v21[360] == 1)
  {
    if (v1[OBJC_IVAR____UITabButton_hasFocusAppearance] == 1)
    {
      v25 = [v1 traitCollection];
      v26 = [v25 userInterfaceStyle];

      v27 = _UIUserInterfaceStyleInverted(v26);
    }

    else
    {
      v27 = 0;
    }

    [v9 setOverrideUserInterfaceStyle_];
    [*&v1[OBJC_IVAR____UITabButton_imageView] setOverrideUserInterfaceStyle_];
  }

  sub_18920678C(v2);
  LOBYTE(v30[0]) = 1;
  v28 = &v1[OBJC_IVAR____UITabButton_sizeCache];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *(v28 + 3) = 0u;
  v28[64] = 1;

  return [v1 setNeedsLayout];
}

void sub_189205F28(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____UITabButton_badgeView);
  if (v2)
  {
    v4 = *(v1 + OBJC_IVAR____UITabButton_configuration + 368);
    v11 = v2;
    [v11 setFont_];
    v5 = OBJC_IVAR____UITabButton_appearanceData;
    v6 = [*(v1 + OBJC_IVAR____UITabButton_appearanceData) badgeBackgroundColorForState_];
    [v11 setBadgeColor_];

    v7 = [*(v1 + v5) badgeTextAttributesForState_];
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    sub_18A4A70A8();

    v8 = sub_18A4A7088();

    [v11 setTextAttributes_];

    [*(v1 + v5) badgeTitlePositionAdjustmentForState_];
    [v11 setTextOffset_];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_189205F28(a1);
    }
  }
}

void sub_1892060EC(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  if (a1)
  {
    v4 = objc_opt_self();
    v5 = v1;
    if (([v4 _isInAnimationBlockWithAnimationsEnabled] & 1) == 0)
    {
      v6 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.2];
      v13[4] = sub_1892083C4;
      v13[5] = v3;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 1107296256;
      v13[2] = sub_188A4A8F0;
      v13[3] = &block_descriptor_94_2;
      v7 = _Block_copy(v13);
      v8 = v6;

      [v4 _animateUsingSpringBehavior_tracking_animations_completion_];

      _Block_release(v7);

      return;
    }
  }

  else
  {
    v9 = v1;
  }

  v10 = *&v1[OBJC_IVAR____UITabButton_titleLabel];
  v11 = sub_1892037B4();
  v12 = 1.0;
  if (v11 == 2)
  {
    v12 = 0.0;
  }

  [v10 setAlpha_];
}

uint64_t sub_1892062B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v3[OBJC_IVAR____UITabButton_appearanceData];
  v7 = [v3 traitCollection];
  v8 = [v6 titleTextAttributesForState:a1 compatibleWithTraitCollection:v7];

  type metadata accessor for Key(0);
  sub_188C5E0DC();
  v9 = sub_18A4A70A8();

  if (*(v9 + 16) && (v10 = sub_188B00858(*off_1E70EC918), (v11 & 1) != 0))
  {
    sub_188A55598(*(v9 + 56) + 32 * v10, v14);

    sub_188A34624(0, &qword_1ED48C4A0);
    if (swift_dynamicCast())
    {
      return v13;
    }
  }

  else
  {
  }

  return (*&v3[OBJC_IVAR____UITabButton_configuration + 232])(a2);
}

id sub_18920641C(uint64_t a1)
{
  if (v1[OBJC_IVAR____UITabButton_configuration] != 1)
  {
    v4 = OBJC_IVAR____UITabButton_appearanceData;
    result = [*&v1[OBJC_IVAR____UITabButton_appearanceData] iconColorForState_];
    if (result)
    {
      return result;
    }

    if (a1 == 3)
    {
      v5 = [objc_opt_self() tertiaryLabelColor];
      return v5;
    }

    if ([v1 isSelected] && a1 == 4)
    {
      if ([v1 accessibilityShouldUseSelectedColorWhileFocused])
      {
        v5 = [*&v1[v4] iconColorForState_];
        return v5;
      }
    }

    else if (a1 == 2)
    {
      return 0;
    }

    v6 = [*&v1[OBJC_IVAR____UITabButton_imageView] _allowsMonochromaticTreatment];
    v7 = objc_opt_self();
    if (v6)
    {
      v5 = [v7 labelColor];
    }

    else
    {
      v5 = [v7 secondaryLabelColor];
    }

    return v5;
  }

  return sub_189206578(a1);
}

id sub_189206578(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____UITabButton_configuration;
  v4 = *(v1 + OBJC_IVAR____UITabButton_configuration + 248);
  v5 = sub_18920371C();
  result = v4(v5);
  if (!result)
  {
    if (a1 == 2)
    {
      v8 = *(v3 + 320);
    }

    else
    {
      if (a1 == 3)
      {
        v7 = [objc_opt_self() tertiaryLabelColor];
        return v7;
      }

      if (!*(v1 + OBJC_IVAR____UITabButton_unselectedLabelTintColor))
      {
        v10 = [*(v1 + OBJC_IVAR____UITabButton_titleLabel) _allowsMonochromaticTreatment];
        v11 = objc_opt_self();
        if (v10)
        {
          v7 = [v11 labelColor];
        }

        else
        {
          v7 = [v11 secondaryLabelColor];
        }

        return v7;
      }

      v8 = *(v1 + OBJC_IVAR____UITabButton_unselectedLabelTintColor);
    }

    v9 = v8;
    return v8;
  }

  return result;
}

void sub_18920667C(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____UITabButton_contentTintColorForState;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16) || (v7 = sub_188B85570(a2), (v8 & 1) == 0))
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!a1 || (v9 = *(*(v6 + 56) + 8 * v7), sub_188A34624(0, qword_1ED4913C0), v10 = v9, v11 = a1, v12 = sub_18A4A7C88(), v10, v11, (v12 & 1) == 0))
  {
LABEL_7:
    swift_beginAccess();
    v13 = a1;
    sub_188B854B0(a1, a2);
    swift_endAccess();
    sub_189205B48();
  }
}

id sub_18920678C(uint64_t a1)
{
  v3 = [objc_opt_self() _glassMonochromaticTreatment];
  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(v1 + OBJC_IVAR____UITabButton_imageView);
  [v5 _setMonochromaticTreatment_];
  v6 = *(v1 + OBJC_IVAR____UITabButton_titleLabel);
  [v6 _setMonochromaticTreatment_];
  v7 = (a1 - 4) < 0xFFFFFFFFFFFFFFFELL;
  [v5 _setEnableMonochromaticTreatment_];

  return [v6 _setEnableMonochromaticTreatment_];
}

void sub_189206854()
{
  if (v0[OBJC_IVAR____UITabButton_configuration + 360] == 1)
  {
    if (v0[OBJC_IVAR____UITabButton_hasFocusAppearance] == 1)
    {
      v1 = [v0 traitCollection];
      v2 = [v1 userInterfaceStyle];

      v3 = _UIUserInterfaceStyleInverted(v2);
    }

    else
    {
      v3 = 0;
    }

    [*&v0[OBJC_IVAR____UITabButton_titleLabel] setOverrideUserInterfaceStyle_];
    v4 = *&v0[OBJC_IVAR____UITabButton_imageView];

    [v4 setOverrideUserInterfaceStyle_];
  }
}

void sub_189206D2C(char a1)
{
  v3 = OBJC_IVAR____UITabButton_isSpringLoaded;
  v4 = v1[OBJC_IVAR____UITabButton_isSpringLoaded];
  v5 = OBJC_IVAR____UITabButton_springLoadedInteraction;
  if (*&v1[OBJC_IVAR____UITabButton_springLoadedInteraction])
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && (a1 & 1) == 0)
  {
    [v1 removeInteraction_];
    v7 = *&v1[v5];
    *&v1[v5] = 0;
  }

  v1[v3] = a1 & 1;
  if (!(v4 & 1 | ((a1 & 1) == 0)) && !*&v1[v5])
  {
    v8 = objc_allocWithZone(UISpringLoadedInteraction);
    v12[4] = sub_189206E7C;
    v12[5] = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_189207D98;
    v12[3] = &block_descriptor_153;
    v9 = _Block_copy(v12);
    v10 = [v8 initWithActivationHandler_];
    _Block_release(v9);

    [v1 addInteraction_];
    v11 = *&v1[v5];
    *&v1[v5] = v10;
  }
}

void sub_189206E7C(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v3 = v1;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 sendActionsForControlEvents_];
    }
  }
}

uint64_t sub_189207068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _UITabButton.Label();
  v13.receiver = v2;
  v13.super_class = v4;
  v5 = objc_msgSendSuper2(&v13, sel_text);
  if (!v5)
  {
    v7 = 0;
    v9 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v6 = v5;
  v7 = sub_18A4A7288();
  v9 = v8;

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_18A4A7258();

LABEL_6:
  v12.receiver = v2;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, sel_setText_, v10);

  sub_18920714C(v7, v9);
}

void sub_18920714C(uint64_t a1, uint64_t a2)
{
  v5 = [v2 text];
  if (!v5)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_12;
  }

  v6 = v5;
  v7 = sub_18A4A7288();
  v9 = v8;

  if (!a2)
  {

LABEL_12:
    *&v2[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_widthForKerningAdjustment] = 0;
    v12 = &v2[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment];
    *v12 = 0;
    v12[8] = 1;

    sub_189207458();
    return;
  }

  if (v7 != a1 || v9 != a2)
  {
    v11 = sub_18A4A86C8();

    if (v11)
    {
      return;
    }

    goto LABEL_12;
  }
}

void sub_189207364(void *a1)
{
  v3 = [v1 attributedText];
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      sub_188A34624(0, &qword_1EA930C60);
      v5 = a1;
      v6 = sub_18A4A7C88();

      if (v6)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  *&v1[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_widthForKerningAdjustment] = 0;
  v7 = &v1[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment];
  *v7 = 0;
  v7[8] = 1;

  sub_189207458();
}

void sub_189207458()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment + 8];
  if (v2)
  {
    v3 = 0;
    *(&v14 + 1) = 0;
    v15 = 0;
    v4 = 0;
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment];
    v3 = MEMORY[0x1E69E63B0];
  }

  *&v14 = v4;
  v16 = v3;
  v5 = [v0 _defaultAttributes];
  if (v5)
  {
    v6 = v5;
    v7 = *off_1E70EC950;
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v8 = sub_18A4A70A8();

    v13 = v8;
    if (v2)
    {
      sub_188A553EC(&v14);
      sub_1891E9B7C(v7, v12);
      sub_188A553EC(v12);
      if (v13)
      {
LABEL_7:
        v9 = sub_18A4A7088();

LABEL_10:
        [v1 _setDefaultAttributes_];

        return;
      }
    }

    else
    {
      sub_188A55538(&v14, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v8;
      sub_188B32C50(v12, v7, isUniquelyReferenced_nonNull_native);
      v13 = v8;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    v9 = 0;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1892075DC(CGFloat a1)
{
  v3 = [v1 attributedText];
  if (!v3)
  {
    goto LABEL_19;
  }

  v27 = v3;
  [v1 bounds];
  if (CGRectGetWidth(v29) >= a1)
  {

LABEL_19:
    v25 = &v1[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment];
    *v25 = 0;
    v25[8] = 1;

    sub_189207458();
    return;
  }

  [v1 bounds];
  Width = CGRectGetWidth(v30);
  v5 = OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_widthForKerningAdjustment;
  if (Width != *&v1[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_widthForKerningAdjustment])
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v7 = [v6 length];
    v8 = [v1 font];
    if (v8)
    {
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E6D0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_18A64BFB0;
      v11 = *off_1E70EC918;
      *(v10 + 32) = *off_1E70EC918;
      type metadata accessor for Key(0);
      v12 = v11;
      v13 = sub_18A4A7518();

      v14 = [v6 containsAttributes_];

      if ((v14 & 1) == 0)
      {
        [v6 addAttribute:v12 value:v9 range:{0, v7}];
      }
    }

    v15 = *off_1E70EC950;
    v16 = -1.2;
    v17 = sub_18A4A2D28();
    [v6 addAttribute:v15 value:v17 range:{0, v7}];

    [v6 boundingRectWithSize:0 options:0 context:{1.79769313e308, 1.79769313e308}];
    CGRectGetWidth(v31);
    UICeilToViewScale(v1);
    if (v18 < Width)
    {
      if (qword_1EA932028 != -1)
      {
        swift_once();
      }

      v19 = *&qword_1EA940480;
      if (v19 < CGFAbs(1.2))
      {
        v20 = 0.0;
        v21 = 1.2;
        while (1)
        {
          v22 = (v20 + v21) * 0.5;
          v16 = -v22;
          v23 = sub_18A4A2D28();
          [v6 addAttribute:v15 value:v23 range:{0, v7}];

          [v6 boundingRectWithSize:0 options:0 context:{1.79769313e308, 1.79769313e308}];
          CGRectGetWidth(v32);
          UICeilToViewScale(v1);
          if (Width < v24)
          {
            v20 = (v20 + v21) * 0.5;
            v22 = v21;
          }

          else if (v24 >= Width)
          {
            goto LABEL_23;
          }

          v21 = v22;
          if (v19 >= CGFAbs(v22 - v20))
          {
            goto LABEL_23;
          }
        }
      }

      v16 = -1.2;
    }

LABEL_23:
    *&v1[v5] = Width;
    v26 = &v1[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment];
    *v26 = v16;
    *(v26 + 8) = 0;
    sub_189207458();
  }
}

id sub_189207BE8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_189207D98(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

void sub_189207E20()
{
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____UITabButton_matchMoveIdentifierForImage);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____UITabButton_tabBarButtonDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3 = v0 + OBJC_IVAR____UITabButton_overrideItemState;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____UITabButton_ignoresSelectedState) = 0;
  *(v0 + OBJC_IVAR____UITabButton_synchronizeAppearanceAndLayoutChangesToLinkedButton) = 0;
  v4 = OBJC_IVAR____UITabButton_imageView;
  *(v0 + v4) = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____UITabButton_titleLabel;
  type metadata accessor for _UITabButton.Label();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____UITabButton_badgeView) = 0;
  v6 = v0 + OBJC_IVAR____UITabButton_sizeCache;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 1;
  *(v0 + OBJC_IVAR____UITabButton_unselectedLabelTintColor) = 0;
  v7 = OBJC_IVAR____UITabButton_contentTintColorForState;
  *(v0 + v7) = sub_188B86168(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____UITabButton_itemContentInsets) = UIEdgeInsetsZero;
  *(v0 + OBJC_IVAR____UITabButton_itemTitleStyle) = 0;
  *(v0 + OBJC_IVAR____UITabButton_overrideItemDisplayMode) = 3;
  *(v0 + OBJC_IVAR____UITabButton_hasFocusAppearance) = 0;
  *(v0 + OBJC_IVAR____UITabButton__showsHighlightedState) = 0;
  *(v0 + OBJC_IVAR____UITabButton_springLoadedInteraction) = 0;
  *(v0 + OBJC_IVAR____UITabButton_isSpringLoaded) = 0;
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_189208014()
{
  if (*(v0 + OBJC_IVAR____UITabButton_overrideItemDisplayMode) == 3)
  {
    v1 = *(v0 + OBJC_IVAR____UITabButton_configuration);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____UITabButton_overrideItemDisplayMode);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong _internalTitle];
    if (v4)
    {
      v5 = v4;
      v6 = sub_18A4A7288();
      v8 = v7;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        v10 = v1 == 1;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
        goto LABEL_17;
      }

LABEL_15:
      v11 = &OBJC_IVAR____UITabButton_titleLabel;
      return *(v0 + *v11);
    }
  }

  else if (v1 == 1)
  {
    goto LABEL_15;
  }

LABEL_17:
  v11 = &OBJC_IVAR____UITabButton_titleLabel;
  if (!*(v0 + OBJC_IVAR____UITabButton_itemTitleStyle))
  {
    v11 = &OBJC_IVAR____UITabButton_imageView;
  }

  return *(v0 + *v11);
}

void sub_189208114(char *a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v30 = 0u;
  v31 = 0u;
  v14 = [a1 _defaultAttributes];
  if (v14)
  {
    v15 = v14;
    v16 = *off_1E70EC950;
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v17 = sub_18A4A70A8();

    v29 = v17;
    sub_188A553EC(&v30);
    sub_1891E9B7C(v16, v28);
    sub_188A553EC(v28);
    if (v29)
    {
      v18 = sub_18A4A7088();
    }

    else
    {
      v18 = 0;
    }

    [a1 _setDefaultAttributes_];

    v27.receiver = a2;
    v27.super_class = type metadata accessor for _UITabButton.Label();
    objc_msgSendSuper2(&v27, sel_textRectForBounds_limitedToNumberOfLines_, a3, a4, a5, a6, a7);
    if (a1[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment + 8])
    {
      v19 = 0;
      *(&v30 + 1) = 0;
      *&v31 = 0;
      v20 = 0;
    }

    else
    {
      v20 = *&a1[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment];
      v19 = MEMORY[0x1E69E63B0];
    }

    *&v30 = v20;
    *(&v31 + 1) = v19;
    v21 = [a1 _defaultAttributes];
    if (v21)
    {
      v22 = v21;
      v23 = sub_18A4A70A8();

      v29 = v23;
      if (*(&v31 + 1))
      {
        sub_188A55538(&v30, v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v23;
        sub_188B32C50(v28, v16, isUniquelyReferenced_nonNull_native);
        v29 = v23;
        if (v23)
        {
LABEL_11:
          v25 = sub_18A4A7088();

LABEL_14:
          [a1 _setDefaultAttributes_];

          return;
        }
      }

      else
      {
        sub_188A553EC(&v30);
        sub_1891E9B7C(v16, v28);
        sub_188A553EC(v28);
        if (v29)
        {
          goto LABEL_11;
        }
      }

      v25 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1892083C4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____UITabButton_titleLabel);
  v2 = sub_1892037B4();
  v3 = 1.0;
  if (v2 == 2)
  {
    v3 = 0.0;
  }

  return [v1 setAlpha_];
}

uint64_t _UIComponentGestureRecognizer.managedNode.getter()
{
  result = *(v0 + qword_1EA940620);
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_189208458@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = (*a1 + qword_1EA940628);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 2) = v5;
    *(v9 + 3) = v7;
    *(v9 + 4) = v8;
    v10 = sub_189209EAC;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a4 = v10;
  a4[1] = v9;
  return sub_188A52E38(v7);
}

uint64_t sub_189208504(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = *(a3 + a4 - 8);
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v5;
    v8[4] = v6;
    v9 = sub_189209E84;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = (*a2 + qword_1EA940628);
  swift_beginAccess();
  v11 = *v10;
  *v10 = v9;
  v10[1] = v8;
  sub_188A52E38(v5);
  return sub_188A55B8C(v11);
}

uint64_t _UIComponentGestureRecognizer.phaseListener.getter()
{
  v1 = (v0 + qword_1EA940628);
  swift_beginAccess();
  v2 = *v1;
  sub_188A52E38(*v1);
  return v2;
}

uint64_t _UIComponentGestureRecognizer.phaseListener.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EA940628);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_188A55B8C(v6);
}

id _UIComponentGestureRecognizer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _UIComponentGestureRecognizer.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[qword_1EA940628];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[qword_1EA940620] = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_initWithTarget_action_, 0, 0);
  [v3 addTarget:v3 action:sel__gestureAction];
  return v3;
}

uint64_t _UIComponentGestureRecognizer.componentController.getter()
{
  if ([(UIGestureRecognizer *)v0 _componentController])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_188A55538(v5, &v6);
    sub_18A4A7038();
    swift_dynamicCast();
    return v2;
  }

  else
  {
    sub_188A3F5FC(v5, &qword_1EA934050);
    return 0;
  }
}

uint64_t _UIComponentGestureRecognizer.componentController.setter(void *a1)
{
  sub_189209D40(a1);
}

uint64_t (*_UIComponentGestureRecognizer.componentController.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = _UIComponentGestureRecognizer.componentController.getter();
  return sub_189208910;
}

uint64_t sub_189208910(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {

    [(UIGestureRecognizer *)v3 _setComponentController:v2];
  }

  else
  {
    [(UIGestureRecognizer *)*(a1 + 8) _setComponentController:v2];
  }
}

uint64_t sub_189208974()
{
  v1 = sub_18A4A6F58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - v3;
  v5 = (v0 + qword_1EA940628);
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {
    if (*(v0 + qword_1EA940620))
    {
      sub_188A52E38(v7);

      sub_18A4A6F28();

      v7(v4);
      sub_188A55B8C(v7);
      return (*(v2 + 8))(v4, v1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_189208AD8(void *a1)
{
  v1 = a1;
  sub_189208974();
}

uint64_t sub_189208B20()
{
  sub_18A4A6F48();
  *(v0 + qword_1EA940620) = sub_18A4A6F38();

  _UIGestureNodeKey();
  v1 = sub_18A4A6F18();

  return v1;
}

id sub_189208BBC(void *a1)
{
  v1 = a1;
  v2 = sub_189208B20();

  return v2;
}

uint64_t _UIComponentGestureRecognizer.isKind(of:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v75 = sub_18A4A6FA8();
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v76 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v74 = v55 - v6;
  v7 = sub_18A4A6F78();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18A4A6FD8();
  v60 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940630);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940638);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v55 - v21;
  if (sub_189209D4C() != a1)
  {
LABEL_7:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v83.receiver = v2;
    v83.super_class = ObjectType;
    return objc_msgSendSuper2(&v83, sel_isKindOfClass_, ObjCClassFromMetadata);
  }

  v72 = v13;
  v73 = v19;
  v57 = v16;
  v59 = v22;
  v58 = v11;
  v23 = v2;
  if (!_UIComponentGestureRecognizer.componentController.getter())
  {
LABEL_5:
    v26 = v59;
    (*(v8 + 56))(v59, 1, 1, v7);
LABEL_6:
    sub_188A3F5FC(v26, &qword_1EA940638);
    v2 = v23;
    goto LABEL_7;
  }

  v24 = v57;
  sub_18A4A7028();

  v25 = v58;
  if ((*(v60 + 48))(v24, 1, v58) == 1)
  {
    sub_188A3F5FC(v24, &qword_1EA940630);
    goto LABEL_5;
  }

  v55[1] = a1;
  v56 = v23;
  (*(v60 + 16))(v72, v24, v25);
  sub_189209D98();
  result = sub_18A4A7458();
  v71 = (v8 + 56);
  v61 = v8 + 16;
  v72 = (v8 + 48);
  v68 = (v8 + 32);
  v65 = v8;
  v66 = (v77 + 8);
  v64 = (v8 + 8);
  for (i = v10; ; i = v47)
  {
    v30 = v79;
    v77 = v80;
    v31 = v82;
    v32 = v81;
    v33 = v76;
    v34 = v73;
    v69 = v82;
    if (!v82)
    {
      v35 = (v77 + 64) >> 6;
      if (v35 <= (v81 + 1))
      {
        v36 = v81 + 1;
      }

      else
      {
        v36 = (v77 + 64) >> 6;
      }

      v37 = v36 - 1;
      v38 = v81;
      while (1)
      {
        v32 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v32 >= v35)
        {
          v39 = 0;
          v43 = 1;
          v42 = v78;
          goto LABEL_19;
        }

        v31 = *(v79 + 8 * v32);
        ++v38;
        if (v31)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      return result;
    }

LABEL_18:
    v39 = (v31 - 1) & v31;
    v40 = *(v78 + 56) + *(v8 + 72) * (__clz(__rbit64(v31)) | (v32 << 6));
    v41 = *(v8 + 16);
    v42 = v78;
    v41(v73, v40, v7);
    v43 = 0;
    v37 = v32;
LABEL_19:
    v44 = *v71;
    (*v71)(v34, v43, 1, v7);
    v67 = v42;
    v78 = v42;
    v79 = v30;
    v80 = v77;
    v81 = v37;
    v82 = v39;
    v45 = *v72;
    if ((*v72)(v34, 1, v7) == 1)
    {
      sub_188E036A4();
      v26 = v59;
      v44(v59, 1, 1, v7);
      goto LABEL_25;
    }

    v62 = v44;
    v63 = v45;
    v46 = *v68;
    (*v68)(i, v34, v7);
    v47 = i;
    v48 = v74;
    sub_18A4A6F68();
    sub_18A4A6F98();
    v49 = sub_18A4A6F88();
    v50 = v7;
    v51 = *v66;
    v52 = v33;
    v53 = v75;
    (*v66)(v52, v75);
    v51(v48, v53);
    if (v49)
    {
      break;
    }

    result = (*v64)(v47, v50);
    v7 = v50;
    v8 = v65;
  }

  sub_188E036A4();
  v26 = v59;
  v46(v59, v47, v50);
  v62(v26, 0, 1, v50);
  v7 = v50;
  v45 = v63;
LABEL_25:
  (*(v60 + 8))(v57, v58);
  v54 = v45(v26, 1, v7);
  v23 = v56;
  if (v54 == 1)
  {
    goto LABEL_6;
  }

  sub_188A3F5FC(v26, &qword_1EA940638);
  return 1;
}

uint64_t sub_189209354(void *a1)
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v3 = a1;
  LOBYTE(ObjCClassMetadata) = _UIComponentGestureRecognizer.isKind(of:)(ObjCClassMetadata);

  return ObjCClassMetadata & 1;
}

uint64_t sub_1892093A0(uint64_t a1)
{
  v2 = sub_18A4A6FA8();
  v69 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  v8 = sub_18A4A6F78();
  v68 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18A4A6FD8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940630);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940638);
  MEMORY[0x1EEE9AC00](v18 - 8);
  MEMORY[0x1EEE9AC00](v19);
  if (!a1)
  {
    v64 = v2;
    v65 = v21;
    v51 = v17;
    v66 = v10;
    v53 = &v49 - v20;
    v67 = v4;
    v52 = v12;
    if (_UIComponentGestureRecognizer.componentController.getter())
    {
      v23 = v51;
      sub_18A4A7028();

      v24 = v52;
      if ((*(v52 + 48))(v23, 1, v11) != 1)
      {
        (*(v24 + 16))(v14, v23, v11);
        sub_189209D98();
        v50 = v11;
        result = sub_18A4A7458();
        v62 = (v68 + 56);
        v54 = v68 + 16;
        v63 = (v68 + 48);
        v60 = (v68 + 32);
        v56 = (v68 + 8);
        v57 = (v69 + 8);
        while (1)
        {
          v27 = v71;
          v28 = v74;
          v69 = v72;
          v70 = v73;
          v29 = v75;
          v30 = v74;
          v31 = v66;
          v32 = v67;
          v61 = v75;
          if (!v75)
          {
            v33 = (v70 + 64) >> 6;
            if (v33 <= (v74 + 1))
            {
              v34 = v74 + 1;
            }

            else
            {
              v34 = (v70 + 64) >> 6;
            }

            v35 = v34 - 1;
            v36 = v74;
            while (1)
            {
              v30 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                break;
              }

              if (v30 >= v33)
              {
                v37 = 0;
                v39 = 1;
                v38 = v65;
                goto LABEL_20;
              }

              v29 = *(v72 + 8 * v30);
              ++v36;
              if (v29)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
            return result;
          }

LABEL_19:
          v37 = (v29 - 1) & v29;
          v38 = v65;
          (*(v68 + 16))(v65, *(v71 + 56) + *(v68 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v8);
          v39 = 0;
          v35 = v30;
LABEL_20:
          v58 = *v62;
          v58(v38, v39, 1, v8);
          v59 = v27;
          v71 = v27;
          v72 = v69;
          v73 = v70;
          v74 = v35;
          v75 = v37;
          v40 = *v63;
          if ((*v63)(v38, 1, v8) == 1)
          {
            sub_188E036A4();
            v25 = v53;
            v58(v53, 1, 1, v8);
            goto LABEL_26;
          }

          v41 = v38;
          v42 = v40;
          v55 = v28;
          v43 = *v60;
          (*v60)(v31, v41, v8);
          sub_18A4A6F68();
          sub_18A4A6F98();
          v44 = sub_18A4A6F88();
          v45 = v8;
          v46 = *v57;
          v47 = v32;
          v48 = v64;
          (*v57)(v47, v64);
          v46(v7, v48);
          if (v44)
          {
            break;
          }

          result = (*v56)(v31, v45);
          v8 = v45;
        }

        sub_188E036A4();
        v25 = v53;
        v43(v53, v31, v45);
        v58(v25, 0, 1, v45);
        v8 = v45;
        v40 = v42;
LABEL_26:
        (*(v52 + 8))(v51, v50);
        v22 = 1;
        if (v40(v25, 1, v8) == 1)
        {
          goto LABEL_7;
        }

        goto LABEL_8;
      }

      sub_188A3F5FC(v23, &qword_1EA940630);
    }

    v25 = v53;
    (*(v68 + 56))(v53, 1, 1, v8);
LABEL_7:
    v22 = 0;
LABEL_8:
    sub_188A3F5FC(v25, &qword_1EA940638);
    return v22;
  }

  return 0;
}