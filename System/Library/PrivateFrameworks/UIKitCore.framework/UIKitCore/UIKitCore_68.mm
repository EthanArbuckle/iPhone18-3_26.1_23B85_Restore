void sub_189185B68(uint64_t a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    goto LABEL_12;
  }

  v3 = *v1;
  if (*v1 >> 62)
  {
    v4 = sub_18A4A7F68();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = *(v1 + 8);
  if (v5 != v4)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_188E498AC(*(v1 + 8), v3);
      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_9;
      }
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v6 = *(v3 + 8 * v5 + 32);
      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
LABEL_9:
        *(v1 + 8) = v7;
        v9 = *(v1 + 16);
        v8 = *(v1 + 24);
        v10 = *(v9 + 16);
        if (v8 == v10)
        {

          goto LABEL_11;
        }

        if (v8 < v10)
        {
          v16 = (v9 + 160 * v8);
          v17 = v16[3];
          v29 = v16[2];
          v30 = v17;
          v18 = v16[4];
          v19 = v16[5];
          v20 = v16[7];
          v33 = v16[6];
          v34 = v20;
          v31 = v18;
          v32 = v19;
          v21 = v16[8];
          v22 = v16[9];
          v23 = v16[11];
          v37 = v16[10];
          v38 = v23;
          v35 = v21;
          v36 = v22;
          *(v1 + 24) = v8 + 1;
          *a1 = v6;
          v24 = v29;
          *(a1 + 24) = v30;
          *(a1 + 8) = v24;
          v25 = v33;
          *(a1 + 88) = v34;
          *(a1 + 72) = v25;
          v26 = v31;
          *(a1 + 56) = v32;
          *(a1 + 40) = v26;
          v27 = v37;
          *(a1 + 152) = v38;
          *(a1 + 136) = v27;
          v28 = v35;
          *&v21 = v36;
          *(a1 + 120) = v36;
          *(a1 + 104) = v28;
          signpost_c2_entryLock_start(*&v21, *&v28);
          sub_188C464C4(&v29, v40);
          return;
        }

LABEL_22:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_11:
  *(v1 + 32) = 1;
LABEL_12:
  sub_189194CC4(&v29);
  v11 = v38;
  *(a1 + 128) = v37;
  *(a1 + 144) = v11;
  *(a1 + 160) = v39;
  v12 = v34;
  *(a1 + 64) = v33;
  *(a1 + 80) = v12;
  v13 = v36;
  *(a1 + 96) = v35;
  *(a1 + 112) = v13;
  v14 = v30;
  *a1 = v29;
  *(a1 + 16) = v14;
  v15 = v32;
  *(a1 + 32) = v31;
  *(a1 + 48) = v15;
}

void sub_189185D18()
{
  v1 = *(v0 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties);
  v2 = *(v0 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8);
  if (v2 == 1)
  {
    v3 = v0 + OBJC_IVAR____UINavigationBarPlatterView_platter;
    swift_beginAccess();
    v4 = *(v3 + 168);
    v5 = *(v3 + 176);
    v6 = *(v3 + 184);
    v7 = v5;
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8);
    if ((v1 & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = *(v0 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 16);
    v5 = *(v0 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8);
  }

  if (*(v0 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) != 2)
  {
    v26 = *(v0 + OBJC_IVAR____UINavigationBarPlatterView_contentView);
    v27 = OBJC_IVAR____UINavigationBarPlatterContentView_glassView;
    v28 = *(v26 + OBJC_IVAR____UINavigationBarPlatterContentView_glassView);
    sub_189194E20(v1, v2);
    [v28 setClipsToBounds_];
    v29 = *(v26 + v27);
    *(&v40 + 1) = &_s15PlatterMaterialVN;
    v41 = &off_1EFAD7FB8;
    *&v39 = v6;
    *(&v39 + 1) = v5;
    v30 = v5;
    v31 = v29;
    UIView._background.setter(&v39);

    v32 = *(v26 + v27);
    v33 = [(UIView *)v32 _traitOverrides];
    v34 = [(_UITraitOverrides *)v33 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    inited = swift_initStackObject();
    *(inited + 16) = v34;
    *&v39 = inited;
    sub_1890B3080(1);
    v36 = v39;
    v37 = [(UIView *)v32 _traitOverrides];
    v38 = *(v36 + 16);

    [(_UITraitOverrides *)v37 _replaceWithOverrides:v38];

    return;
  }

LABEL_7:
  v8 = *(v0 + OBJC_IVAR____UINavigationBarPlatterView_contentView);
  v9 = OBJC_IVAR____UINavigationBarPlatterContentView_glassView;
  v10 = *(v8 + OBJC_IVAR____UINavigationBarPlatterContentView_glassView);
  sub_189194E20(v1, v2);
  [v10 setClipsToBounds_];
  v11 = *(v8 + v9);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v12 = v11;
  UIView._background.setter(&v39);

  v13 = *(v8 + v9);
  v14 = [(UIView *)v13 _traitOverrides];
  v15 = [(_UITraitOverrides *)v14 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  v16 = swift_initStackObject();
  *(v16 + 16) = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v16 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = [(_UITraitOverrides *)*(v16 + 16) _swiftImplCopy];
    v19 = swift_allocObject();
    *(v19 + 16) = v18;

    v16 = v19;
  }

  v20 = qword_1ED491B40;
  v21 = v18;
  if (v20 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v22 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v23 = sub_18901C418(&type metadata for UIContainedInBarMaterialTraitDefinition, 0);
  os_unfair_lock_unlock(v22[2]);
  [(_UITraitOverrides *)v21 _removeTraitToken:v23];

  swift_unknownObjectRelease();
  v24 = [(UIView *)v13 _traitOverrides];
  v25 = *(v16 + 16);

  [(_UITraitOverrides *)v24 _replaceWithOverrides:v25];
}

void sub_189186104(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_18A4A4A88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____UINavigationBarPlatterView_transitionPhase;
  if (*(v2 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) != a1)
  {
    sub_189185D18();
    v12 = *(v2 + OBJC_IVAR____UINavigationBarPlatterView_contentView);
    if (*(v2 + v11))
    {
      sub_188E5A020();
      (*(v5 + 16))(v7, &v10[*(v8 + 20)], v4);
      sub_189195250(v10, type metadata accessor for NavigationBarPlatterContainer.Settings);
      sub_18A4A4A68();
      (*(v5 + 8))(v7, v4);
    }

    sub_18918630C();
    if (*(v2 + v11))
    {
      v13 = 0.0;
    }

    else
    {
      v13 = 1.0;
    }

    [*(v12 + OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer) setAlpha_];
    [*(v12 + OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer) setAlpha_];
  }
}

void sub_18918630C()
{
  v1 = [*(v0 + OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer) layer];
  v2 = sub_18A4A2D28();
  v3 = sub_18A4A7258();
  [v1 setValue:v2 forKeyPath:v3];

  v4 = [*(v0 + OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer) layer];
  v5 = sub_18A4A2D28();
  v6 = sub_18A4A7258();
  [v4 setValue:v5 forKeyPath:v6];
}

uint64_t sub_189186438(double *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_18A4A29D8();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____UINavigationBarPlatterView_translationKick;
  v7 = _s11PlatterViewC13AnimationViewCMa();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v9 = 0x74616C736E617274;
  *(v9 + 1) = 0xEB000000006E6F69;
  v65.receiver = v8;
  v65.super_class = v7;
  v10 = objc_msgSendSuper2(&v65, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v10 _setIgnoresLayerTransformForSafeAreaInsets_];
  *&v2[v6] = v10;
  v11 = OBJC_IVAR____UINavigationBarPlatterView_scaleOffset;
  v12 = objc_allocWithZone(v7);
  v13 = &v12[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v13 = 0x66664F656C616373;
  *(v13 + 1) = 0xEB00000000746573;
  v64.receiver = v12;
  v64.super_class = v7;
  v14 = objc_msgSendSuper2(&v64, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v14 _setIgnoresLayerTransformForSafeAreaInsets_];
  *&v2[v11] = v14;
  v15 = OBJC_IVAR____UINavigationBarPlatterView_transformViewA;
  v16 = objc_allocWithZone(v7);
  v17 = &v16[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v17 = 0x726F66736E617274;
  *(v17 + 1) = 0xEA0000000000416DLL;
  v63.receiver = v16;
  v63.super_class = v7;
  v18 = objc_msgSendSuper2(&v63, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v18 _setIgnoresLayerTransformForSafeAreaInsets_];
  *&v2[v15] = v18;
  v19 = OBJC_IVAR____UINavigationBarPlatterView_transformViewB;
  v20 = objc_allocWithZone(v7);
  v21 = &v20[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v21 = 0x726F66736E617274;
  *(v21 + 1) = 0xEA0000000000426DLL;
  v62.receiver = v20;
  v62.super_class = v7;
  v22 = objc_msgSendSuper2(&v62, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v22 _setIgnoresLayerTransformForSafeAreaInsets_];
  *&v2[v19] = v22;
  v23 = OBJC_IVAR____UINavigationBarPlatterView_contentView;
  _s11PlatterViewC18PlatterContentViewCMa();
  *&v2[v23] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR____UINavigationBarPlatterView_scalePulseScheduler;
  type metadata accessor for NavigationBarPlatterContainer.AnimationScheduler();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = MEMORY[0x1E69E7CC0];
  *(v25 + 24) = sub_188E8D690(MEMORY[0x1E69E7CC0]);
  *&v2[v24] = v25;
  v27 = OBJC_IVAR____UINavigationBarPlatterView_translationKickScheduler;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = sub_188E8D690(v26);
  *&v2[v27] = v28;
  v29 = OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v31 = sub_188E8D690(v26);
  *&v2[v29] = v30;
  v2[OBJC_IVAR____UINavigationBarPlatterView_mode] = 0;
  *(v30 + 24) = v31;
  v32 = &v2[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties];
  *v32 = xmmword_18A64C520;
  *(v32 + 2) = 0;
  v2[OBJC_IVAR____UINavigationBarPlatterView_transitionPhase] = 0;
  v33 = &v2[OBJC_IVAR____UINavigationBarPlatterView_pointerAssistantID];
  aBlock = 0;
  v56 = 0xE000000000000000;
  sub_18A4A80E8();

  aBlock = 0xD00000000000002DLL;
  v56 = 0x800000018A6AE4F0;
  v34 = v51;
  sub_18A4A29C8();
  v35 = sub_18A4A2988();
  v37 = v36;
  (*(v52 + 8))(v34, v53);
  MEMORY[0x18CFE22D0](v35, v37);

  v38 = v56;
  *v33 = aBlock;
  v33[1] = v38;
  sub_188C46270(a1, &v2[OBJC_IVAR____UINavigationBarPlatterView_id]);
  sub_188C45F1C(a1, &v2[OBJC_IVAR____UINavigationBarPlatterView_platter]);
  v39 = a1[5];
  v40 = a1[6];
  v41 = a1[7];
  v42 = a1[8];
  v61.receiver = v2;
  v61.super_class = ObjectType;
  v43 = objc_msgSendSuper2(&v61, sel_initWithFrame_, v39, v40, v41, v42);
  v44 = objc_opt_self();
  v45 = swift_allocObject();
  *(v45 + 16) = v43;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_189195178;
  *(v46 + 24) = v45;
  v59 = sub_188E3FE50;
  v60 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_188A4A968;
  v58 = &block_descriptor_662;
  v47 = _Block_copy(&aBlock);
  v48 = v43;

  [v44 performWithoutAnimation_];
  _Block_release(v47);
  LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

  if (v44)
  {
    __break(1u);
  }

  else
  {
    sub_18918584C(a1);

    sub_188C460F0(a1);

    return v48;
  }

  return result;
}

id sub_1891869DC(char *a1)
{
  v2 = sub_18A4A4B78();
  v44 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v8 = type metadata accessor for NavigationBarPlatterContainer.Settings() - 8;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v14 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_translationKick];
  v47 = a1;
  [a1 addSubview_];
  v15 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_scaleOffset];
  [v14 addSubview_];
  v16 = v15;
  v45 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_transformViewA];
  v17 = v45;
  [v16 addSubview_];
  v18 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_transformViewB];
  v46 = v18;
  [v17 addSubview_];
  [v18 addSubview_];
  sub_188E5A020();
  v42 = v8;
  v19 = *(v8 + 32);
  v20 = v44;
  v41 = *(v44 + 2);
  v41(v7, &v13[v19], v2);
  v43 = type metadata accessor for NavigationBarPlatterContainer.Settings;
  sub_189195250(v13, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4A98();
  v22 = sqrt(v21);
  sub_18A4A4A98();
  v23 = *(v20 + 1);
  v23(v7, v2);
  v44 = v23;
  v24 = v48;
  sub_188E5A020();
  v25 = v41;
  v41(v4, (v24 + *(v8 + 32)), v2);
  sub_189195250(v24, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4A98();
  sub_18A4A4A98();
  v27 = sqrt(v26);
  v23(v4, v2);
  CATransform3DMakeScale(&v49, v22, v27, 1.0);
  [v45 setTransform3D_];
  sub_188E5A020();
  v28 = v42;
  v25(v7, &v13[*(v42 + 32)], v2);
  v29 = v25;
  v30 = v43;
  sub_189195250(v13, v43);
  sub_18A4A4A98();
  v32 = sqrt(v31);
  sub_18A4A4A98();
  v33 = v7;
  v34 = v2;
  v35 = v44;
  v44(v33, v2);
  v36 = v48;
  sub_188E5A020();
  v29(v4, v36 + *(v28 + 32), v34);
  sub_189195250(v36, v30);
  sub_18A4A4A98();
  sub_18A4A4A98();
  v38 = sqrt(v37);
  v35(v4, v34);
  CATransform3DMakeScale(&v49, 1.0 / v32, 1.0 / v38, 1.0);
  [v46 setTransform3D_];
  return sub_189186E20();
}

id sub_189186E20()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____UINavigationBarPlatterView_translationKick];
  v45.receiver = v0;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, sel_bounds);
  [v2 setBounds_];
  v44.receiver = v0;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, sel_bounds);
  MidX = CGRectGetMidX(v46);
  v43.receiver = v0;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, sel_bounds);
  [v2 setCenter_];
  v4 = *&v0[OBJC_IVAR____UINavigationBarPlatterView_scaleOffset];
  v42.receiver = v0;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, sel_bounds);
  [v4 setBounds_];
  v41.receiver = v0;
  v41.super_class = ObjectType;
  objc_msgSendSuper2(&v41, sel_bounds);
  v5 = CGRectGetMidX(v48);
  v40.receiver = v0;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, sel_bounds);
  [v4 setCenter_];
  v6 = *&v0[OBJC_IVAR____UINavigationBarPlatterView_transformViewA];
  v39.receiver = v0;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, sel_bounds);
  [v6 setBounds_];
  v38.receiver = v0;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, sel_bounds);
  v7 = CGRectGetMidX(v50);
  v37.receiver = v0;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, sel_bounds);
  [v6 setCenter_];
  v8 = *&v0[OBJC_IVAR____UINavigationBarPlatterView_transformViewB];
  v36.receiver = v0;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, sel_bounds);
  [v8 setBounds_];
  v35.receiver = v0;
  v35.super_class = ObjectType;
  objc_msgSendSuper2(&v35, sel_bounds);
  v9 = CGRectGetMidX(v52);
  v34.receiver = v0;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, sel_bounds);
  [v8 setCenter_];
  v10 = *&v0[OBJC_IVAR____UINavigationBarPlatterView_contentView];
  v11 = &v0[OBJC_IVAR____UINavigationBarPlatterView_platter];
  swift_beginAccess();
  [v10 setBounds_];
  v33.receiver = v0;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, sel_bounds);
  v12 = CGRectGetMidX(v54);
  v32.receiver = v0;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, sel_bounds);
  [v10 setCenter_];
  [v10 bounds];
  v14 = v13;
  v16 = v15;
  v31.receiver = v0;
  v31.super_class = ObjectType;
  objc_msgSendSuper2(&v31, sel_bounds);
  if (v14 == v18 && v16 == v17 || (v30.receiver = v0, v30.super_class = ObjectType, objc_msgSendSuper2(&v30, sel_bounds), CGRectGetWidth(v56) <= 0.0) || (v28.receiver = v0, v28.super_class = ObjectType, objc_msgSendSuper2(&v28, sel_bounds), CGRectGetHeight(v57) <= 0.0) || ([v10 bounds], CGRectGetWidth(v58) <= 0.0) || (objc_msgSend(v10, sel_bounds), CGRectGetHeight(v59) <= 0.0))
  {
    v29.a = 1.0;
    v29.b = 0.0;
    v29.c = 0.0;
    v29.d = 1.0;
    v29.tx = 0.0;
    v29.ty = 0.0;
    return [v10 setTransform_];
  }

  else
  {
    v27.receiver = v0;
    v27.super_class = ObjectType;
    objc_msgSendSuper2(&v27, sel_bounds);
    Width = CGRectGetWidth(v60);
    [v10 bounds];
    v20 = Width / CGRectGetWidth(v61);
    if (v20 > 0.5)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0.5;
    }

    v26.receiver = v0;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, sel_bounds);
    Height = CGRectGetHeight(v62);
    [v10 bounds];
    v23 = Height / CGRectGetHeight(v63);
    if (v23 > 0.5)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0.5;
    }

    CGAffineTransformMakeScale(&v29, v21, v24);
    return [v10 setTransform_];
  }
}

uint64_t sub_189187294()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties];
  v4 = *&v0[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8];
  if (v4 == 1)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v7 = *(v3 + 2);
    LOBYTE(v21) = *v3 & 1;
    *(&v21 + 1) = v4;
    *&v22 = v7;
    v8 = v4;
    v6 = sub_18A4A72F8();
    v5 = v9;
  }

  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  sub_18A4A80E8();

  v30 = 60;
  v31 = 0xE100000000000000;
  v29.receiver = v0;
  v29.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v29, sel_description);
  v11 = sub_18A4A7288();
  v13 = v12;

  MEMORY[0x18CFE22D0](v11, v13);

  MEMORY[0x18CFE22D0](0x72676B636162203BLL, 0xEE00203A646E756FLL);
  v14 = *(*&v1[OBJC_IVAR____UINavigationBarPlatterView_contentView] + OBJC_IVAR____UINavigationBarPlatterContentView_glassView);
  v15 = [(UIView *)v14 _typedStorage];
  sub_188A6852C(&v21);

  v20[2] = v23;
  v20[3] = v24;
  v20[4] = v25;
  v20[5] = v26;
  v20[0] = v21;
  v20[1] = v22;
  if (*(&v22 + 1))
  {
    sub_188A53994(v20, v27);
    sub_188ACE668(v20);
  }

  else
  {
    sub_188A3F5FC(v20, &unk_1EA933EC0);
    memset(v27, 0, sizeof(v27));
    v28 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9A0);
  v16 = sub_18A4A72F8();
  MEMORY[0x18CFE22D0](v16);

  MEMORY[0x18CFE22D0](0x69727265766F203BLL, 0xEC000000203A6564);
  MEMORY[0x18CFE22D0](v6, v5);

  MEMORY[0x18CFE22D0](0x436D657469203B3ELL, 0xEE00203A746E756FLL);
  v17 = &v1[OBJC_IVAR____UINavigationBarPlatterView_platter];
  swift_beginAccess();
  *&v20[0] = *(*(v17 + 18) + 16);
  v18 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v18);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return v30;
}

void sub_18918766C()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8] == 1)
  {
    v2 = &v0[OBJC_IVAR____UINavigationBarPlatterView_platter];
    swift_beginAccess();
    v3 = 0.0;
    if ((v2[168] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0.0;
    if ((*&v0[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, sel_bounds);
  Width = CGRectGetWidth(v11);
  v9.receiver = v0;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_bounds);
  Height = CGRectGetHeight(v12);
  if (Height >= Width)
  {
    v6 = Width;
  }

  else
  {
    v6 = Height;
  }

  v7 = Height * 0.5;
  if (v7 >= v6)
  {
    v3 = v6;
  }

  else
  {
    v3 = v7;
  }

LABEL_11:
  v8 = [*(*&v0[OBJC_IVAR____UINavigationBarPlatterView_contentView] + OBJC_IVAR____UINavigationBarPlatterContentView_glassView) layer];
  [v8 setCornerRadius_];
}

uint64_t sub_18918778C(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = &OBJC_INSTANCE_METHODS__UIViewServiceProxy_ReplyAwaiting;
  if (a1)
  {
    v9 = objc_opt_self();
    sub_188C45F1C(a2, &v53);
    v10 = swift_allocObject();
    v11 = v62;
    *(v10 + 144) = v61;
    *(v10 + 160) = v11;
    v12 = v64;
    *(v10 + 176) = v63;
    *(v10 + 192) = v12;
    v13 = v58;
    *(v10 + 80) = v57;
    *(v10 + 96) = v13;
    v14 = v60;
    *(v10 + 112) = v59;
    *(v10 + 128) = v14;
    v15 = v54;
    *(v10 + 16) = v53;
    *(v10 + 32) = v15;
    v16 = v56;
    *(v10 + 48) = v55;
    *(v10 + 64) = v16;
    *(v10 + 208) = a3;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_189194DA0;
    *(v17 + 24) = v10;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_370_0;
    v18 = _Block_copy(aBlock);
    v19 = a3;

    [v9 performWithoutAnimation_];
    _Block_release(v18);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      goto LABEL_7;
    }

    v43 = sub_189194DA0;
    v8 = &OBJC_INSTANCE_METHODS__UIViewServiceProxy_ReplyAwaiting;
  }

  else
  {
    v43 = 0;
  }

  sub_188C45F1C(a2, &v53);
  v21 = swift_allocObject();
  v22 = v62;
  *(v21 + 152) = v61;
  *(v21 + 168) = v22;
  v23 = v64;
  *(v21 + 184) = v63;
  *(v21 + 200) = v23;
  v24 = v58;
  *(v21 + 88) = v57;
  *(v21 + 104) = v24;
  v25 = v60;
  *(v21 + 120) = v59;
  *(v21 + 136) = v25;
  v26 = v54;
  *(v21 + 24) = v53;
  *(v21 + 40) = v26;
  v27 = v56;
  *(v21 + 56) = v55;
  *(v21 + 16) = a1 & 1;
  *(v21 + 72) = v27;
  *(v21 + 216) = a3;
  sub_188C3DF9C(a4 + 16, aBlock);
  sub_188C3DF9C(a4 + 16, v50);
  v28 = swift_allocObject();
  v29 = v50[3];
  *(v28 + 48) = v50[2];
  *(v28 + 64) = v29;
  *(v28 + 80) = *v51;
  *(v28 + 89) = *&v51[9];
  v30 = v50[1];
  *(v28 + 16) = v50[0];
  *(v28 + 32) = v30;
  *(v28 + 112) = signpost_c2_entryLock_start;
  *(v28 + 120) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v32 = swift_allocObject();
  v32[3] = 0;
  v32[4] = 0;
  v32[2] = v31;
  v42 = objc_opt_self();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_189194D90;
  *(v33 + 24) = v21;
  *&v47 = sub_188E3FE50;
  *(&v47 + 1) = v33;
  *&v45 = MEMORY[0x1E69E9820];
  *(&v45 + 1) = v8[308];
  v34 = *(&v45 + 1);
  *&v46 = sub_188A4A968;
  *(&v46 + 1) = &block_descriptor_350;
  v35 = _Block_copy(&v45);
  v36 = a3;

  sub_188C3DFF8(aBlock, &v45);
  v37 = swift_allocObject();
  v38 = v48;
  *(v37 + 56) = v47;
  *(v37 + 72) = v38;
  *(v37 + 88) = *v49;
  *(v37 + 97) = *&v49[9];
  v39 = v46;
  *(v37 + 24) = v45;
  *(v37 + 16) = v31;
  *(v37 + 40) = v39;
  *(v37 + 113) = 0;
  *(v37 + 120) = sub_188E5C7FC;
  *(v37 + 128) = v28;
  v44[4] = sub_1891953A4;
  v44[5] = v37;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = v34;
  v44[2] = sub_188A4A8F0;
  v44[3] = &block_descriptor_357;
  v40 = _Block_copy(v44);

  *&v47 = sub_188E5C82C;
  *(&v47 + 1) = v32;
  *&v45 = MEMORY[0x1E69E9820];
  *(&v45 + 1) = v34;
  *&v46 = sub_188ABD010;
  *(&v46 + 1) = &block_descriptor_360_0;
  v41 = _Block_copy(&v45);

  [v42 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v41);
  _Block_release(v40);
  _Block_release(v35);

  sub_188C3E234(aBlock);

  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  result = sub_188A55B8C(v43);
  if ((v41 & 1) == 0)
  {
    return result;
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_189187DD8(double *a1, id a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[10];
  [a2 bounds];
  v9 = v8;
  v11 = v10;
  [a2 bounds];
  v34.origin.x = v12;
  v34.origin.y = v13;
  v34.size.width = v14;
  v34.size.height = v15;
  v31.origin.x = v9;
  v31.origin.y = v11;
  v31.size.width = v5;
  v31.size.height = v6;
  if (!CGRectEqualToRect(v31, v34))
  {
    [a2 setBounds_];
  }

  v32.origin.x = v3;
  v32.origin.y = v4;
  v32.size.width = v5;
  v32.size.height = v6;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = v3;
  v33.origin.y = v4;
  v33.size.width = v5;
  v33.size.height = v6;
  MidY = CGRectGetMidY(v33);
  [a2 center];
  if (MidX != v19 || MidY != v18)
  {
    [a2 setCenter_];
  }

  CGAffineTransformMakeScale(&v30, v7, v7);
  v24 = *&v30.a;
  v25 = *&v30.c;
  v29 = v30;
  tx = v30.tx;
  ty = v30.ty;
  [a2 transform];
  result = sub_18A4A7A08();
  if ((result & 1) == 0)
  {
    v26[0] = v24;
    v26[1] = v25;
    v27 = tx;
    v28 = ty;
    return [a2 setTransform_];
  }

  return result;
}

void sub_189187F74(char a1, uint64_t a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    sub_188FE53B8(a3, 0);
  }

  v4 = *(a3 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase);
  *(a3 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) = 0;
  sub_189186104(v4);
  sub_189185D18();
  sub_18918766C();
}

uint64_t sub_189187FE4(uint64_t a1, unint64_t a2, int a3, void *a4, double a5)
{
  LODWORD(v290) = a3;
  v301 = a1;
  v277 = sub_18A4A5FA8();
  v272 = *(v277 - 8);
  MEMORY[0x1EEE9AC00](v277);
  v276 = v271 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v275 = v271 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v284 = v271 - v13;
  v14 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  v287 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v282 = v271 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v278 = v271 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v279 = v271 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v271 - v21;
  v280 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v291 = v271 - v25;
  v274 = OBJC_IVAR____UINavigationBarPlatterContentView_itemViews;
  v26 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____UINavigationBarPlatterContentView_itemViews);

  v281 = MEMORY[0x1E69E7CC0];
  v27 = sub_188E8D7C0(MEMORY[0x1E69E7CC0]);
  if (v26 >> 62)
  {
    goto LABEL_209;
  }

  v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v292 = v22;
  v299 = a2;
  v288 = a4;
  v304 = isEscapingClosureAtFileLocation;
  if (!v28)
  {
LABEL_25:

    v368 = v27;
    v367 = MEMORY[0x1E69E7CC0];
    v45 = *(v301 + 144);
    v46 = v45[2];
    v297 = v45;
    if (!v46)
    {
LABEL_129:

      v271[0] = v27;
      sub_188F94140(v112);
      v114 = v113;
      if ((v113 & 0xC000000000000001) != 0)
      {
        if (v113 < 0)
        {
          isEscapingClosureAtFileLocation = v113;
        }

        else
        {
          isEscapingClosureAtFileLocation = v113 & 0xFFFFFFFFFFFFFF8;
        }

        v115 = sub_18A4A7F68();
        v114 = sub_188E72EFC(isEscapingClosureAtFileLocation, v115);
      }

      v116 = sub_189190EC8(v281, v114);
      v117 = v116;
      if ((v116 & 0xC000000000000001) != 0)
      {
        isEscapingClosureAtFileLocation = sub_18A4A7F18();
        v26 = type metadata accessor for PlatterItemView();
        sub_1891952B0(&qword_1EA931380, type metadata accessor for PlatterItemView);
        sub_18A4A77D8();
        v117 = v369;
        a2 = v370;
        v118 = v371;
        v27 = v372;
        a4 = v373;
      }

      else
      {
        v27 = 0;
        v119 = -1 << *(v116 + 32);
        a2 = v116 + 56;
        v118 = ~v119;
        v120 = -v119;
        if (v120 < 64)
        {
          v121 = ~(-1 << v120);
        }

        else
        {
          v121 = -1;
        }

        a4 = (v121 & *(v116 + 56));
      }

      v296 = v118;
      v22 = (v118 + 64) >> 6;
      v285 = v280 + 7;
      LODWORD(v286) = v290 & 1;
      v302 = a2;
      v300 = v22;
      v298 = v117;
      while (1)
      {
        if ((v117 & 0x8000000000000000) != 0)
        {
          v126 = sub_18A4A7FB8();
          if (!v126)
          {
            goto LABEL_170;
          }

          *&v326 = v126;
          type metadata accessor for PlatterItemView();
          swift_dynamicCast();
          v26 = v336;
          v124 = v27;
          v125 = a4;
          if (!v336)
          {
            goto LABEL_170;
          }
        }

        else
        {
          v122 = v27;
          v123 = a4;
          v124 = v27;
          if (!a4)
          {
            do
            {
              v124 = v122 + 1;
              if (__OFADD__(v122, 1))
              {
                goto LABEL_197;
              }

              if (v124 >= v22)
              {
                goto LABEL_170;
              }

              v123 = *(a2 + 8 * v124);
              ++v122;
            }

            while (!v123);
          }

          v125 = ((v123 - 1) & v123);
          v26 = *(*(v117 + 48) + ((v124 << 9) | (8 * __clz(__rbit64(v123)))));
          if (!v26)
          {
LABEL_170:
            sub_188E036A4();
            v362 = v281;
            v363 = 0;
            v364 = v45;
            v365 = 0;
            v366 = 0;
            v295 = OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer;

            sub_189185B68(v350);
            isEscapingClosureAtFileLocation = v350;
            v359 = *&v350[128];
            v360 = *&v350[144];
            v361 = *&v350[160];
            v355 = *&v350[64];
            v356 = *&v350[80];
            v358 = *&v350[112];
            v357 = *&v350[96];
            v351 = *v350;
            v352 = *&v350[16];
            v354 = *&v350[48];
            v353 = *&v350[32];
            enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0 = get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(&v351);
            v297 = 0;
            v298 = 0;
            v289 = 0;
            v290 = 0;
            a4 = v299;
            if (enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0 == 1)
            {
LABEL_171:

              v343 = *&v350[128];
              v344 = *&v350[144];
              *&v345 = *&v350[160];
              v340[0] = *&v350[64];
              v340[1] = *&v350[80];
              v342 = *&v350[112];
              v341 = *&v350[96];
              v336 = *v350;
              v337 = *&v350[16];
              v339 = *&v350[48];
              v338 = *&v350[32];
              sub_188A3F5FC(&v336, &qword_1EA93F038);
              *&v304[v274] = v281;

              sub_188A55B8C(v298);
              return sub_188A55B8C(v290);
            }

            v164 = 0;
            v289 = 0;
            v290 = 0;
            v297 = 0;
            v298 = 0;
            v283 = &v321;
            v296 = &v337;
            v165 = v272;
            v272 += 2;
            v273 = (v165 + 1);
            v271[1] = v306;
            v271[2] = &v308;
            while (!__OFADD__(v164, 1))
            {
              v348[4] = *&v350[80];
              v348[3] = *&v350[64];
              *&v349[48] = *&v350[160];
              *&v349[32] = *&v350[144];
              *&v349[16] = *&v350[128];
              v348[5] = *&v350[96];
              *v349 = *&v350[112];
              v347 = *v350;
              v348[0] = *&v350[16];
              v348[2] = *&v350[48];
              v348[1] = *&v350[32];
              v172 = *v350;
              v27 = OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;

              sub_1891948E8(&v347, &v336);
              sub_188E56D00();

              v173 = [v172 superview];
              if (v173)
              {
                v174 = *&v304[v295];
                v175 = v173;

                v22 = v175 == v174;
              }

              else
              {
                v22 = 0;
              }

              sub_188C45F1C(v301, &v336);
              v176 = swift_allocObject();
              *(v176 + 120) = *&v350[104];
              *(v176 + 136) = *&v350[120];
              *(v176 + 152) = *&v350[136];
              *(v176 + 168) = *&v350[152];
              *(v176 + 56) = *&v350[40];
              *(v176 + 72) = *&v350[56];
              *(v176 + 88) = *&v350[72];
              *(v176 + 104) = *&v350[88];
              *(v176 + 24) = *&v350[8];
              *(v176 + 40) = *&v350[24];
              v177 = v343;
              v178 = v345;
              v179 = v346;
              *(v176 + 328) = v344;
              *(v176 + 344) = v178;
              *(v176 + 360) = v179;
              v180 = v340[1];
              *(v176 + 248) = v340[0];
              v181 = v341;
              v182 = v342;
              *(v176 + 264) = v180;
              *(v176 + 280) = v181;
              *(v176 + 296) = v182;
              *(v176 + 312) = v177;
              v183 = v337;
              *(v176 + 184) = v336;
              *(v176 + 200) = v183;
              v184 = v339;
              *(v176 + 216) = v338;
              *(v176 + 16) = v172;
              *(v176 + 232) = v184;
              *(v176 + 376) = v304;
              *(v176 + 384) = v164;
              v302 = v164;
              v303 = v172;
              v300 = v176;
              if (a4 && v22)
              {
                v185 = *&v172[v27];
                v186 = swift_allocObject();
                *(v186 + 2) = a4;
                *(v186 + 3) = sub_189194958;
                *(v186 + 4) = v176;
                v187 = a4;
                v188 = v172;
                v189 = *(v185 + 16);
                *(v185 + 16) = v189 + 1;
                if (a5 == 0.0)
                {
                  v190 = swift_allocObject();
                  v190[2] = sub_189194958;
                  v190[3] = v176;
                  v191 = v190;
                  v293 = v190;
                  sub_188C3DF9C((v187 + 2), &v326);
                  sub_188C3DF9C((v187 + 2), &v315);
                  v192 = swift_allocObject();
                  v294 = v186;
                  v26 = v187;
                  v193 = v192;
                  v194 = v318;
                  *(v192 + 48) = v317;
                  *(v192 + 64) = v194;
                  *(v192 + 80) = v319[0];
                  *(v192 + 89) = *(v319 + 9);
                  v195 = v316;
                  *(v192 + 16) = v315;
                  *(v192 + 32) = v195;
                  *(v192 + 112) = signpost_c2_entryLock_start;
                  *(v192 + 120) = 0;
                  a2 = swift_allocObject();
                  *(a2 + 16) = 0;
                  v22 = swift_allocObject();
                  *(v22 + 24) = 0;
                  *(v22 + 32) = 0;
                  *(v22 + 16) = a2;
                  v292 = objc_opt_self();
                  v196 = swift_allocObject();
                  *(v196 + 16) = sub_188A4A9DC;
                  *(v196 + 24) = v191;
                  v322 = sub_188E3FE50;
                  v323 = v196;
                  *&v320 = MEMORY[0x1E69E9820];
                  *(&v320 + 1) = 1107296256;
                  *&v321 = sub_188A4A968;
                  *(&v321 + 1) = &block_descriptor_162_2;
                  v291 = _Block_copy(&v320);
                  swift_retain_n();
                  swift_retain_n();
                  v197 = v304;
                  v198 = v188;
                  sub_188C464C4(&v347 + 8, &v336);

                  sub_188C3DFF8(&v326, &v336);
                  v199 = swift_allocObject();
                  v200 = v339;
                  *(v199 + 56) = v338;
                  *(v199 + 72) = v200;
                  *(v199 + 88) = v340[0];
                  *(v199 + 97) = *(v340 + 9);
                  v201 = v337;
                  *(v199 + 24) = v336;
                  *(v199 + 16) = a2;
                  *(v199 + 40) = v201;
                  *(v199 + 113) = 0;
                  *(v199 + 120) = sub_188E5C7FC;
                  *(v199 + 128) = v193;
                  v322 = sub_1891953A4;
                  v323 = v199;
                  *&v320 = MEMORY[0x1E69E9820];
                  *(&v320 + 1) = 1107296256;
                  *&v321 = sub_188A4A8F0;
                  *(&v321 + 1) = &block_descriptor_169;
                  a4 = _Block_copy(&v320);

                  *&v338 = sub_188E5C82C;
                  *(&v338 + 1) = v22;
                  *&v336 = MEMORY[0x1E69E9820];
                  *(&v336 + 1) = 1107296256;
                  *&v337 = sub_188ABD010;
                  *(&v337 + 1) = &block_descriptor_172_1;
                  v202 = _Block_copy(&v336);

                  v27 = v291;
                  [v292 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
                  _Block_release(v202);
                  _Block_release(a4);
                  _Block_release(v27);

                  sub_188C3E234(&v326);

                  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                  if (isEscapingClosureAtFileLocation)
                  {
                    goto LABEL_206;
                  }
                }

                else
                {
                  v252 = sub_18A4A76C8();
                  v253 = v284;
                  (*(*(v252 - 8) + 56))(v284, 1, 1, v252);
                  v254 = swift_allocObject();
                  swift_weakInit();
                  sub_18A4A76A8();
                  swift_retain_n();
                  v255 = v304;

                  v256 = v188;
                  sub_188C464C4(&v347 + 8, &v336);

                  v257 = sub_18A4A7698();
                  v258 = swift_allocObject();
                  *(v258 + 16) = v257;
                  *(v258 + 24) = MEMORY[0x1E69E85E0];
                  *(v258 + 32) = v254;
                  *(v258 + 40) = a5;
                  *(v258 + 48) = v189;
                  *(v258 + 56) = sub_189194A10;
                  *(v258 + 64) = v186;

                  v259 = sub_188E59CB0(0, 0, v253, &unk_18A66CF98, v258);
                  swift_beginAccess();

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v326 = *(v185 + 24);
                  *(v185 + 24) = 0x8000000000000000;
                  sub_188E9DE78(v259, v189, isUniquelyReferenced_nonNull_native);
                  *(v185 + 24) = v326;
                  swift_endAccess();
                }
              }

              else
              {
                v26 = objc_opt_self();
                v203 = swift_allocObject();
                *(v203 + 2) = sub_189194958;
                *(v203 + 3) = v176;
                v204 = v304;

                isEscapingClosureAtFileLocation = v172;
                sub_188C464C4(&v347 + 8, &v336);
                sub_188A55B8C(v298);
                a4 = swift_allocObject();
                a4[2] = sub_188E5C7F8;
                a4[3] = v203;
                *&v338 = sub_188E3FE50;
                *(&v338 + 1) = a4;
                *&v336 = MEMORY[0x1E69E9820];
                *(&v336 + 1) = 1107296256;
                *&v337 = sub_188A4A968;
                *(&v337 + 1) = &block_descriptor_86_2;
                v205 = _Block_copy(&v336);
                a2 = *(&v338 + 1);

                [v26 performWithoutAnimation_];
                _Block_release(v205);
                LOBYTE(v205) = swift_isEscapingClosureAtFileLocation();

                if (v205)
                {
                  goto LABEL_204;
                }

                if (!v299 || (v22 & 1) != 0)
                {
                  v297 = v203;
                  v298 = sub_188E5C7F8;
                }

                else
                {
                  v298 = v203;
                  v206 = v26;
                  v26 = v288;
                  v207 = v279;
                  sub_189195180(v288, v279, type metadata accessor for NavigationBarPlatterContainer.Settings);
                  v22 = *(v287 + 80);
                  v208 = swift_allocObject();
                  *(v208 + 16) = isEscapingClosureAtFileLocation;
                  *(v208 + 24) = v286;
                  sub_1891951E8(v207, v208 + ((v22 + 25) & ~v22), type metadata accessor for NavigationBarPlatterContainer.Settings);
                  v297 = isEscapingClosureAtFileLocation;
                  sub_188A55B8C(v290);
                  a4 = swift_allocObject();
                  a4[2] = sub_1891953A8;
                  a4[3] = v208;
                  v294 = v208;
                  *&v338 = sub_188E3FE50;
                  *(&v338 + 1) = a4;
                  *&v336 = MEMORY[0x1E69E9820];
                  *(&v336 + 1) = 1107296256;
                  *&v337 = sub_188A4A968;
                  *(&v337 + 1) = &block_descriptor_96_2;
                  v209 = _Block_copy(&v336);
                  a2 = *(&v338 + 1);

                  v293 = v206;
                  [v206 performWithoutAnimation_];
                  _Block_release(v209);
                  LOBYTE(v209) = swift_isEscapingClosureAtFileLocation();

                  if (v209)
                  {
                    goto LABEL_207;
                  }

                  v210 = *&v303[v27];
                  v211 = v278;
                  sub_189195180(v26, v278, type metadata accessor for NavigationBarPlatterContainer.Settings);
                  sub_188C45F1C(v301, &v336);
                  v212 = v282;
                  sub_189195180(v211, v282, type metadata accessor for NavigationBarPlatterContainer.Settings);
                  sub_188C45F1C(&v336, &v326);
                  v213 = (v22 + 16) & ~v22;
                  v214 = (v285 + v213) & 0xFFFFFFFFFFFFFFF8;
                  v215 = swift_allocObject();
                  sub_1891951E8(v211, v215 + v213, type metadata accessor for NavigationBarPlatterContainer.Settings);
                  v216 = v297;
                  *(v215 + v214) = v297;
                  v217 = (v215 + ((v214 + 15) & 0xFFFFFFFFFFFFFFF8));
                  v218 = v339;
                  v217[2] = v338;
                  v217[3] = v218;
                  v219 = v337;
                  *v217 = v336;
                  v217[1] = v219;
                  v220 = v342;
                  v217[6] = v341;
                  v217[7] = v220;
                  v221 = v340[1];
                  v217[4] = v340[0];
                  v217[5] = v221;
                  v222 = v346;
                  v217[10] = v345;
                  v217[11] = v222;
                  v223 = v344;
                  v217[8] = v343;
                  v217[9] = v223;
                  v224 = *(v210 + 16);
                  *(v210 + 16) = v224 + 1;
                  if (a5 == 0.0)
                  {
                    v225 = v216;
                    v226 = v276;
                    v227 = sub_18A4A4B98();
                    MEMORY[0x18CFE0ED0](v227);
                    v228 = *v273;
                    v229 = v277;
                    (*v273)(v226, v277);
                    v230 = v275;
                    sub_18A4A5F78();
                    v231 = (*v272)(v226, v230, v229);
                    LOBYTE(v315) = 1;
                    v314[0] = 1;
                    v232 = MEMORY[0x18CFE0EE0](v231);
                    sub_18A4A5F58();
                    v234 = v233;
                    v228(v226, v229);
                    v228(v230, v229);
                    *&v320 = v232;
                    *(&v320 + 1) = v234;
                    *&v321 = 0;
                    *(&v321 + 1) = v315 & 1;
                    v322 = 0;
                    v323 = v314[0] & 1 | 0x8000000000000000;
                    v324 = 0u;
                    memset(v325, 0, sizeof(v325));
                    sub_188C45F1C(&v326, &v315);
                    v235 = swift_allocObject();
                    v236 = v319[5];
                    *(v235 + 152) = v319[4];
                    *(v235 + 168) = v236;
                    v237 = v319[7];
                    *(v235 + 184) = v319[6];
                    *(v235 + 200) = v237;
                    v238 = v319[1];
                    *(v235 + 88) = v319[0];
                    *(v235 + 104) = v238;
                    v239 = v319[3];
                    *(v235 + 120) = v319[2];
                    *(v235 + 136) = v239;
                    v240 = v316;
                    *(v235 + 24) = v315;
                    *(v235 + 40) = v240;
                    v241 = v318;
                    *(v235 + 56) = v317;
                    v242 = v225;
                    *(v235 + 16) = v225;
                    *(v235 + 72) = v241;
                    sub_188C3DF9C(&v320, v314);
                    sub_188C3DF9C(&v320, v312);
                    v243 = swift_allocObject();
                    v244 = v312[3];
                    *(v243 + 48) = v312[2];
                    *(v243 + 64) = v244;
                    *(v243 + 80) = v313[0];
                    *(v243 + 89) = *(v313 + 9);
                    v245 = v312[1];
                    *(v243 + 16) = v312[0];
                    *(v243 + 32) = v245;
                    *(v243 + 112) = signpost_c2_entryLock_start;
                    *(v243 + 120) = 0;
                    v246 = swift_allocObject();
                    *(v246 + 16) = 0;
                    v22 = swift_allocObject();
                    *(v22 + 24) = 0;
                    *(v22 + 32) = 0;
                    *(v22 + 16) = v246;
                    v247 = swift_allocObject();
                    *(v247 + 16) = sub_189194A04;
                    *(v247 + 24) = v235;
                    *&v309 = sub_188E3FE50;
                    *(&v309 + 1) = v247;
                    *&v307 = MEMORY[0x1E69E9820];
                    *(&v307 + 1) = 1107296256;
                    *&v308 = sub_188A4A968;
                    *(&v308 + 1) = &block_descriptor_124_4;
                    v297 = _Block_copy(&v307);
                    v248 = v242;

                    sub_188C3DFF8(v314, &v307);
                    v249 = swift_allocObject();
                    v250 = v310;
                    *(v249 + 56) = v309;
                    *(v249 + 72) = v250;
                    *(v249 + 88) = v311[0];
                    *(v249 + 97) = *(v311 + 9);
                    v251 = v308;
                    *(v249 + 24) = v307;
                    *(v249 + 16) = v246;
                    *(v249 + 40) = v251;
                    *(v249 + 113) = 0;
                    *(v249 + 120) = sub_188E5C7FC;
                    *(v249 + 128) = v243;
                    v306[2] = sub_1891953A4;
                    v306[3] = v249;
                    v305[0] = MEMORY[0x1E69E9820];
                    v305[1] = 1107296256;
                    v306[0] = sub_188A4A8F0;
                    v306[1] = &block_descriptor_131_1;
                    v27 = _Block_copy(v305);

                    *&v309 = sub_188E5C82C;
                    *(&v309 + 1) = v22;
                    *&v307 = MEMORY[0x1E69E9820];
                    *(&v307 + 1) = 1107296256;
                    *&v308 = sub_188ABD010;
                    *(&v308 + 1) = &block_descriptor_134_2;
                    a4 = _Block_copy(&v307);

                    a2 = v297;
                    [v293 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
                    _Block_release(a4);
                    _Block_release(v27);
                    _Block_release(a2);

                    sub_188C3E234(v314);

                    v26 = swift_isEscapingClosureAtFileLocation();

                    isEscapingClosureAtFileLocation = v298;
                    if (v26)
                    {
                      goto LABEL_208;
                    }

                    sub_188AAFF20(&v320);
                    sub_188C460F0(&v326);
                    sub_189195250(v282, type metadata accessor for NavigationBarPlatterContainer.Settings);
                  }

                  else
                  {
                    v261 = sub_18A4A76C8();
                    v262 = v284;
                    (*(*(v261 - 8) + 56))(v284, 1, 1, v261);
                    v263 = v212;
                    v264 = swift_allocObject();
                    swift_weakInit();
                    sub_18A4A76A8();
                    v265 = v216;

                    v266 = sub_18A4A7698();
                    v267 = swift_allocObject();
                    *(v267 + 16) = v266;
                    *(v267 + 24) = MEMORY[0x1E69E85E0];
                    *(v267 + 32) = v264;
                    *(v267 + 40) = a5;
                    *(v267 + 48) = v224;
                    *(v267 + 56) = sub_18919496C;
                    *(v267 + 64) = v215;

                    v268 = sub_188E59CB0(0, 0, v262, &unk_18A66CF90, v267);
                    swift_beginAccess();

                    v269 = swift_isUniquelyReferenced_nonNull_native();
                    *&v320 = *(v210 + 24);
                    *(v210 + 24) = 0x8000000000000000;
                    sub_188E9DE78(v268, v224, v269);
                    *(v210 + 24) = v320;
                    swift_endAccess();

                    sub_188C460F0(&v326);
                    sub_189195250(v263, type metadata accessor for NavigationBarPlatterContainer.Settings);
                    isEscapingClosureAtFileLocation = v298;
                  }

                  v297 = isEscapingClosureAtFileLocation;
                  v298 = sub_188E5C7F8;
                  v289 = v294;
                  v290 = sub_1891953A8;
                }
              }

              v166 = &v347 + 1;
              if (BYTE8(v348[0]))
              {
                v166 = v348;
              }

              *&v326 = *v166;
              BYTE8(v328) = 0;
              v167 = *&v349[8];
              v26 = *&v349[16];
              v168 = v349[24];
              a2 = *&v349[40];
              v169 = *&v349[32];
              v27 = *&v349[48];
              v336 = *&v349[8];
              v337 = *&v349[24];
              v338 = *&v349[40];
              v170 = v303;
              v22 = v303;
              sub_188EC2284(v167, v26, v168, v169, a2, v27);
              a4 = v299;
              sub_18918D8E0(&v326, v170, &v336, v299, v301);

              sub_188C46888(&v347 + 8);

              sub_188A3F5FC(&v347, &unk_1EA93F040);
              sub_188EC2210(v336, *(&v336 + 1), v337, *(&v337 + 1), v338, *(&v338 + 1));
              sub_188C4680C(&v326);
              sub_189185B68(v350);
              isEscapingClosureAtFileLocation = v350;
              v359 = *&v350[128];
              v360 = *&v350[144];
              v361 = *&v350[160];
              v355 = *&v350[64];
              v356 = *&v350[80];
              v358 = *&v350[112];
              v357 = *&v350[96];
              v351 = *v350;
              v352 = *&v350[16];
              v354 = *&v350[48];
              v353 = *&v350[32];
              v171 = get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(&v351);
              v164 = v302 + 1;
              if (v171 == 1)
              {
                goto LABEL_171;
              }
            }

LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            v28 = sub_18A4A7F68();
            goto LABEL_3;
          }
        }

        v303 = v125;
        v127 = OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;

        sub_188E56D00();

        if (v299)
        {
          v128 = *(v26 + v127);
          v129 = v291;
          sub_189195180(v288, v291, type metadata accessor for NavigationBarPlatterContainer.Settings);
          v130 = v292;
          sub_189195180(v129, v292, type metadata accessor for NavigationBarPlatterContainer.Settings);
          v131 = (*(v287 + 80) + 16) & ~*(v287 + 80);
          v132 = (v285 + v131) & 0xFFFFFFFFFFFFFFF8;
          v133 = swift_allocObject();
          sub_1891951E8(v129, v133 + v131, type metadata accessor for NavigationBarPlatterContainer.Settings);
          v134 = v133 + v132;
          *v134 = v26;
          *(v134 + 8) = v286;
          v135 = *(v128 + 16);
          *(v128 + 16) = v135 + 1;
          v136 = v26;
          if (a5 == 0.0)
          {
            sub_18918E7D0(v130, v136, v290 & 1);

            sub_189195250(v130, type metadata accessor for NavigationBarPlatterContainer.Settings);
          }

          else
          {
            sub_189195250(v130, type metadata accessor for NavigationBarPlatterContainer.Settings);
            v137 = sub_18A4A76C8();
            v138 = v284;
            (*(*(v137 - 8) + 56))(v284, 1, 1, v137);
            v139 = swift_allocObject();
            swift_weakInit();
            sub_18A4A76A8();

            v140 = sub_18A4A7698();
            v141 = swift_allocObject();
            *(v141 + 16) = v140;
            *(v141 + 24) = MEMORY[0x1E69E85E0];
            *(v141 + 32) = v139;
            *(v141 + 40) = a5;
            *(v141 + 48) = v135;
            *(v141 + 56) = sub_189194A24;
            *(v141 + 64) = v133;

            v142 = sub_188E59CB0(0, 0, v138, &unk_18A66CFA8, v141);
            swift_beginAccess();

            v143 = swift_isUniquelyReferenced_nonNull_native();
            *&v326 = *(v128 + 24);
            *(v128 + 24) = 0x8000000000000000;
            sub_188E9DE78(v142, v135, v143);
            *(v128 + 24) = v326;
            swift_endAccess();
          }

          v45 = v297;
          v117 = v298;
          a2 = v302;
          v22 = v300;
        }

        else
        {
          [v26 removeFromSuperview];
        }

        v144 = (v26 + OBJC_IVAR____UINavigationBarPlatterItemView_item);
        if (*(v26 + OBJC_IVAR____UINavigationBarPlatterItemView_item + 16))
        {
          v144 = (v26 + OBJC_IVAR____UINavigationBarPlatterItemView_item + 8);
        }

        v145 = *v144;
        LOBYTE(v336) = 0;
        *&v326 = v145;
        BYTE8(v328) = 0;
        v146 = OBJC_IVAR____UINavigationBarPlatterContentView_badgeViews;
        v147 = v304;
        swift_beginAccess();
        isEscapingClosureAtFileLocation = *&v147[v146];
        if (*(isEscapingClosureAtFileLocation + 16) && (v148 = sub_188C46540(&v326), (v149 & 1) != 0))
        {
          v150 = *(*(isEscapingClosureAtFileLocation + 56) + 8 * v148);
          swift_endAccess();
          swift_beginAccess();
          v151 = v150;
          v152 = sub_188FFFF94(&v326);
          swift_endAccess();

          v153 = v299;
          if (v299)
          {
            memset(v340, 0, 24);
            v339 = 0u;
            v338 = 0u;
            v337 = 0u;
            v336 = 0u;
            BYTE8(v340[1]) = -1;
            v154 = swift_allocObject();
            *(v154 + 16) = v151;
            v155 = swift_allocObject();
            v156 = v304;
            *(v155 + 16) = v151;
            *(v155 + 24) = v156;
            v157 = v151;

            v158 = v156;
            v159 = v157;
            isEscapingClosureAtFileLocation = v153;
            sub_188FE4298(&v336, sub_188F8656C, v154, sub_189194A1C, v155);

            sub_188A3F5FC(&v336, &qword_1EA9362D0);

            v45 = v297;
            a2 = v302;
            v22 = v300;
          }

          else
          {
            [v151 removeFromSuperview];
            isEscapingClosureAtFileLocation = *&v304[OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer];
            v160 = [isEscapingClosureAtFileLocation subviews];
            sub_188A34624(0, &qword_1ED48F680);
            v161 = sub_18A4A7548();

            if (v161 >> 62)
            {
              v162 = sub_18A4A7F68();
            }

            else
            {
              v162 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v45 = v297;
            a2 = v302;

            v22 = v300;
            if (!v162)
            {
              [isEscapingClosureAtFileLocation removeFromSuperview];
            }
          }
        }

        else
        {
          swift_endAccess();
        }

        sub_188C4680C(&v326);
        v27 = v124;
        a4 = v303;
      }
    }

    v27 = 0;
    v22 = (v45 + 4);
    v289 = OBJC_IVAR____UINavigationBarPlatterContentView_badgeViews;
    v286 = OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer;
    v293 = v46;
    v295 = (v45 + 4);
LABEL_27:
    v47 = (v22 + 160 * v27);
    v48 = *v47;
    v337 = v47[1];
    v336 = v48;
    v49 = v47[2];
    v50 = v47[3];
    v51 = v47[4];
    v340[1] = v47[5];
    v340[0] = v51;
    v339 = v50;
    v338 = v49;
    v52 = v47[6];
    v53 = v47[7];
    v54 = v47[8];
    v344 = v47[9];
    v343 = v54;
    v342 = v53;
    v341 = v52;
    v55 = v336;
    if (v337)
    {
      v56 = *(&v336 + 1);
      sub_188C464C4(&v336, &v326);
      sub_188C468DC(v55, v56, 1);

      v55 = v56;
    }

    else
    {
      sub_188C464C4(&v336, &v326);
    }

    LOBYTE(v326) = 0;
    *&v315 = v55;
    BYTE8(v317) = 0;
    isEscapingClosureAtFileLocation = v368;
    v57 = sub_188C46540(&v315);
    if (v58)
    {
      v59 = v57;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      *&v326 = isEscapingClosureAtFileLocation;
      if (!v60)
      {
        sub_188FA0EE8();
        isEscapingClosureAtFileLocation = v326;
      }

      sub_188C4680C(*(isEscapingClosureAtFileLocation + 48) + 48 * v59);
      v61 = *(*(isEscapingClosureAtFileLocation + 56) + 8 * v59);
      sub_188C4D458(v59, isEscapingClosureAtFileLocation);
      sub_188C4680C(&v315);
      v368 = isEscapingClosureAtFileLocation;
      goto LABEL_84;
    }

    a2 = *(&v340[1] + 1);
    v62 = v341;
    v22 = BYTE8(v341);
    sub_188C4680C(&v315);
    if (v22 == 255)
    {
      goto LABEL_83;
    }

    v296 = v27;
    v26 = isEscapingClosureAtFileLocation + 64;
    v63 = 1 << *(isEscapingClosureAtFileLocation + 32);
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    else
    {
      v64 = -1;
    }

    v27 = v64 & *(isEscapingClosureAtFileLocation + 64);
    swift_bridgeObjectRetain_n();
    v302 = a2;
    v303 = v62;
    sub_188C46860(a2, v62, v22);
    v65 = 0;
    v66 = (v63 + 63) >> 6;
    while (1)
    {
      if (v27)
      {
        goto LABEL_45;
      }

      v67 = v302;
      a4 = v303;
      do
      {
        v68 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
          goto LABEL_200;
        }

        if (v68 >= v66)
        {

          sub_188C46874(v67, a4, v22);
          v45 = v297;
          v46 = v293;
          goto LABEL_82;
        }

        v27 = *(v26 + 8 * v68);
        ++v65;
      }

      while (!v27);
      v65 = v68;
LABEL_45:
      v69 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v300 = *(*(isEscapingClosureAtFileLocation + 56) + ((v65 << 9) | (8 * v69)));
      a2 = &v300[OBJC_IVAR____UINavigationBarPlatterItemView_item];
      v70 = *&v300[OBJC_IVAR____UINavigationBarPlatterItemView_item + 88];
      v71 = *&v300[OBJC_IVAR____UINavigationBarPlatterItemView_item + 96];
      v72 = v300[OBJC_IVAR____UINavigationBarPlatterItemView_item + 104];
      if (v72 <= 2)
      {
        if (v300[OBJC_IVAR____UINavigationBarPlatterItemView_item + 104])
        {
          v298 = &v300[OBJC_IVAR____UINavigationBarPlatterItemView_item];
          if (v72 == 1)
          {
            a2 = v302;
            sub_188C46860(v302, v303, v22);
            v294 = v300;
            sub_188C46874(v70, v71, 1u);
            if (v22 != 1)
            {
              goto LABEL_73;
            }

LABEL_61:
            v73 = v70 == a2;
            a2 = v298;
            if (!v73)
            {
LABEL_62:

              continue;
            }
          }

          else
          {
            a2 = v302;
            sub_188C46860(v302, v303, v22);
            v294 = v300;
            sub_188C46874(v70, v71, 2u);
            if (v22 != 2)
            {
LABEL_73:

              sub_188C46874(a2, v303, v22);
              continue;
            }

            v73 = v70 == a2;
            a2 = v298;
            if (!v73)
            {
              goto LABEL_62;
            }
          }
        }

        else
        {
          if (v22)
          {
            continue;
          }

          v74 = v70 == v302 && v71 == v303;
          if (!v74 && (sub_18A4A86C8() & 1) == 0)
          {
            continue;
          }

          v82 = v300;

          v77 = v302;
          v78 = v303;
          v79 = 0;
LABEL_92:
          sub_188C46874(v77, v78, v79);
        }

        v45 = v297;
        a4 = *(v297 + 2);
        v46 = v293;
        v22 = v295;
        if (!a4)
        {
LABEL_111:
          v93 = (a2 + 8);
          if (!*(a2 + 16))
          {
            v93 = a2;
          }

          v94 = *v93;
          LOBYTE(v326) = 0;
          *&v315 = v94;
          BYTE8(v317) = 0;
          v95 = v304;
          v96 = v289;
          swift_beginAccess();
          v97 = *&v96[v95];
          v27 = v296;
          if (*(v97 + 16) && (v98 = sub_188C46540(&v315), (v99 & 1) != 0))
          {
            v100 = *(*(v97 + 56) + 8 * v98);
            swift_endAccess();
            swift_beginAccess();
            v101 = v100;
            v102 = sub_188FFFF94(&v315);
            swift_endAccess();

            if (v299)
            {
              *&v331 = 0;
              v329 = 0u;
              v330 = 0u;
              v327 = 0u;
              v328 = 0u;
              v326 = 0u;
              BYTE8(v331) = -1;
              a4 = swift_allocObject();
              a4[2] = v101;
              v103 = swift_allocObject();
              v104 = v304;
              *(v103 + 16) = v101;
              *(v103 + 24) = v104;
              v105 = v101;

              v106 = v104;
              v27 = v296;
              sub_188FE4298(&v326, sub_188FE6668, a4, sub_1891953B4, v103);

              sub_188A3F5FC(&v326, &qword_1EA9362D0);

              goto LABEL_118;
            }

            [v101 removeFromSuperview];
            v109 = *&v304[v286];
            v110 = [v109 subviews];
            sub_188A34624(0, &qword_1ED48F680);
            v111 = sub_18A4A7548();

            if (v111 >> 62)
            {
              a4 = sub_18A4A7F68();
            }

            else
            {
              a4 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v61 = v300;

            if (!a4)
            {
              [v109 removeFromSuperview];
            }
          }

          else
          {
            swift_endAccess();
LABEL_118:
            v61 = v300;
          }

          sub_188C4680C(&v315);
          v107 = (a2 + 8);
          if (!*(a2 + 16))
          {
            v107 = a2;
          }

          v108 = *v107;
          LOBYTE(v315) = 0;
          *&v326 = v108;
          BYTE8(v328) = 0;
          sub_188F282DC(0, &v326);
          v332 = v341;
          v333 = v342;
          v334 = v343;
          v335 = v344;
          v328 = v338;
          v329 = v339;
          v330 = v340[0];
          v331 = v340[1];
          v326 = v336;
          v327 = v337;
          sub_18918E4D0(&v326);
          goto LABEL_84;
        }

        v83 = 0;
        v27 = v295;
        while (2)
        {
          if (v83 >= v45[2])
          {
            goto LABEL_205;
          }

          v84 = *(v27 + 16);
          v326 = *v27;
          v327 = v84;
          v85 = *(v27 + 32);
          v86 = *(v27 + 48);
          v87 = *(v27 + 80);
          v330 = *(v27 + 64);
          v331 = v87;
          v328 = v85;
          v329 = v86;
          v88 = *(v27 + 96);
          v89 = *(v27 + 112);
          v90 = *(v27 + 128);
          v335 = *(v27 + 144);
          v334 = v90;
          v332 = v88;
          v333 = v89;
          isEscapingClosureAtFileLocation = v326;
          if (v327)
          {
            v26 = *(&v326 + 1);
            sub_188C464C4(&v326, &v315);
            sub_188C468DC(isEscapingClosureAtFileLocation, v26, 1);

            isEscapingClosureAtFileLocation = v26;
          }

          else
          {
            sub_188C464C4(&v326, &v315);
          }

          LOBYTE(v315) = 0;
          *&v351 = isEscapingClosureAtFileLocation;
          BYTE8(v353) = 0;
          v91 = (a2 + 8);
          if (!*(a2 + 16))
          {
            v91 = a2;
          }

          v92 = *v91;
          LOBYTE(v315) = 0;
          *v350 = v92;
          v350[40] = 0;
          sub_188C46604(&v351, &v315);
          sub_188C46604(v350, &v318);
          if (BYTE8(v317))
          {
            sub_188C46604(&v315, &v347);
            if (BYTE8(v319[1]))
            {
              v320 = v318;
              v321 = v319[0];
              v322 = *&v319[1];
              isEscapingClosureAtFileLocation = MEMORY[0x18CFE2F70](&v347, &v320);
              sub_188C46888(&v326);
              sub_188BBA15C(&v320);
              sub_188C4680C(v350);
              sub_188C4680C(&v351);
              sub_188BBA15C(&v347);
              sub_188C4680C(&v315);
              if (isEscapingClosureAtFileLocation)
              {
                break;
              }

              goto LABEL_97;
            }

            sub_188C46888(&v326);
            sub_188C4680C(v350);
            sub_188C4680C(&v351);
            sub_188BBA15C(&v347);
LABEL_96:
            sub_188A3F5FC(&v315, &unk_1EA93F050);
            goto LABEL_97;
          }

          sub_188C46888(&v326);
          sub_188C4680C(v350);
          sub_188C4680C(&v351);
          sub_188C46604(&v315, &v347);
          if (BYTE8(v319[1]))
          {
            goto LABEL_96;
          }

          isEscapingClosureAtFileLocation = v347;
          v26 = v318;
          sub_188C4680C(&v315);
          if (isEscapingClosureAtFileLocation != v26)
          {
LABEL_97:
            v83 = (v83 + 1);
            v27 += 160;
            if (a4 == v83)
            {
              goto LABEL_111;
            }

            continue;
          }

          break;
        }

LABEL_82:
        v27 = v296;
LABEL_83:
        v332 = v341;
        v333 = v342;
        v334 = v343;
        v335 = v344;
        v328 = v338;
        v329 = v339;
        v330 = v340[0];
        v331 = v340[1];
        v326 = v336;
        v327 = v337;
        v80 = objc_allocWithZone(type metadata accessor for PlatterItemView());
        sub_188C464C4(&v336, &v315);
        v61 = sub_18918FC1C(&v326);
        v22 = v295;
LABEL_84:
        v26 = v61;
        isEscapingClosureAtFileLocation = &v367;
        MEMORY[0x18CFE2450]();
        if (*((v367 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v367 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          a4 = *((v367 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_18A4A7588();
        }

        ++v27;
        sub_18A4A75F8();

        sub_188C46888(&v336);
        if (v27 == v46)
        {
          v27 = v368;
          v281 = v367;
          goto LABEL_129;
        }

        if (v27 >= v45[2])
        {
          goto LABEL_201;
        }

        goto LABEL_27;
      }

      if (v300[OBJC_IVAR____UINavigationBarPlatterItemView_item + 104] > 4u)
      {
        if (v72 != 5)
        {
          continue;
        }

        v298 = &v300[OBJC_IVAR____UINavigationBarPlatterItemView_item];
        a2 = v302;
        sub_188C46860(v302, v303, v22);
        v294 = v300;
        sub_188C46874(v70, v71, 5u);
        if (v22 != 5)
        {
          goto LABEL_73;
        }

        goto LABEL_61;
      }

      if (v72 == 3)
      {
        if (v22 == 3)
        {
          v73 = v70 == v302 && v71 == v303;
          if (v73 || (sub_18A4A86C8() & 1) != 0)
          {
            v81 = v300;

            v77 = v302;
            v78 = v303;
            v79 = 3;
            goto LABEL_92;
          }
        }
      }

      else if (v22 == 4)
      {
        v75 = v70 == v302 && v71 == v303;
        if (v75 || (sub_18A4A86C8() & 1) != 0)
        {
          v76 = v300;

          v77 = v302;
          v78 = v303;
          v79 = 4;
          goto LABEL_92;
        }
      }
    }
  }

  a2 = 0;
  v303 = (v26 & 0xC000000000000001);
  while (1)
  {
    if (v303)
    {
      v30 = sub_188E498AC(a2, v26);
      v31 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_198;
      }
    }

    else
    {
      if (a2 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_199;
      }

      v30 = *(v26 + 8 * a2 + 32);
      v31 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_198;
      }
    }

    v32 = &v30[OBJC_IVAR____UINavigationBarPlatterItemView_item];
    if (v30[OBJC_IVAR____UINavigationBarPlatterItemView_item + 16])
    {
      v32 = &v30[OBJC_IVAR____UINavigationBarPlatterItemView_item + 8];
    }

    v33 = *v32;
    LOBYTE(v326) = 0;
    *&v336 = v33;
    BYTE8(v338) = 0;
    a4 = v30;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    *&v326 = v27;
    isEscapingClosureAtFileLocation = v27;
    v34 = sub_188C46540(&v336);
    v36 = *(v27 + 16);
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
      goto LABEL_202;
    }

    v40 = v35;
    if (*(isEscapingClosureAtFileLocation + 24) < v39)
    {
      break;
    }

    if (v22)
    {
      goto LABEL_17;
    }

    v22 = v34;
    sub_188FA0EE8();
    v34 = v22;
    v42 = v326;
    if ((v40 & 1) == 0)
    {
LABEL_18:
      *(v42 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v27 = v42;
      isEscapingClosureAtFileLocation = v34;
      sub_188C46604(&v336, *(v42 + 48) + 48 * v34);
      *(*(v27 + 56) + 8 * isEscapingClosureAtFileLocation) = a4;

      sub_188C4680C(&v336);
      v43 = *(v27 + 16);
      v38 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v38)
      {
        goto LABEL_203;
      }

      *(v27 + 16) = v44;
      goto LABEL_6;
    }

LABEL_5:
    v29 = *(v42 + 56);
    v27 = v42;
    isEscapingClosureAtFileLocation = *(v29 + 8 * v34);
    *(v29 + 8 * v34) = a4;

    sub_188C4680C(&v336);
LABEL_6:
    ++a2;
    if (v31 == v28)
    {
      goto LABEL_25;
    }
  }

  sub_1890BAC90(v39, v22);
  v34 = sub_188C46540(&v336);
  if ((v40 & 1) == (v41 & 1))
  {
LABEL_17:
    v42 = v326;
    if ((v40 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_5;
  }

  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

void sub_18918AB9C(uint64_t a1, void *a2)
{
  sub_188FE53B8(a2, 0);
  v3 = *(a2 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase);
  *(a2 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) = 0;
  sub_189186104(v3);
  sub_189185D18();
  sub_18918766C();
}

uint64_t sub_18918AC08(uint64_t a1, CGFloat a2, CGFloat a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v35 = &v34 - v10;
  v11 = sub_18A4A5FA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v19 = *&v4[OBJC_IVAR____UINavigationBarPlatterView_translationKickScheduler];
  v20 = *(v12 + 16);
  v20(&v34 - v17, a1, v11, v16);
  (v20)(v14, v18, v11);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  (*(v12 + 32))(v22 + v21, v18, v11);
  *(v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v23 = *(v19 + 16);
  *(v19 + 16) = v23 + 1;
  if (a4 == 0.0)
  {
    sub_18918AFAC(v14, v4, a2, a3);
  }

  else
  {
    v24 = sub_18A4A76C8();
    v25 = v35;
    (*(*(v24 - 8) + 56))(v35, 1, 1, v24);
    v26 = swift_allocObject();
    swift_weakInit();
    sub_18A4A76A8();
    v27 = v4;

    v28 = sub_18A4A7698();
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E85E0];
    *(v29 + 16) = v28;
    *(v29 + 24) = v30;
    *(v29 + 32) = v26;
    *(v29 + 40) = a4;
    *(v29 + 48) = v23;
    *(v29 + 56) = sub_1891947DC;
    *(v29 + 64) = v22;

    v31 = sub_188E59CB0(0, 0, v25, &unk_18A66CF70, v29);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v19 + 24);
    *(v19 + 24) = 0x8000000000000000;
    sub_188E9DE78(v31, v23, isUniquelyReferenced_nonNull_native);
    *(v19 + 24) = v36;
    swift_endAccess();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_18918AFAC(uint64_t a1, void *a2, CGFloat a3, CGFloat a4)
{
  if (a3 == 0.0 && a4 == 0.0)
  {
    v5 = *(MEMORY[0x1E69792E8] + 80);
    *&v40.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v40.m33 = v5;
    v6 = *(MEMORY[0x1E69792E8] + 112);
    *&v40.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v40.m43 = v6;
    v7 = *(MEMORY[0x1E69792E8] + 16);
    *&v40.m11 = *MEMORY[0x1E69792E8];
    *&v40.m13 = v7;
    v8 = *(MEMORY[0x1E69792E8] + 48);
    *&v40.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v40.m23 = v8;
  }

  else
  {
    v9 = a1;
    CATransform3DMakeTranslation(&v40, a3, a4, 0.0);
    a1 = v9;
  }

  sub_188C449C0(a1, v39);
  v10 = swift_allocObject();
  v11 = *&v40.m33;
  *(v10 + 88) = *&v40.m31;
  *(v10 + 104) = v11;
  v12 = *&v40.m43;
  *(v10 + 120) = *&v40.m41;
  *(v10 + 136) = v12;
  v13 = *&v40.m13;
  *(v10 + 24) = *&v40.m11;
  *(v10 + 40) = v13;
  v14 = *&v40.m23;
  *(v10 + 56) = *&v40.m21;
  *(v10 + 16) = a2;
  *(v10 + 72) = v14;
  sub_188C3DF9C(v39, v38);
  sub_188C3DF9C(v39, v36);
  v15 = swift_allocObject();
  v16 = v36[3];
  *(v15 + 48) = v36[2];
  *(v15 + 64) = v16;
  *(v15 + 80) = v37[0];
  *(v15 + 89) = *(v37 + 9);
  v17 = v36[1];
  *(v15 + 16) = v36[0];
  *(v15 + 32) = v17;
  *(v15 + 112) = signpost_c2_entryLock_start;
  *(v15 + 120) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  v19[3] = 0;
  v19[4] = 0;
  v19[2] = v18;
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_18919486C;
  *(v21 + 24) = v10;
  *&v33 = sub_188A4B574;
  *(&v33 + 1) = v21;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v32 = sub_188A4A968;
  *(&v32 + 1) = &block_descriptor_138;
  v22 = _Block_copy(&aBlock);
  v23 = a2;

  sub_188C3DFF8(v38, &aBlock);
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 56) = v33;
  *(v24 + 72) = v25;
  *(v24 + 88) = v35[0];
  *(v24 + 97) = *(v35 + 9);
  v26 = v32;
  *(v24 + 24) = aBlock;
  *(v24 + 16) = v18;
  *(v24 + 40) = v26;
  *(v24 + 113) = 0;
  *(v24 + 120) = sub_188E5B140;
  *(v24 + 128) = v15;
  v30[4] = sub_188C5745C;
  v30[5] = v24;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 1107296256;
  v30[2] = sub_188A4A8F0;
  v30[3] = &block_descriptor_61_3;
  v27 = _Block_copy(v30);

  *&v33 = sub_188ABBADC;
  *(&v33 + 1) = v19;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v32 = sub_188ABD010;
  *(&v32 + 1) = &block_descriptor_64_4;
  v28 = _Block_copy(&aBlock);

  [v20 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v28);
  _Block_release(v27);
  _Block_release(v22);

  sub_188C3E234(v38);

  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if ((v15 & 1) == 0)
  {
    return sub_188AAFF20(v39);
  }

  __break(1u);
  return result;
}

void sub_18918B3FC()
{
  v0 = sub_18A4A4A88();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v1 + 16))(v3, &v7[*(v5 + 28)], v0);
  sub_189195250(v7, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4A68();
  (*(v1 + 8))(v3, v0);
  sub_18918630C();
}

uint64_t sub_18918B584(void *a1)
{
  v2 = sub_18A4A5FA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35[-1] - v7;
  v9 = sub_18A4A4BE8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v10 + 16))(v12, v15, v9);
  sub_189195250(v15, type metadata accessor for NavigationBarPlatterContainer.Settings);
  v16 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v16);
  v17 = *(v3 + 8);
  v17(v5, v2);
  sub_18A4A5F78();
  (*(v10 + 8))(v12, v9);
  v18 = sub_188C449C0(v8, v44);
  (v17)(v8, v2, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  sub_188C3DF9C(v44, v43);
  sub_188C3DF9C(v44, v41);
  v20 = swift_allocObject();
  v21 = v41[3];
  *(v20 + 48) = v41[2];
  *(v20 + 64) = v21;
  *(v20 + 80) = v42[0];
  *(v20 + 89) = *(v42 + 9);
  v22 = v41[1];
  *(v20 + 16) = v41[0];
  *(v20 + 32) = v22;
  *(v20 + 112) = signpost_c2_entryLock_start;
  *(v20 + 120) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  v24[3] = 0;
  v24[4] = 0;
  v24[2] = v23;
  v34 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_189194F80;
  *(v25 + 24) = v19;
  *&v38 = sub_188E3FE50;
  *(&v38 + 1) = v25;
  *&v36 = MEMORY[0x1E69E9820];
  *(&v36 + 1) = 1107296256;
  *&v37 = sub_188A4A968;
  *(&v37 + 1) = &block_descriptor_503;
  v26 = _Block_copy(&v36);
  v27 = a1;

  sub_188C3DFF8(v43, &v36);
  v28 = swift_allocObject();
  v29 = v39;
  *(v28 + 56) = v38;
  *(v28 + 72) = v29;
  *(v28 + 88) = v40[0];
  *(v28 + 97) = *(v40 + 9);
  v30 = v37;
  *(v28 + 24) = v36;
  *(v28 + 16) = v23;
  *(v28 + 40) = v30;
  *(v28 + 113) = 0;
  *(v28 + 120) = sub_188E5C7FC;
  *(v28 + 128) = v20;
  v35[4] = sub_1891953A4;
  v35[5] = v28;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 1107296256;
  v35[2] = sub_188A4A8F0;
  v35[3] = &block_descriptor_510;
  v31 = _Block_copy(v35);

  *&v38 = sub_188E5C82C;
  *(&v38 + 1) = v24;
  *&v36 = MEMORY[0x1E69E9820];
  *(&v36 + 1) = 1107296256;
  *&v37 = sub_188ABD010;
  *(&v37 + 1) = &block_descriptor_513;
  v32 = _Block_copy(&v36);

  [v34 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v32);
  _Block_release(v31);
  _Block_release(v26);

  sub_188C3E234(v43);

  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if ((v31 & 1) == 0)
  {
    return sub_188AAFF20(v44);
  }

  __break(1u);
  return result;
}

uint64_t sub_18918BB74(void *a1, double a2, double a3)
{
  v6 = sub_18A4A5FA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18A4A4B78();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v11 + 16))(v13, &v17[*(v15 + 32)], v10);
  sub_189195250(v17, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4AB8();
  (*(v11 + 8))(v13, v10);
  v18 = sub_188C449C0(v9, v44);
  (*(v7 + 8))(v9, v6, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  sub_188C3DF9C(v44, v43);
  sub_188C3DF9C(v44, v41);
  v20 = swift_allocObject();
  v21 = v41[3];
  *(v20 + 48) = v41[2];
  *(v20 + 64) = v21;
  *(v20 + 80) = v42[0];
  *(v20 + 89) = *(v42 + 9);
  v22 = v41[1];
  *(v20 + 16) = v41[0];
  *(v20 + 32) = v22;
  *(v20 + 112) = signpost_c2_entryLock_start;
  *(v20 + 120) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  v24[3] = 0;
  v24[4] = 0;
  v24[2] = v23;
  v34 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1891950E8;
  *(v25 + 24) = v19;
  *&v38 = sub_188E3FE50;
  *(&v38 + 1) = v25;
  *&v36 = MEMORY[0x1E69E9820];
  *(&v36 + 1) = 1107296256;
  *&v37 = sub_188A4A968;
  *(&v37 + 1) = &block_descriptor_610;
  v26 = _Block_copy(&v36);
  v27 = a1;

  sub_188C3DFF8(v43, &v36);
  v28 = swift_allocObject();
  v29 = v39;
  *(v28 + 56) = v38;
  *(v28 + 72) = v29;
  *(v28 + 88) = v40[0];
  *(v28 + 97) = *(v40 + 9);
  v30 = v37;
  *(v28 + 24) = v36;
  *(v28 + 16) = v23;
  *(v28 + 40) = v30;
  *(v28 + 113) = 0;
  *(v28 + 120) = sub_188E5C7FC;
  *(v28 + 128) = v20;
  v35[4] = sub_1891953A4;
  v35[5] = v28;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 1107296256;
  v35[2] = sub_188A4A8F0;
  v35[3] = &block_descriptor_617;
  v31 = _Block_copy(v35);

  *&v38 = sub_188E5C82C;
  *(&v38 + 1) = v24;
  *&v36 = MEMORY[0x1E69E9820];
  *(&v36 + 1) = 1107296256;
  *&v37 = sub_188ABD010;
  *(&v37 + 1) = &block_descriptor_620;
  v32 = _Block_copy(&v36);

  [v34 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v32);
  _Block_release(v31);
  _Block_release(v26);

  sub_188C3E234(v43);

  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if ((v20 & 1) == 0)
  {
    return sub_188AAFF20(v44);
  }

  __break(1u);
  return result;
}

uint64_t sub_18918C124(void *a1, double a2, double a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1891950F4;
  *(v8 + 24) = v7;
  v12[4] = sub_188E3FE50;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_188A4A968;
  v12[3] = &block_descriptor_630;
  v9 = _Block_copy(v12);
  v10 = a1;

  [v6 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v9);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

id sub_18918C2A0(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + OBJC_IVAR____UINavigationBarPlatterView_scaleOffset);
  [v5 transform3D];
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v12 = v20;
  v7 = v15;
  v8 = v16;
  *v14 = *v22;
  *&v14[16] = *&v22[16];
  v13 = a2;
  [v5 setTransform3D_];
  [v5 transform3D];
  v11 = v19;
  v12 = v20;
  v13 = v21;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  *&v14[8] = *&v22[8];
  *v14 = a3;
  return [v5 setTransform3D_];
}

uint64_t sub_18918C388(void *a1)
{
  v2 = sub_18A4A5FA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A4B78();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v7 + 16))(v9, &v13[*(v11 + 32)], v6);
  sub_189195250(v13, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4B18();
  (*(v7 + 8))(v9, v6);
  v14 = sub_188C449C0(v5, v40);
  (*(v3 + 8))(v5, v2, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  sub_188C3DF9C(v40, v39);
  sub_188C3DF9C(v40, v37);
  v16 = swift_allocObject();
  v17 = v37[3];
  *(v16 + 48) = v37[2];
  *(v16 + 64) = v17;
  *(v16 + 80) = v38[0];
  *(v16 + 89) = *(v38 + 9);
  v18 = v37[1];
  *(v16 + 16) = v37[0];
  *(v16 + 32) = v18;
  *(v16 + 112) = signpost_c2_entryLock_start;
  *(v16 + 120) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  v20[3] = 0;
  v20[4] = 0;
  v20[2] = v19;
  v30 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_18919504C;
  *(v21 + 24) = v15;
  *&v34 = sub_188E3FE50;
  *(&v34 + 1) = v21;
  *&v32 = MEMORY[0x1E69E9820];
  *(&v32 + 1) = 1107296256;
  *&v33 = sub_188A4A968;
  *(&v33 + 1) = &block_descriptor_571;
  v22 = _Block_copy(&v32);
  v23 = a1;

  sub_188C3DFF8(v39, &v32);
  v24 = swift_allocObject();
  v25 = v35;
  *(v24 + 56) = v34;
  *(v24 + 72) = v25;
  *(v24 + 88) = v36[0];
  *(v24 + 97) = *(v36 + 9);
  v26 = v33;
  *(v24 + 24) = v32;
  *(v24 + 16) = v19;
  *(v24 + 40) = v26;
  *(v24 + 113) = 0;
  *(v24 + 120) = sub_188E5C7FC;
  *(v24 + 128) = v16;
  v31[4] = sub_1891953A4;
  v31[5] = v24;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 1107296256;
  v31[2] = sub_188A4A8F0;
  v31[3] = &block_descriptor_578;
  v27 = _Block_copy(v31);

  *&v34 = sub_188E5C82C;
  *(&v34 + 1) = v20;
  *&v32 = MEMORY[0x1E69E9820];
  *(&v32 + 1) = 1107296256;
  *&v33 = sub_188ABD010;
  *(&v33 + 1) = &block_descriptor_581;
  v28 = _Block_copy(&v32);

  [v30 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v28);
  _Block_release(v27);
  _Block_release(v22);

  sub_188C3E234(v39);

  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    return sub_188AAFF20(v40);
  }

  __break(1u);
  return result;
}

uint64_t sub_18918C92C(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_189195054;
  *(v4 + 24) = v3;
  v8[4] = sub_188E3FE50;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188A4A968;
  v8[3] = &block_descriptor_591;
  v5 = _Block_copy(v8);
  v6 = a1;

  [v2 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v5);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18918CA94(void *a1)
{
  v2 = sub_18A4A5FA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A4B78();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v7 + 16))(v9, &v13[*(v11 + 32)], v6);
  sub_189195250(v13, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4B48();
  (*(v7 + 8))(v9, v6);
  v14 = sub_188C449C0(v5, v40);
  (*(v3 + 8))(v5, v2, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  sub_188C3DF9C(v40, v39);
  sub_188C3DF9C(v40, v37);
  v16 = swift_allocObject();
  v17 = v37[3];
  *(v16 + 48) = v37[2];
  *(v16 + 64) = v17;
  *(v16 + 80) = v38[0];
  *(v16 + 89) = *(v38 + 9);
  v18 = v37[1];
  *(v16 + 16) = v37[0];
  *(v16 + 32) = v18;
  *(v16 + 112) = signpost_c2_entryLock_start;
  *(v16 + 120) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  v20[3] = 0;
  v20[4] = 0;
  v20[2] = v19;
  v30 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_189194FB4;
  *(v21 + 24) = v15;
  *&v34 = sub_188E3FE50;
  *(&v34 + 1) = v21;
  *&v32 = MEMORY[0x1E69E9820];
  *(&v32 + 1) = 1107296256;
  *&v33 = sub_188A4A968;
  *(&v33 + 1) = &block_descriptor_532;
  v22 = _Block_copy(&v32);
  v23 = a1;

  sub_188C3DFF8(v39, &v32);
  v24 = swift_allocObject();
  v25 = v35;
  *(v24 + 56) = v34;
  *(v24 + 72) = v25;
  *(v24 + 88) = v36[0];
  *(v24 + 97) = *(v36 + 9);
  v26 = v33;
  *(v24 + 24) = v32;
  *(v24 + 16) = v19;
  *(v24 + 40) = v26;
  *(v24 + 113) = 0;
  *(v24 + 120) = sub_188E5C7FC;
  *(v24 + 128) = v16;
  v31[4] = sub_1891953A4;
  v31[5] = v24;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 1107296256;
  v31[2] = sub_188A4A8F0;
  v31[3] = &block_descriptor_539;
  v27 = _Block_copy(v31);

  *&v34 = sub_188E5C82C;
  *(&v34 + 1) = v20;
  *&v32 = MEMORY[0x1E69E9820];
  *(&v32 + 1) = 1107296256;
  *&v33 = sub_188ABD010;
  *(&v33 + 1) = &block_descriptor_542;
  v28 = _Block_copy(&v32);

  [v30 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v28);
  _Block_release(v27);
  _Block_release(v22);

  sub_188C3E234(v39);

  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    return sub_188AAFF20(v40);
  }

  __break(1u);
  return result;
}

uint64_t sub_18918D038(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_189194FBC;
  *(v4 + 24) = v3;
  v8[4] = sub_188E3FE50;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188A4A968;
  v8[3] = &block_descriptor_552;
  v5 = _Block_copy(v8);
  v6 = a1;

  [v2 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v5);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_18918D1A0(void *a1, char a2, double a3)
{
  v6 = swift_allocObject();
  [a1 transform3D];
  v7 = v33;
  *(v6 + 80) = v32;
  *(v6 + 96) = v7;
  v8 = v35;
  *(v6 + 112) = v34;
  *(v6 + 128) = v8;
  v9 = v29;
  *(v6 + 16) = v28;
  *(v6 + 32) = v9;
  v10 = v31;
  *(v6 + 48) = v30;
  *(v6 + 64) = v10;
  if (a2)
  {
    *(v6 + 16) = a3;
  }

  if ((a2 & 2) != 0)
  {
    *(v6 + 56) = a3;
  }

  v11 = sub_18A4A5F58();
  v13 = v12;
  v14 = MEMORY[0x18CFE0EE0](v11);
  v15 = [objc_opt_self() behaviorWithDampingRatio:v13 response:v14];
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v6;
  v26 = sub_189195100;
  v27 = v17;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_188A4A8F0;
  v25 = &block_descriptor_639;
  v18 = _Block_copy(&v22);
  v19 = v15;
  v20 = a1;

  v26 = signpost_c2_entryLock_start;
  v27 = 0;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_188C3DD6C;
  v25 = &block_descriptor_642;
  v21 = _Block_copy(&v22);
  [v16 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v21);
  _Block_release(v18);
}

uint64_t sub_18918D3D4(void *a1, uint64_t a2)
{
  v3 = a2 + 16;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_189195108;
  *(v6 + 24) = v5;
  v10[4] = sub_188E3FE50;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188A4A968;
  v10[3] = &block_descriptor_652;
  v7 = _Block_copy(v10);
  v8 = a1;

  [v4 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v7);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

char *sub_18918D68C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____UINavigationBarPlatterContentView_itemViews] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____UINavigationBarPlatterContentView_badgeViews] = MEMORY[0x1E69E7CC8];
  v11 = OBJC_IVAR____UINavigationBarPlatterContentView_glassView;
  _s11PlatterViewC16PlatterGlassViewCMa();
  *&v5[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer;
  v13 = _s11PlatterViewC20SubviewContainerViewCMa();
  v14 = objc_allocWithZone(v13);
  *&v5[v12] = sub_1891907F0(0x736D657449, 0xE500000000000000);
  v15 = OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer;
  v16 = objc_allocWithZone(v13);
  *&v5[v15] = sub_1891907F0(0x736567646142, 0xE600000000000000);
  v26.receiver = v5;
  v26.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  v18 = OBJC_IVAR____UINavigationBarPlatterContentView_glassView;
  v19 = *&v17[OBJC_IVAR____UINavigationBarPlatterContentView_glassView];
  v20 = v17;
  v21 = v19;
  [v20 bounds];
  [v21 setFrame_];

  [*&v17[v18] setAutoresizingMask_];
  [v20 addSubview_];
  v22 = OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer;
  v23 = *&v17[v18];
  v24 = *&v20[OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer];
  [v23 bounds];
  [v24 setFrame_];

  [*&v20[v22] setAutoresizingMask_];
  [*&v17[v18] addSubview_];

  return v20;
}

void sub_18918D8E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v97 = *(a3 + 8);
  v98 = *a3;
  v11 = *(a3 + 24);
  v99 = *(a3 + 16);
  v13 = *(a3 + 32);
  v12 = *(a3 + 40);
  v14 = OBJC_IVAR____UINavigationBarPlatterContentView_badgeViews;
  swift_beginAccess();
  v15 = *&v5[v14];
  if (!*(v15 + 16) || (v16 = sub_188C46540(a1), (v17 & 1) == 0))
  {
    swift_endAccess();
    if (v11 == 1)
    {
      return;
    }

    v96 = a4;
    v18 = 0;
    if (!a2)
    {
LABEL_12:
      sub_188EC22E0(v98, v97, v99);
      v29 = v11;
      v30 = v13;
      v31 = v12;

      sub_188EC226C(v98, v97, v99);
      return;
    }

LABEL_8:
    v24 = v12;
    v25 = *&v6[OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer];
    v94 = v24;
    v95 = v13;
    sub_188EC2284(v98, v97, v99, v11, v13, v24);
    v93 = a2;
    v26 = [v25 superview];
    if (v26)
    {

      if (v18)
      {
LABEL_10:
        v27 = v18;
        goto LABEL_15;
      }
    }

    else
    {
      [v6 bounds];
      [v25 setFrame_];
      [v25 setAutoresizingMask_];
      [v6 addSubview_];
      if (v18)
      {
        goto LABEL_10;
      }
    }

    v32 = [objc_allocWithZone(_UIBarBadgeView) init];
    swift_beginAccess();
    v27 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107 = *&v6[v14];
    *&v6[v14] = 0x8000000000000000;
    sub_188E9DE38(v27, a1, isUniquelyReferenced_nonNull_native);
    *&v6[v14] = v107;
    swift_endAccess();
LABEL_15:
    v34 = v18;
    [v27 setBadgeColor_];
    [v27 setTextColor_];
    [v27 setFont_];
    if (v99)
    {
      if (v99 != 1)
      {
        v35 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      *&aBlock = v98;
      sub_189007B7C();
      sub_18A4A7DD8();
    }

    v35 = sub_18A4A7258();

LABEL_21:
    [v27 setText_];

    v36 = [v27 superview];
    v92 = v34;
    if (v36 && (v36, v36 == v25))
    {
      v91 = 0;
      v90 = 1;
    }

    else
    {
      v37 = objc_opt_self();
      v38 = swift_allocObject();
      v38[2] = v6;
      v38[3] = v27;
      v39 = swift_allocObject();
      v91 = sub_189194CE4;
      *(v39 + 16) = sub_189194CE4;
      *(v39 + 24) = v38;
      *&v102 = sub_188E3FE50;
      *(&v102 + 1) = v39;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v101 = sub_188A4A968;
      *(&v101 + 1) = &block_descriptor_307;
      v40 = _Block_copy(&aBlock);
      v41 = v6;
      v42 = v27;

      [v37 performWithoutAnimation_];
      _Block_release(v40);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_60;
      }

      v90 = 0;
    }

    v44 = 0.0;
    [v27 sizeThatFits_];
    v46 = v45;
    v48 = v47;
    v49 = [*&v6[OBJC_IVAR____UINavigationBarPlatterContentView_glassView] layer];
    [v49 cornerRadius];

    v38 = &selRef__shouldCrossFadeNavigationBar;
    if ([v6 _shouldReverseLayoutDirection])
    {
      isEscapingClosureAtFileLocation = 1;
    }

    else
    {
      isEscapingClosureAtFileLocation = 2;
    }

    v50 = swift_allocObject();
    v51 = v93;
    [v51 center];
    v53 = v52;
    [v51 bounds];
    v54 = v53 + CGRectGetWidth(v108) * -0.5;
    v55 = [v6 traitCollection];
    v56 = [v55 _barPlattersHidden];

    if (*(*(a5 + 144) + 16) != 1 || (v56 & 1) != 0)
    {
      [v51 bounds];
      Width = CGRectGetWidth(v109);
      [v6 bounds];
      Height = CGRectGetHeight(v110);
      v62 = 0.0;
      if (v56)
      {
        v63 = [v6 _shouldReverseLayoutDirection];
        v62 = -6.0;
        if (v63)
        {
          v62 = 6.0;
        }

        v44 = 10.0;
      }

      _UICornerPointForRoundedRect(isEscapingClosureAtFileLocation, v62, v44, Width, Height);
      v58 = v54 + v64;
      *(v50 + 16) = v54 + v64;
      *(v50 + 24) = v65;
    }

    else
    {
      _UICornerPointForRoundedRect(isEscapingClosureAtFileLocation, 0.0, 0.0, *(a5 + 56), *(a5 + 64));
      v58 = v57;
      *(v50 + 16) = v57;
      *(v50 + 24) = v59;
    }

    if ([v6 _shouldReverseLayoutDirection])
    {
      v66 = v58 + -10.0;
    }

    else
    {
      v66 = v54;
    }

    if ([v6 _shouldReverseLayoutDirection])
    {
      [v51 bounds];
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v74 = v73;

      v111.origin.x = v68;
      v111.origin.y = v70;
      v111.size.width = v72;
      v111.size.height = v74;
      v75 = v54 + CGRectGetWidth(v111);
    }

    else
    {

      v75 = v58 + 10.0;
    }

    v76 = v75 - v46 * 0.5;
    v77 = v46 * 0.5 + v66;
    if (v76 < v77)
    {
      v77 = v76;
    }

    if (v77 <= v76)
    {
      sub_1891F0578(v77, v76);
      *(v50 + 16) = UIPointRoundToViewScale(v6, *(v50 + 16), *(v50 + 24));
      *(v50 + 24) = v78;
      if (v90)
      {
        v79 = 0;
        if (v96)
        {
LABEL_48:
          v105 = 0;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          aBlock = 0u;
          v106 = -1;
          v80 = swift_allocObject();
          *(v80 + 16) = v27;
          *(v80 + 24) = v46;
          *(v80 + 32) = v48;
          *(v80 + 40) = v50;

          v81 = v27;

          sub_188FE4298(&aBlock, sub_189194D68, v80, 0, 0);

          sub_188EC226C(v98, v97, v99);

          sub_188A3F5FC(&aBlock, &qword_1EA9362D0);

LABEL_52:
          sub_188A55B8C(v91);
          sub_188A55B8C(v79);
          return;
        }

LABEL_51:
        [v27 bounds];
        [v27 setBounds_];
        swift_beginAccess();
        [v27 setCenter_];
        [v27 setAlpha_];
        [v27 layoutIfNeeded];

        sub_188EC226C(v98, v97, v99);

        goto LABEL_52;
      }

      v82 = objc_opt_self();
      v83 = swift_allocObject();
      *(v83 + 16) = v27;
      *(v83 + 24) = v46;
      *(v83 + 32) = v48;
      *(v83 + 40) = v50;
      v84 = swift_allocObject();
      v79 = sub_189194D00;
      *(v84 + 16) = sub_189194D00;
      *(v84 + 24) = v83;
      *&v102 = sub_188E3FE50;
      *(&v102 + 1) = v84;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v101 = sub_188A4A968;
      *(&v101 + 1) = &block_descriptor_320;
      v85 = _Block_copy(&aBlock);
      v38 = *(&v102 + 1);
      v86 = v27;

      [v82 performWithoutAnimation_];
      _Block_release(v85);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if (v96)
        {
          goto LABEL_48;
        }

        goto LABEL_51;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      v89 = sub_18A4A7F68();
      goto LABEL_56;
    }

    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v96 = a4;
  v18 = *(*(v15 + 56) + 8 * v16);
  swift_endAccess();
  if (v11 != 1)
  {
    v28 = v18;
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  swift_beginAccess();
  v11 = v18;
  v19 = sub_188FFFF94(a1);
  swift_endAccess();

  if (v96)
  {
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    aBlock = 0u;
    v106 = -1;
    v20 = swift_allocObject();
    *(v20 + 16) = v11;
    v21 = swift_allocObject();
    *(v21 + 16) = v11;
    *(v21 + 24) = v6;
    v22 = v11;

    v23 = v6;
    sub_188FE4298(&aBlock, sub_188FE6668, v20, sub_1891953B4, v21);

    sub_188A3F5FC(&aBlock, &qword_1EA9362D0);

    return;
  }

  v38 = &selRef_recordUIKitDragAndDropDistributionValue_forKey_;
  [v11 removeFromSuperview];
  isEscapingClosureAtFileLocation = *&v6[OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer];
  v87 = [isEscapingClosureAtFileLocation subviews];
  sub_188A34624(0, &qword_1ED48F680);
  v88 = sub_18A4A7548();

  if (v88 >> 62)
  {
    goto LABEL_62;
  }

  v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_56:

  if (!v89)
  {
    [isEscapingClosureAtFileLocation v38[464]];
  }
}

void sub_18918E4D0(__int128 *a1)
{
  v3 = a1[7];
  v47 = a1[6];
  v48 = v3;
  v4 = a1[9];
  v49 = a1[8];
  v50 = v4;
  v5 = a1[3];
  v43 = a1[2];
  v44 = v5;
  v6 = a1[5];
  v45 = a1[4];
  v46 = v6;
  v7 = a1[1];
  v41 = *a1;
  v42 = v7;
  v8 = &v1[OBJC_IVAR____UINavigationBarPlatterItemView_item];
  v9 = *&v1[OBJC_IVAR____UINavigationBarPlatterItemView_item];
  v10 = v9;
  v11 = v41;

  if (v9 != v41)
  {
    v12 = *v8;
    v13 = [v12 superview];

    if (v13)
    {

      if (v13 == v1)
      {
        v14 = *v8;
        [v14 removeFromSuperview];
      }
    }
  }

  v15 = *(v8 + 7);
  v40[6] = *(v8 + 6);
  v40[7] = v15;
  v16 = *(v8 + 9);
  v40[8] = *(v8 + 8);
  v40[9] = v16;
  v17 = *(v8 + 3);
  v40[2] = *(v8 + 2);
  v40[3] = v17;
  v18 = *(v8 + 5);
  v40[4] = *(v8 + 4);
  v40[5] = v18;
  v19 = *(v8 + 1);
  v40[0] = *v8;
  v40[1] = v19;
  v20 = a1[7];
  *(v8 + 6) = a1[6];
  *(v8 + 7) = v20;
  v21 = a1[9];
  *(v8 + 8) = a1[8];
  *(v8 + 9) = v21;
  v22 = a1[3];
  *(v8 + 2) = a1[2];
  *(v8 + 3) = v22;
  v23 = a1[5];
  *(v8 + 4) = a1[4];
  *(v8 + 5) = v23;
  v24 = a1[1];
  *v8 = *a1;
  *(v8 + 1) = v24;
  sub_188C464C4(&v41, v39);
  sub_188C46888(v40);
  v25 = v11;
  v26 = [v25 superview];

  if (!v26 || (v26, v26 != v1))
  {
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    v29 = v48;
    *(v28 + 120) = v47;
    *(v28 + 136) = v29;
    v30 = v50;
    *(v28 + 152) = v49;
    *(v28 + 168) = v30;
    v31 = v44;
    *(v28 + 56) = v43;
    *(v28 + 72) = v31;
    v32 = v46;
    *(v28 + 88) = v45;
    *(v28 + 104) = v32;
    v33 = v42;
    *(v28 + 24) = v41;
    *(v28 + 16) = v1;
    *(v28 + 40) = v33;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_189194AB8;
    *(v34 + 24) = v28;
    v38[4] = sub_188E3FE50;
    v38[5] = v34;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 1107296256;
    v38[2] = sub_188A4A968;
    v38[3] = &block_descriptor_205;
    v35 = _Block_copy(v38);
    sub_188C464C4(&v41, v39);
    v36 = v1;

    [v27 performWithoutAnimation_];
    _Block_release(v35);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_18918E7D0(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v37) = a3;
  v36[0] = a2;
  v4 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_18A4A5FA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v36 - v12;
  v14 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v14);
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_18A4A5F78();
  v16 = sub_188C449C0(v13, v47);
  (v15)(v13, v7, v16);
  sub_189195180(a1, v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationBarPlatterContainer.Settings);
  v17 = (*(v5 + 80) + 25) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v19 = v36[0];
  *(v18 + 16) = v36[0];
  *(v18 + 24) = v37;
  sub_1891951E8(v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for NavigationBarPlatterContainer.Settings);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = v20;
  sub_188C3DF9C(v47, v46);
  sub_188C3DF9C(v47, v44);
  v22 = swift_allocObject();
  v23 = v44[3];
  *(v22 + 48) = v44[2];
  *(v22 + 64) = v23;
  *(v22 + 80) = v45[0];
  *(v22 + 89) = *(v45 + 9);
  v24 = v44[1];
  *(v22 + 16) = v44[0];
  *(v22 + 32) = v24;
  *(v22 + 112) = signpost_c2_entryLock_start;
  *(v22 + 120) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = sub_18902C28C;
  v26[4] = v21;
  v36[1] = v21;
  v37 = objc_opt_self();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_189194C64;
  *(v27 + 24) = v18;
  *&v41 = sub_188E3FE50;
  *(&v41 + 1) = v27;
  *&v39 = MEMORY[0x1E69E9820];
  *(&v39 + 1) = 1107296256;
  *&v40 = sub_188A4A968;
  *(&v40 + 1) = &block_descriptor_227_0;
  v28 = _Block_copy(&v39);
  v29 = v19;

  sub_188C3DFF8(v46, &v39);
  v30 = swift_allocObject();
  v31 = v42;
  *(v30 + 56) = v41;
  *(v30 + 72) = v31;
  *(v30 + 88) = v43[0];
  *(v30 + 97) = *(v43 + 9);
  v32 = v40;
  *(v30 + 24) = v39;
  *(v30 + 16) = v25;
  *(v30 + 40) = v32;
  *(v30 + 113) = 0;
  *(v30 + 120) = sub_188E5C7FC;
  *(v30 + 128) = v22;
  v38[4] = sub_1891953A4;
  v38[5] = v30;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 1107296256;
  v38[2] = sub_188A4A8F0;
  v38[3] = &block_descriptor_234_0;
  v33 = _Block_copy(v38);

  *&v41 = sub_188E5C82C;
  *(&v41 + 1) = v26;
  *&v39 = MEMORY[0x1E69E9820];
  *(&v39 + 1) = 1107296256;
  *&v40 = sub_188ABD010;
  *(&v40 + 1) = &block_descriptor_237_2;
  v34 = _Block_copy(&v39);

  [v37 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v34);
  _Block_release(v33);
  _Block_release(v28);

  sub_188C3E234(v46);

  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    return sub_188AAFF20(v47);
  }

  __break(1u);
  return result;
}

id sub_18918EDB0(void *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [a1 setFrame_];
  [a1 setHitTestInsets_];
  [a1 setAlpha_];
  v10 = [a1 layer];
  v11 = sub_18A4A2D28();
  v12 = sub_18A4A7258();
  [v10 setValue:v11 forKeyPath:v12];

  [*(a4 + OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer) insertSubview:a1 atIndex:a5];

  return [a1 layoutIfNeeded];
}

uint64_t sub_18918EED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_188C3DF9C(a1 + 16, v29);
  sub_188C3DF9C(a1 + 16, v27);
  v7 = swift_allocObject();
  v8 = v27[3];
  *(v7 + 48) = v27[2];
  *(v7 + 64) = v8;
  *(v7 + 80) = v28[0];
  *(v7 + 89) = *(v28 + 9);
  v9 = v27[1];
  *(v7 + 16) = v27[0];
  *(v7 + 32) = v9;
  *(v7 + 112) = signpost_c2_entryLock_start;
  *(v7 + 120) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = v10;
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_188E5C7F8;
  *(v13 + 24) = v6;
  *&v24 = sub_188E3FE50;
  *(&v24 + 1) = v13;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v23 = sub_188A4A968;
  *(&v23 + 1) = &block_descriptor_287;
  v14 = _Block_copy(&aBlock);

  sub_188C3DFF8(v29, &aBlock);
  v15 = swift_allocObject();
  v16 = v25;
  *(v15 + 56) = v24;
  *(v15 + 72) = v16;
  *(v15 + 88) = v26[0];
  *(v15 + 97) = *(v26 + 9);
  v17 = v23;
  *(v15 + 24) = aBlock;
  *(v15 + 16) = v10;
  *(v15 + 40) = v17;
  *(v15 + 113) = 0;
  *(v15 + 120) = sub_188E5C7FC;
  *(v15 + 128) = v7;
  v21[4] = sub_1891953A4;
  v21[5] = v15;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_188A4A8F0;
  v21[3] = &block_descriptor_294;
  v18 = _Block_copy(v21);

  *&v24 = sub_188E5C82C;
  *(&v24 + 1) = v11;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v23 = sub_188ABD010;
  *(&v23 + 1) = &block_descriptor_297_0;
  v19 = _Block_copy(&aBlock);

  [v12 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v19);
  _Block_release(v18);
  _Block_release(v14);

  sub_188C3E234(v29);

  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_18918F2B4(void *a1, char a2)
{
  [a1 setAlpha_];
  if ((a2 & 1) == 0)
  {
    type metadata accessor for NavigationBarPlatterContainer.Settings();
    sub_18A4A4A68();
    v4 = [a1 layer];
    v5 = sub_18A4A2D28();
    v6 = sub_18A4A7258();
    [v4 setValue:v5 forKeyPath:v6];
  }
}

uint64_t sub_18918F3B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_18A4A5FA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37[-1] - v10;
  v12 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v12);
  v13 = *(v6 + 8);
  v13(v8, v5);
  sub_18A4A5F78();
  v14 = sub_188C449C0(v11, v47);
  (v13)(v11, v5, v14);
  sub_188C45F1C(a3, v46);
  v15 = swift_allocObject();
  v16 = v46[9];
  *(v15 + 152) = v46[8];
  *(v15 + 168) = v16;
  v17 = v46[11];
  *(v15 + 184) = v46[10];
  *(v15 + 200) = v17;
  v18 = v46[5];
  *(v15 + 88) = v46[4];
  *(v15 + 104) = v18;
  v19 = v46[7];
  *(v15 + 120) = v46[6];
  *(v15 + 136) = v19;
  v20 = v46[1];
  *(v15 + 24) = v46[0];
  *(v15 + 40) = v20;
  v21 = v46[3];
  *(v15 + 56) = v46[2];
  *(v15 + 16) = a2;
  *(v15 + 72) = v21;
  sub_188C3DF9C(v47, v45);
  sub_188C3DF9C(v47, v43);
  v22 = swift_allocObject();
  v23 = v43[3];
  *(v22 + 48) = v43[2];
  *(v22 + 64) = v23;
  *(v22 + 80) = v44[0];
  *(v22 + 89) = *(v44 + 9);
  v24 = v43[1];
  *(v22 + 16) = v43[0];
  *(v22 + 32) = v24;
  *(v22 + 112) = signpost_c2_entryLock_start;
  *(v22 + 120) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = swift_allocObject();
  v26[3] = 0;
  v26[4] = 0;
  v26[2] = v25;
  v36 = objc_opt_self();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1891953B0;
  *(v27 + 24) = v15;
  *&v40 = sub_188E3FE50;
  *(&v40 + 1) = v27;
  *&v38 = MEMORY[0x1E69E9820];
  *(&v38 + 1) = 1107296256;
  *&v39 = sub_188A4A968;
  *(&v39 + 1) = &block_descriptor_257;
  v28 = _Block_copy(&v38);
  v29 = a2;

  sub_188C3DFF8(v45, &v38);
  v30 = swift_allocObject();
  v31 = v41;
  *(v30 + 56) = v40;
  *(v30 + 72) = v31;
  *(v30 + 88) = v42[0];
  *(v30 + 97) = *(v42 + 9);
  v32 = v39;
  *(v30 + 24) = v38;
  *(v30 + 16) = v25;
  *(v30 + 40) = v32;
  *(v30 + 113) = 0;
  *(v30 + 120) = sub_188E5C7FC;
  *(v30 + 128) = v22;
  v37[4] = sub_1891953A4;
  v37[5] = v30;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 1107296256;
  v37[2] = sub_188A4A8F0;
  v37[3] = &block_descriptor_264;
  v33 = _Block_copy(v37);

  *&v40 = sub_188E5C82C;
  *(&v40 + 1) = v26;
  *&v38 = MEMORY[0x1E69E9820];
  *(&v38 + 1) = 1107296256;
  *&v39 = sub_188ABD010;
  *(&v39 + 1) = &block_descriptor_267;
  v34 = _Block_copy(&v38);

  [v36 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v34);
  _Block_release(v33);
  _Block_release(v28);

  sub_188C3E234(v45);

  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    return sub_188AAFF20(v47);
  }

  __break(1u);
  return result;
}

void sub_18918F92C(void *a1, uint64_t a2)
{
  [a1 setAlpha_];
  v3 = [a1 layer];
  v4 = sub_18A4A2D28();
  v5 = sub_18A4A7258();
  [v3 setValue:v4 forKeyPath:v5];
}

id sub_18918F9E0(void *a1, uint64_t a2)
{
  [a1 removeFromSuperview];
  v3 = *(a2 + OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer);
  v4 = [v3 subviews];
  sub_188A34624(0, &qword_1ED48F680);
  v5 = sub_18A4A7548();

  if (v5 >> 62)
  {
    v6 = sub_18A4A7F68();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {

    return [v3 removeFromSuperview];
  }

  return result;
}

id sub_18918FAC4(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  [a1 bounds];
  [a1 setBounds_];
  swift_beginAccess();
  [a1 setCenter_];
  [a1 setAlpha_];
  return [a1 layoutIfNeeded];
}

void *sub_18918FC1C(__int128 *a1)
{
  ObjectType = swift_getObjectType();
  v4 = a1[7];
  v39 = a1[6];
  v40 = v4;
  v5 = a1[9];
  v41 = a1[8];
  v42 = v5;
  v6 = a1[3];
  v35 = a1[2];
  v36 = v6;
  v7 = a1[5];
  v37 = a1[4];
  v38 = v7;
  v8 = a1[1];
  v33 = *a1;
  v34 = v8;
  v9 = OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;
  type metadata accessor for NavigationBarPlatterContainer.AnimationScheduler();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = sub_188E8D690(MEMORY[0x1E69E7CC0]);
  *&v1[v9] = v10;
  v11 = &v1[OBJC_IVAR____UINavigationBarPlatterItemView_item];
  v12 = a1[7];
  *(v11 + 6) = a1[6];
  *(v11 + 7) = v12;
  v13 = a1[9];
  *(v11 + 8) = a1[8];
  *(v11 + 9) = v13;
  v14 = a1[3];
  *(v11 + 2) = a1[2];
  *(v11 + 3) = v14;
  v15 = a1[5];
  *(v11 + 4) = a1[4];
  *(v11 + 5) = v15;
  v16 = a1[1];
  *v11 = *a1;
  *(v11 + 1) = v16;
  v17 = *(&v34 + 1);
  v19 = v35;
  v18 = *&v36;
  sub_188C464C4(&v33, v32);
  v31.receiver = v1;
  v31.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v31, sel_initWithFrame_, v17, v19, v18);
  v21 = v20;
  v22 = v33;
  if (v34)
  {
    v23 = v20;
    sub_188C468DC(v22, *(&v22 + 1), 1);
    sub_188C46888(&v33);
  }

  else
  {
    v24 = v20;
    sub_188C468DC(v22, *(&v22 + 1), 0);
    sub_188C46888(&v33);
  }

  [v21 addSubview_];

  v25 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v26 = [v21 layer];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_18A64BFB0;
  *(v27 + 56) = sub_188A34624(0, &qword_1ED48EE50);
  *(v27 + 32) = v25;
  v28 = v25;
  v29 = sub_18A4A7518();

  [v26 setFilters_];

  return v21;
}

id sub_18918FF38()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = OBJC_IVAR____UINavigationBarPlatterItemView_item;
  v2 = *&v0[OBJC_IVAR____UINavigationBarPlatterItemView_item];
  [v0 bounds];
  [v2 setFrame_];

  v3 = *&v0[v1];
  [v0 hitTestInsets];
  [v3 setHitTestInsets_];

  v4 = [v0 traitCollection];
  v5 = [v4 _containedInBarBackgroundMaterial];

  return [v0 setClipsToBounds_];
}

void sub_189190074(void *a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_188C468DC(*a2, v4, v6);
  sub_188C468DC(v5, v4, v6);
  sub_188C468DC(v5, v4, v6);
  v8 = v5;
  [a1 addSubview_];

  if (v6 == 1)
  {

    [v8 setBounds_];
  }

  else
  {
    [v8 setBounds_];
  }

  [a1 bounds];
  MidX = CGRectGetMidX(v10);
  [a1 bounds];
  [v8 setCenter_];

  if (v6)
  {
  }

  [v8 layoutIfNeeded];
}

id sub_1891902A4(uint64_t a1, double a2, double a3)
{
  v15.receiver = v3;
  v15.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v15, sel_hitTest_withEvent_, a1, a2, a3);
  if (!v7)
  {
    v8 = [v3 subviews];
    sub_188A34624(0, &qword_1ED48F680);
    v9 = sub_18A4A7548();

    if (v9 >> 62)
    {
LABEL_17:
      v10 = sub_18A4A7F68();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v10 != i; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = sub_188E49300(i, v9);
      }

      else
      {
        if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v12 = *(v9 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = [v12 hitTest:a1 withEvent:{a2, a3}];

      if (v7)
      {

        return v7;
      }
    }

    return 0;
  }

  return v7;
}

unint64_t sub_1891904D4()
{
  ObjectType = swift_getObjectType();
  sub_18A4A80E8();

  v10 = 0xD000000000000017;
  v11 = 0x800000018A6AE4B0;
  v2 = *&v0[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  v3 = *&v0[OBJC_IVAR____UINavigationBarPlatterAnimationView_name + 8];

  MEMORY[0x18CFE22D0](v2, v3);

  MEMORY[0x18CFE22D0](2112034, 0xE300000000000000);
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v9, sel_description);
  v5 = sub_18A4A7288();
  v7 = v6;

  v10 = 0xD000000000000017;
  v11 = 0x800000018A6AE4B0;

  MEMORY[0x18CFE22D0](v5, v7);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);

  return v10;
}

id sub_1891907F0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____UINavigationBarPlatterSubviewContainerView_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = *MEMORY[0x1E6979928];
  v9 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v10 = v7;
  v11 = [v9 initWithType_];
  v12 = [v10 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18A64BFB0;
  *(v13 + 56) = sub_188A34624(0, &qword_1ED48EE50);
  *(v13 + 32) = v11;
  v14 = v11;
  v15 = sub_18A4A7518();

  [v12 setFilters_];

  return v10;
}

id sub_1891909D8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_18A4A7258();

  return v5;
}

unint64_t sub_189190A48()
{
  ObjectType = swift_getObjectType();
  sub_18A4A80E8();

  v8 = 0xD000000000000017;
  v9 = 0x800000018A6AE430;
  MEMORY[0x18CFE22D0](*&v0[OBJC_IVAR____UINavigationBarPlatterSubviewContainerView_name], *&v0[OBJC_IVAR____UINavigationBarPlatterSubviewContainerView_name + 8]);
  MEMORY[0x18CFE22D0](2112034, 0xE300000000000000);
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = sub_18A4A7288();
  v5 = v4;

  v8 = 0xD000000000000017;
  v9 = 0x800000018A6AE430;

  MEMORY[0x18CFE22D0](v3, v5);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);

  return v8;
}

unint64_t sub_189190E1C()
{
  result = qword_1EA93F028;
  if (!qword_1EA93F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F028);
  }

  return result;
}

unint64_t sub_189190E74()
{
  result = qword_1EA93F030;
  if (!qword_1EA93F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F030);
  }

  return result;
}

uint64_t sub_189190EC8(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v53[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v53[0] = a1;
    v44 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v35 = a1;
      v3 = sub_18A4A7F68();
      a1 = v35;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = a1;

    if (v3)
    {
      v4 = 0;
      v50 = v49 & 0xC000000000000001;
      v48 = v49 & 0xFFFFFFFFFFFFFF8;
      v46 = v49 + 32;
      v52 = (v2 + 56);
      while (1)
      {
        if (v50)
        {
          a1 = sub_188E498AC(v4, v49);
        }

        else
        {
          if (v4 >= *(v48 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v46 + 8 * v4);
        }

        v51 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = sub_18A4A7C78();
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v11 = ~v7;
      type metadata accessor for PlatterItemView();
      while (1)
      {
        v12 = *(*(v2 + 48) + 8 * v8);
        v13 = sub_18A4A7C88();

        if (v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v53[1] = v4;

      v15 = *(v2 + 32);
      v16 = v15 & 0x3F;
      v17 = ((1 << v15) + 63) >> 6;
      v42 = v17;
      if (v16 <= 0xD)
      {
LABEL_19:
        v43 = &v41;
        MEMORY[0x1EEE9AC00](v14);
        v19 = &v41 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v19, v52, v18);
        v20 = *(v2 + 16);
        v21 = *&v19[8 * v9] & ~v10;
        v47 = v19;
        *&v19[8 * v9] = v21;
        v45 = v20 - 1;
        if (v44)
        {
          a1 = sub_18A4A7F68();
          v51 = a1;
        }

        else
        {
          v51 = *(v48 + 16);
        }

        while (1)
        {
          if (v4 == v51)
          {
            v2 = sub_189192ABC(v47, v42, v45, v2);
            goto LABEL_40;
          }

          if (v50)
          {
            a1 = sub_188E498AC(v4, v49);
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v48 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v46 + 8 * v4);
          }

          v22 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v23 = sub_18A4A7C78();
          v24 = v2;
          v25 = -1 << *(v2 + 32);
          v26 = v23 & ~v25;
          v27 = v26 >> 6;
          v28 = 1 << v26;
          if (((1 << v26) & v52[v26 >> 6]) != 0)
          {
            v29 = ~v25;
            while (1)
            {
              v30 = *(*(v24 + 48) + 8 * v26);
              v31 = sub_18A4A7C88();

              if (v31)
              {
                break;
              }

              v26 = (v26 + 1) & v29;
              v27 = v26 >> 6;
              v28 = 1 << v26;
              if (((1 << v26) & v52[v26 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v32 = v47[v27];
            v47[v27] = v32 & ~v28;
            v2 = v24;
            if ((v32 & v28) != 0)
            {
              v33 = v45 - 1;
              if (__OFSUB__(v45, 1))
              {
                __break(1u);
              }

              --v45;
              if (!v33)
              {

                v2 = MEMORY[0x1E69E7CD0];
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:

            v2 = v24;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v36 = 8 * v17;

      v37 = v2;
      v38 = v36;
      if (swift_stdlib_isStackAllocationSafe())
      {

        v2 = v37;
        goto LABEL_19;
      }

      v39 = swift_slowAlloc();
      memcpy(v39, v52, v38);
      sub_189193300(v39, v42, v37, v8, v53);
      v2 = v40;

      MEMORY[0x18CFEA5B0](v39, -1, -1);
    }

LABEL_40:
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_189191398(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C130);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v65 - v9);
  v11 = sub_18A4A2B48();
  MEMORY[0x1EEE9AC00](v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v65 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_188A3F5FC(v30, &unk_1EA93C130);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_1891952B0(&qword_1EA92F720, MEMORY[0x1E6969C28]);
    v32 = sub_18A4A7198();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_1891952B0(&qword_1EA92F710, MEMORY[0x1E6969C28]);
    v36 = sub_18A4A7248();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_188A3F5FC(v24, &unk_1EA93C130);
        a2 = sub_189192CB0(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_18A4A7198();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_18A4A7248();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_18A4A7248();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_189193530(v63, v65, v80, v24, &v89);
  a2 = v64;

  MEMORY[0x18CFEA5B0](v63, -1, -1);
LABEL_52:
  sub_188E036A4();
  return a2;
}

uint64_t sub_189191DFC(uint64_t a1, uint64_t a2)
{
  v118 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F060);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v86 - v9;
  v101 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  MEMORY[0x1EEE9AC00](v101);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v86 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v86 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v86 - v20;
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v87 = v10;
  v91 = v7;
  v86 = 0;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v100 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v21;
  v92 = (63 - v23) >> 6;
  v99 = (v19 + 56);
  v88 = v19;
  v98 = (v19 + 48);
  v106 = (a2 + 56);

  v27 = 0;
  v97 = a1;
  v96 = a1 + 56;
  while (1)
  {
    v28 = v25;
    v29 = v27;
    v105 = v25;
    if (v25)
    {
LABEL_15:
      v33 = (v28 - 1) & v28;
      v34 = v87;
      sub_189195180(*(a1 + 48) + v88[9] * (__clz(__rbit64(v28)) | (v29 << 6)), v87, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      v35 = 0;
      v31 = v29;
    }

    else
    {
      v30 = v92 <= v27 + 1 ? v27 + 1 : v92;
      v31 = v30 - 1;
      v32 = v27;
      while (1)
      {
        v29 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_67;
        }

        if (v29 >= v92)
        {
          break;
        }

        v28 = *(v22 + 8 * v29);
        ++v32;
        if (v28)
        {
          goto LABEL_15;
        }
      }

      v33 = 0;
      v35 = 1;
      v34 = v87;
    }

    v36 = v101;
    v95 = *v99;
    v95(v34, v35, 1, v101);
    v113 = a1;
    v114 = v22;
    v115 = v100;
    v116 = v31;
    v117 = v33;
    v94 = *v98;
    if (v94(v34, 1, v36) == 1)
    {
      sub_188A3F5FC(v34, &qword_1EA93F060);
      goto LABEL_63;
    }

    v103 = v33;
    v37 = v89;
    sub_1891951E8(v34, v89, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    sub_18A4A8888();
    v104 = *(v37 + 32);
    sub_18A4A7C98();
    v111 = 0;
    v112 = 0xE000000000000000;
    v38 = *v37;
    v39 = *(v37 + 8);
    v40 = *(v37 + 16);
    v41 = *(v37 + 24);
    v107 = *v37;
    v108 = v39;
    v109 = v40;
    v110 = v41;
    type metadata accessor for CGRect(0);
    v93 = v42;
    sub_18A4A82D8();
    sub_18A4A7348();

    v43 = *(v37 + 40);
    v90 = *(v37 + 48);
    sub_18A4A7348();
    v44 = sub_18A4A88E8();
    v45 = -1 << *(a2 + 32);
    v25 = v44 & ~v45;
    v2 = v25 >> 6;
    v29 = 1 << v25;
    if (((1 << v25) & v106[v25 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_189195250(v89, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    v27 = v31;
    v25 = v103;
    v22 = v96;
    a1 = v97;
  }

  v46 = ~v45;
  v105 = v88[9];
  while (1)
  {
    sub_189195180(*(a2 + 48) + v105 * v25, v17, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    v119.origin.x = v38;
    v119.origin.y = v39;
    v119.size.width = v40;
    v119.size.height = v41;
    if (!CGRectEqualToRect(*v17, v119) || ![v17[4] isEqualToTextRange_])
    {
      sub_189195250(v17, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      goto LABEL_20;
    }

    if (v17[5] == v43 && v17[6] == v90)
    {
      break;
    }

    v47 = sub_18A4A86C8();
    sub_189195250(v17, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    if (v47)
    {
      goto LABEL_30;
    }

LABEL_20:
    v25 = (v25 + 1) & v46;
    v2 = v25 >> 6;
    v29 = 1 << v25;
    if ((v106[v25 >> 6] & (1 << v25)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_189195250(v17, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
LABEL_30:
  v48 = sub_189195250(v89, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
  v49 = *(a2 + 32);
  v87 = ((1 << v49) + 63) >> 6;
  v26 = 8 * v87;
  v27 = v91;
  a1 = v97;
  if ((v49 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v88 = &v86;
    MEMORY[0x1EEE9AC00](v48);
    v51 = &v86 - ((v50 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v51, v106, v50);
    v52 = *(a2 + 16);
    v53 = *&v51[8 * v2] & ~v29;
    v90 = v51;
    *&v51[8 * v2] = v53;
    v54 = v52 - 1;
    v25 = v96;
    v55 = v92;
    v56 = v103;
LABEL_32:
    v89 = v54;
LABEL_34:
    while (2)
    {
      if (v56)
      {
        v57 = v31;
LABEL_44:
        v60 = __clz(__rbit64(v56));
        v61 = (v56 - 1) & v56;
        sub_189195180(*(a1 + 48) + (v60 | (v57 << 6)) * v105, v27, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        v62 = 0;
LABEL_45:
        v63 = v101;
        v95(v27, v62, 1, v101);
        v113 = a1;
        v114 = v25;
        v115 = v100;
        v116 = v31;
        v117 = v61;
        if (v94(v27, 1, v63) == 1)
        {
          sub_188A3F5FC(v27, &qword_1EA93F060);
          a2 = sub_189192FD8(v90, v87, v89, a2);
          goto LABEL_63;
        }

        v103 = v61;
        v64 = v102;
        sub_1891951E8(v27, v102, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        sub_18A4A8888();
        v65 = *(v64 + 32);
        sub_18A4A7C98();
        v111 = 0;
        v112 = 0xE000000000000000;
        v66 = *v64;
        v67 = *(v64 + 8);
        v68 = *(v64 + 16);
        v69 = *(v64 + 24);
        v107 = *v64;
        v108 = v67;
        v109 = v68;
        v110 = v69;
        sub_18A4A82D8();
        sub_18A4A7348();

        v2 = *(v64 + 40);
        v104 = *(v64 + 48);
        sub_18A4A7348();
        v70 = sub_18A4A88E8();
        v71 = a2;
        v72 = -1 << *(a2 + 32);
        v73 = v70 & ~v72;
        v29 = v73 >> 6;
        v74 = 1 << v73;
        if (((1 << v73) & v106[v73 >> 6]) == 0)
        {
LABEL_33:
          sub_189195250(v102, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
          a2 = v71;
          a1 = v97;
          v27 = v91;
          v25 = v96;
          v55 = v92;
          v56 = v103;
          continue;
        }

        v75 = ~v72;
        while (1)
        {
          sub_189195180(*(v71 + 48) + v73 * v105, v12, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
          v120.origin.x = v66;
          v120.origin.y = v67;
          v120.size.width = v68;
          v120.size.height = v69;
          if (CGRectEqualToRect(*v12, v120) && [*(v12 + 4) isEqualToTextRange_])
          {
            if (*(v12 + 5) == v2 && *(v12 + 6) == v104)
            {
              sub_189195250(v12, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
LABEL_58:
              sub_189195250(v102, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
              v77 = v90[v29];
              v90[v29] = v77 & ~v74;
              v78 = (v77 & v74) == 0;
              a2 = v71;
              a1 = v97;
              v27 = v91;
              v25 = v96;
              v55 = v92;
              v56 = v103;
              if (!v78)
              {
                v54 = v89 - 1;
                if (__OFSUB__(v89, 1))
                {
                  __break(1u);
                }

                if (v89 == 1)
                {

                  a2 = MEMORY[0x1E69E7CD0];
                  goto LABEL_63;
                }

                goto LABEL_32;
              }

              goto LABEL_34;
            }

            v76 = sub_18A4A86C8();
            sub_189195250(v12, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
            if (v76)
            {
              goto LABEL_58;
            }
          }

          else
          {
            sub_189195250(v12, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
          }

          v73 = (v73 + 1) & v75;
          v29 = v73 >> 6;
          v74 = 1 << v73;
          if ((v106[v73 >> 6] & (1 << v73)) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      break;
    }

    v58 = v55 <= v31 + 1 ? v31 + 1 : v55;
    v59 = v58 - 1;
    while (1)
    {
      v57 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v57 >= v55)
      {
        v61 = 0;
        v62 = 1;
        v31 = v59;
        goto LABEL_45;
      }

      v56 = *(v25 + 8 * v57);
      ++v31;
      if (v56)
      {
        v31 = v57;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v80 = v26;

    v81 = v80;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v82 = swift_slowAlloc();
  memcpy(v82, v106, v81);
  v83 = v86;
  sub_189193A04(v82, v87, a2, v25, &v113);
  v85 = v84;

  if (v83)
  {

    result = MEMORY[0x18CFEA5B0](v82, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x18CFEA5B0](v82, -1, -1);
    a2 = v85;
LABEL_63:
    sub_188E036A4();
    return a2;
  }

  return result;
}

uint64_t sub_189192ABC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A00);
  result = sub_18A4A8088();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_18A4A7C78();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_189192CB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_18A4A2B48();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A68);
  result = sub_18A4A8088();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1891952B0(&qword_1EA92F720, MEMORY[0x1E6969C28]);
    result = sub_18A4A7198();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_189192FD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A60);
  result = sub_18A4A8088();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_189195180(v19 + v20 * (v16 | (v14 << 6)), v10, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    sub_18A4A8888();
    sub_18A4A7C98();
    v35 = 0;
    v36 = 0xE000000000000000;
    v21 = v10[1];
    v33 = *v10;
    v34 = v21;
    type metadata accessor for CGRect(0);
    sub_18A4A82D8();
    sub_18A4A7348();

    sub_18A4A7348();
    result = sub_18A4A88E8();
    v22 = -1 << *(v11 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v15 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = sub_1891951E8(v10, *(v11 + 48) + v25 * v20, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_189193300(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v29 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = sub_18A4A7F68();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          sub_189192ABC(a1, a2, v26, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = sub_188E498AC(v5[1], v11);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v12 = *(v11 + 8 * v10 + 32);
        }

        v13 = v12;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }

        v5[1] = v10 + 1;
        v14 = sub_18A4A7C78();
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      type metadata accessor for PlatterItemView();
      v19 = *(*(a3 + 48) + 8 * v16);
      v20 = sub_18A4A7C88();

      if ((v20 & 1) == 0)
      {
        v21 = ~v15;
        do
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = sub_18A4A7C88();
        }

        while ((v23 & 1) == 0);
      }

      v5 = a5;

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_28;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_189193530(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C130);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_18A4A2B48();
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_188A3F5FC(v11, &unk_1EA93C130);
          v45 = v61;

          sub_189192CB0(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1891952B0(&qword_1EA92F720, MEMORY[0x1E6969C28]);
        v35 = sub_18A4A7198();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1891952B0(&qword_1EA92F710, MEMORY[0x1E6969C28]);
        v43 = sub_18A4A7248();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_189193A04(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v52 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F060);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v51 - v10;
  v59 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  MEMORY[0x1EEE9AC00](v59);
  v13 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v51 - v15;
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v54 = a1;
  *(a1 + v17) = v18;
  v19 = v16 - 1;
  v58 = (v20 + 56);
  v60 = v20;
  v57 = (v20 + 48);
  v70 = a3;
  v63 = a3 + 56;
  v56 = a5;
  v55 = v11;
  do
  {
    v53 = v19;
    do
    {
      while (1)
      {
        v21 = *a5;
        v22 = a5[1];
        v24 = a5[2];
        v23 = a5[3];
        v25 = a5[4];
        if (!v25)
        {
          v27 = (v24 + 64) >> 6;
          if (v27 <= v23 + 1)
          {
            v28 = v23 + 1;
          }

          else
          {
            v28 = (v24 + 64) >> 6;
          }

          v29 = v28 - 1;
          while (1)
          {
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v26 >= v27)
            {
              v30 = 0;
              v31 = 1;
              goto LABEL_14;
            }

            v25 = *(v22 + 8 * v26);
            ++v23;
            if (v25)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        v26 = a5[3];
LABEL_13:
        v30 = (v25 - 1) & v25;
        sub_189195180(*(v21 + 48) + *(v60 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        v31 = 0;
        v29 = v26;
LABEL_14:
        v32 = v59;
        (*v58)(v11, v31, 1, v59);
        *a5 = v21;
        a5[1] = v22;
        a5[2] = v24;
        a5[3] = v29;
        a5[4] = v30;
        if ((*v57)(v11, 1, v32) == 1)
        {
          sub_188A3F5FC(v11, &qword_1EA93F060);
          v50 = v70;

          sub_189192FD8(v54, v52, v53, v50);
          return;
        }

        v33 = v61;
        sub_1891951E8(v11, v61, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        v34 = v70;
        sub_18A4A8888();
        v35 = *(v33 + 32);
        sub_18A4A7C98();
        v68 = 0;
        v69 = 0xE000000000000000;
        v36 = *v33;
        v37 = *(v33 + 8);
        v38 = *(v33 + 16);
        v39 = *(v33 + 24);
        v64 = *v33;
        v65 = v37;
        v66 = v38;
        v67 = v39;
        type metadata accessor for CGRect(0);
        sub_18A4A82D8();
        sub_18A4A7348();

        v40 = *(v33 + 40);
        v62 = *(v33 + 48);
        sub_18A4A7348();
        v41 = sub_18A4A88E8();
        v42 = -1 << *(v34 + 32);
        v43 = v41 & ~v42;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if (((1 << v43) & *(v63 + 8 * (v43 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_189195250(v61, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        a5 = v56;
        v11 = v55;
      }

      v46 = ~v42;
      v47 = *(v60 + 72);
      while (1)
      {
        sub_189195180(*(v70 + 48) + v47 * v43, v13, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        v71.origin.x = v36;
        v71.origin.y = v37;
        v71.size.width = v38;
        v71.size.height = v39;
        if (!CGRectEqualToRect(*v13, v71) || ![v13[4] isEqualToTextRange_])
        {
          sub_189195250(v13, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
          goto LABEL_18;
        }

        if (v13[5] == v40 && v13[6] == v62)
        {
          break;
        }

        v48 = sub_18A4A86C8();
        sub_189195250(v13, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        if (v48)
        {
          goto LABEL_27;
        }

LABEL_18:
        v43 = (v43 + 1) & v46;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if ((*(v63 + 8 * (v43 >> 6)) & (1 << v43)) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_189195250(v13, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
LABEL_27:
      sub_189195250(v61, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      v49 = v54[v44];
      v54[v44] = v49 & ~v45;
      a5 = v56;
      v11 = v55;
    }

    while ((v49 & v45) == 0);
    v19 = v53 - 1;
    if (__OFSUB__(v53, 1))
    {
      goto LABEL_33;
    }
  }

  while (v53 != 1);
}

void sub_189193FE0()
{
  v1 = sub_18A4A29D8();
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____UINavigationBarPlatterView_translationKick;
  v5 = _s11PlatterViewC13AnimationViewCMa();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v7 = 0x74616C736E617274;
  *(v7 + 1) = 0xEB000000006E6F69;
  v43.receiver = v6;
  v43.super_class = v5;
  v8 = objc_msgSendSuper2(&v43, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v8 _setIgnoresLayerTransformForSafeAreaInsets_];
  *(v0 + v4) = v8;
  v9 = OBJC_IVAR____UINavigationBarPlatterView_scaleOffset;
  v10 = objc_allocWithZone(v5);
  v11 = &v10[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v11 = 0x66664F656C616373;
  *(v11 + 1) = 0xEB00000000746573;
  v42.receiver = v10;
  v42.super_class = v5;
  v12 = objc_msgSendSuper2(&v42, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v12 _setIgnoresLayerTransformForSafeAreaInsets_];
  *(v0 + v9) = v12;
  v13 = OBJC_IVAR____UINavigationBarPlatterView_transformViewA;
  v14 = objc_allocWithZone(v5);
  v15 = &v14[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v15 = 0x726F66736E617274;
  *(v15 + 1) = 0xEA0000000000416DLL;
  v41.receiver = v14;
  v41.super_class = v5;
  v16 = objc_msgSendSuper2(&v41, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v16 _setIgnoresLayerTransformForSafeAreaInsets_];
  *(v0 + v13) = v16;
  v17 = OBJC_IVAR____UINavigationBarPlatterView_transformViewB;
  v18 = objc_allocWithZone(v5);
  v19 = &v18[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v19 = 0x726F66736E617274;
  *(v19 + 1) = 0xEA0000000000426DLL;
  v40.receiver = v18;
  v40.super_class = v5;
  v20 = objc_msgSendSuper2(&v40, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v20 _setIgnoresLayerTransformForSafeAreaInsets_];
  *(v0 + v17) = v20;
  v21 = OBJC_IVAR____UINavigationBarPlatterView_contentView;
  _s11PlatterViewC18PlatterContentViewCMa();
  *(v0 + v21) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____UINavigationBarPlatterView_scalePulseScheduler;
  type metadata accessor for NavigationBarPlatterContainer.AnimationScheduler();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = MEMORY[0x1E69E7CC0];
  *(v23 + 24) = sub_188E8D690(MEMORY[0x1E69E7CC0]);
  *(v0 + v22) = v23;
  v25 = OBJC_IVAR____UINavigationBarPlatterView_translationKickScheduler;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = sub_188E8D690(v24);
  *(v0 + v25) = v26;
  v27 = OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = sub_188E8D690(v24);
  *(v0 + v27) = v28;
  *(v0 + OBJC_IVAR____UINavigationBarPlatterView_mode) = 0;
  *(v28 + 24) = v29;
  v30 = v0 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties;
  *v30 = xmmword_18A64C520;
  *(v30 + 16) = 0;
  *(v0 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) = 0;
  v31 = (v0 + OBJC_IVAR____UINavigationBarPlatterView_pointerAssistantID);
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_18A4A80E8();

  v38 = 0xD00000000000002DLL;
  v39 = 0x800000018A6AE4F0;
  sub_18A4A29C8();
  v32 = sub_18A4A2988();
  v34 = v33;
  (*(v36 + 8))(v3, v37);
  MEMORY[0x18CFE22D0](v32, v34);

  v35 = v39;
  *v31 = v38;
  v31[1] = v35;
  sub_18A4A8398();
  __break(1u);
}

void sub_18919440C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____UINavigationBarPlatterContentView_itemViews) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____UINavigationBarPlatterContentView_badgeViews) = MEMORY[0x1E69E7CC8];
  v2 = OBJC_IVAR____UINavigationBarPlatterContentView_glassView;
  _s11PlatterViewC16PlatterGlassViewCMa();
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer;
  v4 = _s11PlatterViewC20SubviewContainerViewCMa();
  v5 = objc_allocWithZone(v4);
  *(v1 + v3) = sub_1891907F0(0x736D657449, 0xE500000000000000);
  v6 = OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer;
  v7 = objc_allocWithZone(v4);
  *(v1 + v6) = sub_1891907F0(0x736567646142, 0xE600000000000000);
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_189194524(void *a1, uint64_t a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v6 = result;
    v7 = a1;
    [v6 request:a2 locationInView:v2];
    v8 = [v2 hitTest:0 withEvent:?];
    if (!v8)
    {
LABEL_5:

      return 0;
    }

    v9 = v8;
    sub_188A34624(0, &qword_1ED48F680);
    v10 = v9;
    v11 = v2;
    v12 = sub_18A4A7C88();

    if (v12)
    {

      goto LABEL_5;
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13 || ([v13 isEnabled] & 1) != 0)
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        [v14 _buttonBarHitRect];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        sub_188A34624(0, &qword_1ED48F7A0);
        v24 = sub_18A4A7CB8();
        v25 = [v6 createRegionFromRect:v15 targetView:v24 identifier:objc_msgSend(v15 selected:{sel_isSelected), v17, v19, v21, v23}];
LABEL_14:
        v36 = v25;

        return v36;
      }

      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v27 = v26;
        [v26 bounds];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        sub_188A34624(0, &qword_1ED48F7A0);
        v24 = sub_18A4A7CB8();
        v25 = [v6 createRegionFromRect:v27 targetView:v24 identifier:objc_msgSend(v27 selected:{sel_isSelected), v29, v31, v33, v35}];
        goto LABEL_14;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1891947DC()
{
  v1 = *(sub_18A4A5FA8() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_18918AFAC(v0 + v2, v5, v3, v4);
}

id sub_18919486C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v7[0] = *(v0 + 24);
  v7[1] = v2;
  v3 = *(v0 + 72);
  v7[2] = *(v0 + 56);
  v7[3] = v3;
  v4 = *(v0 + 136);
  v7[6] = *(v0 + 120);
  v7[7] = v4;
  v5 = *(v0 + 104);
  v7[4] = *(v0 + 88);
  v7[5] = v5;
  return [*(v1 + OBJC_IVAR____UINavigationBarPlatterView_translationKick) setTransform3D_];
}

uint64_t sub_1891948E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18919496C()
{
  v1 = *(type metadata accessor for NavigationBarPlatterContainer.Settings() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);

  return sub_18918F3B4(v0 + v2, v4, v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_189194A24()
{
  v1 = *(type metadata accessor for NavigationBarPlatterContainer.Settings() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_18918E7D0(v0 + v2, v4, v5);
}

uint64_t objectdestroy_88Tm()
{
  v1 = (type metadata accessor for NavigationBarPlatterContainer.Settings() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_18A4A4BE8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_18A4A4A88();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  v9 = sub_18A4A4B78();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[9];
  v11 = sub_18A4A4C78();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

double sub_189194CC4(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
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

uint64_t objectdestroy_312Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_362Tm()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 120);

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

id sub_189194E20(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

uint64_t objectdestroy_382Tm()
{
  v1 = sub_18A4A5FA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_189194EF8()
{
  sub_18A4A5FA8();
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = v0[4];

  sub_18918D1A0(v1, v2, v3);
}

id sub_189194FBC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____UINavigationBarPlatterView_scaleOffset);
  [v1 transform3D];
  v3[4] = v11;
  v3[5] = v12;
  v3[0] = v7;
  v3[1] = v8;
  v3[2] = v9;
  v3[3] = v10;
  v6 = v14;
  v4 = v13;
  v5 = 0;
  return [v1 setTransform3D_];
}

id sub_189195054()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____UINavigationBarPlatterView_scaleOffset);
  [v1 transform3D];
  v3[2] = v9;
  v3[3] = v10;
  v3[4] = v11;
  v3[5] = v12;
  v3[0] = v7;
  v3[1] = v8;
  v5 = v13;
  v6 = v14;
  v4 = 0;
  return [v1 setTransform3D_];
}

id sub_189195108()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v10[2] = v2[2];
  v10[3] = v5;
  v10[0] = v3;
  v10[1] = v4;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[7];
  v10[6] = v2[6];
  v10[7] = v8;
  v10[4] = v6;
  v10[5] = v7;
  return [v1 setTransform3D_];
}

uint64_t sub_189195180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1891951E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_189195250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1891952B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_189195464(char *a1)
{
  v2 = v1;
  v4 = sub_18A4A2D68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_state;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(&v28 - v7, v2 + v8, v4);
  swift_beginAccess();
  v10 = *(v5 + 24);
  v32 = a1;
  v10(v2 + v8, a1, v4);
  v11 = swift_endAccess();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v29 = v9;
  v30 = v7;
  v13 = &v28 - v7;
  (v9)(&v28 - v7, v2 + v8, v4, v12);
  sub_1891964A0();
  v31 = &v28 - v7;
  v14 = sub_18A4A7248();
  v15 = *(v5 + 8);
  v16 = v15(v13, v4);
  if ((v14 & 1) == 0)
  {
    v28 = &v28;
    v17 = MEMORY[0x1EEE9AC00](v16);
    v18 = v30;
    v19 = &v28 - v30;
    v20 = v29(&v28 - v30, v2 + v8, v4, v17);
    v21 = MEMORY[0x1EEE9AC00](v20);
    v22 = &v28 - v18;
    (*(v5 + 104))(&v28 - v18, *MEMORY[0x1E6999C50], v4, v21);
    LOBYTE(v18) = sub_18A4A2D58();
    v15(v22, v4);
    v15(v19, v4);
    if (v18)
    {
      v23 = 1;
    }

    else
    {
      v23 = *(v2 + OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_isAnimating);
    }

    *(v2 + OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_shouldLift) = v23;
    v24 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v25 = objc_opt_self();
    aBlock[4] = sub_189196600;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_22_4;
    v26 = _Block_copy(aBlock);

    [v25 animateWithDuration:2 delay:v26 options:0 animations:0.2 completion:0.0];

    _Block_release(v26);
  }

  v15(v32, v4);
  return v15(v31, v4);
}

id sub_189195824(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_knobView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_liquidLensKnobView;
  *&v4[v10] = [objc_allocWithZone(_UILiquidLensView) init];
  v4[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_shouldLift] = 0;
  v11 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_state;
  v12 = *MEMORY[0x1E6999C48];
  v13 = sub_18A4A2D68();
  (*(*(v13 - 8) + 104))(&v4[v11], v12, v13);
  v4[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_isAnimating] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for _UISwitchDesignLibraryKnobView();
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1891959AC();

  return v14;
}

void sub_1891959AC()
{
  v1 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_knobView;
  v2 = [*&v0[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_knobView] layer];
  [v2 setCornerCurve_];

  v3 = [*&v0[v1] layer];
  [v3 setCornerRadius_];

  v4 = [*&v0[v1] layer];
  [v4 setShadowPathIsBounds_];

  v5 = *&v0[v1];
  v6 = objc_allocWithZone(UIColor);
  v27[4] = sub_189195DF0;
  v27[5] = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_188BC2240;
  v27[3] = &block_descriptor_17_3;
  v7 = _Block_copy(v27);
  v8 = v5;
  v9 = [v6 initWithDynamicProvider_];
  _Block_release(v7);

  [v8 setBackgroundColor_];

  v10 = *&v0[v1];
  [v0 bounds];
  [v10 setFrame_];

  [*&v0[v1] setAutoresizingMask_];
  [v0 addSubview_];
  v11 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_liquidLensKnobView;
  [*&v0[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_liquidLensKnobView] setAlpha_];
  [*&v0[v11] setLifted:0 animated:1 alongsideAnimations:0 completion:0];
  [*&v0[v11] setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18A64B810;
  v14 = [*&v0[v11] leadingAnchor];
  v15 = [v0 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v13 + 32) = v16;
  v17 = [*&v0[v11] trailingAnchor];
  v18 = [v0 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v13 + 40) = v19;
  v20 = [*&v0[v11] topAnchor];
  v21 = [v0 topAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v13 + 48) = v22;
  v23 = [*&v0[v11] bottomAnchor];
  v24 = [v0 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v13 + 56) = v25;
  sub_1890ECC04();
  v26 = sub_18A4A7518();

  [v12 activateConstraints_];
}

id sub_189195DF0(void *a1)
{
  v2 = [a1 userInterfaceIdiom];
  v3 = [a1 userInterfaceStyle];
  if (v2 == 8)
  {
    v4 = objc_opt_self();
    if (v3 == 2)
    {
      v5 = [v4 darkGrayColor];
    }

    else
    {
      v5 = [v4 whiteColor];
    }

LABEL_10:

    return v5;
  }

  if (v3 != 2)
  {
    v5 = [objc_opt_self() whiteColor];
    goto LABEL_10;
  }

  v6 = objc_allocWithZone(UIColor);

  return [v6 initWithWhite:1.0 alpha:0.85];
}

void sub_189195EDC(char a1)
{
  v3 = sub_18A4A2D68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_state;
  swift_beginAccess();
  v8 = (*(v4 + 16))(v6, v1 + v7, v3);
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v4 + 104))(v6, *MEMORY[0x1E6999C50], v3, v9);
  v10 = sub_18A4A2D58();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v6, v3);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_isAnimating);
  }

  *(v1 + OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_shouldLift) = v12;
  v13 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v14 = objc_opt_self();
    aBlock[4] = sub_189196498;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_139;
    v15 = _Block_copy(aBlock);

    [v14 animateWithDuration:2 delay:v15 options:0 animations:0.2 completion:0.0];

    _Block_release(v15);
  }

  else
  {

    sub_18919617C();
  }
}

void sub_18919617C()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_liquidLensKnobView];

  v2 = swift_unknownObjectUnownedLoadStrong();
  v3 = v2[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_shouldLift];

  [v1 setLifted:v3 animated:1 alongsideAnimations:0 completion:0];
  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = *&v4[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_liquidLensKnobView];

  v6 = swift_unknownObjectUnownedLoadStrong();
  LODWORD(v4) = v6[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_shouldLift];

  if (v4)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [v5 setAlpha_];

  v8 = swift_unknownObjectUnownedLoadStrong();
  v12 = *&v8[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_knobView];

  v9 = swift_unknownObjectUnownedLoadStrong();
  v10 = v9[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_shouldLift];

  if (v10)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  [v12 setAlpha_];
}

id sub_1891962D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UISwitchDesignLibraryKnobView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for _UISwitchDesignLibraryKnobView()
{
  result = qword_1EA92F918;
  if (!qword_1EA92F918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1891963EC()
{
  result = sub_18A4A2D68();
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

unint64_t sub_1891964A0()
{
  result = qword_1EA92FAB8;
  if (!qword_1EA92FAB8)
  {
    sub_18A4A2D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FAB8);
  }

  return result;
}

void sub_1891964EC()
{
  v1 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_knobView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_liquidLensKnobView;
  *(v0 + v2) = [objc_allocWithZone(_UILiquidLensView) init];
  *(v0 + OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_shouldLift) = 0;
  v3 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_state;
  v4 = *MEMORY[0x1E6999C48];
  v5 = sub_18A4A2D68();
  (*(*(v5 - 8) + 104))(v0 + v3, v4, v5);
  *(v0 + OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_isAnimating) = 0;
  sub_18A4A8398();
  __break(1u);
}

void sub_189196668(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_18A4A7288();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_189196700()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_1EA93F080 = result;
  return result;
}

uint64_t static UITraitSplitViewControllerLayoutEnvironment.affectsColorAppearance.getter()
{
  if (qword_1EA931F90 != -1)
  {
    swift_once();
  }

  return byte_1EA93F080;
}

uint64_t sub_1891967E4()
{
  if (qword_1EA931F90 != -1)
  {
    swift_once();
  }

  return byte_1EA93F080;
}

uint64_t UIMutableTraits.splitViewControllerLayoutEnvironment.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_1891968B0();
  v4(&v7, &type metadata for UITraitSplitViewControllerLayoutEnvironment, &type metadata for UITraitSplitViewControllerLayoutEnvironment, &protocol witness table for UITraitSplitViewControllerLayoutEnvironment, v5, a1, a2);
  return v7;
}

unint64_t sub_1891968B0()
{
  result = qword_1EA93F088;
  if (!qword_1EA93F088)
  {
    type metadata accessor for LayoutEnvironment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F088);
  }

  return result;
}

uint64_t UIMutableTraits.splitViewControllerLayoutEnvironment.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_1891968B0();
  return v5(&v8, &type metadata for UITraitSplitViewControllerLayoutEnvironment, &type metadata for UITraitSplitViewControllerLayoutEnvironment, &protocol witness table for UITraitSplitViewControllerLayoutEnvironment, v6, a2, a3);
}

void (*UIMutableTraits.splitViewControllerLayoutEnvironment.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_1891968B0();
  v8(&type metadata for UITraitSplitViewControllerLayoutEnvironment, &type metadata for UITraitSplitViewControllerLayoutEnvironment, &protocol witness table for UITraitSplitViewControllerLayoutEnvironment, v9, a2, a3);
  return sub_189196A4C;
}

void sub_189196A4C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_1891968B0();
  v4(v1, &type metadata for UITraitSplitViewControllerLayoutEnvironment, &type metadata for UITraitSplitViewControllerLayoutEnvironment, &protocol witness table for UITraitSplitViewControllerLayoutEnvironment, v5, v3, v2);

  free(v1);
}

uint64_t AttributeScopes.UIKitAttributes.accessibility.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18A4A24C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AttributeScopes.UIKitAttributes.foundation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttributeScopes.UIKitAttributes() + 104);
  v4 = sub_18A4A24B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_189196C70()
{
  sub_188B9BD08(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);

  return sub_18A4A2468();
}

uint64_t sub_189196CEC()
{
  sub_188B9BD08(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);

  return sub_18A4A2468();
}

uint64_t sub_189196F28(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_18A4A89B8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  sub_18A4A8718();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_189196FD8(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A8988();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_0(v4, v4[3]);
    v2 = sub_18A4A86E8();
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  return v2;
}

uint64_t sub_189197074@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  result = sub_18A4A8988();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    v5 = sub_18A4A86E8();
    result = __swift_destroy_boxed_opaque_existential_0Tm(v6);
    *a2 = v5;
  }

  return result;
}

uint64_t sub_18919711C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_18A4A89B8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  sub_18A4A8718();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t static AttributeScopes.UIKitAttributes.TextEffectAttribute.encode(_:to:)(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_18A4A89B8();
  sub_18A4A7288();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  sub_18A4A8708();

  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t static AttributeScopes.UIKitAttributes.TextEffectAttribute.decode(from:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A8988();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_0(v4, v4[3]);
    sub_18A4A86D8();
    v2 = sub_18A4A7258();

    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  return v2;
}

uint64_t sub_1891973C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  result = sub_18A4A8988();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_18A4A86D8();
    v5 = sub_18A4A7258();

    result = __swift_destroy_boxed_opaque_existential_0Tm(v6);
    *a2 = v5;
  }

  return result;
}

uint64_t sub_18919748C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_18A4A89B8();
  sub_18A4A7288();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  sub_18A4A8708();

  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

void AttributedString.AdaptiveImageGlyph.init(_:)(void *a1)
{
  v1 = [a1 _CTAdaptiveImageGlyph];
  sub_18A4A2558();
}

id NSAdaptiveImageGlyph.init(_:)(uint64_t a1)
{
  sub_188A34624(0, &qword_1EA93F098);
  v2 = sub_18A4A7B38();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCTAdaptiveImageGlyph_];

  v4 = sub_18A4A2568();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

uint64_t static AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute.inheritedByAddedText.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EA93F090 = a1;
  return result;
}

uint64_t static AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute.runBoundaries.getter@<X0>(void *a1@<X8>)
{
  *a1 = 12369903;
  a1[1] = 0xA300000000000000;
  v2 = *MEMORY[0x1E6968700];
  v3 = sub_18A4A2508();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

id static AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute.objectiveCValue(for:)(uint64_t a1)
{
  v2 = sub_18A4A2568();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  sub_188A34624(0, &qword_1EA93F098);
  v7 = sub_18A4A7B38();
  v8 = [objc_allocWithZone(off_1E70ECAF8) initWithCTAdaptiveImageGlyph_];

  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t static AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute.encode(_:to:)(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_18A4A89B8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  sub_18A4A2568();
  sub_188B9BD08(&qword_1EA93F0A0, MEMORY[0x1E69655A0]);
  sub_18A4A8728();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t static AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute.decode(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  result = sub_18A4A8988();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_0(v3, v3[3]);
    sub_18A4A2568();
    sub_188B9BD08(&qword_1EA93F0A8, MEMORY[0x1E69655A0]);
    sub_18A4A86F8();
    return __swift_destroy_boxed_opaque_existential_0Tm(v3);
  }

  return result;
}

unint64_t sub_189197D34()
{
  result = qword_1EA93F0B0;
  if (!qword_1EA93F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0B0);
  }

  return result;
}

unint64_t sub_189197D88()
{
  result = qword_1EA93F0B8;
  if (!qword_1EA93F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0B8);
  }

  return result;
}

unint64_t sub_189197DE8()
{
  result = qword_1EA93F0C0;
  if (!qword_1EA93F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0C0);
  }

  return result;
}

unint64_t sub_189197E3C()
{
  result = qword_1EA93F0C8;
  if (!qword_1EA93F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0C8);
  }

  return result;
}

unint64_t sub_189197E90()
{
  result = qword_1EA93F0D0;
  if (!qword_1EA93F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0D0);
  }

  return result;
}

unint64_t sub_189197EE4()
{
  result = qword_1EA93F0D8;
  if (!qword_1EA93F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0D8);
  }

  return result;
}

unint64_t sub_189197F38()
{
  result = qword_1EA93F0E0;
  if (!qword_1EA93F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0E0);
  }

  return result;
}

unint64_t sub_189197FBC()
{
  result = qword_1EA93F0E8;
  if (!qword_1EA93F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0E8);
  }

  return result;
}

unint64_t sub_189198058()
{
  result = qword_1EA92F740;
  if (!qword_1EA92F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F740);
  }

  return result;
}

unint64_t sub_1891980AC()
{
  result = qword_1EA93F0F0;
  if (!qword_1EA93F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0F0);
  }

  return result;
}

unint64_t sub_189198100()
{
  result = qword_1EA93F0F8;
  if (!qword_1EA93F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0F8);
  }

  return result;
}

unint64_t sub_189198154()
{
  result = qword_1EA93F100;
  if (!qword_1EA93F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F100);
  }

  return result;
}

unint64_t sub_1891981A8()
{
  result = qword_1EA93F108;
  if (!qword_1EA93F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F108);
  }

  return result;
}

unint64_t sub_1891981FC()
{
  result = qword_1EA93F110;
  if (!qword_1EA93F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F110);
  }

  return result;
}

unint64_t sub_189198250()
{
  result = qword_1EA93F118;
  if (!qword_1EA93F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F118);
  }

  return result;
}

uint64_t sub_1891982A4(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  result = sub_18A4A8988();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_0(v3, v3[3]);
    sub_18A4A2568();
    sub_188B9BD08(&qword_1EA93F0A8, MEMORY[0x1E69655A0]);
    sub_18A4A86F8();
    return __swift_destroy_boxed_opaque_existential_0Tm(v3);
  }

  return result;
}

uint64_t sub_189198390(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_18A4A89B8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  sub_18A4A2568();
  sub_188B9BD08(&qword_1EA93F0A0, MEMORY[0x1E69655A0]);
  sub_18A4A8728();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

id sub_189198470(uint64_t a1)
{
  v2 = sub_18A4A2568();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  sub_188A34624(0, &qword_1EA93F098);
  v7 = sub_18A4A7B38();
  v8 = [objc_allocWithZone(off_1E70ECAF8) initWithCTAdaptiveImageGlyph_];

  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t sub_189198638@<X0>(void *a1@<X8>)
{
  *a1 = 12369903;
  a1[1] = 0xA300000000000000;
  v2 = *MEMORY[0x1E6968700];
  v3 = sub_18A4A2508();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

unint64_t sub_18919878C()
{
  result = qword_1EA92F708;
  if (!qword_1EA92F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F708);
  }

  return result;
}

unint64_t sub_1891987E0()
{
  result = qword_1EA92EEB0;
  if (!qword_1EA92EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92EEB0);
  }

  return result;
}

void sub_1891989BC(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_18A4A7288();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_189198A54()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_1EA93F148 = result;
  return result;
}

uint64_t static UITraitColorVariant.affectsColorAppearance.getter()
{
  if (qword_1EA931FB0 != -1)
  {
    swift_once();
  }

  return byte_1EA93F148;
}

uint64_t sub_189198B38()
{
  if (qword_1EA931FB0 != -1)
  {
    swift_once();
  }

  return byte_1EA93F148;
}

Swift::Void __swiftcall UIHostingViewBase._sceneWillDeactivate()()
{
  UIHostingViewBase.updateSceneActivationState()();
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground;
  swift_beginAccess();
  *(v0 + v1) = 1;
}

void sub_189198BF4()
{
  UIHostingViewBase.updateSceneActivationState()();
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground;
  swift_beginAccess();
  *(v0 + v1) = 0;
  UIHostingViewBase.requestUpdateForFidelity()();
}

Swift::Void __swiftcall UIHostingViewBase._sceneWillEnterForeground()()
{
  UIHostingViewBase.updateSceneActivationState()();
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isEnteringForeground;
  swift_beginAccess();
  v0[v1] = 1;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = v0;
  sub_188BA94B8(sub_188C48568, v2);

  v4 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground;
  swift_beginAccess();
  v3[v4] = 0;
  UIHostingViewBase.requestUpdateForFidelity()();
}

uint64_t sub_189198D10(void *a1)
{
  v2 = v1;
  v4 = [v1 _effectiveUISettings];
  v5 = 0;
  if (v4 && (v6 = v4, v7 = [v4 cornerRadiusConfiguration], v6, v7))
  {
    [v7 topLeft];
    v5 = v8;
    [v7 topRight];
    v10 = v9;
    [v7 bottomLeft];
    v12 = v11;
    [v7 bottomRight];
    v14 = v13;

    v15 = 0;
  }

  else
  {
    v15 = -1;
    v10 = 0;
    v12 = 0;
    v14 = 0;
  }

  v16 = [v2 _coordinateSpace];
  v17 = [(UIWindowScene *)v2 _typedStorage];
  v18 = sub_18901F404();

  if (v18)
  {
    v20 = *(v18 + 48);
    v19 = *(v18 + 64);
    v38 = *(v18 + 96);
    v21 = *(v18 + 80);
    v36 = v19;
    v37 = v21;
    v34 = *(v18 + 32);
    v35 = v20;
    *(v18 + 32) = v5;
    *(v18 + 40) = v15;
    *(v18 + 48) = v10;
    *(v18 + 56) = v15;
    *(v18 + 64) = v12;
    *(v18 + 72) = v15;
    *(v18 + 80) = v14;
    *(v18 + 88) = v15;
    *(v18 + 96) = MEMORY[0x1E69E7CC0];

    sub_188E4342C(&v34);
    swift_getKeyPath();
    sub_188E434C4();
    sub_18A4A2C08();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong || (swift_unknownObjectRelease(), Strong != v16))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      swift_unknownObjectRetain();
      sub_18A4A2BF8();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    *&v34 = v5;
    BYTE8(v34) = v15;
    *&v35 = v10;
    BYTE8(v35) = v15;
    *&v36 = v12;
    BYTE8(v36) = v15;
    *&v37 = v14;
    BYTE8(v37) = v15;
    v38 = MEMORY[0x1E69E7CC0];
    type metadata accessor for _UICornerProvider();
    v24 = swift_allocObject();
    swift_getObjectType();
    v25 = swift_unknownObjectRetain();
    v18 = sub_188F2E28C(v25, &v34, v24);
    swift_unknownObjectRelease();

    v26 = [(UIWindowScene *)v2 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936900);
    v27 = swift_allocObject();
    *(v27 + 16) = v18;
    v28 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(&v26->super.isa + v28);
    *(&v26->super.isa + v28) = 0x8000000000000000;
    sub_188A40430(v27, &_s17CornerProviderKeyVN_0, isUniquelyReferenced_nonNull_native);
    *(&v26->super.isa + v28) = v33;
    swift_endAccess();
  }

  sub_188F2BF74();
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v30 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901B6CC(&type metadata for _UICornerProvider.Trait, sub_188E192C0);
  os_unfair_lock_unlock(v30[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970);
  v31 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [a1 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1891992A0(uint64_t a1)
{
  v3 = a1;
  type metadata accessor for IdentityWeakBox();
  swift_getWitnessTable();
  v1 = type metadata accessor for CompactableSet();
  return sub_1890FA954(&v3, v1);
}

uint64_t sub_189199310()
{
  type metadata accessor for IdentityWeakBox();
  swift_getWitnessTable();
  v0 = type metadata accessor for CompactableSet.Iterator();
  sub_1890FAC24(v0, &v2);
  return v2;
}

uint64_t sub_18919937C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_189199310();
  *a1 = result;
  return result;
}

double sub_1891993A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for IdentityWeakBox();
  swift_getWitnessTable();
  sub_1890FABE8(a1, v7);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

double sub_189199424@<D0>(uint64_t a1@<X8>)
{
  sub_1891993A4(*v1, v5);

  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_18919947C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityWeakBox();
  WitnessTable = swift_getWitnessTable();

  return sub_1890FB3E4(a1, a2, v4, WitnessTable);
}

uint64_t sub_189199504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_1891997C4(a1, *(a2 + 16));

  *a3 = v4;
  return result;
}

uint64_t sub_189199548(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_189199584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v15 - v10;
  v12 = type metadata accessor for IdentityWeakBox();
  swift_getWitnessTable();
  v16 = sub_1890FAB6C(v12);
  (*(v5 + 16))(v7, a1, a3);
  sub_18A4A7458();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    do
    {
      sub_18A4A7D78();
      v13 = v15;
    }

    while (!v15);
    if (v15 == 1)
    {
      break;
    }

    type metadata accessor for WeakSet();
    sub_1891992A0(v13);
    sub_189199838(v13);
  }

  (*(v9 + 8))(v11, AssociatedTypeWitness);
  return v16;
}

uint64_t sub_1891997C4(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  sub_18A4A7D38();
  v3 = sub_18A4A7648();
  swift_getWitnessTable();
  return sub_189199584(&v5, a2, v3);
}

uint64_t sub_189199838(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_189199848()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

char *sub_1891998A8()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView;
  type metadata accessor for _UITabBarPlatterView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v0[v2] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView;
  *&v0[v4] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelAction] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_showsCancelAction] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_interPlatterSpacing] = 0;
  v5 = objc_opt_self();
  v6 = [v5 configurationWithTextStyle:@"UICTFontTextStyleBody" scale:3];
  v7 = [v5 configurationWithWeight_];
  v8 = [v6 configurationByApplyingConfiguration_];

  v9 = [objc_opt_self() plainButtonConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
  inited = swift_initStackObject();
  *(inited + 16) = v9;
  v11 = sub_18A4A7258();
  v12 = [objc_opt_self() systemImageNamed_];

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v13 = *(inited + 16);
  }

  else
  {
    [*(inited + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_18919A1FC();
    swift_dynamicCast();
    v13 = v28;
    v14 = swift_allocObject();
    *(v14 + 16) = v28;

    inited = v14;
  }

  [v13 setImage_];

  v15 = v8;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v16 = *(inited + 16);
  }

  else
  {
    [*(inited + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_18919A1FC();
    swift_dynamicCast();
    v16 = v28;
    v17 = swift_allocObject();
    *(v17 + 16) = v28;

    inited = v17;
  }

  [v16 setPreferredSymbolConfigurationForImage_];

  v18 = [objc_opt_self() labelColor];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    [*(inited + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_18919A1FC();
    swift_dynamicCast();
    v19 = swift_allocObject();
    *(v19 + 16) = v28;

    inited = v19;
  }

  [*(inited + 16) setBaseForegroundColor_];

  v20 = [objc_opt_self() buttonWithConfiguration:*(inited + 16) primaryAction:0];
  [v20 setAutoresizingMask_];
  *&v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelButton] = v20;
  v27.receiver = v0;
  v27.super_class = ObjectType;
  v21 = v20;
  v22 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView;
  v24 = *&v22[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView];
  v25 = v22;
  [v24 setHidden_];
  [*&v22[v23] addSubview_];
  [v25 addSubview_];
  [v25 addSubview_];

  return v25;
}

id sub_189199DD4()
{
  v40 = *MEMORY[0x1E69E9840];
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, sel_layoutSubviews);
  v1 = [v0 _shouldReverseLayoutDirection];
  if (v1)
  {
    v2 = CGRectMinXEdge;
  }

  else
  {
    v2 = CGRectMaxXEdge;
  }

  [v0 bounds];
  Height = CGRectGetHeight(v41);
  [v0 bounds];
  v35 = v5;
  v36 = v4;
  v33 = v7;
  v34 = v6;
  [v0 bounds];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v42, &slice, &remainder, Height, v2);
  x = slice.origin.x;
  y = slice.origin.y;
  width = slice.size.width;
  v11 = slice.size.height;
  v12 = remainder.origin.x;
  v13 = remainder.origin.y;
  v14 = remainder.size.width;
  v15 = remainder.size.height;
  v16 = *&v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView];
  [v16 frame];
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = v11;
  if (!CGRectEqualToRect(v43, v45))
  {
    [v16 setFrame_];
    [v16 layoutIfNeeded];
  }

  v17 = v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_showsCancelAction];
  v18 = 8;
  if (v1)
  {
    v18 = 2;
  }

  v20 = v35;
  v19 = v36;
  if (v17 == 1)
  {
    v19 = v12;
    v20 = v13;
  }

  v22 = v33;
  v21 = v34;
  if (v17 == 1)
  {
    v21 = v14;
    v22 = v15;
    v23 = v18;
  }

  else
  {
    v23 = 0;
  }

  v24 = UIRectInsetEdges(v23, v19, v20, v21, v22, *&v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_interPlatterSpacing]);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = *&v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView];
  [v31 frame];
  v46.origin.x = v24;
  v46.origin.y = v26;
  v46.size.width = v28;
  v46.size.height = v30;
  result = CGRectEqualToRect(v44, v46);
  if ((result & 1) == 0)
  {
    [v31 setFrame_];
    return [v31 layoutIfNeeded];
  }

  return result;
}

void sub_18919A128()
{
  v1 = OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView;
  type metadata accessor for _UITabBarPlatterView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView;
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelAction) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_showsCancelAction) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_interPlatterSpacing) = 0;
  sub_18A4A8398();
  __break(1u);
}

unint64_t sub_18919A1FC()
{
  result = qword_1EA930A50;
  if (!qword_1EA930A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA930A50);
  }

  return result;
}

uint64_t sub_18919A2A8(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_18919A34C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_18919A3F8(void *a1)
{
  v3 = [v1 window];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 windowScene];

    if (v5)
    {
      v6 = [v5 _effectiveUISettings];

      v7 = [v6 cornerRadiusConfiguration];
      if (v7)
      {
        return v7;
      }
    }
  }

  [a1 displayCornerRadius];
  v10 = v9;
  v11 = objc_allocWithZone(MEMORY[0x1E698E668]);

  return [v11 initWithCornerRadius_];
}

double sub_18919A500(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_18919A550(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C0);
    v2 = sub_18A4A8088();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    result = sub_18A4A8018();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_18919A864()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_188AF8408(0x47417465656853, 0xE700000000000000, 0);

    byte_1ED48E910 = v2 & 1;
  }

  else
  {
    __break(1u);
  }
}

_UISheetLayoutInfoProvider __swiftcall _UISheetLayoutInfoProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_18919A984()
{
  result = AGGraphCreate();
  qword_1EA93F208 = result;
  return result;
}

id sub_18919A9A4()
{
  ObjectType = swift_getObjectType();
  AGSubgraphInvalidate();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_18919AC04(char a1)
{
  v3 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = v3;
  if (Strong)
  {
    v6 = v3;
    do
    {
      v5 = Strong;

      Strong = swift_unknownObjectWeakLoadStrong();
      v6 = v5;
    }

    while (Strong);
  }

  v18 = v5;
  v7 = v18;
  if ((a1 & 1) == 0)
  {
LABEL_5:
    v8 = *&v7[OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__indexOfCurrentActiveOrDismissDetentWasInvalidated];
    if (v8)
    {

      v8(v9);
      sub_188A55B8C(v8);
    }

    v10 = *&v7[OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMinimumOffsetWasInvalidated];
    if (v10)
    {

      v10(v11);
      sub_188A55B8C(v10);
    }

    v12 = *&v7[OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMaximumOffsetWasInvalidated];
    if (v12)
    {

      v12(v13);
      sub_188A55B8C(v12);
    }

    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      [v14 _sheetLayoutInfoDidInvalidateDetentValues_];
      swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  while (1)
  {
LABEL_13:
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      [v15 _sheetLayoutInfoDidInvalidateUntransformedFrame_];
      swift_unknownObjectRelease();
    }

    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      [v16 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }

    v17 = swift_unknownObjectWeakLoadStrong();

    if (!v17)
    {
      break;
    }

    v7 = v17;
    if ((a1 & 1) == 0)
    {
      goto LABEL_5;
    }
  }
}

void sub_18919B0BC()
{
  v3[1] = *MEMORY[0x1E69E9840];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
  }

  swift_weakInit();
  swift_weakAssign();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8);
  v2 = AGGraphSetValue();
  sub_188A3F5FC(v3, &qword_1EA93F3C8);
  if (v2)
  {
    sub_18919AC04(0);
  }
}

void sub_18919B218()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v2 = AGGraphSetValue();

  if (v2)
  {
    sub_18919AC04(0);
  }
}

void sub_18919B348(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a3)
  {
    swift_getObjectType();
    swift_dynamicCastClassUnconditional();
  }

  swift_unknownObjectWeakAssign();
  v8 = a1;
  v7 = swift_unknownObjectRetain();
  a5(v7);
  swift_unknownObjectRelease();
}

void sub_18919C1D8(char a1)
{
  if (AGGraphSetValue())
  {
    AGGraphClearUpdate();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0);
    v3 = *AGGraphGetValue();
    v4 = v3;
    AGGraphSetUpdate();
    if (v3)
    {
      v5 = &selRef__addBoundingPathChangeObserver_;
      if ((a1 & 1) == 0)
      {
        v5 = &selRef__removeBoundingPathChangeObserver_;
      }

      [v4 *v5];
    }

    sub_18919AC04(0);
  }
}

void sub_18919E084(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
  }

  if (!sub_18A4A7F68())
  {
    goto LABEL_9;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F380);
  v1 = AGGraphSetValue();

  if (v1)
  {
    if (AGGraphSetValue())
    {
      sub_18919AC04(0);
    }

    sub_18919AC04(0);
  }
}

double (*sub_1891A0048())()
{
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3E0);
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = Value[1];
  sub_188A52E38(*Value);
  AGGraphSetUpdate();
  if (!v1)
  {
    return 0;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  return sub_1891BA97C;
}

void sub_1891A01B8()
{
  AGGraphInvalidateValue();
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = v1;
  if (Strong)
  {
    v4 = v1;
    do
    {
      v3 = Strong;

      Strong = swift_unknownObjectWeakLoadStrong();
      v4 = v3;
    }

    while (Strong);
  }

  v9 = v3;
  v5 = v9;
  do
  {
    v6 = v5;
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      [v7 _sheetLayoutInfoDidInvalidateUntransformedFrame_];
      swift_unknownObjectRelease();
    }

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      [v8 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }

    v5 = swift_unknownObjectWeakLoadStrong();
  }

  while (v5);
}

id sub_1891A0920(void *a1)
{
  v1 = a1;
  AGGraphClearUpdate();
  sub_188A34624(0, &qword_1ED490410);
  v2 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v2;
}

double sub_1891A0A84()
{
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  v8 = *AGGraphGetValue();
  Height = CGRectGetHeight(v8);
  Value = AGGraphGetValue();
  v2 = 0.0;
  if (*Value == 1)
  {
    v3 = *AGGraphGetValue();
    type metadata accessor for UIEdgeInsets(0);
    v4 = AGGraphGetValue();
    v5 = 16;
    if (v3)
    {
      v5 = 0;
    }

    v2 = *(v4 + v5);
  }

  v6 = Height - v2;
  AGGraphSetUpdate();
  return v6;
}

double sub_1891A0B68()
{
  type metadata accessor for CGRect(0);
  v7 = *AGGraphGetValue();
  Height = CGRectGetHeight(v7);
  Value = AGGraphGetValue();
  v2 = 0.0;
  if (*Value == 1)
  {
    v3 = *AGGraphGetValue();
    type metadata accessor for UIEdgeInsets(0);
    v4 = AGGraphGetValue();
    v5 = 16;
    if (v3)
    {
      v5 = 0;
    }

    v2 = *(v4 + v5);
  }

  return Height - v2;
}

double sub_1891A0CB4()
{
  AGGraphClearUpdate();
  v0 = *AGGraphGetValue();
  v1 = sub_1891A0B68();
  if (v0 == 1)
  {
    type metadata accessor for CGRect(0);
    v4 = *AGGraphGetValue();
    MinY = CGRectGetMinY(v4);
    type metadata accessor for UIEdgeInsets(0);
    v1 = v1 + MinY - *AGGraphGetValue();
  }

  AGGraphSetUpdate();
  return v1;
}

void sub_1891A0D7C()
{
  v0 = *AGGraphGetValue();
  sub_1891A0B68();
  if (v0 == 1)
  {
    type metadata accessor for CGRect(0);
    v1 = *AGGraphGetValue();
    CGRectGetMinY(v1);
    type metadata accessor for UIEdgeInsets(0);
    AGGraphGetValue();
  }
}

double sub_1891A1020()
{
  AGGraphClearUpdate();
  if (*AGGraphGetValue())
  {
    v0 = 1.0 - *AGGraphGetValue();
  }

  else
  {
    v0 = *(AGGraphGetValue() + 8);
  }

  AGGraphSetUpdate();
  return v0;
}

double sub_1891A10BC()
{
  if (*AGGraphGetValue())
  {
    return 1.0 - *AGGraphGetValue();
  }

  else
  {
    return *(AGGraphGetValue() + 8);
  }
}

double sub_1891A1168()
{
  AGGraphClearUpdate();
  type metadata accessor for CGPoint(0);
  v0 = *(AGGraphGetValue() + 8);
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v3 = *Value;
  v2 = *(Value + 8);
  v5 = *(Value + 16);
  v4 = *(Value + 24);
  v6 = *AGGraphGetValue();
  type metadata accessor for UIEdgeInsets(0);
  v7 = AGGraphGetValue();
  v8 = *v7;
  v9 = v7[2];
  v10 = *AGGraphGetValue();
  if (*AGGraphGetValue() == 1)
  {
    v11 = sub_1891A10BC();
    if ((v10 & 1) == 0)
    {
LABEL_3:
      v16.origin.x = v3;
      v16.origin.y = v2;
      v16.size.width = v5;
      v16.size.height = v4;
      v12 = CGRectGetMaxY(v16) - v0;
      v13 = v12 - v9 * v11;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 1.0;
    if (!v10)
    {
      goto LABEL_3;
    }
  }

  v17.origin.x = v3;
  v17.origin.y = v2;
  v17.size.width = v5;
  v17.size.height = v4;
  v12 = v0 + CGRectGetMinY(v17);
  v13 = v8 * v11 + v12;
LABEL_6:
  if (v6)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  AGGraphSetUpdate();
  return v14;
}

double sub_1891A1A6C()
{
  AGGraphClearUpdate();
  AGGraphGetValue();
  type metadata accessor for CGRect(0);
  v0 = *AGGraphGetValue();
  AGGraphSetUpdate();
  return v0;
}

void sub_1891A1B94()
{
  v0 = *AGGraphGetValue();
  if (*AGGraphGetValue() == 1)
  {
    type metadata accessor for CGRect(0);
    AGGraphGetValue();
    return;
  }

  v1 = *AGGraphGetValue();
  v2 = *AGGraphGetValue();
  v3 = *AGGraphGetValue();
  v4 = *AGGraphGetValue();
  v5 = *AGGraphGetValue();
  v6 = *(AGGraphGetValue() + 8);

  v7 = *(AGGraphGetValue() + 48);
  sub_188A34624(0, &qword_1ED490410);
  [*AGGraphGetValue() displayScale];
  v9 = v8;
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v12 = *Value;
  v11 = *(Value + 8);
  v14 = *(Value + 16);
  v13 = *(Value + 24);
  type metadata accessor for UIEdgeInsets(0);
  v33 = *AGGraphGetValue();
  v34 = v5;
  if (v2 != 1)
  {
    if (v3)
    {
      if (v1)
      {
        v16 = v7;

        v17 = INFINITY;
LABEL_17:
        v15 = v34 + _UIClamp_0(v16, v0, v17);
        goto LABEL_18;
      }

      if (v6 >> 62)
      {
        if (sub_18A4A7F68())
        {
LABEL_13:
          if ((v6 & 0xC000000000000001) == 0)
          {
            if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v16 = v7;
              v19 = *(v6 + 32);
LABEL_16:
              v20 = v19;

              [v20 _value];
              v17 = v21;

              goto LABEL_17;
            }

            __break(1u);
LABEL_41:
            __break(1u);
            return;
          }

LABEL_38:
          v16 = v7;
          v19 = sub_188E4B080(0, v6);
          goto LABEL_16;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else
    {
      if (v1)
      {

        v18 = -INFINITY;
        goto LABEL_25;
      }

      if (!(v6 >> 62))
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        goto LABEL_21;
      }
    }

    if (!sub_18A4A7F68())
    {
      goto LABEL_37;
    }

LABEL_21:
    if ((v6 & 0xC000000000000001) != 0)
    {
      v23 = v7;
      v24 = sub_188E4B080(0, v6);
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v23 = v7;
      v24 = *(v6 + 32);
    }

    v25 = v24;

    [v25 _value];
    v27 = v26;

    v18 = v27;
    v7 = v23;
LABEL_25:
    v15 = v34 + _UIClamp_0(v18, v0, v7);
LABEL_26:
    v36.origin.x = v12;
    v36.origin.y = v11;
    v36.size.width = v14;
    v36.size.height = v13;
    v22 = v15 - CGRectGetMinY(v36);
    goto LABEL_27;
  }

  v15 = v0 + v5;
  if ((v3 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  v35.origin.x = v12;
  v35.origin.y = v11;
  v35.size.width = v14;
  v35.size.height = v13;
  v22 = CGRectGetMaxY(v35) - v15;
LABEL_27:
  if (v4)
  {
    v28 = v33;
  }

  else
  {
    v28 = 0.0;
  }

  v37.origin.x = v12;
  v37.origin.y = v11;
  v37.size.width = v14;
  v37.size.height = v13;
  Height = CGRectGetHeight(v37);
  UIRoundToScale(Height - v22, v9);
  v31 = v30;
  v38.origin.x = v12;
  v38.origin.y = v11;
  v38.size.width = v14;
  v38.size.height = v13;
  CGRectGetMinX(v38);
  if (v3)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0.0;
  }

  UIRoundToScale(v0 + v34 - v28 - v32, v9);
  v39.origin.x = v12;
  v39.origin.y = v11;
  v39.size.width = v14;
  v39.size.height = v13;
  CGRectGetWidth(v39);
}

void sub_1891A2914()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    do
    {
      v3 = Strong;

      Strong = swift_unknownObjectWeakLoadStrong();
      v1 = v3;
    }

    while (Strong);
  }

  else
  {
    v3 = v1;
  }

  v4 = v3;
  v15 = v4;
  while (1)
  {
    v5 = v4;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      [v7 _sheetLayoutInfoPrelayout_];

      swift_unknownObjectRelease();
    }

    v9 = swift_unknownObjectWeakLoadStrong();

    if (!v9)
    {
      break;
    }

    v4 = v9;
  }

  for (i = v15; ; i = v14)
  {
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = i;
      [v12 _sheetLayoutInfoLayout_];

      swift_unknownObjectRelease();
    }

    v14 = swift_unknownObjectWeakLoadStrong();

    if (!v14)
    {
      break;
    }
  }
}

BOOL sub_1891A2B84()
{
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8);
  AGGraphGetValue();
  if (swift_weakLoadStrong())
  {

    v0 = 1;
  }

  else
  {
    type metadata accessor for CGRect(0);
    v2 = *AGGraphGetValue();
    v0 = !CGRectIsNull(v2);
  }

  AGGraphSetUpdate();
  return v0;
}

id sub_1891A2D60(void *a1)
{
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  v8 = sub_18A4A7258();

  type metadata accessor for UIEdgeInsets(0);
  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  v14 = sub_18A4A7258();

  sub_188A34624(0, &qword_1ED490410);
  v15 = *AGGraphGetValue();
  v16 = sub_18A4A7258();

  v17 = *AGGraphGetValue();
  v18 = sub_18A4A7258();

  type metadata accessor for _UISheetMode(0);
  *&v295[0] = *AGGraphGetValue();
  v19 = sub_18A4A8778();
  v20 = sub_18A4A7258();

  swift_unknownObjectRelease();
  v21 = AGGraphGetValue();
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  v26 = sub_18A4A7258();
  v27 = *MEMORY[0x1E695F050];
  v28 = *(MEMORY[0x1E695F050] + 16);
  v29 = *(MEMORY[0x1E695F050] + 24);
  v30 = v22;
  v31 = *(MEMORY[0x1E695F050] + 8);

  type metadata accessor for _UISheetPresentationControllerHorizontalAlignment(0);
  v32 = *AGGraphGetValue();
  v33 = sub_18A4A7258();

  v34 = *AGGraphGetValue();
  v35 = sub_18A4A7258();

  v36 = *AGGraphGetValue();
  v37 = sub_18A4A7258();

  v38 = *AGGraphGetValue();
  v39 = sub_18A4A7258();

  v40 = *AGGraphGetValue();
  v41 = sub_18A4A7258();

  v42 = AGGraphGetValue();
  v43 = *v42;
  v44 = v42[1];
  v46 = v42[2];
  v45 = v42[3];
  v47 = sub_18A4A7258();
  v292 = v27;
  v48 = v27;
  v49 = v31;

  v50 = *AGGraphGetValue();
  v51 = sub_18A4A7258();

  v52 = *AGGraphGetValue();
  v53 = sub_18A4A7258();

  v54 = *AGGraphGetValue();
  v55 = sub_18A4A7258();

  v56 = *AGGraphGetValue();
  v57 = sub_18A4A7258();

  v58 = *AGGraphGetValue();
  v59 = sub_18A4A7258();

  v60 = *AGGraphGetValue();
  v61 = sub_18A4A7258();

  v62 = *AGGraphGetValue();
  v63 = sub_18A4A7258();

  v64 = *AGGraphGetValue();
  v65 = sub_18A4A7258();

  v66 = *AGGraphGetValue();
  v67 = sub_18A4A7258();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F380);
  AGGraphGetValue();
  sub_188A34624(0, &unk_1ED490400);

  v68 = sub_18A4A7518();

  v69 = sub_18A4A7258();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F390);
  v70 = *AGGraphGetValue();
  v71 = sub_18A4A7258();

  sub_188A34624(0, &qword_1EA930A70);
  v72 = *AGGraphGetValue();
  v73 = sub_18A4A7258();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F3A0);
  v74 = *AGGraphGetValue();
  v75 = sub_18A4A7258();

  v76 = *AGGraphGetValue();
  v77 = sub_18A4A7258();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
  if (*(AGGraphGetValue() + 8))
  {

    v78 = sub_18A4A7258();
  }

  else
  {
    v78 = 0;
  }

  v79 = sub_18A4A7258();
  [a1 appendString:v78 withName:v79 skipIfEmpty:1];

  if (*(AGGraphGetValue() + 8))
  {

    v80 = sub_18A4A7258();
  }

  else
  {
    v80 = 0;
  }

  v81 = sub_18A4A7258();
  [a1 appendString:v80 withName:v81 skipIfEmpty:1];

  v82 = *AGGraphGetValue();
  v83 = sub_18A4A7258();

  v84 = *AGGraphGetValue();
  v85 = sub_18A4A7258();

  v86 = *AGGraphGetValue();
  v87 = sub_18A4A7258();

  v88 = *AGGraphGetValue();
  v89 = sub_18A4A7258();

  v90 = *AGGraphGetValue();
  v91 = sub_18A4A7258();

  v92 = *AGGraphGetValue();
  v93 = sub_18A4A7258();

  v94 = *AGGraphGetValue();
  v95 = sub_18A4A7258();

  v96 = *AGGraphGetValue();
  v97 = sub_18A4A7258();

  v98 = *AGGraphGetValue();
  v99 = sub_18A4A7258();

  v100 = AGGraphGetValue();
  v101 = *v100;
  v102 = v100[1];
  v103 = v100[2];
  v104 = v100[3];
  v105 = sub_18A4A7258();

  v106 = *AGGraphGetValue();
  v107 = sub_18A4A7258();

  v108 = *AGGraphGetValue();
  v109 = sub_18A4A7258();

  v110 = *AGGraphGetValue();
  v111 = sub_18A4A7258();
  v112 = *(v1 + 48);
  [v112 preferredShadowOpacity];

  v114 = *AGGraphGetValue();
  v115 = sub_18A4A7258();
  [v112 shadowRadius];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B0);
  AGGraphGetValue();

  sub_18905769C(v117);

  v118 = sub_18A4A7518();

  v119 = sub_18A4A7258();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B8);
  AGGraphGetValue();

  sub_18919A550(v120);

  v121 = sub_18A4A7798();

  v122 = sub_18A4A7258();

  v123 = *AGGraphGetValue();
  v124 = sub_18A4A7258();

  v125 = AGGraphGetValue();
  v126 = *v125;
  v127 = v125[1];
  v128 = v125[2];
  v129 = v125[3];
  v130 = sub_18A4A7258();

  v131 = AGGraphGetValue();
  v132 = *v131;
  v133 = v131[1];
  v134 = v131[2];
  v135 = v131[3];
  v136 = sub_18A4A7258();

  type metadata accessor for CGSize(0);
  v137 = AGGraphGetValue();
  v138 = *v137;
  v139 = v137[1];
  v140 = sub_18A4A7258();

  v141 = *(AGGraphGetValue() + 8);
  v142 = sub_18A4A7258();

  v143 = *AGGraphGetValue();
  v144 = sub_18A4A7258();

  v145 = *AGGraphGetValue();
  v146 = sub_18A4A7258();

  v147 = *AGGraphGetValue();
  v148 = sub_18A4A7258();

  v149 = *AGGraphGetValue();
  v150 = sub_18A4A7258();

  v151 = *AGGraphGetValue();
  v152 = sub_18A4A7258();

  v153 = *AGGraphGetValue();
  v154 = sub_18A4A7258();

  v155 = *AGGraphGetValue();
  v156 = sub_18A4A7258();

  v157 = *AGGraphGetValue();
  v158 = sub_18A4A7258();

  v159 = *AGGraphGetValue();
  v160 = sub_18A4A7258();

  v161 = AGGraphGetValue();
  v162 = *v161;
  v163 = v161[1];
  v164 = v161[2];
  v165 = v161[3];
  v166 = sub_18A4A7258();

  v167 = AGGraphGetValue();
  v168 = *v167;
  v169 = v167[1];
  v170 = v167[2];
  v171 = v167[3];
  v172 = sub_18A4A7258();

  v173 = *AGGraphGetValue();
  v174 = sub_18A4A7258();

  v175 = AGGraphGetValue();
  v176 = *v175;
  v177 = v175[1];
  v178 = v175[2];
  v179 = v175[3];
  v180 = sub_18A4A7258();

  v181 = AGGraphGetValue();
  v182 = *v181;
  v183 = v181[1];
  v184 = v181[2];
  v185 = v181[3];
  v186 = sub_18A4A7258();

  v187 = *AGGraphGetValue();
  v188 = sub_18A4A7258();

  v189 = *AGGraphGetValue();
  v190 = sub_18A4A7258();

  v191 = *AGGraphGetValue();
  v192 = sub_18A4A7258();

  type metadata accessor for CGPoint(0);
  v193 = AGGraphGetValue();
  v194 = *v193;
  v195 = v193[1];
  v196 = sub_18A4A7258();

  v197 = *AGGraphGetValue();
  v198 = sub_18A4A7258();

  v199 = *AGGraphGetValue();
  v200 = sub_18A4A7258();

  v201 = *AGGraphGetValue();
  v202 = sub_18A4A7258();

  v203 = *AGGraphGetValue();
  v204 = sub_18A4A7258();

  v205 = *AGGraphGetValue();
  v206 = sub_18A4A7258();

  v207 = *AGGraphGetValue();
  v208 = sub_18A4A7258();

  AGGraphGetValue();
  sub_188A34624(0, &qword_1ED48FD80);

  v209 = sub_18A4A7518();

  v210 = sub_18A4A7258();

  AGGraphGetValue();
  sub_188A34624(0, &unk_1ED48C6A0);

  v211 = sub_18A4A7518();

  v212 = sub_18A4A7258();

  v213 = *(AGGraphGetValue() + 16);
  v214 = sub_18A4A7258();

  v215 = *(AGGraphGetValue() + 32);
  v216 = sub_18A4A7258();

  v217 = *(AGGraphGetValue() + 48);
  v218 = sub_18A4A7258();

  v219 = *(AGGraphGetValue() + 56);
  v220 = sub_18A4A7258();

  v221 = *AGGraphGetValue();
  v222 = sub_18A4A7258();

  type metadata accessor for _UISheetGrabberAction(0);
  *&v295[0] = *AGGraphGetValue();
  v223 = sub_18A4A8778();
  v224 = sub_18A4A7258();

  swift_unknownObjectRelease();
  v225 = *AGGraphGetValue();
  v226 = sub_18A4A7258();

  v227 = *AGGraphGetValue();
  v228 = sub_18A4A7258();

  v229 = *AGGraphGetValue();
  v230 = sub_18A4A7258();

  v231 = AGGraphGetValue();
  v232 = *v231;
  v233 = v231[1];
  v234 = v231[2];
  v235 = v231[3];
  v236 = sub_18A4A7258();

  v237 = AGGraphGetValue();
  v238 = *v237;
  v239 = v237[1];
  v240 = v237[2];
  v241 = v237[3];
  v242 = sub_18A4A7258();

  v243 = AGGraphGetValue();
  v244 = *v243;
  v245 = v243[1];
  v246 = v243[2];
  v247 = v243[3];
  v248 = sub_18A4A7258();

  v249 = AGGraphGetValue();
  v250 = *v249;
  v251 = v249[1];
  v252 = v249[2];
  v253 = v249[3];
  v254 = sub_18A4A7258();

  type metadata accessor for UIRectCornerRadii(0);
  v255 = AGGraphGetValue();
  v256 = *v255;
  v257 = v255[1];
  v258 = v255[2];
  v259 = v255[3];
  v260 = sub_18A4A7258();

  type metadata accessor for CGAffineTransform(0);
  v261 = AGGraphGetValue();
  v262 = *(v261 + 32);
  v263 = *(v261 + 40);
  v294 = *v261;
  v293 = *(v261 + 16);
  v264 = sub_18A4A7258();
  v295[1] = v293;
  v295[0] = v294;
  v296 = v262;
  v297 = v263;

  v265 = *AGGraphGetValue();
  v266 = sub_18A4A7258();

  v267 = *AGGraphGetValue();
  v268 = sub_18A4A7258();

  v269 = *(AGGraphGetValue() + 8);
  v270 = sub_18A4A7258();

  v271 = *(AGGraphGetValue() + 24);
  v272 = sub_18A4A7258();

  v273 = *AGGraphGetValue();
  v274 = sub_18A4A7258();

  v275 = *AGGraphGetValue();
  v276 = sub_18A4A7258();

  v277 = *AGGraphGetValue();
  v278 = sub_18A4A7258();

  v279 = *AGGraphGetValue();
  v280 = sub_18A4A7258();

  v281 = *AGGraphGetValue();
  v282 = sub_18A4A7258();

  v283 = *AGGraphGetValue();
  v284 = sub_18A4A7258();

  v285 = *AGGraphGetValue();
  v286 = sub_18A4A7258();

  v287 = *AGGraphGetValue();
  v288 = sub_18A4A7258();

  result = [a1 build];
  if (result)
  {
    v290 = result;
    v291 = sub_18A4A7288();

    return v291;
  }

  else
  {
    __break(1u);
  }

  return result;
}